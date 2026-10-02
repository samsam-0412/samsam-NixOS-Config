{
  description = "Development shells";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { nixpkgs, ... }: {
    devShells.x86_64-linux = {
      java = nixpkgs.legacyPackages.x86_64-linux.mkShell {
        packages = with nixpkgs.legacyPackages.x86_64-linux; [
          jdk21
          gradle
          maven
        ];

        JAVA_HOME = "${nixpkgs.legacyPackages.x86_64-linux.jdk21}";
      };

      rust = nixpkgs.legacyPackages.x86_64-linux.mkShell {
        packages = with nixpkgs.legacyPackages.x86_64-linux; [
          rustc
          cargo
        ];
      };
      cpp = nixpkgs.legacyPackages.x86_64-linux.mkShell {
        packages = with nixpkgs.legacyPackages.x86_64-linux; [
          cmake
          clang
        ];
      };
    };
  };
}
