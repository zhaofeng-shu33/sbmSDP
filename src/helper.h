#include <RcppArmadillo.h>
#include <Rcpp.h>
Rcpp::List sdp1_admm(arma::mat As, int K, Rcpp::List opts);
void set_value(arma::mat& arr, int x, int y, double value) {
    arr(x, y) = value;
}
void get_mat(Rcpp::NumericMatrix& arr, Rcpp::List& fit_results) {
    Rcpp::NumericMatrix array_inner = fit_results["X"];
    arr = array_inner;
}