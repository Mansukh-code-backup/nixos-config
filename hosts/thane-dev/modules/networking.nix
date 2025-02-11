{ config, pkgs, ... }:

{
  networking = {
    hostName = "thane-dev";
    networkmanager.enable = true;
    firewall.allowedTCPPorts = [8501];
    interfaces.enp3s0 = {
        ipv4.addresses = [{
            address = "192.168.150.163";
            prefixLength = 24;
    }];
    wakeOnLan.enable = true;
  };
    defaultGateway = {
            address = "192.168.150.100";
            interface = "enp3s0";
  };


}

