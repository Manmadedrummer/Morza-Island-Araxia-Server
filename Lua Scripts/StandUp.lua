-- Stand up Comedian NPC by Manmadedrummer for AzerothCore

local NPC_ID = 101099
local COST = 250000 -- 25 gold in copper

local jokes = {
    "Ever notice how rogues are like shadows? You never see them coming, but you sure feel it when they backstab you... in PvP and in arguments!",
    "Warlocks, huh? They're like that friend who always brings drama to the party. You know, the one who shows up with a demon on a leash and insists it's just misunderstood!",
    "Tauren druids, they're the hippies of Azeroth. Always talking about nature and balance. I swear, if one more druid offers me a 'herbal infusion,' I'm going back to Orgrimmar!",
    "Paladins, bless their holy hearts. They're like the traffic cops of the raid group, yelling 'stop' to the boss while we all just try not to pull aggro and get a ticket to the graveyard!",
    "Goblin engineers, they're like the MacGyvers of Warcraft. Need a bomb? They got it. Need a rocket? They got it. Need a parachute after jumping off Dalaran? Well, they probably got it, but it might be defective!",
    "Troll hunters, they're like the hunters in real life, but with more style and a pet raptor. And let me tell you, trying to out-dps a hunter in a dungeon is like trying to outrun a cheetah... uphill... while wearing plate armor!",
    "Gnome mages, they're the tricksters of the Arcane. Always pulling rabbits out of hats... and then sheeping them because, hey, why not? But watch out, mess with them, and suddenly you're a penguin for the next minute!",
    "Orc warriors, they're the tanks we all need but secretly fear. You ever watch an orc charge into battle? It's like watching a wrecking ball with an anger management issue!",
    "Undead priests, they're like the therapists of Azeroth. Healing our wounds one flash of light at a time, and then reminding us that death is just a temporary setback. Thanks, Doc, but I'll stick to bandages!",
    "Night elf druids, they're the tree-huggers with a mean streak. You ever see one shift into bear form? Suddenly, that cute forest creature is mauling your face off, and all you can think is, 'Maybe I should have hugged a tree too!'",
    "Why do rogues make terrible bartenders? Because they're always stealing tips and disappearing when it's time to clean up!",
    "Warlocks are like exes. They summon demons, mess with your head, and just when you think they're gone for good, they show up with a curse that lasts longer than a student loan payment plan.",
    "Ever notice how tauren druids are always so laid-back? It's like they're permanently high on 'herbal refreshments' from Moonglade!",
    "Paladins are like the knights in shining armor of Warcraft. Except their armor isn't just shiny, it's so blindingly bright, you wonder if they're compensating for something... like their DPS.",
    "Goblin engineers are like that one friend who's always mixing drinks at the party. Sure, they'll give you a rocket-powered shot, but you might end up in the ER with a hangover that feels like a siege of Orgrimmar!",
    "Troll hunters, they're like the cool kids with pets that can actually kill you. You ever try to flirt with a troll hunter? Good luck, because their pet devours your hopes and dreams faster than you can say 'Serpent Sting!'",
    "Gnome mages are like the wizards who never grew up. They're still playing with fireballs and teleporting to weird places. Just don't ask where they keep their wands... trust me, you don't want to know.",
    "Orc warriors are like the gym bros of Azeroth. They live for the gains, whether it's loot or muscles. Just don't challenge one to an arm-wrestling match unless you want to end up in a plaster cast.",
    "Undead priests are like the goths of the Warcraft universe. Always dressed in black, healing your wounds with dark magic, and whispering existential dread into your ear between buffs.",
    "Night elf druids, they're the environmentalists who can also kick your ass. You ever see one shape-shift into a bear? Suddenly, saving the rainforest means ripping your face off with claws the size of swords!",
    "Why did the Forsaken join the cooking profession? Because they heard everyone loves a dish that's well 'seasoned'... with embalming fluid.",
    "How did the goblin make a fortune? By selling 'get rich quick' schemes that were as reliable as a mage's portal to Theramore.",
    "Why did the blood elf become a tailor? Because they knew how to stitch together a fabulous outfit... and maybe hide a few souls in the seams.",
    "Why did the dwarf warrior fail as a motivational speaker? Because 'You can do it!' just doesn't sound as inspiring when it's followed by 'after I finish this ale.'",
    "Why did the night elf start a candle-making business? Because they wanted to shed some light on the fact that Elune's blessings don't come cheap... or in a scented version.",
    "How did the tauren druid become a famous artist? By painting landscapes that captured the beauty of Mulgore... and the occasional wandering adventurer.",
    "Why did the orc warlock start a daycare center? Because they believed in nurturing young minds... and occasionally summoning a voidwalker to keep the kids in line.",
    "Why did the gnome engineer win the lottery? Because they built a mechanical fortune teller that predicted the winning numbers... and promptly exploded.",
    "Why did the troll shaman open a sauna? Because they knew how to 'steam' the competition and channel the power of the elements into a relaxing experience... with occasional lightning strikes.",
    "Why did the human paladin open a law firm? Because they believed in justice, righteousness, and charging exorbitant fees for using Divine Shield in court."
}

local jokesTold = 0

local function NPC_YellJoke(event, delay, pCall, creature)
    local randomIndex = math.random(1, #jokes)
    local joke = jokes[randomIndex]
    
    creature:SendUnitYell(joke, 0)
    creature:PerformEmote(1)
    
    jokesTold = jokesTold + 1
    
    if jokesTold >= 10 then
        creature:PerformEmote(66) -- Bow emote
        jokesTold = 0
    else
        creature:RegisterEvent(NPC_YellJoke, 20000, 1)
    end
end

local function StartRoutine(event, player, creature)
    if player:GetMoney() >= COST then
        player:ModifyMoney(-COST)
        creature:SendUnitYell("Alright, get ready for some jokes!", 0)
        creature:RegisterEvent(NPC_YellJoke, 1000, 1) -- Start immediately
    else
        creature:SendUnitYell("You don't have enough gold!", 0)
    end
end

local function GossipHello(event, player, creature)
    player:GossipMenuAddItem(0, "Hear the routine (25 gold)", 1, 1)
    player:GossipMenuAddItem(0, "Nevermind", 1, 2)
    player:GossipSendMenu(1, creature)
end

local function GossipSelect(event, player, creature, sender, intid, code)
    if intid == 1 then
        StartRoutine(event, player, creature)
    end
    player:GossipComplete()
end

RegisterCreatureGossipEvent(NPC_ID, 1, GossipHello)
RegisterCreatureGossipEvent(NPC_ID, 2, GossipSelect)
RegisterCreatureEvent(NPC_ID, 5, StartRoutine)
