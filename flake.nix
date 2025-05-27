{
  description = "chads - GTK4 + libadwaita devshell w/ auto build + LSP";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }: {
    devShell.x86_64-linux = let
      pkgs = import nixpkgs { system = "x86_64-linux"; };

      toolchain = with pkgs; [
        gcc
        gdb
        lldb
        valgrind
        clang-tools_19
        mesonlsp
      ];

      buildTools = with pkgs; [
        meson
        ninja
        pkg-config
        gettext
        glib
        gobject-introspection
        glib.dev
	      adwaita-icon-theme
      ];

      libraries = with pkgs; [
        gtk4
	      libadwaita
        nixd
        nixfmt-rfc-style
      ];

    in pkgs.mkShell {
      nativeBuildInputs = toolchain ++ buildTools ++ libraries;

      shellHook = ''
        echo "🛠️ Devshell for chads loaded"
        export CC=gcc
        export CXX=g++
        export CFLAGS="-g -O0 -fsanitize=address,undefined -fno-omit-frame-pointer"
        export LDFLAGS="-fsanitize=address,undefined"

        # Generate compile_commands.json
        echo "🧠 Generating compile_commands.json..."
        meson setup --reconfigure --buildtype=debug --default-library=static \
          -Db_sanitize=address,undefined \
          -Db_lundef=false \
          --backend=ninja \
          --unity=off \
          --wipe \
          --fatal-meson-warnings \
          build \

        echo "⚙️ Running ninja to build gschemas + gresource..."
        ninja -C build

        export GSETTINGS_SCHEMA_DIR=$PWD/build/data
      '';
    };
  };
}

