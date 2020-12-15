unit pokemon;

interface

uses crt;
procedure affiche_pokemon(pokemon:string);


implementation

procedure affiche_pokemon(pokemon:string);

BEGIN

		case (pokemon) of

			'Salameche' :
							begin
								writeln('                     _.--""`-.                                                 ');
								writeln('                   ,           `.                                              ');
								writeln('                 ,           __   .                                            ');
								writeln('                /|          " __   \                                           ');
								writeln('               , |           / |.   .                                          ');
								writeln('               |,           !_. |   |                                          ');
								writeln('             ,                  |   |                                          ');
								writeln('            /              |`-- |   |                                          ');
								writeln('           |                `---    |                                          ');
								writeln('            .   ,                   |                       ,".                ');
								writeln('             ._                 _   |                    ,   \ `               ');
								writeln('         `.. `.`-...___,...---""    |       __,.        ,`"   L,|              ');
								writeln('         |, `- .`._        _,-,.    .  __.- -. /        .   ,    \             ');
								writeln('       -:..     `. `-..--_.,.<       `"      / `.        `-/ |   .             ');
								writeln('         `,         """"      `.              ,          |   |   ,,            ');
								writeln('           `.                                /               | . |/            ');
								writeln('             `.   |              \       _,-            |                      ');
								writeln('               `._                \    "\                .      |              ');
								writeln('                  |                      \                `._  ,               ');
								writeln('                  |                       \                 . |                ');
								writeln('                  |                 .      \                | |                ');
								writeln('                  |                 |       L              ,  |                ');
								writeln('                  `                 |       |             /                    ');
								writeln('                   \                |       |           ,    /                 ');
								writeln('                 ,  \               |  _.._ ,-..___,..-     ,                  ');
								writeln('                /     .             .      `!             ,j                   ');
								writeln('               /       `.          /        .           . /                    ');
								writeln('              .          `.       /         |        _. .                      ');
								writeln('               `.          7` ---           |------" _.                        ');
								writeln('              _,.`,_     _                 ,  -----"                           ');
								writeln('          _,-_            `.     .       ,\                                    ');
								writeln('          -" /`.         _,      | _  _  _.|                                   ');
								writeln('           ""-- ---"""""         `   ! |! /                                    ');
								writeln('                                   `" "                                        ');
							end;

			'Carapuce'	:
							begin
								writeln('                 _,........__                                                  ');
								writeln('              ,-             "`-.                                              ');
								writeln('            ,                    `-.                                           ');
								writeln('          ,                         \                                          ');
								writeln('        ,                            .                                         ');
								writeln('        . \               ,"".       `                                         ');
								writeln('       ._. |             / |  `       \                                        ');
								writeln('       |   |            `-.   ||       `.                                      ');
								writeln('       |   |             -._, ||       | \                                     ');
								writeln('       .`.,              `.., .        , |`-.                                  ');
								writeln('       l                       . `.  _/  |   `.                                ');
								writeln('       `-.._ -   ,          _ _    -" \  .     `                               ');
								writeln('  `.""""" -.`-...,--------- ,          `. `....__.                             ');
								writeln('  .         `"-..___      __, \          \  \     \                            ');
								writeln('  \_ .          |   `""""     `.           . \     \                           ');
								writeln('    `.          |              `.          |  .     L                          ');
								writeln('      `.        |`--...________. .        j   |     |                          ');
								writeln('        `._    .       |          `.     .|   ,     |                          ');
								writeln('           `--,\       .            `7""  |  ,      |                          ');
								writeln('              ` `      `            /     |  |      |    _,- """`-.            ');
								writeln('               \ `.     .          /      |         |  ,           `.          ');
								writeln('                \  v.__  .                .   \    /| /              \         ');
								writeln('                 \/    `""\"""""""`.       \   \  /.                  |        ');
								writeln('                  `        .        `._ ___,j.  `/ .-       ,---.     |        ');
								writeln('                  ,`-.      \         ."     `.  |/        j     `    |        ');
								writeln('                 /    `.     \       /         \ /         |     /    j        ');
								writeln('                |       `-.   7-.._ .          |"                    /         ');
								writeln('                |          `./_    `|          |            .     _,           ');
								writeln('                `.           / `----|          |-............`---              ');
								writeln('                  \          \      |          |                               ');
								writeln('                 ,            )     `.         |                               ');
								writeln('                  7____,,..--       /          |                               ');
								writeln('                                    `---.__,--.                                ');
							end;

			'Bulbizarre':
							begin
								writeln('                                               /                               ');
								writeln('                            _,.------....___,.   ,.-.                          ');
								writeln('                         ,-           _,.--"        |                          ');
								writeln('                       ,          _.-               .                          ');
								writeln('                      /   ,     ,                    `                         ');
								writeln('                     .   /     /                     ``.                       ');
								writeln('                     |  |     .                       \.\                      ');
								writeln('           ____      |___._.  |       __               \ `.                    ');
								writeln('         .     `---""       ``"-.--" `  \               .  \                   ');
								writeln('        .  ,            __               `              |   .                  ');
								writeln('        `,          ,-"   .               \             |    L                 ');
								writeln('       ,                _.                 -._          /    |                 ');
								writeln('      ,`-.    ,".   `--                       >.      ,      |                 ');
								writeln('     . . \    `-        __    ,  ,-.         /  `.__.-      ,                  ');
								writeln('     ||:, .           ,      /  / \ `        `.    .      . /                  ');
								writeln('     j|:D  \          `--     , _  . .         `.__, \   , /                   ');
								writeln('    / L:_  |                 .  "  :_                 `. .                     ');
								writeln('    .    ""                   """""                     V                      ');
								writeln('     `.                                 .    `.   _,..  `                      ');
								writeln('       `,_   .    .                _,- /    .. `,    __  `                     ');
								writeln('        ) \`._        ___....----"   ,    .   \ |      \  .                    ');
								writeln('       /   `. "`-.--"          _,  ,      `---  |    `./  |                    ');
								writeln('      .   _  `"" --.._____..--"   ,                       |                    ');
								writeln('      | ." `. `-.                /-.           /          ,                    ');
								writeln('      | `._.     `,_               /         ,           .                     ');
								writeln('     .           /| `-.        . ,          ,           ,                      ');
								writeln('      -.__ __ _, ,      `-..___ -...__   ,. \ ____.___.                        ');
								writeln('     `"^-- ..     -`-^- "--    `-^- `.  """""`.,^.`.--                         ');
							end;

			'Roucool'	:
							begin
								writeln('                      .,                                                       ');
								writeln('               , _.- ,                                                         ');
								writeln('             ""|"    `"""".,                                                   ');
								writeln('            / /       __.- -"/                                                 ');
								writeln('            ,   _,--""       -._                                               ');
								writeln('       _...`... ."""""".\""-----                                               ');
								writeln('    ,-           `-.) /  `.  \                                                 ');
								writeln('   +---."-.    |     `.    .  \                                                ');
								writeln('        \  `.  |       \   |   L                                               ');
								writeln('         `v  ,-j        , .    |                                               ');
								writeln('        . \,  /        /,       -._                                            ');
								writeln('       ,____.         .            `-.                                         ');
								writeln('           |         /                `-.                                      ');
								writeln('          /          `.                  `-.                                   ');
								writeln('         /             `. |                 `.                  _.             ');
								writeln('        .                `|                 ,-.             _.-" .             ');
								writeln('       j                  |                 |  \         _.     /              ');
								writeln('       .                  |               .     \     ,-       /               ');
								writeln('       |                  |            ,-.\      \  ,       _.-                ');
								writeln('       |                .    `.       |   `      `v   _,.-"/                   ');
								writeln('       ||    \          |  ` |(` -`.,.j         \ `.- ----+---.                ');
								writeln('       | |   |L    \  | |   `|   \               L \___      /                 ');
								writeln('         L   |`     L | |     `.                 | j   `"""-                   ');
								writeln('          `- ||\    | ||j       `.       ._    `  .                            ');
								writeln('             `\  "`^"-            `.       \    |/|                            ');
								writeln('               `._                  `-.     \   Y |                            ');
								writeln('       __,..-""`..`._                  `-._  `\ `.|                            ');
								writeln('      +.....>+----.  ""----.........,--""" `--. .                              ');
								writeln('          ,  _\  ,..--.-"  __>---   |                                          ');
								writeln('         --""  "   _." }<""          `---""`._                                 ');
								writeln('                  /..."  L__.+--   _,...... ..                                 ');
								writeln('                    /.-"" /   \ ,-                                             ');
								writeln('                        .  ,-""                                                ');
								writeln('                       /.-                                                     ');
							end;

			'Ratata'	:
							begin
								writeln('                                       , ""`--.                                ');
								writeln('                                      |     __ `-.                             ');
								writeln('                                      |    /  `.  `.                           ');
								writeln('                                       \        ,   `.                         ');
								writeln('                                        `.      \_    `.                       ');
								writeln('                                          `.    | `.    \                      ');
								writeln('                                            `--"    `.   `                     ');
								writeln('                                                      `.  `                    ');
								writeln('                  ,.._                                  \  `                   ');
								writeln('                /_,.  `.                                 \  `                  ');
								writeln('               j/   .   \                  ___            \  \                 ');
								writeln('               |    |   `____         _,--    `.           .  L                ');
								writeln('                L  /`--"     ` --._ ,    ,-` \ |            . |                ');
								writeln('                 |-                 /  ,      ||            | |                ');
								writeln('      -v._      /                   ,         ||            | |                ');
								writeln('        `.`-._,                _     \        |j    _,...   | |                ');
								writeln('          `,.              _,-. \     |      /,---""     `- | |                ');
								writeln('         .               ,".   ||     `..___/,             `  |                ');
								writeln('         |   ,         _/`-   /,                             `|                ');
								writeln('         |-.__.- "  ""  """"""""--`_,...-----    --...--      `.               ');
								writeln('          `.____,..              ""   __,..---"""              |               ');
								writeln('           |       `              --" .                        `               ');
								writeln('           |     ,  `._                \                        `              ');
								writeln('           | |  .^.    `.             /                          `.            ');
								writeln('          , _]__|  \   / `.          /          /____._            `._         ');
								writeln('        ,           \ j             /          /       `.             `.       ');
								writeln('  ___,.  `._       __L/    |     __           /     _, / \             |       ');
								writeln('  -._       L,.-"""  .    ,  _.- ,           /----- -./   `--.         |       ');
								writeln('        / ,           .. "_,     /         F /  ." _,         |.__     |       ');
								writeln('   / ,.\,               ""      /         / (, \ .         ,.-"   `.  j        ');
								writeln('   -                           /        ,      `"         / __/  .- ,          ');
								writeln('                            __. "`.    /                 `-  | _,L,            ');
								writeln('                          . ,      `""                        /,--             ');
								writeln('                           / _..  _,,                                          ');
								writeln('                           ,  `-"                                              ');
							end;

			'Pikachu'	:
							begin
								writeln('                                               ,-.                             ');
								writeln('                                            _.|  /                             ');
								writeln('                                          .   | /                              ');
								writeln('                                        ,     |/                               ');
								writeln('                                       /      /                                ');
								writeln('                         _..----""---.       /                                 ');
								writeln('   _.....---------...,-""                  ,                                   ');
								writeln('   `-._  \                                /                                    ');
								writeln('       `-.+_            __           ,--. .                                    ');
								writeln('            `-.._     .:  ).        (`--"| \                                   ');
								writeln('                 7    | `" |         `...   \                                  ');
								writeln('                 |     `--       +"        ,". ,""-                            ');
								writeln('                 |   _...        .____     | |/    \                           ');
								writeln('            _.   |  .    `.   --"   /      `./     j                           ');
								writeln('           \  `-.|        |   `.   /        /     /                            ');
								writeln('                 `-. `---"      `-"        /     /                             ');
								writeln('            \       `.                  _,      /                              ');
								writeln('             \        `                        .                               ');
								writeln('              \                                j                               ');
								writeln('               \                              /                                ');
								writeln('                `.                           .                                 ');
								writeln('                  +                          \                                 ');
								writeln('                  |                           L                                ');
								writeln('                  |                           |                                ');
								writeln('                  |  _ /,                     |                                ');
								writeln('                  | | L) ..                   |                                ');
								writeln('                  | .    | `                  |                                ');
								writeln('                     \    L                                                    ');
								writeln('                   \  \   |                  j                                 ');
								writeln('                    `. `__                  /                                  ');
								writeln('                  _,.--.---........__      /                                   ');
								writeln('                 ---., ---`         |   -j"                                    ');
								writeln('                  .-    ....__      L    |                                     ');
								writeln('                ""--..    _,-        \ l||                                     ');
								writeln('                    ,-   .....------. `||                                      ');
								writeln('                 _,                 /                                          ');
								writeln('               ,                   /                                           ');
								writeln('               ---------+-        /                                            ');
								writeln('                       /         /                                             ');
								writeln('                     .          /                                              ');
								writeln('                   .           /                                               ');
								writeln('                 ,            /                                                ');
								writeln('               _/....----"""""                                                 ');
							end;

			'Machoc'	:
							begin
								writeln('                             ,."--.                                             ');
								writeln('                        _.../     _\""-.                                        ');
								writeln('                      //  ,     ,"      :                                       ');
								writeln('                     .   /   .:       __|                                       ');
								writeln('                     || ||  /,    _."    .                                      ');
								writeln('                     || ||  ||  ,         `.                                    ');
								writeln('                    /|| ||  ||,             .                                   ');
								writeln('                   /.`| /` /`,   __                                             ');
								writeln('                  j /. " `"    ,  /`.        |                                  ');
								writeln('                  ||.|        .  | . .      _|,--._                             ');
								writeln('                  ||#|        |  | # |   ,-"       `-.                          ');
								writeln('                 / .||        |  \." |  /             `                         ');
								writeln('                /             `.----"   |`.|           |                        ');
								writeln('                \  `.    ,              `  \           |                        ');
								writeln('                 `._____           _,-   `._,..        |                        ');
								writeln('                   `".  ` -..__..-    _,.-- .  .       |                        ');
								writeln('                    ,-^-._      _,..-        `.|       |                        ');
								writeln('                _,-      | "" ""              `|  `\    \                       ');
								writeln('            _.-          |            `.,--    |    \    \                      ');
								writeln('       _,."" "" -._             `.     .      j           \                     ');
								writeln('      /            `.___/.-"    ._`-._  \.    |      |     L                    ');
								writeln('     /  ____           /,.-     . `._  ""|`.  `      |     |                    ');
								writeln('      `.    `"-.      / _,-"     `._ `" ".  `. \                                ');
								writeln('        \       `-   ."             "`--- \   ` `-._/     /                     ');
								writeln('         `-------.   |                     \   `-._      /                      ');
								writeln('                  \ j                      .       `...,                        ');
								writeln('                   `|                       \                                   ');
								writeln('                                             \                                  ');
								writeln('                     .                      / \                                 ');
								writeln('                     |`.                   /   `._                              ');
								writeln('                     |    `.._____        /|      `-._                          ');
								writeln('                     |        |   Y.       |.         `.                        ');
								writeln('                     |       j     \        .`"--....-                          ');
								writeln('                  _,-        |      |        \                                  ');
								writeln('               .-            |     ,          `.                                ');
								writeln('                             |     |            `.                              ');
								writeln('              `.        __,..       .             \                             ');
								writeln('                `-.---"              `-..__      _/                             ');
								writeln('                                           ` """                                ');
							end;

			'Racaillou':
							begin
								writeln('                                               _,.---.                          ');
								writeln('                                           _,-        `.                        ');
								writeln('                                        _,   ,          \                       ');
								writeln('                                      ,   _,    .        `.                     ');
								writeln('                                     /  ,      ,           `.                   ');
								writeln('            __                       .,     _,               `.                 ');
								writeln('       _,..   `-....___              :    ,                    \                ');
								writeln('     ,    /            :             /`.,       /               `               ');
								writeln('    /    /  ._         |         __..|  `.    .        ,         `.             ');
								writeln('    |   |   , "--._    |      ,-     `-._`.,-        ,:            .            ');
								writeln('   . \   \     _, .    ` ___.            `"`.     _,  /            |            ');
								writeln('   |  \   \---        ,"   .-"" "----.       `.     ,              |            ');
								writeln('    `. `-.           /    /                    `-..^._             |            ');
								writeln('      |._|    _.    /    /                            `._           .           ');
								writeln('      `...:-- --+..    ,                               /            |           ');
								writeln('           ._  `|   ,-        _..._                   j     \       |           ');
								writeln('            |` |   /       ,-      `-.__              |      L      |           ');
								writeln('            |  |  /      ,                            |      |      |           ');
								writeln('            |_,         /         _,-                  .     |      |           ');
								writeln('           ,   ,   |  ,         ,|            ,..._     \    |      |           ');
								writeln('          ,     \ j          _." |           /     `-.__          ,             ');
								writeln('           +._    |       , |    |          /        ,     .     /              ');
								writeln('           |  `._  `-  .:|  |     .       -                     j               ');
								writeln('                |`      |   |     |                             |               ');
								writeln('            `.  |       |--      _|        .                    |               ');
								writeln('              \ |        ---- """           \      __,....-+----                ');
								writeln('              |                              `---""      .                      ');
								writeln('              `. `.                                     ,                       ');
								writeln('                `" \_...-""" --..         _+          ,                         ');
								writeln('                                  -.   `-   `.  ."-..                           ');
								writeln('                      `-..._            _____,.                                 ');
								writeln('                            `--.....,-"                                         ');
							end;

			'Magicarpe':
							begin
								writeln('                                    __.--.._,- ""-.                             ');
								writeln('                                 ,-  .  ,   .-"  -.`.       .--.                ');
								writeln('                               ,     |  |   `-.    \ \       `-.|               ');
								writeln('                              /       .   /    `.   \ \        ||               ');
								writeln('                             /         `..`.    `.   \ .       ||               ');
								writeln('                            /        . .    `.    \   . .       .               ');
								writeln('                   ."-.    .  ,"" -. | |      \    \   `.`.__, .                ');
								writeln('                    `. `. .   |     `. |       \    .    `-..-                  ');
								writeln('          _______     .  `|   |       .         .   |...--._                    ');
								writeln('          `.     `"--.         .      | .        .  |""  "-._"-._               ');
								writeln('            `.             \    `-._.. . .       |  |---.._  `-.__"-..          ');
								writeln('       -.     `.           |\           `.`      |  | `-.  `-._   +"-           ');
								writeln('       `.`.     `-.        | `            .`.       | `. `.    `,"              ');
								writeln('         `.`.      `.      |   .           ` `      `.  \  `   /                ');
								writeln('         | `.`.    __`.    |`/  `.     ...  `.`.     |   `.   .                 ');
								writeln('         |   \ .  `._      | `. / `. . .  |   \ \    |     \  |                 ');
								writeln('         |.   ` \    `-.   |   \   . . /  |    \ \   |      ._                  ');
								writeln('         | `.  `.\      `. |    \ / ,  .  |_    . \   -.                        ');
								writeln('        ,     .  .\       `|     .   / |  | `-...\ \    `._                     ');
								writeln('        `.     `.  \       |.     / .  |  |         .      `-.                  ');
								writeln('         .`._    \` \      | `. /      |  |       | |       ,.                  ');
								writeln('          .  `-.  \`.\    ,|   //      |  |__  .  | |      |                    ');
								writeln('          |     `._`| `--  `  //  .    |     `"  /| |   . -                     ');
								writeln('                   `|       `//        |   .    / | |   |                       ');
								writeln('         /....._____|       //   .  ___|   |   /  | |  ,|                       ');
								writeln('        .         _.       /, _.--" -._ `".| ,    | |.                          ');
								writeln('        |      _,  / ___   `- .        `. _|      |,                            ');
								writeln('        |  _,-"  , .    `-.._  `.      _,          `                            ');
								writeln('         -"   _, ,           "- ....--                                          ');
								writeln('       /  _.-"_.                                                                ');
								writeln('      /_, _,-                                                                   ');
								writeln('    . _.-                                                                       ');
								writeln('     "                                                                          ');
							end;

			'Pascal'	:
							begin
								writeln('               ________________________________________________                 ');
								writeln('              /                                                \                ');
								writeln('             |    _________________________________________     |               ');
								writeln('             |   |                                         |    |               ');
								writeln('             |   |  C:\> _                                 |    |               ');
								writeln('             |   |                                         |    |               ');
								writeln('             |   |                                         |    |               ');
								writeln('             |   |                                         |    |               ');
								writeln('             |   |                                         |    |               ');
								writeln('             |   |                                         |    |               ');
								writeln('             |   |                                         |    |               ');
								writeln('             |   |                                         |    |               ');
								writeln('             |   |                                         |    |               ');
								writeln('             |   |                                         |    |               ');
								writeln('             |   |                                         |    |               ');
								writeln('             |   |                                         |    |               ');
								writeln('             |   |_________________________________________|    |               ');
								writeln('             |                                                  |               ');
								writeln('              \_________________________________________________/               ');
								writeln('                     \___________________________________/                      ');
								writeln('                  ___________________________________________                   ');
								writeln('               _-     .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.  --- `-_                ');
								writeln('            _- .-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.--.  .-.-.`-_             ');
								writeln('         _- .-.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-`__`. .-.-.-.`-_          ');
								writeln('      _- .-.-.-.-. .-----.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-----. .-.-.-.-.`-_       ');
								writeln('   _- .-.-.-.-.-. .---.-. .-------------------------. .-.---. .---.-.-.-.`-_    ');
								writeln('  :-------------------------------------------------------------------------:   ');
								writeln('  `---._.-------------------------------------------------------------._.---    ');
							end;
		end;

        gotoxy(30,20);write('PV-20');
END;


end.

