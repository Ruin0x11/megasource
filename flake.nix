{
  description = "Love2D";

  outputs = { self, nixpkgs }: {
    devShell.x86_64-linux =
      with nixpkgs.outputs.legacyPackages.x86_64-linux; mkShellNoCC {
        nativeBuildInputs = [
          luajit
          gcc
          cmake
          autoconf
          automake
          m4
          SDL2
          freetype
          libmodplug
          mpg123
          libvorbis
          openal
          libtheora
        ];
      };
  };
}
