#' Generate the indices to subset a dataset for cross validation
#'
#' @param n Dataset size.
#' @param fold The i th fold.
#' @param folds Number of folds.
#' @param random_order Permute the order of the indices.
#' @param seed Sets the seed when permuting the order.
#'
#' @example
#' 
#' cross_validate(100, 1, folds=10)
#'
#' @export
cross_validate <- function(n, fold, folds=10, random_order=TRUE, seed=1)
{
    if (fold < 0 || fold > folds) stop("fold must be between 0 and folds")
    if (folds > n) stop("Cannot have more folds than n")

    if (random_order) {
	set.seed(seed)
	index <- sample(1:n)
    } else {
	index <- 1:n
    }

    k <- floor(n / folds)
    test <- index[((fold - 1) * k + 1):(fold * k)]
    train <- setdiff(index, test)

    return(list(
	test = test,
	train = train
    ))
}

