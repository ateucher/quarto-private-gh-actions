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
  short = TRUE, # set to FALSE if you want to enforce a long password
  recursive = TRUE,
  template_color_primary = "#6667AB",
  template_color_secondary = "#f9f9f3",
  template_title = "Password required for access",
  template_instructions = "Enter the password or contact example@email.com",
  template_button = "Access"
)
