{ host, ... }:

{
  networking = {
    # Define your hostname.
    hostName = "${host}";

    # Configure network connections interactively with nmcli or nmtui.
    networkmanager.enable = true;
  };
}
