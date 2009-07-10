#include<R.h>
#include<Rmath.h>

void knotave(double *t, int *length, int *d, double *res){
  // length: gives length of res
  //       should be length(t)-(d+1) 
  // d: degree of spline
  // res: will contain knot averages 
  int i=0,j=0;
  double tmp=0.0;
  for(j = 1; j <= *d; j++){
    tmp += t[j];
  }
  res[0] = tmp/ *d;
  for(i = 1; i < *length; i++){
    tmp = tmp - t[i] + t[i+*d];
    res[i] = tmp/ *d;
  }
}
