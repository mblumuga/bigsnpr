################################################################################

# TYPEOF
assert_type <- function(x, type)  {
  if (typeof(x) != type)
    stop2("'%s' is not of type '%s'.", deparse(substitute(x)), type)
}

################################################################################

# FILE EXISTS
assert_exist <- function(file) {
  if (!file.exists(file))
    stop2("File \"%s\" doesn't exist.", file)
}

assert_noexist <- function(file) {
  if (file.exists(file))
    stop2("File \"%s\" already exists.", file)
}

################################################################################

# EXTENSION
assert_ext <- function(file, ext) {
  ext.file <- tools::file_ext(file)
  if (ext.file != ext)
    stop2("Extension '.%s' not supported, requires '.%s' instead.",
          ext.file, ext)
}

################################################################################