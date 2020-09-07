#include <RcppArmadillo.h>
#include <Rcpp.h>
Rcpp::List sdp1_admm(arma::mat As, int K, Rcpp::List opts);
void set_value(arma::mat& arr, int x, int y, double value) {
    arr(x, y) = value;
}
