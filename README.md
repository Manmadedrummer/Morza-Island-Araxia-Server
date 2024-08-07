# Morza Island - Araxia Server

Welcome to the repository for Morza Island on the Azerothcore platform. Below you'll find all the essential resources and credits for the contributions to this project.

## Custom Maps and Patches
Special thanks to NotCoffee418 and RStijn for their contributions to custom maps and patches:
- [NotCoffee418's Custom Maps](https://github.com/NotCoffee418/Custom-Maps) - Custom Zones for World of Warcraft 3.3.5a by RStijn.
- The maps and patch for this area can be downloaded from patch-Z (included in this repository).

## Sound Contributions
The sound files are provided by the following bands:
- **Songhammer**
- **Level 70 Elite Tauren Chieftain**

Please consider supporting these artists by purchasing their music.

## Installation Instructions
**Warning:** Make a backup of your existing data before proceeding to ensure that no custom content is overwritten.

1. **Server Files:**
   - Copy the files from the `Add To Server Side` folder to your Azerothcore server directory to ensure the maps function correctly.

2. **Database Setup:**
   - Execute the provided SQL statements using your preferred SQL editor (e.g., Keira, DBeaver).
   - **DBC Table Info:** This is the table you need to run against your world/server database (for Azerothcore it's `acore_world`).

## Contributing
This is my first attempt at Lua and some other things. If you notice any areas for improvement or want to contribute, feel free to share your suggestions or submit requests. Just remember to share. Alot of these NPC names are a fun little pop culture reference and I hope you have fun with this "mod".

## Acknowledgements
Special thanks to the following individuals for their assistance and contributions:
- Volek, Dast, Ragestriker, Dranos, Cronus, Xonxy, 55Honey, Foe, and various members of the Discord community.
- A heartfelt thank you to Sir. Wiggles for LUA assistance and code contributions, and to Dranos for the minimaps and help with intricate details on all map details (vmaps, mmaps, Maps).


### Teleport Commands
<small>Map ID for custom zones: 5000</small>
- **Morza Island**: `.go xyz -13950 2877 9 5000`
- **Valley of Betrayal**: `.go xyz 10461 -9574 22 5000` (WIP)

#### Sortable Tables
- [NPC List](https://harlequin-carmine-17.tiiny.site/)
- [Game Object List](https://morza-island-game-object-list.tiiny.site/)


*Below is a list of NPC's, Game Object's, Quest, and Item's made for this area/zone*


## NPC Zone Information

| Name                  | ID       | Type       | Sub Type                  | Lua Script       |
|-----------------------|----------|------------|---------------------------|------------------|
| Brown Horse           | 284      | Critters   | Horse                     |                  |
| Chicken               | 620      | Critters   | Chicken                   |                  |
| Mouse                 | 3271     | Critters   | Mouse                     |                  |
| Sheep                 | 1933     | Critters   | Sheep                     |                  |
| Cow                   | 2442     | Critters   | Cow                       |                  |
| Grarnik Goodstitch    | 2627     | Trainer    | Grand Master Tailor       |                  |
| Pikkle                | 8128     | Trainer    | Grand Master Miner        |                  |
| Buzzsaw Tinkertoy     | 8736     | Trainer    | Grand Master Engineer     |                  |
| Aya Blindbeard        | 26330    | Trainer    | Shaman Trainer            |                  |
| Band-Aid              | 26328    | Trainer    | Priest Trainer            |                  |
| Daniel Crockett       | 26325    | Trainer    | Hunter Trainer            |                  |
| Gorn The Mighty       | 26332    | Trainer    | Warrior Trainer           |                  |
| Grizzle Wizzlebang    | 26331    | Trainer    | Warlock Trainer           |                  |
| Hanzo                 | 26329    | Trainer    | Rogue Trainer             |                  |
| Lady Death            | 29195    | Trainer    | Death Knight Trainer      |                  |
| Telemicus             | 26326    | Trainer    | Mage Trainer              |                  |
| Walks-In-Nature       | 26324    | Trainer    | Druid Trainer             |                  |
| Betsy                 | 101999   | Critters   | Prized Cow                | Yes              |
| Corline Croissant     | 101000   | Vendor     | Bread Vendor              |                  |
| Josie Fireforge       | 101001   | Vendor     | Blacksmith Supplies       |                  |
| Jenath                | 101002   | Town Folk  | Auctioneer                |                  |
| Ruby Rose             | 101003   | Vendor     | Flower Vendor             |                  |
| One Eyed Moody        | 101004   | Vendor     | Alchemy Supplies-Reagents |                  |
| Ranske Bigbrew        | 101005   | Vendor     | Bartender                 |                  |
| Grizzlebone           | 101006   | Vendor     | Food and Drink            |                  |
| Jack Thornbush        | 101007   | Vendor     | Herbalism and Poison Supplies |               |
| Willy Wonka           | 101008   | Vendor     | Sweet Treat Vendor        |                  |
| Skinderella           | 101011   | Vendor     | Leatherworking and Skinning Supplies |           |
| Chops With Smile      | 101013   | Vendor     | Meat Vendor               |                  |
| John Boatman          | 101015   | Town Folk  | Dock Master (Daily Fishing Quest) |             |
| Bonneta               | 101016   | Town Folk  | Stable Master             |                  |
| Jack Claybourne       | 101017   | Town Folk  | Stable Hand               |                  |
| Paul Bunyan           | 101018   | Vendor     | Woodworking Supplies      |                  |
| Cory                  | 101019   | Town Folk  | Lumberjack                |                  |
| Fisherman Dan         | 101020   | Vendor     | Fisherman                 |                  |
| Morza Island Citizen Group 1 | 101021   | Town Folk  | Town Folk          |                  |
| Morza Island Citizen Group 2 | 101022   | Town Folk  | Town Folk          |                  |
| Morza Battleguards    | 101023   | Town Folk  | Guards                    |                  |
| Morza Guards          | 101024   | Town Folk  | Guards                    | Yes              |
| Haris Pilton          | 101025   | Vendor     | Socialite                 |                  |
| Ricole Nichie         | 101026   | Town Folk  | Ex-Socialite              |                  |
| Farmer Fred           | 101027   | Town Folk  | Quest Giver               |                  |
| Chuck Steelrod        | 101028   | Vendor     | Mining Supplies           |                  |
| Layla Swanwater       | 101029   | Vendor     | Enchanting Supplies       |                  |
| Brizler               | 101030   | Vendor     | Engineering Supplies      |                  |
| Dibella               | 101031   | Vendor     | Inscription Supplies      |                  |
| Jared                 | 101032   | Vendor     | Jewelcrafting Supplies    |                  |
| Roger Crochet         | 101033   | Vendor     | Tailoring Supplies        |                  |
| Hordon Hamsey         | 101034   | Vendor     | Cooking Supplies          |                  |
| Andelita              | 101035   | Vendor     | First Aid Supplies        |                  |
| Glorgak               | 101036   | Town Folk  | Quest Giver               |                  |
| Roitau                | 101037   | Concert    | Roadie                    |                  |
| Concert Goer Group 1  | 101038   | Concert    | Crowd                     |                  |
| Concert Goer Group 2  | 101039   | Concert    | Crowd                     |                  |
| Rob                   | 101040   | Town Folk  | Lumberjack                |                  |
| Hannah                | 101043   | Critters   | Dog                       |                  |
| Sully                 | 101044   | Critters   | Dog                       |                  |
| Cooper                | 101045   | Critters   | Dog                       |                  |
| Gonzo                 | 101046   | Critters   | Dog                       |                  |
| Morgan le Fay         | 101047   | Trainer    | Portal Trainer            |                  |
| Cesar Milan           | 101048   | Trainer    | Pet Trainer               |                  |
| Marshaliek            | 101049   | Vendor     | Witch Doctor              |                  |
| Jack Sparrow          | 101050   | Vendor     | Pirate Supplies           |                  |
| Gouda Tahlk           | 101051   | Vendor     | Cheese Vendor             |                  |
| Jormund Steelfist     | 101052   | Vendor     | Superior Armorer          |                  |
| Toranak               | 101053   | Vendor     | Trade Supplies            |                  |
| Largonis              | 101054   | Trainer    | Medic                     |                  |
| King Geedle           | 101055   | Town Folk  | King of Morza Island (Quest Giver) |           |
| Queen Riley           | 101056   | Town Folk  | Queen of Morza Island     |                  |
| Imposter Guards       | 101057   | Enemies    | Mob                       |                  |
| Imposter Mages        | 101058   | Enemies    | Mob                       |                  |
| Nakkori               | 101059   | Trainer    | Priest Trainer            |                  |
| Malfunctioning Harvester | 101060 | Enemies    | Mob                       |                  |
| Waterfall Beast       | 101061   | Enemies    | Boss                      |                  |
| Drunk Gordy           | 101062   | Town Folk  | Quest Giver               |                  |
| Birdman               | 101064   | Trainer    | Grand Master Alchemist    |                  |
| Lewt Arshwong         | 101065   | Trainer    | Grand Master Enchanter    |                  |
| Zales                 | 101066   | Trainer    | Grand Master Jewelcrafting |                  |
| Ponoma Sprout         | 101067   | Trainer    | Grand Master Herbalist    |                  |
| Gilk Forgesmith       | 101068   | Trainer    | Grand Master Blacksmith   |                  |
| Brustak               | 101069   | Trainer    | Grand Master Leatherworker|                  |
| Bergristt             | 101070   | Concert    | Bassist                   |                  |
| Chief Thunder Skins   | 101071   | Concert    | Drummer                   |                  |
| MaiKyl                | 101072   | Concert    | Guitarist                 |                  |
| Sig Nicious           | 101073   | Concert    | Guitarist                 |                  |
| Samuro                | 101074   | Concert    | Singer                    |                  |
| Bouncers              | 101075   | Concert    | Bouncers                  |                  |
| Mizli                 | 101076   | Concert    | Roadie                    |                  |
| Ognip                 | 101077   | Concert    | Roadie                    |                  |
| Michael Schweitzer    | 101078   | Concert    | Band Manager              | Yes              |
| Too Close Shave       | 101079   | Town Folk  | Barber                    |                  |
| Slim                  | 101080   | Vendor     | Shady Goods               |                  |
| Joe Dirt              | 101081   | Town Folk  | Waste Management          |                  |
| Tinkerbell            | 101082   | Town Folk  | Dog                       |                  |
| Master Lock           | 101083   | Town Folk  | Locksmith                 |                  |
| Dirt Mike Rowe        | 101084   | Vendor     | Fisherman                 |                  |
| Alfred Copperworth    | 101086   | Vendor     | Butler                    |                  |
| Garrek Shadowblade    | 101087   | Trainer    | Weapon Trainer            |                  |
| Ehoetus               | 101088   | Trainer    | Armor Trainer             |                  |
| Gollum                | 101089   | Town Folk  | Quest Giver               |                  |
| Invader Kobold        | 101090   | Enemies    | Mob                       |                  |
| Invading Kobold Geomancer | 101091 | Enemies | Mob                      |                  |
| Kobold Baggins        | 101092   | Enemies    | Boss                      |                  |
| Commander Snarltooth Ironhide | 101093 | Enemies | Boss                    |                  |
| Commander Houston     | 101094   | Town Folk  | Quest Giver               |                  |
| Miner Gunner          | 101095   | Town Folk  | Quest Giver               |                  |
| Jay                   | 101096   | Town Folk  | Quest Giver               |                  |
| Silent BOB            | 101097   | Town Folk  | Concert Goer              |                  |
| Moraz Lasher          | 101098   | Enemies    | Mob                       |                  |
| William Cold          | 101099   | Town Folk  | Standup Comedian          | Yes              |
| Guardian of The Beer  | 1010100  | Enemies    | Boss                      |                  |
| Moby Murloc           | 101100   | Enemies    | Boss                      |                  |
| Captain Ben           | 101101   | Town Folk  | Quest Giver               |                  |
| Arch Druid Mike       | 101102   | Town Folk  | Quest Giver               |                  |
| Druids of The Clones  | 101103   | Town Folk  | Druids                    |                  |
| Moraz Demon Spirit    | 101104   | Enemies    | Mob                       |                  |
| Ahpuch                | 101105   | Enemies    | Boss                      |                  |
| Toki Wartooth         | 101108   | Concert    | Quest Giver               |                  |
| Skwisgaar Skwigelf    | 101109   | Concert    | Quest Giver               |                  |
| JP Morgan             | 30605    | Town Folk  | Banker                    |                  |
| Bob Belcher           | 19185    | Trainer    | Grand Master Cook         |                  |
| Imposter King         | 800800   | Enemies    | Boss                      |                  |
| Imposter Queen        | 800801   | Enemies    | Boss                      |                  |
| Imposter High Mage    | 800802   | Enemies    | Boss                      |                  |
| Brock Simmons         | 800795   | Gambling Hall | Rock Paper Scissors     | Yes              |
| Simone                | 800796   | Gambling Hall | Trivia Master            | Yes              |
| Loose Lip Jim         | 800797   | Gambling Hall | Gambler                  | Yes              |
| Snake-Eyez Malone     | 800799   | Gambling Hall | Deathroller *(Made by Sir. Wiggles)* | Yes      |




## Game Object Zone Information

| Name                          | ID     | Type        | Sub Type                                  |
|-------------------------------|--------|-------------|-------------------------------------------|
| Water Barrell                 | 3658   | Game Object | Resource                                  |
| Mailbox                       | 142095 | Game Object | Object                                    |
| Blindweed                     | 142143 | Game Object | Resource                                  |
| Sungrass                      | 142142 | Game Object | Resource                                  |
| Ghost Mushroom                | 142144 | Game Object | Resource                                  |
| Imperial Manta Ray School     | 192052 | Game Object | Fishing Hole                              |
| Deep Sea Monsterbelly School  | 192053 | Game Object | Fishing Hole                              |
| Moonglow Cuttlefish School    | 192054 | Game Object | Fishing Hole                              |
| Nettlefish School             | 192057 | Game Object | Fishing Hole                              |
| Fangtooth Herring School      | 192049 | Game Object | Fishing Hole                              |
| School of Northern Salmon     | 189290 | Game Object | Fishing Hole                              |
| Barbershop Chair              | 190683 | Game Object | Object                                    |
| Souvenir Stand                | 188179 | Game Object | Object                                    |
| Sweet Treat Vendor Stand      | 183355 | Game Object | Object                                    |
| Pirate Flag                   | 187083 | Game Object | Object                                    |
| Rich Cobalt Deposit           | 189979 | Game Object | Resource                                  |
| Slot Machines                 | 750001 | Game Object | Special *Requires Volek's Slot Machine code to work |
| Stormpike Banner              | 179024 | Game Object | Object                                    |
| Horde Banner                  | 192255 | Game Object | Object                                    |
| Frostwolf Banner              | 179025 | Game Object | Object                                    |
| Scourge Banner                | 176087 | Game Object | Object                                    |
| Krom'zar Banner               | 164690 | Game Object | Object                                    |
| Naga Flag                     | 181694 | Game Object | Object                                    |
| Grain Sack                    | 181757 | Game Object | Object                                    |
| Guild Vault                   | 187293 | Game Object | Object                                    |
| Supply Crate                  | 166872 | Game Object | Object                                    |
| Barn Straw                    | 202834 | Game Object | Object                                    |
| Alliance Banner               | 179481 | Game Object | Object                                    |
| Skooma Chest                  | 120000 | Game Object | Chest                                     |
| Gromsblood                    | 176637 | Game Object | Resource                                  |
| Golden Sansam                 | 176583 | Game Object | Resource                                  |
| Dreamfoil                     | 176584 | Game Object | Resource                                  |
| Temple Offering Bowl          | 1000100 | Game Object | ***Lua Script***                             |
| Song Requester                | 8675309 | Game Object | ***Lua Script***                             |

## Quest Zone Information
| Quest Name                         | Quest Number | Daily |
|------------------------------------|--------------|-------|
| Big White Murloc                   | 90015        |    |
| Manta Ray                    | 90021        | Yes   |
| Moonglow Cuttlefish          | 90022        | Yes   |
| Deep Sea Fishing             | 90020        | Yes   |
| Darn Mice                          | 90005        |    |
| Harvester on The Fritz             | 90007        |    |
| Heaven's To Betsy                  | 90024        |   |
| I swaer its real                   | 90008        |    |
| Invading Kobold                    | 90010        |    |
| Keep The Party Going               | 90025        |    |
| Keep The Party Going.....further   | 90026        |    |
| My Precious                        | 90009        |    |
| Skooma                             | 90012        |    |
| THIS IS MY MINE                    | 90011        |    |
| Those Imposters                    | 90006        |    |
| Turn Down For What                 | 90013        |    |

## Items Zone Information
| Name                           | ID                           |
|--------------------------------|------------------------------|
| Commander Snarltooth Ironhide Head | 300300                       |
| Old Toby's Leaf                 | 300302                       |
| Skooma                         | 300301                       |
