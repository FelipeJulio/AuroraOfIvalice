# Aurora Of Ivalice (AOI)

Aurora Of Ivalice (AOI) is a dynamic sunset system mod that gradually alters the visual post-processing of the game over time, giving maps a sunset effect.

---

## Features

- **Dynamic Sunset System**: Over a span of 20 minutes, the mod gradually applies post-processing changes, transitioning the map visuals to a sunset effect.
- **Time Persistence**: The time progression is stored and carried across map transitions, ensuring the presets are applied based on the current time.
- **Presets for Various Maps**: Includes well-tuned presets for most open-world maps, tailored for a visually pleasing experience.

---

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

### Have you ever worked with .lua or modding games before?
- No, this is my first time both modding games and using the Lua language.

### What are the next updates?
- Enhance and refine presets to be naturally darker
- Create presets for each region (set of maps) so that everything looks more natural

### What are the future plans?
- Exposing the time and cycle percent (day, evening, night) for use in other mods, such as stronger monsters during nighttime periods.
- Study how to work with textures and global lighting to further enhance visuals.

### Map preset progress
The maps listed below include an adjusted and less generic preset, as soon as they are all completed the mod will no longer be an beta-version and will possibly be on Nexus Mods.

- [ ] Archades
- [ ] Balfonheim
- [x] ~~Bhujerba~~
- [ ] Cerobi Steppe
- [ ] Dalmasca Estersand
- [ ] Dalmasca Westersand
- [ ] Eruyt Village
- [ ] Feywood
- [ ] Giruvegan - Externals
- [x] ~~Giza Plains~~
- [ ] Jahara
- [ ] Lhusu Mines - Externals
- [ ] Mosphoran Highwaste
- [ ] Mt. Bur-Omisace
- [ ] Nabreus Deadlands
- [ ] Nalbina Dungeon - Externals
- [ ] Nalbina Town
- [ ] Nam-Yensa Sandsea
- [x] ~~Ogir-Yensa Sandsea~~
- [ ] Old Archades
- [ ] Ozmone Plain
- [ ] Paramina Rift
- [ ] Pharos - Externals
- [x] ~~Phon Coast~~
- [x] ~~Rabanastre~~
- [ ] Ridorana Cataract
- [ ] Salikawood
- [ ] Skyferry - Externals
- [ ] Stilshrine of Miriam - Externals
- [x] ~~Tchita Uplands~~
- [ ] The Tomb of Raithwall - Externals
- [x] ~~Zertinan Caverns~~

---

## Known Issues

- The sunset effect is only applied after transitioning between maps.
- Some maps may appear darker than expected, and this will be corrected as I finish the specific presets for each map.
- Teleportation between maps may cause maps to appear darker than intended. This is a known issue without an easy fix currently. It may be necessary to exit the map and enter again to reload the preset.

---

## Special Thanks

A heartfelt thanks to the following individuals for their help and encouragement:

- **Xeavin**
- **ffgriever**
- **LowPriorityCitizen**

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

## Permissions

All files contained within this repository are the property of the author or other authors whose files have been utilized under open licenses. The intellectual property rights of these files must be respected according to the terms provided by their original creators.
- Are not permitted to distribute this mod on any platform or in any form without explicit permission from the author.
- Making alterations, transformations, or creating derivative works based on this mod is strictly prohibited without prior consent from the author.
