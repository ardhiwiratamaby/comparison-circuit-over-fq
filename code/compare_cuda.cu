#include <cuda_runtime.h>
#include <device_launch_parameters.h>
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <math.h>
#include "cuhe/CuHE.h"
using namespace cuHE;
#include <iostream>
#include <time.h>
#include <random>


__global__ void sayHi(){
    printf("==kernel code== Hi there, this is Ardhi\n");
}



int compare_cuda(NTL::ZZX& c1, NTL::ZZX& c2) {
cout<<"inside compare cuda\n";

#if 1
ZZX a,b, c; //NTL Lib

//set polynomial a to x^2 + 3x + 1
SetCoeff(a, 0, 1); //1
SetCoeff(a, 1, 3); //3x + 1
SetCoeff(a, 2, 1); //x^2 + 3x + 1

//set polynomial a to 2x^2 + 2x + 2
SetCoeff(b, 0, 2); //2
SetCoeff(b, 1, 2); //2x + 2
SetCoeff(b, 2, 2); //2x^2 + 2x + 2

//c = a+b = 3x^2 + 5x + 3
c = a+b;

//cuHE initilization with DHS
// setParameters(d, p, w, min, cut, m);
setParameters(5, 2, 1, 61, 20, 8191);

cout<<"Poly a: "<<a<<endl;
cout<<"Poly b: "<<b<<endl;
cout<<"Poly c: "<<c<<endl;

multiGPUs(1);

CuPtxt* cu_a = new CuPtxt;
CuPtxt* cu_b = new CuPtxt;
CuPtxt* cu_c = new CuPtxt;

//convert ZZX to CuPtxt representation
cu_a->zRep(a);
cu_b->zRep(b);
cu_c->zRep(c);


cu_a->x2n();
cu_b->x2n();
cu_c->x2n();
#endif

cXor(*cu_c, *cu_a, *cu_b); // use cXor

// cu_c->x2z();
// ZZX result = cu_c->zRep();

// cout<<"result : "<<result<<endl;

sayHi<<<3, 3>>> ();

	return 0;
}
