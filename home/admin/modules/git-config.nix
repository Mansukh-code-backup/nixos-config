{ config, lib, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Mansukh-code-backup";
    userEmail = "mansukhcodebackup@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase = false;
      credential.helper = "cache --timeout=3600";
    };
  };
}

