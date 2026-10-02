{ pkgs, unstable, ... }:

{
  home.packages = [
    pkgs.gnumake
    pkgs.curl
    pkgs.sqlite
    unstable.javaPackages.compiler.temurin-bin.jdk-27
  ];
}
