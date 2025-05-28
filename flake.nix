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
        export CFLAGS="-g -O0 -fno-omit-frame-pointer"
        export LDFLAGS=""

        # No automatic build. Use VSCode/Cursor tasks for building and generating compile_commands.json.
        # All Meson/Ninja/GTK tools are available in this shell.
        # If you need compile_commands.json, just run any build task in VSCode/Cursor.

        echo "💡 Reminder: Use VSCode/Cursor build tasks (like 'Build (Meson)') to generate compile_commands.json and build your project!"

        export GSETTINGS_SCHEMA_DIR=$PWD/build/data
      '';
    };
  };
}

