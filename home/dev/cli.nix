{ pkgs, unstable, ... }:

{
  home.packages = with pkgs;[
    pkgs.gnumake
    pkgs.curl
    pkgs.sqlite
    unstable.javaPackages.compiler.temurin-bin.jdk-27
  ];  
}
