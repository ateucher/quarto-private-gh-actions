if (!requireNamespace("staticryptR", quietly = TRUE)) {
  stop(
    "staticryptR package is required for this script to work.
    Please install with: install.packages('staticryptR')",
    call. = FALSE
  )
}

if (isTRUE(staticryptR::check_system())) {
  message(
    "Encrypting..."
  )
}

staticryptR::staticryptr(
  files = "_site/",
  directory = ".",
  password = Sys.getenv("STATICRYPT_PASSWORD"),
  short = FALSE, # set to TRUE if you want to use a short password
  recursive = TRUE,
  template_title = "Password required for access",
  template_instructions = "Enter the password or contact example@email.com",
  template_button = "Access"
)
