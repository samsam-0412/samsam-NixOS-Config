{ pkgs,... }:
{
  home.packages = with pkgs; [
    gnumake
    curl
    gradle
    jdk21
    sqlite
  ];
}
