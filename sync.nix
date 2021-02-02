{ config, pkgs, ... }:

{
  # access the service via 127.0.0.1:8384
  # To check if service is up use systemctl | grep syncthing
  services = {
      syncthing = {
          enable = true;
          user = "noel";
          dataDir = "/home/noel/Sync";
          configDir = "/home/noel/.config/syncthing";
          systemService = true;
      };
  };
}
