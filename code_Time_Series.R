# This code accompanies the Time Series topic and is maintained by Sam
# Burer. Last updated 2019-01-28

# Load required libraries

library(ggplot2)
library(forecast)

aa_plot_fitted <- function(fit) {
    if("ets" %in% class(fit) || "ARIMA" %in% class(fit)) {
        time_series <- cbind(Data = fit$x, Fitted = fit$fitted)
    } else if("lm" %in% class(fit)) {
        time_series <- cbind(Data = fit$data[, 1], Fitted = fit$fitted.values)
    }
    autoplot(time_series) + ylab("") + scale_color_hue(name = "Series")
}

# aa_get_decomp_residuals <- function(decomp) { decomp[, "Remainder"] }

# aa_critique_fit <- function(fit) {
#
    # # The object res stores our results as a list. Initialize it
#
    # res <- list()
#
    # # Return the results
#
    # res
# }
