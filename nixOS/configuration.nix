{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;

  time.timeZone = "Europe/Berlin";
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_DE.UTF-8";
    LC_IDENTIFICATION = "de_DE.UTF-8";
    LC_MEASUREMENT = "de_DE.UTF-8";
    LC_MONETARY = "de_DE.UTF-8";
    LC_NAME = "de_DE.UTF-8";
    LC_NUMERIC = "de_DE.UTF-8";
    LC_PAPER = "de_DE.UTF-8";
    LC_TELEPHONE = "de_DE.UTF-8";
    LC_TIME = "de_DE.UTF-8";
  };
  
  nix.settings.experimental-features = [ "nix-command flakes" ];
 
  console.keyMap = "de";
 
  users.users."samsam" = {
    isNormalUser = true;
    description = "samsam";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  programs.niri.enable = true;
  
  programs.bash = {
   interactiveShellInit = ''
    if [[ $(${pkgs.procps}/bin/ps --no-header --pid=$PPID --format=comm) != "fish" && -z ''${BASH_EXECUTION_STRING} ]]
     then
      shopt -q login_shell && LOGIN_OPTION='--login' || LOGIN_OPTION=""
       exec ${pkgs.fish}/bin/fish $LOGIN_OPTION
     fi
   '';
  };

  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [ home-manager ];
 
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
  system.stateVersion = "26.05"; 
}
