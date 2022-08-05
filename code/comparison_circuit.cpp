/* Copyright (C) 2019 IBM Corp.
 * This program is Licensed under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 *   http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License. See accompanying LICENSE file.
 */
#include <iostream>
#include <time.h>
#include <random>

#include <helib/helib.h>
#include <helib/debugging.h>
#include <helib/Context.h>
#include <helib/polyEval.h>
#include "tools.h"
#include "comparator.h"
#include "compare_cuda.cuh"

using namespace std;
using namespace NTL;
using namespace helib;
using namespace he_cmp;

void myCode(){
    /*  Example of BGV scheme  */

  // Plaintext prime modulus
  unsigned long p = 7;
  // Cyclotomic polynomial - defines phi(m)
  unsigned long m = 8192;
  // Hensel lifting (default = 1)
  unsigned long r = 1;
  // Number of bits of the modulus chain
  unsigned long bits = 500;
  // Number of columns of Key-Switching matrix (default = 2 or 3)
  unsigned long c = 2;

  std::cout << "\n*********************************************************";
  std::cout << "\n*         Basic Mathematical Operations Example         *";
  std::cout << "\n*         =====================================         *";
  std::cout << "\n*                                                       *";
  std::cout << "\n* This is a sample program for education purposes only. *";
  std::cout << "\n* It attempts to show the various basic mathematical    *";
  std::cout << "\n* operations that can be performed on both ciphertexts  *";
  std::cout << "\n* and plaintexts.                                       *";
  std::cout << "\n*                                                       *";
  std::cout << "\n*********************************************************";
  std::cout << std::endl;

  std::cout << "Initialising context object..." << std::endl;
  // Initialize context
  // This object will hold information about the algebra created from the
  // previously set parameters
  helib::Context context = helib::ContextBuilder<helib::BGV>()
                               .m(m)
                               .p(p)
                               .r(r)
                               .bits(bits)
                               .c(c)
                               .build();

  // Print the context
  context.printout();
  std::cout << std::endl;

  // Print the security level
  std::cout << "Security: " << context.securityLevel() << std::endl;

  // Secret key management
  std::cout << "Creating secret key..." << std::endl;
  // Create a secret key associated with the context
  helib::SecKey secret_key(context);
  // Generate the secret key
  secret_key.GenSecKey();
  std::cout << "Generating key-switching matrices..." << std::endl;
  // Compute key-switching matrices that we need
  helib::addSome1DMatrices(secret_key);

  // Public key management
  // Set the secret key (upcast: SecKey is a subclass of PubKey)
  const helib::PubKey& public_key = secret_key;

  // Get the EncryptedArray of the context
  const helib::EncryptedArray& ea = context.getEA();

  // Get the number of slot (phi(m))
  long nslots = ea.size();
  std::cout << "Number of slots: " << nslots << std::endl;

  // Create a vector of long with nslots elements
  helib::Ptxt<helib::BGV> ptxt(context);
  // Set it with numbers 0..nslots - 1
  // ptxt = [0] [1] [2] ... [nslots-2] [nslots-1]
  for (int i = 0; i < ptxt.size(); ++i) {
    ptxt[i] = i;
  }

  // Print the plaintext
  std::cout << "Initial Plaintext: " << ptxt << std::endl;

  // Create a ciphertext object
  helib::Ctxt ctxt(public_key);
  // Encrypt the plaintext using the public_key
  public_key.Encrypt(ctxt, ptxt);

  // std::cout<<"Encrypted Plaintext: "<<ctxt<<std::endl;
  /********** Operations **********/
  // Ciphertext and plaintext operations are performed
  // "entry-wise".

  // Square the ciphertext
  // [0] [1] [2] [3] [4] ... [nslots-1]
  // -> [0] [1] [4] [9] [16] ... [(nslots-1)*(nslots-1)]
  // ctxt.multiplyBy(ctxt);
  // ctxt.
  // Plaintext version
  // ptxt.multiplyBy(ptxt);

#if 1
  std::vector<helib::CtxtPart> parts = ctxt.getParts();

  NTL::ZZX temp0, temp1;
  parts[0].toPoly(temp0, parts[0].getIndexSet());
  parts[1].toPoly(temp1, parts[1].getIndexSet());

  temp0 = temp0 + temp0;
  temp1 = temp1 + temp1;

  // sayHi<<<3, 3>>>();

  compare_cuda(temp0, temp1);

  // SetCoeff(temp, 0, 100);
  // cout<<"temp :"<<temp<<endl;
  DoubleCRT tempDCRT0 = DoubleCRT(temp0,context, parts[0].getIndexSet());
  CtxtPart tempCtxtPart0 = CtxtPart(tempDCRT0);
  ctxt.setPart(tempCtxtPart0, 0);
  
  DoubleCRT tempDCRT1 = DoubleCRT(temp1,context, parts[1].getIndexSet());
  CtxtPart tempCtxtPart1 = CtxtPart(tempDCRT1, parts[1].skHandle);

  ctxt.setPart(tempCtxtPart1, 1);

#endif

  // ctxt.addCtxt(ctxt);

  helib::Ptxt<helib::BGV> new_plaintext_result(context);
  secret_key.Decrypt(new_plaintext_result, ctxt);
  std::cout << "Decrypted Result: " << new_plaintext_result << std::endl;

#if 0
  // Divide the ciphertext by itself
  // To do this we must calculate the multiplicative inverse using Fermat's
  // Little Theorem.  We calculate a^{-1} = a^{p-2} mod p, where a is non-zero
  // and p is our plaintext prime.
  // First make a copy of the ctxt using copy constructor
  helib::Ctxt ctxt_divisor(ctxt);
  // Raise the copy to the exponent p-2
  // [0] [1] [4] ... [16] -> [0] [1] [1] ... [1]
  // Note: 0 is a special case because 0^n = 0 for any power n
  ctxt_divisor.power(p - 2);
  // a^{p-2}*a = a^{-1}*a = a / a = 1;
  ctxt.multiplyBy(ctxt_divisor);

  // Plaintext version
  helib::Ptxt<helib::BGV> ptxt_divisor(ptxt);
  ptxt_divisor.power(p - 2);
  ptxt.multiplyBy(ptxt_divisor);

  // Double it (using additions)
  // [0] [1] [1] ... [1] [1] -> [0] [2] [2] ... [2] [2]
  ctxt += ctxt;
  // Plaintext version
  ptxt += ptxt;

  // Subtract it from itself (result should be 0)
  // i.e. [0] [0] [0] [0] ... [0] [0]
  ctxt -= ctxt;
  // Plaintext version
  ptxt -= ptxt;

  // Create a plaintext for decryption
  helib::Ptxt<helib::BGV> plaintext_result(context);
  // Decrypt the modified ciphertext
  secret_key.Decrypt(plaintext_result, ctxt);

  std::cout << "Operation: 2(a*a)/(a*a) - 2(a*a)/(a*a) = 0" << std::endl;
  // Print the decrypted plaintext
  // Should be [0] [0] [0] ... [0] [0]
  std::cout << "Decrypted Result: " << plaintext_result << std::endl;
  // Print the plaintext version result, should be the same as the ctxt version
  std::cout << "Plaintext Result: " << ptxt << std::endl;

  // We can also add constants
  // [0] [0] [0] ... [0] [0] -> [1] [1] [1] ... [1] [1]
  ctxt.addConstant(NTL::ZZX(1l));
  // Plaintext version
  ptxt.addConstant(NTL::ZZX(1l));

  // And multiply by constants
  // [1] [1] [1] ... [1] [1]
  // -> [1*1] [1*1] [1*1] ... [1*1] [1*1] = [1] [1] [1] ... [1] [1]
  ctxt *= 1l;
  // Plaintext version
  ptxt *= 1l;

  // We can also perform ciphertext-plaintext operations
  // ctxt = [1] [1] [1] ... [1] [1], ptxt = [1] [1] [1] ... [1] [1]
  // ctxt + ptxt = [2] [2] [2] ... [2] [2]
  // Note: the output of this is also a ciphertext
  ctxt += ptxt;

  // Decrypt the modified ciphertext into a new plaintext
  helib::Ptxt<helib::BGV> new_plaintext_result(context);
  secret_key.Decrypt(new_plaintext_result, ctxt);

  std::cout << "Operation: Enc{(0 + 1)*1} + (0 + 1)*1" << std::endl;
  // Print the decrypted plaintext
  // Should be [2] [2] [2] ... [2] [2]
  std::cout << "Decrypted Result: " << new_plaintext_result << std::endl;
#endif

}

// the main function that takes 7 arguments (type in Terminal: ./comparison_circuit argv[1] argv[2] argv[3] argv[4] argv[5] argv[6] argv[7] argv[8])
// argv[1] - circuit type (U, B or T)
// argv[2] - the plaintext modulus
// argv[3] - the dimension of a vector space over a finite field
// argv[4] - the order of the cyclotomic ring
// argv[5] - the bitsize of the ciphertext modulus in ciphertexts (HElib increases it to fit the moduli chain). The modulus used for public-key generation
// argv[6] - the length of vectors to be compared
// argv[7] - the number of experiment repetitions
// argv[8] - print debug info (y/n)

// some parameters for quick testing
// B 7 1 75 90 1 10 y
// B 7 1 300 90 1 10 y
// U 17 1 145 120 1 10 y
int main(int argc, char *argv[]) {

  if(argc < 9)
  {
   throw invalid_argument("There should be exactly 8 arguments\n");
  }


#if 0
  CircuitType type = UNI;
  if (!strcmp(argv[1], "B"))
  {
    type = BI;
  }
  else if (!strcmp(argv[1], "T"))
  {
    type = TAN;
  }
  else if (!strcmp(argv[1], "U"))
  {
    type = UNI;
  }
  else
  {
    throw invalid_argument("Choose a valid circuit type (U for univariate, B for bivariate and T for Tan et al.\n");
  }

  bool verbose = false;
  if (!strcmp(argv[8], "y"))
    verbose = true;

  //////////PARAMETER SET UP////////////////
  // Plaintext prime modulus
  unsigned long p = atol(argv[2]);
  // Field extension degree
  unsigned long d = atol(argv[3]);
  // Cyclotomic polynomial - defines phi(m)
  unsigned long m = atol(argv[4]);
  // Number of ciphertext prime bits in the modulus chain
  unsigned long nb_primes = atol(argv[5]);
  // Number of columns of Key-Switching matix (default = 2 or 3)
  unsigned long c = 3;
  cout << "Initialising context object..." << endl;
  // Intialise context
  auto context = ContextBuilder<BGV>()
            .m(m)
            .p(p)
            .r(1)
            .bits(nb_primes)
            .c(c)
            .scale(6)
            .build();

  // Print the security level
  cout << "Q size: " << context.logOfProduct(context.getCtxtPrimes())/log(2.0) << endl;
  cout << "Q*P size: " << context.logOfProduct(context.fullPrimes())/log(2.0) << endl;
  cout << "Security: " << context.securityLevel() << endl;

  // Print the context
  context.getZMStar().printout();
  cout << endl;

  //maximal number of digits in a number
  unsigned long expansion_len = atol(argv[6]);

  // Secret key management
  cout << "Creating secret key..." << endl;
  // Create a secret key associated with the context
  SecKey secret_key(context);
  // Generate the secret key
  secret_key.GenSecKey();
  cout << "Generating key-switching matrices..." << endl;
  // Compute key-switching matrices that we need
  if (expansion_len > 1)
  {
    if (context.getZMStar().numOfGens() == 1)
    {
      std::set<long> automVals;
      long e = 1;
      long ord = context.getZMStar().OrderOf(0);
      bool native = context.getZMStar().SameOrd(0);
      if(!native)
        automVals.insert(context.getZMStar().genToPow(0, -ord));
      while (e < expansion_len){
        long atm = context.getZMStar().genToPow(0, ord-e);
        //cout << "Automorphism " << -e << " is " << atm << endl;
        automVals.insert(atm);
        e <<=1;
      }
      addTheseMatrices(secret_key, automVals);
    }
    else
    {
      addSome1DMatrices(secret_key);
    }
  }

  if (d > 1)
    addFrbMatrices(secret_key); //might be useful only when d > 1

  // create Comparator (initialize after buildModChain)
  Comparator comparator(context, type, d, expansion_len, secret_key, verbose);

  //repeat experiments several times
  int runs = atoi(argv[7]);
  

  //test comparison circuit
  comparator.test_compare(runs);
#endif

  myCode();

  //printAllTimers(cout);

  return 0;
}
