{ ... }:

{
  # Set up bash using Home Manager.
  # Allows the usage of a custom prompt and setting of environment variables.
  programs.bash = {
    enable = true;
    initExtra = ''export PS1="\[\033[0;36m\]\u@\h:\[\033[0m\]\[\033[0;32m\]\w\[\033[0m\]\n\$ "'';
  };
}
