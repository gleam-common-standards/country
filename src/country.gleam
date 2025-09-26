import gleam/int
import gleam/string

pub type CountryError {
  IncorrectAlpha2Code
  IncorrectAlpha3Code
  IncorrectNumericCode
}

/// standard ISO3166_1
/// source https://www.iso.org/obp/ui/#search/code/
pub type Country {
  Afghanistan
  AlandIslands
  Albania
  Algeria
  AmericanSamoa
  Andorra
  Angola
  Anguilla
  Antarctica
  AntiguaAndBarbuda
  Argentina
  Armenia
  Aruba
  Australia
  Austria
  Azerbaijan
  Bahamas
  Bahrain
  Bangladesh
  Barbados
  Belarus
  Belgium
  Belize
  Benin
  Bermuda
  Bhutan
  Bolivia
  BonaireSintEustatiusAndSaba
  BosniaAndHerzegovina
  Botswana
  BouvetIsland
  Brazil
  BritishIndianOceanTerritory
  BruneiDarussalam
  Bulgaria
  BurkinaFaso
  Burundi
  CaboVerde
  Cambodia
  Cameroon
  Canada
  CaymanIslands
  CentralAfricanRepublic
  Chad
  Chile
  China
  ChristmasIsland
  CocosIslands
  Colombia
  Comoros
  Congo
  CongoDemocraticRepublic
  CookIslands
  CostaRica
  CoteDIvoire
  Croatia
  Cuba
  Curacao
  Cyprus
  Czechia
  Denmark
  Djibouti
  Dominica
  DominicanRepublic
  Ecuador
  Egypt
  ElSalvador
  EquatorialGuinea
  Eritrea
  Estonia
  Eswatini
  Ethiopia
  FalklandIslands
  FaroeIslands
  Fiji
  Finland
  France
  FrenchGuiana
  FrenchPolynesia
  FrenchSouthernTerritories
  Gabon
  Gambia
  Georgia
  Germany
  Ghana
  Gibraltar
  Greece
  Greenland
  Grenada
  Guadeloupe
  Guam
  Guatemala
  Guernsey
  Guinea
  GuineaBissau
  Guyana
  Haiti
  HeardIslandAndMcDonaldIslands
  HolySee
  Honduras
  HongKong
  Hungary
  Iceland
  India
  Indonesia
  Iran
  Iraq
  Ireland
  IsleOfMan
  Israel
  Italy
  Jamaica
  Japan
  Jersey
  Jordan
  Kazakhstan
  Kenya
  Kiribati
  KoreaDemocraticPeoplesRepublic
  KoreaRepublic
  Kuwait
  Kyrgyzstan
  LaoPeoplesDemocraticRepublic
  Latvia
  Lebanon
  Lesotho
  Liberia
  Libya
  Liechtenstein
  Lithuania
  Luxembourg
  Macao
  Madagascar
  Malawi
  Malaysia
  Maldives
  Mali
  Malta
  MarshallIslands
  Martinique
  Mauritania
  Mauritius
  Mayotte
  Mexico
  Micronesia
  Moldova
  Monaco
  Mongolia
  Montenegro
  Montserrat
  Morocco
  Mozambique
  Myanmar
  Namibia
  Nauru
  Nepal
  Netherlands
  NewCaledonia
  NewZealand
  Nicaragua
  Niger
  Nigeria
  Niue
  NorfolkIsland
  NorthMacedonia
  NorthernMarianaIslands
  Norway
  Oman
  Pakistan
  Palau
  Palestine
  Panama
  PapuaNewGuinea
  Paraguay
  Peru
  Philippines
  Pitcairn
  Poland
  Portugal
  PuertoRico
  Qatar
  Reunion
  Romania
  RussianFederation
  Rwanda
  SaintBarthelemy
  SaintHelenaAscensionTristanDaCunha
  SaintKittsAndNevis
  SaintLucia
  SaintMartinFrenchPart
  SaintPierreAndMiquelon
  SaintVincentAndTheGrenadines
  Samoa
  SanMarino
  SaoTomeAndPrincipe
  SaudiArabia
  Senegal
  Serbia
  Seychelles
  SierraLeone
  Singapore
  SintMaartenDutchPart
  Slovakia
  Slovenia
  SolomonIslands
  Somalia
  SouthAfrica
  SouthGeorgiaSouthSandwichIslands
  SouthSudan
  Spain
  SriLanka
  Sudan
  Suriname
  SvalbardJanMayen
  Sweden
  Switzerland
  SyrianArabRepublic
  TaiwanProvinceOfChina
  Tajikistan
  Tanzania
  Thailand
  TimorLeste
  Togo
  Tokelau
  Tonga
  TrinidadAndTobago
  Tunisia
  Turkey
  Turkmenistan
  TurksAndCaicosIslands
  Tuvalu
  Uganda
  Ukraine
  UnitedArabEmirates
  UnitedKingdom
  UnitedStatesOfAmerica
  UnitedStatesOutlyingIslands
  Uruguay
  Uzbekistan
  Vanuatu
  Venezuela
  VietNam
  VirginIslandsBritish
  VirginIslandsUS
  WallisAndFutuna
  WesternSahara
  Yemen
  Zambia
  Zimbabwe
}

pub const all: List(Country) = [
  Afghanistan,
  AlandIslands,
  Albania,
  Algeria,
  AmericanSamoa,
  Andorra,
  Angola,
  Anguilla,
  Antarctica,
  AntiguaAndBarbuda,
  Argentina,
  Armenia,
  Aruba,
  Australia,
  Austria,
  Azerbaijan,
  Bahamas,
  Bahrain,
  Bangladesh,
  Barbados,
  Belarus,
  Belgium,
  Belize,
  Benin,
  Bermuda,
  Bhutan,
  Bolivia,
  BonaireSintEustatiusAndSaba,
  BosniaAndHerzegovina,
  Botswana,
  BouvetIsland,
  Brazil,
  BritishIndianOceanTerritory,
  BruneiDarussalam,
  Bulgaria,
  BurkinaFaso,
  Burundi,
  CaboVerde,
  Cambodia,
  Cameroon,
  Canada,
  CaymanIslands,
  CentralAfricanRepublic,
  Chad,
  Chile,
  China,
  ChristmasIsland,
  CocosIslands,
  Colombia,
  Comoros,
  Congo,
  CongoDemocraticRepublic,
  CookIslands,
  CostaRica,
  CoteDIvoire,
  Croatia,
  Cuba,
  Curacao,
  Cyprus,
  Czechia,
  Denmark,
  Djibouti,
  Dominica,
  DominicanRepublic,
  Ecuador,
  Egypt,
  ElSalvador,
  EquatorialGuinea,
  Eritrea,
  Estonia,
  Eswatini,
  Ethiopia,
  FalklandIslands,
  FaroeIslands,
  Fiji,
  Finland,
  France,
  FrenchGuiana,
  FrenchPolynesia,
  FrenchSouthernTerritories,
  Gabon,
  Gambia,
  Georgia,
  Germany,
  Ghana,
  Gibraltar,
  Greece,
  Greenland,
  Grenada,
  Guadeloupe,
  Guam,
  Guatemala,
  Guernsey,
  Guinea,
  GuineaBissau,
  Guyana,
  Haiti,
  HeardIslandAndMcDonaldIslands,
  HolySee,
  Honduras,
  HongKong,
  Hungary,
  Iceland,
  India,
  Indonesia,
  Iran,
  Iraq,
  Ireland,
  IsleOfMan,
  Israel,
  Italy,
  Jamaica,
  Japan,
  Jersey,
  Jordan,
  Kazakhstan,
  Kenya,
  Kiribati,
  KoreaDemocraticPeoplesRepublic,
  KoreaRepublic,
  Kuwait,
  Kyrgyzstan,
  LaoPeoplesDemocraticRepublic,
  Latvia,
  Lebanon,
  Lesotho,
  Liberia,
  Libya,
  Liechtenstein,
  Lithuania,
  Luxembourg,
  Macao,
  Madagascar,
  Malawi,
  Malaysia,
  Maldives,
  Mali,
  Malta,
  MarshallIslands,
  Martinique,
  Mauritania,
  Mauritius,
  Mayotte,
  Mexico,
  Micronesia,
  Moldova,
  Monaco,
  Mongolia,
  Montenegro,
  Montserrat,
  Morocco,
  Mozambique,
  Myanmar,
  Namibia,
  Nauru,
  Nepal,
  Netherlands,
  NewCaledonia,
  NewZealand,
  Nicaragua,
  Niger,
  Nigeria,
  Niue,
  NorfolkIsland,
  NorthMacedonia,
  NorthernMarianaIslands,
  Norway,
  Oman,
  Pakistan,
  Palau,
  Palestine,
  Panama,
  PapuaNewGuinea,
  Paraguay,
  Peru,
  Philippines,
  Pitcairn,
  Poland,
  Portugal,
  PuertoRico,
  Qatar,
  Reunion,
  Romania,
  RussianFederation,
  Rwanda,
  SaintBarthelemy,
  SaintHelenaAscensionTristanDaCunha,
  SaintKittsAndNevis,
  SaintLucia,
  SaintMartinFrenchPart,
  SaintPierreAndMiquelon,
  SaintVincentAndTheGrenadines,
  Samoa,
  SanMarino,
  SaoTomeAndPrincipe,
  SaudiArabia,
  Senegal,
  Serbia,
  Seychelles,
  SierraLeone,
  Singapore,
  SintMaartenDutchPart,
  Slovakia,
  Slovenia,
  SolomonIslands,
  Somalia,
  SouthAfrica,
  SouthGeorgiaSouthSandwichIslands,
  SouthSudan,
  Spain,
  SriLanka,
  Sudan,
  Suriname,
  SvalbardJanMayen,
  Sweden,
  Switzerland,
  SyrianArabRepublic,
  TaiwanProvinceOfChina,
  Tajikistan,
  Tanzania,
  Thailand,
  TimorLeste,
  Togo,
  Tokelau,
  Tonga,
  TrinidadAndTobago,
  Tunisia,
  Turkey,
  Turkmenistan,
  TurksAndCaicosIslands,
  Tuvalu,
  Uganda,
  Ukraine,
  UnitedArabEmirates,
  UnitedKingdom,
  UnitedStatesOfAmerica,
  UnitedStatesOutlyingIslands,
  Uruguay,
  Uzbekistan,
  Vanuatu,
  Venezuela,
  VietNam,
  VirginIslandsBritish,
  VirginIslandsUS,
  WallisAndFutuna,
  WesternSahara,
  Yemen,
  Zambia,
  Zimbabwe,
]

/// standard ISO3166_1
/// source https://www.iso.org/obp/ui/#search/code/
pub type Alpha2Code {
  Af
  Ax
  Al
  Dz
  As
  Ad
  Ao
  Ai
  Aq
  Ag
  Ar
  Am
  Aw
  Au
  At
  Az
  Bs
  Bh
  Bd
  Bb
  By
  Be
  Bz
  Bj
  Bm
  Bt
  Bo
  Bq
  Ba
  Bw
  Bv
  Br
  Io
  Bn
  Bg
  Bf
  Bi
  Cv
  Kh
  Cm
  Ca
  Ky
  Cf
  Td
  Cl
  Cn
  Cx
  Cc
  Co
  Km
  Cg
  Cd
  Ck
  Cr
  Ci
  Hr
  Cu
  Cw
  Cy
  Cz
  Dk
  Dj
  Dm
  Do
  Ec
  Eg
  Sv
  Gq
  Er
  Ee
  Sz
  Et
  Fk
  Fo
  Fj
  Fi
  Fr
  Gf
  Pf
  Tf
  Ga
  Gm
  Ge
  De
  Gh
  Gi
  Gr
  Gl
  Gd
  Gp
  Gu
  Gt
  Gg
  Gn
  Gw
  Gy
  Ht
  Hm
  Va
  Hn
  Hk
  Hu
  Is
  In
  Id
  Ir
  Iq
  Ie
  Im
  Il
  It
  Jm
  Jp
  Je
  Jo
  Kz
  Ke
  Ki
  Kp
  Kr
  Kw
  Kg
  La
  Lv
  Lb
  Ls
  Lr
  Ly
  Li
  Lt
  Lu
  Mo
  Mg
  Mw
  My
  Mv
  Ml
  Mt
  Mh
  Mq
  Mr
  Mu
  Yt
  Mx
  Fm
  Md
  Mc
  Mn
  Me
  Ms
  Ma
  Mz
  Mm
  Na
  Nr
  Np
  Nl
  Nc
  Nz
  Ni
  Ne
  Ng
  Nu
  Nf
  Mk
  Mp
  No
  Om
  Pk
  Pw
  Ps
  Pa
  Pg
  Py
  Pe
  Ph
  Pn
  Pl
  Pt
  Pr
  Qa
  Re
  Ro
  Ru
  Rw
  Bl
  Sh
  Kn
  Lc
  Mf
  Pm
  Vc
  Ws
  Sm
  St
  Sa
  Sn
  Rs
  Sc
  Sl
  Sg
  Sx
  Sk
  Si
  Sb
  So
  Za
  Gs
  Ss
  Es
  Lk
  Sd
  Sr
  Sj
  Se
  Ch
  Sy
  Tw
  Tj
  Tz
  Th
  Tl
  Tg
  Tk
  To
  Tt
  Tn
  Tr
  Tm
  Tc
  Tv
  Ug
  Ua
  Ae
  Gb
  Um
  Us
  Uy
  Uz
  Vu
  Ve
  Vn
  Vg
  Vi
  Wf
  Eh
  Ye
  Zm
  Zw
}

/// standard ISO3166_1
/// source https://www.iso.org/obp/ui/#search/code/
pub type Alpha3Code {
  Afg
  Ala
  Alb
  Dza
  Asm
  And
  Ago
  Aia
  Ata
  Atg
  Arg
  Arm
  Abw
  Aus
  Aut
  Aze
  Bhs
  Bhr
  Bgd
  Brb
  Blr
  Bel
  Blz
  Ben
  Bmu
  Btn
  Bol
  Bes
  Bih
  Bwa
  Bvt
  Bra
  Iot
  Brn
  Bgr
  Bfa
  Bdi
  Cpv
  Khm
  Cmr
  Can
  Cym
  Caf
  Tcd
  Chl
  Chn
  Cxr
  Cck
  Col
  Com
  Cog
  Cod
  Cok
  Cri
  Civ
  Hrv
  Cub
  Cuw
  Cyp
  Cze
  Dnk
  Dji
  Dma
  Dom
  Ecu
  Egy
  Slv
  Gnq
  Eri
  Est
  Swz
  Eth
  Flk
  Fro
  Fji
  Fin
  Fra
  Guf
  Pyf
  Atf
  Gab
  Gmb
  Geo
  Deu
  Gha
  Gib
  Grc
  Grl
  Grd
  Glp
  Gum
  Gtm
  Ggy
  Gin
  Gnb
  Guy
  Hti
  Hmd
  Vat
  Hnd
  Hkg
  Hun
  Isl
  Ind
  Idn
  Irn
  Irq
  Irl
  Imn
  Isr
  Ita
  Jam
  Jpn
  Jey
  Jor
  Kaz
  Ken
  Kir
  Prk
  Kor
  Kwt
  Kgz
  Lao
  Lva
  Lbn
  Lso
  Lbr
  Lby
  Lie
  Ltu
  Lux
  Mac
  Mdg
  Mwi
  Mys
  Mdv
  Mli
  Mlt
  Mhl
  Mtq
  Mrt
  Mus
  Myt
  Mex
  Fsm
  Mda
  Mco
  Mng
  Mne
  Msr
  Mar
  Moz
  Mmr
  Nam
  Nru
  Npl
  Nld
  Ncl
  Nzl
  Nic
  Ner
  Nga
  Niu
  Nfk
  Mkd
  Mnp
  Nor
  Omn
  Pak
  Plw
  Pse
  Pan
  Png
  Pry
  Per
  Phl
  Pcn
  Pol
  Prt
  Pri
  Qat
  Reu
  Rou
  Rus
  Rwa
  Blm
  Shn
  Kna
  Lca
  Maf
  Spm
  Vct
  Wsm
  Smr
  Stp
  Sau
  Sen
  Srb
  Syc
  Sle
  Sgp
  Sxm
  Svk
  Svn
  Slb
  Som
  Zaf
  Sgs
  Ssd
  Esp
  Lka
  Sdn
  Sur
  Sjm
  Swe
  Che
  Syr
  Twn
  Tjk
  Tza
  Tha
  Tls
  Tgo
  Tkl
  Ton
  Tto
  Tun
  Tur
  Tkm
  Tca
  Tuv
  Uga
  Ukr
  Are
  Gbr
  Umi
  Usa
  Ury
  Uzb
  Vut
  Ven
  Vnm
  Vgb
  Vir
  Wlf
  Esh
  Yem
  Zmb
  Zwe
}

/// standard ISO3166_1
/// source https://www.iso.org/obp/ui/#search/code/
pub fn name(country c: Country) -> String {
  case c {
    Afghanistan -> "Afghanistan"
    AlandIslands -> "Åland Islands"
    Albania -> "Albania"
    Algeria -> "Algeria"
    AmericanSamoa -> "American Samoa"
    Andorra -> "Andorra"
    Angola -> "Angola"
    Anguilla -> "Anguilla"
    Antarctica -> "Antarctica"
    AntiguaAndBarbuda -> "Antigua and Barbuda"
    Argentina -> "Argentina"
    Armenia -> "Armenia"
    Aruba -> "Aruba"
    Australia -> "Australia"
    Austria -> "Austria"
    Azerbaijan -> "Azerbaijan"
    Bahamas -> "Bahamas (The)"
    Bahrain -> "Bahrain"
    Bangladesh -> "Bangladesh"
    Barbados -> "Barbados"
    Belarus -> "Belarus"
    Belgium -> "Belgium"
    Belize -> "Belize"
    Benin -> "Benin"
    Bermuda -> "Bermuda"
    Bhutan -> "Bhutan"
    Bolivia -> "Bolivia (Plurinational State of)"
    BonaireSintEustatiusAndSaba -> "Bonaire, Sint Eustatius and Saba"
    BosniaAndHerzegovina -> "Bosnia and Herzegovina"
    Botswana -> "Botswana"
    BouvetIsland -> "Bouvet Island"
    Brazil -> "Brazil"
    BritishIndianOceanTerritory -> "British Indian Ocean Territory (the)"
    BruneiDarussalam -> "Brunei Darussalam"
    Bulgaria -> "Bulgaria"
    BurkinaFaso -> "Burkina Faso"
    Burundi -> "Burundi"
    CaboVerde -> "Cabo Verde"
    Cambodia -> "Cambodia"
    Cameroon -> "Cameroon"
    Canada -> "Canada"
    CaymanIslands -> "Cayman Islands (the)"
    CentralAfricanRepublic -> "Central African Republic (the)"
    Chad -> "Chad"
    Chile -> "Chile"
    China -> "China"
    ChristmasIsland -> "Christmas Island"
    CocosIslands -> "Cocos (Keeling) Islands (the)"
    Colombia -> "Colombia"
    Comoros -> "Comoros (the)"
    Congo -> "Congo (the)"
    CongoDemocraticRepublic -> "Congo (the Democratic Republic of the)"
    CookIslands -> "Cook Islands (the)"
    CostaRica -> "Costa Rica"
    CoteDIvoire -> "Côte d'Ivoire"
    Croatia -> "Croatia"
    Cuba -> "Cuba"
    Curacao -> "Curaçao"
    Cyprus -> "Cyprus"
    Czechia -> "Czechia"
    Denmark -> "Denmark"
    Djibouti -> "Djibouti"
    Dominica -> "Dominica"
    DominicanRepublic -> "Dominican Republic (the)"
    Ecuador -> "Ecuador"
    Egypt -> "Egypt"
    ElSalvador -> "El Salvador"
    EquatorialGuinea -> "Equatorial Guinea"
    Eritrea -> "Eritrea"
    Estonia -> "Estonia"
    Eswatini -> "Eswatini"
    Ethiopia -> "Ethiopia"
    FalklandIslands -> "Falkland Islands (the) [Malvinas]"
    FaroeIslands -> "Faroe Islands (the)"
    Fiji -> "Fiji"
    Finland -> "Finland"
    France -> "France"
    FrenchGuiana -> "French Guiana"
    FrenchPolynesia -> "French Polynesia"
    FrenchSouthernTerritories -> "French Southern Territories (the)"
    Gabon -> "Gabon"
    Gambia -> "Gambia (the)"
    Georgia -> "Georgia"
    Germany -> "Germany"
    Ghana -> "Ghana"
    Gibraltar -> "Gibraltar"
    Greece -> "Greece"
    Greenland -> "Greenland"
    Grenada -> "Grenada"
    Guadeloupe -> "Guadeloupe"
    Guam -> "Guam"
    Guatemala -> "Guatemala"
    Guernsey -> "Guernsey"
    Guinea -> "Guinea"
    GuineaBissau -> "Guinea-Bissau"
    Guyana -> "Guyana"
    Haiti -> "Haiti"
    HeardIslandAndMcDonaldIslands -> "Heard Island and McDonald Islands"
    HolySee -> "Holy See (the)"
    Honduras -> "Honduras"
    HongKong -> "Hong Kong"
    Hungary -> "Hungary"
    Iceland -> "Iceland"
    India -> "India"
    Indonesia -> "Indonesia"
    Iran -> "Iran (Islamic Republic of)"
    Iraq -> "Iraq"
    Ireland -> "Ireland"
    IsleOfMan -> "Isle of Man"
    Israel -> "Israel"
    Italy -> "Italy"
    Jamaica -> "Jamaica"
    Japan -> "Japan"
    Jersey -> "Jersey"
    Jordan -> "Jordan"
    Kazakhstan -> "Kazakhstan"
    Kenya -> "Kenya"
    Kiribati -> "Kiribati"
    KoreaDemocraticPeoplesRepublic ->
      "Korea (the Democratic People's Republic of)"
    KoreaRepublic -> "Korea (the Republic of)"
    Kuwait -> "Kuwait"
    Kyrgyzstan -> "Kyrgyzstan"
    LaoPeoplesDemocraticRepublic -> "Lao People's Democratic Republic (the)"
    Latvia -> "Latvia"
    Lebanon -> "Lebanon"
    Lesotho -> "Lesotho"
    Liberia -> "Liberia"
    Libya -> "Libya"
    Liechtenstein -> "Liechtenstein"
    Lithuania -> "Lithuania"
    Luxembourg -> "Luxembourg"
    Macao -> "Macao"
    Madagascar -> "Madagascar"
    Malawi -> "Malawi"
    Malaysia -> "Malaysia"
    Maldives -> "Maldives"
    Mali -> "Mali"
    Malta -> "Malta"
    MarshallIslands -> "Marshall Islands (the)"
    Martinique -> "Martinique"
    Mauritania -> "Mauritania"
    Mauritius -> "Mauritius"
    Mayotte -> "Mayotte"
    Mexico -> "Mexico"
    Micronesia -> "Micronesia (Federated States of)"
    Moldova -> "Moldova (the Republic of)"
    Monaco -> "Monaco"
    Mongolia -> "Mongolia"
    Montenegro -> "Montenegro"
    Montserrat -> "Montserrat"
    Morocco -> "Morocco"
    Mozambique -> "Mozambique"
    Myanmar -> "Myanmar"
    Namibia -> "Namibia"
    Nauru -> "Nauru"
    Nepal -> "Nepal"
    Netherlands -> "Netherlands (Kingdom of the)"
    NewCaledonia -> "New Caledonia"
    NewZealand -> "New Zealand"
    Nicaragua -> "Nicaragua"
    Niger -> "Niger (the)"
    Nigeria -> "Nigeria"
    Niue -> "Niue"
    NorfolkIsland -> "Norfolk Island"
    NorthMacedonia -> "North Macedonia"
    NorthernMarianaIslands -> "Northern Mariana Islands (the)"
    Norway -> "Norway"
    Oman -> "Oman"
    Pakistan -> "Pakistan"
    Palau -> "Palau"
    Palestine -> "Palestine, State of"
    Panama -> "Panama"
    PapuaNewGuinea -> "Papua New Guinea"
    Paraguay -> "Paraguay"
    Peru -> "Peru"
    Philippines -> "Philippines (the)"
    Pitcairn -> "Pitcairn"
    Poland -> "Poland"
    Portugal -> "Portugal"
    PuertoRico -> "Puerto Rico"
    Qatar -> "Qatar"
    Reunion -> "Réunion"
    Romania -> "Romania"
    RussianFederation -> "Russian Federation (the)"
    Rwanda -> "Rwanda"
    SaintBarthelemy -> "Saint Barthélemy"
    SaintHelenaAscensionTristanDaCunha ->
      "Saint Helena, Ascension and Tristan da Cunha"
    SaintKittsAndNevis -> "Saint Kitts and Nevis"
    SaintLucia -> "Saint Lucia"
    SaintMartinFrenchPart -> "Saint Martin (French part)"
    SaintPierreAndMiquelon -> "Saint Pierre and Miquelon"
    SaintVincentAndTheGrenadines -> "Saint Vincent and the Grenadines"
    Samoa -> "Samoa"
    SanMarino -> "San Marino"
    SaoTomeAndPrincipe -> "Sao Tome and Principe"
    SaudiArabia -> "Saudi Arabia"
    Senegal -> "Senegal"
    Serbia -> "Serbia"
    Seychelles -> "Seychelles"
    SierraLeone -> "Sierra Leone"
    Singapore -> "Singapore"
    SintMaartenDutchPart -> "Sint Maarten (Dutch part)"
    Slovakia -> "Slovakia"
    Slovenia -> "Slovenia"
    SolomonIslands -> "Solomon Islands"
    Somalia -> "Somalia"
    SouthAfrica -> "South Africa"
    SouthGeorgiaSouthSandwichIslands ->
      "South Georgia and the South Sandwich Islands"
    SouthSudan -> "South Sudan"
    Spain -> "Spain"
    SriLanka -> "Sri Lanka"
    Sudan -> "Sudan (the)"
    Suriname -> "Suriname"
    SvalbardJanMayen -> "Svalbard and Jan Mayen"
    Sweden -> "Sweden"
    Switzerland -> "Switzerland"
    SyrianArabRepublic -> "Syrian Arab Republic (the)"
    TaiwanProvinceOfChina -> "Taiwan (Province of China)"
    Tajikistan -> "Tajikistan"
    Tanzania -> "Tanzania, the United Republic of"
    Thailand -> "Thailand"
    TimorLeste -> "Timor-Leste"
    Togo -> "Togo"
    Tokelau -> "Tokelau"
    Tonga -> "Tonga"
    TrinidadAndTobago -> "Trinidad and Tobago"
    Tunisia -> "Tunisia"
    Turkey -> "Türkiye"
    Turkmenistan -> "Turkmenistan"
    TurksAndCaicosIslands -> "Turks and Caicos Islands (the)"
    Tuvalu -> "Tuvalu"
    Uganda -> "Uganda"
    Ukraine -> "Ukraine"
    UnitedArabEmirates -> "United Arab Emirates (the)"
    UnitedKingdom ->
      "United Kingdom of Great Britain and Northern Ireland (the)"
    UnitedStatesOfAmerica -> "United States of America (the)"
    UnitedStatesOutlyingIslands -> "United States Minor Outlying Islands (the)"
    Uruguay -> "Uruguay"
    Uzbekistan -> "Uzbekistan"
    Vanuatu -> "Vanuatu"
    Venezuela -> "Venezuela (Bolivarian Republic of)"
    VietNam -> "Viet Nam"
    VirginIslandsBritish -> "Virgin Islands (British)"
    VirginIslandsUS -> "Virgin Islands (U.S.)"
    WallisAndFutuna -> "Wallis and Futuna"
    WesternSahara -> "Western Sahara*"
    Yemen -> "Yemen"
    Zambia -> "Zambia"
    Zimbabwe -> "Zimbabwe"
  }
}

/// standard ISO3166_1
/// source https://www.iso.org/obp/ui/#search/code/
pub fn to_alpha_2_code(country c: Country) -> Alpha2Code {
  case c {
    Afghanistan -> Af
    AlandIslands -> Ax
    Albania -> Al
    Algeria -> Dz
    AmericanSamoa -> As
    Andorra -> Ad
    Angola -> Ao
    Anguilla -> Ai
    Antarctica -> Aq
    AntiguaAndBarbuda -> Ag
    Argentina -> Ar
    Armenia -> Am
    Aruba -> Aw
    Australia -> Au
    Austria -> At
    Azerbaijan -> Az
    Bahamas -> Bs
    Bahrain -> Bh
    Bangladesh -> Bd
    Barbados -> Bb
    Belarus -> By
    Belgium -> Be
    Belize -> Bz
    Benin -> Bj
    Bermuda -> Bm
    Bhutan -> Bt
    Bolivia -> Bo
    BonaireSintEustatiusAndSaba -> Bq
    BosniaAndHerzegovina -> Ba
    Botswana -> Bw
    BouvetIsland -> Bv
    Brazil -> Br
    BritishIndianOceanTerritory -> Io
    BruneiDarussalam -> Bn
    Bulgaria -> Bg
    BurkinaFaso -> Bf
    Burundi -> Bi
    CaboVerde -> Cv
    Cambodia -> Kh
    Cameroon -> Cm
    Canada -> Ca
    CaymanIslands -> Ky
    CentralAfricanRepublic -> Cf
    Chad -> Td
    Chile -> Cl
    China -> Cn
    ChristmasIsland -> Cx
    CocosIslands -> Cc
    Colombia -> Co
    Comoros -> Km
    Congo -> Cg
    CongoDemocraticRepublic -> Cd
    CookIslands -> Ck
    CostaRica -> Cr
    CoteDIvoire -> Ci
    Croatia -> Hr
    Cuba -> Cu
    Curacao -> Cw
    Cyprus -> Cy
    Czechia -> Cz
    Denmark -> Dk
    Djibouti -> Dj
    Dominica -> Dm
    DominicanRepublic -> Do
    Ecuador -> Ec
    Egypt -> Eg
    ElSalvador -> Sv
    EquatorialGuinea -> Gq
    Eritrea -> Er
    Estonia -> Ee
    Eswatini -> Sz
    Ethiopia -> Et
    FalklandIslands -> Fk
    FaroeIslands -> Fo
    Fiji -> Fj
    Finland -> Fi
    France -> Fr
    FrenchGuiana -> Gf
    FrenchPolynesia -> Pf
    FrenchSouthernTerritories -> Tf
    Gabon -> Ga
    Gambia -> Gm
    Georgia -> Ge
    Germany -> De
    Ghana -> Gh
    Gibraltar -> Gi
    Greece -> Gr
    Greenland -> Gl
    Grenada -> Gd
    Guadeloupe -> Gp
    Guam -> Gu
    Guatemala -> Gt
    Guernsey -> Gg
    Guinea -> Gn
    GuineaBissau -> Gw
    Guyana -> Gy
    Haiti -> Ht
    HeardIslandAndMcDonaldIslands -> Hm
    HolySee -> Va
    Honduras -> Hn
    HongKong -> Hk
    Hungary -> Hu
    Iceland -> Is
    India -> In
    Indonesia -> Id
    Iran -> Ir
    Iraq -> Iq
    Ireland -> Ie
    IsleOfMan -> Im
    Israel -> Il
    Italy -> It
    Jamaica -> Jm
    Japan -> Jp
    Jersey -> Je
    Jordan -> Jo
    Kazakhstan -> Kz
    Kenya -> Ke
    Kiribati -> Ki
    KoreaDemocraticPeoplesRepublic -> Kp
    KoreaRepublic -> Kr
    Kuwait -> Kw
    Kyrgyzstan -> Kg
    LaoPeoplesDemocraticRepublic -> La
    Latvia -> Lv
    Lebanon -> Lb
    Lesotho -> Ls
    Liberia -> Lr
    Libya -> Ly
    Liechtenstein -> Li
    Lithuania -> Lt
    Luxembourg -> Lu
    Macao -> Mo
    Madagascar -> Mg
    Malawi -> Mw
    Malaysia -> My
    Maldives -> Mv
    Mali -> Ml
    Malta -> Mt
    MarshallIslands -> Mh
    Martinique -> Mq
    Mauritania -> Mr
    Mauritius -> Mu
    Mayotte -> Yt
    Mexico -> Mx
    Micronesia -> Fm
    Moldova -> Md
    Monaco -> Mc
    Mongolia -> Mn
    Montenegro -> Me
    Montserrat -> Ms
    Morocco -> Ma
    Mozambique -> Mz
    Myanmar -> Mm
    Namibia -> Na
    Nauru -> Nr
    Nepal -> Np
    Netherlands -> Nl
    NewCaledonia -> Nc
    NewZealand -> Nz
    Nicaragua -> Ni
    Niger -> Ne
    Nigeria -> Ng
    Niue -> Nu
    NorfolkIsland -> Nf
    NorthMacedonia -> Mk
    NorthernMarianaIslands -> Mp
    Norway -> No
    Oman -> Om
    Pakistan -> Pk
    Palau -> Pw
    Palestine -> Ps
    Panama -> Pa
    PapuaNewGuinea -> Pg
    Paraguay -> Py
    Peru -> Pe
    Philippines -> Ph
    Pitcairn -> Pn
    Poland -> Pl
    Portugal -> Pt
    PuertoRico -> Pr
    Qatar -> Qa
    Reunion -> Re
    Romania -> Ro
    RussianFederation -> Ru
    Rwanda -> Rw
    SaintBarthelemy -> Bl
    SaintHelenaAscensionTristanDaCunha -> Sh
    SaintKittsAndNevis -> Kn
    SaintLucia -> Lc
    SaintMartinFrenchPart -> Mf
    SaintPierreAndMiquelon -> Pm
    SaintVincentAndTheGrenadines -> Vc
    Samoa -> Ws
    SanMarino -> Sm
    SaoTomeAndPrincipe -> St
    SaudiArabia -> Sa
    Senegal -> Sn
    Serbia -> Rs
    Seychelles -> Sc
    SierraLeone -> Sl
    Singapore -> Sg
    SintMaartenDutchPart -> Sx
    Slovakia -> Sk
    Slovenia -> Si
    SolomonIslands -> Sb
    Somalia -> So
    SouthAfrica -> Za
    SouthGeorgiaSouthSandwichIslands -> Gs
    SouthSudan -> Ss
    Spain -> Es
    SriLanka -> Lk
    Sudan -> Sd
    Suriname -> Sr
    SvalbardJanMayen -> Sj
    Sweden -> Se
    Switzerland -> Ch
    SyrianArabRepublic -> Sy
    TaiwanProvinceOfChina -> Tw
    Tajikistan -> Tj
    Tanzania -> Tz
    Thailand -> Th
    TimorLeste -> Tl
    Togo -> Tg
    Tokelau -> Tk
    Tonga -> To
    TrinidadAndTobago -> Tt
    Tunisia -> Tn
    Turkey -> Tr
    Turkmenistan -> Tm
    TurksAndCaicosIslands -> Tc
    Tuvalu -> Tv
    Uganda -> Ug
    Ukraine -> Ua
    UnitedArabEmirates -> Ae
    UnitedKingdom -> Gb
    UnitedStatesOfAmerica -> Us
    UnitedStatesOutlyingIslands -> Um
    Uruguay -> Uy
    Uzbekistan -> Uz
    Vanuatu -> Vu
    Venezuela -> Ve
    VietNam -> Vn
    VirginIslandsBritish -> Vg
    VirginIslandsUS -> Vi
    WallisAndFutuna -> Wf
    WesternSahara -> Eh
    Yemen -> Ye
    Zambia -> Zm
    Zimbabwe -> Zw
  }
}

/// standard ISO3166_1
/// source https://www.iso.org/obp/ui/#search/code/
pub fn from_alpha_2_code(code a: Alpha2Code) -> Country {
  case a {
    Af -> Afghanistan
    Ax -> AlandIslands
    Al -> Albania
    Dz -> Algeria
    As -> AmericanSamoa
    Ad -> Andorra
    Ao -> Angola
    Ai -> Anguilla
    Aq -> Antarctica
    Ag -> AntiguaAndBarbuda
    Ar -> Argentina
    Am -> Armenia
    Aw -> Aruba
    Au -> Australia
    At -> Austria
    Az -> Azerbaijan
    Bs -> Bahamas
    Bh -> Bahrain
    Bd -> Bangladesh
    Bb -> Barbados
    By -> Belarus
    Be -> Belgium
    Bz -> Belize
    Bj -> Benin
    Bm -> Bermuda
    Bt -> Bhutan
    Bo -> Bolivia
    Bq -> BonaireSintEustatiusAndSaba
    Ba -> BosniaAndHerzegovina
    Bw -> Botswana
    Bv -> BouvetIsland
    Br -> Brazil
    Io -> BritishIndianOceanTerritory
    Bn -> BruneiDarussalam
    Bg -> Bulgaria
    Bf -> BurkinaFaso
    Bi -> Burundi
    Cv -> CaboVerde
    Kh -> Cambodia
    Cm -> Cameroon
    Ca -> Canada
    Ky -> CaymanIslands
    Cf -> CentralAfricanRepublic
    Td -> Chad
    Cl -> Chile
    Cn -> China
    Cx -> ChristmasIsland
    Cc -> CocosIslands
    Co -> Colombia
    Km -> Comoros
    Cg -> Congo
    Cd -> CongoDemocraticRepublic
    Ck -> CookIslands
    Cr -> CostaRica
    Ci -> CoteDIvoire
    Hr -> Croatia
    Cu -> Cuba
    Cw -> Curacao
    Cy -> Cyprus
    Cz -> Czechia
    Dk -> Denmark
    Dj -> Djibouti
    Dm -> Dominica
    Do -> DominicanRepublic
    Ec -> Ecuador
    Eg -> Egypt
    Sv -> ElSalvador
    Gq -> EquatorialGuinea
    Er -> Eritrea
    Ee -> Estonia
    Sz -> Eswatini
    Et -> Ethiopia
    Fk -> FalklandIslands
    Fo -> FaroeIslands
    Fj -> Fiji
    Fi -> Finland
    Fr -> France
    Gf -> FrenchGuiana
    Pf -> FrenchPolynesia
    Tf -> FrenchSouthernTerritories
    Ga -> Gabon
    Gm -> Gambia
    Ge -> Georgia
    De -> Germany
    Gh -> Ghana
    Gi -> Gibraltar
    Gr -> Greece
    Gl -> Greenland
    Gd -> Grenada
    Gp -> Guadeloupe
    Gu -> Guam
    Gt -> Guatemala
    Gg -> Guernsey
    Gn -> Guinea
    Gw -> GuineaBissau
    Gy -> Guyana
    Ht -> Haiti
    Hm -> HeardIslandAndMcDonaldIslands
    Va -> HolySee
    Hn -> Honduras
    Hk -> HongKong
    Hu -> Hungary
    Is -> Iceland
    In -> India
    Id -> Indonesia
    Ir -> Iran
    Iq -> Iraq
    Ie -> Ireland
    Im -> IsleOfMan
    Il -> Israel
    It -> Italy
    Jm -> Jamaica
    Jp -> Japan
    Je -> Jersey
    Jo -> Jordan
    Kz -> Kazakhstan
    Ke -> Kenya
    Ki -> Kiribati
    Kp -> KoreaDemocraticPeoplesRepublic
    Kr -> KoreaRepublic
    Kw -> Kuwait
    Kg -> Kyrgyzstan
    La -> LaoPeoplesDemocraticRepublic
    Lv -> Latvia
    Lb -> Lebanon
    Ls -> Lesotho
    Lr -> Liberia
    Ly -> Libya
    Li -> Liechtenstein
    Lt -> Lithuania
    Lu -> Luxembourg
    Mo -> Macao
    Mg -> Madagascar
    Mw -> Malawi
    My -> Malaysia
    Mv -> Maldives
    Ml -> Mali
    Mt -> Malta
    Mh -> MarshallIslands
    Mq -> Martinique
    Mr -> Mauritania
    Mu -> Mauritius
    Yt -> Mayotte
    Mx -> Mexico
    Fm -> Micronesia
    Md -> Moldova
    Mc -> Monaco
    Mn -> Mongolia
    Me -> Montenegro
    Ms -> Montserrat
    Ma -> Morocco
    Mz -> Mozambique
    Mm -> Myanmar
    Na -> Namibia
    Nr -> Nauru
    Np -> Nepal
    Nl -> Netherlands
    Nc -> NewCaledonia
    Nz -> NewZealand
    Ni -> Nicaragua
    Ne -> Niger
    Ng -> Nigeria
    Nu -> Niue
    Nf -> NorfolkIsland
    Mk -> NorthMacedonia
    Mp -> NorthernMarianaIslands
    No -> Norway
    Om -> Oman
    Pk -> Pakistan
    Pw -> Palau
    Ps -> Palestine
    Pa -> Panama
    Pg -> PapuaNewGuinea
    Py -> Paraguay
    Pe -> Peru
    Ph -> Philippines
    Pn -> Pitcairn
    Pl -> Poland
    Pt -> Portugal
    Pr -> PuertoRico
    Qa -> Qatar
    Re -> Reunion
    Ro -> Romania
    Ru -> RussianFederation
    Rw -> Rwanda
    Bl -> SaintBarthelemy
    Sh -> SaintHelenaAscensionTristanDaCunha
    Kn -> SaintKittsAndNevis
    Lc -> SaintLucia
    Mf -> SaintMartinFrenchPart
    Pm -> SaintPierreAndMiquelon
    Vc -> SaintVincentAndTheGrenadines
    Ws -> Samoa
    Sm -> SanMarino
    St -> SaoTomeAndPrincipe
    Sa -> SaudiArabia
    Sn -> Senegal
    Rs -> Serbia
    Sc -> Seychelles
    Sl -> SierraLeone
    Sg -> Singapore
    Sx -> SintMaartenDutchPart
    Sk -> Slovakia
    Si -> Slovenia
    Sb -> SolomonIslands
    So -> Somalia
    Za -> SouthAfrica
    Gs -> SouthGeorgiaSouthSandwichIslands
    Ss -> SouthSudan
    Es -> Spain
    Lk -> SriLanka
    Sd -> Sudan
    Sr -> Suriname
    Sj -> SvalbardJanMayen
    Se -> Sweden
    Ch -> Switzerland
    Sy -> SyrianArabRepublic
    Tw -> TaiwanProvinceOfChina
    Tj -> Tajikistan
    Tz -> Tanzania
    Th -> Thailand
    Tl -> TimorLeste
    Tg -> Togo
    Tk -> Tokelau
    To -> Tonga
    Tt -> TrinidadAndTobago
    Tn -> Tunisia
    Tr -> Turkey
    Tm -> Turkmenistan
    Tc -> TurksAndCaicosIslands
    Tv -> Tuvalu
    Ug -> Uganda
    Ua -> Ukraine
    Ae -> UnitedArabEmirates
    Gb -> UnitedKingdom
    Us -> UnitedStatesOfAmerica
    Um -> UnitedStatesOutlyingIslands
    Uy -> Uruguay
    Uz -> Uzbekistan
    Vu -> Vanuatu
    Ve -> Venezuela
    Vn -> VietNam
    Vg -> VirginIslandsBritish
    Vi -> VirginIslandsUS
    Wf -> WallisAndFutuna
    Eh -> WesternSahara
    Ye -> Yemen
    Zm -> Zambia
    Zw -> Zimbabwe
  }
}

/// standard ISO3166_1
/// source https://www.iso.org/obp/ui/#search/code/
pub fn alpha_2_code_to_string(code a: Alpha2Code) -> String {
  case a {
    Af -> "AF"
    Ax -> "AX"
    Al -> "AL"
    Dz -> "DZ"
    As -> "AS"
    Ad -> "AD"
    Ao -> "AO"
    Ai -> "AI"
    Aq -> "AQ"
    Ag -> "AG"
    Ar -> "AR"
    Am -> "AM"
    Aw -> "AW"
    Au -> "AU"
    At -> "AT"
    Az -> "AZ"
    Bs -> "BS"
    Bh -> "BH"
    Bd -> "BD"
    Bb -> "BB"
    By -> "BY"
    Be -> "BE"
    Bz -> "BZ"
    Bj -> "BJ"
    Bm -> "BM"
    Bt -> "BT"
    Bo -> "BO"
    Bq -> "BQ"
    Ba -> "BA"
    Bw -> "BW"
    Bv -> "BV"
    Br -> "BR"
    Io -> "IO"
    Bn -> "BN"
    Bg -> "BG"
    Bf -> "BF"
    Bi -> "BI"
    Cv -> "CV"
    Kh -> "KH"
    Cm -> "CM"
    Ca -> "CA"
    Ky -> "KY"
    Cf -> "CF"
    Td -> "TD"
    Cl -> "CL"
    Cn -> "CN"
    Cx -> "CX"
    Cc -> "CC"
    Co -> "CO"
    Km -> "KM"
    Cg -> "CG"
    Cd -> "CD"
    Ck -> "CK"
    Cr -> "CR"
    Ci -> "CI"
    Hr -> "HR"
    Cu -> "CU"
    Cw -> "CW"
    Cy -> "CY"
    Cz -> "CZ"
    Dk -> "DK"
    Dj -> "DJ"
    Dm -> "DM"
    Do -> "DO"
    Ec -> "EC"
    Eg -> "EG"
    Sv -> "SV"
    Gq -> "GQ"
    Er -> "ER"
    Ee -> "EE"
    Sz -> "SZ"
    Et -> "ET"
    Fk -> "FK"
    Fo -> "FO"
    Fj -> "FJ"
    Fi -> "FI"
    Fr -> "FR"
    Gf -> "GF"
    Pf -> "PF"
    Tf -> "TF"
    Ga -> "GA"
    Gm -> "GM"
    Ge -> "GE"
    De -> "DE"
    Gh -> "GH"
    Gi -> "GI"
    Gr -> "GR"
    Gl -> "GL"
    Gd -> "GD"
    Gp -> "GP"
    Gu -> "GU"
    Gt -> "GT"
    Gg -> "GG"
    Gn -> "GN"
    Gw -> "GW"
    Gy -> "GY"
    Ht -> "HT"
    Hm -> "HM"
    Va -> "VA"
    Hn -> "HN"
    Hk -> "HK"
    Hu -> "HU"
    Is -> "IS"
    In -> "IN"
    Id -> "ID"
    Ir -> "IR"
    Iq -> "IQ"
    Ie -> "IE"
    Im -> "IM"
    Il -> "IL"
    It -> "IT"
    Jm -> "JM"
    Jp -> "JP"
    Je -> "JE"
    Jo -> "JO"
    Kz -> "KZ"
    Ke -> "KE"
    Ki -> "KI"
    Kp -> "KP"
    Kr -> "KR"
    Kw -> "KW"
    Kg -> "KG"
    La -> "LA"
    Lv -> "LV"
    Lb -> "LB"
    Ls -> "LS"
    Lr -> "LR"
    Ly -> "LY"
    Li -> "LI"
    Lt -> "LT"
    Lu -> "LU"
    Mo -> "MO"
    Mg -> "MG"
    Mw -> "MW"
    My -> "MY"
    Mv -> "MV"
    Ml -> "ML"
    Mt -> "MT"
    Mh -> "MH"
    Mq -> "MQ"
    Mr -> "MR"
    Mu -> "MU"
    Yt -> "YT"
    Mx -> "MX"
    Fm -> "FM"
    Md -> "MD"
    Mc -> "MC"
    Mn -> "MN"
    Me -> "ME"
    Ms -> "MS"
    Ma -> "MA"
    Mz -> "MZ"
    Mm -> "MM"
    Na -> "NA"
    Nr -> "NR"
    Np -> "NP"
    Nl -> "NL"
    Nc -> "NC"
    Nz -> "NZ"
    Ni -> "NI"
    Ne -> "NE"
    Ng -> "NG"
    Nu -> "NU"
    Nf -> "NF"
    Mk -> "MK"
    Mp -> "MP"
    No -> "NO"
    Om -> "OM"
    Pk -> "PK"
    Pw -> "PW"
    Ps -> "PS"
    Pa -> "PA"
    Pg -> "PG"
    Py -> "PY"
    Pe -> "PE"
    Ph -> "PH"
    Pn -> "PN"
    Pl -> "PL"
    Pt -> "PT"
    Pr -> "PR"
    Qa -> "QA"
    Re -> "RE"
    Ro -> "RO"
    Ru -> "RU"
    Rw -> "RW"
    Bl -> "BL"
    Sh -> "SH"
    Kn -> "KN"
    Lc -> "LC"
    Mf -> "MF"
    Pm -> "PM"
    Vc -> "VC"
    Ws -> "WS"
    Sm -> "SM"
    St -> "ST"
    Sa -> "SA"
    Sn -> "SN"
    Rs -> "RS"
    Sc -> "SC"
    Sl -> "SL"
    Sg -> "SG"
    Sx -> "SX"
    Sk -> "SK"
    Si -> "SI"
    Sb -> "SB"
    So -> "SO"
    Za -> "ZA"
    Gs -> "GS"
    Ss -> "SS"
    Es -> "ES"
    Lk -> "LK"
    Sd -> "SD"
    Sr -> "SR"
    Sj -> "SJ"
    Se -> "SE"
    Ch -> "CH"
    Sy -> "SY"
    Tw -> "TW"
    Tj -> "TJ"
    Tz -> "TZ"
    Th -> "TH"
    Tl -> "TL"
    Tg -> "TG"
    Tk -> "TK"
    To -> "TO"
    Tt -> "TT"
    Tn -> "TN"
    Tr -> "TR"
    Tm -> "TM"
    Tc -> "TC"
    Tv -> "TV"
    Ug -> "UG"
    Ua -> "UA"
    Ae -> "AE"
    Gb -> "GB"
    Um -> "UM"
    Us -> "US"
    Uy -> "UY"
    Uz -> "UZ"
    Vu -> "VU"
    Ve -> "VE"
    Vn -> "VN"
    Vg -> "VG"
    Vi -> "VI"
    Wf -> "WF"
    Eh -> "EH"
    Ye -> "YE"
    Zm -> "ZM"
    Zw -> "ZW"
  }
}

/// standard ISO3166_1
/// source https://www.iso.org/obp/ui/#search/code/
pub fn alpha_2_code_from_string(
  code a: String,
) -> Result(Alpha2Code, CountryError) {
  case a {
    "AF" -> Ok(Af)
    "AX" -> Ok(Ax)
    "AL" -> Ok(Al)
    "DZ" -> Ok(Dz)
    "AS" -> Ok(As)
    "AD" -> Ok(Ad)
    "AO" -> Ok(Ao)
    "AI" -> Ok(Ai)
    "AQ" -> Ok(Aq)
    "AG" -> Ok(Ag)
    "AR" -> Ok(Ar)
    "AM" -> Ok(Am)
    "AW" -> Ok(Aw)
    "AU" -> Ok(Au)
    "AT" -> Ok(At)
    "AZ" -> Ok(Az)
    "BS" -> Ok(Bs)
    "BH" -> Ok(Bh)
    "BD" -> Ok(Bd)
    "BB" -> Ok(Bb)
    "BY" -> Ok(By)
    "BE" -> Ok(Be)
    "BZ" -> Ok(Bz)
    "BJ" -> Ok(Bj)
    "BM" -> Ok(Bm)
    "BT" -> Ok(Bt)
    "BO" -> Ok(Bo)
    "BQ" -> Ok(Bq)
    "BA" -> Ok(Ba)
    "BW" -> Ok(Bw)
    "BV" -> Ok(Bv)
    "BR" -> Ok(Br)
    "IO" -> Ok(Io)
    "BN" -> Ok(Bn)
    "BG" -> Ok(Bg)
    "BF" -> Ok(Bf)
    "BI" -> Ok(Bi)
    "CV" -> Ok(Cv)
    "KH" -> Ok(Kh)
    "CM" -> Ok(Cm)
    "CA" -> Ok(Ca)
    "KY" -> Ok(Ky)
    "CF" -> Ok(Cf)
    "TD" -> Ok(Td)
    "CL" -> Ok(Cl)
    "CN" -> Ok(Cn)
    "CX" -> Ok(Cx)
    "CC" -> Ok(Cc)
    "CO" -> Ok(Co)
    "KM" -> Ok(Km)
    "CG" -> Ok(Cg)
    "CD" -> Ok(Cd)
    "CK" -> Ok(Ck)
    "CR" -> Ok(Cr)
    "CI" -> Ok(Ci)
    "HR" -> Ok(Hr)
    "CU" -> Ok(Cu)
    "CW" -> Ok(Cw)
    "CY" -> Ok(Cy)
    "CZ" -> Ok(Cz)
    "DK" -> Ok(Dk)
    "DJ" -> Ok(Dj)
    "DM" -> Ok(Dm)
    "DO" -> Ok(Do)
    "EC" -> Ok(Ec)
    "EG" -> Ok(Eg)
    "SV" -> Ok(Sv)
    "GQ" -> Ok(Gq)
    "ER" -> Ok(Er)
    "EE" -> Ok(Ee)
    "SZ" -> Ok(Sz)
    "ET" -> Ok(Et)
    "FK" -> Ok(Fk)
    "FO" -> Ok(Fo)
    "FJ" -> Ok(Fj)
    "FI" -> Ok(Fi)
    "FR" -> Ok(Fr)
    "GF" -> Ok(Gf)
    "PF" -> Ok(Pf)
    "TF" -> Ok(Tf)
    "GA" -> Ok(Ga)
    "GM" -> Ok(Gm)
    "GE" -> Ok(Ge)
    "DE" -> Ok(De)
    "GH" -> Ok(Gh)
    "GI" -> Ok(Gi)
    "GR" -> Ok(Gr)
    "GL" -> Ok(Gl)
    "GD" -> Ok(Gd)
    "GP" -> Ok(Gp)
    "GU" -> Ok(Gu)
    "GT" -> Ok(Gt)
    "GG" -> Ok(Gg)
    "GN" -> Ok(Gn)
    "GW" -> Ok(Gw)
    "GY" -> Ok(Gy)
    "HT" -> Ok(Ht)
    "HM" -> Ok(Hm)
    "VA" -> Ok(Va)
    "HN" -> Ok(Hn)
    "HK" -> Ok(Hk)
    "HU" -> Ok(Hu)
    "IS" -> Ok(Is)
    "IN" -> Ok(In)
    "ID" -> Ok(Id)
    "IR" -> Ok(Ir)
    "IQ" -> Ok(Iq)
    "IE" -> Ok(Ie)
    "IM" -> Ok(Im)
    "IL" -> Ok(Il)
    "IT" -> Ok(It)
    "JM" -> Ok(Jm)
    "JP" -> Ok(Jp)
    "JE" -> Ok(Je)
    "JO" -> Ok(Jo)
    "KZ" -> Ok(Kz)
    "KE" -> Ok(Ke)
    "KI" -> Ok(Ki)
    "KP" -> Ok(Kp)
    "KR" -> Ok(Kr)
    "KW" -> Ok(Kw)
    "KG" -> Ok(Kg)
    "LA" -> Ok(La)
    "LV" -> Ok(Lv)
    "LB" -> Ok(Lb)
    "LS" -> Ok(Ls)
    "LR" -> Ok(Lr)
    "LY" -> Ok(Ly)
    "LI" -> Ok(Li)
    "LT" -> Ok(Lt)
    "LU" -> Ok(Lu)
    "MO" -> Ok(Mo)
    "MG" -> Ok(Mg)
    "MW" -> Ok(Mw)
    "MY" -> Ok(My)
    "MV" -> Ok(Mv)
    "ML" -> Ok(Ml)
    "MT" -> Ok(Mt)
    "MH" -> Ok(Mh)
    "MQ" -> Ok(Mq)
    "MR" -> Ok(Mr)
    "MU" -> Ok(Mu)
    "YT" -> Ok(Yt)
    "MX" -> Ok(Mx)
    "FM" -> Ok(Fm)
    "MD" -> Ok(Md)
    "MC" -> Ok(Mc)
    "MN" -> Ok(Mn)
    "ME" -> Ok(Me)
    "MS" -> Ok(Ms)
    "MA" -> Ok(Ma)
    "MZ" -> Ok(Mz)
    "MM" -> Ok(Mm)
    "NA" -> Ok(Na)
    "NR" -> Ok(Nr)
    "NP" -> Ok(Np)
    "NL" -> Ok(Nl)
    "NC" -> Ok(Nc)
    "NZ" -> Ok(Nz)
    "NI" -> Ok(Ni)
    "NE" -> Ok(Ne)
    "NG" -> Ok(Ng)
    "NU" -> Ok(Nu)
    "NF" -> Ok(Nf)
    "MK" -> Ok(Mk)
    "MP" -> Ok(Mp)
    "NO" -> Ok(No)
    "OM" -> Ok(Om)
    "PK" -> Ok(Pk)
    "PW" -> Ok(Pw)
    "PS" -> Ok(Ps)
    "PA" -> Ok(Pa)
    "PG" -> Ok(Pg)
    "PY" -> Ok(Py)
    "PE" -> Ok(Pe)
    "PH" -> Ok(Ph)
    "PN" -> Ok(Pn)
    "PL" -> Ok(Pl)
    "PT" -> Ok(Pt)
    "PR" -> Ok(Pr)
    "QA" -> Ok(Qa)
    "RE" -> Ok(Re)
    "RO" -> Ok(Ro)
    "RU" -> Ok(Ru)
    "RW" -> Ok(Rw)
    "BL" -> Ok(Bl)
    "SH" -> Ok(Sh)
    "KN" -> Ok(Kn)
    "LC" -> Ok(Lc)
    "MF" -> Ok(Mf)
    "PM" -> Ok(Pm)
    "VC" -> Ok(Vc)
    "WS" -> Ok(Ws)
    "SM" -> Ok(Sm)
    "ST" -> Ok(St)
    "SA" -> Ok(Sa)
    "SN" -> Ok(Sn)
    "RS" -> Ok(Rs)
    "SC" -> Ok(Sc)
    "SL" -> Ok(Sl)
    "SG" -> Ok(Sg)
    "SX" -> Ok(Sx)
    "SK" -> Ok(Sk)
    "SI" -> Ok(Si)
    "SB" -> Ok(Sb)
    "SO" -> Ok(So)
    "ZA" -> Ok(Za)
    "GS" -> Ok(Gs)
    "SS" -> Ok(Ss)
    "ES" -> Ok(Es)
    "LK" -> Ok(Lk)
    "SD" -> Ok(Sd)
    "SR" -> Ok(Sr)
    "SJ" -> Ok(Sj)
    "SE" -> Ok(Se)
    "CH" -> Ok(Ch)
    "SY" -> Ok(Sy)
    "TW" -> Ok(Tw)
    "TJ" -> Ok(Tj)
    "TZ" -> Ok(Tz)
    "TH" -> Ok(Th)
    "TL" -> Ok(Tl)
    "TG" -> Ok(Tg)
    "TK" -> Ok(Tk)
    "TO" -> Ok(To)
    "TT" -> Ok(Tt)
    "TN" -> Ok(Tn)
    "TR" -> Ok(Tr)
    "TM" -> Ok(Tm)
    "TC" -> Ok(Tc)
    "TV" -> Ok(Tv)
    "UG" -> Ok(Ug)
    "UA" -> Ok(Ua)
    "AE" -> Ok(Ae)
    "GB" -> Ok(Gb)
    "UM" -> Ok(Um)
    "US" -> Ok(Us)
    "UY" -> Ok(Uy)
    "UZ" -> Ok(Uz)
    "VU" -> Ok(Vu)
    "VE" -> Ok(Ve)
    "VN" -> Ok(Vn)
    "VG" -> Ok(Vg)
    "VI" -> Ok(Vi)
    "WF" -> Ok(Wf)
    "EH" -> Ok(Eh)
    "YE" -> Ok(Ye)
    "ZM" -> Ok(Zm)
    "ZW" -> Ok(Zw)
    _ -> Error(IncorrectAlpha2Code)
  }
}

/// standard ISO3166_1
/// source https://www.iso.org/obp/ui/#search/code/
pub fn to_alpha_3_code(country c: Country) -> Alpha3Code {
  case c {
    Afghanistan -> Afg
    AlandIslands -> Ala
    Albania -> Alb
    Algeria -> Dza
    AmericanSamoa -> Asm
    Andorra -> And
    Angola -> Ago
    Anguilla -> Aia
    Antarctica -> Ata
    AntiguaAndBarbuda -> Atg
    Argentina -> Arg
    Armenia -> Arm
    Aruba -> Abw
    Australia -> Aus
    Austria -> Aut
    Azerbaijan -> Aze
    Bahamas -> Bhs
    Bahrain -> Bhr
    Bangladesh -> Bgd
    Barbados -> Brb
    Belarus -> Blr
    Belgium -> Bel
    Belize -> Blz
    Benin -> Ben
    Bermuda -> Bmu
    Bhutan -> Btn
    Bolivia -> Bol
    BonaireSintEustatiusAndSaba -> Bes
    BosniaAndHerzegovina -> Bih
    Botswana -> Bwa
    BouvetIsland -> Bvt
    Brazil -> Bra
    BritishIndianOceanTerritory -> Iot
    BruneiDarussalam -> Brn
    Bulgaria -> Bgr
    BurkinaFaso -> Bfa
    Burundi -> Bdi
    CaboVerde -> Cpv
    Cambodia -> Khm
    Cameroon -> Cmr
    Canada -> Can
    CaymanIslands -> Cym
    CentralAfricanRepublic -> Caf
    Chad -> Tcd
    Chile -> Chl
    China -> Chn
    ChristmasIsland -> Cxr
    CocosIslands -> Cck
    Colombia -> Col
    Comoros -> Com
    Congo -> Cog
    CongoDemocraticRepublic -> Cod
    CookIslands -> Cok
    CostaRica -> Cri
    CoteDIvoire -> Civ
    Croatia -> Hrv
    Cuba -> Cub
    Curacao -> Cuw
    Cyprus -> Cyp
    Czechia -> Cze
    Denmark -> Dnk
    Djibouti -> Dji
    Dominica -> Dma
    DominicanRepublic -> Dom
    Ecuador -> Ecu
    Egypt -> Egy
    ElSalvador -> Slv
    EquatorialGuinea -> Gnq
    Eritrea -> Eri
    Estonia -> Est
    Eswatini -> Swz
    Ethiopia -> Eth
    FalklandIslands -> Flk
    FaroeIslands -> Fro
    Fiji -> Fji
    Finland -> Fin
    France -> Fra
    FrenchGuiana -> Guf
    FrenchPolynesia -> Pyf
    FrenchSouthernTerritories -> Atf
    Gabon -> Gab
    Gambia -> Gmb
    Georgia -> Geo
    Germany -> Deu
    Ghana -> Gha
    Gibraltar -> Gib
    Greece -> Grc
    Greenland -> Grl
    Grenada -> Grd
    Guadeloupe -> Glp
    Guam -> Gum
    Guatemala -> Gtm
    Guernsey -> Ggy
    Guinea -> Gin
    GuineaBissau -> Gnb
    Guyana -> Guy
    Haiti -> Hti
    HeardIslandAndMcDonaldIslands -> Hmd
    HolySee -> Vat
    Honduras -> Hnd
    HongKong -> Hkg
    Hungary -> Hun
    Iceland -> Isl
    India -> Ind
    Indonesia -> Idn
    Iran -> Irn
    Iraq -> Irq
    Ireland -> Irl
    IsleOfMan -> Imn
    Israel -> Isr
    Italy -> Ita
    Jamaica -> Jam
    Japan -> Jpn
    Jersey -> Jey
    Jordan -> Jor
    Kazakhstan -> Kaz
    Kenya -> Ken
    Kiribati -> Kir
    KoreaDemocraticPeoplesRepublic -> Prk
    KoreaRepublic -> Kor
    Kuwait -> Kwt
    Kyrgyzstan -> Kgz
    LaoPeoplesDemocraticRepublic -> Lao
    Latvia -> Lva
    Lebanon -> Lbn
    Lesotho -> Lso
    Liberia -> Lbr
    Libya -> Lby
    Liechtenstein -> Lie
    Lithuania -> Ltu
    Luxembourg -> Lux
    Macao -> Mac
    Madagascar -> Mdg
    Malawi -> Mwi
    Malaysia -> Mys
    Maldives -> Mdv
    Mali -> Mli
    Malta -> Mlt
    MarshallIslands -> Mhl
    Martinique -> Mtq
    Mauritania -> Mrt
    Mauritius -> Mus
    Mayotte -> Myt
    Mexico -> Mex
    Micronesia -> Fsm
    Moldova -> Mda
    Monaco -> Mco
    Mongolia -> Mng
    Montenegro -> Mne
    Montserrat -> Msr
    Morocco -> Mar
    Mozambique -> Moz
    Myanmar -> Mmr
    Namibia -> Nam
    Nauru -> Nru
    Nepal -> Npl
    Netherlands -> Nld
    NewCaledonia -> Ncl
    NewZealand -> Nzl
    Nicaragua -> Nic
    Niger -> Ner
    Nigeria -> Nga
    Niue -> Niu
    NorfolkIsland -> Nfk
    NorthMacedonia -> Mkd
    NorthernMarianaIslands -> Mnp
    Norway -> Nor
    Oman -> Omn
    Pakistan -> Pak
    Palau -> Plw
    Palestine -> Pse
    Panama -> Pan
    PapuaNewGuinea -> Png
    Paraguay -> Pry
    Peru -> Per
    Philippines -> Phl
    Pitcairn -> Pcn
    Poland -> Pol
    Portugal -> Prt
    PuertoRico -> Pri
    Qatar -> Qat
    Reunion -> Reu
    Romania -> Rou
    RussianFederation -> Rus
    Rwanda -> Rwa
    SaintBarthelemy -> Blm
    SaintHelenaAscensionTristanDaCunha -> Shn
    SaintKittsAndNevis -> Kna
    SaintLucia -> Lca
    SaintMartinFrenchPart -> Maf
    SaintPierreAndMiquelon -> Spm
    SaintVincentAndTheGrenadines -> Vct
    Samoa -> Wsm
    SanMarino -> Smr
    SaoTomeAndPrincipe -> Stp
    SaudiArabia -> Sau
    Senegal -> Sen
    Serbia -> Srb
    Seychelles -> Syc
    SierraLeone -> Sle
    Singapore -> Sgp
    SintMaartenDutchPart -> Sxm
    Slovakia -> Svk
    Slovenia -> Svn
    SolomonIslands -> Slb
    Somalia -> Som
    SouthAfrica -> Zaf
    SouthGeorgiaSouthSandwichIslands -> Sgs
    SouthSudan -> Ssd
    Spain -> Esp
    SriLanka -> Lka
    Sudan -> Sdn
    Suriname -> Sur
    SvalbardJanMayen -> Sjm
    Sweden -> Swe
    Switzerland -> Che
    SyrianArabRepublic -> Syr
    TaiwanProvinceOfChina -> Twn
    Tajikistan -> Tjk
    Tanzania -> Tza
    Thailand -> Tha
    TimorLeste -> Tls
    Togo -> Tgo
    Tokelau -> Tkl
    Tonga -> Ton
    TrinidadAndTobago -> Tto
    Tunisia -> Tun
    Turkey -> Tur
    Turkmenistan -> Tkm
    TurksAndCaicosIslands -> Tca
    Tuvalu -> Tuv
    Uganda -> Uga
    Ukraine -> Ukr
    UnitedArabEmirates -> Are
    UnitedKingdom -> Gbr
    UnitedStatesOfAmerica -> Usa
    UnitedStatesOutlyingIslands -> Umi
    Uruguay -> Ury
    Uzbekistan -> Uzb
    Vanuatu -> Vut
    Venezuela -> Ven
    VietNam -> Vnm
    VirginIslandsBritish -> Vgb
    VirginIslandsUS -> Vir
    WallisAndFutuna -> Wlf
    WesternSahara -> Esh
    Yemen -> Yem
    Zambia -> Zmb
    Zimbabwe -> Zwe
  }
}

/// standard ISO3166_1
/// source https://www.iso.org/obp/ui/#search/code/
pub fn from_alpha_3_code(code a: Alpha3Code) -> Country {
  case a {
    Afg -> Afghanistan
    Ala -> AlandIslands
    Alb -> Albania
    Dza -> Algeria
    Asm -> AmericanSamoa
    And -> Andorra
    Ago -> Angola
    Aia -> Anguilla
    Ata -> Antarctica
    Atg -> AntiguaAndBarbuda
    Arg -> Argentina
    Arm -> Armenia
    Abw -> Aruba
    Aus -> Australia
    Aut -> Austria
    Aze -> Azerbaijan
    Bhs -> Bahamas
    Bhr -> Bahrain
    Bgd -> Bangladesh
    Brb -> Barbados
    Blr -> Belarus
    Bel -> Belgium
    Blz -> Belize
    Ben -> Benin
    Bmu -> Bermuda
    Btn -> Bhutan
    Bol -> Bolivia
    Bes -> BonaireSintEustatiusAndSaba
    Bih -> BosniaAndHerzegovina
    Bwa -> Botswana
    Bvt -> BouvetIsland
    Bra -> Brazil
    Iot -> BritishIndianOceanTerritory
    Brn -> BruneiDarussalam
    Bgr -> Bulgaria
    Bfa -> BurkinaFaso
    Bdi -> Burundi
    Cpv -> CaboVerde
    Khm -> Cambodia
    Cmr -> Cameroon
    Can -> Canada
    Cym -> CaymanIslands
    Caf -> CentralAfricanRepublic
    Tcd -> Chad
    Chl -> Chile
    Chn -> China
    Cxr -> ChristmasIsland
    Cck -> CocosIslands
    Col -> Colombia
    Com -> Comoros
    Cog -> Congo
    Cod -> CongoDemocraticRepublic
    Cok -> CookIslands
    Cri -> CostaRica
    Civ -> CoteDIvoire
    Hrv -> Croatia
    Cub -> Cuba
    Cuw -> Curacao
    Cyp -> Cyprus
    Cze -> Czechia
    Dnk -> Denmark
    Dji -> Djibouti
    Dma -> Dominica
    Dom -> DominicanRepublic
    Ecu -> Ecuador
    Egy -> Egypt
    Slv -> ElSalvador
    Gnq -> EquatorialGuinea
    Eri -> Eritrea
    Est -> Estonia
    Swz -> Eswatini
    Eth -> Ethiopia
    Flk -> FalklandIslands
    Fro -> FaroeIslands
    Fji -> Fiji
    Fin -> Finland
    Fra -> France
    Guf -> FrenchGuiana
    Pyf -> FrenchPolynesia
    Atf -> FrenchSouthernTerritories
    Gab -> Gabon
    Gmb -> Gambia
    Geo -> Georgia
    Deu -> Germany
    Gha -> Ghana
    Gib -> Gibraltar
    Grc -> Greece
    Grl -> Greenland
    Grd -> Grenada
    Glp -> Guadeloupe
    Gum -> Guam
    Gtm -> Guatemala
    Ggy -> Guernsey
    Gin -> Guinea
    Gnb -> GuineaBissau
    Guy -> Guyana
    Hti -> Haiti
    Hmd -> HeardIslandAndMcDonaldIslands
    Vat -> HolySee
    Hnd -> Honduras
    Hkg -> HongKong
    Hun -> Hungary
    Isl -> Iceland
    Ind -> India
    Idn -> Indonesia
    Irn -> Iran
    Irq -> Iraq
    Irl -> Ireland
    Imn -> IsleOfMan
    Isr -> Israel
    Ita -> Italy
    Jam -> Jamaica
    Jpn -> Japan
    Jey -> Jersey
    Jor -> Jordan
    Kaz -> Kazakhstan
    Ken -> Kenya
    Kir -> Kiribati
    Prk -> KoreaDemocraticPeoplesRepublic
    Kor -> KoreaRepublic
    Kwt -> Kuwait
    Kgz -> Kyrgyzstan
    Lao -> LaoPeoplesDemocraticRepublic
    Lva -> Latvia
    Lbn -> Lebanon
    Lso -> Lesotho
    Lbr -> Liberia
    Lby -> Libya
    Lie -> Liechtenstein
    Ltu -> Lithuania
    Lux -> Luxembourg
    Mac -> Macao
    Mdg -> Madagascar
    Mwi -> Malawi
    Mys -> Malaysia
    Mdv -> Maldives
    Mli -> Mali
    Mlt -> Malta
    Mhl -> MarshallIslands
    Mtq -> Martinique
    Mrt -> Mauritania
    Mus -> Mauritius
    Myt -> Mayotte
    Mex -> Mexico
    Fsm -> Micronesia
    Mda -> Moldova
    Mco -> Monaco
    Mng -> Mongolia
    Mne -> Montenegro
    Msr -> Montserrat
    Mar -> Morocco
    Moz -> Mozambique
    Mmr -> Myanmar
    Nam -> Namibia
    Nru -> Nauru
    Npl -> Nepal
    Nld -> Netherlands
    Ncl -> NewCaledonia
    Nzl -> NewZealand
    Nic -> Nicaragua
    Ner -> Niger
    Nga -> Nigeria
    Niu -> Niue
    Nfk -> NorfolkIsland
    Mkd -> NorthMacedonia
    Mnp -> NorthernMarianaIslands
    Nor -> Norway
    Omn -> Oman
    Pak -> Pakistan
    Plw -> Palau
    Pse -> Palestine
    Pan -> Panama
    Png -> PapuaNewGuinea
    Pry -> Paraguay
    Per -> Peru
    Phl -> Philippines
    Pcn -> Pitcairn
    Pol -> Poland
    Prt -> Portugal
    Pri -> PuertoRico
    Qat -> Qatar
    Reu -> Reunion
    Rou -> Romania
    Rus -> RussianFederation
    Rwa -> Rwanda
    Blm -> SaintBarthelemy
    Shn -> SaintHelenaAscensionTristanDaCunha
    Kna -> SaintKittsAndNevis
    Lca -> SaintLucia
    Maf -> SaintMartinFrenchPart
    Spm -> SaintPierreAndMiquelon
    Vct -> SaintVincentAndTheGrenadines
    Wsm -> Samoa
    Smr -> SanMarino
    Stp -> SaoTomeAndPrincipe
    Sau -> SaudiArabia
    Sen -> Senegal
    Srb -> Serbia
    Syc -> Seychelles
    Sle -> SierraLeone
    Sgp -> Singapore
    Sxm -> SintMaartenDutchPart
    Svk -> Slovakia
    Svn -> Slovenia
    Slb -> SolomonIslands
    Som -> Somalia
    Zaf -> SouthAfrica
    Sgs -> SouthGeorgiaSouthSandwichIslands
    Ssd -> SouthSudan
    Esp -> Spain
    Lka -> SriLanka
    Sdn -> Sudan
    Sur -> Suriname
    Sjm -> SvalbardJanMayen
    Swe -> Sweden
    Che -> Switzerland
    Syr -> SyrianArabRepublic
    Twn -> TaiwanProvinceOfChina
    Tjk -> Tajikistan
    Tza -> Tanzania
    Tha -> Thailand
    Tls -> TimorLeste
    Tgo -> Togo
    Tkl -> Tokelau
    Ton -> Tonga
    Tto -> TrinidadAndTobago
    Tun -> Tunisia
    Tur -> Turkey
    Tkm -> Turkmenistan
    Tca -> TurksAndCaicosIslands
    Tuv -> Tuvalu
    Uga -> Uganda
    Ukr -> Ukraine
    Are -> UnitedArabEmirates
    Gbr -> UnitedKingdom
    Usa -> UnitedStatesOfAmerica
    Umi -> UnitedStatesOutlyingIslands
    Ury -> Uruguay
    Uzb -> Uzbekistan
    Vut -> Vanuatu
    Ven -> Venezuela
    Vnm -> VietNam
    Vgb -> VirginIslandsBritish
    Vir -> VirginIslandsUS
    Wlf -> WallisAndFutuna
    Esh -> WesternSahara
    Yem -> Yemen
    Zmb -> Zambia
    Zwe -> Zimbabwe
  }
}

/// standard ISO3166_1
/// source https://www.iso.org/obp/ui/#search/code/
pub fn alpha_3_code_to_string(code a: Alpha3Code) -> String {
  case a {
    Afg -> "AFG"
    Ala -> "ALA"
    Alb -> "ALB"
    Dza -> "DZA"
    Asm -> "ASM"
    And -> "AND"
    Ago -> "AGO"
    Aia -> "AIA"
    Ata -> "ATA"
    Atg -> "ATG"
    Arg -> "ARG"
    Arm -> "ARM"
    Abw -> "ABW"
    Aus -> "AUS"
    Aut -> "AUT"
    Aze -> "AZE"
    Bhs -> "BHS"
    Bhr -> "BHR"
    Bgd -> "BGD"
    Brb -> "BRB"
    Blr -> "BLR"
    Bel -> "BEL"
    Blz -> "BLZ"
    Ben -> "BEN"
    Bmu -> "BMU"
    Btn -> "BTN"
    Bol -> "BOL"
    Bes -> "BES"
    Bih -> "BIH"
    Bwa -> "BWA"
    Bvt -> "BVT"
    Bra -> "BRA"
    Iot -> "IOT"
    Brn -> "BRN"
    Bgr -> "BGR"
    Bfa -> "BFA"
    Bdi -> "BDI"
    Cpv -> "CPV"
    Khm -> "KHM"
    Cmr -> "CMR"
    Can -> "CAN"
    Cym -> "CYM"
    Caf -> "CAF"
    Tcd -> "TCD"
    Chl -> "CHL"
    Chn -> "CHN"
    Cxr -> "CXR"
    Cck -> "CCK"
    Col -> "COL"
    Com -> "COM"
    Cog -> "COG"
    Cod -> "COD"
    Cok -> "COK"
    Cri -> "CRI"
    Civ -> "CIV"
    Hrv -> "HRV"
    Cub -> "CUB"
    Cuw -> "CUW"
    Cyp -> "CYP"
    Cze -> "CZE"
    Dnk -> "DNK"
    Dji -> "DJI"
    Dma -> "DMA"
    Dom -> "DOM"
    Ecu -> "ECU"
    Egy -> "EGY"
    Slv -> "SLV"
    Gnq -> "GNQ"
    Eri -> "ERI"
    Est -> "EST"
    Swz -> "SWZ"
    Eth -> "ETH"
    Flk -> "FLK"
    Fro -> "FRO"
    Fji -> "FJI"
    Fin -> "FIN"
    Fra -> "FRA"
    Guf -> "GUF"
    Pyf -> "PYF"
    Atf -> "ATF"
    Gab -> "GAB"
    Gmb -> "GMB"
    Geo -> "GEO"
    Deu -> "DEU"
    Gha -> "GHA"
    Gib -> "GIB"
    Grc -> "GRC"
    Grl -> "GRL"
    Grd -> "GRD"
    Glp -> "GLP"
    Gum -> "GUM"
    Gtm -> "GTM"
    Ggy -> "GGY"
    Gin -> "GIN"
    Gnb -> "GNB"
    Guy -> "GUY"
    Hti -> "HTI"
    Hmd -> "HMD"
    Vat -> "VAT"
    Hnd -> "HND"
    Hkg -> "HKG"
    Hun -> "HUN"
    Isl -> "ISL"
    Ind -> "IND"
    Idn -> "IDN"
    Irn -> "IRN"
    Irq -> "IRQ"
    Irl -> "IRL"
    Imn -> "IMN"
    Isr -> "ISR"
    Ita -> "ITA"
    Jam -> "JAM"
    Jpn -> "JPN"
    Jey -> "JEY"
    Jor -> "JOR"
    Kaz -> "KAZ"
    Ken -> "KEN"
    Kir -> "KIR"
    Prk -> "PRK"
    Kor -> "KOR"
    Kwt -> "KWT"
    Kgz -> "KGZ"
    Lao -> "LAO"
    Lva -> "LVA"
    Lbn -> "LBN"
    Lso -> "LSO"
    Lbr -> "LBR"
    Lby -> "LBY"
    Lie -> "LIE"
    Ltu -> "LTU"
    Lux -> "LUX"
    Mac -> "MAC"
    Mdg -> "MDG"
    Mwi -> "MWI"
    Mys -> "MYS"
    Mdv -> "MDV"
    Mli -> "MLI"
    Mlt -> "MLT"
    Mhl -> "MHL"
    Mtq -> "MTQ"
    Mrt -> "MRT"
    Mus -> "MUS"
    Myt -> "MYT"
    Mex -> "MEX"
    Fsm -> "FSM"
    Mda -> "MDA"
    Mco -> "MCO"
    Mng -> "MNG"
    Mne -> "MNE"
    Msr -> "MSR"
    Mar -> "MAR"
    Moz -> "MOZ"
    Mmr -> "MMR"
    Nam -> "NAM"
    Nru -> "NRU"
    Npl -> "NPL"
    Nld -> "NLD"
    Ncl -> "NCL"
    Nzl -> "NZL"
    Nic -> "NIC"
    Ner -> "NER"
    Nga -> "NGA"
    Niu -> "NIU"
    Nfk -> "NFK"
    Mkd -> "MKD"
    Mnp -> "MNP"
    Nor -> "NOR"
    Omn -> "OMN"
    Pak -> "PAK"
    Plw -> "PLW"
    Pse -> "PSE"
    Pan -> "PAN"
    Png -> "PNG"
    Pry -> "PRY"
    Per -> "PER"
    Phl -> "PHL"
    Pcn -> "PCN"
    Pol -> "POL"
    Prt -> "PRT"
    Pri -> "PRI"
    Qat -> "QAT"
    Reu -> "REU"
    Rou -> "ROU"
    Rus -> "RUS"
    Rwa -> "RWA"
    Blm -> "BLM"
    Shn -> "SHN"
    Kna -> "KNA"
    Lca -> "LCA"
    Maf -> "MAF"
    Spm -> "SPM"
    Vct -> "VCT"
    Wsm -> "WSM"
    Smr -> "SMR"
    Stp -> "STP"
    Sau -> "SAU"
    Sen -> "SEN"
    Srb -> "SRB"
    Syc -> "SYC"
    Sle -> "SLE"
    Sgp -> "SGP"
    Sxm -> "SXM"
    Svk -> "SVK"
    Svn -> "SVN"
    Slb -> "SLB"
    Som -> "SOM"
    Zaf -> "ZAF"
    Sgs -> "SGS"
    Ssd -> "SSD"
    Esp -> "ESP"
    Lka -> "LKA"
    Sdn -> "SDN"
    Sur -> "SUR"
    Sjm -> "SJM"
    Swe -> "SWE"
    Che -> "CHE"
    Syr -> "SYR"
    Twn -> "TWN"
    Tjk -> "TJK"
    Tza -> "TZA"
    Tha -> "THA"
    Tls -> "TLS"
    Tgo -> "TGO"
    Tkl -> "TKL"
    Ton -> "TON"
    Tto -> "TTO"
    Tun -> "TUN"
    Tur -> "TUR"
    Tkm -> "TKM"
    Tca -> "TCA"
    Tuv -> "TUV"
    Uga -> "UGA"
    Ukr -> "UKR"
    Are -> "ARE"
    Gbr -> "GBR"
    Umi -> "UMI"
    Usa -> "USA"
    Ury -> "URY"
    Uzb -> "UZB"
    Vut -> "VUT"
    Ven -> "VEN"
    Vnm -> "VNM"
    Vgb -> "VGB"
    Vir -> "VIR"
    Wlf -> "WLF"
    Esh -> "ESH"
    Yem -> "YEM"
    Zmb -> "ZMB"
    Zwe -> "ZWE"
  }
}

/// standard ISO3166_1
/// source https://www.iso.org/obp/ui/#search/code/
pub fn alpha_3_code_from_string(
  code code: String,
) -> Result(Alpha3Code, CountryError) {
  case code {
    "AFG" -> Ok(Afg)
    "ALA" -> Ok(Ala)
    "ALB" -> Ok(Alb)
    "DZA" -> Ok(Dza)
    "ASM" -> Ok(Asm)
    "AND" -> Ok(And)
    "AGO" -> Ok(Ago)
    "AIA" -> Ok(Aia)
    "ATA" -> Ok(Ata)
    "ATG" -> Ok(Atg)
    "ARG" -> Ok(Arg)
    "ARM" -> Ok(Arm)
    "ABW" -> Ok(Abw)
    "AUS" -> Ok(Aus)
    "AUT" -> Ok(Aut)
    "AZE" -> Ok(Aze)
    "BHS" -> Ok(Bhs)
    "BHR" -> Ok(Bhr)
    "BGD" -> Ok(Bgd)
    "BRB" -> Ok(Brb)
    "BLR" -> Ok(Blr)
    "BEL" -> Ok(Bel)
    "BLZ" -> Ok(Blz)
    "BEN" -> Ok(Ben)
    "BMU" -> Ok(Bmu)
    "BTN" -> Ok(Btn)
    "BOL" -> Ok(Bol)
    "BES" -> Ok(Bes)
    "BIH" -> Ok(Bih)
    "BWA" -> Ok(Bwa)
    "BVT" -> Ok(Bvt)
    "BRA" -> Ok(Bra)
    "IOT" -> Ok(Iot)
    "BRN" -> Ok(Brn)
    "BGR" -> Ok(Bgr)
    "BFA" -> Ok(Bfa)
    "BDI" -> Ok(Bdi)
    "CPV" -> Ok(Cpv)
    "KHM" -> Ok(Khm)
    "CMR" -> Ok(Cmr)
    "CAN" -> Ok(Can)
    "CYM" -> Ok(Cym)
    "CAF" -> Ok(Caf)
    "TCD" -> Ok(Tcd)
    "CHL" -> Ok(Chl)
    "CHN" -> Ok(Chn)
    "CXR" -> Ok(Cxr)
    "CCK" -> Ok(Cck)
    "COL" -> Ok(Col)
    "COM" -> Ok(Com)
    "COG" -> Ok(Cog)
    "COD" -> Ok(Cod)
    "COK" -> Ok(Cok)
    "CRI" -> Ok(Cri)
    "CIV" -> Ok(Civ)
    "HRV" -> Ok(Hrv)
    "CUB" -> Ok(Cub)
    "CUW" -> Ok(Cuw)
    "CYP" -> Ok(Cyp)
    "CZE" -> Ok(Cze)
    "DNK" -> Ok(Dnk)
    "DJI" -> Ok(Dji)
    "DMA" -> Ok(Dma)
    "DOM" -> Ok(Dom)
    "ECU" -> Ok(Ecu)
    "EGY" -> Ok(Egy)
    "SLV" -> Ok(Slv)
    "GNQ" -> Ok(Gnq)
    "ERI" -> Ok(Eri)
    "EST" -> Ok(Est)
    "SWZ" -> Ok(Swz)
    "ETH" -> Ok(Eth)
    "FLK" -> Ok(Flk)
    "FRO" -> Ok(Fro)
    "FJI" -> Ok(Fji)
    "FIN" -> Ok(Fin)
    "FRA" -> Ok(Fra)
    "GUF" -> Ok(Guf)
    "PYF" -> Ok(Pyf)
    "ATF" -> Ok(Atf)
    "GAB" -> Ok(Gab)
    "GMB" -> Ok(Gmb)
    "GEO" -> Ok(Geo)
    "DEU" -> Ok(Deu)
    "GHA" -> Ok(Gha)
    "GIB" -> Ok(Gib)
    "GRC" -> Ok(Grc)
    "GRL" -> Ok(Grl)
    "GRD" -> Ok(Grd)
    "GLP" -> Ok(Glp)
    "GUM" -> Ok(Gum)
    "GTM" -> Ok(Gtm)
    "GGY" -> Ok(Ggy)
    "GIN" -> Ok(Gin)
    "GNB" -> Ok(Gnb)
    "GUY" -> Ok(Guy)
    "HTI" -> Ok(Hti)
    "HMD" -> Ok(Hmd)
    "VAT" -> Ok(Vat)
    "HND" -> Ok(Hnd)
    "HKG" -> Ok(Hkg)
    "HUN" -> Ok(Hun)
    "ISL" -> Ok(Isl)
    "IND" -> Ok(Ind)
    "IDN" -> Ok(Idn)
    "IRN" -> Ok(Irn)
    "IRQ" -> Ok(Irq)
    "IRL" -> Ok(Irl)
    "IMN" -> Ok(Imn)
    "ISR" -> Ok(Isr)
    "ITA" -> Ok(Ita)
    "JAM" -> Ok(Jam)
    "JPN" -> Ok(Jpn)
    "JEY" -> Ok(Jey)
    "JOR" -> Ok(Jor)
    "KAZ" -> Ok(Kaz)
    "KEN" -> Ok(Ken)
    "KIR" -> Ok(Kir)
    "PRK" -> Ok(Prk)
    "KOR" -> Ok(Kor)
    "KWT" -> Ok(Kwt)
    "KGZ" -> Ok(Kgz)
    "LAO" -> Ok(Lao)
    "LVA" -> Ok(Lva)
    "LBN" -> Ok(Lbn)
    "LSO" -> Ok(Lso)
    "LBR" -> Ok(Lbr)
    "LBY" -> Ok(Lby)
    "LIE" -> Ok(Lie)
    "LTU" -> Ok(Ltu)
    "LUX" -> Ok(Lux)
    "MAC" -> Ok(Mac)
    "MDG" -> Ok(Mdg)
    "MWI" -> Ok(Mwi)
    "MYS" -> Ok(Mys)
    "MDV" -> Ok(Mdv)
    "MLI" -> Ok(Mli)
    "MLT" -> Ok(Mlt)
    "MHL" -> Ok(Mhl)
    "MTQ" -> Ok(Mtq)
    "MRT" -> Ok(Mrt)
    "MUS" -> Ok(Mus)
    "MYT" -> Ok(Myt)
    "MEX" -> Ok(Mex)
    "FSM" -> Ok(Fsm)
    "MDA" -> Ok(Mda)
    "MCO" -> Ok(Mco)
    "MNG" -> Ok(Mng)
    "MNE" -> Ok(Mne)
    "MSR" -> Ok(Msr)
    "MAR" -> Ok(Mar)
    "MOZ" -> Ok(Moz)
    "MMR" -> Ok(Mmr)
    "NAM" -> Ok(Nam)
    "NRU" -> Ok(Nru)
    "NPL" -> Ok(Npl)
    "NLD" -> Ok(Nld)
    "NCL" -> Ok(Ncl)
    "NZL" -> Ok(Nzl)
    "NIC" -> Ok(Nic)
    "NER" -> Ok(Ner)
    "NGA" -> Ok(Nga)
    "NIU" -> Ok(Niu)
    "NFK" -> Ok(Nfk)
    "MKD" -> Ok(Mkd)
    "MNP" -> Ok(Mnp)
    "NOR" -> Ok(Nor)
    "OMN" -> Ok(Omn)
    "PAK" -> Ok(Pak)
    "PLW" -> Ok(Plw)
    "PSE" -> Ok(Pse)
    "PAN" -> Ok(Pan)
    "PNG" -> Ok(Png)
    "PRY" -> Ok(Pry)
    "PER" -> Ok(Per)
    "PHL" -> Ok(Phl)
    "PCN" -> Ok(Pcn)
    "POL" -> Ok(Pol)
    "PRT" -> Ok(Prt)
    "PRI" -> Ok(Pri)
    "QAT" -> Ok(Qat)
    "REU" -> Ok(Reu)
    "ROU" -> Ok(Rou)
    "RUS" -> Ok(Rus)
    "RWA" -> Ok(Rwa)
    "BLM" -> Ok(Blm)
    "SHN" -> Ok(Shn)
    "KNA" -> Ok(Kna)
    "LCA" -> Ok(Lca)
    "MAF" -> Ok(Maf)
    "SPM" -> Ok(Spm)
    "VCT" -> Ok(Vct)
    "WSM" -> Ok(Wsm)
    "SMR" -> Ok(Smr)
    "STP" -> Ok(Stp)
    "SAU" -> Ok(Sau)
    "SEN" -> Ok(Sen)
    "SRB" -> Ok(Srb)
    "SYC" -> Ok(Syc)
    "SLE" -> Ok(Sle)
    "SGP" -> Ok(Sgp)
    "SXM" -> Ok(Sxm)
    "SVK" -> Ok(Svk)
    "SVN" -> Ok(Svn)
    "SLB" -> Ok(Slb)
    "SOM" -> Ok(Som)
    "ZAF" -> Ok(Zaf)
    "SGS" -> Ok(Sgs)
    "SSD" -> Ok(Ssd)
    "ESP" -> Ok(Esp)
    "LKA" -> Ok(Lka)
    "SDN" -> Ok(Sdn)
    "SUR" -> Ok(Sur)
    "SJM" -> Ok(Sjm)
    "SWE" -> Ok(Swe)
    "CHE" -> Ok(Che)
    "SYR" -> Ok(Syr)
    "TWN" -> Ok(Twn)
    "TJK" -> Ok(Tjk)
    "TZA" -> Ok(Tza)
    "THA" -> Ok(Tha)
    "TLS" -> Ok(Tls)
    "TGO" -> Ok(Tgo)
    "TKL" -> Ok(Tkl)
    "TON" -> Ok(Ton)
    "TTO" -> Ok(Tto)
    "TUN" -> Ok(Tun)
    "TUR" -> Ok(Tur)
    "TKM" -> Ok(Tkm)
    "TCA" -> Ok(Tca)
    "TUV" -> Ok(Tuv)
    "UGA" -> Ok(Uga)
    "UKR" -> Ok(Ukr)
    "ARE" -> Ok(Are)
    "GBR" -> Ok(Gbr)
    "UMI" -> Ok(Umi)
    "USA" -> Ok(Usa)
    "URY" -> Ok(Ury)
    "UZB" -> Ok(Uzb)
    "VUT" -> Ok(Vut)
    "VEN" -> Ok(Ven)
    "VNM" -> Ok(Vnm)
    "VGB" -> Ok(Vgb)
    "VIR" -> Ok(Vir)
    "WLF" -> Ok(Wlf)
    "ESH" -> Ok(Esh)
    "YEM" -> Ok(Yem)
    "ZMB" -> Ok(Zmb)
    "ZWE" -> Ok(Zwe)
    _ -> Error(IncorrectAlpha3Code)
  }
}

/// standard ISO3166_1
/// source https://www.iso.org/obp/ui/#search/code/
pub fn to_numeric_code(country c: Country) -> String {
  case c {
    Afghanistan -> "004"
    AlandIslands -> "248"
    Albania -> "008"
    Algeria -> "012"
    AmericanSamoa -> "016"
    Andorra -> "020"
    Angola -> "024"
    Anguilla -> "660"
    Antarctica -> "010"
    AntiguaAndBarbuda -> "028"
    Argentina -> "032"
    Armenia -> "051"
    Aruba -> "533"
    Australia -> "036"
    Austria -> "040"
    Azerbaijan -> "031"
    Bahamas -> "044"
    Bahrain -> "048"
    Bangladesh -> "050"
    Barbados -> "052"
    Belarus -> "112"
    Belgium -> "056"
    Belize -> "084"
    Benin -> "204"
    Bermuda -> "060"
    Bhutan -> "064"
    Bolivia -> "068"
    BonaireSintEustatiusAndSaba -> "535"
    BosniaAndHerzegovina -> "070"
    Botswana -> "072"
    BouvetIsland -> "074"
    Brazil -> "076"
    BritishIndianOceanTerritory -> "086"
    BruneiDarussalam -> "096"
    Bulgaria -> "100"
    BurkinaFaso -> "854"
    Burundi -> "108"
    CaboVerde -> "132"
    Cambodia -> "116"
    Cameroon -> "120"
    Canada -> "124"
    CaymanIslands -> "136"
    CentralAfricanRepublic -> "140"
    Chad -> "148"
    Chile -> "152"
    China -> "156"
    ChristmasIsland -> "162"
    CocosIslands -> "166"
    Colombia -> "170"
    Comoros -> "174"
    Congo -> "178"
    CongoDemocraticRepublic -> "180"
    CookIslands -> "184"
    CostaRica -> "188"
    CoteDIvoire -> "384"
    Croatia -> "191"
    Cuba -> "192"
    Curacao -> "531"
    Cyprus -> "196"
    Czechia -> "203"
    Denmark -> "208"
    Djibouti -> "262"
    Dominica -> "212"
    DominicanRepublic -> "214"
    Ecuador -> "218"
    Egypt -> "818"
    ElSalvador -> "222"
    EquatorialGuinea -> "226"
    Eritrea -> "232"
    Estonia -> "233"
    Eswatini -> "748"
    Ethiopia -> "231"
    FalklandIslands -> "238"
    FaroeIslands -> "234"
    Fiji -> "242"
    Finland -> "246"
    France -> "250"
    FrenchGuiana -> "254"
    FrenchPolynesia -> "258"
    FrenchSouthernTerritories -> "260"
    Gabon -> "266"
    Gambia -> "270"
    Georgia -> "268"
    Germany -> "276"
    Ghana -> "288"
    Gibraltar -> "292"
    Greece -> "300"
    Greenland -> "304"
    Grenada -> "308"
    Guadeloupe -> "312"
    Guam -> "316"
    Guatemala -> "320"
    Guernsey -> "831"
    Guinea -> "324"
    GuineaBissau -> "624"
    Guyana -> "328"
    Haiti -> "332"
    HeardIslandAndMcDonaldIslands -> "334"
    HolySee -> "336"
    Honduras -> "340"
    HongKong -> "344"
    Hungary -> "348"
    Iceland -> "352"
    India -> "356"
    Indonesia -> "360"
    Iran -> "364"
    Iraq -> "368"
    Ireland -> "372"
    IsleOfMan -> "833"
    Israel -> "376"
    Italy -> "380"
    Jamaica -> "388"
    Japan -> "392"
    Jersey -> "832"
    Jordan -> "400"
    Kazakhstan -> "398"
    Kenya -> "404"
    Kiribati -> "296"
    KoreaDemocraticPeoplesRepublic -> "408"
    KoreaRepublic -> "410"
    Kuwait -> "414"
    Kyrgyzstan -> "417"
    LaoPeoplesDemocraticRepublic -> "418"
    Latvia -> "428"
    Lebanon -> "422"
    Lesotho -> "426"
    Liberia -> "430"
    Libya -> "434"
    Liechtenstein -> "438"
    Lithuania -> "440"
    Luxembourg -> "442"
    Macao -> "446"
    Madagascar -> "450"
    Malawi -> "454"
    Malaysia -> "458"
    Maldives -> "462"
    Mali -> "466"
    Malta -> "470"
    MarshallIslands -> "584"
    Martinique -> "474"
    Mauritania -> "478"
    Mauritius -> "480"
    Mayotte -> "175"
    Mexico -> "484"
    Micronesia -> "583"
    Moldova -> "498"
    Monaco -> "492"
    Mongolia -> "496"
    Montenegro -> "499"
    Montserrat -> "500"
    Morocco -> "504"
    Mozambique -> "508"
    Myanmar -> "104"
    Namibia -> "516"
    Nauru -> "520"
    Nepal -> "524"
    Netherlands -> "528"
    NewCaledonia -> "540"
    NewZealand -> "554"
    Nicaragua -> "558"
    Niger -> "562"
    Nigeria -> "566"
    Niue -> "570"
    NorfolkIsland -> "574"
    NorthMacedonia -> "807"
    NorthernMarianaIslands -> "580"
    Norway -> "578"
    Oman -> "512"
    Pakistan -> "586"
    Palau -> "585"
    Palestine -> "275"
    Panama -> "591"
    PapuaNewGuinea -> "598"
    Paraguay -> "600"
    Peru -> "604"
    Philippines -> "608"
    Pitcairn -> "612"
    Poland -> "616"
    Portugal -> "620"
    PuertoRico -> "630"
    Qatar -> "634"
    Reunion -> "638"
    Romania -> "642"
    RussianFederation -> "643"
    Rwanda -> "646"
    SaintBarthelemy -> "652"
    SaintHelenaAscensionTristanDaCunha -> "654"
    SaintKittsAndNevis -> "659"
    SaintLucia -> "662"
    SaintMartinFrenchPart -> "663"
    SaintPierreAndMiquelon -> "666"
    SaintVincentAndTheGrenadines -> "670"
    Samoa -> "882"
    SanMarino -> "674"
    SaoTomeAndPrincipe -> "678"
    SaudiArabia -> "682"
    Senegal -> "686"
    Serbia -> "688"
    Seychelles -> "690"
    SierraLeone -> "694"
    Singapore -> "702"
    SintMaartenDutchPart -> "534"
    Slovakia -> "703"
    Slovenia -> "705"
    SolomonIslands -> "090"
    Somalia -> "706"
    SouthAfrica -> "710"
    SouthGeorgiaSouthSandwichIslands -> "239"
    SouthSudan -> "728"
    Spain -> "724"
    SriLanka -> "144"
    Sudan -> "729"
    Suriname -> "740"
    SvalbardJanMayen -> "744"
    Sweden -> "752"
    Switzerland -> "756"
    SyrianArabRepublic -> "760"
    TaiwanProvinceOfChina -> "158"
    Tajikistan -> "762"
    Tanzania -> "834"
    Thailand -> "764"
    TimorLeste -> "626"
    Togo -> "768"
    Tokelau -> "772"
    Tonga -> "776"
    TrinidadAndTobago -> "780"
    Tunisia -> "788"
    Turkey -> "792"
    Turkmenistan -> "795"
    TurksAndCaicosIslands -> "796"
    Tuvalu -> "798"
    Uganda -> "800"
    Ukraine -> "804"
    UnitedArabEmirates -> "784"
    UnitedKingdom -> "826"
    UnitedStatesOfAmerica -> "840"
    UnitedStatesOutlyingIslands -> "581"
    Uruguay -> "858"
    Uzbekistan -> "860"
    Vanuatu -> "548"
    Venezuela -> "862"
    VietNam -> "704"
    VirginIslandsBritish -> "092"
    VirginIslandsUS -> "850"
    WallisAndFutuna -> "876"
    WesternSahara -> "732"
    Yemen -> "887"
    Zambia -> "894"
    Zimbabwe -> "716"
  }
}

/// standard ISO3166_1
/// source https://www.iso.org/obp/ui/#search/code/
pub fn from_numeric_code(code c: String) -> Result(Country, CountryError) {
  case c {
    "004" -> Ok(Afghanistan)
    "248" -> Ok(AlandIslands)
    "008" -> Ok(Albania)
    "012" -> Ok(Algeria)
    "016" -> Ok(AmericanSamoa)
    "020" -> Ok(Andorra)
    "024" -> Ok(Angola)
    "660" -> Ok(Anguilla)
    "010" -> Ok(Antarctica)
    "028" -> Ok(AntiguaAndBarbuda)
    "032" -> Ok(Argentina)
    "051" -> Ok(Armenia)
    "533" -> Ok(Aruba)
    "036" -> Ok(Australia)
    "040" -> Ok(Austria)
    "031" -> Ok(Azerbaijan)
    "044" -> Ok(Bahamas)
    "048" -> Ok(Bahrain)
    "050" -> Ok(Bangladesh)
    "052" -> Ok(Barbados)
    "112" -> Ok(Belarus)
    "056" -> Ok(Belgium)
    "084" -> Ok(Belize)
    "204" -> Ok(Benin)
    "060" -> Ok(Bermuda)
    "064" -> Ok(Bhutan)
    "068" -> Ok(Bolivia)
    "535" -> Ok(BonaireSintEustatiusAndSaba)
    "070" -> Ok(BosniaAndHerzegovina)
    "072" -> Ok(Botswana)
    "074" -> Ok(BouvetIsland)
    "076" -> Ok(Brazil)
    "086" -> Ok(BritishIndianOceanTerritory)
    "096" -> Ok(BruneiDarussalam)
    "100" -> Ok(Bulgaria)
    "854" -> Ok(BurkinaFaso)
    "108" -> Ok(Burundi)
    "132" -> Ok(CaboVerde)
    "116" -> Ok(Cambodia)
    "120" -> Ok(Cameroon)
    "124" -> Ok(Canada)
    "136" -> Ok(CaymanIslands)
    "140" -> Ok(CentralAfricanRepublic)
    "148" -> Ok(Chad)
    "152" -> Ok(Chile)
    "156" -> Ok(China)
    "162" -> Ok(ChristmasIsland)
    "166" -> Ok(CocosIslands)
    "170" -> Ok(Colombia)
    "174" -> Ok(Comoros)
    "178" -> Ok(Congo)
    "180" -> Ok(CongoDemocraticRepublic)
    "184" -> Ok(CookIslands)
    "188" -> Ok(CostaRica)
    "384" -> Ok(CoteDIvoire)
    "191" -> Ok(Croatia)
    "192" -> Ok(Cuba)
    "531" -> Ok(Curacao)
    "196" -> Ok(Cyprus)
    "203" -> Ok(Czechia)
    "208" -> Ok(Denmark)
    "262" -> Ok(Djibouti)
    "212" -> Ok(Dominica)
    "214" -> Ok(DominicanRepublic)
    "218" -> Ok(Ecuador)
    "818" -> Ok(Egypt)
    "222" -> Ok(ElSalvador)
    "226" -> Ok(EquatorialGuinea)
    "232" -> Ok(Eritrea)
    "233" -> Ok(Estonia)
    "748" -> Ok(Eswatini)
    "231" -> Ok(Ethiopia)
    "238" -> Ok(FalklandIslands)
    "234" -> Ok(FaroeIslands)
    "242" -> Ok(Fiji)
    "246" -> Ok(Finland)
    "250" -> Ok(France)
    "254" -> Ok(FrenchGuiana)
    "258" -> Ok(FrenchPolynesia)
    "260" -> Ok(FrenchSouthernTerritories)
    "266" -> Ok(Gabon)
    "270" -> Ok(Gambia)
    "268" -> Ok(Georgia)
    "276" -> Ok(Germany)
    "288" -> Ok(Ghana)
    "292" -> Ok(Gibraltar)
    "300" -> Ok(Greece)
    "304" -> Ok(Greenland)
    "308" -> Ok(Grenada)
    "312" -> Ok(Guadeloupe)
    "316" -> Ok(Guam)
    "320" -> Ok(Guatemala)
    "831" -> Ok(Guernsey)
    "324" -> Ok(Guinea)
    "624" -> Ok(GuineaBissau)
    "328" -> Ok(Guyana)
    "332" -> Ok(Haiti)
    "334" -> Ok(HeardIslandAndMcDonaldIslands)
    "336" -> Ok(HolySee)
    "340" -> Ok(Honduras)
    "344" -> Ok(HongKong)
    "348" -> Ok(Hungary)
    "352" -> Ok(Iceland)
    "356" -> Ok(India)
    "360" -> Ok(Indonesia)
    "364" -> Ok(Iran)
    "368" -> Ok(Iraq)
    "372" -> Ok(Ireland)
    "833" -> Ok(IsleOfMan)
    "376" -> Ok(Israel)
    "380" -> Ok(Italy)
    "388" -> Ok(Jamaica)
    "392" -> Ok(Japan)
    "832" -> Ok(Jersey)
    "400" -> Ok(Jordan)
    "398" -> Ok(Kazakhstan)
    "404" -> Ok(Kenya)
    "296" -> Ok(Kiribati)
    "408" -> Ok(KoreaDemocraticPeoplesRepublic)
    "410" -> Ok(KoreaRepublic)
    "414" -> Ok(Kuwait)
    "417" -> Ok(Kyrgyzstan)
    "418" -> Ok(LaoPeoplesDemocraticRepublic)
    "428" -> Ok(Latvia)
    "422" -> Ok(Lebanon)
    "426" -> Ok(Lesotho)
    "430" -> Ok(Liberia)
    "434" -> Ok(Libya)
    "438" -> Ok(Liechtenstein)
    "440" -> Ok(Lithuania)
    "442" -> Ok(Luxembourg)
    "446" -> Ok(Macao)
    "450" -> Ok(Madagascar)
    "454" -> Ok(Malawi)
    "458" -> Ok(Malaysia)
    "462" -> Ok(Maldives)
    "466" -> Ok(Mali)
    "470" -> Ok(Malta)
    "584" -> Ok(MarshallIslands)
    "474" -> Ok(Martinique)
    "478" -> Ok(Mauritania)
    "480" -> Ok(Mauritius)
    "175" -> Ok(Mayotte)
    "484" -> Ok(Mexico)
    "583" -> Ok(Micronesia)
    "498" -> Ok(Moldova)
    "492" -> Ok(Monaco)
    "496" -> Ok(Mongolia)
    "499" -> Ok(Montenegro)
    "500" -> Ok(Montserrat)
    "504" -> Ok(Morocco)
    "508" -> Ok(Mozambique)
    "104" -> Ok(Myanmar)
    "516" -> Ok(Namibia)
    "520" -> Ok(Nauru)
    "524" -> Ok(Nepal)
    "528" -> Ok(Netherlands)
    "540" -> Ok(NewCaledonia)
    "554" -> Ok(NewZealand)
    "558" -> Ok(Nicaragua)
    "562" -> Ok(Niger)
    "566" -> Ok(Nigeria)
    "570" -> Ok(Niue)
    "574" -> Ok(NorfolkIsland)
    "807" -> Ok(NorthMacedonia)
    "580" -> Ok(NorthernMarianaIslands)
    "578" -> Ok(Norway)
    "512" -> Ok(Oman)
    "586" -> Ok(Pakistan)
    "585" -> Ok(Palau)
    "275" -> Ok(Palestine)
    "591" -> Ok(Panama)
    "598" -> Ok(PapuaNewGuinea)
    "600" -> Ok(Paraguay)
    "604" -> Ok(Peru)
    "608" -> Ok(Philippines)
    "612" -> Ok(Pitcairn)
    "616" -> Ok(Poland)
    "620" -> Ok(Portugal)
    "630" -> Ok(PuertoRico)
    "634" -> Ok(Qatar)
    "638" -> Ok(Reunion)
    "642" -> Ok(Romania)
    "643" -> Ok(RussianFederation)
    "646" -> Ok(Rwanda)
    "652" -> Ok(SaintBarthelemy)
    "654" -> Ok(SaintHelenaAscensionTristanDaCunha)
    "659" -> Ok(SaintKittsAndNevis)
    "662" -> Ok(SaintLucia)
    "663" -> Ok(SaintMartinFrenchPart)
    "666" -> Ok(SaintPierreAndMiquelon)
    "670" -> Ok(SaintVincentAndTheGrenadines)
    "882" -> Ok(Samoa)
    "674" -> Ok(SanMarino)
    "678" -> Ok(SaoTomeAndPrincipe)
    "682" -> Ok(SaudiArabia)
    "686" -> Ok(Senegal)
    "688" -> Ok(Serbia)
    "690" -> Ok(Seychelles)
    "694" -> Ok(SierraLeone)
    "702" -> Ok(Singapore)
    "534" -> Ok(SintMaartenDutchPart)
    "703" -> Ok(Slovakia)
    "705" -> Ok(Slovenia)
    "090" -> Ok(SolomonIslands)
    "706" -> Ok(Somalia)
    "710" -> Ok(SouthAfrica)
    "239" -> Ok(SouthGeorgiaSouthSandwichIslands)
    "728" -> Ok(SouthSudan)
    "724" -> Ok(Spain)
    "144" -> Ok(SriLanka)
    "729" -> Ok(Sudan)
    "740" -> Ok(Suriname)
    "744" -> Ok(SvalbardJanMayen)
    "752" -> Ok(Sweden)
    "756" -> Ok(Switzerland)
    "760" -> Ok(SyrianArabRepublic)
    "158" -> Ok(TaiwanProvinceOfChina)
    "762" -> Ok(Tajikistan)
    "834" -> Ok(Tanzania)
    "764" -> Ok(Thailand)
    "626" -> Ok(TimorLeste)
    "768" -> Ok(Togo)
    "772" -> Ok(Tokelau)
    "776" -> Ok(Tonga)
    "780" -> Ok(TrinidadAndTobago)
    "788" -> Ok(Tunisia)
    "792" -> Ok(Turkey)
    "795" -> Ok(Turkmenistan)
    "796" -> Ok(TurksAndCaicosIslands)
    "798" -> Ok(Tuvalu)
    "800" -> Ok(Uganda)
    "804" -> Ok(Ukraine)
    "784" -> Ok(UnitedArabEmirates)
    "826" -> Ok(UnitedKingdom)
    "840" -> Ok(UnitedStatesOfAmerica)
    "581" -> Ok(UnitedStatesOutlyingIslands)
    "858" -> Ok(Uruguay)
    "860" -> Ok(Uzbekistan)
    "548" -> Ok(Vanuatu)
    "862" -> Ok(Venezuela)
    "704" -> Ok(VietNam)
    "092" -> Ok(VirginIslandsBritish)
    "850" -> Ok(VirginIslandsUS)
    "876" -> Ok(WallisAndFutuna)
    "732" -> Ok(WesternSahara)
    "887" -> Ok(Yemen)
    "894" -> Ok(Zambia)
    "716" -> Ok(Zimbabwe)
    _ -> Error(IncorrectNumericCode)
  }
}

pub fn from_int_numeric_code(code c: Int) -> Result(Country, CountryError) {
  let code = int.to_string(c) |> string.pad_start(to: 3, with: "0")
  from_numeric_code(code)
}
