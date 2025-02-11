{ config, pkgs, ... }:

{
  users.users.admin = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "audio" ];
    # shell = pkgs.zsh;
  };
  nix.settings.trusted-users = [ "admin" ]; 

}
