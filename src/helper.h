#include <RcppArmadillo.h>
#include <Rcpp.h>
#include <RInside.h>

RInside* rinside;

Rcpp::List sdp1_admm(arma::mat As, int K, Rcpp::List opts);
Rcpp::List sdp1_admm_si(arma::mat As, Rcpp::List opts);

void set_value(arma::mat& arr, int x, int y, double value) {
    arr(x, y) = value;
}
void get_mat(Rcpp::NumericMatrix& arr, Rcpp::List& fit_results) {
    Rcpp::NumericMatrix array_inner = fit_results["X"];
    arr = array_inner;
}
void set_list_value(Rcpp::List& list, double rho, int T, double tol, int report_interval) {
    list["rho"] = rho;
    list["T"] = T;
    list["tol"] = tol;
    list["report_interval"] = report_interval;
}
void initialize_r() {
    rinside = new RInside();
}

void deinitialize_r() {
    delete rinside;
}