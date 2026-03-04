# Custom Weapons Pack - OX Inventory

Paczka z niestandardowymi broniami zoptymalizowana pod serwery FiveM korzystające z **OX Inventory**.

## Dostępne Bronie
1. **Pistolet Gazowy** (`WEAPON_GASPISTOL`) - Słaba broń gazowa zadająca minimalne obrażenia.
2. **AR-15** (`WEAPON_AR15`) - Karabin szturmowy.

---

## Instrukcja Instalacji (OX Inventory)

Podążaj za poniższymi krokami, aby poprawnie dodać bronie do swojego serwera.

### Krok 1: Dodanie broni do `ox_inventory/data/weapons.lua`

Otwórz plik `data/weapons.lua` w swoim folderze `ox_inventory` i dodaj poniższy kod na dole pliku:

```lua
-- [[ CUSTOM WEAPONS ]]

['WEAPON_GASPISTOL'] = {
	label = 'Pistolet Gazowy',
	weight = 1500,
	durability = 0.5,
	ammoname = 'ammo_gas',
},

['WEAPON_AR15'] = {
	label = 'AR-15',
	weight = 3500,
	durability = 0.5,
	ammoname = 'ammo_rifle',
},
```

### Krok 2: Dodanie przedmiotów (amunicji i broni) do `ox_inventory/data/items.lua`

Otwórz plik `data/items.lua` w swoim folderze `ox_inventory` i dodaj konfigurację dla amunicji gazowej (jeśli jej nie masz) oraz opcjonalnie ikony dla broni.

**Ważne:** OX Inventory automatycznie traktuje bronie zdefiniowane w `weapons.lua` jako przedmioty, ale musisz dodać definicję amunicji.

```lua
-- [[ CUSTOM AMMO & ITEMS ]]

['ammo_gas'] = {
	label = 'Amunicja Gazowa',
	weight = 5,
	stack = true,
	close = true,
},



### Krok 3: Dodanie obrazków
Upewnij się, że w folderze `ox_inventory/web/images` znajdują się obrazki o nazwach:
- `WEAPON_GASPISTOL.png`
- `WEAPON_AR15.png`
- `ammo_gas.png`
- `ammo_rifle.png`

---

## Informacje o Meta
- **WEAPON_GASPISTOL**: Obrażenia ustawione na **2.0** (mikro obrażenia).
- **WEAPON_AR15**: Obrażenia ustawione na **32.0**.
- Oba modele są w pełni zsynchronizowane (Stream & Meta).

## Instalacja skryptu
1. Wrzuć folder `Custom-Weapons` do swojego folderu `resources`.
2. Dodaj `ensure Custom-Weapons` do pliku `server.cfg`.
