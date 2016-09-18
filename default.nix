{ }:

let
  pkgs = import <nixpkgs> {};
  python = import ./requirements.nix { inherit pkgs; };
in python.mkDerivation {
  name = "parsec";
  src = ./.;
  buildInputs = [
  ];
  propagatedBuildInputs = [
    python.packages.PyMonad
  ];
}
