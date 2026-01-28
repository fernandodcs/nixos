{ ... }:

{
  # Configure Git version control.
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Fernando da Costa Santos";
        email = "fernandodcs@duck.com";
      };
    };
  };
}
