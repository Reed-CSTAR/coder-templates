{
  inputs.nixpkgs.url = "github:nixos/nixpkgs";

  outputs =
    { self, nixpkgs }:
    {
      devShells.x86_64-linux.default =
        let
          pkgs = import nixpkgs {
            system = "x86_64-linux";
            config = {
              allowUnfree = true;
            };
          };
        in
        pkgs.mkShell {
          # Coder will complain on a version mismatch. Update the flake as needed.
          buildInputs = with pkgs; [
            coder
            terraform
          ];
        };
    };
}
