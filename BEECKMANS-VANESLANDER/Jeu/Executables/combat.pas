program combat;

uses crt, pokemon, MMsystem;

VAR pv_allie, pv_allie_max, xp_allie, xp_allie_max, lvl_allie, atq_allie, pv_allie2, pv_allie2_max, xp_allie2, xp_allie2_max, lvl_allie2, atq_allie2, pv_allie3, pv_allie3_max, xp_allie3, xp_allie3_max, lvl_allie3, atq_allie3 :integer;
    pv_ennemi, pv_ennemi_max, xp_ennemi, xp_ennemi_max, lvl_ennemi, atq_ennemi, touche, touche_objet,  nbr_potion, nbr_pokeball, chance_fuite, chance_capture, attaque_ennemi, argent : integer;
	nom_ennemi, nom_allie, nom_allie2, nom_allie3, type_allie, type_allie2, type_allie3, type_ennemi, nom_joueur : string;
	fuite, dresseur, valide: boolean;


//procedure de l ecran de demarrage
procedure affi_start;

BEGIN

		clrscr;
		textcolor(yellow);
        writeln('                                                                         ');
        writeln('                                 .;:**                                   ');
        writeln('                                  `                                      ');
        writeln('      .:XHHHHk.              db.   .;;.     dH  MX                       ');
        writeln('    oMMMMMMMMMMM       ~MM  dMMP :MMMMMR   MMM  MR      ~MRMN            ');
        writeln('    QMMMMMb  "MMX       MMMMMMP !MX  :M~   MMM MMM  .oo. XMMM  MMM       ');
        writeln('      `MMMM.  )M> :X!Hk. MMMM   XMM.o"  .  MMMMMMM X?XMMM MMM>!MMP       ');
        writeln('        MMMb.dM! XM M ?M MMMMMX.`MMMMMMMM~ MM MMM XM `" MX MMXXMM        ');
        writeln('        ~MMMMM~ XMM. .XM XM`"MMMb.~*?**~ .MMX M t MMbooMM XMMMMMP        ');
        writeln('         ?MMM>  YMMMMMM! MM   `?MMRb.    `"""   !L"MMMMM XM IMMM         ');
        writeln('          MMMX   "MMMM"  MM       ~%:           !Mh.""" dMI IMMP         ');
        writeln('           MMM.                                             IMX          ');
        writeln('           ~M!M                                             IMP          ');
        writeln('                                                                         ');
        writeln('                                                                         ');
        writeln('                                                                         ');
        writeln('                                                                         ');
          	repeat
          	begin
          		Textcolor(Red);
    			GoToXY(32, 24);
   			 	Write('PRESS ENTER');
   			 	Delay(500);
    			TextColor(Black);
   			 	GoToXY(32, 24);
   			 	Write('PRESS ENTER');
   			 	Delay(500);
   			 	TextColor(Yellow);
   			end;
  			until KeyPressed;
  			readln;
  			TextColor(White);

END;








//procedures determinat l affichages des phases d histoire


procedure affiche_intro;
//BUT afficher l'illustration de l'intro
//ENTREE rien
//SORTIE l illustration de l intro

BEGIN
	writeln('     o     ');
	writeln('    /|\    ');
	writeln('    / \    ');
END;


procedure affiche_histoire1_1;
//BUT afficher l'illustration de l'histoire 1
//ENTREE rien
//SORTIE l illustration de la première phase d' histoire
BEGIN
	writeln('               ,@@@@@@@,                   ');
	writeln('       ,,,.   ,@@@@@@/@@,  .oo8888o.       ');
	writeln('    ,&%%&%&&%,@@@@@/@@@@@@,8888\88/8o      ');
	writeln('   ,%&\%&&%&&%,@@@\@@@/@@@88\88888/88      ');
	writeln('   %&&%&%&/%&&%@@\@@/ /@@@88888\88888      ');
	writeln('   %&&%/ %&%%&&@@\ V /@@  `88\8 `/88       ');
	writeln('   `&%\ ` /%&     |.|        \  |8         ');
	writeln('       |o|        | |         | |          ');
	writeln('       |.|        | |         | |          ');
	writeln('   \\/ ._\//_/__/  ,\_//__\\/.  \_//__/_   ');
END;


procedure affiche_histoire1_2;
//BUT afficher l'illustration de l'histoire 1
//ENTREE rien
//SORTIE l illustration de la première phase d' histoire
BEGIN
	writeln('               ,@@@@@@@,                         ');
	writeln('       ,,,.   ,@@@@@@/@@,  .oo8888o.             ');
	writeln('    ,&%%&%&&%,@@@@@/@@@@@@,8888\88/8o            ');
	writeln('   ,%&\%&&%&&%,@@@\@@@/@@@88\88888/88            ');
	writeln('   %&&%&%&/%&&%@@\@@/ /@@@88888\88888            ');
	writeln('   %&&%/ %&%%&&@@\ V /@@  `88\8 `/88          \\ ');
	writeln('   `&%\ ` /%&     |.|        \  |8            (o>');
	writeln('       |o|        | |         | |          \\_//)');
	writeln('       |.|        | |         | |           \_/_)');
	writeln('   \\/ ._\//_/__/  ,\_//__\\/.  \_//__/_     _|_ ');
END;

procedure affiche_histoire2_1;
//BUT afficher l'illustration de l'histoire 2
//ENTREE rien
//SORTIE l illustration de la seconde phase d' histoire
BEGIN
	writeln('	         ` ::.                ');
	writeln('    _________H ,%%&%,            ');
	writeln('   /\     _   \%&&%%&%           ');
	writeln('  /  \___/^\___\%&%%&&           ');
	writeln('  |  | []   [] |%\Y&%            ');
	writeln('  |  |   .-.   | ||              ');
	writeln('~~@._|@@_|||_@@|~||~~~~~~~~~~~~~ ');
	writeln('     `""") )"""`                 ');
END;

procedure affiche_histoire2_2;
//BUT afficher l'illustration de l'histoire 2
//ENTREE rien
//SORTIE l illustration de la seconde phase d' histoire
BEGIN
	writeln('	        .------.     ');
	writeln('          /         \   ');
	writeln('         .  /_\      `. ');
	writeln('  _______|____________| ');
END;

procedure affiche_histoire2_3;
//BUT afficher l'illustration de l'histoire 2
//ENTREE rien
//SORTIE l illustration de la seconde phase d' histoire
BEGIN
	writeln('`;-.          ___,          ');
	writeln('  `.`\_...._/`.-"`          ');
	writeln('    \        /      ,       ');
	writeln('    /()   () \    .  `-._   ');
	writeln('   |)  .    ()\  /   _.     ');
	writeln('   \  - -     ,;  . <       ');
	writeln('    ;.__     ,;|   > \      ');
	writeln('   / ,    / ,  |.- .-       ');
	writeln('  (_/    (_/ ,;|.<`         ');
	writeln('    \    ,     ;-`          ');
	writeln('     >   \    /             ');
	writeln('    (_,- `> .               ');
	writeln('         (_,                ');
END;

procedure affiche_histoire3;
//BUT afficher l'illustration de l'histoire 3
//ENTREE rien
//SORTIE l illustration de la troisieme phase d' histoire
BEGIN
	writeln('          /\                                                                ');
	writeln('         /**\                                                               ');
	writeln('        /****\   /\                                                         ');
	writeln('       /      \ /**\                                                        ');
	writeln('      /  /\    /    \        /\    /\  /\      /\            /\/\/\  /\     ');
	writeln('     /  /  \  /      \      /  \/\/  \/  \  /\/  \/\  /\  /\/ / /  \/  \    ');
	writeln('    /  /    \/ /\     \    /    \ \  /    \/ /   /  \/  \/  \  /    \   \   ');
	writeln('   /  /      \/  \/\   \  /      \    /   /    \                            ');
	writeln('__/__/_______/___/__\___\__________________________________________________ ');
END;

procedure affiche_histoire4;
//BUT afficher l'illustration de l'histoire 4
//ENTREE rien
//SORTIE l illustration de la quatrieme phase d' histoire
BEGIN
	writeln('                                   /\                                ');
	writeln('                              /\  //\\                               ');
	writeln('                       /\    //\\///\\\        /\                    ');
	writeln('                      //\\  ///\////\\\\  /\  //\\                   ');
	writeln('         /\          /  ^ \/^ ^/^  ^  ^ \/^ \/  ^ \                  ');
	writeln('        / ^\    /\  / ^   /  ^/ ^ ^ ^   ^\ ^/  ^^  \                 ');
	writeln('       /^   \  / ^\/ ^ ^   ^ / ^  ^    ^  \/ ^   ^  \       *        ');
	writeln('      /  ^ ^ \/^  ^\ ^ ^ ^   ^  ^   ^   ____  ^   ^  \     /|\       ');
	writeln('     / ^ ^  ^ \ ^  _\___________________|  |_____^ ^  \   /||o\      ');
	writeln('    / ^^  ^ ^ ^\  /______________________________\ ^ ^ \ /|o|||\     ');
	writeln('   /  ^  ^^ ^ ^  /________________________________\  ^  /|||||o|\    ');
	writeln('  /^ ^  ^ ^^  ^    ||___|___||||||||||||___|__|||      /||o||||||\   ');
	writeln(' / ^   ^   ^    ^  ||___|___||||||||||||___|__|||          | |       ');
	writeln('/ ^ ^ ^  ^  ^  ^   ||||||||||||||||||||||||||||||oooooooooo| |ooooooo');
	writeln('ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo');

END;

procedure affiche_histoire5;
BEGIN
	TextColor(Red);
	writeln('RRRRRRRRRRRRRRRRRRRRRR');
	writeln('RRRRRRRRRRRRRRRRRRRRRR');
	writeln('RRRRRR          RRRRRR');
	writeln('RRRRRR          RRRRRR');
	writeln('RRRRRR          RRRRRR');
	writeln('RRRRRR          RRRRRR');
	writeln('RRRRRRRRRRRRRRRRRRRRRR');
	writeln('RRRRRRRRRRRRRRRRRRRRRR');
	writeln('RRRRRR      RRRRRR');
	writeln('RRRRRR       RRRRRR');
	writeln('RRRRRR        RRRRRR');
	writeln('RRRRRR         RRRRRR');
	writeln('RRRRRR          RRRRRR');
	writeln('RRRRRR           RRRRRR');
	writeln('RRRRRR            RRRRRR');
	TextColor(White);
END;

procedure affiche_histoire6;
BEGIN

	writeln('                      _\/_             ');
	writeln('                      //o\  _\/_       ');
	writeln('   _____ _ __ __ ____ _ | __/o\\ _     ');
	writeln(' =-=-_-__=_-= _=_=-=_,- |    -|-,_     ');
	writeln('  =- _=-=- -_=-=_,-"          |        ');
	writeln('jgs =- =- -=.--"                       ');
END;



//proceedures déterminant les attaques de chacuns des pokemons disponibles


//Salamèche
procedure attaque_salameche;
	var touche_attaque : integer;
		valide         : boolean;
	BEGIN
			valide := false;
			writeln('1: Griffe');
			TextColor(LightRed);
			writeln('2: Flammeche (Feu)');
			TextColor(White);
			while (valide = false) do
			begin
				readln(touche_attaque);
				case touche_attaque of
						1:  begin
								pv_ennemi := pv_ennemi - (3 * atq_allie);
								writeln(nom_allie , ' Utilise Griffe');
								valide := true;
							end;
						2: 	begin
								writeln(nom_allie , ' Utilise Flammeche');
								valide := true;
								if (type_ennemi = 'eau') then
								begin
									pv_ennemi := pv_ennemi - (2 * atq_allie);
									writeln('Ce n est pas très efficace');
								end
								else
								begin
									if (type_ennemi = 'plante') then
									begin
										pv_ennemi := pv_ennemi - (8 * atq_allie);
										writeln('C est tres efficace !');
									end
									else
									begin
										pv_ennemi := pv_ennemi - (4 * atq_allie);
									end;
								end;
							end;
						else
						begin
							writeln('Veuillez entrer un nombre valide');
						end;
				end;
			end;
	END;


//Carapuce
procedure attaque_carapuce;
	var touche_attaque : integer;
		valide : boolean;
	BEGIN
			valide := false;
			writeln('1: Charge');
			TextColor(Blue);
			writeln('2: Pistolet a O (Eau)');
			TextColor(White);
			while (valide = false) do
			begin
				readln(touche_attaque);
				case touche_attaque of
						1:  begin
								pv_ennemi := pv_ennemi - (3 * atq_allie);
								writeln(nom_allie , ' Utilise Charge');
								valide := true;
							end;
						2: 	begin
								writeln(nom_allie , ' Utilise Pistolet a O');
								valide := true;
								if (type_ennemi = 'feu') OR (type_ennemi = 'roche') then
								begin
									pv_ennemi := pv_ennemi - (6 * atq_allie);
									writeln('C est super efficace !');
								end
								else
								begin
									if (type_ennemi = 'plante') OR (type_ennemi = 'electrique') then
									begin
										pv_ennemi := pv_ennemi - (1 * atq_allie);
										writeln('Ce n est pas tres efficace...');
									end
									else
									begin
										pv_ennemi := pv_ennemi - (3 * atq_allie);
									end;
								end;
							end;
						else
						begin
							writeln('touche invalide');
						end;

				end;
			end;
	END;


//Bulbizarre
procedure attaque_bulbizarre;
	var touche_attaque : integer;
		valide         : boolean;
	BEGIN
			valide := false;
			writeln('1: Charge');
			TextColor(Green);
			writeln('2: Fouet lianes (Plante)');
			TextColor(White);
			while (valide = false) do
			begin
				readln(touche_attaque);
				case touche_attaque of
						1:  begin
								pv_ennemi := pv_ennemi - (2 * atq_allie);
								writeln(nom_allie , ' Utilise Charge');
								valide := true;
							end;
						2: 	begin
								writeln(nom_allie , ' Utilise Fouet lianes');
								valide := true;
								if (type_ennemi = 'feu') OR (type_ennemi = 'vol') then
								begin
									pv_ennemi := pv_ennemi - (1 * atq_allie);
									writeln('Ce n est pas très efficace');
								end
								else
								begin
									if (type_ennemi = 'eau') OR (type_ennemi = 'roche') then
									begin
										pv_ennemi := pv_ennemi - (6 * atq_allie);
										writeln('C est tres efficace !');
									end
									else
									begin
										pv_ennemi := pv_ennemi - (3 * atq_allie);
									end;
								end;
							end;
						else
						begin
							writeln('Veuillez entrer un nombre valide');
						end;
				end;
			end;
	END;

//Roucool
procedure attaque_roucool;
	var touche_attaque : integer;
	    valide         : boolean;
	BEGIN
			valide := false;
			writeln('1: Vive-attaque');
			TextColor(LightGray);
			writeln('2: Tornade (Vol)');
			TextColor(White);
			while ( valide = false )do
			begin
				readln(touche_attaque);
				case touche_attaque of
						1:  begin
								pv_ennemi := pv_ennemi - (2 * atq_allie);
								writeln(nom_allie , ' Utilise Vive-attaque');
								valide := true;
							end;
						2: 	begin
								writeln(nom_allie , ' Utilise Tornade');
								valide := true;
								if (type_ennemi = 'roche') OR (type_ennemi = 'electrique') then
								begin
									pv_ennemi := pv_ennemi - (1 * atq_allie);
									writeln('Ce n est pas très efficace');
								end
								else
								begin
									if (type_ennemi = 'plante') OR (type_ennemi = 'combat') then
									begin
										pv_ennemi := pv_ennemi - (4 * atq_allie);
										writeln('C est tres efficace !');
									end
									else
									begin
										pv_ennemi := pv_ennemi - (2 * atq_allie);
									end;
								end;
							end;
						else
						begin
							writeln('Veuillez entrer une touche valide');
						end;
				end;
			end;
	END;


//Pikachu
procedure attaque_pikachu;
	var touche_attaque : integer;
	    valide         : boolean;
	BEGIN
			valide := false;
			writeln('1: Charge');
			TextColor(Yellow);
			writeln('2: Eclair (Electrique)');
			TextColor(White);
			while (valide = false) do
			begin
				readln(touche_attaque);
				case touche_attaque of
						1:  begin
								pv_ennemi := pv_ennemi - (2 * atq_allie);
								writeln(nom_allie , ' Utilise Charge');
								valide := true;
							end;
						2: 	begin
								writeln(nom_allie , ' Utilise Eclair');
								valide := true;
								if (type_ennemi = 'roche') OR (type_ennemi = 'plante') then
								begin
									pv_ennemi := pv_ennemi - (2 * atq_allie);
									writeln('Ce n est pas très efficace');
								end
								else
								begin
									if (type_ennemi = 'eau') OR (type_ennemi = 'vol') then
									begin
										pv_ennemi := pv_ennemi - (6 * atq_allie);
										writeln('C est tres efficace !');
									end
									else
									begin
										pv_ennemi := pv_ennemi - (4 * atq_allie);
									end;
								end;
							end;
						else
						begin
							writeln('Veuillez entrer un nombre valide');
						end;
				end;
			end;
	END;


//Racaillou
procedure attaque_racaillou;
	var touche_attaque : integer;
		valide         : boolean;
	BEGIN
			valide := false;
			writeln('1: Roulade');
			TextColor(Brown);
			writeln('2: Jet d pierre (Roche)');
			TextColor(White);
			while (valide = false) do
			begin
				readln(touche_attaque);
				case touche_attaque of
						1:  begin
								pv_ennemi := pv_ennemi - (2 * atq_allie);
								writeln(nom_allie , ' Utilise Roulade');
								valide := true;
							end;
						2: 	begin
								writeln(nom_allie , ' Utilise Jet d pierre');
								valide := true;
								if (type_ennemi = 'combat') OR (type_ennemi = 'eau') then
								begin
									pv_ennemi := pv_ennemi - (1 * atq_allie);
									writeln('Ce n est pas très efficace');
								end
								else
								begin
									if (type_ennemi = 'feu') OR (type_ennemi = 'vol') then
									begin
										pv_ennemi := pv_ennemi - (4 * atq_allie);
										writeln('C est tres efficace !');
									end
									else
									begin
										pv_ennemi := pv_ennemi - (2 * atq_allie);
									end;
								end;
							end;
						else
						begin
							writeln('Veuillez entrer une touche valide');
						end;
				end;
			end;
	END;


//Machoc
procedure attaque_machoc;
	var touche_attaque : integer;
		valide         : boolean;
	BEGIN
			valide := false; //ce booleen sert a verifier que l utilisateur entre un nombre valide
			writeln('1: Damocles');
			TextColor(Red);
			writeln('2: Balayage (Combat)');
			TextColor(White);
			while (valide = false)do
			begin
				readln(touche_attaque);
				case touche_attaque of
						1:  begin
								pv_ennemi := pv_ennemi - (2 * atq_allie);
								writeln(nom_allie , ' Utilise Damocles');
								valide := true;
							end;
						2: 	begin
								writeln(nom_allie , ' Utilise Balayage');
								valide := true;
								if (type_ennemi = 'vol') OR (type_ennemi = 'plante') then
								begin
									pv_ennemi := pv_ennemi - (2 * atq_allie);
									writeln('Ce n est pas très efficace');
								end
								else
								begin
									if (type_ennemi = 'normal') OR (type_ennemi = 'roche') then
									begin
										pv_ennemi := pv_ennemi - (5 * atq_allie);
										writeln('C est tres efficace !');
									end
									else
									begin
										pv_ennemi := pv_ennemi - (3 * atq_allie);
									end;
								end;
							end;
						else
						begin
							writeln('Veuillez entrer un nombre valide')
						end;
				end;
			end;
	END;

//Ratata
procedure attaque_ratata;
	var touche_attaque : integer;
		valide         : boolean;
	BEGIN
			valide := false;
			writeln('1: Charge');
			writeln('2: Croc fatal (Normal)');
			while (valide = false) do
			begin
				readln(touche_attaque);
				case touche_attaque of
						1:  begin
								pv_ennemi := pv_ennemi - (3 * atq_allie);
								writeln(nom_allie , ' Utilise Charge');
								valide := true;
							end;
						2: 	begin
								writeln(nom_allie , ' Utilise Croc fatal');
								valide := true;
								if (type_ennemi = 'roche') then
								begin
									pv_ennemi := pv_ennemi - (1 * atq_allie);
									writeln('Ce n est pas très efficace');
								end
								else
									begin
										pv_ennemi := pv_ennemi - (4 * atq_allie);
									end;
							end;
						else
						begin
							writeln('Veuillez entrer un nombre valide');
						end;
				end;
			end;
	END;


//Magicarpe
procedure attaque_magicarpe;
	var touche_attaque : integer;
		valide         : boolean;
	BEGIN
			valide := false;
			TextColor(Blue);
			writeln('1: Trempette (Eau)');
			writeln('2: Trempette (Eau)');
			TextColor(White);
			while(valide = false) do
			begin
				readln(touche_attaque);
				case touche_attaque of
						1:  begin
								writeln(nom_allie , ' Utilise Trempette');
								delay(500);
								writeln('Mais rien ne se passe...');
								valide := true;
							end;
						2: 	begin
								writeln(nom_allie , ' Utilise Trempette');
								delay(500);
								writeln('Mais rien ne se passe');
								valide := true;
							end;
						else
						begin
							writeln('Veuillez entrer un nombre valide');
						end;
				end;
			end;
	END;




//procedure qui gere le changement de pokemons
procedure changement_allie;
//BUT gérer le changement de pokémons
//ENTREE le numéro du pokémon voulu
//SORTIE le pokémon voulu devient le pokémon jouable


	var touche_changement, pv_tempo, pv_max_tempo, xp_tempo, xp_max_tempo, lvl_tempo, atq_tempo: integer;
		nom_tempo, type_tempo                    : string;

	BEGIN
		begin
			readln(touche_changement);
			case touche_changement of


			//si le pokemon selectionne n est pas KO, le joueur peut le selectionner et les deux pokemon intervertissent leurs variables afin que ce soit le pokemon selectionne qui soit affiche
					2:	begin
							valide := true;
							if (pv_allie2 > 0) then
							begin
								pv_tempo := pv_allie;
								nom_tempo := nom_allie;
								pv_max_tempo := pv_allie_max;
								type_tempo := type_allie;
								xp_tempo := xp_allie;
								xp_max_tempo := xp_allie_max;
								lvl_tempo := lvl_allie;
								atq_tempo := atq_allie;

								pv_allie := pv_allie2;
								nom_allie := nom_allie2;
								pv_allie_max := pv_allie2_max;
								type_allie := type_allie2;
								xp_allie := xp_allie2;
								xp_allie_max := xp_allie2_max;
								lvl_allie := lvl_allie2;
								atq_allie := atq_allie2;

								pv_allie2 := pv_tempo;
								nom_allie2 := nom_tempo;
								pv_allie2_max := pv_max_tempo;
								type_allie2 := type_tempo;
								xp_allie2 := xp_tempo;
								xp_allie2_max := xp_max_tempo;
								lvl_allie2 := lvl_tempo;
								atq_allie2 := atq_tempo;

							end
							else
							begin
								if (nom_allie2 <> '') then
								begin
									writeln(nom_allie2 , ' est KO');
									writeln('Veuillez choisir un autre pokemon');
								end
								else
								begin
									writeln('Vous n avez pas de pokemons a cet emplacement');
									writeln('Veuillez choisir un autre pokemon');
								end;
							end;
						end;
					3:	begin
							valide := true;
							if (pv_allie3 > 0) then
							begin
								pv_tempo := pv_allie;
								nom_tempo := nom_allie;
								pv_max_tempo := pv_allie_max;
								type_tempo := type_allie;
								xp_tempo := xp_allie;
								xp_max_tempo := xp_allie_max;
								lvl_tempo := lvl_allie;
								atq_tempo := atq_allie;

								pv_allie := pv_allie3;
								nom_allie := nom_allie3;
								pv_allie_max := pv_allie3_max;
								type_allie := type_allie3;
								xp_allie := xp_allie3;
								xp_allie_max := xp_allie3_max;
								lvl_allie := lvl_allie3;
								atq_allie := atq_allie3;

								pv_allie3 := pv_tempo;
								nom_allie3 := nom_tempo;
								pv_allie3_max := pv_max_tempo;
								type_allie3 := type_tempo;
								xp_allie3 := xp_tempo;
								xp_allie3_max := xp_max_tempo;
								lvl_allie3 := lvl_tempo;
								atq_allie3 := atq_tempo;

								
							end
							else
							begin
								if (nom_allie3 <> '') then
								begin
									writeln(nom_allie3 , ' est KO');
									writeln('Veuillez choisir un autre pokemon');
								end
								else
								begin
									writeln('Vous n avez pas de pokemon a cet emplacement');
									writeln('Veuillez choisir un autre pokemon');
								end;
							end;
						end;
					else
						begin
							writeln('Veuillez entrer un nombre vailde...')
						end;
			end;
		end;
	END;



// procedure qui reaffecte les statistques d un pokemon en fonction de son niveau			
procedure lvl_up;
//BUT affecter les statistiques du pokemon principal en fonction de son niveau
//ENTREE rien
//SORTIE rien

BEGIN
	case nom_allie of
		'Salameche'		:	begin
							pv_allie_max := 36 + (6 * lvl_allie);
							atq_allie :=  2 + (lvl_allie);
							end;

		'Carapuce'		:	begin
							pv_allie_max :=  44 + (6 * lvl_allie);
							atq_allie :=  2 + (lvl_allie);
							end;

		'Bulbizarre'	:	begin
							pv_allie_max :=  50 + (9 * lvl_allie);
							atq_allie :=  1 + (lvl_allie);
							end;

		'Roucool'		:	begin
							pv_allie_max :=  30 + (6 * lvl_allie);
							atq_allie :=  3 + (lvl_allie);
							end;

		'Pikachu'		:	begin
							pv_allie_max :=  35 + (6 * lvl_allie);
							atq_allie :=  1 + (lvl_allie);
							end;

		'Racaillou'		:	begin
							pv_allie_max :=  45 + (9 * lvl_allie);
							atq_allie :=  1 + (lvl_allie);
							end;

		'Machoc'		:	begin
							pv_allie_max :=  39 + (6 * lvl_allie);
							atq_allie :=  2 + (lvl_allie);
							end;

		'Ratata'		:	begin
							pv_allie_max :=  32 + (6 * lvl_allie);
							atq_allie :=  5 + (lvl_allie);
							end;

		'Magicarpe'		:	begin
							pv_allie_max :=  36 + (6 * lvl_allie);
							atq_allie :=  3 + (lvl_allie);
							end;
	end;
END;


Procedure ennemi_stats;

//BUT affecter les statistiques du pokemon ennemi en fonction de son niveau
//ENTREE rien
//SORTIE rien

BEGIN
	case nom_ennemi of
		'Salameche'	:	begin
						pv_ennemi_max := 36 + (6 * lvl_ennemi);
						atq_ennemi := 2 + (lvl_ennemi);
						type_ennemi := 'feu';
						end;

		'Carapuce'	:	begin
						pv_ennemi_max := 44 + (6 * lvl_ennemi);
						atq_ennemi := 1 + (lvl_ennemi);
						type_ennemi := 'eau';
						end;

		'Bulbizarre':	begin
						pv_ennemi_max := 50 + (9 * lvl_ennemi);
						atq_ennemi := 1 + (lvl_ennemi);
						type_ennemi := 'plante';
						end;

		'Roucool'	:	begin
						pv_ennemi_max := 30 + (6 * lvl_ennemi);
						atq_ennemi := 3 + (lvl_ennemi);
						type_ennemi := 'vol';
						end;

		'Pikachu'	:	begin
						pv_ennemi_max := 35 + (6 * lvl_ennemi);
						atq_ennemi := 1 + (lvl_ennemi);
						type_ennemi := 'electrique';
						end;

		'Racaillou'	:	begin
						pv_ennemi_max := 45 + (9 * lvl_ennemi);
						atq_ennemi := 1 + (lvl_ennemi);
						type_ennemi := 'roche';
						end;

		'Machoc'	:	begin
						pv_ennemi_max := 39 + (6 * lvl_ennemi);
						atq_ennemi := 2 + (lvl_ennemi);
						type_ennemi := 'combat';
						end;

		'Ratata'	:	begin
						pv_ennemi_max := 32 + (6 * lvl_ennemi);
						atq_ennemi := 5 + (lvl_ennemi);
						type_ennemi := 'normal';
						end;

		'Magicarpe'	:	begin
						pv_ennemi_max := 36 + (2 * lvl_ennemi);
						atq_ennemi := 3 + (lvl_ennemi);
						type_ennemi := 'eau';
						end;

		'Pascal'	:	begin
						type_ennemi := 'normal';
						end;
	end;
	pv_ennemi := pv_ennemi_max
END;
procedure attaque_pascal;
//BUT Réalisez le comportement du boss
//ENTREE rien
//SORTIE rien

VAR  	type_boss : integer;
		

BEGIN
	//pv_boss := 250
	//ATK := 14
	//feu := 1
	//eau := 2
	//plante := 3
	//roche := 4
	//air := 5
	//combat := 6
	//electrique := 7
	//normal := 8

	type_boss := random (8);
	writeln(nom_ennemi , ' utilise erreur de compilation !');

	case type_boss of

		1 :			begin
						type_ennemi := 'feu';
						if(type_allie = 'plante') then
						begin
							pv_allie := pv_allie - 50;
							writeln('C est très efficace !');
						end
						else
						begin
							if (type_allie = 'eau') OR (type_allie = 'roche') then
							begin
								pv_allie := pv_allie - 10;
								writeln('Ceci n est pas tres efficace');
							end
							else
							begin
								pv_allie := pv_allie - 20;
							end;
						end
					end;

		2:			begin
						type_ennemi := 'eau';
						if (type_allie = 'feu') OR (type_allie = 'roche') OR (type_allie = 'electrique') then
						begin
							pv_allie := pv_allie - 50;
							writeln('C est très efficace !');
						end
						else
						begin
							if (type_allie = 'plante') then
							begin
								pv_allie := pv_allie - 10;
								writeln('Ceci n est pas tres efficace');
							end
							else
							begin
								pv_allie := pv_allie - 20;
							end;
						end;
					end;

		3:			begin
						type_ennemi := 'plante';
						if (type_allie = 'eau') OR (type_allie = 'roche') then
						begin
							pv_allie := pv_allie - 50;
							writeln('C est très efficace !');
						end
						else
						begin
							if (type_allie = 'feu') OR (type_allie = 'vol') then
							begin
								pv_allie := pv_allie - 10;
								writeln('Ceci n est pas tres efficace');
							end
							else
							begin
								pv_allie := pv_allie - 20;
							end;
						end;
					end;

		4:			begin
						type_ennemi := 'roche';
						if (type_allie = 'feu') OR (type_allie = 'vol') then
						begin
							pv_allie := pv_allie - 50;
							writeln('C est très efficace !');
						end
						else
						begin
							if (type_allie = 'combat') then
							begin
								pv_allie := pv_allie - 10;
								writeln('Ceci n est pas tres efficace');
							end
							else
							begin
								pv_allie := pv_allie - 20;
							end;
						end;
					end;

		5:			begin
						type_ennemi := 'vol';
						if (type_allie = 'plante') OR (type_allie = 'combat') then
						begin
							pv_allie := pv_allie - 50;
							writeln('C est très efficace !');
						end
						else
						begin
							if (type_allie = 'roche') OR (type_allie = 'electrique') then
							begin
								pv_allie := pv_allie - 10;
								writeln('Ceci n est pas tres efficace');
							end
							else
							begin
								pv_allie := pv_allie - 20;
							end;
						end;
					end;

		6:			begin
						type_ennemi := 'combat';
						if (type_allie = 'normal') OR (type_allie = 'roche') then
						begin
							pv_allie := pv_allie - 50;
							writeln('C est très efficace !');
						end
						else
						begin
							if (type_allie = 'vol') OR (type_allie = 'plante') then
							begin
								pv_allie := pv_allie - 10;
								writeln ('Ceci n est pas tres efficace');
							end
							else
							begin
								pv_allie := pv_allie - 20;
							end;
						end;
					end;

		7:			begin
						type_ennemi := 'electrique';
						if (type_allie = 'eau') OR (type_allie = 'air') then
						begin
							pv_allie := pv_allie - 50;
							writeln('C est très efficace !');
						end
						else
						begin
							if (type_allie = 'roche') OR (type_allie = 'plante') then
							begin
								pv_allie := pv_allie - 10;
								writeln ('Ceci n est pas tres efficace');
							end
							else
							begin
								pv_allie := pv_allie - 20;
							end;
						end;
					end;

		8:			begin
						type_ennemi := 'normal';
						if (type_allie) = 'roche' then
						begin
							pv_allie := pv_allie - 10;
							writeln('Ceci n est pas tres efficace');
						end
						else
						begin
							pv_allie := pv_allie - 20;
						end;
					end;
	end;
	writeln(nom_ennemi , ' est maintenant de type ' , type_ennemi);
	
END;


procedure tour_ennemi;
//BUT determine l'action de l'ennemi
//ENTREE rien
//SORTIE l'action réalisée par l'ennemi

var attaque_ennemi : integer;

BEGIN
	attaque_ennemi := random (10);
	case nom_ennemi of

		'Salameche' 	:	begin
								if (attaque_ennemi > 5) then
								begin
									pv_allie := pv_allie - (3 * atq_ennemi);
									writeln(nom_ennemi , ' Utilise Griffe');
								end
								else
								begin
									writeln(nom_ennemi , ' Utilise Flammeche');
									if (type_allie = 'eau') then
									begin
										pv_allie := pv_allie - (2 * atq_ennemi);
										writeln('Ce n est pas tres efficace');
									end
									else
									begin
										if (type_allie = 'plante') then
										begin
											pv_allie := pv_allie - (8 * atq_ennemi);
											writeln('C est super efficace');
										end
										else
										begin
											pv_allie := pv_allie - (4 * atq_ennemi);
										end;
									end;
									
								end;
							end;

		'Carapuce' 		:	begin
								if (attaque_ennemi > 5) then
								begin
									pv_allie := pv_allie - (3 * atq_ennemi);
									writeln(nom_ennemi , ' Utilise Charge');
								end
								else
								begin
									writeln(nom_ennemi , ' Utilise Pistolet a O');
									if ((type_allie = 'plante') OR (type_allie = 'electrique')) then
									begin
										pv_allie := pv_allie - (1 * atq_ennemi);
										writeln('Ce n est pas tres efficace');
									end
									else
									begin
										if ((type_allie = 'feu') OR (type_allie = 'roche')) then
										begin
											pv_allie := pv_allie - (6 * atq_ennemi);
											writeln('C est super efficace');
										end
										else
										begin
											pv_allie := pv_allie - (3 * atq_ennemi);
										end;
									end;
								end;
							end;

		'Bulbizarre' 	:	begin
								if (attaque_ennemi > 5) then
								begin
									pv_allie := pv_allie - (2 * atq_ennemi);
									writeln(nom_ennemi , ' Utilise Charge');
								end
								else
								begin
									writeln(nom_ennemi , ' Utilise Fouet lianes');
									if ((type_allie = 'feu') OR (type_allie = 'vol')) then
									begin
										pv_allie := pv_allie - (1 * atq_ennemi);
										writeln('Ce n est pas tres efficace');
									end
									else
									begin
										if ((type_allie = 'roche') OR (type_allie = 'eau')) then
										begin
											pv_allie := pv_allie - (6 * atq_ennemi);
											writeln('C est super efficace');
										end
										else
										begin
											pv_allie := pv_allie - (3 * atq_ennemi);
										end;
									end;
								end;
							end;

		'Roucool' 		:	begin
								if (attaque_ennemi > 5) then
								begin
									pv_allie := pv_allie - (2 * atq_ennemi);
									writeln(nom_ennemi , ' Utilise Vive-attaque');
								end
								else
								begin
									writeln(nom_ennemi , ' Utilise Tornade');
									if ((type_allie = 'roche') OR (type_allie = 'electrique')) then
									begin
										pv_allie := pv_allie - (1 * atq_ennemi);
										writeln('Ce n est pas tres efficace');
									end
									else
									begin
										if ((type_allie = 'plante') OR (type_allie = 'combat')) then
										begin
											pv_allie := pv_allie - (4 * atq_ennemi);
											writeln('C est super efficace');
										end
										else
										begin
											pv_allie := pv_allie - (2 * atq_ennemi);
										end;
									end;	
								end;
							end;

		'Pikachu' 		:	begin
								if (attaque_ennemi > 5) then
								begin
									pv_allie := pv_allie - (2 * atq_ennemi);
									writeln(nom_ennemi , ' Utilise Charge');
								end
								else
								begin
									writeln(nom_ennemi , ' Utilise Eclair');
									if ((type_allie = 'roche') OR (type_allie = 'plante')) then
									begin
										pv_allie := pv_allie - (2 * atq_ennemi);
										writeln('Ce n est pas tres efficace');
									end
									else
									begin
										if ((type_allie = 'vol') OR (type_allie = 'eau')) then
										begin
											pv_allie := pv_allie - (6 * atq_ennemi);
											writeln('C est super efficace');
										end
										else
										begin
											pv_allie := pv_allie - (4 * atq_ennemi);
										end;
									end;
								end;
							end;

		'Racaillou' 	:	begin
								if (attaque_ennemi > 5) then
								begin
									pv_allie := pv_allie - (2 * atq_ennemi);
									writeln(nom_ennemi , ' Utilise Roulade');
								end
								else
								begin
									writeln(nom_ennemi , ' Utilise Jet d pierre');
									if ((type_allie = 'eau') OR (type_allie = 'combat')) then
									begin
										pv_allie := pv_allie - (1 * atq_ennemi);
										writeln('Ce n est pas tres efficace');
									end
									else
									begin
										if ((type_allie = 'feu') OR (type_allie = 'vol')) then
										begin
											pv_allie := pv_allie - (4 * atq_ennemi);
											writeln('C est super efficace');
										end
										else
										begin
											pv_allie := pv_allie - (2 * atq_ennemi);
										end;
									end;
								end;
							end;

		'Machoc' 		:	begin
								if (attaque_ennemi > 5) then
								begin
									pv_allie := pv_allie - (2 * atq_ennemi);
									writeln(nom_ennemi , ' Utilise Damocles');
								end
								else
								begin
									writeln(nom_ennemi , ' Utilise Balayage');
									if ((type_allie = 'vol') OR (type_allie = 'plante')) then
									begin
										pv_allie := pv_allie - (2 * atq_ennemi);
										writeln('Ce n est pas tres efficace');
									end
									else
									begin
										if ((type_allie = 'normal') OR (type_allie = 'roche')) then
										begin
											pv_allie := pv_allie - (5 * atq_ennemi);
											writeln('C est super efficace');
										end
										else
										begin
											pv_allie := pv_allie - (3 * atq_ennemi);
										end;
									end;
								end;
							end;

		'Ratata' 		:	begin
								if (attaque_ennemi > 5) then
								begin
									pv_allie := pv_allie - (3 * atq_ennemi);
									writeln(nom_ennemi , ' Utilise Charge');
								end
								else
								begin
									writeln(nom_ennemi , ' Utilise Croc fatal');
									if (type_allie = 'roche') then
									begin
										pv_allie := pv_allie - (1 * atq_ennemi);
										writeln('Ce n est pas tres efficace');
									end
									else
									begin
										pv_allie := pv_allie - (4 * atq_ennemi);
									end;
								end;
							end;

		'Magicarpe' 	:	begin
								writeln(nom_ennemi , ' Utilise Trempette');
								writeln('Mais rien ne se passe...');
							end;

		'Pascal' 		: 	begin
							attaque_pascal;
							end;
	end;
END;

procedure color_ennemi;
//pour que la couleur du nom du pokemon soit en accord avec son type

BEGIN
	case type_ennemi of

		'feu'		:	begin
							TextColor(LightRed);
						end;
		'plante'	:	begin
							TextColor(Green);
						end;
		'eau'       :	begin
							TextColor(Blue);
						end;
		'combat'  	:	begin
							TextColor(Red);
						end;
		'roche'		:	begin
							TextColor(Brown);
						end;
		'vol'		:	begin
							TextColor(LightGray);
						end;
		'electrique':	begin
							TextColor(Yellow);
						end;
	end;

END;

procedure color_allie;
//pour que la couleur du nom du pokemon soit en accord avec son type

BEGIN
	case type_allie of

		'feu'		:	begin
							TextColor(LightRed);
						end;
		'plante'	:	begin
							TextColor(Green);
						end;
		'eau'       :	begin
							TextColor(Blue);
						end;
		'combat'  	:	begin
							TextColor(Red);
						end;
		'roche'		:	begin
							TextColor(Brown);
						end;
		'vol'		:	begin
							TextColor(LightGray);
						end;
		'electrique':	begin
							TextColor(Yellow);
						end;
	end;

END;

procedure interface_combat;
//BUT Afficher l interface du jeu
//ENTREE rien
//SORTIE l interface de combat

BEGIN
	clrscr;
	writeln('Un ' , nom_Ennemi , ' apparait !');

	color_ennemi;
	writeln(nom_ennemi , '(' , type_ennemi , ')');
	TextColor(White);
	writeln('Niveau : ' , lvl_ennemi);
	writeln('PV : ' , pv_ennemi , '/' , pv_ennemi_max);
	delay(1000);
	affiche_pokemon(nom_ennemi);
	delay(1000);


	color_allie;


	//GoToXY(50,1);
	writeln(nom_allie , '(' , type_allie , ')');
	TextColor(White);
	//GoToXY(50,2);
	writeln('Niveau : ' , lvl_allie);
	//GoToXY(50,3);
	writeln('PV : ' , pv_allie , '/' , pv_allie_max);
	//GoToXY(50,4);
	delay(1000);
	affiche_pokemon(nom_allie);


END;

procedure combat;

var victoire : boolean;

BEGIN
	PlaySound('battle.wav',0,SND_ASYNC); //Lance la musique de combat

	//code du combat
	victoire := false;
	fuite := false;


	while (victoire = false) do //tant que le joueur n a pas gagne le combat, il le recommencera en boucle
	begin
		writeln('Un ' , nom_ennemi , ' sauvage apparait!');


		//lvl_up; //permet d'etre sur que le pokemon principal a des statistiques correctes par rapport à son niveau


		//boucle, le combat dure tant que les pokemon sont en vie et que le joueur n'a pas fuit le combat
		while (pv_allie > 0) and (pv_ennemi > 0) and (fuite = false) do


		begin
			
			interface_combat;
			valide := false;

			//interface de selection des attaques
			while (valide = false) do //pour verifier que le joueur ne rentre pas n importe quoi
			begin
				writeln ('1 : attaquer');
				writeln ('2 : objet');
				writeln ('3 : fuir');
				writeln ('4 : changer ');
			
				readln(touche);

			
				case (touche) of
						//si le joueur choisit d'attaquer la procedure gerant les attaques du pokemon joue se declenche
					 	1:  begin
					 		    case (nom_allie) of

					 		    	'Salameche' : attaque_salameche;


					 		    	'Carapuce' : attaque_carapuce;

					 		    	'Bulbizarre' : attaque_bulbizarre;

					 		    	'Roucool' : attaque_roucool;

					 		    	'Pikachu' : attaque_pikachu;
					 		    	'Racaillou' : attaque_racaillou;
					 		    	'Machoc' : attaque_machoc;
					 		    	'Ratata' : attaque_ratata;
					 		    	'Magicarpe' : attaque_magicarpe;
		                        end;
		                        valide := true; // le joueur a entre une commande valide
		                        if (pv_ennemi < 0) then
		                        begin
		                        pv_ennemi := 0; //permet d eviter d afficher un nombre de PV negatif
		                        end;
							end;
						//si le joueur choisit les objets, on lui propose soit d'utiliser une potion soit de capturer le pokemon adverse
						2:	begin
								writeln('1: potion (x' , nbr_potion , ')');
								writeln('2: pokeballs(x' , nbr_pokeball ,  ')');
								readln(touche_objet);
								case touche_objet of
									1:	begin
											//la potion ne restaure de PV que si le pokemon en a assez et que le joueur a des potions
											valide := true; //le joueur a fait un choix valide
											if (nbr_potion > 0) and (pv_allie < pv_allie_max - 30) then
											begin
												nbr_potion := nbr_potion-1;
												writeln(nom_joueur , ' utilise une potion');
												writeln(nom_allie , 'recupere 30PV');
												pv_allie := pv_allie + 30;
											end
											else
											begin
												if (nbr_potion > 0) and (pv_allie < pv_allie_max) then
												begin
													nbr_potion := nbr_potion-1;
													pv_allie := pv_allie_max;
													writeln(nom_joueur , ' utilise une potion');
													writeln(nom_allie , ' a atteint son nombre de PV maximum');
												end
												else
												begin
													if (nbr_potion <= 0) then
													begin
														writeln('Vous n avez plus de potions');
													end
													else
													begin
														writeln('vous avez trop de points de vie');
													end;
												end;
											end;
										end;
									2: 	begin
											valide := true;
											chance_capture := random(10);
											if (dresseur = true) then
											begin
												writeln('Vous ne pouvez pas capturer un Pokemon appartenant a un dresseur')
											end
											else
											//le joueur a 50 pourcent de chances de capturer l'adversaire si il n appartient pas a un dresseur
											//si le pokemon est capture il pose ses variables dans un emplacement disponible
											begin
												if (nbr_pokeball > 0) and (chance_capture > 5) and (nom_allie2 = '') then
													begin
														nbr_pokeball := nbr_pokeball - 1;
														writeln(nom_joueur , ' Utilise une pokeball');
														writeln('Pokemon capture');
														nom_allie2 := nom_ennemi;
														pv_allie2 := pv_ennemi;
														pv_allie2_max := pv_ennemi_max;
														type_allie2 := type_ennemi;
														atq_allie2 := atq_ennemi;
														lvl_allie2 := lvl_ennemi;
														pv_ennemi := 0
													end
												else
												begin
													if (nbr_pokeball > 0) and (chance_capture > 5) and (nom_allie3 = '') then
														begin
															nbr_pokeball := nbr_pokeball - 1;
															writeln(nom_joueur , ' Utilise une pokeball');
															writeln('Pokemon capture');
															nom_allie3 := nom_ennemi;
															pv_allie3 := pv_ennemi;
															pv_allie3_max := pv_ennemi_max;
															type_allie3 := type_ennemi;
															atq_allie3 := atq_ennemi;
															lvl_allie3 := lvl_ennemi;
															pv_ennemi := 0;
														end
													else
													begin
														if (nbr_pokeball > 0) and (chance_capture > 5)then
															begin
																writeln('Vous n avez plus de place dans votre equipe');
																nbr_pokeball := nbr_pokeball - 1;
															end
														else
														begin
															if (chance_capture <= 5) and (nbr_pokeball > 0) then
																begin
																	nbr_pokeball := nbr_pokeball - 1;
																	writeln('Rate');
																end
															else
															begin
																writeln('Vous n avez plus de pokeballs');
															end;
														end;
													end;
												end;
											end;
										end;
									else
									begin
										writeln('Veuillez choisir un objet valide');
									end;
								end;
							end; //fin du cas 2 'objets'


						//au cas ou le joueur choisit de fuir il a une certaine chance de reussir
						3:	begin
								valide := true;
								if (dresseur = true) then
								begin
									writeln('Vous ne pouvez pas fuir face a un dresseur')
								end
								else
								begin
									chance_fuite := random(10);
									if (chance_fuite > 4) then
									begin
										writeln('Vous n arrivez pas a fuir');
									end
									else
									begin
										fuite := true;
										victoire := true;
									end;
								end;
							end;
						//si le joueur veut changer de pokemon, on lui affiche les pokemons disponibles, leur PV et on appelle la procedure qui gere le changement de pokemon
						4: 	begin
								writeln('2 : ' , nom_allie2 , ' (' , pv_allie2 , 'pv' , ')');
							   	writeln('3 : ' , nom_allie3 , ' (' , pv_allie3 , 'pv' , ')');
							   	changement_allie;
							end;
						else
						begin
						writeln('Veuillez entrer un nombre valide');
						end;
				end;
			end;
			delay(1000);
			interface_combat;
			//si le combat peut continuer, l'ennemi peut attaquer
			if (pv_allie > 0) and (pv_ennemi > 0) and (fuite = false) then
			begin
				tour_ennemi;
				if (pv_allie < 0) then
				begin
					pv_allie := 0 //Pour ne pas afficher de nombres négatifs
				end;
			end;
			delay(1000);
			if (pv_allie <= 0) AND ((pv_allie2 > 0) OR(pv_allie3 > 0)) then
			begin
				writeln(nom_allie , 'Est KO');
				writeln('Choisissez son remplacant');
				writeln('2 : ' , nom_allie2 , ' (' , pv_allie2 , ')' );
				writeln('3 : ' , nom_allie3 , ' (' , pv_allie3 , ')' );
				changement_allie;
				writeln(nom_allie , ' En avant !');
			end;
			delay(1000);
		end;


		//quand on sort de la boucle, 3 options sont possibles:


		//Soit le joueur a fuit le combat
		if (fuite = true) then
		begin
			writeln('Vous avez fuit');
		end
		else
		begin
			//soit le joueur a encore des pokemon en vie et a donc gagné le combat
			if (pv_allie > 0) then
			begin
				victoire := true;
				writeln('Vous avez gagne !!!');
				xp_allie := xp_allie + 100;
				while (xp_allie >= xp_allie_max) do
				begin
					xp_allie := xp_allie - xp_allie_max;
					lvl_allie := lvl_allie +1;
					xp_allie_max := 80 + (5 * lvl_allie);
					writeln('Felicitations !! ' , nom_allie , ' passe au niveau ' , lvl_allie);
				end;
				lvl_up;
				writeln('Vous avez gagne 50 pokedollars');
				argent := argent + 50;
			end
			//sinon cela veut dire que le joueur n'a plus de pokemons en vie, il a donc perdu le combat
			else
			begin
				writeln('Vous avez perdu !');
				writeln('Recommençons la ou vous avez echoue');
				readln;
				writeln('Tous vos PV ont ete restaures');
				pv_allie := pv_allie_max;
				pv_allie2 := pv_allie2_max;
				pv_allie3 := pv_allie3_max;
				pv_ennemi := pv_ennemi_max;
			end;
		end;
	    readln;
	end;

	PlaySound(nil, 0, SND_ASYNC); //coupe la musique


END;

procedure intro;
//BUT realiser l introduction du jeu
//ENTREE le nom entre par le joueur et un chiffre designant le pokemon choisi
//SORTIE le pokemon choisi un un acces a un combat avec celui-ci

VAR touche_choix : integer;
	valide_intro : boolean;

BEGIN
	clrscr;
	affiche_intro;
	writeln('??? : Bienvenue dans le monde merveilleux des Pokemons');
	writeln('??? : Tu t appretes a vivre une aventure epique. En appuyant sur Entree tu ne pourras plus faire marche arriere.');
	readln;

	clrscr;
	affiche_intro;
	writeln('??? : Mais dis-moi, quel est ton nom ?');
	while (nom_joueur = '') do //On s assure que le joueur rentre bien un nom
	begin
		readln(nom_joueur);
		if (nom_joueur = '') then
		begin
			writeln('Veuillez entrer un nom');
		end
	end;


	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : Enchante ' , nom_joueur , ' je suis le professeur Hatton !');
	readln;

	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : L experience que tu vas vivre a ete developpee par deux de mes etudiants');
	readln;

	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : ...');
	readln;

	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : (Esperons qu ils n aient pas fait n importe quoi...)');
	readln;

	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : Hum... Toujours est-il que je suis la pour te guider dans ton aventure');
	readln;

	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : Afin de pouvoir affronter d autres dresseurs, tu devras etre accompgne');
	writeln('d un petit compagnon.');
	readln;

	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : Je peux te proposer trois compagnons, a toi de faire le bon choix');
	delay(1000);
	writeln('------------------------------------------------------------------');
	writeln('1 : Bulbizarre');
	writeln('    Type : plante');
	writeln('    Niveau : 3');
	writeln('    PV : 59');
	writeln('    Attaque : 7');

	writeln('------------------------------------------------------------------');
	writeln('2 : Carapuce');
	writeln('    Type : eau');
	writeln('    Niveau : 3');
	writeln('    PV : 50');
	writeln('    Attaque : 10');

	writeln('------------------------------------------------------------------');
	writeln('3 : Salameche');
	writeln('    Type : feu');
	writeln('    Niveau : 3');
	writeln('    PV : 42');
	writeln('    Attaque : 10');

	lvl_allie := 3;
	lvl_ennemi := 3;
	valide_intro := false;

	while (valide_intro = false) do //on verifie que l utilisateur rentre un nombre valide
	begin
		readln(touche_choix);


		case touche_choix of

				1 	: 	begin
						nom_allie := 'Bulbizarre';
						type_allie := 'plante';
						nom_ennemi := 'Carapuce';
						valide_intro := true;
						end;

				2 	: 	begin
						nom_allie := 'Carapuce';
						type_allie := 'eau';
						nom_ennemi := 'Salameche';
						valide_intro := true;
						end;

				3 	: 	begin
						nom_allie := 'Salameche';
						type_allie := 'feu';
						nom_ennemi := 'Bulbizarre';
						valide_intro := true;
						end;
				else
				begin
					writeln('Veuillez entrer un nombre valide');
				end;
		end;
	end;
	lvl_up;
	ennemi_stats;
	pv_allie := pv_allie_max;

	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : Hum... Ainsi tu as choisi ' , nom_allie , ' !');
	readln;

	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : Faisons donc un combat pour voir ce que tu as dans le ventre.');
	readln;

	clrscr;
	affiche_intro;
	writeln('*Le Pr. Hatton envoie un ' , nom_ennemi , '*');
	readln;

	combat;

	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : Tu t es bien debrouille, felicitations !');
	readln;

	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : J ai rarement vu un talent comme le tien.');
	readln;

	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : J ai entendu parler d un bug informatique au Bourg Palette.');
	readln;

	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : Il aurait ete cause par un Pokemon electrique.');
	readln;

	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : Peut-etre que toi et ton compagnon pourriez faire quelque chose...');
	readln;

	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : Attends quelques instants, je vais soigner ton ' , nom_allie , ' apres ce combat eprouvant.');
	readln;

	pv_allie := pv_allie_max;

	clrscr;
	affiche_intro;
	writeln('*Tous les PV ont ete restaures.*');
	readln;

	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : Voici egalemnt de l equipement pour ton aventure');
	readln;

	clrscr;
	affiche_intro;
	writeln('*3 potions et 3 pokeballs ont ete rajoutees a votre inventaire*');
	nbr_potion := 3;
	nbr_pokeball := 3;
	readln;


	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : Bon courage ' , nom_joueur , ' !');
	readln;

	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : Et prends garde aux Pokemons sauvages');
	readln;


END;

procedure histoire1;
//BUT realiser la premiere phase d histoire du jeu
//ENTREE rien
//SORTIE le lancement d un combat avec les pokemons de l allie et l affichage de la première histoire

BEGIN
	clrscr;
	affiche_histoire1_1;
	writeln('*Vous marchez sur un sentier en direction du Bourg Palette*');
	readln;

	clrscr;
	affiche_histoire1_1;
	writeln('*Tout semble calme*');
	readln;

	clrscr;
	affiche_histoire1_1;
	writeln('*Trop calme...*');
	readln;

	clrscr;
	affiche_histoire1_1;
	writeln('*Quand tout a coup !*');
	readln;

	clrscr;
	affiche_histoire1_2;
	writeln('*Un roucool agressif fait son apparition*');
	readln;

	clrscr;
	affiche_histoire1_2;
	writeln('*Il se jette sans hesitation sur votre ' , nom_allie ,'*');
	readln;

	nom_ennemi := 'Roucool';
	lvl_ennemi := 4;
	ennemi_stats;
	combat;

	clrscr;
	affiche_histoire1_1;
	writeln('*Une fois le combat termine, vous reprenez votre route*');
	readln;
END;

procedure histoire2;
//BUT realiser la deuxieme phase d histoire du jeu
//ENTREE rien
//SORTIE le lancement d un combat avec les pokemons de l allie et l affichage de la deuxieme histoire

BEGIN
	clrscr;
	affiche_histoire2_1;
	writeln('*Vous arrivez au Bourg Palette*');
	readln;

	clrscr;
	affiche_histoire2_1;
	writeln('*Des bruits d explosion provenant d une maison sur votre gauche attirent votre oeuil*');
	readln;

	clrscr;
	affiche_histoire2_1;
	writeln('*Vous voyez un garcon s enfuir de la maison en flammes*');
	readln;

	clrscr;
	affiche_histoire2_1;
	writeln('*Il se dirige vers vous en criant*');
	readln;

	clrscr;
	affiche_histoire2_2;
	writeln('??? : AAAH ! A L AIDE !!! MON PIKACHU EST POSSEDE ! IL FAUT M AIDER !');
	readln;

	clrscr;
	affiche_histoire2_3;
	writeln('*A peine eut-il le temps de finir sa phrase qu une souris jaune apparait au coin de la rue*');
	readln;

	clrscr;
	affiche_histoire2_3;
	writeln('*Elle semble enragee*');
	readln;

	clrscr;
	affiche_histoire2_3;
	writeln('*Appercevant votre Pokemon, le Pikachu se jette dessus*');
	readln;

	clrscr;
	affiche_histoire2_3;
	writeln('Pikachu : PIKAAAAAAAA !');
	readln;

	lvl_ennemi := 4;
	nom_ennemi := 'Pikachu';
	ennemi_stats;
	combat;

	clrscr;
	affiche_histoire2_3;
	writeln('*Le Pikachu semble a bout de forces et se dirige docilement vers son maitre*');
	readln;

	clrscr;
	affiche_histoire2_2;
	writeln('Sacha : Enchante ! Je m appelle Sacha Ketchum');
	readln;

	clrscr;
	affiche_histoire2_2;
	writeln('Sacha : Tu dois etre ' , nom_joueur , '!');
	readln;

	clrscr;
	affiche_histoire2_2;
	writeln('Sacha : Le Pr. Hatton m a prevenu de ton arrivee');
	readln;

	clrscr;
	affiche_histoire2_2;
	writeln('Sacha : Il m a dit que tu etais doue pour le combat,');
	writeln('        mais il a minimise ton talent !');
	readln;

	clrscr;
	affiche_histoire2_2;
	writeln('Sacha : Desole pour ce contre temps...');
	readln;

	clrscr;
	affiche_histoire2_2;
	writeln('Sacha : Depuis que la Team Rocket s est installe dans notre village,');
	writeln('        les Pokemons ont un comportement bizarre');
	readln;

	clrscr;
	affiche_histoire2_2;
	writeln('Sacha : Ils appelent cela le projet Pascal');
	writeln('        mais leurs intentions restent mysterieuses...');
	readln;

	clrscr;
	affiche_histoire2_2;
	writeln('Sacha : Ils ont base leur station scientiifque a cote du');
	writeln('        dojo, peut-etre que tu pourrais aller voir ce qui s y trame');
	readln;

	clrscr;
	affiche_histoire2_2;
	writeln('Sacha : Le dojo se trouve de l autre cote de la grotte au sud du village');

	clrscr;
	affiche_histoire2_2;
	writeln('Sacha : Je vais passer un peu de super potion sur tes Pokemons,');
	writeln('        car la grotte est dangereuse.');
	readln;

	if (pv_allie < pv_allie_max - 50) then
	begin
		pv_allie := pv_allie + 50;
	end
	else
	begin
		if (pv_allie < pv_allie_max) then
		begin
			pv_allie := pv_allie_max;
		end;
	end;

	if (pv_allie2 < pv_allie2_max - 50) then
	begin
		pv_allie2 := pv_allie2 + 50;
	end
	else
	begin
		if (pv_allie2 < pv_allie2_max) then
		begin
			pv_allie2 := pv_allie2_max;
		end;
	end;

	clrscr;
	affiche_histoire2_2;
	writeln('*50 PV ont ete rendus a tous vos Pokemons*');
	readln;

	clrscr;
	affiche_histoire2_2;
	writeln('Sacha : Je vais prevenir le Sensei de ton arrivee !!');
	readln;

END;

procedure histoire3;
//BUT realiser la troisieme phase d histoire du jeu
//ENTREE rien
//SORTIE le lancement d un combat avec les pokemons de l allie et l affichage de la troisieme histoire
BEGIN
	clrscr;
	affiche_histoire3;
	writeln('*Vous penetrez dans une grotte extremement sombre*');
	readln;

	clrscr;
	affiche_histoire3;
	writeln('*Apres quelques minutes de marche vous ne voyez plus rien, vous allumez donc votre lampe de poche*');
	readln;

	clrscr;
	affiche_histoire3;
	writeln('*Son faisceau n eclaire que tres peu la galerie*');
	readln;

	clrscr;
	affiche_histoire3;
	writeln('*Apres une petite periode de marche, vous trebuchez sur une pierre*');
	readln;

	clrscr;
	affiche_histoire3;
	writeln('*Alors que vous etes a terre, vous remarquez que cette pierre possede des bras*');
	readln;

	clrscr;
	affiche_histoire3;
	writeln('*Elle se retourne vers vous et s apprete a vous assener un coup*');
	readln;

	clrscr;
	affiche_histoire3;
	writeln('*Vos equipiers s interposent pour vous defendre*');
	readln;

	lvl_ennemi := 5;
	nom_ennemi := 'Racaillou';
	ennemi_stats;
	combat;

	clrscr;
	affiche_histoire3;
	writeln('*Apres ce combat, vous decouvrez que votre lampe ne fonctionne plus*');
	readln;

	clrscr;
	affiche_histoire3;
	writeln('*Vous avancez a tatons dans la caverne*');
	readln;

	clrscr;
	affiche_histoire3;
	writeln('*Finalement, vous appercevez la lumiere du jour au loin*');
	readln;

	clrscr;
	affiche_histoire3;
	writeln('*Vous sortez enfin de cette grotte et remarquez ce qui semble etre un dojo a quelques centaines de merdres*');
	readln;
END;

procedure histoire4;
//BUT realiser la quatrieme phase d histoire du jeu
//ENTREE rien
//SORTIE le lancement d un combat avec les pokemons de l allie et l affichage de la quatrieme histoire
BEGIN
	clrscr;
	affiche_histoire4;
	writeln('*Alors que vous vous avancez vers le dojo,*');
	writeln('*vous remarquez qu il est defendu par un Machoc.*');
	readln;

	clrscr;
	affiche_histoire4;
	writeln('*Vous voyant approcher le Pokemon vous fonce dessus*');
	readln;

	nom_ennemi := 'Machoc';
	lvl_ennemi := 7;
	ennemi_stats;
	combat;

	clrscr;
	affiche_histoire4;
	writeln('*Le machoc sonne semble avoir retrouve ses esprits*');
	readln;

	clrscr;
	affiche_histoire4;
	writeln('*Le dojo, si plein de vie actuellement vous semble totalement vide*');
	readln;

	clrscr;
	affiche_histoire4;
	writeln('*Machoc, inquiet, pointe une immense tour decoree d un grand R rouge*');
	writeln('*Que vous pouvez appercevoir au loin*');
	readln;

	clrscr;
	affiche_histoire4;
	writeln('*Votre telephone se met subitement a sonner*');
	readln;

	clrscr;
	affiche_histoire2_2;
	writeln('Sacha : Allo " + nom_joueur + ", le sensei ne repond plus, il a probablement');
	writeln('        ete capture par la Team Rocket, il faut que tu ailles l aider');
	readln;

	clrscr;
	affiche_histoire2_2;
	writeln('Sacha : Tu pourrais sans doute fouiller le dojo pour trouver des outils qui t aideront.');
	readln;

	clrscr;
	affiche_histoire4;
	writeln('*En fouillant le dojo vous trouvez differents remedes*');
	readln;

	clrscr;
	affiche_histoire4;
	writeln('*Tous les PV ont ete restaures*');
	readln;

	pv_allie := pv_allie_max;
	pv_allie2 := pv_allie2_max;
	pv_allie3 := pv_allie3_max;

	clrscr;
	affiche_histoire4;
	writeln('*5 potions ont ete rajoutees a votre inventaire*');
	nbr_potion := nbr_potion + 5;
	readln;

	clrscr;
	affiche_histoire4;
	writeln('*3 pokeballs ont ete rajoutees a votre inventaire*');
	nbr_pokeball := nbr_pokeball + 3;
	readln;
END;


procedure histoire5;

Var touche_ratata : integer;
	combat_ratata, valide_ratata : boolean;
BEGIN
	clrscr;
	affiche_histoire5;
	writeln('*Alors que vous vous apporchez de la tour,*');
	writeln('*Un garde vous interpelle.*');
	readln;

	clrscr;
	affiche_histoire5;
	writeln('Sbire : Tu n as rien a faire ici !');
	writeln('        Mon Ratata va te faire regretter de t etre aventure si loin');
	readln;

	dresseur := true;
	nom_ennemi := 'Ratata';
	lvl_ennemi := 7;
	ennemi_stats;
	combat;

	clrscr;
	affiche_histoire5;
	writeln('Sbire : AAAAH, tu es doué !');
	writeln('        Je risque gros a te laisser rentrer mais ton talent m a montre que tu es un dresseur digne de confiance');
	readln;

	clrscr;
	affiche_histoire5;
	writeln('Sbire : Tiens, prends ça pour ne pas te faire repérer');
	readln;

	clrscr;
	affiche_histoire5;
	writeln('*Le sbire vous donne son uniforme*');
	readln;

	clrscr;
	affiche_histoire5;
	writeln('Sbire : Nous avons enferme le Sensei au cinquieme etage, car il en savit trop ! Tu pourras le liberer grace a ma carte magnetique');
	writeln('        il en sait beaucoup plus que moi sur le projet Pascal il pourra sans doute t aider !');
	readln;

	clrscr;
	affiche_histoire5;
	writeln('*Alors que vous parcourrez le batiment, vous croisez ce qui semble etre une usine a Ratata*');
	readln;

	clrscr;
	affiche_histoire5;
	valide_ratata := false;
	while (valide_ratata = false) do
	begin
		writeln('*Voulez vous en affronter un ?*');
		writeln('1 : Oui');
		writeln('2 : Non');
		readln(touche_ratata);
		case touche_ratata of
			1:	begin
					valide_ratata := true;
					combat_ratata := true;
				end;
			2:	begin
					valide_ratata := true;
					combat_ratata := false;
				end;
		end;
	end;

	while (combat_ratata = true) do
	begin

		ennemi_stats;
		combat;

		valide_ratata := false;
		while (valide_ratata = false) do
		begin
			clrscr;
			writeln('Voulez-vous en affronter un autre ?');
			writeln('1 : OUI');
			writeln('2 : Non');
			readln(touche_ratata);
			case touche_ratata of
				1:	begin
						valide_ratata := true;
						combat_ratata := true;
					end;
				2:	begin
						valide_ratata := true;
						combat_ratata := false;
					end;
			end;
		end;
	end;

	clrscr;
	affiche_histoire5;
	writeln('*Alors que vous gravissez les marches, vous appercevez enfin le vieil homme*');
	readln;

	clrscr;
	affiche_histoire5;
	writeln('Sensei : Bonjour ' , nom_joueur , ' j attendais ton arrivee...');
	writeln('         J imagine que tu es la pour mettre fin au projet Pascal...');
	readln;

	clrscr;
	affiche_histoire5;
	writeln('Sensei : Tu trouveras leur chef sur l ile au centre du lac a cote d ici...');
	writeln('         Ne me prends pas avec toi tu risques d attirer l attention...');
	readln;

	clrscr;
	affiche_histoire5;
	writeln('*Vous quittez le batiment et vous dirigez tout droit vers le lieu indique*');
	readln;

END;

procedure histoire6;

VAR i :integer;


BEGIN
	clrscr;
	affiche_histoire6;
	writeln('*Alors que vous vous appertez a traverser le ponton qui mene a l ile centrale...*');
	readln;

	clrscr;
	affiche_histoire6;
	writeln('*Une armee de Magicarpe saute hors de l haut et vous bloque le passage, il vous faudra tous les affronter si voous voulez pouvoir passer*');
	readln;
	nom_ennemi := 'Magicarpe';
	lvl_ennemi := 10;
	for i:= 1 to 6 do
	begin
		ennemi_stats;
		combat;
	end;
	clrscr;
	affiche_histoire6;
	writeln('*Une fois les Magicarpes vaincus, vous reprenez votre route*');
	readln;

END;
procedure fin;
BEGIN

	clrscr;
	affiche_histoire6;
	writeln('*Alors que vous debarquez sur l ile, vous faites une surprenante rencontre...*');
	readln;

	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : Bien joue dresseur, tu as fait preuve de bravoure aujourd hui');
	readln;

	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : Il te reste cependant une derniere epreuve a passer');
	readln;

	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : Pour mettre fin aux troubles de la region, tu devras abattre Pascal,');
	writeln('             un langage de ma creation...');
	readln;

	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : Il s agit d un langage tellement complexe et ancien, que les plus grands');
	writeln('              cerveaux de notre monde sont devenu fou en essayant de le dechiffrer');
	readln;

	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : Les Pokemons ont bien ressenti l aura malefique de cette langue, d ou leur agressivite recente...');
	writeln('             S il te plait ' , nom_joueur , ' aide moi a mettre un terme a ce malefice');
	readln;

	nom_ennemi := 'Pascal';
	pv_ennemi := 300;
	pv_ennemi_max := 300;
	combat;

	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : Merci dresseur, maintenant que Pascal n est plus,');
	writeln('             Kanto sera enfin une region plus sure pour humains et Pokemons');
	readln;

	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : Quand nous serons de retour a Jadielle, je t offriai ton premeir Pokedex,');
	writeln('             tu l as bien merite !!');
	readln;

	clrscr;
	affiche_intro;
	writeln('Pr. Hatton : Grace a lui tu pourras referencer tous les pokemons de la region');
	writeln('             il sera pour toi un outil essentiel dans tres prochaines aventures');
	readln;

	clrscr;
	affiche_histoire6;
	writeln('*Vous rentrez chez vous apres cette aventure plus qu atypique*');
	writeln('*Cette journee fut mouvementee et ce ne sera certainement pas la Derniere...*');
	readln;


	clrscr;
	write('M');
	delay(10);
	write('E');
	delay(10);
	write('R');
	delay(10);
	write('C');
	delay(10);
	write('I ');
	delay(10);
	write(nom_joueur);
	delay(10);
	write(' D ');
	delay(10);
	write('A');
	delay(10);
	write('V');
	delay(10);
	write('O');
	delay(10);
	write('I');
	delay(10);
	write('R ');
	delay(10);
	write('J');
	delay(10);
	write('O');
	delay(10);
	write('U');
	delay(10);
	write('E');
	delay(10);
END;

var quit : boolean;
	touche_achat : integer;

procedure centre_pokemon;
BEGIN
	quit := false;
	while (quit = false) do
	begin
		clrscr;
		writeln('                      Bienvenue au centre Pokemon !');
		delay(100);
		writeln('Vous avez ' , argent , ' pokedollars');
		writeln('Que voulez vous faire ?');
		writeln('');
		writeln('1: Soigner tous (100Pk)');
		writeln('2 : Acheter Potion (50Pk)');
		writeln('3 : Acheter Pokeball(50Pk)');
		writeln('4 : Quitter');
		readln(touche_achat);

		case touche_achat of
			1:	begin
					if (argent >= 100) then
					begin
						argent := argent - 100;
						writeln('Achat valide');
					end
					else
					begin
						writeln('Vous n avez pas assez d argent');
					end;
				end;
			2:	begin
					if (argent >= 50) then
					begin
						argent := argent - 50;
						writeln('Achat valide');
					end
					else
					begin
						writeln('Vous n avez pas assez d argent');
					end;
				end;
			3:	begin
					if (argent >= 50) then
					begin
						argent := argent - 50;
						writeln('Achat valide');
					end
					else
					begin
						writeln('Vous n avez pas assez d argent');
					end;
				end;
			4:	begin
					quit := true;
					writeln('Au revoir !');
				end;
		end;
	end;
END;
BEGIN



	//Declaration des variables

	nom_joueur := '';
	argent := 0;

	


	//allie 1
	nom_allie := '';
	pv_allie_max := 0;
	pv_allie := 0;
	type_allie := '';
	xp_allie := 0;
	xp_allie_max := 0;
	lvl_allie := 0;
	atq_allie := 0;
	//allie 2
	nom_allie2 := '';
	pv_allie2_max := 0;
	pv_allie2 := 0;
	type_allie2 := '';
	xp_allie2 := 0;
	xp_allie2_max := 0;
	lvl_allie2 := 0;
	atq_allie2 := 0;


	//allie 3
	nom_allie3 := '';
	pv_allie3_max := 0;
	pv_allie3 := 0;
	type_allie3 := '';
	xp_allie3 := 0;
	xp_allie3_max := 0;
	lvl_allie3 := 0;
	atq_allie3 := 0;



	//ennemi les valeurs de ces variables changent a chaque combat
	nom_ennemi := '';
	lvl_ennemi := 0;
	ennemi_stats;





	PlaySound('pokethem.wav',0,SND_ASYNC); //lance la musique
	affi_start;
	PlaySound(nil, 0, SND_ASYNC); //arrete la musique

	dresseur := true;
	intro;
	pv_allie := pv_allie_max;

	dresseur := false;
	histoire1;

	dresseur := true;
	histoire2;

	dresseur := false;
	histoire3;

	histoire4;

	histoire5;





	dresseur:= true;
	fin;



	
END.

