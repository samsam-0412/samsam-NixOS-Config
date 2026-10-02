{ pkgs }:

{
  java = pkgs.mkShell {
    packages = with pkgs; [
      jdk21
      gradle
      maven
    ];
    # do this all just with gradle and intellij idea
    JAVA_HOME = "${pkgs.jdk21}";
  };

  rust = pkgs.mkShell {
    packages = with pkgs; [
      rustc
      cargo
    ];
  };
  cpp = pkgs.mkShell {
    packages = with pkgs; [
      cmake
      clang
    ];
  };
}
