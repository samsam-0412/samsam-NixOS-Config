{ pkgs }:

{
  java = pkgs.mkShell {
    packages = with pkgs; [
      jdk21
      gradle
      maven
    ];

    JAVA_HOME = "${pkgs.jdk21}";
  };

  rust = pkgs.mkShell {
    packages = with pkgs; [
      rustc
      cargo
    ];
  };
}
