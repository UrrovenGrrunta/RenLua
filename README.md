# Ren'Lua
[English](README.md) | [Русский](README_RU.md) | [Українська](README_UA.md)

**Ren'Lua** is an experimental visual novel engine built with **Lua and LÖVE2D**.

The project started as a way to learn Lua through practical development, with a long-term goal of building a lightweight visual novel engine inspired by Ren'Py.

Ren'Lua is currently in the early prototype stage. It is not ready for creating or distributing complete visual novels.

## Current Features

- Dialogue rendering with Unicode font support
- Character names and custom name colours
- Character definitions stored separately from dialogue scripts
- Dialogue scripts loaded as Lua modules
- Dialogue progression using the Space key
- Automatic dialogue looping
- Exit using the Escape key
- A basic dialogue box rendered with LÖVE2D

## Tech Stack

- **Language:** Lua (via LuaJIT)
- **Framework:** LÖVE2D
- **Platform:** Windows (currently tested)

## Project Structure

```text
RenLua/
├── main.lua
├── characters.lua
├── scripts/
│   └── test.lua
├── fonts/
│   └── DejaVuSans.ttf
└── README.md
```

## Getting Started

### Requirements

Install [LÖVE2D](https://love2d.org/).

A separate Lua installation is not required to run the project.

### Running

Clone the repository:

```bash
git clone https://github.com/YOUR_USERNAME/RenLua.git
cd RenLua
```

Run the project using LÖVE2D.

For example, on Windows PowerShell:

```powershell
& "C:\Program Files\LOVE\love.exe" .
```

The path to LÖVE2D may differ depending on your installation.

### Controls

| Key | Action |
|---|---|
| Space | Advance dialogue |
| Escape | Quit |

## How It Works

Ren'Lua currently uses Lua tables to represent dialogue scripts and characters.

Character definitions are stored in `characters.lua`:

```lua
return {
    alice = {
        name = "Alice",
        color = {1, 0.5, 0, 1}
    }
}
```

Dialogue scripts are stored separately:

```lua
return {
    {
        speaker = "alice",
        text = "Hello, world!"
    }
}
```

The main application loads these modules using `require()` and renders the dialogue using LÖVE2D.

## Future Ideas

The following features are being considered, but are not yet implemented:

- Background images and scene transitions
- Character sprites
- Dialogue choices and branching
- Multiple scenes
- Music and sound effects
- Save and load functionality
- A dedicated scripting system
- Additional visual novel UI components

The long-term direction is experimental and may change as development progresses.

## Development Status

**Early prototype — work in progress.**

Ren'Lua is primarily a personal learning and experimentation project. Features are implemented incrementally, with an emphasis on understanding Lua and keeping the engine simple.

## Acknowledgements

Inspired by [Ren'Py](https://www.renpy.org/).

Built using [LÖVE2D](https://love2d.org/).

Ren'Lua is an independent project and is not affiliated with Ren'Py.