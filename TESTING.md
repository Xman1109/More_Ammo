# Optional empty magazines and shells

In **Settings > Mod settings > Startup > More Ammo**, disable **Require empty
magazines and shells**, apply the change and restart Factorio.

With the option disabled:

- More Ammo keeps the original base-game ammunition recipes, including filled
  ammunition used to craft piercing and uranium ammunition. Recipes modified by
  other mods are not overwritten by More Ammo's empty-container recipes.
- Added low-tier ammunition (FMJ, soft-point, hollow-point, acid, fire and
  explosive) uses firearm magazines in place of empty magazines, one for one.
- Space Exploration's water, cryonite, iridium, vulcanite, beryllium and naquium
  ammunition uses piercing rounds magazines in place of advanced magazines,
  one for one.
- The other ingredients of added recipes are unchanged. Container costs are not
  converted into extra plates. Existing filled-ammunition upgrade recipes remain.
- Extended recipes derive from these ammunition chains, applying the existing
  ammunition cost multipliers and retaining the source recipe's output count.
  Empty-container cost settings have no effect on those recipes.

The option is enabled by default, preserving the mod's existing recipes.
Container items and recipes remain available for existing saves and other mods.

## Manual check (Factorio 2.0.77)

Use a separate test save. Install the modified mod as a folder named
`More_Ammo_1.5.22` or a ZIP containing that folder in your Factorio mods directory.
Back up an existing copy of the same mod version before replacing it.

1. With the option enabled, confirm that a firearm magazine requires an empty
   magazine and two iron plates.
2. Disable the option and restart. At the other settings' defaults, check:

   | Ammunition | Ingredients | Output |
   | --- | --- | --- |
   | Firearm magazine | 4 iron plates | 1 |
   | Piercing rounds magazine | 2 firearm magazines + 1 steel plate + 2 copper plates | 2 |
   | Piercing shotgun shells | 2 shotgun shells + 2 steel plates + 5 copper plates | 1 |
   | Full-metal-jacket magazine | 1 firearm magazine + 3 iron plates + 3 steel plates + 2 copper plates | 1 |
   | Acid magazine | 1 firearm magazine + 5 iron plates + 4 steel plates + 10 sulfuric acid | 1 |
   | Extended piercing rounds magazine | 3 firearm magazines + 2 steel plates + 3 copper plates | 2 |

3. Check that ordinary piercing ammunition takes 6 seconds to craft and consumes
   standard magazines, without requiring an empty magazine.
4. Check added ammunition without empty containers. Its original iron, steel and
   other material ingredients should remain; no container material costs are added.
5. Enable/disable extended magazines and adjust ammunition multipliers. Extended
   recipes should retain their source batch quantities. Changing empty-container
   multipliers should not affect recipes while this option is disabled.
6. With Quality/Space Age enabled, inspect recycling: filled ammunition can be
   returned as an ingredient, and batch output counts are accounted for.
7. If Space Exploration is installed, check all six high-tier recipes require
   piercing rounds magazines plus their original Space Exploration materials.
8. Re-enable the option and restart to restore the original container requirements.

French setting label: **Exiger des chargeurs et douilles vides**.
