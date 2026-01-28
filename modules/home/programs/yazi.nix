{ ... }:

{
  # Terminal file manager.
  programs.yazi = { 
    enable = true;
    settings = {
      mgr = {
        show_hidden = true;
      };
    };
  };
}
