# Lua-powered Artifacts (OpenMW)

New effects for unique weapons powered by Lua.

_Expands upon my two previous mods: Modern Mehrunes Razor and Umbra Unlimited._

My aim with this mod is making certain weapons more fun and unique by adding new features to them. These features are supposed to be more or less lore-friendly - they are based on either on lore texts or future installments in the franchise.

## Mehrunes Razor - Chance to Instakill

> The Dark Brotherhood has coveted this ebony dagger for generations. This mythical artifact is capable of slaying any creature instantly. History does not record any bearers of Mehrune's Razor. However, the Dark Brotherhood was once decimated by a vicious internal power struggle. It is suspected that the Razor was involved.  
> — Tamrielic Lore

I always found random instakill weapons facinating in any game. And this is great opportunity to backport, I'd even say, a somewhat iconic enchantment to Morrowind.

### Features

Adds instakill chance to the Mehrunes Razor in multiple flavors:

- **Oblivion** -> `PlayerLuck * 0.05`
- **Skyrim** -> `2 / 101` (≈ 1.98%)
- **Modern** -> `BaseChance + PlayerLuck * LuckModifier`

It also features enemy counter-rolls by adding `(-EnemyLuck * EnemyLuckModifier)` to the end of the equation.

### NPC Blacklist

Razor won't instakill NPCs who are considered Essential (crucial to the completion of the Main Quest). A full list can be found on UESP: [Morrowind](https://en.uesp.net/wiki/Morrowind:Essential_NPCs), [Tribunal](https://en.uesp.net/wiki/Tribunal:Essential_NPCs), [Bloodmoon](https://en.uesp.net/wiki/Bloodmoon:Essential_NPCs).

My personal changes to the list:

- Added **Dagoth Ur** (phase 2)
- Added **Heart of Lorkhan**
- Removed **Crazy Batou** _(Bethesda blunder)_
- Removed **Goris the Maggot King** _(Bethesda blunder)_
- Removed **Luven** _(Bethesda blunder)_

## Umbra - Unlimited Soultrap

> The Umbra Sword was enchanted by the ancient witch Naenra Waerr, and its sole purpose was the entrapment of souls. Used in conjunction with a soul gem, the Sword allows the wielder the opportunity to imprison an enemy's soul in the gem.  
> — Tamrielic Lore

Five total spell casts? For a legendary artifact? That's more fake than a `* Sunder *`. Todd, come on - I can enchant a better item with a scamp soul.

### Features

Now the Umbra Sword will inflict its victim with a Soul Trap spell on each hit, regardless of its enchantment or charge.

It's probably for the best, but the spell won't have any VFX or SFX on hit - only on enemy's death.

## Scourge - Daedra Banishing

> EXPLICATION: The mace Scourge, Blessed of Malacath, Mackkan's legendary weapon, forged from sacred ebony in the Fountains of Fickledire, has ever been the bane of the Dark Kin, and many a black spirit has been hurled back into Oblivion with a single blow of this bold defender of the friendless.  
> — The Legendary Scourge

_Inspired by R-Zero's [True Scourge](https://www.nexusmods.com/morrowind/mods/43294)._

### Features

Now Scourge deals more damage to all daedra or even instakills them. Summoned and normal daedra can be configured independently.

## Bonus Plugins with Enchantment Changes

They are not required, but may be used to enchance the flavor.

- **Mehrunes' Razor**
  - Unenchanted
- **Umbra**
  - Unenchanted
  - Skyrimized
    - Absorb Health 25 pts for 1 sec
    - Absorb Fatigue 25 pts for 1 sec
    - 288 charge / 21 cost = 13 uses
- **Scourge**
  - Unenchanted

They also can be used standalone if you don't vibe with the rest of the mod.

## Compatibility

Completely safe to install, update, or remove mid-playthrough. Compatible with any mod.

### Supported Mods

- [Umbra- Blademaster](https://www.nexusmods.com/morrowind/mods/43275) by Melchior Dahrk - All weapons added by this mod (both melee and thrown) will also support Umbra's new behavior.
- [Tamriel_Data](https://www.nexusmods.com/morrowind/mods/44537) by Project Tamriel Team - All daedra are affected by Scourge's new behavior.
- [OAAB_Data](https://www.nexusmods.com/morrowind/mods/49042) by OAAB_Data Team - All daedra are affected by Scourge's new behavior. [TBA]
- [The Doors of Oblivion](https://www.nexusmods.com/morrowind/mods/44398?tab=posts) by Ashstaar - All daedra are affected by Scourge's new behavior. [TBA]

### Soft Incompatibilities

These mods can be used with LAP, but their changes might clash with features added by it.

- [Artifacts Reworked Constant Effect and other changes](https://www.nexusmods.com/morrowind/mods/56702) by WezKai - It changes Mehrunes Razor into glass cannon-type of a weapon which won't benefit much from LAP's instakill feature. This can be midigated by installing any other plugin for Razor on top of it.
- [True Scourge](https://www.nexusmods.com/morrowind/mods/43294) by R-Zero - LAP expands on this mod's concept, so this mod is basically redundant.
