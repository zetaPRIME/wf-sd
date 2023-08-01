# Zia's Integrated Deckframe
A Steam Input profile for Warframe on Steam Deck, fully compatible with Echoes of Duviri. Fixes numerous issues with the official configuration, and uses a combination of Steam Input actions, mouse and keyboard bindings to provide a much more fluid and integrated experience which takes full advantage of the Deck's input capabilities.

## Features and Bindings
Much of the controls are the defaults, but there are several adjustments and additions:
- **Left Stick**: Move / Sprint (*when at outer edge*)
- **L1**: Roll / Blink
- **R1**: Melee (*B is still also mapped to this.*)
- **L4**: Crouch / Slide, Descend
- **R4**: Jump, Ascend
- **L5**: Use selected ability
- **R5**: Ability menu replacement
  - Reimplemented as an action layer setup due to the built-in one interrupting crouching/sliding, sprinting and aim gliding.
  - Order is **X, A, Y, B**. (*Directions should feel familiar to rhythm game players.*)
  - **DPad Up**: Tactical Menu (*Railjack*)
  - **DPad Left**: Inspect
  - **DPad Right**: Equip Omni
  - **Quick press and release**: Use selected ability
  - *Invert Tap/Hold settings are applied from the Controller section of the Options screen.*
- **DPad Down**: Transference

- **Menu Button** (*left side*): Show quick progress screen
  - **Start Button**: Toggle overlay map
  - **X, A, Y, B**: Abilities via vanilla Ability Menu. **Switching fishing/conservation equipment requires this method!**

- **Right Trackpad**: Camera / Aiming (*as mouse*)
  - **Click**: Altfire / Heavy Attack
  - *Be aware that the sensitivity is set to 200% to better expose the trackpad's resolution. Tweak your ingame look sensitivity accordingly.*
- **Left Trackpad** (*click*): Access Gear Wheel. Slide to select, click again to use selected item; release to cancel out of menu.
  - *Due to Steam Input limitations, this will behave strangely in other menus. Stick sensitivity has been adjusted to minimize impact.*

- Fixed Shawzin controls (replaced most of them with their equivalent keyboard bindings since the Actions are currently nonfunctional.)
  - **R4* *or* **Menu Button**: Switch scale
  - *Whammy functionality not working; it will return when the game itself is fixed.*

## Installation
Due to some details of how Warframe behaves, the input configuration won't be fully functional without key bindings that can't be set in the game itself if it's running through Steam on a Steam Deck. This script will install a replacement config file with all the bindings you need, plus a set of reasonable defaults for the Deck. (This only affects keybindings, input and graphics settings. Your previous configuration will be backed up.)
1. Switch your Steam Deck to desktop mode and navigate to this page. (`https://github.com/zetaprime/wf-sd`)
1. [Download the installer file](https://github.com/zetaPRIME/wf-sd/releases/download/v1.0.0/wf-sd-install.desktop), drag it onto the desktop and double-click it. (If you're using Firefox, the file will be named `wf-sd-install.desktop.download`; rename it to `wf-sd-install.desktop` before trying to run it.)
1. Switch back to Gaming Mode, open Warframe's input configuration in the game profile screen (controller icon), and apply the latest version of "Zia's Integrated Deckframe" from Community Layouts.
1. Launch the game and modify your in-game settings according to the [Recommended Settings](#recommended-settings).
1. Enjoy!

- - Alternatively, if you'd rather do it manually instead of trusting a script you found on the internet, you can download [EE.cfg](https://raw.githubusercontent.com/zetaPRIME/wf-sd/main/EE.cfg) and copy it into `/home/deck/.local/share/Steam/steamapps/compatdata/230410/pfx/drive_c/users/steamuser/AppData/Local/Warframe` using your file manager.

## Recommended Settings
### Keyboard/Mouse
- **Look Sensitivity**: 23
- **Aim Sensitivity** (*normal and scoped*): 23
- Match above in Archwing
- **Railjack Look Sensitivity**: 100
- **Railjack Aim Sensitivity** (*normal and scoped*): 25
- **Pilot Centered Crosshair**: off

### Controller
- **Look Sensitivity** (*all*): 40
- **Aim Sensitivity** (*all*): 20
- **Pilot Centered Crosshair**: on
  - *This will allow you to aim within your view with the trackpad when you're mainly firing, while taking more direct control of the vehicle with the right stick.*

### Interface
- **HUD Scale**: 110
- **Damage Numbers Scale**: 75

### Accessibility
- **Hold to Sprint** (*Keyboard/Mouse and Controller*): ON (**REQUIRED** for sprinting to work properly!)
- **Repeated Button Presses**: Hold
- **Enable HUD Motion**: off

## Known Issues
- Whammy functionality while playing Shawzin is currently nonfunctional. (game bug)
- Paragrimm controls currently aren't hooked up to Steam Input. Not much I can do about that, sadly.

### I can't find the layout...
If you can manage to get this URL shoved into Steam on your Deck, it should give you a working copy of v1.0.0.
`steam://controllerconfig/230410/3013141961`
