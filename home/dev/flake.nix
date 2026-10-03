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

        # CARGO_HOME = "./.cargo"; für großes rust projekt diese
        # shell in eigener dir kopieren und dann mit nix develop .#rust ausführen
      };
      cpp = nixpkgs.legacyPackages.x86_64-linux.mkShell {
        packages = with nixpkgs.legacyPackages.x86_64-linux; [
          cmake
          clang
        ];
      };

      go = nixpkgs.legacyPackages.x86_64-linux.mkShell {
        packages = with nixpkgs.legacyPackages.x86_64-linux; [
          go
        ];

        #GOMODCACHE = "./.go/pkg/mod";
        #GOBIN = "./.go/bin";
        #GOPATH = "./.go";
        #gleiche wie bei rust ich brauche ein fish script dafür
      };
    };
  };
}
