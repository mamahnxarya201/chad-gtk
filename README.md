# Chad GTK 💪

> "In the depths of dependency hell, I found there was, within GTK, an invincible GObject.
> And that makes me code. For it says that no matter how many Electron apps the world pushes against us,
> within our native widgets, there's something stronger – something better, rendering right back."<br>
>-Albert Chadmus

A based GTK application template for gigachads who refuse to use Electron. Built for VSCode/VSCodium or whatever fork of VSCode you're using because you're "privacy conscious" 🕵️‍♂️

Experience the love and hate of building GTK Apps without ever leaving Microsoft's Comfy Text Editor™ (btw I use VSCodium 🤓)

## Prerequisites

- 🧠 Brain (at least 2 neurons required)
- 📦 Nix package manager (because you're too cool for apt/dnf)
- 🖥️ VSCode/VSCodium/Code-OSS/Windsurf/Cursor (or whatever fork you found on GitHub)
- 🚪 direnv (because typing `nix develop` is too much work)
- 🧘‍♂️ Sanity (Optional, but highly recommended)
- ☕ Coffee (Required for debugging)
- 🤡 Ability to handle C segfaults without crying

## Quick Start (aka "How to Waste Your Weekend")

1. Clone this repository like the pro you are:
   ```bash
   git clone https://github.com/mamahnxarya201/chad-gtk.git
   cd chad-gtk  # you better know what this does
   ```

2. Choose your path:

   ### 🗿 Chad Path (Based):
   ```bash
   # Enable flakes if you haven't already (you should have)
   nix develop  # watch your CPU fans go brrrrr
   ```

   ### 👶 Baby Mode (Cringe):
   If you're a peasant who likes to handle dependencies manually (why tho?), you'll need:
   - meson (the build system that's not cmake)
   - ninja (no, not that kind of ninja)
   - gcc (good luck with those error messages)
   - gtk4-devel (because gtk3 is sooo 2020)
   - libadwaita-devel (GNOME's way of saying "our way or the highway")
   - glib2-devel (the 'g' stands for 'good luck')

3. Fire up VSCode & install the recommended extensions I blessed you with
   (yes, they're actually good, trust me bro)

4. 🎉 PROFIT! (Results may vary, no refunds)

## Development (aka "The Fun Part")

This template comes with some fancy stuff pre-configured because I'm nice:

- 🐛 VSCode/Cursor debugging (for when printf isn't enough)
- 🏗️ Meson build system (everybody in GTK/Gnome use it i guess)
- 📦 Nix development environment (flex on the package manager peasants)
- 🎨 C formatting rules (.clang-format for the OCD in you)
- 🖼️ GTK4/libadwaita setup (GNOME approved™)

> **💡 Pro tip:**
> After you enter the dev shell, nothing gets built for you (because you're a chad who likes control).<br>
> Want `compile_commands.json` or to actually build something? Smash that VSCode/Cursor build task button (like "Build (Meson)") and let the magic happen.<br>
> No more surprise builds—you're the boss now.

### Daily Development Usage (3 Easy Steps!)

1. Open the project in VSCode/Cursor/Whatever
2. Fire up terminal enter the nix shell
3. Press F5 and pray 🙏

## Contributing

YOU MUST CHECK OUR DETAILED [CODE OF CONDUCT](https://youtu.be/xnhXwIhUJ24?si=AbfGFxzpeQK1kV1h)

## License

Do whatever you want with it (legally™)

---