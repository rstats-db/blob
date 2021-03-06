is_raw_list <- function(x) {
  if (!is.list(x))
    return(FALSE)

  raw <- vapply(x, is.raw, logical(1))
  null <- vapply(x, is.null, logical(1))

  if (!all(raw | null))
    return(FALSE)

  TRUE
}

as_single_raw <- function(x) {
  if (is.na(x)) NULL else as.raw(x)
}
