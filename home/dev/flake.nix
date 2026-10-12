{
  description = "Development shells";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { nixpkgs, ... }: {
    devShells.x86_64-linux = {
      rust = nixpkgs.legacyPackages.x86_64-linux.mkShell {
        packages = with nixpkgs.legacyPackages.x86_64-linux; [
          rustc
          cargo
        ];

        shellHook = ''
          export CARGO_HOME="$PWD/.cargo"
          export PATH="$CARGO_HOME/bin:$PATH"
        '';
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

        shellHook = ''
          export GOPATH="$PWD/.go"
          export GOMODCACHE="$GOPATH/pkg/mod"
          export GOBIN="$GOPATH/bin"
          export PATH="$GOBIN:$PATH"
        '';
      };

      python = nixpkgs.legacyPackages.x86_64-linux.mkShell {
        packages = with nixpkgs.legacyPackages.x86_64-linux; [
          python3
          python3Packages.pip
        ];

        shellHook = ''
        export VIRTUAL_ENV="$PWD/.venv"
        export PATH="$VIRTUAL_ENV/bin:$PATH"

        if [ ! -d "$VIRTUAL_ENV" ]; then
          python -m venv "$VIRTUAL_ENV"
        fi
        
      '';
      };
      nodejs = nixpkgs.legacyPackages.x86_64-linux.mkShell {
        packages = with nixpkgs.legacyPackages.x86_64-linux; [
          nodejs_24
          pnpm
          nodemon
          typescript-language-server
        ];

        shellHook = ''
          export NPM_CONFIG_PREFIX="$PWD/.npm-global"
          export PATH="$NPM_CONFIG_PREFIX/bin:$PWD/node_modules/.bin:$PATH"
        '';
      };
    };
  };
}
