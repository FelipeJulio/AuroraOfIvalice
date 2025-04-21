# Aurora Of Ivalice (AOI)

Aurora Of Ivalice (AOI) is a dynamic sunset system mod that gradually alters the visual post-processing of the game over time, giving maps a sunset effect.

![Demo Animation](assets/demo.avif)

## Features

- **Dynamic Sunset System**: Over a span of 20 minutes, the mod gradually applies post-processing changes, transitioning the map visuals to a sunset effect.
- **Time Persistence**: The time progression is stored and carried across map transitions, ensuring the presets are applied based on the current time.
- **Presets for Various Maps**: Includes well-tuned presets for most open-world maps, tailored for a visually pleasing experience.
- **Exposed Progression Values**: For those who wish to use progression values in their own mods, refer to the ["Exposed Values"](#exposed-values) section below.

## FAQs

### Which maps are included?
The maps below include a generic preset that works well on most maps

- Archades
- Balfonheim
- Bhujerba
- Cerobi Steppe
- Dalmasca Estersand
- Dalmasca Westersand
- Eruyt Village
- Feywood
- Giruvegan - Externals
- Giza Plains
- Jahara
- Lhusu Mines - Externals
- Mosphoran Highwaste
- Mt. Bur-Omisace
- Nabreus Deadlands
- Nalbina Dungeon - Externals
- Nalbina Town
- Nam-Yensa Sandsea
- Ogir-Yensa Sandsea
- Old Archades
- Ozmone Plain
- Paramina Rift
- Pharos - Externals
- Phon Coast
- Rabanastre
- Ridorana Cataract
- Salikawood
- Skyferry - Externals
- Stilshrine of Miriam - Externals
- Tchita Uplands
- The Tomb of Raithwall - Externals
- Zertinan Caverns

### Have all maps been tested?
- Not completely, but the majority have been tested.

### What does "dynamic" mean?
- The mod applies gradual post-processing adjustments over a 20-minute interval, creating a dynamic transition to a sunset effect.

### Is the cycle reset when changing maps?
- No, the time progression is stored, and presets are applied based on the current in-game time.

### Can the visuals be made darker?
- Yes, but fine-tuning each map is time-intensive. The included presets are optimized to look visually pleasing; making them darker might degrade the experience.

### Why doesn't it become fully night?
- Achieving a true night effect would require loading textures from other maps, which is complex and incompatible with gradual texture transitions.

### Is it compatible with all mods?
- Compatibility with all mods isn't guaranteed. However, it works well with most of Xeavin's mods i have installed.

## Known Issues

- Teleportation between maps may cause maps to appear darker than intended. It may be necessary to exit the map and enter again to reload the preset.

---

## Special Thanks

A heartfelt thanks to the following individuals for their help and encouragement:

- [**Xeavin**](https://next.nexusmods.com/profile/Xeavin?gameId=2304)
- [**ffgriever**](https://next.nexusmods.com/profile/ffgriever?gameId=2304)
- [**LowPriorityCitizen**](https://next.nexusmods.com/profile/LowPriorityCitizen?gameId=2304)

---

## Installation

1. Go to the [releases page](https://github.com/FelipeJulio/AuroraOfIvalice/releases) and download the latest release of `AuroraOfIvalice.zip`.
2. Installation options:
   2.1. To install using Vortex, simply load the `AuroraOfIvalice.zip` file. Learn more about Vortex [here](https://www.nexusmods.com/about/vortex).
   2.2. For manual installation, extract the zip file and copy the files from the `data\x64\scripts` folder into yout game folder, like `FINAL FANTASY XII THE ZODIAC AGE\x64\scripts`.
3. Launch the game and enjoy!

**Note:** The following mods are required prerequisites and must be installed for `AuroraOfIvalice` to function properly:
- [FF12 External File Loader](https://www.nexusmods.com/finalfantasy12/mods/170)
- [FF12 LUA Loader](https://www.nexusmods.com/finalfantasy12/mods/171)

---

## Examples

The cycle speed was intentionally increased to create the demonstrations below.

https://github.com/user-attachments/assets/9a66e04d-8997-4d29-9090-4ccb03103832

https://github.com/user-attachments/assets/c49ad424-ac4a-4f84-b693-17c8e48963a3

https://github.com/user-attachments/assets/2c8a91dd-ad61-43eb-8332-c1be79189c51

https://github.com/user-attachments/assets/86962026-6c4b-48b4-bf19-7ea92a39c6c7

---

## Exposed Values

You can utilize the exposed values in your own mod.

The following values are available to monitor the cycle:

- **`AOIActive`**
  - Type: **`boolean`**
  - Description: Indicates whether the other cycle values are ready for use.
  - Behavior:
    - **`true`**: The cycle has started, and the other values (`AOIProgress`, `AOIDirection`, `AOICondition`) will be available.
    - **`false`**: The cycle has not started yet, and the other values will not be accessible.

- **`AOIProgress`**
  - Type: **`number`**
  - Description: Represents the percentage progress of the cycle, ranging from **`0`** to **`100`**.
  - Behavior:
    - During an active cycle, this value is a number between **`0`** and **`100`**.
    - When the cycle is not initialized, the value will be **`nil`**.

- **`AOIDirection`**
  - Type: **`string`**
  - Description: Indicates the cycle's direction, simulating dawn and dusk.
  - Behavior:
    - When initialized, it returns **`"forward"`** (progressing towards "day") or **`"backward"`** (receding towards "night").
    - When the cycle is not initialized, it returns **`"unknown"`**.

- **`AOICondition`**
  - Type: **`string`**
  - Description: Defines the current condition of the cycle.
  - Behavior:
    - When initialized, it returns values such as:
      - **`"day"`**: Day condition.
      - **`"afternoon"`**: Afternoon condition.
      - **`"night"`**: Night condition.
    - When the cycle is not initialized, it returns **`"unknown"`**.

Example usage:

```lua
local AOIExposedValues = "scripts/config/AuroraOfIvalice/AOIExposedValues.lua"

local function loadAOIValues()
    local file = loadfile(AOIExposedValues)
    if file then
        pcall(file)
        return _G.AOIExposedValues
    end
end

local function getAOIValues()

    local values = loadAOIValues()

    if values and values.AOIActive then
        print(string.format("Cycle Progress: %s", values.AOIProgress))
        print(string.format("Cycle Direction: %s", values.AOIDirection))
        print(string.format("Cycle Condition: %s", values.AOICondition))
        event.executeAfterMs(1000, getAOIValues)
    else
        event.executeAfterMs(1000, getAOIValues)
    end
end

event.registerEventAsync("onInitDone", function()
    event.executeAfterMs(1000, getAOIValues)
end)

```

## Permissions

All files contained within this repository are the property of the author or other authors whose files have been utilized under open licenses. The intellectual property rights of these files must be respected according to the terms provided by their original creators.
- Are not permitted to distribute this mod on any platform or in any form without explicit permission from the author.
- Making alterations, transformations, or creating derivative works based on this mod is strictly prohibited without prior consent from the author.
