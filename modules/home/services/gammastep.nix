{ ... }:

{
  # Permanently sets screen temperature to 3000K.
  services.gammastep = {
    enable = true;
    temperature = { day = 3000; night = 3000; };

    latitude = 0.0;
    longitude = 0.0;
  };
}
