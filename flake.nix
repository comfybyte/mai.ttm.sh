{
  inputs.nixpkgs.url = "github:nixos/nixpkgs/release-24.05";
  outputs = { nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = with pkgs; [ nodePackages.live-server just ];
      };
    };
}
