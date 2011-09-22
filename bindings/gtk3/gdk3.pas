unit Gdk3;

{$MODE OBJFPC}{$H+}

{$PACKRECORDS C}
{$BITPACKING ON}
{$MODESWITCH DUPLICATELOCALS+}

{$LINKLIB libgdk-3.so.0}
interface
uses
  CTypes, GLib2, GModule2, GObject2, GdkPixbuf2, Gio2, Pango1, cairo1;

const
  Gdk3_library = 'libgdk-3.so.0';

  CURRENT_TIME = 0;
  KEY_0 = 48;
  KEY_1 = 49;
  KEY_2 = 50;
  KEY_3 = 51;
  KEY_3270_AltCursor = 64784;
  KEY_3270_Attn = 64782;
  KEY_3270_BackTab = 64773;
  KEY_3270_ChangeScreen = 64793;
  KEY_3270_Copy = 64789;
  KEY_3270_CursorBlink = 64783;
  KEY_3270_CursorSelect = 64796;
  KEY_3270_DeleteWord = 64794;
  KEY_3270_Duplicate = 64769;
  KEY_3270_Enter = 64798;
  KEY_3270_EraseEOF = 64774;
  KEY_3270_EraseInput = 64775;
  KEY_3270_ExSelect = 64795;
  KEY_3270_FieldMark = 64770;
  KEY_3270_Ident = 64787;
  KEY_3270_Jump = 64786;
  KEY_3270_KeyClick = 64785;
  KEY_3270_Left2 = 64772;
  KEY_3270_PA1 = 64778;
  KEY_3270_PA2 = 64779;
  KEY_3270_PA3 = 64780;
  KEY_3270_Play = 64790;
  KEY_3270_PrintScreen = 64797;
  KEY_3270_Quit = 64777;
  KEY_3270_Record = 64792;
  KEY_3270_Reset = 64776;
  KEY_3270_Right2 = 64771;
  KEY_3270_Rule = 64788;
  KEY_3270_Setup = 64791;
  KEY_3270_Test = 64781;
  KEY_4 = 52;
  KEY_5 = 53;
  KEY_6 = 54;
  KEY_7 = 55;
  KEY_8 = 56;
  KEY_9 = 57;
  KEY_A = 65;
  KEY_AE = 198;
  KEY_Aacute = 193;
  KEY_Abelowdot = 16785056;
  KEY_Abreve = 451;
  KEY_Abreveacute = 16785070;
  KEY_Abrevebelowdot = 16785078;
  KEY_Abrevegrave = 16785072;
  KEY_Abrevehook = 16785074;
  KEY_Abrevetilde = 16785076;
  KEY_AccessX_Enable = 65136;
  KEY_AccessX_Feedback_Enable = 65137;
  KEY_Acircumflex = 194;
  KEY_Acircumflexacute = 16785060;
  KEY_Acircumflexbelowdot = 16785068;
  KEY_Acircumflexgrave = 16785062;
  KEY_Acircumflexhook = 16785064;
  KEY_Acircumflextilde = 16785066;
  KEY_AddFavorite = 269025081;
  KEY_Adiaeresis = 196;
  KEY_Agrave = 192;
  KEY_Ahook = 16785058;
  KEY_Alt_L = 65513;
  KEY_Alt_R = 65514;
  KEY_Amacron = 960;
  KEY_Aogonek = 417;
  KEY_ApplicationLeft = 269025104;
  KEY_ApplicationRight = 269025105;
  KEY_Arabic_0 = 16778848;
  KEY_Arabic_1 = 16778849;
  KEY_Arabic_2 = 16778850;
  KEY_Arabic_3 = 16778851;
  KEY_Arabic_4 = 16778852;
  KEY_Arabic_5 = 16778853;
  KEY_Arabic_6 = 16778854;
  KEY_Arabic_7 = 16778855;
  KEY_Arabic_8 = 16778856;
  KEY_Arabic_9 = 16778857;
  KEY_Arabic_ain = 1497;
  KEY_Arabic_alef = 1479;
  KEY_Arabic_alefmaksura = 1513;
  KEY_Arabic_beh = 1480;
  KEY_Arabic_comma = 1452;
  KEY_Arabic_dad = 1494;
  KEY_Arabic_dal = 1487;
  KEY_Arabic_damma = 1519;
  KEY_Arabic_dammatan = 1516;
  KEY_Arabic_ddal = 16778888;
  KEY_Arabic_farsi_yeh = 16778956;
  KEY_Arabic_fatha = 1518;
  KEY_Arabic_fathatan = 1515;
  KEY_Arabic_feh = 1505;
  KEY_Arabic_fullstop = 16778964;
  KEY_Arabic_gaf = 16778927;
  KEY_Arabic_ghain = 1498;
  KEY_Arabic_ha = 1511;
  KEY_Arabic_hah = 1485;
  KEY_Arabic_hamza = 1473;
  KEY_Arabic_hamza_above = 16778836;
  KEY_Arabic_hamza_below = 16778837;
  KEY_Arabic_hamzaonalef = 1475;
  KEY_Arabic_hamzaonwaw = 1476;
  KEY_Arabic_hamzaonyeh = 1478;
  KEY_Arabic_hamzaunderalef = 1477;
  KEY_Arabic_heh = 1511;
  KEY_Arabic_heh_doachashmee = 16778942;
  KEY_Arabic_heh_goal = 16778945;
  KEY_Arabic_jeem = 1484;
  KEY_Arabic_jeh = 16778904;
  KEY_Arabic_kaf = 1507;
  KEY_Arabic_kasra = 1520;
  KEY_Arabic_kasratan = 1517;
  KEY_Arabic_keheh = 16778921;
  KEY_Arabic_khah = 1486;
  KEY_Arabic_lam = 1508;
  KEY_Arabic_madda_above = 16778835;
  KEY_Arabic_maddaonalef = 1474;
  KEY_Arabic_meem = 1509;
  KEY_Arabic_noon = 1510;
  KEY_Arabic_noon_ghunna = 16778938;
  KEY_Arabic_peh = 16778878;
  KEY_Arabic_percent = 16778858;
  KEY_Arabic_qaf = 1506;
  KEY_Arabic_question_mark = 1471;
  KEY_Arabic_ra = 1489;
  KEY_Arabic_rreh = 16778897;
  KEY_Arabic_sad = 1493;
  KEY_Arabic_seen = 1491;
  KEY_Arabic_semicolon = 1467;
  KEY_Arabic_shadda = 1521;
  KEY_Arabic_sheen = 1492;
  KEY_Arabic_sukun = 1522;
  KEY_Arabic_superscript_alef = 16778864;
  KEY_Arabic_switch = 65406;
  KEY_Arabic_tah = 1495;
  KEY_Arabic_tatweel = 1504;
  KEY_Arabic_tcheh = 16778886;
  KEY_Arabic_teh = 1482;
  KEY_Arabic_tehmarbuta = 1481;
  KEY_Arabic_thal = 1488;
  KEY_Arabic_theh = 1483;
  KEY_Arabic_tteh = 16778873;
  KEY_Arabic_veh = 16778916;
  KEY_Arabic_waw = 1512;
  KEY_Arabic_yeh = 1514;
  KEY_Arabic_yeh_baree = 16778962;
  KEY_Arabic_zah = 1496;
  KEY_Arabic_zain = 1490;
  KEY_Aring = 197;
  KEY_Armenian_AT = 16778552;
  KEY_Armenian_AYB = 16778545;
  KEY_Armenian_BEN = 16778546;
  KEY_Armenian_CHA = 16778569;
  KEY_Armenian_DA = 16778548;
  KEY_Armenian_DZA = 16778561;
  KEY_Armenian_E = 16778551;
  KEY_Armenian_FE = 16778582;
  KEY_Armenian_GHAT = 16778562;
  KEY_Armenian_GIM = 16778547;
  KEY_Armenian_HI = 16778565;
  KEY_Armenian_HO = 16778560;
  KEY_Armenian_INI = 16778555;
  KEY_Armenian_JE = 16778571;
  KEY_Armenian_KE = 16778580;
  KEY_Armenian_KEN = 16778559;
  KEY_Armenian_KHE = 16778557;
  KEY_Armenian_LYUN = 16778556;
  KEY_Armenian_MEN = 16778564;
  KEY_Armenian_NU = 16778566;
  KEY_Armenian_O = 16778581;
  KEY_Armenian_PE = 16778570;
  KEY_Armenian_PYUR = 16778579;
  KEY_Armenian_RA = 16778572;
  KEY_Armenian_RE = 16778576;
  KEY_Armenian_SE = 16778573;
  KEY_Armenian_SHA = 16778567;
  KEY_Armenian_TCHE = 16778563;
  KEY_Armenian_TO = 16778553;
  KEY_Armenian_TSA = 16778558;
  KEY_Armenian_TSO = 16778577;
  KEY_Armenian_TYUN = 16778575;
  KEY_Armenian_VEV = 16778574;
  KEY_Armenian_VO = 16778568;
  KEY_Armenian_VYUN = 16778578;
  KEY_Armenian_YECH = 16778549;
  KEY_Armenian_ZA = 16778550;
  KEY_Armenian_ZHE = 16778554;
  KEY_Armenian_accent = 16778587;
  KEY_Armenian_amanak = 16778588;
  KEY_Armenian_apostrophe = 16778586;
  KEY_Armenian_at__0 = 16778600;
  KEY_Armenian_ayb__0 = 16778593;
  KEY_Armenian_ben__0 = 16778594;
  KEY_Armenian_but = 16778589;
  KEY_Armenian_cha__0 = 16778617;
  KEY_Armenian_da__0 = 16778596;
  KEY_Armenian_dza__0 = 16778609;
  KEY_Armenian_e__0 = 16778599;
  KEY_Armenian_exclam = 16778588;
  KEY_Armenian_fe__0 = 16778630;
  KEY_Armenian_full_stop = 16778633;
  KEY_Armenian_ghat__0 = 16778610;
  KEY_Armenian_gim__0 = 16778595;
  KEY_Armenian_hi__0 = 16778613;
  KEY_Armenian_ho__0 = 16778608;
  KEY_Armenian_hyphen = 16778634;
  KEY_Armenian_ini__0 = 16778603;
  KEY_Armenian_je__0 = 16778619;
  KEY_Armenian_ke__0 = 16778628;
  KEY_Armenian_ken__0 = 16778607;
  KEY_Armenian_khe__0 = 16778605;
  KEY_Armenian_ligature_ew = 16778631;
  KEY_Armenian_lyun__0 = 16778604;
  KEY_Armenian_men__0 = 16778612;
  KEY_Armenian_nu__0 = 16778614;
  KEY_Armenian_o__0 = 16778629;
  KEY_Armenian_paruyk = 16778590;
  KEY_Armenian_pe__0 = 16778618;
  KEY_Armenian_pyur__0 = 16778627;
  KEY_Armenian_question = 16778590;
  KEY_Armenian_ra__0 = 16778620;
  KEY_Armenian_re__0 = 16778624;
  KEY_Armenian_se__0 = 16778621;
  KEY_Armenian_separation_mark = 16778589;
  KEY_Armenian_sha__0 = 16778615;
  KEY_Armenian_shesht = 16778587;
  KEY_Armenian_tche__0 = 16778611;
  KEY_Armenian_to__0 = 16778601;
  KEY_Armenian_tsa__0 = 16778606;
  KEY_Armenian_tso__0 = 16778625;
  KEY_Armenian_tyun__0 = 16778623;
  KEY_Armenian_verjaket = 16778633;
  KEY_Armenian_vev__0 = 16778622;
  KEY_Armenian_vo__0 = 16778616;
  KEY_Armenian_vyun__0 = 16778626;
  KEY_Armenian_yech__0 = 16778597;
  KEY_Armenian_yentamna = 16778634;
  KEY_Armenian_za__0 = 16778598;
  KEY_Armenian_zhe__0 = 16778602;
  KEY_Atilde = 195;
  KEY_AudibleBell_Enable = 65146;
  KEY_AudioCycleTrack = 269025179;
  KEY_AudioForward = 269025175;
  KEY_AudioLowerVolume = 269025041;
  KEY_AudioMedia = 269025074;
  KEY_AudioMute = 269025042;
  KEY_AudioNext = 269025047;
  KEY_AudioPause = 269025073;
  KEY_AudioPlay = 269025044;
  KEY_AudioPrev = 269025046;
  KEY_AudioRaiseVolume = 269025043;
  KEY_AudioRandomPlay = 269025177;
  KEY_AudioRecord = 269025052;
  KEY_AudioRepeat = 269025176;
  KEY_AudioRewind = 269025086;
  KEY_AudioStop = 269025045;
  KEY_Away = 269025165;
  KEY_B = 66;
  KEY_Babovedot = 16784898;
  KEY_Back = 269025062;
  KEY_BackForward = 269025087;
  KEY_BackSpace = 65288;
  KEY_Battery = 269025171;
  KEY_Begin = 65368;
  KEY_Blue = 269025190;
  KEY_Bluetooth = 269025172;
  KEY_Book = 269025106;
  KEY_BounceKeys_Enable = 65140;
  KEY_Break = 65387;
  KEY_BrightnessAdjust = 269025083;
  KEY_Byelorussian_SHORTU = 1726;
  KEY_Byelorussian_shortu__0 = 1710;
  KEY_C = 67;
  KEY_CD = 269025107;
  KEY_Cabovedot = 709;
  KEY_Cacute = 454;
  KEY_Calculator = 269025053;
  KEY_Calendar = 269025056;
  KEY_Cancel = 65385;
  KEY_Caps_Lock = 65509;
  KEY_Ccaron = 456;
  KEY_Ccedilla = 199;
  KEY_Ccircumflex = 710;
  KEY_Clear = 65291;
  KEY_ClearGrab = 269024801;
  KEY_Close = 269025110;
  KEY_Codeinput = 65335;
  KEY_ColonSign = 16785569;
  KEY_Community = 269025085;
  KEY_ContrastAdjust = 269025058;
  KEY_Control_L = 65507;
  KEY_Control_R = 65508;
  KEY_Copy = 269025111;
  KEY_CruzeiroSign = 16785570;
  KEY_Cut = 269025112;
  KEY_CycleAngle = 269025180;
  KEY_Cyrillic_A = 1761;
  KEY_Cyrillic_BE = 1762;
  KEY_Cyrillic_CHE = 1790;
  KEY_Cyrillic_CHE_descender = 16778422;
  KEY_Cyrillic_CHE_vertstroke = 16778424;
  KEY_Cyrillic_DE = 1764;
  KEY_Cyrillic_DZHE = 1727;
  KEY_Cyrillic_E = 1788;
  KEY_Cyrillic_EF = 1766;
  KEY_Cyrillic_EL = 1772;
  KEY_Cyrillic_EM = 1773;
  KEY_Cyrillic_EN = 1774;
  KEY_Cyrillic_EN_descender = 16778402;
  KEY_Cyrillic_ER = 1778;
  KEY_Cyrillic_ES = 1779;
  KEY_Cyrillic_GHE = 1767;
  KEY_Cyrillic_GHE_bar = 16778386;
  KEY_Cyrillic_HA = 1768;
  KEY_Cyrillic_HARDSIGN = 1791;
  KEY_Cyrillic_HA_descender = 16778418;
  KEY_Cyrillic_I = 1769;
  KEY_Cyrillic_IE = 1765;
  KEY_Cyrillic_IO = 1715;
  KEY_Cyrillic_I_macron = 16778466;
  KEY_Cyrillic_JE = 1720;
  KEY_Cyrillic_KA = 1771;
  KEY_Cyrillic_KA_descender = 16778394;
  KEY_Cyrillic_KA_vertstroke = 16778396;
  KEY_Cyrillic_LJE = 1721;
  KEY_Cyrillic_NJE = 1722;
  KEY_Cyrillic_O = 1775;
  KEY_Cyrillic_O_bar = 16778472;
  KEY_Cyrillic_PE = 1776;
  KEY_Cyrillic_SCHWA = 16778456;
  KEY_Cyrillic_SHA = 1787;
  KEY_Cyrillic_SHCHA = 1789;
  KEY_Cyrillic_SHHA = 16778426;
  KEY_Cyrillic_SHORTI = 1770;
  KEY_Cyrillic_SOFTSIGN = 1784;
  KEY_Cyrillic_TE = 1780;
  KEY_Cyrillic_TSE = 1763;
  KEY_Cyrillic_U = 1781;
  KEY_Cyrillic_U_macron = 16778478;
  KEY_Cyrillic_U_straight = 16778414;
  KEY_Cyrillic_U_straight_bar = 16778416;
  KEY_Cyrillic_VE = 1783;
  KEY_Cyrillic_YA = 1777;
  KEY_Cyrillic_YERU = 1785;
  KEY_Cyrillic_YU = 1760;
  KEY_Cyrillic_ZE = 1786;
  KEY_Cyrillic_ZHE = 1782;
  KEY_Cyrillic_ZHE_descender = 16778390;
  KEY_Cyrillic_a__0 = 1729;
  KEY_Cyrillic_be__0 = 1730;
  KEY_Cyrillic_che__0 = 1758;
  KEY_Cyrillic_che_descender__0 = 16778423;
  KEY_Cyrillic_che_vertstroke__0 = 16778425;
  KEY_Cyrillic_de__0 = 1732;
  KEY_Cyrillic_dzhe__0 = 1711;
  KEY_Cyrillic_e__0 = 1756;
  KEY_Cyrillic_ef__0 = 1734;
  KEY_Cyrillic_el__0 = 1740;
  KEY_Cyrillic_em__0 = 1741;
  KEY_Cyrillic_en__0 = 1742;
  KEY_Cyrillic_en_descender__0 = 16778403;
  KEY_Cyrillic_er__0 = 1746;
  KEY_Cyrillic_es__0 = 1747;
  KEY_Cyrillic_ghe__0 = 1735;
  KEY_Cyrillic_ghe_bar__0 = 16778387;
  KEY_Cyrillic_ha__0 = 1736;
  KEY_Cyrillic_ha_descender__0 = 16778419;
  KEY_Cyrillic_hardsign__0 = 1759;
  KEY_Cyrillic_i__0 = 1737;
  KEY_Cyrillic_i_macron__0 = 16778467;
  KEY_Cyrillic_ie__0 = 1733;
  KEY_Cyrillic_io__0 = 1699;
  KEY_Cyrillic_je__0 = 1704;
  KEY_Cyrillic_ka__0 = 1739;
  KEY_Cyrillic_ka_descender__0 = 16778395;
  KEY_Cyrillic_ka_vertstroke__0 = 16778397;
  KEY_Cyrillic_lje__0 = 1705;
  KEY_Cyrillic_nje__0 = 1706;
  KEY_Cyrillic_o__0 = 1743;
  KEY_Cyrillic_o_bar__0 = 16778473;
  KEY_Cyrillic_pe__0 = 1744;
  KEY_Cyrillic_schwa__0 = 16778457;
  KEY_Cyrillic_sha__0 = 1755;
  KEY_Cyrillic_shcha__0 = 1757;
  KEY_Cyrillic_shha__0 = 16778427;
  KEY_Cyrillic_shorti__0 = 1738;
  KEY_Cyrillic_softsign__0 = 1752;
  KEY_Cyrillic_te__0 = 1748;
  KEY_Cyrillic_tse__0 = 1731;
  KEY_Cyrillic_u__0 = 1749;
  KEY_Cyrillic_u_macron__0 = 16778479;
  KEY_Cyrillic_u_straight__0 = 16778415;
  KEY_Cyrillic_u_straight_bar__0 = 16778417;
  KEY_Cyrillic_ve__0 = 1751;
  KEY_Cyrillic_ya__0 = 1745;
  KEY_Cyrillic_yeru__0 = 1753;
  KEY_Cyrillic_yu__0 = 1728;
  KEY_Cyrillic_ze__0 = 1754;
  KEY_Cyrillic_zhe__0 = 1750;
  KEY_Cyrillic_zhe_descender__0 = 16778391;
  KEY_D = 68;
  KEY_DOS = 269025114;
  KEY_Dabovedot = 16784906;
  KEY_Dcaron = 463;
  KEY_Delete = 65535;
  KEY_Display = 269025113;
  KEY_Documents = 269025115;
  KEY_DongSign = 16785579;
  KEY_Down = 65364;
  KEY_Dstroke = 464;
  KEY_E = 69;
  KEY_ENG = 957;
  KEY_ETH = 208;
  KEY_Eabovedot = 972;
  KEY_Eacute = 201;
  KEY_Ebelowdot = 16785080;
  KEY_Ecaron = 460;
  KEY_Ecircumflex = 202;
  KEY_Ecircumflexacute = 16785086;
  KEY_Ecircumflexbelowdot = 16785094;
  KEY_Ecircumflexgrave = 16785088;
  KEY_Ecircumflexhook = 16785090;
  KEY_Ecircumflextilde = 16785092;
  KEY_EcuSign = 16785568;
  KEY_Ediaeresis = 203;
  KEY_Egrave = 200;
  KEY_Ehook = 16785082;
  KEY_Eisu_Shift = 65327;
  KEY_Eisu_toggle = 65328;
  KEY_Eject = 269025068;
  KEY_Emacron = 938;
  KEY_End = 65367;
  KEY_Eogonek = 458;
  KEY_Escape = 65307;
  KEY_Eth__0 = 208;
  KEY_Etilde = 16785084;
  KEY_EuroSign = 8364;
  KEY_Excel = 269025116;
  KEY_Execute = 65378;
  KEY_Explorer = 269025117;
  KEY_F = 70;
  KEY_F1 = 65470;
  KEY_F10 = 65479;
  KEY_F11 = 65480;
  KEY_F12 = 65481;
  KEY_F13 = 65482;
  KEY_F14 = 65483;
  KEY_F15 = 65484;
  KEY_F16 = 65485;
  KEY_F17 = 65486;
  KEY_F18 = 65487;
  KEY_F19 = 65488;
  KEY_F2 = 65471;
  KEY_F20 = 65489;
  KEY_F21 = 65490;
  KEY_F22 = 65491;
  KEY_F23 = 65492;
  KEY_F24 = 65493;
  KEY_F25 = 65494;
  KEY_F26 = 65495;
  KEY_F27 = 65496;
  KEY_F28 = 65497;
  KEY_F29 = 65498;
  KEY_F3 = 65472;
  KEY_F30 = 65499;
  KEY_F31 = 65500;
  KEY_F32 = 65501;
  KEY_F33 = 65502;
  KEY_F34 = 65503;
  KEY_F35 = 65504;
  KEY_F4 = 65473;
  KEY_F5 = 65474;
  KEY_F6 = 65475;
  KEY_F7 = 65476;
  KEY_F8 = 65477;
  KEY_F9 = 65478;
  KEY_FFrancSign = 16785571;
  KEY_Fabovedot = 16784926;
  KEY_Farsi_0 = 16778992;
  KEY_Farsi_1 = 16778993;
  KEY_Farsi_2 = 16778994;
  KEY_Farsi_3 = 16778995;
  KEY_Farsi_4 = 16778996;
  KEY_Farsi_5 = 16778997;
  KEY_Farsi_6 = 16778998;
  KEY_Farsi_7 = 16778999;
  KEY_Farsi_8 = 16779000;
  KEY_Farsi_9 = 16779001;
  KEY_Farsi_yeh = 16778956;
  KEY_Favorites = 269025072;
  KEY_Finance = 269025084;
  KEY_Find = 65384;
  KEY_First_Virtual_Screen = 65232;
  KEY_Forward = 269025063;
  KEY_FrameBack = 269025181;
  KEY_FrameForward = 269025182;
  KEY_G = 71;
  KEY_Gabovedot = 725;
  KEY_Game = 269025118;
  KEY_Gbreve = 683;
  KEY_Gcaron = 16777702;
  KEY_Gcedilla = 939;
  KEY_Gcircumflex = 728;
  KEY_Georgian_an = 16781520;
  KEY_Georgian_ban = 16781521;
  KEY_Georgian_can = 16781546;
  KEY_Georgian_char = 16781549;
  KEY_Georgian_chin = 16781545;
  KEY_Georgian_cil = 16781548;
  KEY_Georgian_don = 16781523;
  KEY_Georgian_en = 16781524;
  KEY_Georgian_fi = 16781558;
  KEY_Georgian_gan = 16781522;
  KEY_Georgian_ghan = 16781542;
  KEY_Georgian_hae = 16781552;
  KEY_Georgian_har = 16781556;
  KEY_Georgian_he = 16781553;
  KEY_Georgian_hie = 16781554;
  KEY_Georgian_hoe = 16781557;
  KEY_Georgian_in = 16781528;
  KEY_Georgian_jhan = 16781551;
  KEY_Georgian_jil = 16781547;
  KEY_Georgian_kan = 16781529;
  KEY_Georgian_khar = 16781541;
  KEY_Georgian_las = 16781530;
  KEY_Georgian_man = 16781531;
  KEY_Georgian_nar = 16781532;
  KEY_Georgian_on = 16781533;
  KEY_Georgian_par = 16781534;
  KEY_Georgian_phar = 16781540;
  KEY_Georgian_qar = 16781543;
  KEY_Georgian_rae = 16781536;
  KEY_Georgian_san = 16781537;
  KEY_Georgian_shin = 16781544;
  KEY_Georgian_tan = 16781527;
  KEY_Georgian_tar = 16781538;
  KEY_Georgian_un = 16781539;
  KEY_Georgian_vin = 16781525;
  KEY_Georgian_we = 16781555;
  KEY_Georgian_xan = 16781550;
  KEY_Georgian_zen = 16781526;
  KEY_Georgian_zhar = 16781535;
  KEY_Go = 269025119;
  KEY_Greek_ALPHA = 1985;
  KEY_Greek_ALPHAaccent = 1953;
  KEY_Greek_BETA = 1986;
  KEY_Greek_CHI = 2007;
  KEY_Greek_DELTA = 1988;
  KEY_Greek_EPSILON = 1989;
  KEY_Greek_EPSILONaccent = 1954;
  KEY_Greek_ETA = 1991;
  KEY_Greek_ETAaccent = 1955;
  KEY_Greek_GAMMA = 1987;
  KEY_Greek_IOTA = 1993;
  KEY_Greek_IOTAaccent = 1956;
  KEY_Greek_IOTAdiaeresis = 1957;
  KEY_Greek_IOTAdieresis = 1957;
  KEY_Greek_KAPPA = 1994;
  KEY_Greek_LAMBDA = 1995;
  KEY_Greek_LAMDA = 1995;
  KEY_Greek_MU = 1996;
  KEY_Greek_NU = 1997;
  KEY_Greek_OMEGA = 2009;
  KEY_Greek_OMEGAaccent = 1963;
  KEY_Greek_OMICRON = 1999;
  KEY_Greek_OMICRONaccent = 1959;
  KEY_Greek_PHI = 2006;
  KEY_Greek_PI = 2000;
  KEY_Greek_PSI = 2008;
  KEY_Greek_RHO = 2001;
  KEY_Greek_SIGMA = 2002;
  KEY_Greek_TAU = 2004;
  KEY_Greek_THETA = 1992;
  KEY_Greek_UPSILON = 2005;
  KEY_Greek_UPSILONaccent = 1960;
  KEY_Greek_UPSILONdieresis = 1961;
  KEY_Greek_XI = 1998;
  KEY_Greek_ZETA = 1990;
  KEY_Greek_accentdieresis = 1966;
  KEY_Greek_alpha__0 = 2017;
  KEY_Greek_alphaaccent__0 = 1969;
  KEY_Greek_beta__0 = 2018;
  KEY_Greek_chi__0 = 2039;
  KEY_Greek_delta__0 = 2020;
  KEY_Greek_epsilon__0 = 2021;
  KEY_Greek_epsilonaccent__0 = 1970;
  KEY_Greek_eta__0 = 2023;
  KEY_Greek_etaaccent__0 = 1971;
  KEY_Greek_finalsmallsigma = 2035;
  KEY_Greek_gamma__0 = 2019;
  KEY_Greek_horizbar = 1967;
  KEY_Greek_iota__0 = 2025;
  KEY_Greek_iotaaccent__0 = 1972;
  KEY_Greek_iotaaccentdieresis = 1974;
  KEY_Greek_iotadieresis__0 = 1973;
  KEY_Greek_kappa__0 = 2026;
  KEY_Greek_lambda__0 = 2027;
  KEY_Greek_lamda__0 = 2027;
  KEY_Greek_mu__0 = 2028;
  KEY_Greek_nu__0 = 2029;
  KEY_Greek_omega__0 = 2041;
  KEY_Greek_omegaaccent__0 = 1979;
  KEY_Greek_omicron__0 = 2031;
  KEY_Greek_omicronaccent__0 = 1975;
  KEY_Greek_phi__0 = 2038;
  KEY_Greek_pi__0 = 2032;
  KEY_Greek_psi__0 = 2040;
  KEY_Greek_rho__0 = 2033;
  KEY_Greek_sigma__0 = 2034;
  KEY_Greek_switch = 65406;
  KEY_Greek_tau__0 = 2036;
  KEY_Greek_theta__0 = 2024;
  KEY_Greek_upsilon__0 = 2037;
  KEY_Greek_upsilonaccent__0 = 1976;
  KEY_Greek_upsilonaccentdieresis = 1978;
  KEY_Greek_upsilondieresis__0 = 1977;
  KEY_Greek_xi__0 = 2030;
  KEY_Greek_zeta__0 = 2022;
  KEY_Green = 269025188;
  KEY_H = 72;
  KEY_Hangul = 65329;
  KEY_Hangul_A = 3775;
  KEY_Hangul_AE = 3776;
  KEY_Hangul_AraeA = 3830;
  KEY_Hangul_AraeAE = 3831;
  KEY_Hangul_Banja = 65337;
  KEY_Hangul_Cieuc = 3770;
  KEY_Hangul_Codeinput = 65335;
  KEY_Hangul_Dikeud = 3751;
  KEY_Hangul_E = 3780;
  KEY_Hangul_EO = 3779;
  KEY_Hangul_EU = 3793;
  KEY_Hangul_End = 65331;
  KEY_Hangul_Hanja = 65332;
  KEY_Hangul_Hieuh = 3774;
  KEY_Hangul_I = 3795;
  KEY_Hangul_Ieung = 3767;
  KEY_Hangul_J_Cieuc = 3818;
  KEY_Hangul_J_Dikeud = 3802;
  KEY_Hangul_J_Hieuh = 3822;
  KEY_Hangul_J_Ieung = 3816;
  KEY_Hangul_J_Jieuj = 3817;
  KEY_Hangul_J_Khieuq = 3819;
  KEY_Hangul_J_Kiyeog = 3796;
  KEY_Hangul_J_KiyeogSios = 3798;
  KEY_Hangul_J_KkogjiDalrinIeung = 3833;
  KEY_Hangul_J_Mieum = 3811;
  KEY_Hangul_J_Nieun = 3799;
  KEY_Hangul_J_NieunHieuh = 3801;
  KEY_Hangul_J_NieunJieuj = 3800;
  KEY_Hangul_J_PanSios = 3832;
  KEY_Hangul_J_Phieuf = 3821;
  KEY_Hangul_J_Pieub = 3812;
  KEY_Hangul_J_PieubSios = 3813;
  KEY_Hangul_J_Rieul = 3803;
  KEY_Hangul_J_RieulHieuh = 3810;
  KEY_Hangul_J_RieulKiyeog = 3804;
  KEY_Hangul_J_RieulMieum = 3805;
  KEY_Hangul_J_RieulPhieuf = 3809;
  KEY_Hangul_J_RieulPieub = 3806;
  KEY_Hangul_J_RieulSios = 3807;
  KEY_Hangul_J_RieulTieut = 3808;
  KEY_Hangul_J_Sios = 3814;
  KEY_Hangul_J_SsangKiyeog = 3797;
  KEY_Hangul_J_SsangSios = 3815;
  KEY_Hangul_J_Tieut = 3820;
  KEY_Hangul_J_YeorinHieuh = 3834;
  KEY_Hangul_Jamo = 65333;
  KEY_Hangul_Jeonja = 65336;
  KEY_Hangul_Jieuj = 3768;
  KEY_Hangul_Khieuq = 3771;
  KEY_Hangul_Kiyeog = 3745;
  KEY_Hangul_KiyeogSios = 3747;
  KEY_Hangul_KkogjiDalrinIeung = 3827;
  KEY_Hangul_Mieum = 3761;
  KEY_Hangul_MultipleCandidate = 65341;
  KEY_Hangul_Nieun = 3748;
  KEY_Hangul_NieunHieuh = 3750;
  KEY_Hangul_NieunJieuj = 3749;
  KEY_Hangul_O = 3783;
  KEY_Hangul_OE = 3786;
  KEY_Hangul_PanSios = 3826;
  KEY_Hangul_Phieuf = 3773;
  KEY_Hangul_Pieub = 3762;
  KEY_Hangul_PieubSios = 3764;
  KEY_Hangul_PostHanja = 65339;
  KEY_Hangul_PreHanja = 65338;
  KEY_Hangul_PreviousCandidate = 65342;
  KEY_Hangul_Rieul = 3753;
  KEY_Hangul_RieulHieuh = 3760;
  KEY_Hangul_RieulKiyeog = 3754;
  KEY_Hangul_RieulMieum = 3755;
  KEY_Hangul_RieulPhieuf = 3759;
  KEY_Hangul_RieulPieub = 3756;
  KEY_Hangul_RieulSios = 3757;
  KEY_Hangul_RieulTieut = 3758;
  KEY_Hangul_RieulYeorinHieuh = 3823;
  KEY_Hangul_Romaja = 65334;
  KEY_Hangul_SingleCandidate = 65340;
  KEY_Hangul_Sios = 3765;
  KEY_Hangul_Special = 65343;
  KEY_Hangul_SsangDikeud = 3752;
  KEY_Hangul_SsangJieuj = 3769;
  KEY_Hangul_SsangKiyeog = 3746;
  KEY_Hangul_SsangPieub = 3763;
  KEY_Hangul_SsangSios = 3766;
  KEY_Hangul_Start = 65330;
  KEY_Hangul_SunkyeongeumMieum = 3824;
  KEY_Hangul_SunkyeongeumPhieuf = 3828;
  KEY_Hangul_SunkyeongeumPieub = 3825;
  KEY_Hangul_Tieut = 3772;
  KEY_Hangul_U = 3788;
  KEY_Hangul_WA = 3784;
  KEY_Hangul_WAE = 3785;
  KEY_Hangul_WE = 3790;
  KEY_Hangul_WEO = 3789;
  KEY_Hangul_WI = 3791;
  KEY_Hangul_YA = 3777;
  KEY_Hangul_YAE = 3778;
  KEY_Hangul_YE = 3782;
  KEY_Hangul_YEO = 3781;
  KEY_Hangul_YI = 3794;
  KEY_Hangul_YO = 3787;
  KEY_Hangul_YU = 3792;
  KEY_Hangul_YeorinHieuh = 3829;
  KEY_Hangul_switch = 65406;
  KEY_Hankaku = 65321;
  KEY_Hcircumflex = 678;
  KEY_Hebrew_switch = 65406;
  KEY_Help = 65386;
  KEY_Henkan = 65315;
  KEY_Henkan_Mode = 65315;
  KEY_Hibernate = 269025192;
  KEY_Hiragana = 65317;
  KEY_Hiragana_Katakana = 65319;
  KEY_History = 269025079;
  KEY_Home = 65360;
  KEY_HomePage = 269025048;
  KEY_HotLinks = 269025082;
  KEY_Hstroke = 673;
  KEY_Hyper_L = 65517;
  KEY_Hyper_R = 65518;
  KEY_I = 73;
  KEY_ISO_Center_Object = 65075;
  KEY_ISO_Continuous_Underline = 65072;
  KEY_ISO_Discontinuous_Underline = 65073;
  KEY_ISO_Emphasize = 65074;
  KEY_ISO_Enter = 65076;
  KEY_ISO_Fast_Cursor_Down = 65071;
  KEY_ISO_Fast_Cursor_Left = 65068;
  KEY_ISO_Fast_Cursor_Right = 65069;
  KEY_ISO_Fast_Cursor_Up = 65070;
  KEY_ISO_First_Group = 65036;
  KEY_ISO_First_Group_Lock = 65037;
  KEY_ISO_Group_Latch = 65030;
  KEY_ISO_Group_Lock = 65031;
  KEY_ISO_Group_Shift = 65406;
  KEY_ISO_Last_Group = 65038;
  KEY_ISO_Last_Group_Lock = 65039;
  KEY_ISO_Left_Tab = 65056;
  KEY_ISO_Level2_Latch = 65026;
  KEY_ISO_Level3_Latch = 65028;
  KEY_ISO_Level3_Lock = 65029;
  KEY_ISO_Level3_Shift = 65027;
  KEY_ISO_Level5_Latch = 65042;
  KEY_ISO_Level5_Lock = 65043;
  KEY_ISO_Level5_Shift = 65041;
  KEY_ISO_Lock = 65025;
  KEY_ISO_Move_Line_Down = 65058;
  KEY_ISO_Move_Line_Up = 65057;
  KEY_ISO_Next_Group = 65032;
  KEY_ISO_Next_Group_Lock = 65033;
  KEY_ISO_Partial_Line_Down = 65060;
  KEY_ISO_Partial_Line_Up = 65059;
  KEY_ISO_Partial_Space_Left = 65061;
  KEY_ISO_Partial_Space_Right = 65062;
  KEY_ISO_Prev_Group = 65034;
  KEY_ISO_Prev_Group_Lock = 65035;
  KEY_ISO_Release_Both_Margins = 65067;
  KEY_ISO_Release_Margin_Left = 65065;
  KEY_ISO_Release_Margin_Right = 65066;
  KEY_ISO_Set_Margin_Left = 65063;
  KEY_ISO_Set_Margin_Right = 65064;
  KEY_Iabovedot = 681;
  KEY_Iacute = 205;
  KEY_Ibelowdot = 16785098;
  KEY_Ibreve = 16777516;
  KEY_Icircumflex = 206;
  KEY_Idiaeresis = 207;
  KEY_Igrave = 204;
  KEY_Ihook = 16785096;
  KEY_Imacron = 975;
  KEY_Insert = 65379;
  KEY_Iogonek = 967;
  KEY_Itilde = 933;
  KEY_J = 74;
  KEY_Jcircumflex = 684;
  KEY_K = 75;
  KEY_KP_0 = 65456;
  KEY_KP_1 = 65457;
  KEY_KP_2 = 65458;
  KEY_KP_3 = 65459;
  KEY_KP_4 = 65460;
  KEY_KP_5 = 65461;
  KEY_KP_6 = 65462;
  KEY_KP_7 = 65463;
  KEY_KP_8 = 65464;
  KEY_KP_9 = 65465;
  KEY_KP_Add = 65451;
  KEY_KP_Begin = 65437;
  KEY_KP_Decimal = 65454;
  KEY_KP_Delete = 65439;
  KEY_KP_Divide = 65455;
  KEY_KP_Down = 65433;
  KEY_KP_End = 65436;
  KEY_KP_Enter = 65421;
  KEY_KP_Equal = 65469;
  KEY_KP_F1 = 65425;
  KEY_KP_F2 = 65426;
  KEY_KP_F3 = 65427;
  KEY_KP_F4 = 65428;
  KEY_KP_Home = 65429;
  KEY_KP_Insert = 65438;
  KEY_KP_Left = 65430;
  KEY_KP_Multiply = 65450;
  KEY_KP_Next = 65435;
  KEY_KP_Page_Down = 65435;
  KEY_KP_Page_Up = 65434;
  KEY_KP_Prior = 65434;
  KEY_KP_Right = 65432;
  KEY_KP_Separator = 65452;
  KEY_KP_Space = 65408;
  KEY_KP_Subtract = 65453;
  KEY_KP_Tab = 65417;
  KEY_KP_Up = 65431;
  KEY_Kana_Lock = 65325;
  KEY_Kana_Shift = 65326;
  KEY_Kanji = 65313;
  KEY_Kanji_Bangou = 65335;
  KEY_Katakana = 65318;
  KEY_KbdBrightnessDown = 269025030;
  KEY_KbdBrightnessUp = 269025029;
  KEY_KbdLightOnOff = 269025028;
  KEY_Kcedilla = 979;
  KEY_Korean_Won = 3839;
  KEY_L = 76;
  KEY_L1 = 65480;
  KEY_L10 = 65489;
  KEY_L2 = 65481;
  KEY_L3 = 65482;
  KEY_L4 = 65483;
  KEY_L5 = 65484;
  KEY_L6 = 65485;
  KEY_L7 = 65486;
  KEY_L8 = 65487;
  KEY_L9 = 65488;
  KEY_Lacute = 453;
  KEY_Last_Virtual_Screen = 65236;
  KEY_Launch0 = 269025088;
  KEY_Launch1 = 269025089;
  KEY_Launch2 = 269025090;
  KEY_Launch3 = 269025091;
  KEY_Launch4 = 269025092;
  KEY_Launch5 = 269025093;
  KEY_Launch6 = 269025094;
  KEY_Launch7 = 269025095;
  KEY_Launch8 = 269025096;
  KEY_Launch9 = 269025097;
  KEY_LaunchA = 269025098;
  KEY_LaunchB = 269025099;
  KEY_LaunchC = 269025100;
  KEY_LaunchD = 269025101;
  KEY_LaunchE = 269025102;
  KEY_LaunchF = 269025103;
  KEY_Lbelowdot = 16784950;
  KEY_Lcaron = 421;
  KEY_Lcedilla = 934;
  KEY_Left = 65361;
  KEY_LightBulb = 269025077;
  KEY_Linefeed = 65290;
  KEY_LiraSign = 16785572;
  KEY_LogOff = 269025121;
  KEY_Lstroke = 419;
  KEY_M = 77;
  KEY_Mabovedot = 16784960;
  KEY_Macedonia_DSE = 1717;
  KEY_Macedonia_GJE = 1714;
  KEY_Macedonia_KJE = 1724;
  KEY_Macedonia_dse__0 = 1701;
  KEY_Macedonia_gje__0 = 1698;
  KEY_Macedonia_kje__0 = 1708;
  KEY_Mae_Koho = 65342;
  KEY_Mail = 269025049;
  KEY_MailForward = 269025168;
  KEY_Market = 269025122;
  KEY_Massyo = 65324;
  KEY_Meeting = 269025123;
  KEY_Memo = 269025054;
  KEY_Menu = 65383;
  KEY_MenuKB = 269025125;
  KEY_MenuPB = 269025126;
  KEY_Messenger = 269025166;
  KEY_Meta_L = 65511;
  KEY_Meta_R = 65512;
  KEY_MillSign = 16785573;
  KEY_ModeLock = 269025025;
  KEY_Mode_switch = 65406;
  KEY_MonBrightnessDown = 269025027;
  KEY_MonBrightnessUp = 269025026;
  KEY_MouseKeys_Accel_Enable = 65143;
  KEY_MouseKeys_Enable = 65142;
  KEY_Muhenkan = 65314;
  KEY_Multi_key = 65312;
  KEY_MultipleCandidate = 65341;
  KEY_Music = 269025170;
  KEY_MyComputer = 269025075;
  KEY_MySites = 269025127;
  KEY_N = 78;
  KEY_Nacute = 465;
  KEY_NairaSign = 16785574;
  KEY_Ncaron = 466;
  KEY_Ncedilla = 977;
  KEY_New = 269025128;
  KEY_NewSheqelSign = 16785578;
  KEY_News = 269025129;
  KEY_Next = 65366;
  KEY_Next_VMode = 269024802;
  KEY_Next_Virtual_Screen = 65234;
  KEY_Ntilde = 209;
  KEY_Num_Lock = 65407;
  KEY_O = 79;
  KEY_OE = 5052;
  KEY_Oacute = 211;
  KEY_Obarred = 16777631;
  KEY_Obelowdot = 16785100;
  KEY_Ocaron = 16777681;
  KEY_Ocircumflex = 212;
  KEY_Ocircumflexacute = 16785104;
  KEY_Ocircumflexbelowdot = 16785112;
  KEY_Ocircumflexgrave = 16785106;
  KEY_Ocircumflexhook = 16785108;
  KEY_Ocircumflextilde = 16785110;
  KEY_Odiaeresis = 214;
  KEY_Odoubleacute = 469;
  KEY_OfficeHome = 269025130;
  KEY_Ograve = 210;
  KEY_Ohook = 16785102;
  KEY_Ohorn = 16777632;
  KEY_Ohornacute = 16785114;
  KEY_Ohornbelowdot = 16785122;
  KEY_Ohorngrave = 16785116;
  KEY_Ohornhook = 16785118;
  KEY_Ohorntilde = 16785120;
  KEY_Omacron = 978;
  KEY_Ooblique = 216;
  KEY_Open = 269025131;
  KEY_OpenURL = 269025080;
  KEY_Option = 269025132;
  KEY_Oslash = 216;
  KEY_Otilde = 213;
  KEY_Overlay1_Enable = 65144;
  KEY_Overlay2_Enable = 65145;
  KEY_P = 80;
  KEY_Pabovedot = 16784982;
  KEY_Page_Down = 65366;
  KEY_Page_Up = 65365;
  KEY_Paste = 269025133;
  KEY_Pause = 65299;
  KEY_PesetaSign = 16785575;
  KEY_Phone = 269025134;
  KEY_Pictures = 269025169;
  KEY_Pointer_Accelerate = 65274;
  KEY_Pointer_Button1 = 65257;
  KEY_Pointer_Button2 = 65258;
  KEY_Pointer_Button3 = 65259;
  KEY_Pointer_Button4 = 65260;
  KEY_Pointer_Button5 = 65261;
  KEY_Pointer_Button_Dflt = 65256;
  KEY_Pointer_DblClick1 = 65263;
  KEY_Pointer_DblClick2 = 65264;
  KEY_Pointer_DblClick3 = 65265;
  KEY_Pointer_DblClick4 = 65266;
  KEY_Pointer_DblClick5 = 65267;
  KEY_Pointer_DblClick_Dflt = 65262;
  KEY_Pointer_DfltBtnNext = 65275;
  KEY_Pointer_DfltBtnPrev = 65276;
  KEY_Pointer_Down = 65251;
  KEY_Pointer_DownLeft = 65254;
  KEY_Pointer_DownRight = 65255;
  KEY_Pointer_Drag1 = 65269;
  KEY_Pointer_Drag2 = 65270;
  KEY_Pointer_Drag3 = 65271;
  KEY_Pointer_Drag4 = 65272;
  KEY_Pointer_Drag5 = 65277;
  KEY_Pointer_Drag_Dflt = 65268;
  KEY_Pointer_EnableKeys = 65273;
  KEY_Pointer_Left = 65248;
  KEY_Pointer_Right = 65249;
  KEY_Pointer_Up = 65250;
  KEY_Pointer_UpLeft = 65252;
  KEY_Pointer_UpRight = 65253;
  KEY_PowerDown = 269025057;
  KEY_PowerOff = 269025066;
  KEY_Prev_VMode = 269024803;
  KEY_Prev_Virtual_Screen = 65233;
  KEY_PreviousCandidate = 65342;
  KEY_Print = 65377;
  KEY_Prior = 65365;
  KEY_Q = 81;
  KEY_R = 82;
  KEY_R1 = 65490;
  KEY_R10 = 65499;
  KEY_R11 = 65500;
  KEY_R12 = 65501;
  KEY_R13 = 65502;
  KEY_R14 = 65503;
  KEY_R15 = 65504;
  KEY_R2 = 65491;
  KEY_R3 = 65492;
  KEY_R4 = 65493;
  KEY_R5 = 65494;
  KEY_R6 = 65495;
  KEY_R7 = 65496;
  KEY_R8 = 65497;
  KEY_R9 = 65498;
  KEY_Racute = 448;
  KEY_Rcaron = 472;
  KEY_Rcedilla = 931;
  KEY_Red = 269025187;
  KEY_Redo = 65382;
  KEY_Refresh = 269025065;
  KEY_Reload = 269025139;
  KEY_RepeatKeys_Enable = 65138;
  KEY_Reply = 269025138;
  KEY_Return = 65293;
  KEY_Right = 65363;
  KEY_RockerDown = 269025060;
  KEY_RockerEnter = 269025061;
  KEY_RockerUp = 269025059;
  KEY_Romaji = 65316;
  KEY_RotateWindows = 269025140;
  KEY_RotationKB = 269025142;
  KEY_RotationPB = 269025141;
  KEY_RupeeSign = 16785576;
  KEY_S = 83;
  KEY_SCHWA = 16777615;
  KEY_Sabovedot = 16784992;
  KEY_Sacute = 422;
  KEY_Save = 269025143;
  KEY_Scaron = 425;
  KEY_Scedilla = 426;
  KEY_Scircumflex = 734;
  KEY_ScreenSaver = 269025069;
  KEY_ScrollClick = 269025146;
  KEY_ScrollDown = 269025145;
  KEY_ScrollUp = 269025144;
  KEY_Scroll_Lock = 65300;
  KEY_Search = 269025051;
  KEY_Select = 65376;
  KEY_SelectButton = 269025184;
  KEY_Send = 269025147;
  KEY_Serbian_DJE = 1713;
  KEY_Serbian_DZE = 1727;
  KEY_Serbian_JE = 1720;
  KEY_Serbian_LJE = 1721;
  KEY_Serbian_NJE = 1722;
  KEY_Serbian_TSHE = 1723;
  KEY_Serbian_dje__0 = 1697;
  KEY_Serbian_dze__0 = 1711;
  KEY_Serbian_je__0 = 1704;
  KEY_Serbian_lje__0 = 1705;
  KEY_Serbian_nje__0 = 1706;
  KEY_Serbian_tshe__0 = 1707;
  KEY_Shift_L = 65505;
  KEY_Shift_Lock = 65510;
  KEY_Shift_R = 65506;
  KEY_Shop = 269025078;
  KEY_SingleCandidate = 65340;
  KEY_Sinh_a = 16780677;
  KEY_Sinh_aa = 16780678;
  KEY_Sinh_aa2 = 16780751;
  KEY_Sinh_ae = 16780679;
  KEY_Sinh_ae2 = 16780752;
  KEY_Sinh_aee = 16780680;
  KEY_Sinh_aee2 = 16780753;
  KEY_Sinh_ai = 16780691;
  KEY_Sinh_ai2 = 16780763;
  KEY_Sinh_al = 16780746;
  KEY_Sinh_au = 16780694;
  KEY_Sinh_au2 = 16780766;
  KEY_Sinh_ba = 16780726;
  KEY_Sinh_bha = 16780727;
  KEY_Sinh_ca = 16780704;
  KEY_Sinh_cha = 16780705;
  KEY_Sinh_dda = 16780713;
  KEY_Sinh_ddha = 16780714;
  KEY_Sinh_dha = 16780719;
  KEY_Sinh_dhha = 16780720;
  KEY_Sinh_e = 16780689;
  KEY_Sinh_e2 = 16780761;
  KEY_Sinh_ee = 16780690;
  KEY_Sinh_ee2 = 16780762;
  KEY_Sinh_fa = 16780742;
  KEY_Sinh_ga = 16780700;
  KEY_Sinh_gha = 16780701;
  KEY_Sinh_h2 = 16780675;
  KEY_Sinh_ha = 16780740;
  KEY_Sinh_i = 16780681;
  KEY_Sinh_i2 = 16780754;
  KEY_Sinh_ii = 16780682;
  KEY_Sinh_ii2 = 16780755;
  KEY_Sinh_ja = 16780706;
  KEY_Sinh_jha = 16780707;
  KEY_Sinh_jnya = 16780709;
  KEY_Sinh_ka = 16780698;
  KEY_Sinh_kha = 16780699;
  KEY_Sinh_kunddaliya = 16780788;
  KEY_Sinh_la = 16780733;
  KEY_Sinh_lla = 16780741;
  KEY_Sinh_lu = 16780687;
  KEY_Sinh_lu2 = 16780767;
  KEY_Sinh_luu = 16780688;
  KEY_Sinh_luu2 = 16780787;
  KEY_Sinh_ma = 16780728;
  KEY_Sinh_mba = 16780729;
  KEY_Sinh_na = 16780721;
  KEY_Sinh_ndda = 16780716;
  KEY_Sinh_ndha = 16780723;
  KEY_Sinh_ng = 16780674;
  KEY_Sinh_ng2 = 16780702;
  KEY_Sinh_nga = 16780703;
  KEY_Sinh_nja = 16780710;
  KEY_Sinh_nna = 16780715;
  KEY_Sinh_nya = 16780708;
  KEY_Sinh_o = 16780692;
  KEY_Sinh_o2 = 16780764;
  KEY_Sinh_oo = 16780693;
  KEY_Sinh_oo2 = 16780765;
  KEY_Sinh_pa = 16780724;
  KEY_Sinh_pha = 16780725;
  KEY_Sinh_ra = 16780731;
  KEY_Sinh_ri = 16780685;
  KEY_Sinh_rii = 16780686;
  KEY_Sinh_ru2 = 16780760;
  KEY_Sinh_ruu2 = 16780786;
  KEY_Sinh_sa = 16780739;
  KEY_Sinh_sha = 16780737;
  KEY_Sinh_ssha = 16780738;
  KEY_Sinh_tha = 16780717;
  KEY_Sinh_thha = 16780718;
  KEY_Sinh_tta = 16780711;
  KEY_Sinh_ttha = 16780712;
  KEY_Sinh_u = 16780683;
  KEY_Sinh_u2 = 16780756;
  KEY_Sinh_uu = 16780684;
  KEY_Sinh_uu2 = 16780758;
  KEY_Sinh_va = 16780736;
  KEY_Sinh_ya = 16780730;
  KEY_Sleep = 269025071;
  KEY_SlowKeys_Enable = 65139;
  KEY_Spell = 269025148;
  KEY_SplitScreen = 269025149;
  KEY_Standby = 269025040;
  KEY_Start = 269025050;
  KEY_StickyKeys_Enable = 65141;
  KEY_Stop = 269025064;
  KEY_Subtitle = 269025178;
  KEY_Super_L = 65515;
  KEY_Super_R = 65516;
  KEY_Support = 269025150;
  KEY_Suspend = 269025191;
  KEY_Switch_VT_1 = 269024769;
  KEY_Switch_VT_10 = 269024778;
  KEY_Switch_VT_11 = 269024779;
  KEY_Switch_VT_12 = 269024780;
  KEY_Switch_VT_2 = 269024770;
  KEY_Switch_VT_3 = 269024771;
  KEY_Switch_VT_4 = 269024772;
  KEY_Switch_VT_5 = 269024773;
  KEY_Switch_VT_6 = 269024774;
  KEY_Switch_VT_7 = 269024775;
  KEY_Switch_VT_8 = 269024776;
  KEY_Switch_VT_9 = 269024777;
  KEY_Sys_Req = 65301;
  KEY_T = 84;
  KEY_THORN = 222;
  KEY_Tab = 65289;
  KEY_Tabovedot = 16785002;
  KEY_TaskPane = 269025151;
  KEY_Tcaron = 427;
  KEY_Tcedilla = 478;
  KEY_Terminal = 269025152;
  KEY_Terminate_Server = 65237;
  KEY_Thai_baht = 3551;
  KEY_Thai_bobaimai = 3514;
  KEY_Thai_chochan = 3496;
  KEY_Thai_chochang = 3498;
  KEY_Thai_choching = 3497;
  KEY_Thai_chochoe = 3500;
  KEY_Thai_dochada = 3502;
  KEY_Thai_dodek = 3508;
  KEY_Thai_fofa = 3517;
  KEY_Thai_fofan = 3519;
  KEY_Thai_hohip = 3531;
  KEY_Thai_honokhuk = 3534;
  KEY_Thai_khokhai = 3490;
  KEY_Thai_khokhon = 3493;
  KEY_Thai_khokhuat = 3491;
  KEY_Thai_khokhwai = 3492;
  KEY_Thai_khorakhang = 3494;
  KEY_Thai_kokai = 3489;
  KEY_Thai_lakkhangyao = 3557;
  KEY_Thai_lekchet = 3575;
  KEY_Thai_lekha = 3573;
  KEY_Thai_lekhok = 3574;
  KEY_Thai_lekkao = 3577;
  KEY_Thai_leknung = 3569;
  KEY_Thai_lekpaet = 3576;
  KEY_Thai_leksam = 3571;
  KEY_Thai_leksi = 3572;
  KEY_Thai_leksong = 3570;
  KEY_Thai_leksun = 3568;
  KEY_Thai_lochula = 3532;
  KEY_Thai_loling = 3525;
  KEY_Thai_lu = 3526;
  KEY_Thai_maichattawa = 3563;
  KEY_Thai_maiek = 3560;
  KEY_Thai_maihanakat = 3537;
  KEY_Thai_maihanakat_maitho = 3550;
  KEY_Thai_maitaikhu = 3559;
  KEY_Thai_maitho = 3561;
  KEY_Thai_maitri = 3562;
  KEY_Thai_maiyamok = 3558;
  KEY_Thai_moma = 3521;
  KEY_Thai_ngongu = 3495;
  KEY_Thai_nikhahit = 3565;
  KEY_Thai_nonen = 3507;
  KEY_Thai_nonu = 3513;
  KEY_Thai_oang = 3533;
  KEY_Thai_paiyannoi = 3535;
  KEY_Thai_phinthu = 3546;
  KEY_Thai_phophan = 3518;
  KEY_Thai_phophung = 3516;
  KEY_Thai_phosamphao = 3520;
  KEY_Thai_popla = 3515;
  KEY_Thai_rorua = 3523;
  KEY_Thai_ru = 3524;
  KEY_Thai_saraa = 3536;
  KEY_Thai_saraaa = 3538;
  KEY_Thai_saraae = 3553;
  KEY_Thai_saraaimaimalai = 3556;
  KEY_Thai_saraaimaimuan = 3555;
  KEY_Thai_saraam = 3539;
  KEY_Thai_sarae = 3552;
  KEY_Thai_sarai = 3540;
  KEY_Thai_saraii = 3541;
  KEY_Thai_sarao = 3554;
  KEY_Thai_sarau = 3544;
  KEY_Thai_saraue = 3542;
  KEY_Thai_sarauee = 3543;
  KEY_Thai_sarauu = 3545;
  KEY_Thai_sorusi = 3529;
  KEY_Thai_sosala = 3528;
  KEY_Thai_soso = 3499;
  KEY_Thai_sosua = 3530;
  KEY_Thai_thanthakhat = 3564;
  KEY_Thai_thonangmontho = 3505;
  KEY_Thai_thophuthao = 3506;
  KEY_Thai_thothahan = 3511;
  KEY_Thai_thothan = 3504;
  KEY_Thai_thothong = 3512;
  KEY_Thai_thothung = 3510;
  KEY_Thai_topatak = 3503;
  KEY_Thai_totao = 3509;
  KEY_Thai_wowaen = 3527;
  KEY_Thai_yoyak = 3522;
  KEY_Thai_yoying = 3501;
  KEY_Thorn__0 = 222;
  KEY_Time = 269025183;
  KEY_ToDoList = 269025055;
  KEY_Tools = 269025153;
  KEY_TopMenu = 269025186;
  KEY_TouchpadOff = 269025201;
  KEY_TouchpadOn = 269025200;
  KEY_TouchpadToggle = 269025193;
  KEY_Touroku = 65323;
  KEY_Travel = 269025154;
  KEY_Tslash = 940;
  KEY_U = 85;
  KEY_UWB = 269025174;
  KEY_Uacute = 218;
  KEY_Ubelowdot = 16785124;
  KEY_Ubreve = 733;
  KEY_Ucircumflex = 219;
  KEY_Udiaeresis = 220;
  KEY_Udoubleacute = 475;
  KEY_Ugrave = 217;
  KEY_Uhook = 16785126;
  KEY_Uhorn = 16777647;
  KEY_Uhornacute = 16785128;
  KEY_Uhornbelowdot = 16785136;
  KEY_Uhorngrave = 16785130;
  KEY_Uhornhook = 16785132;
  KEY_Uhorntilde = 16785134;
  KEY_Ukrainian_GHE_WITH_UPTURN = 1725;
  KEY_Ukrainian_I = 1718;
  KEY_Ukrainian_IE = 1716;
  KEY_Ukrainian_YI = 1719;
  KEY_Ukrainian_ghe_with_upturn__0 = 1709;
  KEY_Ukrainian_i__0 = 1702;
  KEY_Ukrainian_ie__0 = 1700;
  KEY_Ukrainian_yi__0 = 1703;
  KEY_Ukranian_I = 1718;
  KEY_Ukranian_JE = 1716;
  KEY_Ukranian_YI = 1719;
  KEY_Ukranian_i__0 = 1702;
  KEY_Ukranian_je__0 = 1700;
  KEY_Ukranian_yi__0 = 1703;
  KEY_Umacron = 990;
  KEY_Undo = 65381;
  KEY_Ungrab = 269024800;
  KEY_Uogonek = 985;
  KEY_Up = 65362;
  KEY_Uring = 473;
  KEY_User1KB = 269025157;
  KEY_User2KB = 269025158;
  KEY_UserPB = 269025156;
  KEY_Utilde = 989;
  KEY_V = 86;
  KEY_VendorHome = 269025076;
  KEY_Video = 269025159;
  KEY_View = 269025185;
  KEY_VoidSymbol = 16777215;
  KEY_W = 87;
  KEY_WLAN = 269025173;
  KEY_WWW = 269025070;
  KEY_Wacute = 16785026;
  KEY_WakeUp = 269025067;
  KEY_Wcircumflex = 16777588;
  KEY_Wdiaeresis = 16785028;
  KEY_WebCam = 269025167;
  KEY_Wgrave = 16785024;
  KEY_WheelButton = 269025160;
  KEY_WindowClear = 269025109;
  KEY_WonSign = 16785577;
  KEY_Word = 269025161;
  KEY_X = 88;
  KEY_Xabovedot = 16785034;
  KEY_Xfer = 269025162;
  KEY_Y = 89;
  KEY_Yacute = 221;
  KEY_Ybelowdot = 16785140;
  KEY_Ycircumflex = 16777590;
  KEY_Ydiaeresis = 5054;
  KEY_Yellow = 269025189;
  KEY_Ygrave = 16785138;
  KEY_Yhook = 16785142;
  KEY_Ytilde = 16785144;
  KEY_Z = 90;
  KEY_Zabovedot = 431;
  KEY_Zacute = 428;
  KEY_Zcaron = 430;
  KEY_Zen_Koho = 65341;
  KEY_Zenkaku = 65320;
  KEY_Zenkaku_Hankaku = 65322;
  KEY_ZoomIn = 269025163;
  KEY_ZoomOut = 269025164;
  KEY_Zstroke = 16777653;
  KEY_a__0 = 97;
  KEY_aacute__0 = 225;
  KEY_abelowdot__0 = 16785057;
  KEY_abovedot = 511;
  KEY_abreve__0 = 483;
  KEY_abreveacute__0 = 16785071;
  KEY_abrevebelowdot__0 = 16785079;
  KEY_abrevegrave__0 = 16785073;
  KEY_abrevehook__0 = 16785075;
  KEY_abrevetilde__0 = 16785077;
  KEY_acircumflex__0 = 226;
  KEY_acircumflexacute__0 = 16785061;
  KEY_acircumflexbelowdot__0 = 16785069;
  KEY_acircumflexgrave__0 = 16785063;
  KEY_acircumflexhook__0 = 16785065;
  KEY_acircumflextilde__0 = 16785067;
  KEY_acute = 180;
  KEY_adiaeresis__0 = 228;
  KEY_ae__0 = 230;
  KEY_agrave__0 = 224;
  KEY_ahook__0 = 16785059;
  KEY_amacron__0 = 992;
  KEY_ampersand = 38;
  KEY_aogonek__0 = 433;
  KEY_apostrophe = 39;
  KEY_approxeq = 16785992;
  KEY_approximate = 2248;
  KEY_aring__0 = 229;
  KEY_asciicircum = 94;
  KEY_asciitilde = 126;
  KEY_asterisk = 42;
  KEY_at = 64;
  KEY_atilde__0 = 227;
  KEY_b__0 = 98;
  KEY_babovedot__0 = 16784899;
  KEY_backslash = 92;
  KEY_ballotcross = 2804;
  KEY_bar = 124;
  KEY_because = 16785973;
  KEY_blank = 2527;
  KEY_botintegral = 2213;
  KEY_botleftparens = 2220;
  KEY_botleftsqbracket = 2216;
  KEY_botleftsummation = 2226;
  KEY_botrightparens = 2222;
  KEY_botrightsqbracket = 2218;
  KEY_botrightsummation = 2230;
  KEY_bott = 2550;
  KEY_botvertsummationconnector = 2228;
  KEY_braceleft = 123;
  KEY_braceright = 125;
  KEY_bracketleft = 91;
  KEY_bracketright = 93;
  KEY_braille_blank = 16787456;
  KEY_braille_dot_1 = 65521;
  KEY_braille_dot_10 = 65530;
  KEY_braille_dot_2 = 65522;
  KEY_braille_dot_3 = 65523;
  KEY_braille_dot_4 = 65524;
  KEY_braille_dot_5 = 65525;
  KEY_braille_dot_6 = 65526;
  KEY_braille_dot_7 = 65527;
  KEY_braille_dot_8 = 65528;
  KEY_braille_dot_9 = 65529;
  KEY_braille_dots_1 = 16787457;
  KEY_braille_dots_12 = 16787459;
  KEY_braille_dots_123 = 16787463;
  KEY_braille_dots_1234 = 16787471;
  KEY_braille_dots_12345 = 16787487;
  KEY_braille_dots_123456 = 16787519;
  KEY_braille_dots_1234567 = 16787583;
  KEY_braille_dots_12345678 = 16787711;
  KEY_braille_dots_1234568 = 16787647;
  KEY_braille_dots_123457 = 16787551;
  KEY_braille_dots_1234578 = 16787679;
  KEY_braille_dots_123458 = 16787615;
  KEY_braille_dots_12346 = 16787503;
  KEY_braille_dots_123467 = 16787567;
  KEY_braille_dots_1234678 = 16787695;
  KEY_braille_dots_123468 = 16787631;
  KEY_braille_dots_12347 = 16787535;
  KEY_braille_dots_123478 = 16787663;
  KEY_braille_dots_12348 = 16787599;
  KEY_braille_dots_1235 = 16787479;
  KEY_braille_dots_12356 = 16787511;
  KEY_braille_dots_123567 = 16787575;
  KEY_braille_dots_1235678 = 16787703;
  KEY_braille_dots_123568 = 16787639;
  KEY_braille_dots_12357 = 16787543;
  KEY_braille_dots_123578 = 16787671;
  KEY_braille_dots_12358 = 16787607;
  KEY_braille_dots_1236 = 16787495;
  KEY_braille_dots_12367 = 16787559;
  KEY_braille_dots_123678 = 16787687;
  KEY_braille_dots_12368 = 16787623;
  KEY_braille_dots_1237 = 16787527;
  KEY_braille_dots_12378 = 16787655;
  KEY_braille_dots_1238 = 16787591;
  KEY_braille_dots_124 = 16787467;
  KEY_braille_dots_1245 = 16787483;
  KEY_braille_dots_12456 = 16787515;
  KEY_braille_dots_124567 = 16787579;
  KEY_braille_dots_1245678 = 16787707;
  KEY_braille_dots_124568 = 16787643;
  KEY_braille_dots_12457 = 16787547;
  KEY_braille_dots_124578 = 16787675;
  KEY_braille_dots_12458 = 16787611;
  KEY_braille_dots_1246 = 16787499;
  KEY_braille_dots_12467 = 16787563;
  KEY_braille_dots_124678 = 16787691;
  KEY_braille_dots_12468 = 16787627;
  KEY_braille_dots_1247 = 16787531;
  KEY_braille_dots_12478 = 16787659;
  KEY_braille_dots_1248 = 16787595;
  KEY_braille_dots_125 = 16787475;
  KEY_braille_dots_1256 = 16787507;
  KEY_braille_dots_12567 = 16787571;
  KEY_braille_dots_125678 = 16787699;
  KEY_braille_dots_12568 = 16787635;
  KEY_braille_dots_1257 = 16787539;
  KEY_braille_dots_12578 = 16787667;
  KEY_braille_dots_1258 = 16787603;
  KEY_braille_dots_126 = 16787491;
  KEY_braille_dots_1267 = 16787555;
  KEY_braille_dots_12678 = 16787683;
  KEY_braille_dots_1268 = 16787619;
  KEY_braille_dots_127 = 16787523;
  KEY_braille_dots_1278 = 16787651;
  KEY_braille_dots_128 = 16787587;
  KEY_braille_dots_13 = 16787461;
  KEY_braille_dots_134 = 16787469;
  KEY_braille_dots_1345 = 16787485;
  KEY_braille_dots_13456 = 16787517;
  KEY_braille_dots_134567 = 16787581;
  KEY_braille_dots_1345678 = 16787709;
  KEY_braille_dots_134568 = 16787645;
  KEY_braille_dots_13457 = 16787549;
  KEY_braille_dots_134578 = 16787677;
  KEY_braille_dots_13458 = 16787613;
  KEY_braille_dots_1346 = 16787501;
  KEY_braille_dots_13467 = 16787565;
  KEY_braille_dots_134678 = 16787693;
  KEY_braille_dots_13468 = 16787629;
  KEY_braille_dots_1347 = 16787533;
  KEY_braille_dots_13478 = 16787661;
  KEY_braille_dots_1348 = 16787597;
  KEY_braille_dots_135 = 16787477;
  KEY_braille_dots_1356 = 16787509;
  KEY_braille_dots_13567 = 16787573;
  KEY_braille_dots_135678 = 16787701;
  KEY_braille_dots_13568 = 16787637;
  KEY_braille_dots_1357 = 16787541;
  KEY_braille_dots_13578 = 16787669;
  KEY_braille_dots_1358 = 16787605;
  KEY_braille_dots_136 = 16787493;
  KEY_braille_dots_1367 = 16787557;
  KEY_braille_dots_13678 = 16787685;
  KEY_braille_dots_1368 = 16787621;
  KEY_braille_dots_137 = 16787525;
  KEY_braille_dots_1378 = 16787653;
  KEY_braille_dots_138 = 16787589;
  KEY_braille_dots_14 = 16787465;
  KEY_braille_dots_145 = 16787481;
  KEY_braille_dots_1456 = 16787513;
  KEY_braille_dots_14567 = 16787577;
  KEY_braille_dots_145678 = 16787705;
  KEY_braille_dots_14568 = 16787641;
  KEY_braille_dots_1457 = 16787545;
  KEY_braille_dots_14578 = 16787673;
  KEY_braille_dots_1458 = 16787609;
  KEY_braille_dots_146 = 16787497;
  KEY_braille_dots_1467 = 16787561;
  KEY_braille_dots_14678 = 16787689;
  KEY_braille_dots_1468 = 16787625;
  KEY_braille_dots_147 = 16787529;
  KEY_braille_dots_1478 = 16787657;
  KEY_braille_dots_148 = 16787593;
  KEY_braille_dots_15 = 16787473;
  KEY_braille_dots_156 = 16787505;
  KEY_braille_dots_1567 = 16787569;
  KEY_braille_dots_15678 = 16787697;
  KEY_braille_dots_1568 = 16787633;
  KEY_braille_dots_157 = 16787537;
  KEY_braille_dots_1578 = 16787665;
  KEY_braille_dots_158 = 16787601;
  KEY_braille_dots_16 = 16787489;
  KEY_braille_dots_167 = 16787553;
  KEY_braille_dots_1678 = 16787681;
  KEY_braille_dots_168 = 16787617;
  KEY_braille_dots_17 = 16787521;
  KEY_braille_dots_178 = 16787649;
  KEY_braille_dots_18 = 16787585;
  KEY_braille_dots_2 = 16787458;
  KEY_braille_dots_23 = 16787462;
  KEY_braille_dots_234 = 16787470;
  KEY_braille_dots_2345 = 16787486;
  KEY_braille_dots_23456 = 16787518;
  KEY_braille_dots_234567 = 16787582;
  KEY_braille_dots_2345678 = 16787710;
  KEY_braille_dots_234568 = 16787646;
  KEY_braille_dots_23457 = 16787550;
  KEY_braille_dots_234578 = 16787678;
  KEY_braille_dots_23458 = 16787614;
  KEY_braille_dots_2346 = 16787502;
  KEY_braille_dots_23467 = 16787566;
  KEY_braille_dots_234678 = 16787694;
  KEY_braille_dots_23468 = 16787630;
  KEY_braille_dots_2347 = 16787534;
  KEY_braille_dots_23478 = 16787662;
  KEY_braille_dots_2348 = 16787598;
  KEY_braille_dots_235 = 16787478;
  KEY_braille_dots_2356 = 16787510;
  KEY_braille_dots_23567 = 16787574;
  KEY_braille_dots_235678 = 16787702;
  KEY_braille_dots_23568 = 16787638;
  KEY_braille_dots_2357 = 16787542;
  KEY_braille_dots_23578 = 16787670;
  KEY_braille_dots_2358 = 16787606;
  KEY_braille_dots_236 = 16787494;
  KEY_braille_dots_2367 = 16787558;
  KEY_braille_dots_23678 = 16787686;
  KEY_braille_dots_2368 = 16787622;
  KEY_braille_dots_237 = 16787526;
  KEY_braille_dots_2378 = 16787654;
  KEY_braille_dots_238 = 16787590;
  KEY_braille_dots_24 = 16787466;
  KEY_braille_dots_245 = 16787482;
  KEY_braille_dots_2456 = 16787514;
  KEY_braille_dots_24567 = 16787578;
  KEY_braille_dots_245678 = 16787706;
  KEY_braille_dots_24568 = 16787642;
  KEY_braille_dots_2457 = 16787546;
  KEY_braille_dots_24578 = 16787674;
  KEY_braille_dots_2458 = 16787610;
  KEY_braille_dots_246 = 16787498;
  KEY_braille_dots_2467 = 16787562;
  KEY_braille_dots_24678 = 16787690;
  KEY_braille_dots_2468 = 16787626;
  KEY_braille_dots_247 = 16787530;
  KEY_braille_dots_2478 = 16787658;
  KEY_braille_dots_248 = 16787594;
  KEY_braille_dots_25 = 16787474;
  KEY_braille_dots_256 = 16787506;
  KEY_braille_dots_2567 = 16787570;
  KEY_braille_dots_25678 = 16787698;
  KEY_braille_dots_2568 = 16787634;
  KEY_braille_dots_257 = 16787538;
  KEY_braille_dots_2578 = 16787666;
  KEY_braille_dots_258 = 16787602;
  KEY_braille_dots_26 = 16787490;
  KEY_braille_dots_267 = 16787554;
  KEY_braille_dots_2678 = 16787682;
  KEY_braille_dots_268 = 16787618;
  KEY_braille_dots_27 = 16787522;
  KEY_braille_dots_278 = 16787650;
  KEY_braille_dots_28 = 16787586;
  KEY_braille_dots_3 = 16787460;
  KEY_braille_dots_34 = 16787468;
  KEY_braille_dots_345 = 16787484;
  KEY_braille_dots_3456 = 16787516;
  KEY_braille_dots_34567 = 16787580;
  KEY_braille_dots_345678 = 16787708;
  KEY_braille_dots_34568 = 16787644;
  KEY_braille_dots_3457 = 16787548;
  KEY_braille_dots_34578 = 16787676;
  KEY_braille_dots_3458 = 16787612;
  KEY_braille_dots_346 = 16787500;
  KEY_braille_dots_3467 = 16787564;
  KEY_braille_dots_34678 = 16787692;
  KEY_braille_dots_3468 = 16787628;
  KEY_braille_dots_347 = 16787532;
  KEY_braille_dots_3478 = 16787660;
  KEY_braille_dots_348 = 16787596;
  KEY_braille_dots_35 = 16787476;
  KEY_braille_dots_356 = 16787508;
  KEY_braille_dots_3567 = 16787572;
  KEY_braille_dots_35678 = 16787700;
  KEY_braille_dots_3568 = 16787636;
  KEY_braille_dots_357 = 16787540;
  KEY_braille_dots_3578 = 16787668;
  KEY_braille_dots_358 = 16787604;
  KEY_braille_dots_36 = 16787492;
  KEY_braille_dots_367 = 16787556;
  KEY_braille_dots_3678 = 16787684;
  KEY_braille_dots_368 = 16787620;
  KEY_braille_dots_37 = 16787524;
  KEY_braille_dots_378 = 16787652;
  KEY_braille_dots_38 = 16787588;
  KEY_braille_dots_4 = 16787464;
  KEY_braille_dots_45 = 16787480;
  KEY_braille_dots_456 = 16787512;
  KEY_braille_dots_4567 = 16787576;
  KEY_braille_dots_45678 = 16787704;
  KEY_braille_dots_4568 = 16787640;
  KEY_braille_dots_457 = 16787544;
  KEY_braille_dots_4578 = 16787672;
  KEY_braille_dots_458 = 16787608;
  KEY_braille_dots_46 = 16787496;
  KEY_braille_dots_467 = 16787560;
  KEY_braille_dots_4678 = 16787688;
  KEY_braille_dots_468 = 16787624;
  KEY_braille_dots_47 = 16787528;
  KEY_braille_dots_478 = 16787656;
  KEY_braille_dots_48 = 16787592;
  KEY_braille_dots_5 = 16787472;
  KEY_braille_dots_56 = 16787504;
  KEY_braille_dots_567 = 16787568;
  KEY_braille_dots_5678 = 16787696;
  KEY_braille_dots_568 = 16787632;
  KEY_braille_dots_57 = 16787536;
  KEY_braille_dots_578 = 16787664;
  KEY_braille_dots_58 = 16787600;
  KEY_braille_dots_6 = 16787488;
  KEY_braille_dots_67 = 16787552;
  KEY_braille_dots_678 = 16787680;
  KEY_braille_dots_68 = 16787616;
  KEY_braille_dots_7 = 16787520;
  KEY_braille_dots_78 = 16787648;
  KEY_braille_dots_8 = 16787584;
  KEY_breve = 418;
  KEY_brokenbar = 166;
  KEY_c__0 = 99;
  KEY_cabovedot__0 = 741;
  KEY_cacute__0 = 486;
  KEY_careof = 2744;
  KEY_caret = 2812;
  KEY_caron = 439;
  KEY_ccaron__0 = 488;
  KEY_ccedilla__0 = 231;
  KEY_ccircumflex__0 = 742;
  KEY_cedilla = 184;
  KEY_cent = 162;
  KEY_checkerboard = 2529;
  KEY_checkmark = 2803;
  KEY_circle = 3023;
  KEY_club = 2796;
  KEY_colon = 58;
  KEY_comma = 44;
  KEY_containsas = 16785931;
  KEY_copyright = 169;
  KEY_cr = 2532;
  KEY_crossinglines = 2542;
  KEY_cuberoot = 16785947;
  KEY_currency = 164;
  KEY_cursor = 2815;
  KEY_d__0 = 100;
  KEY_dabovedot__0 = 16784907;
  KEY_dagger = 2801;
  KEY_dcaron__0 = 495;
  KEY_dead_A = 65153;
  KEY_dead_E = 65155;
  KEY_dead_I = 65157;
  KEY_dead_O = 65159;
  KEY_dead_U = 65161;
  KEY_dead_a__0 = 65152;
  KEY_dead_abovecomma = 65124;
  KEY_dead_abovedot = 65110;
  KEY_dead_abovereversedcomma = 65125;
  KEY_dead_abovering = 65112;
  KEY_dead_acute = 65105;
  KEY_dead_belowbreve = 65131;
  KEY_dead_belowcircumflex = 65129;
  KEY_dead_belowcomma = 65134;
  KEY_dead_belowdiaeresis = 65132;
  KEY_dead_belowdot = 65120;
  KEY_dead_belowmacron = 65128;
  KEY_dead_belowring = 65127;
  KEY_dead_belowtilde = 65130;
  KEY_dead_breve = 65109;
  KEY_dead_capital_schwa = 65163;
  KEY_dead_caron = 65114;
  KEY_dead_cedilla = 65115;
  KEY_dead_circumflex = 65106;
  KEY_dead_currency = 65135;
  KEY_dead_dasia = 65125;
  KEY_dead_diaeresis = 65111;
  KEY_dead_doubleacute = 65113;
  KEY_dead_doublegrave = 65126;
  KEY_dead_e__0 = 65154;
  KEY_dead_grave = 65104;
  KEY_dead_hook = 65121;
  KEY_dead_horn = 65122;
  KEY_dead_i__0 = 65156;
  KEY_dead_invertedbreve = 65133;
  KEY_dead_iota = 65117;
  KEY_dead_macron = 65108;
  KEY_dead_o__0 = 65158;
  KEY_dead_ogonek = 65116;
  KEY_dead_perispomeni = 65107;
  KEY_dead_psili = 65124;
  KEY_dead_semivoiced_sound = 65119;
  KEY_dead_small_schwa = 65162;
  KEY_dead_stroke = 65123;
  KEY_dead_tilde = 65107;
  KEY_dead_u__0 = 65160;
  KEY_dead_voiced_sound = 65118;
  KEY_decimalpoint = 2749;
  KEY_degree = 176;
  KEY_diaeresis = 168;
  KEY_diamond = 2797;
  KEY_digitspace = 2725;
  KEY_dintegral = 16785964;
  KEY_division = 247;
  KEY_dollar = 36;
  KEY_doubbaselinedot = 2735;
  KEY_doubleacute = 445;
  KEY_doubledagger = 2802;
  KEY_doublelowquotemark = 2814;
  KEY_downarrow = 2302;
  KEY_downcaret = 2984;
  KEY_downshoe = 3030;
  KEY_downstile = 3012;
  KEY_downtack = 3010;
  KEY_dstroke__0 = 496;
  KEY_e__0 = 101;
  KEY_eabovedot__0 = 1004;
  KEY_eacute__0 = 233;
  KEY_ebelowdot__0 = 16785081;
  KEY_ecaron__0 = 492;
  KEY_ecircumflex__0 = 234;
  KEY_ecircumflexacute__0 = 16785087;
  KEY_ecircumflexbelowdot__0 = 16785095;
  KEY_ecircumflexgrave__0 = 16785089;
  KEY_ecircumflexhook__0 = 16785091;
  KEY_ecircumflextilde__0 = 16785093;
  KEY_ediaeresis__0 = 235;
  KEY_egrave__0 = 232;
  KEY_ehook__0 = 16785083;
  KEY_eightsubscript = 16785544;
  KEY_eightsuperior = 16785528;
  KEY_elementof = 16785928;
  KEY_ellipsis = 2734;
  KEY_em3space = 2723;
  KEY_em4space = 2724;
  KEY_emacron__0 = 954;
  KEY_emdash = 2729;
  KEY_emfilledcircle = 2782;
  KEY_emfilledrect = 2783;
  KEY_emopencircle = 2766;
  KEY_emopenrectangle = 2767;
  KEY_emptyset = 16785925;
  KEY_emspace = 2721;
  KEY_endash = 2730;
  KEY_enfilledcircbullet = 2790;
  KEY_enfilledsqbullet = 2791;
  KEY_eng__0 = 959;
  KEY_enopencircbullet = 2784;
  KEY_enopensquarebullet = 2785;
  KEY_enspace = 2722;
  KEY_eogonek__0 = 490;
  KEY_equal = 61;
  KEY_eth__1 = 240;
  KEY_etilde__0 = 16785085;
  KEY_exclam = 33;
  KEY_exclamdown = 161;
  KEY_f__0 = 102;
  KEY_fabovedot__0 = 16784927;
  KEY_femalesymbol = 2808;
  KEY_ff = 2531;
  KEY_figdash = 2747;
  KEY_filledlefttribullet = 2780;
  KEY_filledrectbullet = 2779;
  KEY_filledrighttribullet = 2781;
  KEY_filledtribulletdown = 2793;
  KEY_filledtribulletup = 2792;
  KEY_fiveeighths = 2757;
  KEY_fivesixths = 2743;
  KEY_fivesubscript = 16785541;
  KEY_fivesuperior = 16785525;
  KEY_fourfifths = 2741;
  KEY_foursubscript = 16785540;
  KEY_foursuperior = 16785524;
  KEY_fourthroot = 16785948;
  KEY_function = 2294;
  KEY_g__0 = 103;
  KEY_gabovedot__0 = 757;
  KEY_gbreve__0 = 699;
  KEY_gcaron__0 = 16777703;
  KEY_gcedilla__0 = 955;
  KEY_gcircumflex__0 = 760;
  KEY_grave = 96;
  KEY_greater = 62;
  KEY_greaterthanequal = 2238;
  KEY_guillemotleft = 171;
  KEY_guillemotright = 187;
  KEY_h__0 = 104;
  KEY_hairspace = 2728;
  KEY_hcircumflex__0 = 694;
  KEY_heart = 2798;
  KEY_hebrew_aleph = 3296;
  KEY_hebrew_ayin = 3314;
  KEY_hebrew_bet = 3297;
  KEY_hebrew_beth = 3297;
  KEY_hebrew_chet = 3303;
  KEY_hebrew_dalet = 3299;
  KEY_hebrew_daleth = 3299;
  KEY_hebrew_doublelowline = 3295;
  KEY_hebrew_finalkaph = 3306;
  KEY_hebrew_finalmem = 3309;
  KEY_hebrew_finalnun = 3311;
  KEY_hebrew_finalpe = 3315;
  KEY_hebrew_finalzade = 3317;
  KEY_hebrew_finalzadi = 3317;
  KEY_hebrew_gimel = 3298;
  KEY_hebrew_gimmel = 3298;
  KEY_hebrew_he = 3300;
  KEY_hebrew_het = 3303;
  KEY_hebrew_kaph = 3307;
  KEY_hebrew_kuf = 3319;
  KEY_hebrew_lamed = 3308;
  KEY_hebrew_mem = 3310;
  KEY_hebrew_nun = 3312;
  KEY_hebrew_pe = 3316;
  KEY_hebrew_qoph = 3319;
  KEY_hebrew_resh = 3320;
  KEY_hebrew_samech = 3313;
  KEY_hebrew_samekh = 3313;
  KEY_hebrew_shin = 3321;
  KEY_hebrew_taf = 3322;
  KEY_hebrew_taw = 3322;
  KEY_hebrew_tet = 3304;
  KEY_hebrew_teth = 3304;
  KEY_hebrew_waw = 3301;
  KEY_hebrew_yod = 3305;
  KEY_hebrew_zade = 3318;
  KEY_hebrew_zadi = 3318;
  KEY_hebrew_zain = 3302;
  KEY_hebrew_zayin = 3302;
  KEY_hexagram = 2778;
  KEY_horizconnector = 2211;
  KEY_horizlinescan1 = 2543;
  KEY_horizlinescan3 = 2544;
  KEY_horizlinescan5 = 2545;
  KEY_horizlinescan7 = 2546;
  KEY_horizlinescan9 = 2547;
  KEY_hstroke__0 = 689;
  KEY_ht = 2530;
  KEY_hyphen = 173;
  KEY_i__0 = 105;
  KEY_iTouch = 269025120;
  KEY_iacute__0 = 237;
  KEY_ibelowdot__0 = 16785099;
  KEY_ibreve__0 = 16777517;
  KEY_icircumflex__0 = 238;
  KEY_identical = 2255;
  KEY_idiaeresis__0 = 239;
  KEY_idotless = 697;
  KEY_ifonlyif = 2253;
  KEY_igrave__0 = 236;
  KEY_ihook__0 = 16785097;
  KEY_imacron__0 = 1007;
  KEY_implies = 2254;
  KEY_includedin = 2266;
  KEY_includes = 2267;
  KEY_infinity = 2242;
  KEY_integral = 2239;
  KEY_intersection = 2268;
  KEY_iogonek__0 = 999;
  KEY_itilde__0 = 949;
  KEY_j__0 = 106;
  KEY_jcircumflex__0 = 700;
  KEY_jot = 3018;
  KEY_k__0 = 107;
  KEY_kana_A = 1201;
  KEY_kana_CHI = 1217;
  KEY_kana_E = 1204;
  KEY_kana_FU = 1228;
  KEY_kana_HA = 1226;
  KEY_kana_HE = 1229;
  KEY_kana_HI = 1227;
  KEY_kana_HO = 1230;
  KEY_kana_HU = 1228;
  KEY_kana_I = 1202;
  KEY_kana_KA = 1206;
  KEY_kana_KE = 1209;
  KEY_kana_KI = 1207;
  KEY_kana_KO = 1210;
  KEY_kana_KU = 1208;
  KEY_kana_MA = 1231;
  KEY_kana_ME = 1234;
  KEY_kana_MI = 1232;
  KEY_kana_MO = 1235;
  KEY_kana_MU = 1233;
  KEY_kana_N = 1245;
  KEY_kana_NA = 1221;
  KEY_kana_NE = 1224;
  KEY_kana_NI = 1222;
  KEY_kana_NO = 1225;
  KEY_kana_NU = 1223;
  KEY_kana_O = 1205;
  KEY_kana_RA = 1239;
  KEY_kana_RE = 1242;
  KEY_kana_RI = 1240;
  KEY_kana_RO = 1243;
  KEY_kana_RU = 1241;
  KEY_kana_SA = 1211;
  KEY_kana_SE = 1214;
  KEY_kana_SHI = 1212;
  KEY_kana_SO = 1215;
  KEY_kana_SU = 1213;
  KEY_kana_TA = 1216;
  KEY_kana_TE = 1219;
  KEY_kana_TI = 1217;
  KEY_kana_TO = 1220;
  KEY_kana_TSU = 1218;
  KEY_kana_TU = 1218;
  KEY_kana_U = 1203;
  KEY_kana_WA = 1244;
  KEY_kana_WO = 1190;
  KEY_kana_YA = 1236;
  KEY_kana_YO = 1238;
  KEY_kana_YU = 1237;
  KEY_kana_a__0 = 1191;
  KEY_kana_closingbracket = 1187;
  KEY_kana_comma = 1188;
  KEY_kana_conjunctive = 1189;
  KEY_kana_e__0 = 1194;
  KEY_kana_fullstop = 1185;
  KEY_kana_i__0 = 1192;
  KEY_kana_middledot = 1189;
  KEY_kana_o__0 = 1195;
  KEY_kana_openingbracket = 1186;
  KEY_kana_switch = 65406;
  KEY_kana_tsu__0 = 1199;
  KEY_kana_tu__0 = 1199;
  KEY_kana_u__0 = 1193;
  KEY_kana_ya__0 = 1196;
  KEY_kana_yo__0 = 1198;
  KEY_kana_yu__0 = 1197;
  KEY_kappa = 930;
  KEY_kcedilla__0 = 1011;
  KEY_kra = 930;
  KEY_l__0 = 108;
  KEY_lacute__0 = 485;
  KEY_latincross = 2777;
  KEY_lbelowdot__0 = 16784951;
  KEY_lcaron__0 = 437;
  KEY_lcedilla__0 = 950;
  KEY_leftanglebracket = 2748;
  KEY_leftarrow = 2299;
  KEY_leftcaret = 2979;
  KEY_leftdoublequotemark = 2770;
  KEY_leftmiddlecurlybrace = 2223;
  KEY_leftopentriangle = 2764;
  KEY_leftpointer = 2794;
  KEY_leftradical = 2209;
  KEY_leftshoe = 3034;
  KEY_leftsinglequotemark = 2768;
  KEY_leftt = 2548;
  KEY_lefttack = 3036;
  KEY_less = 60;
  KEY_lessthanequal = 2236;
  KEY_lf = 2533;
  KEY_logicaland = 2270;
  KEY_logicalor = 2271;
  KEY_lowleftcorner = 2541;
  KEY_lowrightcorner = 2538;
  KEY_lstroke__0 = 435;
  KEY_m__0 = 109;
  KEY_mabovedot__0 = 16784961;
  KEY_macron = 175;
  KEY_malesymbol = 2807;
  KEY_maltesecross = 2800;
  KEY_marker = 2751;
  KEY_masculine = 186;
  KEY_minus = 45;
  KEY_minutes = 2774;
  KEY_mu = 181;
  KEY_multiply = 215;
  KEY_musicalflat = 2806;
  KEY_musicalsharp = 2805;
  KEY_n__0 = 110;
  KEY_nabla = 2245;
  KEY_nacute__0 = 497;
  KEY_ncaron__0 = 498;
  KEY_ncedilla__0 = 1009;
  KEY_ninesubscript = 16785545;
  KEY_ninesuperior = 16785529;
  KEY_nl = 2536;
  KEY_nobreakspace = 160;
  KEY_notapproxeq = 16785991;
  KEY_notelementof = 16785929;
  KEY_notequal = 2237;
  KEY_notidentical = 16786018;
  KEY_notsign = 172;
  KEY_ntilde__0 = 241;
  KEY_numbersign = 35;
  KEY_numerosign = 1712;
  KEY_o__0 = 111;
  KEY_oacute__0 = 243;
  KEY_obarred__0 = 16777845;
  KEY_obelowdot__0 = 16785101;
  KEY_ocaron__0 = 16777682;
  KEY_ocircumflex__0 = 244;
  KEY_ocircumflexacute__0 = 16785105;
  KEY_ocircumflexbelowdot__0 = 16785113;
  KEY_ocircumflexgrave__0 = 16785107;
  KEY_ocircumflexhook__0 = 16785109;
  KEY_ocircumflextilde__0 = 16785111;
  KEY_odiaeresis__0 = 246;
  KEY_odoubleacute__0 = 501;
  KEY_oe__0 = 5053;
  KEY_ogonek = 434;
  KEY_ograve__0 = 242;
  KEY_ohook__0 = 16785103;
  KEY_ohorn__0 = 16777633;
  KEY_ohornacute__0 = 16785115;
  KEY_ohornbelowdot__0 = 16785123;
  KEY_ohorngrave__0 = 16785117;
  KEY_ohornhook__0 = 16785119;
  KEY_ohorntilde__0 = 16785121;
  KEY_omacron__0 = 1010;
  KEY_oneeighth = 2755;
  KEY_onefifth = 2738;
  KEY_onehalf = 189;
  KEY_onequarter = 188;
  KEY_onesixth = 2742;
  KEY_onesubscript = 16785537;
  KEY_onesuperior = 185;
  KEY_onethird = 2736;
  KEY_ooblique__0 = 248;
  KEY_openrectbullet = 2786;
  KEY_openstar = 2789;
  KEY_opentribulletdown = 2788;
  KEY_opentribulletup = 2787;
  KEY_ordfeminine = 170;
  KEY_oslash__0 = 248;
  KEY_otilde__0 = 245;
  KEY_overbar = 3008;
  KEY_overline = 1150;
  KEY_p__0 = 112;
  KEY_pabovedot__0 = 16784983;
  KEY_paragraph = 182;
  KEY_parenleft = 40;
  KEY_parenright = 41;
  KEY_partdifferential = 16785922;
  KEY_partialderivative = 2287;
  KEY_percent = 37;
  KEY_period = 46;
  KEY_periodcentered = 183;
  KEY_phonographcopyright = 2811;
  KEY_plus = 43;
  KEY_plusminus = 177;
  KEY_prescription = 2772;
  KEY_prolongedsound = 1200;
  KEY_punctspace = 2726;
  KEY_q__0 = 113;
  KEY_quad = 3020;
  KEY_question = 63;
  KEY_questiondown = 191;
  KEY_quotedbl = 34;
  KEY_quoteleft = 96;
  KEY_quoteright = 39;
  KEY_r__0 = 114;
  KEY_racute__0 = 480;
  KEY_radical = 2262;
  KEY_rcaron__0 = 504;
  KEY_rcedilla__0 = 947;
  KEY_registered = 174;
  KEY_rightanglebracket = 2750;
  KEY_rightarrow = 2301;
  KEY_rightcaret = 2982;
  KEY_rightdoublequotemark = 2771;
  KEY_rightmiddlecurlybrace = 2224;
  KEY_rightmiddlesummation = 2231;
  KEY_rightopentriangle = 2765;
  KEY_rightpointer = 2795;
  KEY_rightshoe = 3032;
  KEY_rightsinglequotemark = 2769;
  KEY_rightt = 2549;
  KEY_righttack = 3068;
  KEY_s__0 = 115;
  KEY_sabovedot__0 = 16784993;
  KEY_sacute__0 = 438;
  KEY_scaron__0 = 441;
  KEY_scedilla__0 = 442;
  KEY_schwa__0 = 16777817;
  KEY_scircumflex__0 = 766;
  KEY_script_switch = 65406;
  KEY_seconds = 2775;
  KEY_section = 167;
  KEY_semicolon = 59;
  KEY_semivoicedsound = 1247;
  KEY_seveneighths = 2758;
  KEY_sevensubscript = 16785543;
  KEY_sevensuperior = 16785527;
  KEY_signaturemark = 2762;
  KEY_signifblank = 2732;
  KEY_similarequal = 2249;
  KEY_singlelowquotemark = 2813;
  KEY_sixsubscript = 16785542;
  KEY_sixsuperior = 16785526;
  KEY_slash = 47;
  KEY_soliddiamond = 2528;
  KEY_space = 32;
  KEY_squareroot = 16785946;
  KEY_ssharp = 223;
  KEY_sterling = 163;
  KEY_stricteq = 16786019;
  KEY_t__0 = 116;
  KEY_tabovedot__0 = 16785003;
  KEY_tcaron__0 = 443;
  KEY_tcedilla__0 = 510;
  KEY_telephone = 2809;
  KEY_telephonerecorder = 2810;
  KEY_therefore = 2240;
  KEY_thinspace = 2727;
  KEY_thorn__1 = 254;
  KEY_threeeighths = 2756;
  KEY_threefifths = 2740;
  KEY_threequarters = 190;
  KEY_threesubscript = 16785539;
  KEY_threesuperior = 179;
  KEY_tintegral = 16785965;
  KEY_topintegral = 2212;
  KEY_topleftparens = 2219;
  KEY_topleftradical = 2210;
  KEY_topleftsqbracket = 2215;
  KEY_topleftsummation = 2225;
  KEY_toprightparens = 2221;
  KEY_toprightsqbracket = 2217;
  KEY_toprightsummation = 2229;
  KEY_topt = 2551;
  KEY_topvertsummationconnector = 2227;
  KEY_trademark = 2761;
  KEY_trademarkincircle = 2763;
  KEY_tslash__0 = 956;
  KEY_twofifths = 2739;
  KEY_twosubscript = 16785538;
  KEY_twosuperior = 178;
  KEY_twothirds = 2737;
  KEY_u__0 = 117;
  KEY_uacute__0 = 250;
  KEY_ubelowdot__0 = 16785125;
  KEY_ubreve__0 = 765;
  KEY_ucircumflex__0 = 251;
  KEY_udiaeresis__0 = 252;
  KEY_udoubleacute__0 = 507;
  KEY_ugrave__0 = 249;
  KEY_uhook__0 = 16785127;
  KEY_uhorn__0 = 16777648;
  KEY_uhornacute__0 = 16785129;
  KEY_uhornbelowdot__0 = 16785137;
  KEY_uhorngrave__0 = 16785131;
  KEY_uhornhook__0 = 16785133;
  KEY_uhorntilde__0 = 16785135;
  KEY_umacron__0 = 1022;
  KEY_underbar = 3014;
  KEY_underscore = 95;
  KEY_union = 2269;
  KEY_uogonek__0 = 1017;
  KEY_uparrow = 2300;
  KEY_upcaret = 2985;
  KEY_upleftcorner = 2540;
  KEY_uprightcorner = 2539;
  KEY_upshoe = 3011;
  KEY_upstile = 3027;
  KEY_uptack = 3022;
  KEY_uring__0 = 505;
  KEY_utilde__0 = 1021;
  KEY_v__0 = 118;
  KEY_variation = 2241;
  KEY_vertbar = 2552;
  KEY_vertconnector = 2214;
  KEY_voicedsound = 1246;
  KEY_vt = 2537;
  KEY_w__0 = 119;
  KEY_wacute__0 = 16785027;
  KEY_wcircumflex__0 = 16777589;
  KEY_wdiaeresis__0 = 16785029;
  KEY_wgrave__0 = 16785025;
  KEY_x__0 = 120;
  KEY_xabovedot__0 = 16785035;
  KEY_y__0 = 121;
  KEY_yacute__0 = 253;
  KEY_ybelowdot__0 = 16785141;
  KEY_ycircumflex__0 = 16777591;
  KEY_ydiaeresis__0 = 255;
  KEY_yen = 165;
  KEY_ygrave__0 = 16785139;
  KEY_yhook__0 = 16785143;
  KEY_ytilde__0 = 16785145;
  KEY_z__0 = 122;
  KEY_zabovedot__0 = 447;
  KEY_zacute__0 = 444;
  KEY_zcaron__0 = 446;
  KEY_zerosubscript = 16785536;
  KEY_zerosuperior = 16785520;
  KEY_zstroke__0 = 16777654;
  MAX_TIMECOORD_AXES = 128;
  PARENT_RELATIVE = 1;
  PRIORITY_REDRAW = 20;

type
  TGdkAxisUse = Integer;
const
  { GdkAxisUse }
  GDK_AXIS_IGNORE: TGdkAxisUse = 0;
  GDK_AXIS_X: TGdkAxisUse = 1;
  GDK_AXIS_Y: TGdkAxisUse = 2;
  GDK_AXIS_PRESSURE: TGdkAxisUse = 3;
  GDK_AXIS_XTILT: TGdkAxisUse = 4;
  GDK_AXIS_YTILT: TGdkAxisUse = 5;
  GDK_AXIS_WHEEL: TGdkAxisUse = 6;
  GDK_AXIS_LAST: TGdkAxisUse = 7;

type
  TGdkByteOrder = Integer;
const
  { GdkByteOrder }
  GDK_LSB_FIRST: TGdkByteOrder = 0;
  GDK_MSB_FIRST: TGdkByteOrder = 1;

type
  TGdkCrossingMode = Integer;
const
  { GdkCrossingMode }
  GDK_CROSSING_NORMAL: TGdkCrossingMode = 0;
  GDK_CROSSING_GRAB: TGdkCrossingMode = 1;
  GDK_CROSSING_UNGRAB: TGdkCrossingMode = 2;
  GDK_CROSSING_GTK_GRAB: TGdkCrossingMode = 3;
  GDK_CROSSING_GTK_UNGRAB: TGdkCrossingMode = 4;
  GDK_CROSSING_STATE_CHANGED: TGdkCrossingMode = 5;

type
  TGdkCursorType = Integer;
const
  { GdkCursorType }
  GDK_X_CURSOR: TGdkCursorType = 0;
  GDK_ARROW: TGdkCursorType = 2;
  GDK_BASED_ARROW_DOWN: TGdkCursorType = 4;
  GDK_BASED_ARROW_UP: TGdkCursorType = 6;
  GDK_BOAT: TGdkCursorType = 8;
  GDK_BOGOSITY: TGdkCursorType = 10;
  GDK_BOTTOM_LEFT_CORNER: TGdkCursorType = 12;
  GDK_BOTTOM_RIGHT_CORNER: TGdkCursorType = 14;
  GDK_BOTTOM_SIDE: TGdkCursorType = 16;
  GDK_BOTTOM_TEE: TGdkCursorType = 18;
  GDK_BOX_SPIRAL: TGdkCursorType = 20;
  GDK_CENTER_PTR: TGdkCursorType = 22;
  GDK_CIRCLE: TGdkCursorType = 24;
  GDK_CLOCK: TGdkCursorType = 26;
  GDK_COFFEE_MUG: TGdkCursorType = 28;
  GDK_CROSS: TGdkCursorType = 30;
  GDK_CROSS_REVERSE: TGdkCursorType = 32;
  GDK_CROSSHAIR: TGdkCursorType = 34;
  GDK_DIAMOND_CROSS: TGdkCursorType = 36;
  GDK_DOT: TGdkCursorType = 38;
  GDK_DOTBOX: TGdkCursorType = 40;
  GDK_DOUBLE_ARROW: TGdkCursorType = 42;
  GDK_DRAFT_LARGE: TGdkCursorType = 44;
  GDK_DRAFT_SMALL: TGdkCursorType = 46;
  GDK_DRAPED_BOX: TGdkCursorType = 48;
  GDK_EXCHANGE: TGdkCursorType = 50;
  GDK_FLEUR: TGdkCursorType = 52;
  GDK_GOBBLER: TGdkCursorType = 54;
  GDK_GUMBY: TGdkCursorType = 56;
  GDK_HAND1: TGdkCursorType = 58;
  GDK_HAND2: TGdkCursorType = 60;
  GDK_HEART: TGdkCursorType = 62;
  GDK_ICON: TGdkCursorType = 64;
  GDK_IRON_CROSS: TGdkCursorType = 66;
  GDK_LEFT_PTR: TGdkCursorType = 68;
  GDK_LEFT_SIDE: TGdkCursorType = 70;
  GDK_LEFT_TEE: TGdkCursorType = 72;
  GDK_LEFTBUTTON: TGdkCursorType = 74;
  GDK_LL_ANGLE: TGdkCursorType = 76;
  GDK_LR_ANGLE: TGdkCursorType = 78;
  GDK_MAN: TGdkCursorType = 80;
  GDK_MIDDLEBUTTON: TGdkCursorType = 82;
  GDK_MOUSE: TGdkCursorType = 84;
  GDK_PENCIL: TGdkCursorType = 86;
  GDK_PIRATE: TGdkCursorType = 88;
  GDK_PLUS: TGdkCursorType = 90;
  GDK_QUESTION_ARROW: TGdkCursorType = 92;
  GDK_RIGHT_PTR: TGdkCursorType = 94;
  GDK_RIGHT_SIDE: TGdkCursorType = 96;
  GDK_RIGHT_TEE: TGdkCursorType = 98;
  GDK_RIGHTBUTTON: TGdkCursorType = 100;
  GDK_RTL_LOGO: TGdkCursorType = 102;
  GDK_SAILBOAT: TGdkCursorType = 104;
  GDK_SB_DOWN_ARROW: TGdkCursorType = 106;
  GDK_SB_H_DOUBLE_ARROW: TGdkCursorType = 108;
  GDK_SB_LEFT_ARROW: TGdkCursorType = 110;
  GDK_SB_RIGHT_ARROW: TGdkCursorType = 112;
  GDK_SB_UP_ARROW: TGdkCursorType = 114;
  GDK_SB_V_DOUBLE_ARROW: TGdkCursorType = 116;
  GDK_SHUTTLE: TGdkCursorType = 118;
  GDK_SIZING: TGdkCursorType = 120;
  GDK_SPIDER: TGdkCursorType = 122;
  GDK_SPRAYCAN: TGdkCursorType = 124;
  GDK_STAR: TGdkCursorType = 126;
  GDK_TARGET: TGdkCursorType = 128;
  GDK_TCROSS: TGdkCursorType = 130;
  GDK_TOP_LEFT_ARROW: TGdkCursorType = 132;
  GDK_TOP_LEFT_CORNER: TGdkCursorType = 134;
  GDK_TOP_RIGHT_CORNER: TGdkCursorType = 136;
  GDK_TOP_SIDE: TGdkCursorType = 138;
  GDK_TOP_TEE: TGdkCursorType = 140;
  GDK_TREK: TGdkCursorType = 142;
  GDK_UL_ANGLE: TGdkCursorType = 144;
  GDK_UMBRELLA: TGdkCursorType = 146;
  GDK_UR_ANGLE: TGdkCursorType = 148;
  GDK_WATCH: TGdkCursorType = 150;
  GDK_XTERM: TGdkCursorType = 152;
  GDK_LAST_CURSOR: TGdkCursorType = 153;
  GDK_BLANK_CURSOR: TGdkCursorType = -2;
  GDK_CURSOR_IS_PIXMAP: TGdkCursorType = -1;

  { GdkModifierType }
  GDK_SHIFT_MASK = 1;
  GDK_LOCK_MASK = 2;
  GDK_CONTROL_MASK = 4;
  GDK_MOD1_MASK = 8;
  GDK_MOD2_MASK = 16;
  GDK_MOD3_MASK = 32;
  GDK_MOD4_MASK = 64;
  GDK_MOD5_MASK = 128;
  GDK_BUTTON1_MASK = 256;
  GDK_BUTTON2_MASK = 512;
  GDK_BUTTON3_MASK = 1024;
  GDK_BUTTON4_MASK = 2048;
  GDK_BUTTON5_MASK = 4096;
  GDK_MODIFIER_RESERVED_13_MASK = 8192;
  GDK_MODIFIER_RESERVED_14_MASK = 16384;
  GDK_MODIFIER_RESERVED_15_MASK = 32768;
  GDK_MODIFIER_RESERVED_16_MASK = 65536;
  GDK_MODIFIER_RESERVED_17_MASK = 131072;
  GDK_MODIFIER_RESERVED_18_MASK = 262144;
  GDK_MODIFIER_RESERVED_19_MASK = 524288;
  GDK_MODIFIER_RESERVED_20_MASK = 1048576;
  GDK_MODIFIER_RESERVED_21_MASK = 2097152;
  GDK_MODIFIER_RESERVED_22_MASK = 4194304;
  GDK_MODIFIER_RESERVED_23_MASK = 8388608;
  GDK_MODIFIER_RESERVED_24_MASK = 16777216;
  GDK_MODIFIER_RESERVED_25_MASK = 33554432;
  GDK_SUPER_MASK = 67108864;
  GDK_HYPER_MASK = 134217728;
  GDK_META_MASK = 268435456;
  GDK_MODIFIER_RESERVED_29_MASK = 536870912;
  GDK_RELEASE_MASK = 1073741824;
  GDK_MODIFIER_MASK = 1543512063;

type
  TGdkGrabOwnership = Integer;
const
  { GdkGrabOwnership }
  GDK_OWNERSHIP_NONE: TGdkGrabOwnership = 0;
  GDK_OWNERSHIP_WINDOW: TGdkGrabOwnership = 1;
  GDK_OWNERSHIP_APPLICATION: TGdkGrabOwnership = 2;

  { GdkEventMask }
  GDK_EXPOSURE_MASK = 2;
  GDK_POINTER_MOTION_MASK = 4;
  GDK_POINTER_MOTION_HINT_MASK = 8;
  GDK_BUTTON_MOTION_MASK = 16;
  GDK_BUTTON1_MOTION_MASK = 32;
  GDK_BUTTON2_MOTION_MASK = 64;
  GDK_BUTTON3_MOTION_MASK = 128;
  GDK_BUTTON_PRESS_MASK = 256;
  GDK_BUTTON_RELEASE_MASK = 512;
  GDK_KEY_PRESS_MASK = 1024;
  GDK_KEY_RELEASE_MASK = 2048;
  GDK_ENTER_NOTIFY_MASK = 4096;
  GDK_LEAVE_NOTIFY_MASK = 8192;
  GDK_FOCUS_CHANGE_MASK = 16384;
  GDK_STRUCTURE_MASK = 32768;
  GDK_PROPERTY_CHANGE_MASK = 65536;
  GDK_VISIBILITY_NOTIFY_MASK = 131072;
  GDK_PROXIMITY_IN_MASK = 262144;
  GDK_PROXIMITY_OUT_MASK = 524288;
  GDK_SUBSTRUCTURE_MASK = 1048576;
  GDK_SCROLL_MASK = 2097152;
  GDK_ALL_EVENTS_MASK = 4194302;

type
  TGdkInputMode = Integer;
const
  { GdkInputMode }
  GDK_MODE_DISABLED: TGdkInputMode = 0;
  GDK_MODE_SCREEN: TGdkInputMode = 1;
  GDK_MODE_WINDOW: TGdkInputMode = 2;

type
  TGdkWindowEdge = Integer;
const
  { GdkWindowEdge }
  GDK_WINDOW_EDGE_NORTH_WEST: TGdkWindowEdge = 0;
  GDK_WINDOW_EDGE_NORTH: TGdkWindowEdge = 1;
  GDK_WINDOW_EDGE_NORTH_EAST: TGdkWindowEdge = 2;
  GDK_WINDOW_EDGE_WEST: TGdkWindowEdge = 3;
  GDK_WINDOW_EDGE_EAST: TGdkWindowEdge = 4;
  GDK_WINDOW_EDGE_SOUTH_WEST: TGdkWindowEdge = 5;
  GDK_WINDOW_EDGE_SOUTH: TGdkWindowEdge = 6;
  GDK_WINDOW_EDGE_SOUTH_EAST: TGdkWindowEdge = 7;

  { GdkWMDecoration }
  GDK_DECOR_ALL = 1;
  GDK_DECOR_BORDER = 2;
  GDK_DECOR_RESIZEH = 4;
  GDK_DECOR_TITLE = 8;
  GDK_DECOR_MENU = 16;
  GDK_DECOR_MINIMIZE = 32;
  GDK_DECOR_MAXIMIZE = 64;

type
  TGdkInputSource = Integer;
const
  { GdkInputSource }
  GDK_SOURCE_MOUSE: TGdkInputSource = 0;
  GDK_SOURCE_PEN: TGdkInputSource = 1;
  GDK_SOURCE_ERASER: TGdkInputSource = 2;
  GDK_SOURCE_CURSOR: TGdkInputSource = 3;
  GDK_SOURCE_KEYBOARD: TGdkInputSource = 4;

  { GdkWindowState }
  GDK_WINDOW_STATE_WITHDRAWN = 1;
  GDK_WINDOW_STATE_ICONIFIED = 2;
  GDK_WINDOW_STATE_MAXIMIZED = 4;
  GDK_WINDOW_STATE_STICKY = 8;
  GDK_WINDOW_STATE_FULLSCREEN = 16;
  GDK_WINDOW_STATE_ABOVE = 32;
  GDK_WINDOW_STATE_BELOW = 64;

  { GdkWMFunction }
  GDK_FUNC_ALL = 1;
  GDK_FUNC_RESIZE = 2;
  GDK_FUNC_MOVE = 4;
  GDK_FUNC_MINIMIZE = 8;
  GDK_FUNC_MAXIMIZE = 16;
  GDK_FUNC_CLOSE = 32;

  { GdkWindowHints }
  GDK_HINT_POS = 1;
  GDK_HINT_MIN_SIZE = 2;
  GDK_HINT_MAX_SIZE = 4;
  GDK_HINT_BASE_SIZE = 8;
  GDK_HINT_ASPECT = 16;
  GDK_HINT_RESIZE_INC = 32;
  GDK_HINT_WIN_GRAVITY = 64;
  GDK_HINT_USER_POS = 128;
  GDK_HINT_USER_SIZE = 256;

type
  TGdkWindowTypeHint = Integer;
const
  { GdkWindowTypeHint }
  GDK_WINDOW_TYPE_HINT_NORMAL: TGdkWindowTypeHint = 0;
  GDK_WINDOW_TYPE_HINT_DIALOG: TGdkWindowTypeHint = 1;
  GDK_WINDOW_TYPE_HINT_MENU: TGdkWindowTypeHint = 2;
  GDK_WINDOW_TYPE_HINT_TOOLBAR: TGdkWindowTypeHint = 3;
  GDK_WINDOW_TYPE_HINT_SPLASHSCREEN: TGdkWindowTypeHint = 4;
  GDK_WINDOW_TYPE_HINT_UTILITY: TGdkWindowTypeHint = 5;
  GDK_WINDOW_TYPE_HINT_DOCK: TGdkWindowTypeHint = 6;
  GDK_WINDOW_TYPE_HINT_DESKTOP: TGdkWindowTypeHint = 7;
  GDK_WINDOW_TYPE_HINT_DROPDOWN_MENU: TGdkWindowTypeHint = 8;
  GDK_WINDOW_TYPE_HINT_POPUP_MENU: TGdkWindowTypeHint = 9;
  GDK_WINDOW_TYPE_HINT_TOOLTIP: TGdkWindowTypeHint = 10;
  GDK_WINDOW_TYPE_HINT_NOTIFICATION: TGdkWindowTypeHint = 11;
  GDK_WINDOW_TYPE_HINT_COMBO: TGdkWindowTypeHint = 12;
  GDK_WINDOW_TYPE_HINT_DND: TGdkWindowTypeHint = 13;

type
  TGdkDeviceType = Integer;
const
  { GdkDeviceType }
  GDK_DEVICE_TYPE_MASTER: TGdkDeviceType = 0;
  GDK_DEVICE_TYPE_SLAVE: TGdkDeviceType = 1;
  GDK_DEVICE_TYPE_FLOATING: TGdkDeviceType = 2;

type
  TGdkGrabStatus = Integer;
const
  { GdkGrabStatus }
  GDK_GRAB_SUCCESS: TGdkGrabStatus = 0;
  GDK_GRAB_ALREADY_GRABBED: TGdkGrabStatus = 1;
  GDK_GRAB_INVALID_TIME: TGdkGrabStatus = 2;
  GDK_GRAB_NOT_VIEWABLE: TGdkGrabStatus = 3;
  GDK_GRAB_FROZEN: TGdkGrabStatus = 4;

type
  TGdkEventType = Integer;
const
  { GdkEventType }
  GDK_NOTHING: TGdkEventType = -1;
  GDK_DELETE: TGdkEventType = 0;
  GDK_DESTROY: TGdkEventType = 1;
  GDK_EXPOSE: TGdkEventType = 2;
  GDK_MOTION_NOTIFY: TGdkEventType = 3;
  GDK_BUTTON_PRESS: TGdkEventType = 4;
  GDK_2BUTTON_PRESS: TGdkEventType = 5;
  GDK_3BUTTON_PRESS: TGdkEventType = 6;
  GDK_BUTTON_RELEASE: TGdkEventType = 7;
  GDK_KEY_PRESS: TGdkEventType = 8;
  GDK_KEY_RELEASE: TGdkEventType = 9;
  GDK_ENTER_NOTIFY: TGdkEventType = 10;
  GDK_LEAVE_NOTIFY: TGdkEventType = 11;
  GDK_FOCUS_CHANGE: TGdkEventType = 12;
  GDK_CONFIGURE: TGdkEventType = 13;
  GDK_MAP: TGdkEventType = 14;
  GDK_UNMAP: TGdkEventType = 15;
  GDK_PROPERTY_NOTIFY: TGdkEventType = 16;
  GDK_SELECTION_CLEAR: TGdkEventType = 17;
  GDK_SELECTION_REQUEST: TGdkEventType = 18;
  GDK_SELECTION_NOTIFY: TGdkEventType = 19;
  GDK_PROXIMITY_IN: TGdkEventType = 20;
  GDK_PROXIMITY_OUT: TGdkEventType = 21;
  GDK_DRAG_ENTER: TGdkEventType = 22;
  GDK_DRAG_LEAVE: TGdkEventType = 23;
  GDK_DRAG_MOTION_: TGdkEventType = 24;
  GDK_DRAG_STATUS_: TGdkEventType = 25;
  GDK_DROP_START: TGdkEventType = 26;
  GDK_DROP_FINISHED: TGdkEventType = 27;
  GDK_CLIENT_EVENT: TGdkEventType = 28;
  GDK_VISIBILITY_NOTIFY: TGdkEventType = 29;
  GDK_SCROLL: TGdkEventType = 31;
  GDK_WINDOW_STATE: TGdkEventType = 32;
  GDK_SETTING: TGdkEventType = 33;
  GDK_OWNER_CHANGE: TGdkEventType = 34;
  GDK_GRAB_BROKEN: TGdkEventType = 35;
  GDK_DAMAGE: TGdkEventType = 36;
  GDK_EVENT_LAST: TGdkEventType = 37;

type
  TGdkVisibilityState = Integer;
const
  { GdkVisibilityState }
  GDK_VISIBILITY_UNOBSCURED: TGdkVisibilityState = 0;
  GDK_VISIBILITY_PARTIAL: TGdkVisibilityState = 1;
  GDK_VISIBILITY_FULLY_OBSCURED: TGdkVisibilityState = 2;

type
  TGdkScrollDirection = Integer;
const
  { GdkScrollDirection }
  GDK_SCROLL_UP: TGdkScrollDirection = 0;
  GDK_SCROLL_DOWN: TGdkScrollDirection = 1;
  GDK_SCROLL_LEFT: TGdkScrollDirection = 2;
  GDK_SCROLL_RIGHT: TGdkScrollDirection = 3;

type
  TGdkNotifyType = Integer;
const
  { GdkNotifyType }
  GDK_NOTIFY_ANCESTOR: TGdkNotifyType = 0;
  GDK_NOTIFY_VIRTUAL: TGdkNotifyType = 1;
  GDK_NOTIFY_INFERIOR: TGdkNotifyType = 2;
  GDK_NOTIFY_NONLINEAR: TGdkNotifyType = 3;
  GDK_NOTIFY_NONLINEAR_VIRTUAL: TGdkNotifyType = 4;
  GDK_NOTIFY_UNKNOWN: TGdkNotifyType = 5;

type
  TGdkOwnerChange = Integer;
const
  { GdkOwnerChange }
  GDK_OWNER_CHANGE_NEW_OWNER: TGdkOwnerChange = 0;
  GDK_OWNER_CHANGE_DESTROY: TGdkOwnerChange = 1;
  GDK_OWNER_CHANGE_CLOSE: TGdkOwnerChange = 2;

type
  TGdkSettingAction = Integer;
const
  { GdkSettingAction }
  GDK_SETTING_ACTION_NEW: TGdkSettingAction = 0;
  GDK_SETTING_ACTION_CHANGED: TGdkSettingAction = 1;
  GDK_SETTING_ACTION_DELETED: TGdkSettingAction = 2;

  { GdkDragAction }
  GDK_ACTION_DEFAULT = 1;
  GDK_ACTION_COPY = 2;
  GDK_ACTION_MOVE = 4;
  GDK_ACTION_LINK = 8;
  GDK_ACTION_PRIVATE = 16;
  GDK_ACTION_ASK = 32;

type
  TGdkDragProtocol = Integer;
const
  { GdkDragProtocol }
  GDK_DRAG_PROTO_NONE: TGdkDragProtocol = 0;
  GDK_DRAG_PROTO_MOTIF: TGdkDragProtocol = 1;
  GDK_DRAG_PROTO_XDND: TGdkDragProtocol = 2;
  GDK_DRAG_PROTO_ROOTWIN: TGdkDragProtocol = 3;
  GDK_DRAG_PROTO_WIN32_DROPFILES: TGdkDragProtocol = 4;
  GDK_DRAG_PROTO_OLE2: TGdkDragProtocol = 5;
  GDK_DRAG_PROTO_LOCAL: TGdkDragProtocol = 6;

type
  TGdkExtensionMode = Integer;
const
  { GdkExtensionMode }
  GDK_EXTENSION_EVENTS_NONE: TGdkExtensionMode = 0;
  GDK_EXTENSION_EVENTS_ALL: TGdkExtensionMode = 1;
  GDK_EXTENSION_EVENTS_CURSOR: TGdkExtensionMode = 2;

type
  TGdkFilterReturn = Integer;
const
  { GdkFilterReturn }
  GDK_FILTER_CONTINUE: TGdkFilterReturn = 0;
  GDK_FILTER_TRANSLATE: TGdkFilterReturn = 1;
  GDK_FILTER_REMOVE: TGdkFilterReturn = 2;

type
  TGdkGravity = Integer;
const
  { GdkGravity }
  GDK_GRAVITY_NORTH_WEST: TGdkGravity = 1;
  GDK_GRAVITY_NORTH: TGdkGravity = 2;
  GDK_GRAVITY_NORTH_EAST: TGdkGravity = 3;
  GDK_GRAVITY_WEST: TGdkGravity = 4;
  GDK_GRAVITY_CENTER: TGdkGravity = 5;
  GDK_GRAVITY_EAST: TGdkGravity = 6;
  GDK_GRAVITY_SOUTH_WEST: TGdkGravity = 7;
  GDK_GRAVITY_SOUTH: TGdkGravity = 8;
  GDK_GRAVITY_SOUTH_EAST: TGdkGravity = 9;
  GDK_GRAVITY_STATIC: TGdkGravity = 10;

type
  TGdkPropMode = Integer;
const
  { GdkPropMode }
  GDK_PROP_MODE_REPLACE: TGdkPropMode = 0;
  GDK_PROP_MODE_PREPEND: TGdkPropMode = 1;
  GDK_PROP_MODE_APPEND: TGdkPropMode = 2;

type
  TGdkPropertyState = Integer;
const
  { GdkPropertyState }
  GDK_PROPERTY_NEW_VALUE: TGdkPropertyState = 0;
  GDK_PROPERTY_DELETE_: TGdkPropertyState = 1;

type
  TGdkVisualType = Integer;
const
  { GdkVisualType }
  GDK_VISUAL_STATIC_GRAY: TGdkVisualType = 0;
  GDK_VISUAL_GRAYSCALE: TGdkVisualType = 1;
  GDK_VISUAL_STATIC_COLOR: TGdkVisualType = 2;
  GDK_VISUAL_PSEUDO_COLOR: TGdkVisualType = 3;
  GDK_VISUAL_TRUE_COLOR: TGdkVisualType = 4;
  GDK_VISUAL_DIRECT_COLOR: TGdkVisualType = 5;

type
  TGdkStatus = Integer;
const
  { GdkStatus }
  GDK_OK: TGdkStatus = 0;
  GDK_ERROR: TGdkStatus = -1;
  GDK_ERROR_PARAM: TGdkStatus = -2;
  GDK_ERROR_FILE: TGdkStatus = -3;
  GDK_ERROR_MEM: TGdkStatus = -4;

type
  TGdkWindowWindowClass = Integer;
const
  { GdkWindowWindowClass }
  GDK_INPUT_OUTPUT: TGdkWindowWindowClass = 0;
  GDK_INPUT_ONLY: TGdkWindowWindowClass = 1;

type
  TGdkWindowType = Integer;
const
  { GdkWindowType }
  GDK_WINDOW_ROOT: TGdkWindowType = 0;
  GDK_WINDOW_TOPLEVEL: TGdkWindowType = 1;
  GDK_WINDOW_CHILD: TGdkWindowType = 2;
  GDK_WINDOW_TEMP: TGdkWindowType = 3;
  GDK_WINDOW_FOREIGN: TGdkWindowType = 4;
  GDK_WINDOW_OFFSCREEN: TGdkWindowType = 5;

  { GdkWindowAttributesType }
  GDK_WA_TITLE = 2;
  GDK_WA_X = 4;
  GDK_WA_Y = 8;
  GDK_WA_CURSOR = 16;
  GDK_WA_VISUAL = 32;
  GDK_WA_WMCLASS = 64;
  GDK_WA_NOREDIR = 128;
  GDK_WA_TYPE_HINT = 256;
type

  PPGdkRectangle = ^PGdkRectangle;
  PGdkRectangle = ^TGdkRectangle;
  TGdkRectangle = Tcairo_rectangle_int_t;

  PPGdkXEvent = ^PGdkXEvent;
  PGdkXEvent = ^TGdkXEvent;
  TGdkXEvent = gpointer;

  PPGdkDisplay = ^PGdkDisplay;
  PGdkDisplay = ^TGdkDisplay;

  PPGdkDevice = ^PGdkDevice;
  PGdkDevice = ^TGdkDevice;

  PPGdkAppLaunchContext = ^PGdkAppLaunchContext;
  PGdkAppLaunchContext = ^TGdkAppLaunchContext;

  PPGdkWindow = ^PGdkWindow;
  PGdkWindow = ^TGdkWindow;

  PPGdkScreen = ^PGdkScreen;
  PGdkScreen = ^TGdkScreen;

  PPGdkDeviceManager = ^PGdkDeviceManager;
  PGdkDeviceManager = ^TGdkDeviceManager;

  PPGdkEvent = ^PGdkEvent;
  PGdkEvent = ^TGdkEvent;

  PPPGdkAtom = ^PPGdkAtom;
  PPGdkAtom = ^PGdkAtom;
  PGdkAtom = ^TGdkAtom;
  TGdkAtom = object
    function name: Pgchar; cdecl; inline;
    function intern(atom_name: Pgchar; only_if_exists: gboolean): TGdkAtom; cdecl; inline; static;
    function intern_static_string(atom_name: Pgchar): TGdkAtom; cdecl; inline; static;
  end;
  TGdkDisplay = object(TGObject)
    function get_default: PGdkDisplay; cdecl; inline; static;
    function open(display_name: Pgchar): PGdkDisplay; cdecl; inline; static;
    function open_default_libgtk_only: PGdkDisplay; cdecl; inline; static;
    procedure beep; cdecl; inline;
    procedure close; cdecl; inline;
    function device_is_grabbed(device: PGdkDevice): gboolean; cdecl; inline;
    procedure flush; cdecl; inline;
    function get_app_launch_context: PGdkAppLaunchContext; cdecl; inline;
    function get_default_cursor_size: guint; cdecl; inline;
    function get_default_group: PGdkWindow; cdecl; inline;
    function get_default_screen: PGdkScreen; cdecl; inline;
    function get_device_manager: PGdkDeviceManager; cdecl; inline;
    function get_event: PGdkEvent; cdecl; inline;
    procedure get_maximal_cursor_size(width: Pguint; height: Pguint); cdecl; inline;
    function get_n_screens: gint; cdecl; inline;
    function get_name: Pgchar; cdecl; inline;
    
    function get_screen(screen_num: gint): PGdkScreen; cdecl; inline;
    
    function has_pending: gboolean; cdecl; inline;
    function is_closed: gboolean; cdecl; inline;
    
    
    procedure notify_startup_complete(startup_id: Pgchar); cdecl; inline;
    function peek_event: PGdkEvent; cdecl; inline;
    
    
    procedure put_event(event: PGdkEvent); cdecl; inline;
    function request_selection_notification(selection: TGdkAtom): gboolean; cdecl; inline;
    procedure set_double_click_distance(distance: guint); cdecl; inline;
    procedure set_double_click_time(msec: guint); cdecl; inline;
    procedure store_clipboard(clipboard_window: PGdkWindow; time_: guint32; targets: PGdkAtom; n_targets: gint); cdecl; inline;
    function supports_clipboard_persistence: gboolean; cdecl; inline;
    function supports_composite: gboolean; cdecl; inline;
    function supports_cursor_alpha: gboolean; cdecl; inline;
    function supports_cursor_color: gboolean; cdecl; inline;
    function supports_input_shapes: gboolean; cdecl; inline;
    function supports_selection_notification: gboolean; cdecl; inline;
    function supports_shapes: gboolean; cdecl; inline;
    procedure sync; cdecl; inline;
    
  end;

  PPGdkVisual = ^PGdkVisual;
  PGdkVisual = ^TGdkVisual;
  TGdkScreen = object(TGObject)
    function get_default: PGdkScreen; cdecl; inline; static;
    function height: gint; cdecl; inline; static;
    function height_mm: gint; cdecl; inline; static;
    function width: gint; cdecl; inline; static;
    function width_mm: gint; cdecl; inline; static;
    function get_active_window: PGdkWindow; cdecl; inline;
    function get_display: PGdkDisplay; cdecl; inline;
    function get_font_options: Pcairo_font_options_t; cdecl; inline;
    function get_height: gint; cdecl; inline;
    function get_height_mm: gint; cdecl; inline;
    function get_monitor_at_point(x: gint; y: gint): gint; cdecl; inline;
    function get_monitor_at_window(window: PGdkWindow): gint; cdecl; inline;
    procedure get_monitor_geometry(monitor_num: gint; dest: PGdkRectangle); cdecl; inline;
    function get_monitor_height_mm(monitor_num: gint): gint; cdecl; inline;
    function get_monitor_plug_name(monitor_num: gint): Pgchar; cdecl; inline;
    function get_monitor_width_mm(monitor_num: gint): gint; cdecl; inline;
    function get_n_monitors: gint; cdecl; inline;
    function get_number: gint; cdecl; inline;
    function get_primary_monitor: gint; cdecl; inline;
    function get_resolution: gdouble; cdecl; inline;
    function get_rgba_visual: PGdkVisual; cdecl; inline;
    function get_root_window: PGdkWindow; cdecl; inline;
    function get_setting(name: Pgchar; value: PGValue): gboolean; cdecl; inline;
    function get_system_visual: PGdkVisual; cdecl; inline;
    function get_toplevel_windows: PGList; cdecl; inline;
    function get_width: gint; cdecl; inline;
    function get_width_mm: gint; cdecl; inline;
    function get_window_stack: PGList; cdecl; inline;
    function is_composited: gboolean; cdecl; inline;
    function list_visuals: PGList; cdecl; inline;
    function make_display_name: Pgchar; cdecl; inline;
    procedure set_font_options(options: Pcairo_font_options_t); cdecl; inline;
    procedure set_resolution(dpi: gdouble); cdecl; inline;
    property font_options:  Pcairo_font_options_t read get_font_options  { property is writeable but setter not declared } ;
    property resolution:  gdouble read get_resolution  { property is writeable but setter not declared } ;
  end;
  TGdkAppLaunchContext = object(TGAppLaunchContext)
    
    procedure set_desktop(desktop: gint); cdecl; inline;
    
    procedure set_icon(icon: PGIcon); cdecl; inline;
    procedure set_icon_name(icon_name: Pgchar); cdecl; inline;
    procedure set_screen(screen: PGdkScreen); cdecl; inline;
    procedure set_timestamp(timestamp: guint32); cdecl; inline;
    //property display: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_display  { property is writeable but setter not declared } ;
  end;

  PPGdkAxisUse = ^PGdkAxisUse;
  PGdkAxisUse = ^TGdkAxisUse;

  PPGdkByteOrder = ^PGdkByteOrder;
  PGdkByteOrder = ^TGdkByteOrder;

  PPGdkColor = ^PGdkColor;
  PGdkColor = ^TGdkColor;
  TGdkColor = object
    pixel: guint32;
    red: guint16;
    green: guint16;
    blue: guint16;
    function copy: PPangoColor; cdecl; inline;
    function equal(colorb: PPangoColor): gboolean; cdecl; inline;
    procedure free; cdecl; inline;
    function hash: guint; cdecl; inline;
    function to_string: Pgchar; cdecl; inline;
    function parse(spec: Pgchar; color: PPangoColor): gboolean; cdecl; inline; static;
  end;

  PPGdkCrossingMode = ^PGdkCrossingMode;
  PGdkCrossingMode = ^TGdkCrossingMode;

  PPGdkCursor = ^PGdkCursor;
  PGdkCursor = ^TGdkCursor;

  PPGdkCursorType = ^PGdkCursorType;
  PGdkCursorType = ^TGdkCursorType;
  TGdkCursor = object(TGObject)
    function new(cursor_type: TGdkCursorType): PGdkCursor; cdecl; inline; static;
    function new_for_display(display: PGdkDisplay; cursor_type: TGdkCursorType): PGdkCursor; cdecl; inline; static;
    function new_from_name(display: PGdkDisplay; name: Pgchar): PGdkCursor; cdecl; inline; static;
    function new_from_pixbuf(display: PGdkDisplay; pixbuf: PGdkPixbuf; x: gint; y: gint): PGdkCursor; cdecl; inline; static;
    function get_cursor_type: TGdkCursorType; cdecl; inline;
    function get_display: PGdkDisplay; cdecl; inline;
    function get_image: PGdkPixbuf; cdecl; inline;
    
    
    property cursor_type:  TGdkCursorType read get_cursor_type  { property is writeable but setter not declared } ;
    property display:  PGdkDisplay read get_display  { property is writeable but setter not declared } ;
  end;

  PPPPGdkTimeCoord = ^PPPGdkTimeCoord;
  PPPGdkTimeCoord = ^PPGdkTimeCoord;
  PPGdkTimeCoord = ^PGdkTimeCoord;
  PGdkTimeCoord = ^TGdkTimeCoord;

  TGdkTimeCoord = record
    time: guint32;
    axes: array [0..127] of gdouble;
  end;



  PPGdkDeviceType = ^PGdkDeviceType;
  PGdkDeviceType = ^TGdkDeviceType;

  PPGdkModifierType = ^PGdkModifierType;
  PGdkModifierType = ^TGdkModifierType;
  TGdkModifierType = packed object(TBitObject32)
  public
    property shift_mask: DWord index 1 read GetBit write SetBit;
    property lock_mask: DWord index 2 read GetBit write SetBit;
    property control_mask: DWord index 4 read GetBit write SetBit;
    property mod1_mask: DWord index 8 read GetBit write SetBit;
    property mod2_mask: DWord index 16 read GetBit write SetBit;
    property mod3_mask: DWord index 32 read GetBit write SetBit;
    property mod4_mask: DWord index 64 read GetBit write SetBit;
    property mod5_mask: DWord index 128 read GetBit write SetBit;
    property button1_mask: DWord index 256 read GetBit write SetBit;
    property button2_mask: DWord index 512 read GetBit write SetBit;
    property button3_mask: DWord index 1024 read GetBit write SetBit;
    property button4_mask: DWord index 2048 read GetBit write SetBit;
    property button5_mask: DWord index 4096 read GetBit write SetBit;
    property modifier_reserved_13_mask: DWord index 8192 read GetBit write SetBit;
    property modifier_reserved_14_mask: DWord index 16384 read GetBit write SetBit;
    property modifier_reserved_15_mask: DWord index 32768 read GetBit write SetBit;
    property modifier_reserved_16_mask: DWord index 65536 read GetBit write SetBit;
    property modifier_reserved_17_mask: DWord index 131072 read GetBit write SetBit;
    property modifier_reserved_18_mask: DWord index 262144 read GetBit write SetBit;
    property modifier_reserved_19_mask: DWord index 524288 read GetBit write SetBit;
    property modifier_reserved_20_mask: DWord index 1048576 read GetBit write SetBit;
    property modifier_reserved_21_mask: DWord index 2097152 read GetBit write SetBit;
    property modifier_reserved_22_mask: DWord index 4194304 read GetBit write SetBit;
    property modifier_reserved_23_mask: DWord index 8388608 read GetBit write SetBit;
    property modifier_reserved_24_mask: DWord index 16777216 read GetBit write SetBit;
    property modifier_reserved_25_mask: DWord index 33554432 read GetBit write SetBit;
    property super_mask: DWord index 67108864 read GetBit write SetBit;
    property hyper_mask: DWord index 134217728 read GetBit write SetBit;
    property meta_mask: DWord index 268435456 read GetBit write SetBit;
    property modifier_reserved_29_mask: DWord index 536870912 read GetBit write SetBit;
    property release_mask: DWord index 1073741824 read GetBit write SetBit;
    property modifier_mask: DWord index 1543512063 read GetBit write SetBit;
  end;


  PPGdkInputMode = ^PGdkInputMode;
  PGdkInputMode = ^TGdkInputMode;

  PPGdkInputSource = ^PGdkInputSource;
  PGdkInputSource = ^TGdkInputSource;

  PPGdkGrabStatus = ^PGdkGrabStatus;
  PGdkGrabStatus = ^TGdkGrabStatus;

  PPGdkGrabOwnership = ^PGdkGrabOwnership;
  PGdkGrabOwnership = ^TGdkGrabOwnership;

  PPGdkEventMask = ^PGdkEventMask;
  PGdkEventMask = ^TGdkEventMask;
  TGdkEventMask = packed object(TBitObject32)
  public
    property exposure_mask: DWord index 2 read GetBit write SetBit;
    property pointer_motion_mask: DWord index 4 read GetBit write SetBit;
    property pointer_motion_hint_mask: DWord index 8 read GetBit write SetBit;
    property button_motion_mask: DWord index 16 read GetBit write SetBit;
    property button1_motion_mask: DWord index 32 read GetBit write SetBit;
    property button2_motion_mask: DWord index 64 read GetBit write SetBit;
    property button3_motion_mask: DWord index 128 read GetBit write SetBit;
    property button_press_mask: DWord index 256 read GetBit write SetBit;
    property button_release_mask: DWord index 512 read GetBit write SetBit;
    property key_press_mask: DWord index 1024 read GetBit write SetBit;
    property key_release_mask: DWord index 2048 read GetBit write SetBit;
    property enter_notify_mask: DWord index 4096 read GetBit write SetBit;
    property leave_notify_mask: DWord index 8192 read GetBit write SetBit;
    property focus_change_mask: DWord index 16384 read GetBit write SetBit;
    property structure_mask: DWord index 32768 read GetBit write SetBit;
    property property_change_mask: DWord index 65536 read GetBit write SetBit;
    property visibility_notify_mask: DWord index 131072 read GetBit write SetBit;
    property proximity_in_mask: DWord index 262144 read GetBit write SetBit;
    property proximity_out_mask: DWord index 524288 read GetBit write SetBit;
    property substructure_mask: DWord index 1048576 read GetBit write SetBit;
    property scroll_mask: DWord index 2097152 read GetBit write SetBit;
    property all_events_mask: DWord index 4194302 read GetBit write SetBit;
  end;

  TGdkDevice = object(TGObject)
    procedure free_history(events: PPGdkTimeCoord; n_events: gint); cdecl; inline; static;
    function grab_info_libgtk_only(display: PGdkDisplay; device: PGdkDevice; grab_window: PPGdkWindow; owner_events: Pgboolean): gboolean; cdecl; inline; static;
    function get_associated_device: PGdkDevice; cdecl; inline;
    function get_axis(axes: Pgdouble; use: TGdkAxisUse; value: Pgdouble): gboolean; cdecl; inline;
    function get_axis_use(index_: guint): TGdkAxisUse; cdecl; inline;
    function get_axis_value(axes: Pgdouble; axis_label: TGdkAtom; value: Pgdouble): gboolean; cdecl; inline;
    function get_device_type: TGdkDeviceType; cdecl; inline;
    function get_display: PGdkDisplay; cdecl; inline;
    function get_has_cursor: gboolean; cdecl; inline;
    function get_history(window: PGdkWindow; start: guint32; stop: guint32; events: PPPGdkTimeCoord; n_events: Pgint): gboolean; cdecl; inline;
    function get_key(index_: guint; keyval: Pguint; modifiers: PGdkModifierType): gboolean; cdecl; inline;
    function get_mode: TGdkInputMode; cdecl; inline;
    function get_n_axes: gint; cdecl; inline;
    function get_n_keys: gint; cdecl; inline;
    function get_name: Pgchar; cdecl; inline;
    procedure get_position(screen: PPGdkScreen; x: Pgint; y: Pgint); cdecl; inline;
    function get_source: TGdkInputSource; cdecl; inline;
    procedure get_state(window: PGdkWindow; axes: Pgdouble; mask: PGdkModifierType); cdecl; inline;
    function get_window_at_position(win_x: Pgint; win_y: Pgint): PGdkWindow; cdecl; inline;
    function grab(window: PGdkWindow; grab_ownership: TGdkGrabOwnership; owner_events: gboolean; event_mask: TGdkEventMask; cursor: PGdkCursor; time_: guint32): TGdkGrabStatus; cdecl; inline;
    function list_axes: PGList; cdecl; inline;
    function list_slave_devices: PGList; cdecl; inline;
    procedure set_axis_use(index_: guint; use: TGdkAxisUse); cdecl; inline;
    procedure set_key(index_: guint; keyval: guint; modifiers: TGdkModifierType); cdecl; inline;
    function set_mode(mode: TGdkInputMode): gboolean; cdecl; inline;
    procedure ungrab(time_: guint32); cdecl; inline;
    procedure warp(screen: PGdkScreen; x: gint; y: gint); cdecl; inline;
    property associated_device:  PGdkDevice read get_associated_device ;
    //property device_manager: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_device_manager  { property is writeable but setter not declared } ;
    property display:  PGdkDisplay read get_display  { property is writeable but setter not declared } ;
    property has_cursor:  gboolean read get_has_cursor  { property is writeable but setter not declared } ;
    //property input_mode: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_input_mode  { property is writeable but setter not declared } ;
    //property input_source: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_input_source  { property is writeable but setter not declared } ;
    property n_axes:  gint read get_n_axes ;
    property name:  Pgchar read get_name  { property is writeable but setter not declared } ;
    //property type_: UNABLE_TO_FIND_TYPE_FOR_PROPERTY read get_type  { property is writeable but setter not declared } ;
  end;

  PPGdkWindowAttr = ^PGdkWindowAttr;
  PGdkWindowAttr = ^TGdkWindowAttr;

  PPGdkGeometry = ^PGdkGeometry;
  PGdkGeometry = ^TGdkGeometry;

  PPGdkFilterFunc = ^PGdkFilterFunc;
  PGdkFilterFunc = ^TGdkFilterFunc;

  PPGdkFilterReturn = ^PGdkFilterReturn;
  PGdkFilterReturn = ^TGdkFilterReturn;
  TGdkFilterFunc = function(xevent: PGdkXEvent; event: PGdkEvent; data: gpointer): TGdkFilterReturn; cdecl;

  PPGdkWindowEdge = ^PGdkWindowEdge;
  PGdkWindowEdge = ^TGdkWindowEdge;

  PPGdkWMDecoration = ^PGdkWMDecoration;
  PGdkWMDecoration = ^TGdkWMDecoration;
  TGdkWMDecoration = packed object(TBitObject32)
  public
    property all: DWord index 1 read GetBit write SetBit;
    property border: DWord index 2 read GetBit write SetBit;
    property resizeh: DWord index 4 read GetBit write SetBit;
    property title: DWord index 8 read GetBit write SetBit;
    property menu: DWord index 16 read GetBit write SetBit;
    property minimize: DWord index 32 read GetBit write SetBit;
    property maximize: DWord index 64 read GetBit write SetBit;
  end;


  PPGdkDragProtocol = ^PGdkDragProtocol;
  PGdkDragProtocol = ^TGdkDragProtocol;

  PPGdkWindowState = ^PGdkWindowState;
  PGdkWindowState = ^TGdkWindowState;
  TGdkWindowState = packed object(TBitObject32)
  public
    property withdrawn: DWord index 1 read GetBit write SetBit;
    property iconified: DWord index 2 read GetBit write SetBit;
    property maximized: DWord index 4 read GetBit write SetBit;
    property sticky: DWord index 8 read GetBit write SetBit;
    property fullscreen: DWord index 16 read GetBit write SetBit;
    property above: DWord index 32 read GetBit write SetBit;
    property below: DWord index 64 read GetBit write SetBit;
  end;


  PPGdkWindowTypeHint = ^PGdkWindowTypeHint;
  PGdkWindowTypeHint = ^TGdkWindowTypeHint;

  PPGdkWindowType = ^PGdkWindowType;
  PGdkWindowType = ^TGdkWindowType;

  PPGdkWindowChildFunc = ^PGdkWindowChildFunc;
  PGdkWindowChildFunc = ^TGdkWindowChildFunc;
  TGdkWindowChildFunc = function(window: PGdkWindow; user_data: gpointer): gboolean; cdecl;

  PPGdkRGBA = ^PGdkRGBA;
  PGdkRGBA = ^TGdkRGBA;

  PPGdkWMFunction = ^PGdkWMFunction;
  PGdkWMFunction = ^TGdkWMFunction;
  TGdkWMFunction = packed object(TBitObject32)
  public
    property all: DWord index 1 read GetBit write SetBit;
    property resize: DWord index 2 read GetBit write SetBit;
    property move: DWord index 4 read GetBit write SetBit;
    property minimize: DWord index 8 read GetBit write SetBit;
    property maximize: DWord index 16 read GetBit write SetBit;
    property close: DWord index 32 read GetBit write SetBit;
  end;


  PPGdkWindowHints = ^PGdkWindowHints;
  PGdkWindowHints = ^TGdkWindowHints;
  TGdkWindowHints = packed object(TBitObject32)
  public
    property pos: DWord index 1 read GetBit write SetBit;
    property min_size: DWord index 2 read GetBit write SetBit;
    property max_size: DWord index 4 read GetBit write SetBit;
    property base_size: DWord index 8 read GetBit write SetBit;
    property aspect: DWord index 16 read GetBit write SetBit;
    property resize_inc: DWord index 32 read GetBit write SetBit;
    property win_gravity: DWord index 64 read GetBit write SetBit;
    property user_pos: DWord index 128 read GetBit write SetBit;
    property user_size: DWord index 256 read GetBit write SetBit;
  end;

  TGdkWindow = object(TGObject)
    function new(parent: PGdkWindow; attributes: PGdkWindowAttr; attributes_mask: gint): PGdkWindow; cdecl; inline; static;
    
    procedure constrain_size(geometry: PGdkGeometry; flags: guint; width: gint; height: gint; new_width: Pgint; new_height: Pgint); cdecl; inline; static;
    procedure process_all_updates; cdecl; inline; static;
    procedure set_debug_updates(setting: gboolean); cdecl; inline; static;
    procedure add_filter(function_: TGdkFilterFunc; data: gpointer); cdecl; inline;
    procedure beep; cdecl; inline;
    procedure begin_move_drag(button: gint; root_x: gint; root_y: gint; timestamp: guint32); cdecl; inline;
    procedure begin_paint_rect(rectangle: PGdkRectangle); cdecl; inline;
    procedure begin_paint_region(region: Pcairo_region_t); cdecl; inline;
    procedure begin_resize_drag(edge: TGdkWindowEdge; button: gint; root_x: gint; root_y: gint; timestamp: guint32); cdecl; inline;
    procedure configure_finished; cdecl; inline;
    procedure coords_from_parent(parent_x: gdouble; parent_y: gdouble; x: Pgdouble; y: Pgdouble); cdecl; inline;
    procedure coords_to_parent(x: gdouble; y: gdouble; parent_x: Pgdouble; parent_y: Pgdouble); cdecl; inline;
    function create_similar_surface(content: Tcairo_content_t; width: gint; height: gint): Pcairo_surface_t; cdecl; inline;
    procedure deiconify; cdecl; inline;
    procedure destroy_; cdecl; inline;
    procedure destroy_notify; cdecl; inline;
    procedure enable_synchronized_configure; cdecl; inline;
    procedure end_paint; cdecl; inline;
    function ensure_native: gboolean; cdecl; inline;
    procedure flush; cdecl; inline;
    procedure focus(timestamp: guint32); cdecl; inline;
    procedure freeze_toplevel_updates_libgtk_only; cdecl; inline;
    procedure freeze_updates; cdecl; inline;
    procedure fullscreen; cdecl; inline;
    procedure geometry_changed; cdecl; inline;
    function get_accept_focus: gboolean; cdecl; inline;
    function get_background_pattern: Pcairo_pattern_t; cdecl; inline;
    function get_children: PGList; cdecl; inline;
    function get_clip_region: Pcairo_region_t; cdecl; inline;
    function get_composited: gboolean; cdecl; inline;
    function get_cursor: PGdkCursor; cdecl; inline;
    function get_decorations(decorations: PGdkWMDecoration): gboolean; cdecl; inline;
    function get_device_cursor(device: PGdkDevice): PGdkCursor; cdecl; inline;
    function get_device_events(device: PGdkDevice): TGdkEventMask; cdecl; inline;
    function get_device_position(device: PGdkDevice; x: Pgint; y: Pgint; mask: PGdkModifierType): PGdkWindow; cdecl; inline;
    function get_display: PGdkDisplay; cdecl; inline;
    function get_drag_protocol(target: PPGdkWindow): TGdkDragProtocol; cdecl; inline;
    function get_effective_parent: PGdkWindow; cdecl; inline;
    function get_effective_toplevel: PGdkWindow; cdecl; inline;
    function get_events: TGdkEventMask; cdecl; inline;
    function get_focus_on_map: gboolean; cdecl; inline;
    procedure get_frame_extents(rect: PGdkRectangle); cdecl; inline;
    procedure get_geometry(x: Pgint; y: Pgint; width: Pgint; height: Pgint); cdecl; inline;
    function get_group: PGdkWindow; cdecl; inline;
    function get_height: gint; cdecl; inline;
    function get_modal_hint: gboolean; cdecl; inline;
    function get_origin(x: Pgint; y: Pgint): gint; cdecl; inline;
    function get_parent: PGdkWindow; cdecl; inline;
    
    procedure get_position(x: Pgint; y: Pgint); cdecl; inline;
    procedure get_root_coords(x: gint; y: gint; root_x: Pgint; root_y: Pgint); cdecl; inline;
    procedure get_root_origin(x: Pgint; y: Pgint); cdecl; inline;
    function get_screen: PGdkScreen; cdecl; inline;
    function get_source_events(source: TGdkInputSource): TGdkEventMask; cdecl; inline;
    function get_state: TGdkWindowState; cdecl; inline;
    function get_support_multidevice: gboolean; cdecl; inline;
    function get_toplevel: PGdkWindow; cdecl; inline;
    function get_type_hint: TGdkWindowTypeHint; cdecl; inline;
    function get_update_area: Pcairo_region_t; cdecl; inline;
    procedure get_user_data(data: Pgpointer); cdecl; inline;
    function get_visible_region: Pcairo_region_t; cdecl; inline;
    function get_visual: PGdkVisual; cdecl; inline;
    function get_width: gint; cdecl; inline;
    function get_window_type: TGdkWindowType; cdecl; inline;
    function has_native: gboolean; cdecl; inline;
    procedure hide; cdecl; inline;
    procedure iconify; cdecl; inline;
    procedure input_shape_combine_region(shape_region: Pcairo_region_t; offset_x: gint; offset_y: gint); cdecl; inline;
    procedure invalidate_maybe_recurse(region: Pcairo_region_t; child_func: TGdkWindowChildFunc; user_data: gpointer); cdecl; inline;
    procedure invalidate_rect(rect: PGdkRectangle; invalidate_children: gboolean); cdecl; inline;
    procedure invalidate_region(region: Pcairo_region_t; invalidate_children: gboolean); cdecl; inline;
    function is_destroyed: gboolean; cdecl; inline;
    function is_input_only: gboolean; cdecl; inline;
    function is_shaped: gboolean; cdecl; inline;
    function is_viewable: gboolean; cdecl; inline;
    function is_visible: gboolean; cdecl; inline;
    procedure lower; cdecl; inline;
    procedure maximize; cdecl; inline;
    procedure merge_child_input_shapes; cdecl; inline;
    procedure merge_child_shapes; cdecl; inline;
    procedure move(x: gint; y: gint); cdecl; inline;
    procedure move_region(region: Pcairo_region_t; dx: gint; dy: gint); cdecl; inline;
    procedure move_resize(x: gint; y: gint; width: gint; height: gint); cdecl; inline;
    function peek_children: PGList; cdecl; inline;
    procedure process_updates(update_children: gboolean); cdecl; inline;
    procedure raise_; cdecl; inline;
    procedure register_dnd; cdecl; inline;
    procedure remove_filter(function_: TGdkFilterFunc; data: gpointer); cdecl; inline;
    procedure reparent(new_parent: PGdkWindow; x: gint; y: gint); cdecl; inline;
    procedure resize(width: gint; height: gint); cdecl; inline;
    procedure restack(sibling: PGdkWindow; above: gboolean); cdecl; inline;
    procedure scroll(dx: gint; dy: gint); cdecl; inline;
    procedure set_accept_focus(accept_focus: gboolean); cdecl; inline;
    procedure set_background(color: PGdkColor); cdecl; inline;
    procedure set_background_pattern(pattern: Pcairo_pattern_t); cdecl; inline;
    procedure set_background_rgba(rgba: PGdkRGBA); cdecl; inline;
    procedure set_child_input_shapes; cdecl; inline;
    procedure set_child_shapes; cdecl; inline;
    procedure set_composited(composited: gboolean); cdecl; inline;
    procedure set_cursor(cursor: PGdkCursor); cdecl; inline;
    procedure set_decorations(decorations: TGdkWMDecoration); cdecl; inline;
    procedure set_device_cursor(device: PGdkDevice; cursor: PGdkCursor); cdecl; inline;
    procedure set_device_events(device: PGdkDevice; event_mask: TGdkEventMask); cdecl; inline;
    procedure set_events(event_mask: TGdkEventMask); cdecl; inline;
    procedure set_focus_on_map(focus_on_map: gboolean); cdecl; inline;
    procedure set_functions(functions: TGdkWMFunction); cdecl; inline;
    procedure set_geometry_hints(geometry: PGdkGeometry; geom_mask: TGdkWindowHints); cdecl; inline;
    procedure set_group(leader: PGdkWindow); cdecl; inline;
    procedure set_icon_list(pixbufs: PGList); cdecl; inline;
    procedure set_icon_name(name: Pgchar); cdecl; inline;
    procedure set_keep_above(setting: gboolean); cdecl; inline;
    procedure set_keep_below(setting: gboolean); cdecl; inline;
    procedure set_modal_hint(modal: gboolean); cdecl; inline;
    procedure set_opacity(opacity: gdouble); cdecl; inline;
    procedure set_override_redirect(override_redirect: gboolean); cdecl; inline;
    procedure set_role(role: Pgchar); cdecl; inline;
    procedure set_skip_pager_hint(skips_pager: gboolean); cdecl; inline;
    procedure set_skip_taskbar_hint(skips_taskbar: gboolean); cdecl; inline;
    procedure set_source_events(source: TGdkInputSource; event_mask: TGdkEventMask); cdecl; inline;
    procedure set_startup_id(startup_id: Pgchar); cdecl; inline;
    function set_static_gravities(use_static: gboolean): gboolean; cdecl; inline;
    procedure set_support_multidevice(support_multidevice: gboolean); cdecl; inline;
    procedure set_title(title: Pgchar); cdecl; inline;
    procedure set_transient_for(parent: PGdkWindow); cdecl; inline;
    procedure set_type_hint(hint: TGdkWindowTypeHint); cdecl; inline;
    procedure set_urgency_hint(urgent: gboolean); cdecl; inline;
    procedure set_user_data(user_data: TGObject); cdecl; inline;
    procedure shape_combine_region(shape_region: Pcairo_region_t; offset_x: gint; offset_y: gint); cdecl; inline;
    procedure show; cdecl; inline;
    procedure show_unraised; cdecl; inline;
    procedure stick; cdecl; inline;
    procedure thaw_toplevel_updates_libgtk_only; cdecl; inline;
    procedure thaw_updates; cdecl; inline;
    procedure unfullscreen; cdecl; inline;
    procedure unmaximize; cdecl; inline;
    procedure unstick; cdecl; inline;
    procedure withdraw; cdecl; inline;
    property cursor:  PGdkCursor read get_cursor  { property is writeable but setter not declared } ;
  end;
  TGdkDeviceManager = object(TGObject)
    function get_client_pointer: PGdkDevice; cdecl; inline;
    function get_display: PGdkDisplay; cdecl; inline;
    function list_devices(type_: TGdkDeviceType): PGList; cdecl; inline;
    property display:  PGdkDisplay read get_display  { property is writeable but setter not declared } ;
  end;

  PPGdkEventType = ^PGdkEventType;
  PGdkEventType = ^TGdkEventType;

  PPGdkEventAny = ^PGdkEventAny;
  PGdkEventAny = ^TGdkEventAny;

  TGdkEventAny = record
    type_: TGdkEventType;
    window: PGdkWindow;
    send_event: gint8;
  end;



  PPGdkEventExpose = ^PGdkEventExpose;
  PGdkEventExpose = ^TGdkEventExpose;

  TGdkEventExpose = record
    type_: TGdkEventType;
    window: PGdkWindow;
    send_event: gint8;
    area: TGdkRectangle;
    region: Pcairo_region_t;
    count: gint;
  end;



  PPGdkEventVisibility = ^PGdkEventVisibility;
  PGdkEventVisibility = ^TGdkEventVisibility;

  PPGdkVisibilityState = ^PGdkVisibilityState;
  PGdkVisibilityState = ^TGdkVisibilityState;

  TGdkEventVisibility = record
    type_: TGdkEventType;
    window: PGdkWindow;
    send_event: gint8;
    state: TGdkVisibilityState;
  end;



  PPGdkEventMotion = ^PGdkEventMotion;
  PGdkEventMotion = ^TGdkEventMotion;

  TGdkEventMotion = record
    type_: TGdkEventType;
    window: PGdkWindow;
    send_event: gint8;
    time: guint32;
    x: gdouble;
    y: gdouble;
    axes: Pgdouble;
    state: TGdkModifierType;
    is_hint: gint16;
    device: PGdkDevice;
    x_root: gdouble;
    y_root: gdouble;
  end;



  PPGdkEventButton = ^PGdkEventButton;
  PGdkEventButton = ^TGdkEventButton;

  TGdkEventButton = record
    type_: TGdkEventType;
    window: PGdkWindow;
    send_event: gint8;
    time: guint32;
    x: gdouble;
    y: gdouble;
    axes: Pgdouble;
    state: TGdkModifierType;
    button: guint;
    device: PGdkDevice;
    x_root: gdouble;
    y_root: gdouble;
  end;



  PPGdkEventScroll = ^PGdkEventScroll;
  PGdkEventScroll = ^TGdkEventScroll;

  PPGdkScrollDirection = ^PGdkScrollDirection;
  PGdkScrollDirection = ^TGdkScrollDirection;

  TGdkEventScroll = record
    type_: TGdkEventType;
    window: PGdkWindow;
    send_event: gint8;
    time: guint32;
    x: gdouble;
    y: gdouble;
    state: TGdkModifierType;
    direction: TGdkScrollDirection;
    device: PGdkDevice;
    x_root: gdouble;
    y_root: gdouble;
  end;



  PPGdkEventKey = ^PGdkEventKey;
  PGdkEventKey = ^TGdkEventKey;

  TGdkEventKey = record
    type_: TGdkEventType;
    window: PGdkWindow;
    send_event: gint8;
    time: guint32;
    state: TGdkModifierType;
    keyval: guint;
    length: gint;
    string_: Pgchar;
    hardware_keycode: guint16;
    group: guint8;
    is_modifier: guint1 { changed from guint to accomodate 1 bitsize requirement };
  end;



  PPGdkEventCrossing = ^PGdkEventCrossing;
  PGdkEventCrossing = ^TGdkEventCrossing;

  PPGdkNotifyType = ^PGdkNotifyType;
  PGdkNotifyType = ^TGdkNotifyType;

  TGdkEventCrossing = record
    type_: TGdkEventType;
    window: PGdkWindow;
    send_event: gint8;
    subwindow: PGdkWindow;
    time: guint32;
    x: gdouble;
    y: gdouble;
    x_root: gdouble;
    y_root: gdouble;
    mode: TGdkCrossingMode;
    detail: TGdkNotifyType;
    focus: gboolean;
    state: TGdkModifierType;
  end;



  PPGdkEventFocus = ^PGdkEventFocus;
  PGdkEventFocus = ^TGdkEventFocus;

  TGdkEventFocus = record
    type_: TGdkEventType;
    window: PGdkWindow;
    send_event: gint8;
    in_: gint16;
  end;



  PPGdkEventConfigure = ^PGdkEventConfigure;
  PGdkEventConfigure = ^TGdkEventConfigure;

  TGdkEventConfigure = record
    type_: TGdkEventType;
    window: PGdkWindow;
    send_event: gint8;
    x: gint;
    y: gint;
    width: gint;
    height: gint;
  end;



  PPGdkEventProperty = ^PGdkEventProperty;
  PGdkEventProperty = ^TGdkEventProperty;

  TGdkEventProperty = record
    type_: TGdkEventType;
    window: PGdkWindow;
    send_event: gint8;
    atom: TGdkAtom;
    time: guint32;
    state: guint;
  end;



  PPGdkEventSelection = ^PGdkEventSelection;
  PGdkEventSelection = ^TGdkEventSelection;

  TGdkEventSelection = record
    type_: TGdkEventType;
    window: PGdkWindow;
    send_event: gint8;
    selection: TGdkAtom;
    target: TGdkAtom;
    property_: TGdkAtom;
    time: guint32;
    requestor: PGdkWindow;
  end;



  PPGdkEventOwnerChange = ^PGdkEventOwnerChange;
  PGdkEventOwnerChange = ^TGdkEventOwnerChange;

  PPGdkOwnerChange = ^PGdkOwnerChange;
  PGdkOwnerChange = ^TGdkOwnerChange;

  TGdkEventOwnerChange = record
    type_: TGdkEventType;
    window: PGdkWindow;
    send_event: gint8;
    owner: PGdkWindow;
    reason: TGdkOwnerChange;
    selection: TGdkAtom;
    time: guint32;
    selection_time: guint32;
  end;



  PPGdkEventProximity = ^PGdkEventProximity;
  PGdkEventProximity = ^TGdkEventProximity;

  TGdkEventProximity = record
    type_: TGdkEventType;
    window: PGdkWindow;
    send_event: gint8;
    time: guint32;
    device: PGdkDevice;
  end;



  PPGdkEventDND = ^PGdkEventDND;
  PGdkEventDND = ^TGdkEventDND;

  PPGdkDragContext = ^PGdkDragContext;
  PGdkDragContext = ^TGdkDragContext;

  Pgshort = ^Tgshort;

  { gshort }
  Tgshort = record
    { opaque type }
    Unknown: Pointer;
  end;


  TGdkEventDND = record
    type_: TGdkEventType;
    window: PGdkWindow;
    send_event: gint8;
    context: PGdkDragContext;
    time: guint32;
    x_root: Tgshort;
    y_root: Tgshort;
  end;



  PPGdkEventWindowState = ^PGdkEventWindowState;
  PGdkEventWindowState = ^TGdkEventWindowState;

  TGdkEventWindowState = record
    type_: TGdkEventType;
    window: PGdkWindow;
    send_event: gint8;
    changed_mask: TGdkWindowState;
    new_window_state: TGdkWindowState;
  end;



  PPGdkEventSetting = ^PGdkEventSetting;
  PGdkEventSetting = ^TGdkEventSetting;

  PPGdkSettingAction = ^PGdkSettingAction;
  PGdkSettingAction = ^TGdkSettingAction;

  TGdkEventSetting = record
    type_: TGdkEventType;
    window: PGdkWindow;
    send_event: gint8;
    action: TGdkSettingAction;
    name: Pgchar;
  end;



  PPGdkEventGrabBroken = ^PGdkEventGrabBroken;
  PGdkEventGrabBroken = ^TGdkEventGrabBroken;

  TGdkEventGrabBroken = record
    type_: TGdkEventType;
    window: PGdkWindow;
    send_event: gint8;
    keyboard: gboolean;
    implicit: gboolean;
    grab_window: PGdkWindow;
  end;



  PPGdkEventFunc = ^PGdkEventFunc;
  PGdkEventFunc = ^TGdkEventFunc;
  TGdkEventFunc = procedure(event: PGdkEvent; data: gpointer); cdecl;
  TGdkEvent = record
    case longint of
      0 : (type_: TGdkEventType);
      1 : (any: TGdkEventAny);
      2 : (expose: TGdkEventExpose);
      3 : (visibility: TGdkEventVisibility);
      4 : (motion: TGdkEventMotion);
      5 : (button: TGdkEventButton);
      6 : (scroll: TGdkEventScroll);
      7 : (key: TGdkEventKey);
      8 : (crossing: TGdkEventCrossing);
      9 : (focus_change: TGdkEventFocus);
      10 : (configure: TGdkEventConfigure);
      11 : (property_: TGdkEventProperty);
      12 : (selection: TGdkEventSelection);
      13 : (owner_change: TGdkEventOwnerChange);
      14 : (proximity: TGdkEventProximity);
      15 : (dnd: TGdkEventDND);
      16 : (window_state: TGdkEventWindowState);
      17 : (setting: TGdkEventSetting);
      18 : (grab_broken: TGdkEventGrabBroken);
    //function new(type_: TGdkEventType): PGdkEvent; cdecl;
    //function _get_angle(event2: PGdkEvent; angle: Pgdouble): gboolean; cdecl;
    //function _get_center(event2: PGdkEvent; x: Pgdouble; y: Pgdouble): gboolean; cdecl;
    //function _get_distance(event2: PGdkEvent; distance: Pgdouble): gboolean; cdecl;
    //function copy: PGdkEvent; cdecl;
    //procedure free; cdecl;
    //function get_axis(axis_use: TGdkAxisUse; value: Pgdouble): gboolean; cdecl;
    //function get_button(button: Pguint): gboolean; cdecl;
    //function get_click_count(click_count: Pguint): gboolean; cdecl;
    //function get_coords(x_win: Pgdouble; y_win: Pgdouble): gboolean; cdecl;
    //function get_device: PGdkDevice; cdecl;
    //function get_keycode(keycode: Pguint16): gboolean; cdecl;
    //function get_keyval(keyval: Pguint): gboolean; cdecl;
    //function get_root_coords(x_root: Pgdouble; y_root: Pgdouble): gboolean; cdecl;
    //function get_screen: PGdkScreen; cdecl;
    //function get_scroll_direction(direction: PGdkScrollDirection): gboolean; cdecl;
    //function get_source_device: PGdkDevice; cdecl;
    //function get_state(state: PGdkModifierType): gboolean; cdecl;
    //function get_time: guint32; cdecl;
    //procedure put; cdecl;
    //procedure set_device(device: PGdkDevice); cdecl;
    //procedure set_screen(screen: PGdkScreen); cdecl;
    //procedure set_source_device(device: PGdkDevice); cdecl;
    //function get: PGdkEvent; cdecl;
    //procedure handler_set(func: TGdkEventFunc; data: gpointer; notify: TGDestroyNotify); cdecl;
    //function peek: PGdkEvent; cdecl;
    //procedure request_motions(event: PGdkEventMotion); cdecl;
  end;



  PPGdkDisplayManager = ^PGdkDisplayManager;
  PGdkDisplayManager = ^TGdkDisplayManager;
  TGdkDisplayManager = object(TGObject)
    function get: PGdkDisplayManager; cdecl; inline; static;
    function get_default_display: PGdkDisplay; cdecl; inline;
    function list_displays: PGSList; cdecl; inline;
    function open_display(name: Pgchar): PGdkDisplay; cdecl; inline;
    procedure set_default_display(display: PGdkDisplay); cdecl; inline;
    property default_display:  PGdkDisplay read get_default_display  { property is writeable but setter not declared } ;
  end;
  TGdkDragAction = packed object(TBitObject32)
  public
    property default_: DWord index 1 read GetBit write SetBit;
    property copy: DWord index 2 read GetBit write SetBit;
    property move: DWord index 4 read GetBit write SetBit;
    property link: DWord index 8 read GetBit write SetBit;
    property private_: DWord index 16 read GetBit write SetBit;
    property ask: DWord index 32 read GetBit write SetBit;
  end;


  PPGdkDragAction = ^PGdkDragAction;
  PGdkDragAction = ^TGdkDragAction;
  TGdkDragContext = object(TGObject)
    function get_actions: TGdkDragAction; cdecl; inline;
    function get_dest_window: PGdkWindow; cdecl; inline;
    function get_device: PGdkDevice; cdecl; inline;
    function get_protocol: TGdkDragProtocol; cdecl; inline;
    function get_selected_action: TGdkDragAction; cdecl; inline;
    function get_source_window: PGdkWindow; cdecl; inline;
    function get_suggested_action: TGdkDragAction; cdecl; inline;
    function list_targets: PGList; cdecl; inline;
    procedure set_device(device: PGdkDevice); cdecl; inline;
  end;

  PPGdkExtensionMode = ^PGdkExtensionMode;
  PGdkExtensionMode = ^TGdkExtensionMode;

  TGdkGeometry = record
    min_width: gint;
    min_height: gint;
    max_width: gint;
    max_height: gint;
    base_width: gint;
    base_height: gint;
    width_inc: gint;
    height_inc: gint;
    min_aspect: gdouble;
    max_aspect: gdouble;
    win_gravity: TPangoGravity;
  end;



  PPGdkGravity = ^PGdkGravity;
  PGdkGravity = ^TGdkGravity;

  PPGdkKeymap = ^PGdkKeymap;
  PGdkKeymap = ^TGdkKeymap;

  PPPGdkKeymapKey = ^PPGdkKeymapKey;
  PPGdkKeymapKey = ^PGdkKeymapKey;
  PGdkKeymapKey = ^TGdkKeymapKey;
  TGdkKeymap = object(TGObject)
    function get_default: PGdkKeymap; cdecl; inline; static;
    function get_for_display(display: PGdkDisplay): PGdkKeymap; cdecl; inline; static;
    procedure add_virtual_modifiers(state: PGdkModifierType); cdecl; inline;
    function get_caps_lock_state: gboolean; cdecl; inline;
    function get_direction: TPangoDirection; cdecl; inline;
    function get_entries_for_keycode(hardware_keycode: guint; keys: PPGdkKeymapKey; keyvals: PPguint; n_entries: Pgint): gboolean; cdecl; inline;
    function get_entries_for_keyval(keyval: guint; keys: PPGdkKeymapKey; n_keys: Pgint): gboolean; cdecl; inline;
    function get_num_lock_state: gboolean; cdecl; inline;
    function have_bidi_layouts: gboolean; cdecl; inline;
    function lookup_key(key: PGdkKeymapKey): guint; cdecl; inline;
    function map_virtual_modifiers(state: PGdkModifierType): gboolean; cdecl; inline;
    function translate_keyboard_state(hardware_keycode: guint; state: TGdkModifierType; group: gint; keyval: Pguint; effective_group: Pgint; level: Pgint; consumed_modifiers: PGdkModifierType): gboolean; cdecl; inline;
  end;

  TGdkKeymapKey = record
    keycode: guint;
    group: gint;
    level: gint;
  end;



  PPGdkPoint = ^PGdkPoint;
  PGdkPoint = ^TGdkPoint;

  TGdkPoint = record
    x: gint;
    y: gint;
  end;



  PPGdkPropMode = ^PGdkPropMode;
  PGdkPropMode = ^TGdkPropMode;

  PPGdkPropertyState = ^PGdkPropertyState;
  PGdkPropertyState = ^TGdkPropertyState;
  TGdkRGBA = object
    red: gdouble;
    green: gdouble;
    blue: gdouble;
    alpha: gdouble;
    function copy: PGdkRGBA; cdecl; inline;
    function equal(p2: TGdkRGBA): gboolean; cdecl; inline;
    procedure free; cdecl; inline;
    function hash: guint; cdecl; inline;
    function parse(spec: Pgchar): gboolean; cdecl; inline;
    function to_string: Pgchar; cdecl; inline;
  end;

  PPGdkVisualType = ^PGdkVisualType;
  PGdkVisualType = ^TGdkVisualType;
  TGdkVisual = object(TGObject)
    function get_best: PGdkVisual; cdecl; inline; static;
    function get_best_depth: gint; cdecl; inline; static;
    function get_best_type: TGdkVisualType; cdecl; inline; static;
    function get_best_with_both(depth: gint; visual_type: TGdkVisualType): PGdkVisual; cdecl; inline; static;
    function get_best_with_depth(depth: gint): PGdkVisual; cdecl; inline; static;
    function get_best_with_type(visual_type: TGdkVisualType): PGdkVisual; cdecl; inline; static;
    function get_system: PGdkVisual; cdecl; inline; static;
    function get_bits_per_rgb: gint; cdecl; inline;
    procedure get_blue_pixel_details(mask: Pguint32; shift: Pgint; precision: Pgint); cdecl; inline;
    function get_byte_order: TGdkByteOrder; cdecl; inline;
    function get_colormap_size: gint; cdecl; inline;
    function get_depth: gint; cdecl; inline;
    procedure get_green_pixel_details(mask: Pguint32; shift: Pgint; precision: Pgint); cdecl; inline;
    procedure get_red_pixel_details(mask: Pguint32; shift: Pgint; precision: Pgint); cdecl; inline;
    function get_screen: PGdkScreen; cdecl; inline;
    function get_visual_type: TGdkVisualType; cdecl; inline;
  end;

  PPGdkStatus = ^PGdkStatus;
  PGdkStatus = ^TGdkStatus;

  PPGdkWindowWindowClass = ^PGdkWindowWindowClass;
  PGdkWindowWindowClass = ^TGdkWindowWindowClass;

  TGdkWindowAttr = record
    title: Pgchar;
    event_mask: gint;
    x: gint;
    y: gint;
    width: gint;
    height: gint;
    wclass: TGdkWindowWindowClass;
    visual: PGdkVisual;
    window_type: TGdkWindowType;
    cursor: PGdkCursor;
    wmclass_name: Pgchar;
    wmclass_class: Pgchar;
    override_redirect: gboolean;
    type_hint: TGdkWindowTypeHint;
  end;


  TGdkWindowAttributesType = packed object(TBitObject32)
  public
    property title: DWord index 2 read GetBit write SetBit;
    property x: DWord index 4 read GetBit write SetBit;
    property y: DWord index 8 read GetBit write SetBit;
    property cursor: DWord index 16 read GetBit write SetBit;
    property visual: DWord index 32 read GetBit write SetBit;
    property wmclass: DWord index 64 read GetBit write SetBit;
    property noredir: DWord index 128 read GetBit write SetBit;
    property type_hint: DWord index 256 read GetBit write SetBit;
  end;


  PPGdkWindowClass = ^PGdkWindowClass;
  PGdkWindowClass = ^TGdkWindowClass;
  TGdkWindowClass = object
    parent_class: TGObjectClass;
    pick_embedded_child: function(window: PGdkWindow; x: gdouble; y: gdouble): PGdkWindow; cdecl;
    to_embedder: procedure(window: PGdkWindow; offscreen_x: gdouble; offscreen_y: gdouble; embedder_x: Pgdouble; embedder_y: Pgdouble); cdecl;
    from_embedder: procedure(window: PGdkWindow; embedder_x: gdouble; embedder_y: gdouble; offscreen_x: Pgdouble; offscreen_y: Pgdouble); cdecl;
    create_surface: function(window: PGdkWindow; width: gint; height: gint): Pcairo_surface_t; cdecl;
    _gdk_reserved1: procedure; cdecl;
    _gdk_reserved2: procedure; cdecl;
    _gdk_reserved3: procedure; cdecl;
    _gdk_reserved4: procedure; cdecl;
    _gdk_reserved5: procedure; cdecl;
    _gdk_reserved6: procedure; cdecl;
    _gdk_reserved7: procedure; cdecl;
    _gdk_reserved8: procedure; cdecl;
  end;

  PPGdkWindowRedirect = ^PGdkWindowRedirect;
  PGdkWindowRedirect = ^TGdkWindowRedirect;

  TGdkWindowRedirect = record
    Unknown: Pointer;
  end;



function gdk_app_launch_context_get_type: TGType; cdecl; external;
function gdk_atom_intern(atom_name: Pgchar; only_if_exists: gboolean): TGdkAtom; cdecl; external;
function gdk_atom_intern_static_string(atom_name: Pgchar): TGdkAtom; cdecl; external;
function gdk_atom_name(AAtom: PGdkAtom): Pgchar; cdecl; external;
function gdk_cairo_create(window: PGdkWindow): Pcairo_t; cdecl; external;
function gdk_cairo_get_clip_rectangle(cr: Pcairo_t; rect: PGdkRectangle): gboolean; cdecl; external;
function gdk_cairo_region_create_from_surface(surface: Pcairo_surface_t): Pcairo_region_t; cdecl; external;
function gdk_color_copy(AColor: PGdkColor): PPangoColor; cdecl; external;
function gdk_color_equal(AColor: PGdkColor; colorb: PPangoColor): gboolean; cdecl; external;
function gdk_color_get_type: TGType; cdecl; external;
function gdk_color_hash(AColor: PGdkColor): guint; cdecl; external;
function gdk_color_parse(spec: Pgchar; color: PGdkColor): gboolean; cdecl; external;
function gdk_color_parse(spec: Pgchar; color: PPangoColor): gboolean; cdecl; external;
function gdk_color_to_string(AColor: PGdkColor): Pgchar; cdecl; external;
function gdk_cursor_get_cursor_type(ACursor: PGdkCursor): TGdkCursorType; cdecl; external;
function gdk_cursor_get_display(ACursor: PGdkCursor): PGdkDisplay; cdecl; external;
function gdk_cursor_get_image(ACursor: PGdkCursor): PGdkPixbuf; cdecl; external;
function gdk_cursor_get_type: TGType; cdecl; external;
function gdk_cursor_new(cursor_type: TGdkCursorType): PGdkCursor; cdecl; external;
function gdk_cursor_new_for_display(display: PGdkDisplay; cursor_type: TGdkCursorType): PGdkCursor; cdecl; external;
function gdk_cursor_new_from_name(display: PGdkDisplay; name: Pgchar): PGdkCursor; cdecl; external;
function gdk_cursor_new_from_pixbuf(display: PGdkDisplay; pixbuf: PGdkPixbuf; x: gint; y: gint): PGdkCursor; cdecl; external;
function gdk_device_get_associated_device(ADevice: PGdkDevice): PGdkDevice; cdecl; external;
function gdk_device_get_axis(ADevice: PGdkDevice; axes: Pgdouble; use: TGdkAxisUse; value: Pgdouble): gboolean; cdecl; external;
function gdk_device_get_axis_use(ADevice: PGdkDevice; index_: guint): TGdkAxisUse; cdecl; external;
function gdk_device_get_axis_value(ADevice: PGdkDevice; axes: Pgdouble; axis_label: TGdkAtom; value: Pgdouble): gboolean; cdecl; external;
function gdk_device_get_device_type(ADevice: PGdkDevice): TGdkDeviceType; cdecl; external;
function gdk_device_get_display(ADevice: PGdkDevice): PGdkDisplay; cdecl; external;
function gdk_device_get_has_cursor(ADevice: PGdkDevice): gboolean; cdecl; external;
function gdk_device_get_history(ADevice: PGdkDevice; window: PGdkWindow; start: guint32; stop: guint32; events: PPPGdkTimeCoord; n_events: Pgint): gboolean; cdecl; external;
function gdk_device_get_key(ADevice: PGdkDevice; index_: guint; keyval: Pguint; modifiers: PGdkModifierType): gboolean; cdecl; external;
function gdk_device_get_mode(ADevice: PGdkDevice): TGdkInputMode; cdecl; external;
function gdk_device_get_n_axes(ADevice: PGdkDevice): gint; cdecl; external;
function gdk_device_get_n_keys(ADevice: PGdkDevice): gint; cdecl; external;
function gdk_device_get_name(ADevice: PGdkDevice): Pgchar; cdecl; external;
function gdk_device_get_source(ADevice: PGdkDevice): TGdkInputSource; cdecl; external;
function gdk_device_get_type: TGType; cdecl; external;
function gdk_device_get_window_at_position(ADevice: PGdkDevice; win_x: Pgint; win_y: Pgint): PGdkWindow; cdecl; external;
function gdk_device_grab(ADevice: PGdkDevice; window: PGdkWindow; grab_ownership: TGdkGrabOwnership; owner_events: gboolean; event_mask: TGdkEventMask; cursor: PGdkCursor; time_: guint32): TGdkGrabStatus; cdecl; external;
function gdk_device_grab_info_libgtk_only(display: PGdkDisplay; device: PGdkDevice; grab_window: PPGdkWindow; owner_events: Pgboolean): gboolean; cdecl; external;
function gdk_device_list_axes(ADevice: PGdkDevice): PGList; cdecl; external;
function gdk_device_list_slave_devices(ADevice: PGdkDevice): PGList; cdecl; external;
function gdk_device_manager_get_client_pointer(ADeviceManager: PGdkDeviceManager): PGdkDevice; cdecl; external;
function gdk_device_manager_get_display(ADeviceManager: PGdkDeviceManager): PGdkDisplay; cdecl; external;
function gdk_device_manager_get_type: TGType; cdecl; external;
function gdk_device_manager_list_devices(ADeviceManager: PGdkDeviceManager; type_: TGdkDeviceType): PGList; cdecl; external;
function gdk_device_set_mode(ADevice: PGdkDevice; mode: TGdkInputMode): gboolean; cdecl; external;
function gdk_display_device_is_grabbed(ADisplay: PGdkDisplay; device: PGdkDevice): gboolean; cdecl; external;
function gdk_display_get_app_launch_context(ADisplay: PGdkDisplay): PGdkAppLaunchContext; cdecl; external;
function gdk_display_get_default: PGdkDisplay; cdecl; external;
function gdk_display_get_default_cursor_size(ADisplay: PGdkDisplay): guint; cdecl; external;
function gdk_display_get_default_group(ADisplay: PGdkDisplay): PGdkWindow; cdecl; external;
function gdk_display_get_default_screen(ADisplay: PGdkDisplay): PGdkScreen; cdecl; external;
function gdk_display_get_device_manager(ADisplay: PGdkDisplay): PGdkDeviceManager; cdecl; external;
function gdk_display_get_event(ADisplay: PGdkDisplay): PGdkEvent; cdecl; external;
function gdk_display_get_n_screens(ADisplay: PGdkDisplay): gint; cdecl; external;
function gdk_display_get_name(ADisplay: PGdkDisplay): Pgchar; cdecl; external;
function gdk_display_get_screen(ADisplay: PGdkDisplay; screen_num: gint): PGdkScreen; cdecl; external;
function gdk_display_get_type: TGType; cdecl; external;
function gdk_display_has_pending(ADisplay: PGdkDisplay): gboolean; cdecl; external;
function gdk_display_is_closed(ADisplay: PGdkDisplay): gboolean; cdecl; external;
function gdk_display_manager_get: PGdkDisplayManager; cdecl; external;
function gdk_display_manager_get_default_display(ADisplayManager: PGdkDisplayManager): PGdkDisplay; cdecl; external;
function gdk_display_manager_get_type: TGType; cdecl; external;
function gdk_display_manager_list_displays(ADisplayManager: PGdkDisplayManager): PGSList; cdecl; external;
function gdk_display_manager_open_display(ADisplayManager: PGdkDisplayManager; name: Pgchar): PGdkDisplay; cdecl; external;
function gdk_display_open(display_name: Pgchar): PGdkDisplay; cdecl; external;
function gdk_display_open_default_libgtk_only: PGdkDisplay; cdecl; external;
function gdk_display_peek_event(ADisplay: PGdkDisplay): PGdkEvent; cdecl; external;
function gdk_display_request_selection_notification(ADisplay: PGdkDisplay; selection: TGdkAtom): gboolean; cdecl; external;
function gdk_display_supports_clipboard_persistence(ADisplay: PGdkDisplay): gboolean; cdecl; external;
function gdk_display_supports_composite(ADisplay: PGdkDisplay): gboolean; cdecl; external;
function gdk_display_supports_cursor_alpha(ADisplay: PGdkDisplay): gboolean; cdecl; external;
function gdk_display_supports_cursor_color(ADisplay: PGdkDisplay): gboolean; cdecl; external;
function gdk_display_supports_input_shapes(ADisplay: PGdkDisplay): gboolean; cdecl; external;
function gdk_display_supports_selection_notification(ADisplay: PGdkDisplay): gboolean; cdecl; external;
function gdk_display_supports_shapes(ADisplay: PGdkDisplay): gboolean; cdecl; external;
function gdk_drag_begin(window: PGdkWindow; targets: PGList): PGdkDragContext; cdecl; external;
function gdk_drag_begin_for_device(window: PGdkWindow; device: PGdkDevice; targets: PGList): PGdkDragContext; cdecl; external;
function gdk_drag_context_get_actions(ADragContext: PGdkDragContext): TGdkDragAction; cdecl; external;
function gdk_drag_context_get_dest_window(ADragContext: PGdkDragContext): PGdkWindow; cdecl; external;
function gdk_drag_context_get_device(ADragContext: PGdkDragContext): PGdkDevice; cdecl; external;
function gdk_drag_context_get_protocol(ADragContext: PGdkDragContext): TGdkDragProtocol; cdecl; external;
function gdk_drag_context_get_selected_action(ADragContext: PGdkDragContext): TGdkDragAction; cdecl; external;
function gdk_drag_context_get_source_window(ADragContext: PGdkDragContext): PGdkWindow; cdecl; external;
function gdk_drag_context_get_suggested_action(ADragContext: PGdkDragContext): TGdkDragAction; cdecl; external;
function gdk_drag_context_get_type: TGType; cdecl; external;
function gdk_drag_context_list_targets(ADragContext: PGdkDragContext): PGList; cdecl; external;
function gdk_drag_drop_succeeded(context: PGdkDragContext): gboolean; cdecl; external;
function gdk_drag_get_selection(context: PGdkDragContext): TGdkAtom; cdecl; external;
function gdk_drag_motion(context: PGdkDragContext; dest_window: PGdkWindow; protocol: TGdkDragProtocol; x_root: gint; y_root: gint; suggested_action: TGdkDragAction; possible_actions: TGdkDragAction; time_: guint32): gboolean; cdecl; external;
function gdk_error_trap_pop: gint; cdecl; external;
function gdk_event_copy(AEvent: PGdkEvent): PGdkEvent; cdecl; external;
function gdk_event_get: PGdkEvent; cdecl; external;
function gdk_event_get_axis(AEvent: PGdkEvent; axis_use: TGdkAxisUse; value: Pgdouble): gboolean; cdecl; external;
function gdk_event_get_button(AEvent: PGdkEvent; button: Pguint): gboolean; cdecl; external;
function gdk_event_get_click_count(AEvent: PGdkEvent; click_count: Pguint): gboolean; cdecl; external;
function gdk_event_get_coords(AEvent: PGdkEvent; x_win: Pgdouble; y_win: Pgdouble): gboolean; cdecl; external;
function gdk_event_get_device(AEvent: PGdkEvent): PGdkDevice; cdecl; external;
function gdk_event_get_keycode(AEvent: PGdkEvent; keycode: Pguint16): gboolean; cdecl; external;
function gdk_event_get_keyval(AEvent: PGdkEvent; keyval: Pguint): gboolean; cdecl; external;
function gdk_event_get_root_coords(AEvent: PGdkEvent; x_root: Pgdouble; y_root: Pgdouble): gboolean; cdecl; external;
function gdk_event_get_screen(AEvent: PGdkEvent): PGdkScreen; cdecl; external;
function gdk_event_get_scroll_direction(AEvent: PGdkEvent; direction: PGdkScrollDirection): gboolean; cdecl; external;
function gdk_event_get_source_device(AEvent: PGdkEvent): PGdkDevice; cdecl; external;
function gdk_event_get_state(AEvent: PGdkEvent; state: PGdkModifierType): gboolean; cdecl; external;
function gdk_event_get_time(AEvent: PGdkEvent): guint32; cdecl; external;
function gdk_event_new(type_: TGdkEventType): PGdkEvent; cdecl; external;
function gdk_event_peek: PGdkEvent; cdecl; external;
function gdk_events_get_angle(AEvent: PGdkEvent; event2: PGdkEvent; angle: Pgdouble): gboolean; cdecl; external;
function gdk_events_get_center(AEvent: PGdkEvent; event2: PGdkEvent; x: Pgdouble; y: Pgdouble): gboolean; cdecl; external;
function gdk_events_get_distance(AEvent: PGdkEvent; event2: PGdkEvent; distance: Pgdouble): gboolean; cdecl; external;
function gdk_events_pending: gboolean; cdecl; external;
function gdk_get_default_root_window: PGdkWindow; cdecl; external;
function gdk_get_display: Pgchar; cdecl; external;
function gdk_get_display_arg_name: Pgchar; cdecl; external;
function gdk_get_program_class: Pgchar; cdecl; external;
function gdk_get_show_events: gboolean; cdecl; external;
function gdk_init_check(argc: Pgint; argv: PPPgchar): gboolean; cdecl; external;
function gdk_keyboard_grab(window: PGdkWindow; owner_events: gboolean; time_: guint32): TGdkGrabStatus; cdecl; external;
function gdk_keymap_get_caps_lock_state(AKeymap: PGdkKeymap): gboolean; cdecl; external;
function gdk_keymap_get_default: PGdkKeymap; cdecl; external;
function gdk_keymap_get_direction(AKeymap: PGdkKeymap): TPangoDirection; cdecl; external;
function gdk_keymap_get_entries_for_keycode(AKeymap: PGdkKeymap; hardware_keycode: guint; keys: PPGdkKeymapKey; keyvals: PPguint; n_entries: Pgint): gboolean; cdecl; external;
function gdk_keymap_get_entries_for_keyval(AKeymap: PGdkKeymap; keyval: guint; keys: PPGdkKeymapKey; n_keys: Pgint): gboolean; cdecl; external;
function gdk_keymap_get_for_display(display: PGdkDisplay): PGdkKeymap; cdecl; external;
function gdk_keymap_get_num_lock_state(AKeymap: PGdkKeymap): gboolean; cdecl; external;
function gdk_keymap_get_type: TGType; cdecl; external;
function gdk_keymap_have_bidi_layouts(AKeymap: PGdkKeymap): gboolean; cdecl; external;
function gdk_keymap_lookup_key(AKeymap: PGdkKeymap; key: PGdkKeymapKey): guint; cdecl; external;
function gdk_keymap_map_virtual_modifiers(AKeymap: PGdkKeymap; state: PGdkModifierType): gboolean; cdecl; external;
function gdk_keymap_translate_keyboard_state(AKeymap: PGdkKeymap; hardware_keycode: guint; state: TGdkModifierType; group: gint; keyval: Pguint; effective_group: Pgint; level: Pgint; consumed_modifiers: PGdkModifierType): gboolean; cdecl; external;
function gdk_keyval_from_name(keyval_name: Pgchar): guint; cdecl; external;
function gdk_keyval_is_lower(keyval: guint): gboolean; cdecl; external;
function gdk_keyval_is_upper(keyval: guint): gboolean; cdecl; external;
function gdk_keyval_name(keyval: guint): Pgchar; cdecl; external;
function gdk_keyval_to_lower(keyval: guint): guint; cdecl; external;
function gdk_keyval_to_unicode(keyval: guint): guint32; cdecl; external;
function gdk_keyval_to_upper(keyval: guint): guint; cdecl; external;
function gdk_list_visuals: PGList; cdecl; external;
function gdk_offscreen_window_get_embedder(window: PGdkWindow): PGdkWindow; cdecl; external;
function gdk_offscreen_window_get_surface(window: PGdkWindow): Pcairo_surface_t; cdecl; external;
function gdk_pango_context_get: PPangoContext; cdecl; external;
function gdk_pango_context_get_for_screen(screen: PGdkScreen): PPangoContext; cdecl; external;
function gdk_pango_layout_get_clip_region(layout: PPangoLayout; x_origin: gint; y_origin: gint; index_ranges: Pgint; n_ranges: gint): Pcairo_region_t; cdecl; external;
function gdk_pango_layout_line_get_clip_region(line: PPangoLayoutLine; x_origin: gint; y_origin: gint; index_ranges: Pgint; n_ranges: gint): Pcairo_region_t; cdecl; external;
function gdk_pixbuf_get_from_surface(surface: Pcairo_surface_t; src_x: gint; src_y: gint; width: gint; height: gint): PGdkPixbuf; cdecl; external;
function gdk_pixbuf_get_from_window(window: PGdkWindow; src_x: gint; src_y: gint; width: gint; height: gint): PGdkPixbuf; cdecl; external;
function gdk_pointer_grab(window: PGdkWindow; owner_events: gboolean; event_mask: TGdkEventMask; confine_to: PGdkWindow; cursor: PGdkCursor; time_: guint32): TGdkGrabStatus; cdecl; external;
function gdk_pointer_is_grabbed: gboolean; cdecl; external;
function gdk_property_get(window: PGdkWindow; property_: TGdkAtom; type_: TGdkAtom; offset: gulong; length: gulong; pdelete: gint; actual_property_type: PGdkAtom; actual_format: Pgint; actual_length: Pgint; data: PPguint8): gboolean; cdecl; external;
function gdk_rectangle_get_type: TGType; cdecl; external;
function gdk_rectangle_intersect(src1: PGdkRectangle; src2: PGdkRectangle; dest: PGdkRectangle): gboolean; cdecl; external;
function gdk_rgba_copy(ARGBA: PGdkRGBA): PGdkRGBA; cdecl; external;
function gdk_rgba_equal(ARGBA: PGdkRGBA; p2: TGdkRGBA): gboolean; cdecl; external;
function gdk_rgba_get_type: TGType; cdecl; external;
function gdk_rgba_hash(ARGBA: PGdkRGBA): guint; cdecl; external;
function gdk_rgba_parse(ARGBA: PGdkRGBA; spec: Pgchar): gboolean; cdecl; external;
function gdk_rgba_to_string(ARGBA: PGdkRGBA): Pgchar; cdecl; external;
function gdk_screen_get_active_window(AScreen: PGdkScreen): PGdkWindow; cdecl; external;
function gdk_screen_get_default: PGdkScreen; cdecl; external;
function gdk_screen_get_display(AScreen: PGdkScreen): PGdkDisplay; cdecl; external;
function gdk_screen_get_font_options(AScreen: PGdkScreen): Pcairo_font_options_t; cdecl; external;
function gdk_screen_get_height(AScreen: PGdkScreen): gint; cdecl; external;
function gdk_screen_get_height_mm(AScreen: PGdkScreen): gint; cdecl; external;
function gdk_screen_get_monitor_at_point(AScreen: PGdkScreen; x: gint; y: gint): gint; cdecl; external;
function gdk_screen_get_monitor_at_window(AScreen: PGdkScreen; window: PGdkWindow): gint; cdecl; external;
function gdk_screen_get_monitor_height_mm(AScreen: PGdkScreen; monitor_num: gint): gint; cdecl; external;
function gdk_screen_get_monitor_plug_name(AScreen: PGdkScreen; monitor_num: gint): Pgchar; cdecl; external;
function gdk_screen_get_monitor_width_mm(AScreen: PGdkScreen; monitor_num: gint): gint; cdecl; external;
function gdk_screen_get_n_monitors(AScreen: PGdkScreen): gint; cdecl; external;
function gdk_screen_get_number(AScreen: PGdkScreen): gint; cdecl; external;
function gdk_screen_get_primary_monitor(AScreen: PGdkScreen): gint; cdecl; external;
function gdk_screen_get_resolution(AScreen: PGdkScreen): gdouble; cdecl; external;
function gdk_screen_get_rgba_visual(AScreen: PGdkScreen): PGdkVisual; cdecl; external;
function gdk_screen_get_root_window(AScreen: PGdkScreen): PGdkWindow; cdecl; external;
function gdk_screen_get_setting(AScreen: PGdkScreen; name: Pgchar; value: PGValue): gboolean; cdecl; external;
function gdk_screen_get_system_visual(AScreen: PGdkScreen): PGdkVisual; cdecl; external;
function gdk_screen_get_toplevel_windows(AScreen: PGdkScreen): PGList; cdecl; external;
function gdk_screen_get_type: TGType; cdecl; external;
function gdk_screen_get_width(AScreen: PGdkScreen): gint; cdecl; external;
function gdk_screen_get_width_mm(AScreen: PGdkScreen): gint; cdecl; external;
function gdk_screen_get_window_stack(AScreen: PGdkScreen): PGList; cdecl; external;
function gdk_screen_height: gint; cdecl; external;
function gdk_screen_height_mm: gint; cdecl; external;
function gdk_screen_is_composited(AScreen: PGdkScreen): gboolean; cdecl; external;
function gdk_screen_list_visuals(AScreen: PGdkScreen): PGList; cdecl; external;
function gdk_screen_make_display_name(AScreen: PGdkScreen): Pgchar; cdecl; external;
function gdk_screen_width: gint; cdecl; external;
function gdk_screen_width_mm: gint; cdecl; external;
function gdk_selection_owner_get(selection: TGdkAtom): PGdkWindow; cdecl; external;
function gdk_selection_owner_get_for_display(display: PGdkDisplay; selection: TGdkAtom): PGdkWindow; cdecl; external;
function gdk_selection_owner_set(owner: PGdkWindow; selection: TGdkAtom; time_: guint32; send_event: gboolean): gboolean; cdecl; external;
function gdk_selection_owner_set_for_display(display: PGdkDisplay; owner: PGdkWindow; selection: TGdkAtom; time_: guint32; send_event: gboolean): gboolean; cdecl; external;
function gdk_selection_property_get(requestor: PGdkWindow; data: PPguint8; prop_type: PGdkAtom; prop_format: Pgint): gint; cdecl; external;
function gdk_setting_get(name: Pgchar; value: PGValue): gboolean; cdecl; external;
function gdk_test_simulate_button(window: PGdkWindow; x: gint; y: gint; button: guint; modifiers: TGdkModifierType; button_pressrelease: TGdkEventType): gboolean; cdecl; external;
function gdk_test_simulate_key(window: PGdkWindow; x: gint; y: gint; keyval: guint; modifiers: TGdkModifierType; key_pressrelease: TGdkEventType): gboolean; cdecl; external;
function gdk_text_property_to_utf8_list_for_display(display: PGdkDisplay; encoding: TGdkAtom; format: gint; text: Pguint8; length: gint; list: PPPgchar): gint; cdecl; external;
function gdk_threads_add_idle(function_: TGSourceFunc; data: gpointer): guint; cdecl; external;
function gdk_threads_add_idle_full(priority: gint; function_: TGSourceFunc; data: gpointer; notify: TGDestroyNotify): guint; cdecl; external;
function gdk_threads_add_timeout(interval: guint; function_: TGSourceFunc; data: gpointer): guint; cdecl; external;
function gdk_threads_add_timeout_full(priority: gint; interval: guint; function_: TGSourceFunc; data: gpointer; notify: TGDestroyNotify): guint; cdecl; external;
function gdk_threads_add_timeout_seconds(interval: guint; function_: TGSourceFunc; data: gpointer): guint; cdecl; external;
function gdk_threads_add_timeout_seconds_full(priority: gint; interval: guint; function_: TGSourceFunc; data: gpointer; notify: TGDestroyNotify): guint; cdecl; external;
function gdk_unicode_to_keyval(wc: guint32): guint; cdecl; external;
function gdk_utf8_to_string_target(str: Pgchar): Pgchar; cdecl; external;
function gdk_visual_get_best: PGdkVisual; cdecl; external;
function gdk_visual_get_best_depth: gint; cdecl; external;
function gdk_visual_get_best_type: TGdkVisualType; cdecl; external;
function gdk_visual_get_best_with_both(depth: gint; visual_type: TGdkVisualType): PGdkVisual; cdecl; external;
function gdk_visual_get_best_with_depth(depth: gint): PGdkVisual; cdecl; external;
function gdk_visual_get_best_with_type(visual_type: TGdkVisualType): PGdkVisual; cdecl; external;
function gdk_visual_get_bits_per_rgb(AVisual: PGdkVisual): gint; cdecl; external;
function gdk_visual_get_byte_order(AVisual: PGdkVisual): TGdkByteOrder; cdecl; external;
function gdk_visual_get_colormap_size(AVisual: PGdkVisual): gint; cdecl; external;
function gdk_visual_get_depth(AVisual: PGdkVisual): gint; cdecl; external;
function gdk_visual_get_screen(AVisual: PGdkVisual): PGdkScreen; cdecl; external;
function gdk_visual_get_system: PGdkVisual; cdecl; external;
function gdk_visual_get_type: TGType; cdecl; external;
function gdk_visual_get_visual_type(AVisual: PGdkVisual): TGdkVisualType; cdecl; external;
function gdk_window_create_similar_surface(AWindow: PGdkWindow; content: Tcairo_content_t; width: gint; height: gint): Pcairo_surface_t; cdecl; external;
function gdk_window_ensure_native(AWindow: PGdkWindow): gboolean; cdecl; external;
function gdk_window_get_accept_focus(AWindow: PGdkWindow): gboolean; cdecl; external;
function gdk_window_get_background_pattern(AWindow: PGdkWindow): Pcairo_pattern_t; cdecl; external;
function gdk_window_get_children(AWindow: PGdkWindow): PGList; cdecl; external;
function gdk_window_get_clip_region(AWindow: PGdkWindow): Pcairo_region_t; cdecl; external;
function gdk_window_get_composited(AWindow: PGdkWindow): gboolean; cdecl; external;
function gdk_window_get_cursor(AWindow: PGdkWindow): PGdkCursor; cdecl; external;
function gdk_window_get_decorations(AWindow: PGdkWindow; decorations: PGdkWMDecoration): gboolean; cdecl; external;
function gdk_window_get_device_cursor(AWindow: PGdkWindow; device: PGdkDevice): PGdkCursor; cdecl; external;
function gdk_window_get_device_events(AWindow: PGdkWindow; device: PGdkDevice): TGdkEventMask; cdecl; external;
function gdk_window_get_device_position(AWindow: PGdkWindow; device: PGdkDevice; x: Pgint; y: Pgint; mask: PGdkModifierType): PGdkWindow; cdecl; external;
function gdk_window_get_display(AWindow: PGdkWindow): PGdkDisplay; cdecl; external;
function gdk_window_get_drag_protocol(AWindow: PGdkWindow; target: PPGdkWindow): TGdkDragProtocol; cdecl; external;
function gdk_window_get_effective_parent(AWindow: PGdkWindow): PGdkWindow; cdecl; external;
function gdk_window_get_effective_toplevel(AWindow: PGdkWindow): PGdkWindow; cdecl; external;
function gdk_window_get_events(AWindow: PGdkWindow): TGdkEventMask; cdecl; external;
function gdk_window_get_focus_on_map(AWindow: PGdkWindow): gboolean; cdecl; external;
function gdk_window_get_group(AWindow: PGdkWindow): PGdkWindow; cdecl; external;
function gdk_window_get_height(AWindow: PGdkWindow): gint; cdecl; external;
function gdk_window_get_modal_hint(AWindow: PGdkWindow): gboolean; cdecl; external;
function gdk_window_get_origin(AWindow: PGdkWindow; x: Pgint; y: Pgint): gint; cdecl; external;
function gdk_window_get_parent(AWindow: PGdkWindow): PGdkWindow; cdecl; external;
function gdk_window_get_screen(AWindow: PGdkWindow): PGdkScreen; cdecl; external;
function gdk_window_get_source_events(AWindow: PGdkWindow; source: TGdkInputSource): TGdkEventMask; cdecl; external;
function gdk_window_get_state(AWindow: PGdkWindow): TGdkWindowState; cdecl; external;
function gdk_window_get_support_multidevice(AWindow: PGdkWindow): gboolean; cdecl; external;
function gdk_window_get_toplevel(AWindow: PGdkWindow): PGdkWindow; cdecl; external;
function gdk_window_get_type: TGType; cdecl; external;
function gdk_window_get_type_hint(AWindow: PGdkWindow): TGdkWindowTypeHint; cdecl; external;
function gdk_window_get_update_area(AWindow: PGdkWindow): Pcairo_region_t; cdecl; external;
function gdk_window_get_visible_region(AWindow: PGdkWindow): Pcairo_region_t; cdecl; external;
function gdk_window_get_visual(AWindow: PGdkWindow): PGdkVisual; cdecl; external;
function gdk_window_get_width(AWindow: PGdkWindow): gint; cdecl; external;
function gdk_window_get_window_type(AWindow: PGdkWindow): TGdkWindowType; cdecl; external;
function gdk_window_has_native(AWindow: PGdkWindow): gboolean; cdecl; external;
function gdk_window_is_destroyed(AWindow: PGdkWindow): gboolean; cdecl; external;
function gdk_window_is_input_only(AWindow: PGdkWindow): gboolean; cdecl; external;
function gdk_window_is_shaped(AWindow: PGdkWindow): gboolean; cdecl; external;
function gdk_window_is_viewable(AWindow: PGdkWindow): gboolean; cdecl; external;
function gdk_window_is_visible(AWindow: PGdkWindow): gboolean; cdecl; external;
function gdk_window_new(parent: PGdkWindow; attributes: PGdkWindowAttr; attributes_mask: gint): PGdkWindow; cdecl; external;
function gdk_window_peek_children(AWindow: PGdkWindow): PGList; cdecl; external;
function gdk_window_set_static_gravities(AWindow: PGdkWindow; use_static: gboolean): gboolean; cdecl; external;
procedure gdk_add_option_entries_libgtk_only(group: PGOptionGroup); cdecl; external;
procedure gdk_app_launch_context_set_desktop(AAppLaunchContext: PGdkAppLaunchContext; desktop: gint); cdecl; external;
procedure gdk_app_launch_context_set_icon(AAppLaunchContext: PGdkAppLaunchContext; icon: PGIcon); cdecl; external;
procedure gdk_app_launch_context_set_icon_name(AAppLaunchContext: PGdkAppLaunchContext; icon_name: Pgchar); cdecl; external;
procedure gdk_app_launch_context_set_screen(AAppLaunchContext: PGdkAppLaunchContext; screen: PGdkScreen); cdecl; external;
procedure gdk_app_launch_context_set_timestamp(AAppLaunchContext: PGdkAppLaunchContext; timestamp: guint32); cdecl; external;
procedure gdk_beep; cdecl; external;
procedure gdk_cairo_rectangle(cr: Pcairo_t; rectangle: PGdkRectangle); cdecl; external;
procedure gdk_cairo_region(cr: Pcairo_t; region: Pcairo_region_t); cdecl; external;
procedure gdk_cairo_set_source_color(cr: Pcairo_t; color: PGdkColor); cdecl; external;
procedure gdk_cairo_set_source_pixbuf(cr: Pcairo_t; pixbuf: PGdkPixbuf; pixbuf_x: gdouble; pixbuf_y: gdouble); cdecl; external;
procedure gdk_cairo_set_source_rgba(cr: Pcairo_t; rgba: PGdkRGBA); cdecl; external;
procedure gdk_cairo_set_source_window(cr: Pcairo_t; window: PGdkWindow; x: gdouble; y: gdouble); cdecl; external;
procedure gdk_color_free(AColor: PGdkColor); cdecl; external;
procedure gdk_device_free_history(events: PPGdkTimeCoord; n_events: gint); cdecl; external;
procedure gdk_device_get_position(ADevice: PGdkDevice; screen: PPGdkScreen; x: Pgint; y: Pgint); cdecl; external;
procedure gdk_device_get_state(ADevice: PGdkDevice; window: PGdkWindow; axes: Pgdouble; mask: PGdkModifierType); cdecl; external;
procedure gdk_device_set_axis_use(ADevice: PGdkDevice; index_: guint; use: TGdkAxisUse); cdecl; external;
procedure gdk_device_set_key(ADevice: PGdkDevice; index_: guint; keyval: guint; modifiers: TGdkModifierType); cdecl; external;
procedure gdk_device_ungrab(ADevice: PGdkDevice; time_: guint32); cdecl; external;
procedure gdk_device_warp(ADevice: PGdkDevice; screen: PGdkScreen; x: gint; y: gint); cdecl; external;
procedure gdk_disable_multidevice; cdecl; external;
procedure gdk_display_beep(ADisplay: PGdkDisplay); cdecl; external;
procedure gdk_display_close(ADisplay: PGdkDisplay); cdecl; external;
procedure gdk_display_flush(ADisplay: PGdkDisplay); cdecl; external;
procedure gdk_display_get_maximal_cursor_size(ADisplay: PGdkDisplay; width: Pguint; height: Pguint); cdecl; external;
procedure gdk_display_manager_set_default_display(ADisplayManager: PGdkDisplayManager; display: PGdkDisplay); cdecl; external;
procedure gdk_display_notify_startup_complete(ADisplay: PGdkDisplay; startup_id: Pgchar); cdecl; external;
procedure gdk_display_put_event(ADisplay: PGdkDisplay; event: PGdkEvent); cdecl; external;
procedure gdk_display_set_double_click_distance(ADisplay: PGdkDisplay; distance: guint); cdecl; external;
procedure gdk_display_set_double_click_time(ADisplay: PGdkDisplay; msec: guint); cdecl; external;
procedure gdk_display_store_clipboard(ADisplay: PGdkDisplay; clipboard_window: PGdkWindow; time_: guint32; targets: PGdkAtom; n_targets: gint); cdecl; external;
procedure gdk_display_sync(ADisplay: PGdkDisplay); cdecl; external;
procedure gdk_drag_abort(context: PGdkDragContext; time_: guint32); cdecl; external;
procedure gdk_drag_context_set_device(ADragContext: PGdkDragContext; device: PGdkDevice); cdecl; external;
procedure gdk_drag_drop(context: PGdkDragContext; time_: guint32); cdecl; external;
procedure gdk_drag_find_window_for_screen(context: PGdkDragContext; drag_window: PGdkWindow; screen: PGdkScreen; x_root: gint; y_root: gint; dest_window: PPGdkWindow; protocol: PGdkDragProtocol); cdecl; external;
procedure gdk_drag_status(context: PGdkDragContext; action: TGdkDragAction; time_: guint32); cdecl; external;
procedure gdk_drop_finish(context: PGdkDragContext; success: gboolean; time_: guint32); cdecl; external;
procedure gdk_drop_reply(context: PGdkDragContext; accepted: gboolean; time_: guint32); cdecl; external;
procedure gdk_error_trap_pop_ignored; cdecl; external;
procedure gdk_error_trap_push; cdecl; external;
procedure gdk_event_free(AEvent: PGdkEvent); cdecl; external;
procedure gdk_event_handler_set(func: TGdkEventFunc; data: gpointer; notify: TGDestroyNotify); cdecl; external;
procedure gdk_event_put(AEvent: PGdkEvent); cdecl; external;
procedure gdk_event_request_motions(event: PGdkEventMotion); cdecl; external;
procedure gdk_event_set_device(AEvent: PGdkEvent; device: PGdkDevice); cdecl; external;
procedure gdk_event_set_screen(AEvent: PGdkEvent; screen: PGdkScreen); cdecl; external;
procedure gdk_event_set_source_device(AEvent: PGdkEvent; device: PGdkDevice); cdecl; external;
procedure gdk_flush; cdecl; external;
procedure gdk_init(argc: Pgint; argv: PPPgchar); cdecl; external;
procedure gdk_keyboard_ungrab(time_: guint32); cdecl; external;
procedure gdk_keymap_add_virtual_modifiers(AKeymap: PGdkKeymap; state: PGdkModifierType); cdecl; external;
procedure gdk_keyval_convert_case(symbol: guint; lower: Pguint; upper: Pguint); cdecl; external;
procedure gdk_notify_startup_complete; cdecl; external;
procedure gdk_notify_startup_complete_with_id(startup_id: Pgchar); cdecl; external;
procedure gdk_offscreen_window_set_embedder(window: PGdkWindow; embedder: PGdkWindow); cdecl; external;
procedure gdk_parse_args(argc: Pgint; argv: PPPgchar); cdecl; external;
procedure gdk_pointer_ungrab(time_: guint32); cdecl; external;
procedure gdk_pre_parse_libgtk_only; cdecl; external;
procedure gdk_property_change(window: PGdkWindow; property_: TGdkAtom; type_: TGdkAtom; format: gint; mode: TGdkPropMode; data: Pguint8; nelements: gint); cdecl; external;
procedure gdk_property_delete(window: PGdkWindow; property_: TGdkAtom); cdecl; external;
procedure gdk_query_depths(depths: PPgint; count: Pgint); cdecl; external;
procedure gdk_query_visual_types(visual_types: PPGdkVisualType; count: Pgint); cdecl; external;
procedure gdk_rectangle_union(src1: PGdkRectangle; src2: PGdkRectangle; dest: PGdkRectangle); cdecl; external;
procedure gdk_rgba_free(ARGBA: PGdkRGBA); cdecl; external;
procedure gdk_screen_get_monitor_geometry(AScreen: PGdkScreen; monitor_num: gint; dest: PGdkRectangle); cdecl; external;
procedure gdk_screen_set_font_options(AScreen: PGdkScreen; options: Pcairo_font_options_t); cdecl; external;
procedure gdk_screen_set_resolution(AScreen: PGdkScreen; dpi: gdouble); cdecl; external;
procedure gdk_selection_convert(requestor: PGdkWindow; selection: TGdkAtom; target: TGdkAtom; time_: guint32); cdecl; external;
procedure gdk_selection_send_notify(requestor: PGdkWindow; selection: TGdkAtom; target: TGdkAtom; property_: TGdkAtom; time_: guint32); cdecl; external;
procedure gdk_selection_send_notify_for_display(display: PGdkDisplay; requestor: PGdkWindow; selection: TGdkAtom; target: TGdkAtom; property_: TGdkAtom; time_: guint32); cdecl; external;
procedure gdk_set_double_click_time(msec: guint); cdecl; external;
procedure gdk_set_program_class(program_class: Pgchar); cdecl; external;
procedure gdk_set_show_events(show_events: gboolean); cdecl; external;
procedure gdk_synthesize_window_state(window: PGdkWindow; unset_flags: TGdkWindowState; set_flags: TGdkWindowState); cdecl; external;
procedure gdk_test_render_sync(window: PGdkWindow); cdecl; external;
procedure gdk_threads_enter; cdecl; external;
procedure gdk_threads_init; cdecl; external;
procedure gdk_threads_leave; cdecl; external;
procedure gdk_threads_set_lock_functions(enter_fn: TGCallback; leave_fn: TGCallback); cdecl; external;
procedure gdk_visual_get_blue_pixel_details(AVisual: PGdkVisual; mask: Pguint32; shift: Pgint; precision: Pgint); cdecl; external;
procedure gdk_visual_get_green_pixel_details(AVisual: PGdkVisual; mask: Pguint32; shift: Pgint; precision: Pgint); cdecl; external;
procedure gdk_visual_get_red_pixel_details(AVisual: PGdkVisual; mask: Pguint32; shift: Pgint; precision: Pgint); cdecl; external;
procedure gdk_window_add_filter(AWindow: PGdkWindow; function_: TGdkFilterFunc; data: gpointer); cdecl; external;
procedure gdk_window_beep(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_begin_move_drag(AWindow: PGdkWindow; button: gint; root_x: gint; root_y: gint; timestamp: guint32); cdecl; external;
procedure gdk_window_begin_paint_rect(AWindow: PGdkWindow; rectangle: PGdkRectangle); cdecl; external;
procedure gdk_window_begin_paint_region(AWindow: PGdkWindow; region: Pcairo_region_t); cdecl; external;
procedure gdk_window_begin_resize_drag(AWindow: PGdkWindow; edge: TGdkWindowEdge; button: gint; root_x: gint; root_y: gint; timestamp: guint32); cdecl; external;
procedure gdk_window_configure_finished(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_constrain_size(geometry: PGdkGeometry; flags: guint; width: gint; height: gint; new_width: Pgint; new_height: Pgint); cdecl; external;
procedure gdk_window_coords_from_parent(AWindow: PGdkWindow; parent_x: gdouble; parent_y: gdouble; x: Pgdouble; y: Pgdouble); cdecl; external;
procedure gdk_window_coords_to_parent(AWindow: PGdkWindow; x: gdouble; y: gdouble; parent_x: Pgdouble; parent_y: Pgdouble); cdecl; external;
procedure gdk_window_deiconify(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_destroy(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_destroy_notify(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_enable_synchronized_configure(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_end_paint(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_flush(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_focus(AWindow: PGdkWindow; timestamp: guint32); cdecl; external;
procedure gdk_window_freeze_toplevel_updates_libgtk_only(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_freeze_updates(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_fullscreen(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_geometry_changed(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_get_frame_extents(AWindow: PGdkWindow; rect: PGdkRectangle); cdecl; external;
procedure gdk_window_get_geometry(AWindow: PGdkWindow; x: Pgint; y: Pgint; width: Pgint; height: Pgint); cdecl; external;
procedure gdk_window_get_position(AWindow: PGdkWindow; x: Pgint; y: Pgint); cdecl; external;
procedure gdk_window_get_root_coords(AWindow: PGdkWindow; x: gint; y: gint; root_x: Pgint; root_y: Pgint); cdecl; external;
procedure gdk_window_get_root_origin(AWindow: PGdkWindow; x: Pgint; y: Pgint); cdecl; external;
procedure gdk_window_get_user_data(AWindow: PGdkWindow; data: Pgpointer); cdecl; external;
procedure gdk_window_hide(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_iconify(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_input_shape_combine_region(AWindow: PGdkWindow; shape_region: Pcairo_region_t; offset_x: gint; offset_y: gint); cdecl; external;
procedure gdk_window_invalidate_maybe_recurse(AWindow: PGdkWindow; region: Pcairo_region_t; child_func: TGdkWindowChildFunc; user_data: gpointer); cdecl; external;
procedure gdk_window_invalidate_rect(AWindow: PGdkWindow; rect: PGdkRectangle; invalidate_children: gboolean); cdecl; external;
procedure gdk_window_invalidate_region(AWindow: PGdkWindow; region: Pcairo_region_t; invalidate_children: gboolean); cdecl; external;
procedure gdk_window_lower(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_maximize(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_merge_child_input_shapes(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_merge_child_shapes(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_move(AWindow: PGdkWindow; x: gint; y: gint); cdecl; external;
procedure gdk_window_move_region(AWindow: PGdkWindow; region: Pcairo_region_t; dx: gint; dy: gint); cdecl; external;
procedure gdk_window_move_resize(AWindow: PGdkWindow; x: gint; y: gint; width: gint; height: gint); cdecl; external;
procedure gdk_window_process_all_updates; cdecl; external;
procedure gdk_window_process_updates(AWindow: PGdkWindow; update_children: gboolean); cdecl; external;
procedure gdk_window_raise(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_register_dnd(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_remove_filter(AWindow: PGdkWindow; function_: TGdkFilterFunc; data: gpointer); cdecl; external;
procedure gdk_window_reparent(AWindow: PGdkWindow; new_parent: PGdkWindow; x: gint; y: gint); cdecl; external;
procedure gdk_window_resize(AWindow: PGdkWindow; width: gint; height: gint); cdecl; external;
procedure gdk_window_restack(AWindow: PGdkWindow; sibling: PGdkWindow; above: gboolean); cdecl; external;
procedure gdk_window_scroll(AWindow: PGdkWindow; dx: gint; dy: gint); cdecl; external;
procedure gdk_window_set_accept_focus(AWindow: PGdkWindow; accept_focus: gboolean); cdecl; external;
procedure gdk_window_set_background(AWindow: PGdkWindow; color: PGdkColor); cdecl; external;
procedure gdk_window_set_background_pattern(AWindow: PGdkWindow; pattern: Pcairo_pattern_t); cdecl; external;
procedure gdk_window_set_background_rgba(AWindow: PGdkWindow; rgba: PGdkRGBA); cdecl; external;
procedure gdk_window_set_child_input_shapes(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_set_child_shapes(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_set_composited(AWindow: PGdkWindow; composited: gboolean); cdecl; external;
procedure gdk_window_set_cursor(AWindow: PGdkWindow; cursor: PGdkCursor); cdecl; external;
procedure gdk_window_set_debug_updates(setting: gboolean); cdecl; external;
procedure gdk_window_set_decorations(AWindow: PGdkWindow; decorations: TGdkWMDecoration); cdecl; external;
procedure gdk_window_set_device_cursor(AWindow: PGdkWindow; device: PGdkDevice; cursor: PGdkCursor); cdecl; external;
procedure gdk_window_set_device_events(AWindow: PGdkWindow; device: PGdkDevice; event_mask: TGdkEventMask); cdecl; external;
procedure gdk_window_set_events(AWindow: PGdkWindow; event_mask: TGdkEventMask); cdecl; external;
procedure gdk_window_set_focus_on_map(AWindow: PGdkWindow; focus_on_map: gboolean); cdecl; external;
procedure gdk_window_set_functions(AWindow: PGdkWindow; functions: TGdkWMFunction); cdecl; external;
procedure gdk_window_set_geometry_hints(AWindow: PGdkWindow; geometry: PGdkGeometry; geom_mask: TGdkWindowHints); cdecl; external;
procedure gdk_window_set_group(AWindow: PGdkWindow; leader: PGdkWindow); cdecl; external;
procedure gdk_window_set_icon_list(AWindow: PGdkWindow; pixbufs: PGList); cdecl; external;
procedure gdk_window_set_icon_name(AWindow: PGdkWindow; name: Pgchar); cdecl; external;
procedure gdk_window_set_keep_above(AWindow: PGdkWindow; setting: gboolean); cdecl; external;
procedure gdk_window_set_keep_below(AWindow: PGdkWindow; setting: gboolean); cdecl; external;
procedure gdk_window_set_modal_hint(AWindow: PGdkWindow; modal: gboolean); cdecl; external;
procedure gdk_window_set_opacity(AWindow: PGdkWindow; opacity: gdouble); cdecl; external;
procedure gdk_window_set_override_redirect(AWindow: PGdkWindow; override_redirect: gboolean); cdecl; external;
procedure gdk_window_set_role(AWindow: PGdkWindow; role: Pgchar); cdecl; external;
procedure gdk_window_set_skip_pager_hint(AWindow: PGdkWindow; skips_pager: gboolean); cdecl; external;
procedure gdk_window_set_skip_taskbar_hint(AWindow: PGdkWindow; skips_taskbar: gboolean); cdecl; external;
procedure gdk_window_set_source_events(AWindow: PGdkWindow; source: TGdkInputSource; event_mask: TGdkEventMask); cdecl; external;
procedure gdk_window_set_startup_id(AWindow: PGdkWindow; startup_id: Pgchar); cdecl; external;
procedure gdk_window_set_support_multidevice(AWindow: PGdkWindow; support_multidevice: gboolean); cdecl; external;
procedure gdk_window_set_title(AWindow: PGdkWindow; title: Pgchar); cdecl; external;
procedure gdk_window_set_transient_for(AWindow: PGdkWindow; parent: PGdkWindow); cdecl; external;
procedure gdk_window_set_type_hint(AWindow: PGdkWindow; hint: TGdkWindowTypeHint); cdecl; external;
procedure gdk_window_set_urgency_hint(AWindow: PGdkWindow; urgent: gboolean); cdecl; external;
procedure gdk_window_set_user_data(AWindow: PGdkWindow; user_data: TGObject); cdecl; external;
procedure gdk_window_shape_combine_region(AWindow: PGdkWindow; shape_region: Pcairo_region_t; offset_x: gint; offset_y: gint); cdecl; external;
procedure gdk_window_show(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_show_unraised(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_stick(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_thaw_toplevel_updates_libgtk_only(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_thaw_updates(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_unfullscreen(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_unmaximize(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_unstick(AWindow: PGdkWindow); cdecl; external;
procedure gdk_window_withdraw(AWindow: PGdkWindow); cdecl; external;
implementation
function TGdkDisplay.get_default: PGdkDisplay; cdecl;
begin
  Result := Gdk3.gdk_display_get_default();
end;

function TGdkDisplay.open(display_name: Pgchar): PGdkDisplay; cdecl;
begin
  Result := Gdk3.gdk_display_open(display_name);
end;

function TGdkDisplay.open_default_libgtk_only: PGdkDisplay; cdecl;
begin
  Result := Gdk3.gdk_display_open_default_libgtk_only();
end;

procedure TGdkDisplay.beep; cdecl;
begin
  Gdk3.gdk_display_beep(@self);
end;

procedure TGdkDisplay.close; cdecl;
begin
  Gdk3.gdk_display_close(@self);
end;

function TGdkDisplay.device_is_grabbed(device: PGdkDevice): gboolean; cdecl;
begin
  Result := Gdk3.gdk_display_device_is_grabbed(@self, device);
end;

procedure TGdkDisplay.flush; cdecl;
begin
  Gdk3.gdk_display_flush(@self);
end;

function TGdkDisplay.get_app_launch_context: PGdkAppLaunchContext; cdecl;
begin
  Result := Gdk3.gdk_display_get_app_launch_context(@self);
end;

function TGdkDisplay.get_default_cursor_size: guint; cdecl;
begin
  Result := Gdk3.gdk_display_get_default_cursor_size(@self);
end;

function TGdkDisplay.get_default_group: PGdkWindow; cdecl;
begin
  Result := Gdk3.gdk_display_get_default_group(@self);
end;

function TGdkDisplay.get_default_screen: PGdkScreen; cdecl;
begin
  Result := Gdk3.gdk_display_get_default_screen(@self);
end;

function TGdkDisplay.get_device_manager: PGdkDeviceManager; cdecl;
begin
  Result := Gdk3.gdk_display_get_device_manager(@self);
end;

function TGdkDisplay.get_event: PGdkEvent; cdecl;
begin
  Result := Gdk3.gdk_display_get_event(@self);
end;

procedure TGdkDisplay.get_maximal_cursor_size(width: Pguint; height: Pguint); cdecl;
begin
  Gdk3.gdk_display_get_maximal_cursor_size(@self, width, height);
end;

function TGdkDisplay.get_n_screens: gint; cdecl;
begin
  Result := Gdk3.gdk_display_get_n_screens(@self);
end;

function TGdkDisplay.get_name: Pgchar; cdecl;
begin
  Result := Gdk3.gdk_display_get_name(@self);
end;

function TGdkDisplay.get_screen(screen_num: gint): PGdkScreen; cdecl;
begin
  Result := Gdk3.gdk_display_get_screen(@self, screen_num);
end;

function TGdkDisplay.has_pending: gboolean; cdecl;
begin
  Result := Gdk3.gdk_display_has_pending(@self);
end;

function TGdkDisplay.is_closed: gboolean; cdecl;
begin
  Result := Gdk3.gdk_display_is_closed(@self);
end;

procedure TGdkDisplay.notify_startup_complete(startup_id: Pgchar); cdecl;
begin
  Gdk3.gdk_display_notify_startup_complete(@self, startup_id);
end;

function TGdkDisplay.peek_event: PGdkEvent; cdecl;
begin
  Result := Gdk3.gdk_display_peek_event(@self);
end;

procedure TGdkDisplay.put_event(event: PGdkEvent); cdecl;
begin
  Gdk3.gdk_display_put_event(@self, event);
end;

function TGdkAtom.name: Pgchar; cdecl;
begin
  Result := Gdk3.gdk_atom_name(@self);
end;

function TGdkAtom.intern(atom_name: Pgchar; only_if_exists: gboolean): TGdkAtom; cdecl;
begin
  Result := Gdk3.gdk_atom_intern(atom_name, only_if_exists);
end;

function TGdkAtom.intern_static_string(atom_name: Pgchar): TGdkAtom; cdecl;
begin
  Result := Gdk3.gdk_atom_intern_static_string(atom_name);
end;

function TGdkDisplay.request_selection_notification(selection: TGdkAtom): gboolean; cdecl;
begin
  Result := Gdk3.gdk_display_request_selection_notification(@self, selection);
end;

procedure TGdkDisplay.set_double_click_distance(distance: guint); cdecl;
begin
  Gdk3.gdk_display_set_double_click_distance(@self, distance);
end;

procedure TGdkDisplay.set_double_click_time(msec: guint); cdecl;
begin
  Gdk3.gdk_display_set_double_click_time(@self, msec);
end;

procedure TGdkDisplay.store_clipboard(clipboard_window: PGdkWindow; time_: guint32; targets: PGdkAtom; n_targets: gint); cdecl;
begin
  Gdk3.gdk_display_store_clipboard(@self, clipboard_window, time_, targets, n_targets);
end;

function TGdkDisplay.supports_clipboard_persistence: gboolean; cdecl;
begin
  Result := Gdk3.gdk_display_supports_clipboard_persistence(@self);
end;

function TGdkDisplay.supports_composite: gboolean; cdecl;
begin
  Result := Gdk3.gdk_display_supports_composite(@self);
end;

function TGdkDisplay.supports_cursor_alpha: gboolean; cdecl;
begin
  Result := Gdk3.gdk_display_supports_cursor_alpha(@self);
end;

function TGdkDisplay.supports_cursor_color: gboolean; cdecl;
begin
  Result := Gdk3.gdk_display_supports_cursor_color(@self);
end;

function TGdkDisplay.supports_input_shapes: gboolean; cdecl;
begin
  Result := Gdk3.gdk_display_supports_input_shapes(@self);
end;

function TGdkDisplay.supports_selection_notification: gboolean; cdecl;
begin
  Result := Gdk3.gdk_display_supports_selection_notification(@self);
end;

function TGdkDisplay.supports_shapes: gboolean; cdecl;
begin
  Result := Gdk3.gdk_display_supports_shapes(@self);
end;

procedure TGdkDisplay.sync; cdecl;
begin
  Gdk3.gdk_display_sync(@self);
end;

function TGdkScreen.get_default: PGdkScreen; cdecl;
begin
  Result := Gdk3.gdk_screen_get_default();
end;

function TGdkScreen.height: gint; cdecl;
begin
  Result := Gdk3.gdk_screen_height();
end;

function TGdkScreen.height_mm: gint; cdecl;
begin
  Result := Gdk3.gdk_screen_height_mm();
end;

function TGdkScreen.width: gint; cdecl;
begin
  Result := Gdk3.gdk_screen_width();
end;

function TGdkScreen.width_mm: gint; cdecl;
begin
  Result := Gdk3.gdk_screen_width_mm();
end;

function TGdkScreen.get_active_window: PGdkWindow; cdecl;
begin
  Result := Gdk3.gdk_screen_get_active_window(@self);
end;

function TGdkScreen.get_display: PGdkDisplay; cdecl;
begin
  Result := Gdk3.gdk_screen_get_display(@self);
end;

function TGdkScreen.get_font_options: Pcairo_font_options_t; cdecl;
begin
  Result := Gdk3.gdk_screen_get_font_options(@self);
end;

function TGdkScreen.get_height: gint; cdecl;
begin
  Result := Gdk3.gdk_screen_get_height(@self);
end;

function TGdkScreen.get_height_mm: gint; cdecl;
begin
  Result := Gdk3.gdk_screen_get_height_mm(@self);
end;

function TGdkScreen.get_monitor_at_point(x: gint; y: gint): gint; cdecl;
begin
  Result := Gdk3.gdk_screen_get_monitor_at_point(@self, x, y);
end;

function TGdkScreen.get_monitor_at_window(window: PGdkWindow): gint; cdecl;
begin
  Result := Gdk3.gdk_screen_get_monitor_at_window(@self, window);
end;

procedure TGdkScreen.get_monitor_geometry(monitor_num: gint; dest: PGdkRectangle); cdecl;
begin
  Gdk3.gdk_screen_get_monitor_geometry(@self, monitor_num, dest);
end;

function TGdkScreen.get_monitor_height_mm(monitor_num: gint): gint; cdecl;
begin
  Result := Gdk3.gdk_screen_get_monitor_height_mm(@self, monitor_num);
end;

function TGdkScreen.get_monitor_plug_name(monitor_num: gint): Pgchar; cdecl;
begin
  Result := Gdk3.gdk_screen_get_monitor_plug_name(@self, monitor_num);
end;

function TGdkScreen.get_monitor_width_mm(monitor_num: gint): gint; cdecl;
begin
  Result := Gdk3.gdk_screen_get_monitor_width_mm(@self, monitor_num);
end;

function TGdkScreen.get_n_monitors: gint; cdecl;
begin
  Result := Gdk3.gdk_screen_get_n_monitors(@self);
end;

function TGdkScreen.get_number: gint; cdecl;
begin
  Result := Gdk3.gdk_screen_get_number(@self);
end;

function TGdkScreen.get_primary_monitor: gint; cdecl;
begin
  Result := Gdk3.gdk_screen_get_primary_monitor(@self);
end;

function TGdkScreen.get_resolution: gdouble; cdecl;
begin
  Result := Gdk3.gdk_screen_get_resolution(@self);
end;

function TGdkScreen.get_rgba_visual: PGdkVisual; cdecl;
begin
  Result := Gdk3.gdk_screen_get_rgba_visual(@self);
end;

function TGdkScreen.get_root_window: PGdkWindow; cdecl;
begin
  Result := Gdk3.gdk_screen_get_root_window(@self);
end;

function TGdkScreen.get_setting(name: Pgchar; value: PGValue): gboolean; cdecl;
begin
  Result := Gdk3.gdk_screen_get_setting(@self, name, value);
end;

function TGdkScreen.get_system_visual: PGdkVisual; cdecl;
begin
  Result := Gdk3.gdk_screen_get_system_visual(@self);
end;

function TGdkScreen.get_toplevel_windows: PGList; cdecl;
begin
  Result := Gdk3.gdk_screen_get_toplevel_windows(@self);
end;

function TGdkScreen.get_width: gint; cdecl;
begin
  Result := Gdk3.gdk_screen_get_width(@self);
end;

function TGdkScreen.get_width_mm: gint; cdecl;
begin
  Result := Gdk3.gdk_screen_get_width_mm(@self);
end;

function TGdkScreen.get_window_stack: PGList; cdecl;
begin
  Result := Gdk3.gdk_screen_get_window_stack(@self);
end;

function TGdkScreen.is_composited: gboolean; cdecl;
begin
  Result := Gdk3.gdk_screen_is_composited(@self);
end;

function TGdkScreen.list_visuals: PGList; cdecl;
begin
  Result := Gdk3.gdk_screen_list_visuals(@self);
end;

function TGdkScreen.make_display_name: Pgchar; cdecl;
begin
  Result := Gdk3.gdk_screen_make_display_name(@self);
end;

procedure TGdkScreen.set_font_options(options: Pcairo_font_options_t); cdecl;
begin
  Gdk3.gdk_screen_set_font_options(@self, options);
end;

procedure TGdkScreen.set_resolution(dpi: gdouble); cdecl;
begin
  Gdk3.gdk_screen_set_resolution(@self, dpi);
end;

procedure TGdkAppLaunchContext.set_desktop(desktop: gint); cdecl;
begin
  Gdk3.gdk_app_launch_context_set_desktop(@self, desktop);
end;

procedure TGdkAppLaunchContext.set_icon(icon: PGIcon); cdecl;
begin
  Gdk3.gdk_app_launch_context_set_icon(@self, icon);
end;

procedure TGdkAppLaunchContext.set_icon_name(icon_name: Pgchar); cdecl;
begin
  Gdk3.gdk_app_launch_context_set_icon_name(@self, icon_name);
end;

procedure TGdkAppLaunchContext.set_screen(screen: PGdkScreen); cdecl;
begin
  Gdk3.gdk_app_launch_context_set_screen(@self, screen);
end;

procedure TGdkAppLaunchContext.set_timestamp(timestamp: guint32); cdecl;
begin
  Gdk3.gdk_app_launch_context_set_timestamp(@self, timestamp);
end;

function TGdkColor.copy: PPangoColor; cdecl;
begin
  Result := Gdk3.gdk_color_copy(@self);
end;

function TGdkColor.equal(colorb: PPangoColor): gboolean; cdecl;
begin
  Result := Gdk3.gdk_color_equal(@self, colorb);
end;

procedure TGdkColor.free; cdecl;
begin
  Gdk3.gdk_color_free(@self);
end;

function TGdkColor.hash: guint; cdecl;
begin
  Result := Gdk3.gdk_color_hash(@self);
end;

function TGdkColor.to_string: Pgchar; cdecl;
begin
  Result := Gdk3.gdk_color_to_string(@self);
end;

function TGdkColor.parse(spec: Pgchar; color: PPangoColor): gboolean; cdecl;
begin
  Result := Gdk3.gdk_color_parse(spec, color);
end;

function TGdkCursor.new(cursor_type: TGdkCursorType): PGdkCursor; cdecl;
begin
  Result := Gdk3.gdk_cursor_new(cursor_type);
end;

function TGdkCursor.new_for_display(display: PGdkDisplay; cursor_type: TGdkCursorType): PGdkCursor; cdecl;
begin
  Result := Gdk3.gdk_cursor_new_for_display(display, cursor_type);
end;

function TGdkCursor.new_from_name(display: PGdkDisplay; name: Pgchar): PGdkCursor; cdecl;
begin
  Result := Gdk3.gdk_cursor_new_from_name(display, name);
end;

function TGdkCursor.new_from_pixbuf(display: PGdkDisplay; pixbuf: PGdkPixbuf; x: gint; y: gint): PGdkCursor; cdecl;
begin
  Result := Gdk3.gdk_cursor_new_from_pixbuf(display, pixbuf, x, y);
end;

function TGdkCursor.get_cursor_type: TGdkCursorType; cdecl;
begin
  Result := Gdk3.gdk_cursor_get_cursor_type(@self);
end;

function TGdkCursor.get_display: PGdkDisplay; cdecl;
begin
  Result := Gdk3.gdk_cursor_get_display(@self);
end;

function TGdkCursor.get_image: PGdkPixbuf; cdecl;
begin
  Result := Gdk3.gdk_cursor_get_image(@self);
end;

procedure TGdkDevice.free_history(events: PPGdkTimeCoord; n_events: gint); cdecl;
begin
  Gdk3.gdk_device_free_history(events, n_events);
end;

function TGdkDevice.grab_info_libgtk_only(display: PGdkDisplay; device: PGdkDevice; grab_window: PPGdkWindow; owner_events: Pgboolean): gboolean; cdecl;
begin
  Result := Gdk3.gdk_device_grab_info_libgtk_only(display, device, grab_window, owner_events);
end;

function TGdkDevice.get_associated_device: PGdkDevice; cdecl;
begin
  Result := Gdk3.gdk_device_get_associated_device(@self);
end;

function TGdkDevice.get_axis(axes: Pgdouble; use: TGdkAxisUse; value: Pgdouble): gboolean; cdecl;
begin
  Result := Gdk3.gdk_device_get_axis(@self, axes, use, value);
end;

function TGdkDevice.get_axis_use(index_: guint): TGdkAxisUse; cdecl;
begin
  Result := Gdk3.gdk_device_get_axis_use(@self, index_);
end;

function TGdkDevice.get_axis_value(axes: Pgdouble; axis_label: TGdkAtom; value: Pgdouble): gboolean; cdecl;
begin
  Result := Gdk3.gdk_device_get_axis_value(@self, axes, axis_label, value);
end;

function TGdkDevice.get_device_type: TGdkDeviceType; cdecl;
begin
  Result := Gdk3.gdk_device_get_device_type(@self);
end;

function TGdkDevice.get_display: PGdkDisplay; cdecl;
begin
  Result := Gdk3.gdk_device_get_display(@self);
end;

function TGdkDevice.get_has_cursor: gboolean; cdecl;
begin
  Result := Gdk3.gdk_device_get_has_cursor(@self);
end;

function TGdkDevice.get_history(window: PGdkWindow; start: guint32; stop: guint32; events: PPPGdkTimeCoord; n_events: Pgint): gboolean; cdecl;
begin
  Result := Gdk3.gdk_device_get_history(@self, window, start, stop, events, n_events);
end;


function TGdkDevice.get_key(index_: guint; keyval: Pguint; modifiers: PGdkModifierType): gboolean; cdecl;
begin
  Result := Gdk3.gdk_device_get_key(@self, index_, keyval, modifiers);
end;

function TGdkDevice.get_mode: TGdkInputMode; cdecl;
begin
  Result := Gdk3.gdk_device_get_mode(@self);
end;

function TGdkDevice.get_n_axes: gint; cdecl;
begin
  Result := Gdk3.gdk_device_get_n_axes(@self);
end;

function TGdkDevice.get_n_keys: gint; cdecl;
begin
  Result := Gdk3.gdk_device_get_n_keys(@self);
end;

function TGdkDevice.get_name: Pgchar; cdecl;
begin
  Result := Gdk3.gdk_device_get_name(@self);
end;

procedure TGdkDevice.get_position(screen: PPGdkScreen; x: Pgint; y: Pgint); cdecl;
begin
  Gdk3.gdk_device_get_position(@self, screen, x, y);
end;

function TGdkDevice.get_source: TGdkInputSource; cdecl;
begin
  Result := Gdk3.gdk_device_get_source(@self);
end;

procedure TGdkDevice.get_state(window: PGdkWindow; axes: Pgdouble; mask: PGdkModifierType); cdecl;
begin
  Gdk3.gdk_device_get_state(@self, window, axes, mask);
end;

function TGdkDevice.get_window_at_position(win_x: Pgint; win_y: Pgint): PGdkWindow; cdecl;
begin
  Result := Gdk3.gdk_device_get_window_at_position(@self, win_x, win_y);
end;


function TGdkDevice.grab(window: PGdkWindow; grab_ownership: TGdkGrabOwnership; owner_events: gboolean; event_mask: TGdkEventMask; cursor: PGdkCursor; time_: guint32): TGdkGrabStatus; cdecl;
begin
  Result := Gdk3.gdk_device_grab(@self, window, grab_ownership, owner_events, event_mask, cursor, time_);
end;

function TGdkDevice.list_axes: PGList; cdecl;
begin
  Result := Gdk3.gdk_device_list_axes(@self);
end;

function TGdkDevice.list_slave_devices: PGList; cdecl;
begin
  Result := Gdk3.gdk_device_list_slave_devices(@self);
end;

procedure TGdkDevice.set_axis_use(index_: guint; use: TGdkAxisUse); cdecl;
begin
  Gdk3.gdk_device_set_axis_use(@self, index_, use);
end;

procedure TGdkDevice.set_key(index_: guint; keyval: guint; modifiers: TGdkModifierType); cdecl;
begin
  Gdk3.gdk_device_set_key(@self, index_, keyval, modifiers);
end;

function TGdkDevice.set_mode(mode: TGdkInputMode): gboolean; cdecl;
begin
  Result := Gdk3.gdk_device_set_mode(@self, mode);
end;

procedure TGdkDevice.ungrab(time_: guint32); cdecl;
begin
  Gdk3.gdk_device_ungrab(@self, time_);
end;

procedure TGdkDevice.warp(screen: PGdkScreen; x: gint; y: gint); cdecl;
begin
  Gdk3.gdk_device_warp(@self, screen, x, y);
end;

function TGdkWindow.new(parent: PGdkWindow; attributes: PGdkWindowAttr; attributes_mask: gint): PGdkWindow; cdecl;
begin
  Result := Gdk3.gdk_window_new(parent, attributes, attributes_mask);
end;

procedure TGdkWindow.constrain_size(geometry: PGdkGeometry; flags: guint; width: gint; height: gint; new_width: Pgint; new_height: Pgint); cdecl;
begin
  Gdk3.gdk_window_constrain_size(geometry, flags, width, height, new_width, new_height);
end;

procedure TGdkWindow.process_all_updates; cdecl;
begin
  Gdk3.gdk_window_process_all_updates();
end;

procedure TGdkWindow.set_debug_updates(setting: gboolean); cdecl;
begin
  Gdk3.gdk_window_set_debug_updates(setting);
end;

procedure TGdkWindow.add_filter(function_: TGdkFilterFunc; data: gpointer); cdecl;
begin
  Gdk3.gdk_window_add_filter(@self, function_, data);
end;

procedure TGdkWindow.beep; cdecl;
begin
  Gdk3.gdk_window_beep(@self);
end;

procedure TGdkWindow.begin_move_drag(button: gint; root_x: gint; root_y: gint; timestamp: guint32); cdecl;
begin
  Gdk3.gdk_window_begin_move_drag(@self, button, root_x, root_y, timestamp);
end;

procedure TGdkWindow.begin_paint_rect(rectangle: PGdkRectangle); cdecl;
begin
  Gdk3.gdk_window_begin_paint_rect(@self, rectangle);
end;

procedure TGdkWindow.begin_paint_region(region: Pcairo_region_t); cdecl;
begin
  Gdk3.gdk_window_begin_paint_region(@self, region);
end;

procedure TGdkWindow.begin_resize_drag(edge: TGdkWindowEdge; button: gint; root_x: gint; root_y: gint; timestamp: guint32); cdecl;
begin
  Gdk3.gdk_window_begin_resize_drag(@self, edge, button, root_x, root_y, timestamp);
end;

procedure TGdkWindow.configure_finished; cdecl;
begin
  Gdk3.gdk_window_configure_finished(@self);
end;

procedure TGdkWindow.coords_from_parent(parent_x: gdouble; parent_y: gdouble; x: Pgdouble; y: Pgdouble); cdecl;
begin
  Gdk3.gdk_window_coords_from_parent(@self, parent_x, parent_y, x, y);
end;

procedure TGdkWindow.coords_to_parent(x: gdouble; y: gdouble; parent_x: Pgdouble; parent_y: Pgdouble); cdecl;
begin
  Gdk3.gdk_window_coords_to_parent(@self, x, y, parent_x, parent_y);
end;

function TGdkWindow.create_similar_surface(content: Tcairo_content_t; width: gint; height: gint): Pcairo_surface_t; cdecl;
begin
  Result := Gdk3.gdk_window_create_similar_surface(@self, content, width, height);
end;

procedure TGdkWindow.deiconify; cdecl;
begin
  Gdk3.gdk_window_deiconify(@self);
end;

procedure TGdkWindow.destroy_; cdecl;
begin
  Gdk3.gdk_window_destroy(@self);
end;

procedure TGdkWindow.destroy_notify; cdecl;
begin
  Gdk3.gdk_window_destroy_notify(@self);
end;

procedure TGdkWindow.enable_synchronized_configure; cdecl;
begin
  Gdk3.gdk_window_enable_synchronized_configure(@self);
end;

procedure TGdkWindow.end_paint; cdecl;
begin
  Gdk3.gdk_window_end_paint(@self);
end;

function TGdkWindow.ensure_native: gboolean; cdecl;
begin
  Result := Gdk3.gdk_window_ensure_native(@self);
end;

procedure TGdkWindow.flush; cdecl;
begin
  Gdk3.gdk_window_flush(@self);
end;

procedure TGdkWindow.focus(timestamp: guint32); cdecl;
begin
  Gdk3.gdk_window_focus(@self, timestamp);
end;

procedure TGdkWindow.freeze_toplevel_updates_libgtk_only; cdecl;
begin
  Gdk3.gdk_window_freeze_toplevel_updates_libgtk_only(@self);
end;

procedure TGdkWindow.freeze_updates; cdecl;
begin
  Gdk3.gdk_window_freeze_updates(@self);
end;

procedure TGdkWindow.fullscreen; cdecl;
begin
  Gdk3.gdk_window_fullscreen(@self);
end;

procedure TGdkWindow.geometry_changed; cdecl;
begin
  Gdk3.gdk_window_geometry_changed(@self);
end;

function TGdkWindow.get_accept_focus: gboolean; cdecl;
begin
  Result := Gdk3.gdk_window_get_accept_focus(@self);
end;

function TGdkWindow.get_background_pattern: Pcairo_pattern_t; cdecl;
begin
  Result := Gdk3.gdk_window_get_background_pattern(@self);
end;

function TGdkWindow.get_children: PGList; cdecl;
begin
  Result := Gdk3.gdk_window_get_children(@self);
end;

function TGdkWindow.get_clip_region: Pcairo_region_t; cdecl;
begin
  Result := Gdk3.gdk_window_get_clip_region(@self);
end;

function TGdkWindow.get_composited: gboolean; cdecl;
begin
  Result := Gdk3.gdk_window_get_composited(@self);
end;

function TGdkWindow.get_cursor: PGdkCursor; cdecl;
begin
  Result := Gdk3.gdk_window_get_cursor(@self);
end;


function TGdkWindow.get_decorations(decorations: PGdkWMDecoration): gboolean; cdecl;
begin
  Result := Gdk3.gdk_window_get_decorations(@self, decorations);
end;

function TGdkWindow.get_device_cursor(device: PGdkDevice): PGdkCursor; cdecl;
begin
  Result := Gdk3.gdk_window_get_device_cursor(@self, device);
end;

function TGdkWindow.get_device_events(device: PGdkDevice): TGdkEventMask; cdecl;
begin
  Result := Gdk3.gdk_window_get_device_events(@self, device);
end;

function TGdkWindow.get_device_position(device: PGdkDevice; x: Pgint; y: Pgint; mask: PGdkModifierType): PGdkWindow; cdecl;
begin
  Result := Gdk3.gdk_window_get_device_position(@self, device, x, y, mask);
end;

function TGdkWindow.get_display: PGdkDisplay; cdecl;
begin
  Result := Gdk3.gdk_window_get_display(@self);
end;

function TGdkWindow.get_drag_protocol(target: PPGdkWindow): TGdkDragProtocol; cdecl;
begin
  Result := Gdk3.gdk_window_get_drag_protocol(@self, target);
end;

function TGdkWindow.get_effective_parent: PGdkWindow; cdecl;
begin
  Result := Gdk3.gdk_window_get_effective_parent(@self);
end;

function TGdkWindow.get_effective_toplevel: PGdkWindow; cdecl;
begin
  Result := Gdk3.gdk_window_get_effective_toplevel(@self);
end;

function TGdkWindow.get_events: TGdkEventMask; cdecl;
begin
  Result := Gdk3.gdk_window_get_events(@self);
end;

function TGdkWindow.get_focus_on_map: gboolean; cdecl;
begin
  Result := Gdk3.gdk_window_get_focus_on_map(@self);
end;

procedure TGdkWindow.get_frame_extents(rect: PGdkRectangle); cdecl;
begin
  Gdk3.gdk_window_get_frame_extents(@self, rect);
end;

procedure TGdkWindow.get_geometry(x: Pgint; y: Pgint; width: Pgint; height: Pgint); cdecl;
begin
  Gdk3.gdk_window_get_geometry(@self, x, y, width, height);
end;

function TGdkWindow.get_group: PGdkWindow; cdecl;
begin
  Result := Gdk3.gdk_window_get_group(@self);
end;

function TGdkWindow.get_height: gint; cdecl;
begin
  Result := Gdk3.gdk_window_get_height(@self);
end;

function TGdkWindow.get_modal_hint: gboolean; cdecl;
begin
  Result := Gdk3.gdk_window_get_modal_hint(@self);
end;

function TGdkWindow.get_origin(x: Pgint; y: Pgint): gint; cdecl;
begin
  Result := Gdk3.gdk_window_get_origin(@self, x, y);
end;

function TGdkWindow.get_parent: PGdkWindow; cdecl;
begin
  Result := Gdk3.gdk_window_get_parent(@self);
end;

procedure TGdkWindow.get_position(x: Pgint; y: Pgint); cdecl;
begin
  Gdk3.gdk_window_get_position(@self, x, y);
end;

procedure TGdkWindow.get_root_coords(x: gint; y: gint; root_x: Pgint; root_y: Pgint); cdecl;
begin
  Gdk3.gdk_window_get_root_coords(@self, x, y, root_x, root_y);
end;

procedure TGdkWindow.get_root_origin(x: Pgint; y: Pgint); cdecl;
begin
  Gdk3.gdk_window_get_root_origin(@self, x, y);
end;

function TGdkWindow.get_screen: PGdkScreen; cdecl;
begin
  Result := Gdk3.gdk_window_get_screen(@self);
end;

function TGdkWindow.get_source_events(source: TGdkInputSource): TGdkEventMask; cdecl;
begin
  Result := Gdk3.gdk_window_get_source_events(@self, source);
end;


function TGdkWindow.get_state: TGdkWindowState; cdecl;
begin
  Result := Gdk3.gdk_window_get_state(@self);
end;

function TGdkWindow.get_support_multidevice: gboolean; cdecl;
begin
  Result := Gdk3.gdk_window_get_support_multidevice(@self);
end;

function TGdkWindow.get_toplevel: PGdkWindow; cdecl;
begin
  Result := Gdk3.gdk_window_get_toplevel(@self);
end;

function TGdkWindow.get_type_hint: TGdkWindowTypeHint; cdecl;
begin
  Result := Gdk3.gdk_window_get_type_hint(@self);
end;

function TGdkWindow.get_update_area: Pcairo_region_t; cdecl;
begin
  Result := Gdk3.gdk_window_get_update_area(@self);
end;

procedure TGdkWindow.get_user_data(data: Pgpointer); cdecl;
begin
  Gdk3.gdk_window_get_user_data(@self, data);
end;

function TGdkWindow.get_visible_region: Pcairo_region_t; cdecl;
begin
  Result := Gdk3.gdk_window_get_visible_region(@self);
end;

function TGdkWindow.get_visual: PGdkVisual; cdecl;
begin
  Result := Gdk3.gdk_window_get_visual(@self);
end;

function TGdkWindow.get_width: gint; cdecl;
begin
  Result := Gdk3.gdk_window_get_width(@self);
end;

function TGdkWindow.get_window_type: TGdkWindowType; cdecl;
begin
  Result := Gdk3.gdk_window_get_window_type(@self);
end;

function TGdkWindow.has_native: gboolean; cdecl;
begin
  Result := Gdk3.gdk_window_has_native(@self);
end;

procedure TGdkWindow.hide; cdecl;
begin
  Gdk3.gdk_window_hide(@self);
end;

procedure TGdkWindow.iconify; cdecl;
begin
  Gdk3.gdk_window_iconify(@self);
end;

procedure TGdkWindow.input_shape_combine_region(shape_region: Pcairo_region_t; offset_x: gint; offset_y: gint); cdecl;
begin
  Gdk3.gdk_window_input_shape_combine_region(@self, shape_region, offset_x, offset_y);
end;

procedure TGdkWindow.invalidate_maybe_recurse(region: Pcairo_region_t; child_func: TGdkWindowChildFunc; user_data: gpointer); cdecl;
begin
  Gdk3.gdk_window_invalidate_maybe_recurse(@self, region, child_func, user_data);
end;

procedure TGdkWindow.invalidate_rect(rect: PGdkRectangle; invalidate_children: gboolean); cdecl;
begin
  Gdk3.gdk_window_invalidate_rect(@self, rect, invalidate_children);
end;

procedure TGdkWindow.invalidate_region(region: Pcairo_region_t; invalidate_children: gboolean); cdecl;
begin
  Gdk3.gdk_window_invalidate_region(@self, region, invalidate_children);
end;

function TGdkWindow.is_destroyed: gboolean; cdecl;
begin
  Result := Gdk3.gdk_window_is_destroyed(@self);
end;

function TGdkWindow.is_input_only: gboolean; cdecl;
begin
  Result := Gdk3.gdk_window_is_input_only(@self);
end;

function TGdkWindow.is_shaped: gboolean; cdecl;
begin
  Result := Gdk3.gdk_window_is_shaped(@self);
end;

function TGdkWindow.is_viewable: gboolean; cdecl;
begin
  Result := Gdk3.gdk_window_is_viewable(@self);
end;

function TGdkWindow.is_visible: gboolean; cdecl;
begin
  Result := Gdk3.gdk_window_is_visible(@self);
end;

procedure TGdkWindow.lower; cdecl;
begin
  Gdk3.gdk_window_lower(@self);
end;

procedure TGdkWindow.maximize; cdecl;
begin
  Gdk3.gdk_window_maximize(@self);
end;

procedure TGdkWindow.merge_child_input_shapes; cdecl;
begin
  Gdk3.gdk_window_merge_child_input_shapes(@self);
end;

procedure TGdkWindow.merge_child_shapes; cdecl;
begin
  Gdk3.gdk_window_merge_child_shapes(@self);
end;

procedure TGdkWindow.move(x: gint; y: gint); cdecl;
begin
  Gdk3.gdk_window_move(@self, x, y);
end;

procedure TGdkWindow.move_region(region: Pcairo_region_t; dx: gint; dy: gint); cdecl;
begin
  Gdk3.gdk_window_move_region(@self, region, dx, dy);
end;

procedure TGdkWindow.move_resize(x: gint; y: gint; width: gint; height: gint); cdecl;
begin
  Gdk3.gdk_window_move_resize(@self, x, y, width, height);
end;

function TGdkWindow.peek_children: PGList; cdecl;
begin
  Result := Gdk3.gdk_window_peek_children(@self);
end;

procedure TGdkWindow.process_updates(update_children: gboolean); cdecl;
begin
  Gdk3.gdk_window_process_updates(@self, update_children);
end;

procedure TGdkWindow.raise_; cdecl;
begin
  Gdk3.gdk_window_raise(@self);
end;

procedure TGdkWindow.register_dnd; cdecl;
begin
  Gdk3.gdk_window_register_dnd(@self);
end;

procedure TGdkWindow.remove_filter(function_: TGdkFilterFunc; data: gpointer); cdecl;
begin
  Gdk3.gdk_window_remove_filter(@self, function_, data);
end;

procedure TGdkWindow.reparent(new_parent: PGdkWindow; x: gint; y: gint); cdecl;
begin
  Gdk3.gdk_window_reparent(@self, new_parent, x, y);
end;

procedure TGdkWindow.resize(width: gint; height: gint); cdecl;
begin
  Gdk3.gdk_window_resize(@self, width, height);
end;

procedure TGdkWindow.restack(sibling: PGdkWindow; above: gboolean); cdecl;
begin
  Gdk3.gdk_window_restack(@self, sibling, above);
end;

procedure TGdkWindow.scroll(dx: gint; dy: gint); cdecl;
begin
  Gdk3.gdk_window_scroll(@self, dx, dy);
end;

procedure TGdkWindow.set_accept_focus(accept_focus: gboolean); cdecl;
begin
  Gdk3.gdk_window_set_accept_focus(@self, accept_focus);
end;

procedure TGdkWindow.set_background(color: PGdkColor); cdecl;
begin
  Gdk3.gdk_window_set_background(@self, color);
end;

procedure TGdkWindow.set_background_pattern(pattern: Pcairo_pattern_t); cdecl;
begin
  Gdk3.gdk_window_set_background_pattern(@self, pattern);
end;

procedure TGdkWindow.set_background_rgba(rgba: PGdkRGBA); cdecl;
begin
  Gdk3.gdk_window_set_background_rgba(@self, rgba);
end;

procedure TGdkWindow.set_child_input_shapes; cdecl;
begin
  Gdk3.gdk_window_set_child_input_shapes(@self);
end;

procedure TGdkWindow.set_child_shapes; cdecl;
begin
  Gdk3.gdk_window_set_child_shapes(@self);
end;

procedure TGdkWindow.set_composited(composited: gboolean); cdecl;
begin
  Gdk3.gdk_window_set_composited(@self, composited);
end;

procedure TGdkWindow.set_cursor(cursor: PGdkCursor); cdecl;
begin
  Gdk3.gdk_window_set_cursor(@self, cursor);
end;

procedure TGdkWindow.set_decorations(decorations: TGdkWMDecoration); cdecl;
begin
  Gdk3.gdk_window_set_decorations(@self, decorations);
end;

procedure TGdkWindow.set_device_cursor(device: PGdkDevice; cursor: PGdkCursor); cdecl;
begin
  Gdk3.gdk_window_set_device_cursor(@self, device, cursor);
end;

procedure TGdkWindow.set_device_events(device: PGdkDevice; event_mask: TGdkEventMask); cdecl;
begin
  Gdk3.gdk_window_set_device_events(@self, device, event_mask);
end;

procedure TGdkWindow.set_events(event_mask: TGdkEventMask); cdecl;
begin
  Gdk3.gdk_window_set_events(@self, event_mask);
end;

procedure TGdkWindow.set_focus_on_map(focus_on_map: gboolean); cdecl;
begin
  Gdk3.gdk_window_set_focus_on_map(@self, focus_on_map);
end;


procedure TGdkWindow.set_functions(functions: TGdkWMFunction); cdecl;
begin
  Gdk3.gdk_window_set_functions(@self, functions);
end;


procedure TGdkWindow.set_geometry_hints(geometry: PGdkGeometry; geom_mask: TGdkWindowHints); cdecl;
begin
  Gdk3.gdk_window_set_geometry_hints(@self, geometry, geom_mask);
end;

procedure TGdkWindow.set_group(leader: PGdkWindow); cdecl;
begin
  Gdk3.gdk_window_set_group(@self, leader);
end;

procedure TGdkWindow.set_icon_list(pixbufs: PGList); cdecl;
begin
  Gdk3.gdk_window_set_icon_list(@self, pixbufs);
end;

procedure TGdkWindow.set_icon_name(name: Pgchar); cdecl;
begin
  Gdk3.gdk_window_set_icon_name(@self, name);
end;

procedure TGdkWindow.set_keep_above(setting: gboolean); cdecl;
begin
  Gdk3.gdk_window_set_keep_above(@self, setting);
end;

procedure TGdkWindow.set_keep_below(setting: gboolean); cdecl;
begin
  Gdk3.gdk_window_set_keep_below(@self, setting);
end;

procedure TGdkWindow.set_modal_hint(modal: gboolean); cdecl;
begin
  Gdk3.gdk_window_set_modal_hint(@self, modal);
end;

procedure TGdkWindow.set_opacity(opacity: gdouble); cdecl;
begin
  Gdk3.gdk_window_set_opacity(@self, opacity);
end;

procedure TGdkWindow.set_override_redirect(override_redirect: gboolean); cdecl;
begin
  Gdk3.gdk_window_set_override_redirect(@self, override_redirect);
end;

procedure TGdkWindow.set_role(role: Pgchar); cdecl;
begin
  Gdk3.gdk_window_set_role(@self, role);
end;

procedure TGdkWindow.set_skip_pager_hint(skips_pager: gboolean); cdecl;
begin
  Gdk3.gdk_window_set_skip_pager_hint(@self, skips_pager);
end;

procedure TGdkWindow.set_skip_taskbar_hint(skips_taskbar: gboolean); cdecl;
begin
  Gdk3.gdk_window_set_skip_taskbar_hint(@self, skips_taskbar);
end;

procedure TGdkWindow.set_source_events(source: TGdkInputSource; event_mask: TGdkEventMask); cdecl;
begin
  Gdk3.gdk_window_set_source_events(@self, source, event_mask);
end;

procedure TGdkWindow.set_startup_id(startup_id: Pgchar); cdecl;
begin
  Gdk3.gdk_window_set_startup_id(@self, startup_id);
end;

function TGdkWindow.set_static_gravities(use_static: gboolean): gboolean; cdecl;
begin
  Result := Gdk3.gdk_window_set_static_gravities(@self, use_static);
end;

procedure TGdkWindow.set_support_multidevice(support_multidevice: gboolean); cdecl;
begin
  Gdk3.gdk_window_set_support_multidevice(@self, support_multidevice);
end;

procedure TGdkWindow.set_title(title: Pgchar); cdecl;
begin
  Gdk3.gdk_window_set_title(@self, title);
end;

procedure TGdkWindow.set_transient_for(parent: PGdkWindow); cdecl;
begin
  Gdk3.gdk_window_set_transient_for(@self, parent);
end;

procedure TGdkWindow.set_type_hint(hint: TGdkWindowTypeHint); cdecl;
begin
  Gdk3.gdk_window_set_type_hint(@self, hint);
end;

procedure TGdkWindow.set_urgency_hint(urgent: gboolean); cdecl;
begin
  Gdk3.gdk_window_set_urgency_hint(@self, urgent);
end;

procedure TGdkWindow.set_user_data(user_data: TGObject); cdecl;
begin
  Gdk3.gdk_window_set_user_data(@self, user_data);
end;

procedure TGdkWindow.shape_combine_region(shape_region: Pcairo_region_t; offset_x: gint; offset_y: gint); cdecl;
begin
  Gdk3.gdk_window_shape_combine_region(@self, shape_region, offset_x, offset_y);
end;

procedure TGdkWindow.show; cdecl;
begin
  Gdk3.gdk_window_show(@self);
end;

procedure TGdkWindow.show_unraised; cdecl;
begin
  Gdk3.gdk_window_show_unraised(@self);
end;

procedure TGdkWindow.stick; cdecl;
begin
  Gdk3.gdk_window_stick(@self);
end;

procedure TGdkWindow.thaw_toplevel_updates_libgtk_only; cdecl;
begin
  Gdk3.gdk_window_thaw_toplevel_updates_libgtk_only(@self);
end;

procedure TGdkWindow.thaw_updates; cdecl;
begin
  Gdk3.gdk_window_thaw_updates(@self);
end;

procedure TGdkWindow.unfullscreen; cdecl;
begin
  Gdk3.gdk_window_unfullscreen(@self);
end;

procedure TGdkWindow.unmaximize; cdecl;
begin
  Gdk3.gdk_window_unmaximize(@self);
end;

procedure TGdkWindow.unstick; cdecl;
begin
  Gdk3.gdk_window_unstick(@self);
end;

procedure TGdkWindow.withdraw; cdecl;
begin
  Gdk3.gdk_window_withdraw(@self);
end;

function TGdkDeviceManager.get_client_pointer: PGdkDevice; cdecl;
begin
  Result := Gdk3.gdk_device_manager_get_client_pointer(@self);
end;

function TGdkDeviceManager.get_display: PGdkDisplay; cdecl;
begin
  Result := Gdk3.gdk_device_manager_get_display(@self);
end;

function TGdkDeviceManager.list_devices(type_: TGdkDeviceType): PGList; cdecl;
begin
  Result := Gdk3.gdk_device_manager_list_devices(@self, type_);
end;

function TGdkDisplayManager.get: PGdkDisplayManager; cdecl;
begin
  Result := Gdk3.gdk_display_manager_get();
end;

function TGdkDisplayManager.get_default_display: PGdkDisplay; cdecl;
begin
  Result := Gdk3.gdk_display_manager_get_default_display(@self);
end;

function TGdkDisplayManager.list_displays: PGSList; cdecl;
begin
  Result := Gdk3.gdk_display_manager_list_displays(@self);
end;

function TGdkDisplayManager.open_display(name: Pgchar): PGdkDisplay; cdecl;
begin
  Result := Gdk3.gdk_display_manager_open_display(@self, name);
end;

procedure TGdkDisplayManager.set_default_display(display: PGdkDisplay); cdecl;
begin
  Gdk3.gdk_display_manager_set_default_display(@self, display);
end;


function TGdkDragContext.get_actions: TGdkDragAction; cdecl;
begin
  Result := Gdk3.gdk_drag_context_get_actions(@self);
end;

function TGdkDragContext.get_dest_window: PGdkWindow; cdecl;
begin
  Result := Gdk3.gdk_drag_context_get_dest_window(@self);
end;

function TGdkDragContext.get_device: PGdkDevice; cdecl;
begin
  Result := Gdk3.gdk_drag_context_get_device(@self);
end;

function TGdkDragContext.get_protocol: TGdkDragProtocol; cdecl;
begin
  Result := Gdk3.gdk_drag_context_get_protocol(@self);
end;

function TGdkDragContext.get_selected_action: TGdkDragAction; cdecl;
begin
  Result := Gdk3.gdk_drag_context_get_selected_action(@self);
end;

function TGdkDragContext.get_source_window: PGdkWindow; cdecl;
begin
  Result := Gdk3.gdk_drag_context_get_source_window(@self);
end;

function TGdkDragContext.get_suggested_action: TGdkDragAction; cdecl;
begin
  Result := Gdk3.gdk_drag_context_get_suggested_action(@self);
end;

function TGdkDragContext.list_targets: PGList; cdecl;
begin
  Result := Gdk3.gdk_drag_context_list_targets(@self);
end;

procedure TGdkDragContext.set_device(device: PGdkDevice); cdecl;
begin
  Gdk3.gdk_drag_context_set_device(@self, device);
end;

function TGdkKeymap.get_default: PGdkKeymap; cdecl;
begin
  Result := Gdk3.gdk_keymap_get_default();
end;

function TGdkKeymap.get_for_display(display: PGdkDisplay): PGdkKeymap; cdecl;
begin
  Result := Gdk3.gdk_keymap_get_for_display(display);
end;

procedure TGdkKeymap.add_virtual_modifiers(state: PGdkModifierType); cdecl;
begin
  Gdk3.gdk_keymap_add_virtual_modifiers(@self, state);
end;

function TGdkKeymap.get_caps_lock_state: gboolean; cdecl;
begin
  Result := Gdk3.gdk_keymap_get_caps_lock_state(@self);
end;

function TGdkKeymap.get_direction: TPangoDirection; cdecl;
begin
  Result := Gdk3.gdk_keymap_get_direction(@self);
end;

function TGdkKeymap.get_entries_for_keycode(hardware_keycode: guint; keys: PPGdkKeymapKey; keyvals: PPguint; n_entries: Pgint): gboolean; cdecl;
begin
  Result := Gdk3.gdk_keymap_get_entries_for_keycode(@self, hardware_keycode, keys, keyvals, n_entries);
end;

function TGdkKeymap.get_entries_for_keyval(keyval: guint; keys: PPGdkKeymapKey; n_keys: Pgint): gboolean; cdecl;
begin
  Result := Gdk3.gdk_keymap_get_entries_for_keyval(@self, keyval, keys, n_keys);
end;

function TGdkKeymap.get_num_lock_state: gboolean; cdecl;
begin
  Result := Gdk3.gdk_keymap_get_num_lock_state(@self);
end;

function TGdkKeymap.have_bidi_layouts: gboolean; cdecl;
begin
  Result := Gdk3.gdk_keymap_have_bidi_layouts(@self);
end;

function TGdkKeymap.lookup_key(key: PGdkKeymapKey): guint; cdecl;
begin
  Result := Gdk3.gdk_keymap_lookup_key(@self, key);
end;

function TGdkKeymap.map_virtual_modifiers(state: PGdkModifierType): gboolean; cdecl;
begin
  Result := Gdk3.gdk_keymap_map_virtual_modifiers(@self, state);
end;

function TGdkKeymap.translate_keyboard_state(hardware_keycode: guint; state: TGdkModifierType; group: gint; keyval: Pguint; effective_group: Pgint; level: Pgint; consumed_modifiers: PGdkModifierType): gboolean; cdecl;
begin
  Result := Gdk3.gdk_keymap_translate_keyboard_state(@self, hardware_keycode, state, group, keyval, effective_group, level, consumed_modifiers);
end;

function TGdkRGBA.copy: PGdkRGBA; cdecl;
begin
  Result := Gdk3.gdk_rgba_copy(@self);
end;

function TGdkRGBA.equal(p2: TGdkRGBA): gboolean; cdecl;
begin
  Result := Gdk3.gdk_rgba_equal(@self, p2);
end;

procedure TGdkRGBA.free; cdecl;
begin
  Gdk3.gdk_rgba_free(@self);
end;

function TGdkRGBA.hash: guint; cdecl;
begin
  Result := Gdk3.gdk_rgba_hash(@self);
end;

function TGdkRGBA.parse(spec: Pgchar): gboolean; cdecl;
begin
  Result := Gdk3.gdk_rgba_parse(@self, spec);
end;

function TGdkRGBA.to_string: Pgchar; cdecl;
begin
  Result := Gdk3.gdk_rgba_to_string(@self);
end;

function TGdkVisual.get_best: PGdkVisual; cdecl;
begin
  Result := Gdk3.gdk_visual_get_best();
end;

function TGdkVisual.get_best_depth: gint; cdecl;
begin
  Result := Gdk3.gdk_visual_get_best_depth();
end;

function TGdkVisual.get_best_type: TGdkVisualType; cdecl;
begin
  Result := Gdk3.gdk_visual_get_best_type();
end;

function TGdkVisual.get_best_with_both(depth: gint; visual_type: TGdkVisualType): PGdkVisual; cdecl;
begin
  Result := Gdk3.gdk_visual_get_best_with_both(depth, visual_type);
end;

function TGdkVisual.get_best_with_depth(depth: gint): PGdkVisual; cdecl;
begin
  Result := Gdk3.gdk_visual_get_best_with_depth(depth);
end;

function TGdkVisual.get_best_with_type(visual_type: TGdkVisualType): PGdkVisual; cdecl;
begin
  Result := Gdk3.gdk_visual_get_best_with_type(visual_type);
end;

function TGdkVisual.get_system: PGdkVisual; cdecl;
begin
  Result := Gdk3.gdk_visual_get_system();
end;

function TGdkVisual.get_bits_per_rgb: gint; cdecl;
begin
  Result := Gdk3.gdk_visual_get_bits_per_rgb(@self);
end;

procedure TGdkVisual.get_blue_pixel_details(mask: Pguint32; shift: Pgint; precision: Pgint); cdecl;
begin
  Gdk3.gdk_visual_get_blue_pixel_details(@self, mask, shift, precision);
end;

function TGdkVisual.get_byte_order: TGdkByteOrder; cdecl;
begin
  Result := Gdk3.gdk_visual_get_byte_order(@self);
end;

function TGdkVisual.get_colormap_size: gint; cdecl;
begin
  Result := Gdk3.gdk_visual_get_colormap_size(@self);
end;

function TGdkVisual.get_depth: gint; cdecl;
begin
  Result := Gdk3.gdk_visual_get_depth(@self);
end;

procedure TGdkVisual.get_green_pixel_details(mask: Pguint32; shift: Pgint; precision: Pgint); cdecl;
begin
  Gdk3.gdk_visual_get_green_pixel_details(@self, mask, shift, precision);
end;

procedure TGdkVisual.get_red_pixel_details(mask: Pguint32; shift: Pgint; precision: Pgint); cdecl;
begin
  Gdk3.gdk_visual_get_red_pixel_details(@self, mask, shift, precision);
end;

function TGdkVisual.get_screen: PGdkScreen; cdecl;
begin
  Result := Gdk3.gdk_visual_get_screen(@self);
end;

function TGdkVisual.get_visual_type: TGdkVisualType; cdecl;
begin
  Result := Gdk3.gdk_visual_get_visual_type(@self);
end;


end.