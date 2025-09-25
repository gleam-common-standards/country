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
  AF
  AX
  AL
  DZ
  AS
  AD
  AO
  AI
  AQ
  AG
  AR
  AM
  AW
  AU
  AT
  AZ
  BS
  BH
  BD
  BB
  BY
  BE
  BZ
  BJ
  BM
  BT
  BO
  BQ
  BA
  BW
  BV
  BR
  IO
  BN
  BG
  BF
  BI
  CV
  KH
  CM
  CA
  KY
  CF
  TD
  CL
  CN
  CX
  CC
  CO
  KM
  CG
  CD
  CK
  CR
  CI
  HR
  CU
  CW
  CY
  CZ
  DK
  DJ
  DM
  DO
  EC
  EG
  SV
  GQ
  ER
  EE
  SZ
  ET
  FK
  FO
  FJ
  FI
  FR
  GF
  PF
  TF
  GA
  GM
  GE
  DE
  GH
  GI
  GR
  GL
  GD
  GP
  GU
  GT
  GG
  GN
  GW
  GY
  HT
  HM
  VA
  HN
  HK
  HU
  IS
  IN
  ID
  IR
  IQ
  IE
  IM
  IL
  IT
  JM
  JP
  JE
  JO
  KZ
  KE
  KI
  KP
  KR
  KW
  KG
  LA
  LV
  LB
  LS
  LR
  LY
  LI
  LT
  LU
  MO
  MG
  MW
  MY
  MV
  ML
  MT
  MH
  MQ
  MR
  MU
  YT
  MX
  FM
  MD
  MC
  MN
  ME
  MS
  MA
  MZ
  MM
  NA
  NR
  NP
  NL
  NC
  NZ
  NI
  NE
  NG
  NU
  NF
  MK
  MP
  NO
  OM
  PK
  PW
  PS
  PA
  PG
  PY
  PE
  PH
  PN
  PL
  PT
  PR
  QA
  RE
  RO
  RU
  RW
  BL
  SH
  KN
  LC
  MF
  PM
  VC
  WS
  SM
  ST
  SA
  SN
  RS
  SC
  SL
  SG
  SX
  SK
  SI
  SB
  SO
  ZA
  GS
  SS
  ES
  LK
  SD
  SR
  SJ
  SE
  CH
  SY
  TW
  TJ
  TZ
  TH
  TL
  TG
  TK
  TO
  TT
  TN
  TR
  TM
  TC
  TV
  UG
  UA
  AE
  GB
  UM
  US
  UY
  UZ
  VU
  VE
  VN
  VG
  VI
  WF
  EH
  YE
  ZM
  ZW
}

/// standard ISO3166_1
/// source https://www.iso.org/obp/ui/#search/code/
pub type Alpha3Code {
  AFG
  ALA
  ALB
  DZA
  ASM
  AND
  AGO
  AIA
  ATA
  ATG
  ARG
  ARM
  ABW
  AUS
  AUT
  AZE
  BHS
  BHR
  BGD
  BRB
  BLR
  BEL
  BLZ
  BEN
  BMU
  BTN
  BOL
  BES
  BIH
  BWA
  BVT
  BRA
  IOT
  BRN
  BGR
  BFA
  BDI
  CPV
  KHM
  CMR
  CAN
  CYM
  CAF
  TCD
  CHL
  CHN
  CXR
  CCK
  COL
  COM
  COG
  COD
  COK
  CRI
  CIV
  HRV
  CUB
  CUW
  CYP
  CZE
  DNK
  DJI
  DMA
  DOM
  ECU
  EGY
  SLV
  GNQ
  ERI
  EST
  SWZ
  ETH
  FLK
  FRO
  FJI
  FIN
  FRA
  GUF
  PYF
  ATF
  GAB
  GMB
  GEO
  DEU
  GHA
  GIB
  GRC
  GRL
  GRD
  GLP
  GUM
  GTM
  GGY
  GIN
  GNB
  GUY
  HTI
  HMD
  VAT
  HND
  HKG
  HUN
  ISL
  IND
  IDN
  IRN
  IRQ
  IRL
  IMN
  ISR
  ITA
  JAM
  JPN
  JEY
  JOR
  KAZ
  KEN
  KIR
  PRK
  KOR
  KWT
  KGZ
  LAO
  LVA
  LBN
  LSO
  LBR
  LBY
  LIE
  LTU
  LUX
  MAC
  MDG
  MWI
  MYS
  MDV
  MLI
  MLT
  MHL
  MTQ
  MRT
  MUS
  MYT
  MEX
  FSM
  MDA
  MCO
  MNG
  MNE
  MSR
  MAR
  MOZ
  MMR
  NAM
  NRU
  NPL
  NLD
  NCL
  NZL
  NIC
  NER
  NGA
  NIU
  NFK
  MKD
  MNP
  NOR
  OMN
  PAK
  PLW
  PSE
  PAN
  PNG
  PRY
  PER
  PHL
  PCN
  POL
  PRT
  PRI
  QAT
  REU
  ROU
  RUS
  RWA
  BLM
  SHN
  KNA
  LCA
  MAF
  SPM
  VCT
  WSM
  SMR
  STP
  SAU
  SEN
  SRB
  SYC
  SLE
  SGP
  SXM
  SVK
  SVN
  SLB
  SOM
  ZAF
  SGS
  SSD
  ESP
  LKA
  SDN
  SUR
  SJM
  SWE
  CHE
  SYR
  TWN
  TJK
  TZA
  THA
  TLS
  TGO
  TKL
  TON
  TTO
  TUN
  TUR
  TKM
  TCA
  TUV
  UGA
  UKR
  ARE
  GBR
  UMI
  USA
  URY
  UZB
  VUT
  VEN
  VNM
  VGB
  VIR
  WLF
  ESH
  YEM
  ZMB
  ZWE
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
    Afghanistan -> AF
    AlandIslands -> AX
    Albania -> AL
    Algeria -> DZ
    AmericanSamoa -> AS
    Andorra -> AD
    Angola -> AO
    Anguilla -> AI
    Antarctica -> AQ
    AntiguaAndBarbuda -> AG
    Argentina -> AR
    Armenia -> AM
    Aruba -> AW
    Australia -> AU
    Austria -> AT
    Azerbaijan -> AZ
    Bahamas -> BS
    Bahrain -> BH
    Bangladesh -> BD
    Barbados -> BB
    Belarus -> BY
    Belgium -> BE
    Belize -> BZ
    Benin -> BJ
    Bermuda -> BM
    Bhutan -> BT
    Bolivia -> BO
    BonaireSintEustatiusAndSaba -> BQ
    BosniaAndHerzegovina -> BA
    Botswana -> BW
    BouvetIsland -> BV
    Brazil -> BR
    BritishIndianOceanTerritory -> IO
    BruneiDarussalam -> BN
    Bulgaria -> BG
    BurkinaFaso -> BF
    Burundi -> BI
    CaboVerde -> CV
    Cambodia -> KH
    Cameroon -> CM
    Canada -> CA
    CaymanIslands -> KY
    CentralAfricanRepublic -> CF
    Chad -> TD
    Chile -> CL
    China -> CN
    ChristmasIsland -> CX
    CocosIslands -> CC
    Colombia -> CO
    Comoros -> KM
    Congo -> CG
    CongoDemocraticRepublic -> CD
    CookIslands -> CK
    CostaRica -> CR
    CoteDIvoire -> CI
    Croatia -> HR
    Cuba -> CU
    Curacao -> CW
    Cyprus -> CY
    Czechia -> CZ
    Denmark -> DK
    Djibouti -> DJ
    Dominica -> DM
    DominicanRepublic -> DO
    Ecuador -> EC
    Egypt -> EG
    ElSalvador -> SV
    EquatorialGuinea -> GQ
    Eritrea -> ER
    Estonia -> EE
    Eswatini -> SZ
    Ethiopia -> ET
    FalklandIslands -> FK
    FaroeIslands -> FO
    Fiji -> FJ
    Finland -> FI
    France -> FR
    FrenchGuiana -> GF
    FrenchPolynesia -> PF
    FrenchSouthernTerritories -> TF
    Gabon -> GA
    Gambia -> GM
    Georgia -> GE
    Germany -> DE
    Ghana -> GH
    Gibraltar -> GI
    Greece -> GR
    Greenland -> GL
    Grenada -> GD
    Guadeloupe -> GP
    Guam -> GU
    Guatemala -> GT
    Guernsey -> GG
    Guinea -> GN
    GuineaBissau -> GW
    Guyana -> GY
    Haiti -> HT
    HeardIslandAndMcDonaldIslands -> HM
    HolySee -> VA
    Honduras -> HN
    HongKong -> HK
    Hungary -> HU
    Iceland -> IS
    India -> IN
    Indonesia -> ID
    Iran -> IR
    Iraq -> IQ
    Ireland -> IE
    IsleOfMan -> IM
    Israel -> IL
    Italy -> IT
    Jamaica -> JM
    Japan -> JP
    Jersey -> JE
    Jordan -> JO
    Kazakhstan -> KZ
    Kenya -> KE
    Kiribati -> KI
    KoreaDemocraticPeoplesRepublic -> KP
    KoreaRepublic -> KR
    Kuwait -> KW
    Kyrgyzstan -> KG
    LaoPeoplesDemocraticRepublic -> LA
    Latvia -> LV
    Lebanon -> LB
    Lesotho -> LS
    Liberia -> LR
    Libya -> LY
    Liechtenstein -> LI
    Lithuania -> LT
    Luxembourg -> LU
    Macao -> MO
    Madagascar -> MG
    Malawi -> MW
    Malaysia -> MY
    Maldives -> MV
    Mali -> ML
    Malta -> MT
    MarshallIslands -> MH
    Martinique -> MQ
    Mauritania -> MR
    Mauritius -> MU
    Mayotte -> YT
    Mexico -> MX
    Micronesia -> FM
    Moldova -> MD
    Monaco -> MC
    Mongolia -> MN
    Montenegro -> ME
    Montserrat -> MS
    Morocco -> MA
    Mozambique -> MZ
    Myanmar -> MM
    Namibia -> NA
    Nauru -> NR
    Nepal -> NP
    Netherlands -> NL
    NewCaledonia -> NC
    NewZealand -> NZ
    Nicaragua -> NI
    Niger -> NE
    Nigeria -> NG
    Niue -> NU
    NorfolkIsland -> NF
    NorthMacedonia -> MK
    NorthernMarianaIslands -> MP
    Norway -> NO
    Oman -> OM
    Pakistan -> PK
    Palau -> PW
    Palestine -> PS
    Panama -> PA
    PapuaNewGuinea -> PG
    Paraguay -> PY
    Peru -> PE
    Philippines -> PH
    Pitcairn -> PN
    Poland -> PL
    Portugal -> PT
    PuertoRico -> PR
    Qatar -> QA
    Reunion -> RE
    Romania -> RO
    RussianFederation -> RU
    Rwanda -> RW
    SaintBarthelemy -> BL
    SaintHelenaAscensionTristanDaCunha -> SH
    SaintKittsAndNevis -> KN
    SaintLucia -> LC
    SaintMartinFrenchPart -> MF
    SaintPierreAndMiquelon -> PM
    SaintVincentAndTheGrenadines -> VC
    Samoa -> WS
    SanMarino -> SM
    SaoTomeAndPrincipe -> ST
    SaudiArabia -> SA
    Senegal -> SN
    Serbia -> RS
    Seychelles -> SC
    SierraLeone -> SL
    Singapore -> SG
    SintMaartenDutchPart -> SX
    Slovakia -> SK
    Slovenia -> SI
    SolomonIslands -> SB
    Somalia -> SO
    SouthAfrica -> ZA
    SouthGeorgiaSouthSandwichIslands -> GS
    SouthSudan -> SS
    Spain -> ES
    SriLanka -> LK
    Sudan -> SD
    Suriname -> SR
    SvalbardJanMayen -> SJ
    Sweden -> SE
    Switzerland -> CH
    SyrianArabRepublic -> SY
    TaiwanProvinceOfChina -> TW
    Tajikistan -> TJ
    Tanzania -> TZ
    Thailand -> TH
    TimorLeste -> TL
    Togo -> TG
    Tokelau -> TK
    Tonga -> TO
    TrinidadAndTobago -> TT
    Tunisia -> TN
    Turkey -> TR
    Turkmenistan -> TM
    TurksAndCaicosIslands -> TC
    Tuvalu -> TV
    Uganda -> UG
    Ukraine -> UA
    UnitedArabEmirates -> AE
    UnitedKingdom -> GB
    UnitedStatesOfAmerica -> US
    UnitedStatesOutlyingIslands -> UM
    Uruguay -> UY
    Uzbekistan -> UZ
    Vanuatu -> VU
    Venezuela -> VE
    VietNam -> VN
    VirginIslandsBritish -> VG
    VirginIslandsUS -> VI
    WallisAndFutuna -> WF
    WesternSahara -> EH
    Yemen -> YE
    Zambia -> ZM
    Zimbabwe -> ZW
  }
}

/// standard ISO3166_1
/// source https://www.iso.org/obp/ui/#search/code/
pub fn from_alpha_2_code(code a: Alpha2Code) -> Country {
  case a {
    AF -> Afghanistan
    AX -> AlandIslands
    AL -> Albania
    DZ -> Algeria
    AS -> AmericanSamoa
    AD -> Andorra
    AO -> Angola
    AI -> Anguilla
    AQ -> Antarctica
    AG -> AntiguaAndBarbuda
    AR -> Argentina
    AM -> Armenia
    AW -> Aruba
    AU -> Australia
    AT -> Austria
    AZ -> Azerbaijan
    BS -> Bahamas
    BH -> Bahrain
    BD -> Bangladesh
    BB -> Barbados
    BY -> Belarus
    BE -> Belgium
    BZ -> Belize
    BJ -> Benin
    BM -> Bermuda
    BT -> Bhutan
    BO -> Bolivia
    BQ -> BonaireSintEustatiusAndSaba
    BA -> BosniaAndHerzegovina
    BW -> Botswana
    BV -> BouvetIsland
    BR -> Brazil
    IO -> BritishIndianOceanTerritory
    BN -> BruneiDarussalam
    BG -> Bulgaria
    BF -> BurkinaFaso
    BI -> Burundi
    CV -> CaboVerde
    KH -> Cambodia
    CM -> Cameroon
    CA -> Canada
    KY -> CaymanIslands
    CF -> CentralAfricanRepublic
    TD -> Chad
    CL -> Chile
    CN -> China
    CX -> ChristmasIsland
    CC -> CocosIslands
    CO -> Colombia
    KM -> Comoros
    CG -> Congo
    CD -> CongoDemocraticRepublic
    CK -> CookIslands
    CR -> CostaRica
    CI -> CoteDIvoire
    HR -> Croatia
    CU -> Cuba
    CW -> Curacao
    CY -> Cyprus
    CZ -> Czechia
    DK -> Denmark
    DJ -> Djibouti
    DM -> Dominica
    DO -> DominicanRepublic
    EC -> Ecuador
    EG -> Egypt
    SV -> ElSalvador
    GQ -> EquatorialGuinea
    ER -> Eritrea
    EE -> Estonia
    SZ -> Eswatini
    ET -> Ethiopia
    FK -> FalklandIslands
    FO -> FaroeIslands
    FJ -> Fiji
    FI -> Finland
    FR -> France
    GF -> FrenchGuiana
    PF -> FrenchPolynesia
    TF -> FrenchSouthernTerritories
    GA -> Gabon
    GM -> Gambia
    GE -> Georgia
    DE -> Germany
    GH -> Ghana
    GI -> Gibraltar
    GR -> Greece
    GL -> Greenland
    GD -> Grenada
    GP -> Guadeloupe
    GU -> Guam
    GT -> Guatemala
    GG -> Guernsey
    GN -> Guinea
    GW -> GuineaBissau
    GY -> Guyana
    HT -> Haiti
    HM -> HeardIslandAndMcDonaldIslands
    VA -> HolySee
    HN -> Honduras
    HK -> HongKong
    HU -> Hungary
    IS -> Iceland
    IN -> India
    ID -> Indonesia
    IR -> Iran
    IQ -> Iraq
    IE -> Ireland
    IM -> IsleOfMan
    IL -> Israel
    IT -> Italy
    JM -> Jamaica
    JP -> Japan
    JE -> Jersey
    JO -> Jordan
    KZ -> Kazakhstan
    KE -> Kenya
    KI -> Kiribati
    KP -> KoreaDemocraticPeoplesRepublic
    KR -> KoreaRepublic
    KW -> Kuwait
    KG -> Kyrgyzstan
    LA -> LaoPeoplesDemocraticRepublic
    LV -> Latvia
    LB -> Lebanon
    LS -> Lesotho
    LR -> Liberia
    LY -> Libya
    LI -> Liechtenstein
    LT -> Lithuania
    LU -> Luxembourg
    MO -> Macao
    MG -> Madagascar
    MW -> Malawi
    MY -> Malaysia
    MV -> Maldives
    ML -> Mali
    MT -> Malta
    MH -> MarshallIslands
    MQ -> Martinique
    MR -> Mauritania
    MU -> Mauritius
    YT -> Mayotte
    MX -> Mexico
    FM -> Micronesia
    MD -> Moldova
    MC -> Monaco
    MN -> Mongolia
    ME -> Montenegro
    MS -> Montserrat
    MA -> Morocco
    MZ -> Mozambique
    MM -> Myanmar
    NA -> Namibia
    NR -> Nauru
    NP -> Nepal
    NL -> Netherlands
    NC -> NewCaledonia
    NZ -> NewZealand
    NI -> Nicaragua
    NE -> Niger
    NG -> Nigeria
    NU -> Niue
    NF -> NorfolkIsland
    MK -> NorthMacedonia
    MP -> NorthernMarianaIslands
    NO -> Norway
    OM -> Oman
    PK -> Pakistan
    PW -> Palau
    PS -> Palestine
    PA -> Panama
    PG -> PapuaNewGuinea
    PY -> Paraguay
    PE -> Peru
    PH -> Philippines
    PN -> Pitcairn
    PL -> Poland
    PT -> Portugal
    PR -> PuertoRico
    QA -> Qatar
    RE -> Reunion
    RO -> Romania
    RU -> RussianFederation
    RW -> Rwanda
    BL -> SaintBarthelemy
    SH -> SaintHelenaAscensionTristanDaCunha
    KN -> SaintKittsAndNevis
    LC -> SaintLucia
    MF -> SaintMartinFrenchPart
    PM -> SaintPierreAndMiquelon
    VC -> SaintVincentAndTheGrenadines
    WS -> Samoa
    SM -> SanMarino
    ST -> SaoTomeAndPrincipe
    SA -> SaudiArabia
    SN -> Senegal
    RS -> Serbia
    SC -> Seychelles
    SL -> SierraLeone
    SG -> Singapore
    SX -> SintMaartenDutchPart
    SK -> Slovakia
    SI -> Slovenia
    SB -> SolomonIslands
    SO -> Somalia
    ZA -> SouthAfrica
    GS -> SouthGeorgiaSouthSandwichIslands
    SS -> SouthSudan
    ES -> Spain
    LK -> SriLanka
    SD -> Sudan
    SR -> Suriname
    SJ -> SvalbardJanMayen
    SE -> Sweden
    CH -> Switzerland
    SY -> SyrianArabRepublic
    TW -> TaiwanProvinceOfChina
    TJ -> Tajikistan
    TZ -> Tanzania
    TH -> Thailand
    TL -> TimorLeste
    TG -> Togo
    TK -> Tokelau
    TO -> Tonga
    TT -> TrinidadAndTobago
    TN -> Tunisia
    TR -> Turkey
    TM -> Turkmenistan
    TC -> TurksAndCaicosIslands
    TV -> Tuvalu
    UG -> Uganda
    UA -> Ukraine
    AE -> UnitedArabEmirates
    GB -> UnitedKingdom
    US -> UnitedStatesOfAmerica
    UM -> UnitedStatesOutlyingIslands
    UY -> Uruguay
    UZ -> Uzbekistan
    VU -> Vanuatu
    VE -> Venezuela
    VN -> VietNam
    VG -> VirginIslandsBritish
    VI -> VirginIslandsUS
    WF -> WallisAndFutuna
    EH -> WesternSahara
    YE -> Yemen
    ZM -> Zambia
    ZW -> Zimbabwe
  }
}

/// standard ISO3166_1
/// source https://www.iso.org/obp/ui/#search/code/
pub fn alpha_2_code_to_string(code a: Alpha2Code) -> String {
  case a {
    AF -> "AF"
    AX -> "AX"
    AL -> "AL"
    DZ -> "DZ"
    AS -> "AS"
    AD -> "AD"
    AO -> "AO"
    AI -> "AI"
    AQ -> "AQ"
    AG -> "AG"
    AR -> "AR"
    AM -> "AM"
    AW -> "AW"
    AU -> "AU"
    AT -> "AT"
    AZ -> "AZ"
    BS -> "BS"
    BH -> "BH"
    BD -> "BD"
    BB -> "BB"
    BY -> "BY"
    BE -> "BE"
    BZ -> "BZ"
    BJ -> "BJ"
    BM -> "BM"
    BT -> "BT"
    BO -> "BO"
    BQ -> "BQ"
    BA -> "BA"
    BW -> "BW"
    BV -> "BV"
    BR -> "BR"
    IO -> "IO"
    BN -> "BN"
    BG -> "BG"
    BF -> "BF"
    BI -> "BI"
    CV -> "CV"
    KH -> "KH"
    CM -> "CM"
    CA -> "CA"
    KY -> "KY"
    CF -> "CF"
    TD -> "TD"
    CL -> "CL"
    CN -> "CN"
    CX -> "CX"
    CC -> "CC"
    CO -> "CO"
    KM -> "KM"
    CG -> "CG"
    CD -> "CD"
    CK -> "CK"
    CR -> "CR"
    CI -> "CI"
    HR -> "HR"
    CU -> "CU"
    CW -> "CW"
    CY -> "CY"
    CZ -> "CZ"
    DK -> "DK"
    DJ -> "DJ"
    DM -> "DM"
    DO -> "DO"
    EC -> "EC"
    EG -> "EG"
    SV -> "SV"
    GQ -> "GQ"
    ER -> "ER"
    EE -> "EE"
    SZ -> "SZ"
    ET -> "ET"
    FK -> "FK"
    FO -> "FO"
    FJ -> "FJ"
    FI -> "FI"
    FR -> "FR"
    GF -> "GF"
    PF -> "PF"
    TF -> "TF"
    GA -> "GA"
    GM -> "GM"
    GE -> "GE"
    DE -> "DE"
    GH -> "GH"
    GI -> "GI"
    GR -> "GR"
    GL -> "GL"
    GD -> "GD"
    GP -> "GP"
    GU -> "GU"
    GT -> "GT"
    GG -> "GG"
    GN -> "GN"
    GW -> "GW"
    GY -> "GY"
    HT -> "HT"
    HM -> "HM"
    VA -> "VA"
    HN -> "HN"
    HK -> "HK"
    HU -> "HU"
    IS -> "IS"
    IN -> "IN"
    ID -> "ID"
    IR -> "IR"
    IQ -> "IQ"
    IE -> "IE"
    IM -> "IM"
    IL -> "IL"
    IT -> "IT"
    JM -> "JM"
    JP -> "JP"
    JE -> "JE"
    JO -> "JO"
    KZ -> "KZ"
    KE -> "KE"
    KI -> "KI"
    KP -> "KP"
    KR -> "KR"
    KW -> "KW"
    KG -> "KG"
    LA -> "LA"
    LV -> "LV"
    LB -> "LB"
    LS -> "LS"
    LR -> "LR"
    LY -> "LY"
    LI -> "LI"
    LT -> "LT"
    LU -> "LU"
    MO -> "MO"
    MG -> "MG"
    MW -> "MW"
    MY -> "MY"
    MV -> "MV"
    ML -> "ML"
    MT -> "MT"
    MH -> "MH"
    MQ -> "MQ"
    MR -> "MR"
    MU -> "MU"
    YT -> "YT"
    MX -> "MX"
    FM -> "FM"
    MD -> "MD"
    MC -> "MC"
    MN -> "MN"
    ME -> "ME"
    MS -> "MS"
    MA -> "MA"
    MZ -> "MZ"
    MM -> "MM"
    NA -> "NA"
    NR -> "NR"
    NP -> "NP"
    NL -> "NL"
    NC -> "NC"
    NZ -> "NZ"
    NI -> "NI"
    NE -> "NE"
    NG -> "NG"
    NU -> "NU"
    NF -> "NF"
    MK -> "MK"
    MP -> "MP"
    NO -> "NO"
    OM -> "OM"
    PK -> "PK"
    PW -> "PW"
    PS -> "PS"
    PA -> "PA"
    PG -> "PG"
    PY -> "PY"
    PE -> "PE"
    PH -> "PH"
    PN -> "PN"
    PL -> "PL"
    PT -> "PT"
    PR -> "PR"
    QA -> "QA"
    RE -> "RE"
    RO -> "RO"
    RU -> "RU"
    RW -> "RW"
    BL -> "BL"
    SH -> "SH"
    KN -> "KN"
    LC -> "LC"
    MF -> "MF"
    PM -> "PM"
    VC -> "VC"
    WS -> "WS"
    SM -> "SM"
    ST -> "ST"
    SA -> "SA"
    SN -> "SN"
    RS -> "RS"
    SC -> "SC"
    SL -> "SL"
    SG -> "SG"
    SX -> "SX"
    SK -> "SK"
    SI -> "SI"
    SB -> "SB"
    SO -> "SO"
    ZA -> "ZA"
    GS -> "GS"
    SS -> "SS"
    ES -> "ES"
    LK -> "LK"
    SD -> "SD"
    SR -> "SR"
    SJ -> "SJ"
    SE -> "SE"
    CH -> "CH"
    SY -> "SY"
    TW -> "TW"
    TJ -> "TJ"
    TZ -> "TZ"
    TH -> "TH"
    TL -> "TL"
    TG -> "TG"
    TK -> "TK"
    TO -> "TO"
    TT -> "TT"
    TN -> "TN"
    TR -> "TR"
    TM -> "TM"
    TC -> "TC"
    TV -> "TV"
    UG -> "UG"
    UA -> "UA"
    AE -> "AE"
    GB -> "GB"
    UM -> "UM"
    US -> "US"
    UY -> "UY"
    UZ -> "UZ"
    VU -> "VU"
    VE -> "VE"
    VN -> "VN"
    VG -> "VG"
    VI -> "VI"
    WF -> "WF"
    EH -> "EH"
    YE -> "YE"
    ZM -> "ZM"
    ZW -> "ZW"
  }
}

/// standard ISO3166_1
/// source https://www.iso.org/obp/ui/#search/code/
pub fn alpha_2_code_from_string(
  code a: String,
) -> Result(Alpha2Code, CountryError) {
  case a {
    "AF" -> Ok(AF)
    "AX" -> Ok(AX)
    "AL" -> Ok(AL)
    "DZ" -> Ok(DZ)
    "AS" -> Ok(AS)
    "AD" -> Ok(AD)
    "AO" -> Ok(AO)
    "AI" -> Ok(AI)
    "AQ" -> Ok(AQ)
    "AG" -> Ok(AG)
    "AR" -> Ok(AR)
    "AM" -> Ok(AM)
    "AW" -> Ok(AW)
    "AU" -> Ok(AU)
    "AT" -> Ok(AT)
    "AZ" -> Ok(AZ)
    "BS" -> Ok(BS)
    "BH" -> Ok(BH)
    "BD" -> Ok(BD)
    "BB" -> Ok(BB)
    "BY" -> Ok(BY)
    "BE" -> Ok(BE)
    "BZ" -> Ok(BZ)
    "BJ" -> Ok(BJ)
    "BM" -> Ok(BM)
    "BT" -> Ok(BT)
    "BO" -> Ok(BO)
    "BQ" -> Ok(BQ)
    "BA" -> Ok(BA)
    "BW" -> Ok(BW)
    "BV" -> Ok(BV)
    "BR" -> Ok(BR)
    "IO" -> Ok(IO)
    "BN" -> Ok(BN)
    "BG" -> Ok(BG)
    "BF" -> Ok(BF)
    "BI" -> Ok(BI)
    "CV" -> Ok(CV)
    "KH" -> Ok(KH)
    "CM" -> Ok(CM)
    "CA" -> Ok(CA)
    "KY" -> Ok(KY)
    "CF" -> Ok(CF)
    "TD" -> Ok(TD)
    "CL" -> Ok(CL)
    "CN" -> Ok(CN)
    "CX" -> Ok(CX)
    "CC" -> Ok(CC)
    "CO" -> Ok(CO)
    "KM" -> Ok(KM)
    "CG" -> Ok(CG)
    "CD" -> Ok(CD)
    "CK" -> Ok(CK)
    "CR" -> Ok(CR)
    "CI" -> Ok(CI)
    "HR" -> Ok(HR)
    "CU" -> Ok(CU)
    "CW" -> Ok(CW)
    "CY" -> Ok(CY)
    "CZ" -> Ok(CZ)
    "DK" -> Ok(DK)
    "DJ" -> Ok(DJ)
    "DM" -> Ok(DM)
    "DO" -> Ok(DO)
    "EC" -> Ok(EC)
    "EG" -> Ok(EG)
    "SV" -> Ok(SV)
    "GQ" -> Ok(GQ)
    "ER" -> Ok(ER)
    "EE" -> Ok(EE)
    "SZ" -> Ok(SZ)
    "ET" -> Ok(ET)
    "FK" -> Ok(FK)
    "FO" -> Ok(FO)
    "FJ" -> Ok(FJ)
    "FI" -> Ok(FI)
    "FR" -> Ok(FR)
    "GF" -> Ok(GF)
    "PF" -> Ok(PF)
    "TF" -> Ok(TF)
    "GA" -> Ok(GA)
    "GM" -> Ok(GM)
    "GE" -> Ok(GE)
    "DE" -> Ok(DE)
    "GH" -> Ok(GH)
    "GI" -> Ok(GI)
    "GR" -> Ok(GR)
    "GL" -> Ok(GL)
    "GD" -> Ok(GD)
    "GP" -> Ok(GP)
    "GU" -> Ok(GU)
    "GT" -> Ok(GT)
    "GG" -> Ok(GG)
    "GN" -> Ok(GN)
    "GW" -> Ok(GW)
    "GY" -> Ok(GY)
    "HT" -> Ok(HT)
    "HM" -> Ok(HM)
    "VA" -> Ok(VA)
    "HN" -> Ok(HN)
    "HK" -> Ok(HK)
    "HU" -> Ok(HU)
    "IS" -> Ok(IS)
    "IN" -> Ok(IN)
    "ID" -> Ok(ID)
    "IR" -> Ok(IR)
    "IQ" -> Ok(IQ)
    "IE" -> Ok(IE)
    "IM" -> Ok(IM)
    "IL" -> Ok(IL)
    "IT" -> Ok(IT)
    "JM" -> Ok(JM)
    "JP" -> Ok(JP)
    "JE" -> Ok(JE)
    "JO" -> Ok(JO)
    "KZ" -> Ok(KZ)
    "KE" -> Ok(KE)
    "KI" -> Ok(KI)
    "KP" -> Ok(KP)
    "KR" -> Ok(KR)
    "KW" -> Ok(KW)
    "KG" -> Ok(KG)
    "LA" -> Ok(LA)
    "LV" -> Ok(LV)
    "LB" -> Ok(LB)
    "LS" -> Ok(LS)
    "LR" -> Ok(LR)
    "LY" -> Ok(LY)
    "LI" -> Ok(LI)
    "LT" -> Ok(LT)
    "LU" -> Ok(LU)
    "MO" -> Ok(MO)
    "MG" -> Ok(MG)
    "MW" -> Ok(MW)
    "MY" -> Ok(MY)
    "MV" -> Ok(MV)
    "ML" -> Ok(ML)
    "MT" -> Ok(MT)
    "MH" -> Ok(MH)
    "MQ" -> Ok(MQ)
    "MR" -> Ok(MR)
    "MU" -> Ok(MU)
    "YT" -> Ok(YT)
    "MX" -> Ok(MX)
    "FM" -> Ok(FM)
    "MD" -> Ok(MD)
    "MC" -> Ok(MC)
    "MN" -> Ok(MN)
    "ME" -> Ok(ME)
    "MS" -> Ok(MS)
    "MA" -> Ok(MA)
    "MZ" -> Ok(MZ)
    "MM" -> Ok(MM)
    "NA" -> Ok(NA)
    "NR" -> Ok(NR)
    "NP" -> Ok(NP)
    "NL" -> Ok(NL)
    "NC" -> Ok(NC)
    "NZ" -> Ok(NZ)
    "NI" -> Ok(NI)
    "NE" -> Ok(NE)
    "NG" -> Ok(NG)
    "NU" -> Ok(NU)
    "NF" -> Ok(NF)
    "MK" -> Ok(MK)
    "MP" -> Ok(MP)
    "NO" -> Ok(NO)
    "OM" -> Ok(OM)
    "PK" -> Ok(PK)
    "PW" -> Ok(PW)
    "PS" -> Ok(PS)
    "PA" -> Ok(PA)
    "PG" -> Ok(PG)
    "PY" -> Ok(PY)
    "PE" -> Ok(PE)
    "PH" -> Ok(PH)
    "PN" -> Ok(PN)
    "PL" -> Ok(PL)
    "PT" -> Ok(PT)
    "PR" -> Ok(PR)
    "QA" -> Ok(QA)
    "RE" -> Ok(RE)
    "RO" -> Ok(RO)
    "RU" -> Ok(RU)
    "RW" -> Ok(RW)
    "BL" -> Ok(BL)
    "SH" -> Ok(SH)
    "KN" -> Ok(KN)
    "LC" -> Ok(LC)
    "MF" -> Ok(MF)
    "PM" -> Ok(PM)
    "VC" -> Ok(VC)
    "WS" -> Ok(WS)
    "SM" -> Ok(SM)
    "ST" -> Ok(ST)
    "SA" -> Ok(SA)
    "SN" -> Ok(SN)
    "RS" -> Ok(RS)
    "SC" -> Ok(SC)
    "SL" -> Ok(SL)
    "SG" -> Ok(SG)
    "SX" -> Ok(SX)
    "SK" -> Ok(SK)
    "SI" -> Ok(SI)
    "SB" -> Ok(SB)
    "SO" -> Ok(SO)
    "ZA" -> Ok(ZA)
    "GS" -> Ok(GS)
    "SS" -> Ok(SS)
    "ES" -> Ok(ES)
    "LK" -> Ok(LK)
    "SD" -> Ok(SD)
    "SR" -> Ok(SR)
    "SJ" -> Ok(SJ)
    "SE" -> Ok(SE)
    "CH" -> Ok(CH)
    "SY" -> Ok(SY)
    "TW" -> Ok(TW)
    "TJ" -> Ok(TJ)
    "TZ" -> Ok(TZ)
    "TH" -> Ok(TH)
    "TL" -> Ok(TL)
    "TG" -> Ok(TG)
    "TK" -> Ok(TK)
    "TO" -> Ok(TO)
    "TT" -> Ok(TT)
    "TN" -> Ok(TN)
    "TR" -> Ok(TR)
    "TM" -> Ok(TM)
    "TC" -> Ok(TC)
    "TV" -> Ok(TV)
    "UG" -> Ok(UG)
    "UA" -> Ok(UA)
    "AE" -> Ok(AE)
    "GB" -> Ok(GB)
    "UM" -> Ok(UM)
    "US" -> Ok(US)
    "UY" -> Ok(UY)
    "UZ" -> Ok(UZ)
    "VU" -> Ok(VU)
    "VE" -> Ok(VE)
    "VN" -> Ok(VN)
    "VG" -> Ok(VG)
    "VI" -> Ok(VI)
    "WF" -> Ok(WF)
    "EH" -> Ok(EH)
    "YE" -> Ok(YE)
    "ZM" -> Ok(ZM)
    "ZW" -> Ok(ZW)
    _ -> Error(IncorrectAlpha2Code)
  }
}

/// standard ISO3166_1
/// source https://www.iso.org/obp/ui/#search/code/
pub fn to_alpha_3_code(country c: Country) -> Alpha3Code {
  case c {
    Afghanistan -> AFG
    AlandIslands -> ALA
    Albania -> ALB
    Algeria -> DZA
    AmericanSamoa -> ASM
    Andorra -> AND
    Angola -> AGO
    Anguilla -> AIA
    Antarctica -> ATA
    AntiguaAndBarbuda -> ATG
    Argentina -> ARG
    Armenia -> ARM
    Aruba -> ABW
    Australia -> AUS
    Austria -> AUT
    Azerbaijan -> AZE
    Bahamas -> BHS
    Bahrain -> BHR
    Bangladesh -> BGD
    Barbados -> BRB
    Belarus -> BLR
    Belgium -> BEL
    Belize -> BLZ
    Benin -> BEN
    Bermuda -> BMU
    Bhutan -> BTN
    Bolivia -> BOL
    BonaireSintEustatiusAndSaba -> BES
    BosniaAndHerzegovina -> BIH
    Botswana -> BWA
    BouvetIsland -> BVT
    Brazil -> BRA
    BritishIndianOceanTerritory -> IOT
    BruneiDarussalam -> BRN
    Bulgaria -> BGR
    BurkinaFaso -> BFA
    Burundi -> BDI
    CaboVerde -> CPV
    Cambodia -> KHM
    Cameroon -> CMR
    Canada -> CAN
    CaymanIslands -> CYM
    CentralAfricanRepublic -> CAF
    Chad -> TCD
    Chile -> CHL
    China -> CHN
    ChristmasIsland -> CXR
    CocosIslands -> CCK
    Colombia -> COL
    Comoros -> COM
    Congo -> COG
    CongoDemocraticRepublic -> COD
    CookIslands -> COK
    CostaRica -> CRI
    CoteDIvoire -> CIV
    Croatia -> HRV
    Cuba -> CUB
    Curacao -> CUW
    Cyprus -> CYP
    Czechia -> CZE
    Denmark -> DNK
    Djibouti -> DJI
    Dominica -> DMA
    DominicanRepublic -> DOM
    Ecuador -> ECU
    Egypt -> EGY
    ElSalvador -> SLV
    EquatorialGuinea -> GNQ
    Eritrea -> ERI
    Estonia -> EST
    Eswatini -> SWZ
    Ethiopia -> ETH
    FalklandIslands -> FLK
    FaroeIslands -> FRO
    Fiji -> FJI
    Finland -> FIN
    France -> FRA
    FrenchGuiana -> GUF
    FrenchPolynesia -> PYF
    FrenchSouthernTerritories -> ATF
    Gabon -> GAB
    Gambia -> GMB
    Georgia -> GEO
    Germany -> DEU
    Ghana -> GHA
    Gibraltar -> GIB
    Greece -> GRC
    Greenland -> GRL
    Grenada -> GRD
    Guadeloupe -> GLP
    Guam -> GUM
    Guatemala -> GTM
    Guernsey -> GGY
    Guinea -> GIN
    GuineaBissau -> GNB
    Guyana -> GUY
    Haiti -> HTI
    HeardIslandAndMcDonaldIslands -> HMD
    HolySee -> VAT
    Honduras -> HND
    HongKong -> HKG
    Hungary -> HUN
    Iceland -> ISL
    India -> IND
    Indonesia -> IDN
    Iran -> IRN
    Iraq -> IRQ
    Ireland -> IRL
    IsleOfMan -> IMN
    Israel -> ISR
    Italy -> ITA
    Jamaica -> JAM
    Japan -> JPN
    Jersey -> JEY
    Jordan -> JOR
    Kazakhstan -> KAZ
    Kenya -> KEN
    Kiribati -> KIR
    KoreaDemocraticPeoplesRepublic -> PRK
    KoreaRepublic -> KOR
    Kuwait -> KWT
    Kyrgyzstan -> KGZ
    LaoPeoplesDemocraticRepublic -> LAO
    Latvia -> LVA
    Lebanon -> LBN
    Lesotho -> LSO
    Liberia -> LBR
    Libya -> LBY
    Liechtenstein -> LIE
    Lithuania -> LTU
    Luxembourg -> LUX
    Macao -> MAC
    Madagascar -> MDG
    Malawi -> MWI
    Malaysia -> MYS
    Maldives -> MDV
    Mali -> MLI
    Malta -> MLT
    MarshallIslands -> MHL
    Martinique -> MTQ
    Mauritania -> MRT
    Mauritius -> MUS
    Mayotte -> MYT
    Mexico -> MEX
    Micronesia -> FSM
    Moldova -> MDA
    Monaco -> MCO
    Mongolia -> MNG
    Montenegro -> MNE
    Montserrat -> MSR
    Morocco -> MAR
    Mozambique -> MOZ
    Myanmar -> MMR
    Namibia -> NAM
    Nauru -> NRU
    Nepal -> NPL
    Netherlands -> NLD
    NewCaledonia -> NCL
    NewZealand -> NZL
    Nicaragua -> NIC
    Niger -> NER
    Nigeria -> NGA
    Niue -> NIU
    NorfolkIsland -> NFK
    NorthMacedonia -> MKD
    NorthernMarianaIslands -> MNP
    Norway -> NOR
    Oman -> OMN
    Pakistan -> PAK
    Palau -> PLW
    Palestine -> PSE
    Panama -> PAN
    PapuaNewGuinea -> PNG
    Paraguay -> PRY
    Peru -> PER
    Philippines -> PHL
    Pitcairn -> PCN
    Poland -> POL
    Portugal -> PRT
    PuertoRico -> PRI
    Qatar -> QAT
    Reunion -> REU
    Romania -> ROU
    RussianFederation -> RUS
    Rwanda -> RWA
    SaintBarthelemy -> BLM
    SaintHelenaAscensionTristanDaCunha -> SHN
    SaintKittsAndNevis -> KNA
    SaintLucia -> LCA
    SaintMartinFrenchPart -> MAF
    SaintPierreAndMiquelon -> SPM
    SaintVincentAndTheGrenadines -> VCT
    Samoa -> WSM
    SanMarino -> SMR
    SaoTomeAndPrincipe -> STP
    SaudiArabia -> SAU
    Senegal -> SEN
    Serbia -> SRB
    Seychelles -> SYC
    SierraLeone -> SLE
    Singapore -> SGP
    SintMaartenDutchPart -> SXM
    Slovakia -> SVK
    Slovenia -> SVN
    SolomonIslands -> SLB
    Somalia -> SOM
    SouthAfrica -> ZAF
    SouthGeorgiaSouthSandwichIslands -> SGS
    SouthSudan -> SSD
    Spain -> ESP
    SriLanka -> LKA
    Sudan -> SDN
    Suriname -> SUR
    SvalbardJanMayen -> SJM
    Sweden -> SWE
    Switzerland -> CHE
    SyrianArabRepublic -> SYR
    TaiwanProvinceOfChina -> TWN
    Tajikistan -> TJK
    Tanzania -> TZA
    Thailand -> THA
    TimorLeste -> TLS
    Togo -> TGO
    Tokelau -> TKL
    Tonga -> TON
    TrinidadAndTobago -> TTO
    Tunisia -> TUN
    Turkey -> TUR
    Turkmenistan -> TKM
    TurksAndCaicosIslands -> TCA
    Tuvalu -> TUV
    Uganda -> UGA
    Ukraine -> UKR
    UnitedArabEmirates -> ARE
    UnitedKingdom -> GBR
    UnitedStatesOfAmerica -> USA
    UnitedStatesOutlyingIslands -> UMI
    Uruguay -> URY
    Uzbekistan -> UZB
    Vanuatu -> VUT
    Venezuela -> VEN
    VietNam -> VNM
    VirginIslandsBritish -> VGB
    VirginIslandsUS -> VIR
    WallisAndFutuna -> WLF
    WesternSahara -> ESH
    Yemen -> YEM
    Zambia -> ZMB
    Zimbabwe -> ZWE
  }
}

/// standard ISO3166_1
/// source https://www.iso.org/obp/ui/#search/code/
pub fn from_alpha_3_code(code a: Alpha3Code) -> Country {
  case a {
    AFG -> Afghanistan
    ALA -> AlandIslands
    ALB -> Albania
    DZA -> Algeria
    ASM -> AmericanSamoa
    AND -> Andorra
    AGO -> Angola
    AIA -> Anguilla
    ATA -> Antarctica
    ATG -> AntiguaAndBarbuda
    ARG -> Argentina
    ARM -> Armenia
    ABW -> Aruba
    AUS -> Australia
    AUT -> Austria
    AZE -> Azerbaijan
    BHS -> Bahamas
    BHR -> Bahrain
    BGD -> Bangladesh
    BRB -> Barbados
    BLR -> Belarus
    BEL -> Belgium
    BLZ -> Belize
    BEN -> Benin
    BMU -> Bermuda
    BTN -> Bhutan
    BOL -> Bolivia
    BES -> BonaireSintEustatiusAndSaba
    BIH -> BosniaAndHerzegovina
    BWA -> Botswana
    BVT -> BouvetIsland
    BRA -> Brazil
    IOT -> BritishIndianOceanTerritory
    BRN -> BruneiDarussalam
    BGR -> Bulgaria
    BFA -> BurkinaFaso
    BDI -> Burundi
    CPV -> CaboVerde
    KHM -> Cambodia
    CMR -> Cameroon
    CAN -> Canada
    CYM -> CaymanIslands
    CAF -> CentralAfricanRepublic
    TCD -> Chad
    CHL -> Chile
    CHN -> China
    CXR -> ChristmasIsland
    CCK -> CocosIslands
    COL -> Colombia
    COM -> Comoros
    COG -> Congo
    COD -> CongoDemocraticRepublic
    COK -> CookIslands
    CRI -> CostaRica
    CIV -> CoteDIvoire
    HRV -> Croatia
    CUB -> Cuba
    CUW -> Curacao
    CYP -> Cyprus
    CZE -> Czechia
    DNK -> Denmark
    DJI -> Djibouti
    DMA -> Dominica
    DOM -> DominicanRepublic
    ECU -> Ecuador
    EGY -> Egypt
    SLV -> ElSalvador
    GNQ -> EquatorialGuinea
    ERI -> Eritrea
    EST -> Estonia
    SWZ -> Eswatini
    ETH -> Ethiopia
    FLK -> FalklandIslands
    FRO -> FaroeIslands
    FJI -> Fiji
    FIN -> Finland
    FRA -> France
    GUF -> FrenchGuiana
    PYF -> FrenchPolynesia
    ATF -> FrenchSouthernTerritories
    GAB -> Gabon
    GMB -> Gambia
    GEO -> Georgia
    DEU -> Germany
    GHA -> Ghana
    GIB -> Gibraltar
    GRC -> Greece
    GRL -> Greenland
    GRD -> Grenada
    GLP -> Guadeloupe
    GUM -> Guam
    GTM -> Guatemala
    GGY -> Guernsey
    GIN -> Guinea
    GNB -> GuineaBissau
    GUY -> Guyana
    HTI -> Haiti
    HMD -> HeardIslandAndMcDonaldIslands
    VAT -> HolySee
    HND -> Honduras
    HKG -> HongKong
    HUN -> Hungary
    ISL -> Iceland
    IND -> India
    IDN -> Indonesia
    IRN -> Iran
    IRQ -> Iraq
    IRL -> Ireland
    IMN -> IsleOfMan
    ISR -> Israel
    ITA -> Italy
    JAM -> Jamaica
    JPN -> Japan
    JEY -> Jersey
    JOR -> Jordan
    KAZ -> Kazakhstan
    KEN -> Kenya
    KIR -> Kiribati
    PRK -> KoreaDemocraticPeoplesRepublic
    KOR -> KoreaRepublic
    KWT -> Kuwait
    KGZ -> Kyrgyzstan
    LAO -> LaoPeoplesDemocraticRepublic
    LVA -> Latvia
    LBN -> Lebanon
    LSO -> Lesotho
    LBR -> Liberia
    LBY -> Libya
    LIE -> Liechtenstein
    LTU -> Lithuania
    LUX -> Luxembourg
    MAC -> Macao
    MDG -> Madagascar
    MWI -> Malawi
    MYS -> Malaysia
    MDV -> Maldives
    MLI -> Mali
    MLT -> Malta
    MHL -> MarshallIslands
    MTQ -> Martinique
    MRT -> Mauritania
    MUS -> Mauritius
    MYT -> Mayotte
    MEX -> Mexico
    FSM -> Micronesia
    MDA -> Moldova
    MCO -> Monaco
    MNG -> Mongolia
    MNE -> Montenegro
    MSR -> Montserrat
    MAR -> Morocco
    MOZ -> Mozambique
    MMR -> Myanmar
    NAM -> Namibia
    NRU -> Nauru
    NPL -> Nepal
    NLD -> Netherlands
    NCL -> NewCaledonia
    NZL -> NewZealand
    NIC -> Nicaragua
    NER -> Niger
    NGA -> Nigeria
    NIU -> Niue
    NFK -> NorfolkIsland
    MKD -> NorthMacedonia
    MNP -> NorthernMarianaIslands
    NOR -> Norway
    OMN -> Oman
    PAK -> Pakistan
    PLW -> Palau
    PSE -> Palestine
    PAN -> Panama
    PNG -> PapuaNewGuinea
    PRY -> Paraguay
    PER -> Peru
    PHL -> Philippines
    PCN -> Pitcairn
    POL -> Poland
    PRT -> Portugal
    PRI -> PuertoRico
    QAT -> Qatar
    REU -> Reunion
    ROU -> Romania
    RUS -> RussianFederation
    RWA -> Rwanda
    BLM -> SaintBarthelemy
    SHN -> SaintHelenaAscensionTristanDaCunha
    KNA -> SaintKittsAndNevis
    LCA -> SaintLucia
    MAF -> SaintMartinFrenchPart
    SPM -> SaintPierreAndMiquelon
    VCT -> SaintVincentAndTheGrenadines
    WSM -> Samoa
    SMR -> SanMarino
    STP -> SaoTomeAndPrincipe
    SAU -> SaudiArabia
    SEN -> Senegal
    SRB -> Serbia
    SYC -> Seychelles
    SLE -> SierraLeone
    SGP -> Singapore
    SXM -> SintMaartenDutchPart
    SVK -> Slovakia
    SVN -> Slovenia
    SLB -> SolomonIslands
    SOM -> Somalia
    ZAF -> SouthAfrica
    SGS -> SouthGeorgiaSouthSandwichIslands
    SSD -> SouthSudan
    ESP -> Spain
    LKA -> SriLanka
    SDN -> Sudan
    SUR -> Suriname
    SJM -> SvalbardJanMayen
    SWE -> Sweden
    CHE -> Switzerland
    SYR -> SyrianArabRepublic
    TWN -> TaiwanProvinceOfChina
    TJK -> Tajikistan
    TZA -> Tanzania
    THA -> Thailand
    TLS -> TimorLeste
    TGO -> Togo
    TKL -> Tokelau
    TON -> Tonga
    TTO -> TrinidadAndTobago
    TUN -> Tunisia
    TUR -> Turkey
    TKM -> Turkmenistan
    TCA -> TurksAndCaicosIslands
    TUV -> Tuvalu
    UGA -> Uganda
    UKR -> Ukraine
    ARE -> UnitedArabEmirates
    GBR -> UnitedKingdom
    USA -> UnitedStatesOfAmerica
    UMI -> UnitedStatesOutlyingIslands
    URY -> Uruguay
    UZB -> Uzbekistan
    VUT -> Vanuatu
    VEN -> Venezuela
    VNM -> VietNam
    VGB -> VirginIslandsBritish
    VIR -> VirginIslandsUS
    WLF -> WallisAndFutuna
    ESH -> WesternSahara
    YEM -> Yemen
    ZMB -> Zambia
    ZWE -> Zimbabwe
  }
}

/// standard ISO3166_1
/// source https://www.iso.org/obp/ui/#search/code/
pub fn alpha_3_code_to_string(code a: Alpha3Code) -> String {
  case a {
    AFG -> "AFG"
    ALA -> "ALA"
    ALB -> "ALB"
    DZA -> "DZA"
    ASM -> "ASM"
    AND -> "AND"
    AGO -> "AGO"
    AIA -> "AIA"
    ATA -> "ATA"
    ATG -> "ATG"
    ARG -> "ARG"
    ARM -> "ARM"
    ABW -> "ABW"
    AUS -> "AUS"
    AUT -> "AUT"
    AZE -> "AZE"
    BHS -> "BHS"
    BHR -> "BHR"
    BGD -> "BGD"
    BRB -> "BRB"
    BLR -> "BLR"
    BEL -> "BEL"
    BLZ -> "BLZ"
    BEN -> "BEN"
    BMU -> "BMU"
    BTN -> "BTN"
    BOL -> "BOL"
    BES -> "BES"
    BIH -> "BIH"
    BWA -> "BWA"
    BVT -> "BVT"
    BRA -> "BRA"
    IOT -> "IOT"
    BRN -> "BRN"
    BGR -> "BGR"
    BFA -> "BFA"
    BDI -> "BDI"
    CPV -> "CPV"
    KHM -> "KHM"
    CMR -> "CMR"
    CAN -> "CAN"
    CYM -> "CYM"
    CAF -> "CAF"
    TCD -> "TCD"
    CHL -> "CHL"
    CHN -> "CHN"
    CXR -> "CXR"
    CCK -> "CCK"
    COL -> "COL"
    COM -> "COM"
    COG -> "COG"
    COD -> "COD"
    COK -> "COK"
    CRI -> "CRI"
    CIV -> "CIV"
    HRV -> "HRV"
    CUB -> "CUB"
    CUW -> "CUW"
    CYP -> "CYP"
    CZE -> "CZE"
    DNK -> "DNK"
    DJI -> "DJI"
    DMA -> "DMA"
    DOM -> "DOM"
    ECU -> "ECU"
    EGY -> "EGY"
    SLV -> "SLV"
    GNQ -> "GNQ"
    ERI -> "ERI"
    EST -> "EST"
    SWZ -> "SWZ"
    ETH -> "ETH"
    FLK -> "FLK"
    FRO -> "FRO"
    FJI -> "FJI"
    FIN -> "FIN"
    FRA -> "FRA"
    GUF -> "GUF"
    PYF -> "PYF"
    ATF -> "ATF"
    GAB -> "GAB"
    GMB -> "GMB"
    GEO -> "GEO"
    DEU -> "DEU"
    GHA -> "GHA"
    GIB -> "GIB"
    GRC -> "GRC"
    GRL -> "GRL"
    GRD -> "GRD"
    GLP -> "GLP"
    GUM -> "GUM"
    GTM -> "GTM"
    GGY -> "GGY"
    GIN -> "GIN"
    GNB -> "GNB"
    GUY -> "GUY"
    HTI -> "HTI"
    HMD -> "HMD"
    VAT -> "VAT"
    HND -> "HND"
    HKG -> "HKG"
    HUN -> "HUN"
    ISL -> "ISL"
    IND -> "IND"
    IDN -> "IDN"
    IRN -> "IRN"
    IRQ -> "IRQ"
    IRL -> "IRL"
    IMN -> "IMN"
    ISR -> "ISR"
    ITA -> "ITA"
    JAM -> "JAM"
    JPN -> "JPN"
    JEY -> "JEY"
    JOR -> "JOR"
    KAZ -> "KAZ"
    KEN -> "KEN"
    KIR -> "KIR"
    PRK -> "PRK"
    KOR -> "KOR"
    KWT -> "KWT"
    KGZ -> "KGZ"
    LAO -> "LAO"
    LVA -> "LVA"
    LBN -> "LBN"
    LSO -> "LSO"
    LBR -> "LBR"
    LBY -> "LBY"
    LIE -> "LIE"
    LTU -> "LTU"
    LUX -> "LUX"
    MAC -> "MAC"
    MDG -> "MDG"
    MWI -> "MWI"
    MYS -> "MYS"
    MDV -> "MDV"
    MLI -> "MLI"
    MLT -> "MLT"
    MHL -> "MHL"
    MTQ -> "MTQ"
    MRT -> "MRT"
    MUS -> "MUS"
    MYT -> "MYT"
    MEX -> "MEX"
    FSM -> "FSM"
    MDA -> "MDA"
    MCO -> "MCO"
    MNG -> "MNG"
    MNE -> "MNE"
    MSR -> "MSR"
    MAR -> "MAR"
    MOZ -> "MOZ"
    MMR -> "MMR"
    NAM -> "NAM"
    NRU -> "NRU"
    NPL -> "NPL"
    NLD -> "NLD"
    NCL -> "NCL"
    NZL -> "NZL"
    NIC -> "NIC"
    NER -> "NER"
    NGA -> "NGA"
    NIU -> "NIU"
    NFK -> "NFK"
    MKD -> "MKD"
    MNP -> "MNP"
    NOR -> "NOR"
    OMN -> "OMN"
    PAK -> "PAK"
    PLW -> "PLW"
    PSE -> "PSE"
    PAN -> "PAN"
    PNG -> "PNG"
    PRY -> "PRY"
    PER -> "PER"
    PHL -> "PHL"
    PCN -> "PCN"
    POL -> "POL"
    PRT -> "PRT"
    PRI -> "PRI"
    QAT -> "QAT"
    REU -> "REU"
    ROU -> "ROU"
    RUS -> "RUS"
    RWA -> "RWA"
    BLM -> "BLM"
    SHN -> "SHN"
    KNA -> "KNA"
    LCA -> "LCA"
    MAF -> "MAF"
    SPM -> "SPM"
    VCT -> "VCT"
    WSM -> "WSM"
    SMR -> "SMR"
    STP -> "STP"
    SAU -> "SAU"
    SEN -> "SEN"
    SRB -> "SRB"
    SYC -> "SYC"
    SLE -> "SLE"
    SGP -> "SGP"
    SXM -> "SXM"
    SVK -> "SVK"
    SVN -> "SVN"
    SLB -> "SLB"
    SOM -> "SOM"
    ZAF -> "ZAF"
    SGS -> "SGS"
    SSD -> "SSD"
    ESP -> "ESP"
    LKA -> "LKA"
    SDN -> "SDN"
    SUR -> "SUR"
    SJM -> "SJM"
    SWE -> "SWE"
    CHE -> "CHE"
    SYR -> "SYR"
    TWN -> "TWN"
    TJK -> "TJK"
    TZA -> "TZA"
    THA -> "THA"
    TLS -> "TLS"
    TGO -> "TGO"
    TKL -> "TKL"
    TON -> "TON"
    TTO -> "TTO"
    TUN -> "TUN"
    TUR -> "TUR"
    TKM -> "TKM"
    TCA -> "TCA"
    TUV -> "TUV"
    UGA -> "UGA"
    UKR -> "UKR"
    ARE -> "ARE"
    GBR -> "GBR"
    UMI -> "UMI"
    USA -> "USA"
    URY -> "URY"
    UZB -> "UZB"
    VUT -> "VUT"
    VEN -> "VEN"
    VNM -> "VNM"
    VGB -> "VGB"
    VIR -> "VIR"
    WLF -> "WLF"
    ESH -> "ESH"
    YEM -> "YEM"
    ZMB -> "ZMB"
    ZWE -> "ZWE"
  }
}

/// standard ISO3166_1
/// source https://www.iso.org/obp/ui/#search/code/
pub fn alpha_3_code_from_string(
  code code: String,
) -> Result(Alpha3Code, CountryError) {
  case code {
    "AFG" -> Ok(AFG)
    "ALA" -> Ok(ALA)
    "ALB" -> Ok(ALB)
    "DZA" -> Ok(DZA)
    "ASM" -> Ok(ASM)
    "AND" -> Ok(AND)
    "AGO" -> Ok(AGO)
    "AIA" -> Ok(AIA)
    "ATA" -> Ok(ATA)
    "ATG" -> Ok(ATG)
    "ARG" -> Ok(ARG)
    "ARM" -> Ok(ARM)
    "ABW" -> Ok(ABW)
    "AUS" -> Ok(AUS)
    "AUT" -> Ok(AUT)
    "AZE" -> Ok(AZE)
    "BHS" -> Ok(BHS)
    "BHR" -> Ok(BHR)
    "BGD" -> Ok(BGD)
    "BRB" -> Ok(BRB)
    "BLR" -> Ok(BLR)
    "BEL" -> Ok(BEL)
    "BLZ" -> Ok(BLZ)
    "BEN" -> Ok(BEN)
    "BMU" -> Ok(BMU)
    "BTN" -> Ok(BTN)
    "BOL" -> Ok(BOL)
    "BES" -> Ok(BES)
    "BIH" -> Ok(BIH)
    "BWA" -> Ok(BWA)
    "BVT" -> Ok(BVT)
    "BRA" -> Ok(BRA)
    "IOT" -> Ok(IOT)
    "BRN" -> Ok(BRN)
    "BGR" -> Ok(BGR)
    "BFA" -> Ok(BFA)
    "BDI" -> Ok(BDI)
    "CPV" -> Ok(CPV)
    "KHM" -> Ok(KHM)
    "CMR" -> Ok(CMR)
    "CAN" -> Ok(CAN)
    "CYM" -> Ok(CYM)
    "CAF" -> Ok(CAF)
    "TCD" -> Ok(TCD)
    "CHL" -> Ok(CHL)
    "CHN" -> Ok(CHN)
    "CXR" -> Ok(CXR)
    "CCK" -> Ok(CCK)
    "COL" -> Ok(COL)
    "COM" -> Ok(COM)
    "COG" -> Ok(COG)
    "COD" -> Ok(COD)
    "COK" -> Ok(COK)
    "CRI" -> Ok(CRI)
    "CIV" -> Ok(CIV)
    "HRV" -> Ok(HRV)
    "CUB" -> Ok(CUB)
    "CUW" -> Ok(CUW)
    "CYP" -> Ok(CYP)
    "CZE" -> Ok(CZE)
    "DNK" -> Ok(DNK)
    "DJI" -> Ok(DJI)
    "DMA" -> Ok(DMA)
    "DOM" -> Ok(DOM)
    "ECU" -> Ok(ECU)
    "EGY" -> Ok(EGY)
    "SLV" -> Ok(SLV)
    "GNQ" -> Ok(GNQ)
    "ERI" -> Ok(ERI)
    "EST" -> Ok(EST)
    "SWZ" -> Ok(SWZ)
    "ETH" -> Ok(ETH)
    "FLK" -> Ok(FLK)
    "FRO" -> Ok(FRO)
    "FJI" -> Ok(FJI)
    "FIN" -> Ok(FIN)
    "FRA" -> Ok(FRA)
    "GUF" -> Ok(GUF)
    "PYF" -> Ok(PYF)
    "ATF" -> Ok(ATF)
    "GAB" -> Ok(GAB)
    "GMB" -> Ok(GMB)
    "GEO" -> Ok(GEO)
    "DEU" -> Ok(DEU)
    "GHA" -> Ok(GHA)
    "GIB" -> Ok(GIB)
    "GRC" -> Ok(GRC)
    "GRL" -> Ok(GRL)
    "GRD" -> Ok(GRD)
    "GLP" -> Ok(GLP)
    "GUM" -> Ok(GUM)
    "GTM" -> Ok(GTM)
    "GGY" -> Ok(GGY)
    "GIN" -> Ok(GIN)
    "GNB" -> Ok(GNB)
    "GUY" -> Ok(GUY)
    "HTI" -> Ok(HTI)
    "HMD" -> Ok(HMD)
    "VAT" -> Ok(VAT)
    "HND" -> Ok(HND)
    "HKG" -> Ok(HKG)
    "HUN" -> Ok(HUN)
    "ISL" -> Ok(ISL)
    "IND" -> Ok(IND)
    "IDN" -> Ok(IDN)
    "IRN" -> Ok(IRN)
    "IRQ" -> Ok(IRQ)
    "IRL" -> Ok(IRL)
    "IMN" -> Ok(IMN)
    "ISR" -> Ok(ISR)
    "ITA" -> Ok(ITA)
    "JAM" -> Ok(JAM)
    "JPN" -> Ok(JPN)
    "JEY" -> Ok(JEY)
    "JOR" -> Ok(JOR)
    "KAZ" -> Ok(KAZ)
    "KEN" -> Ok(KEN)
    "KIR" -> Ok(KIR)
    "PRK" -> Ok(PRK)
    "KOR" -> Ok(KOR)
    "KWT" -> Ok(KWT)
    "KGZ" -> Ok(KGZ)
    "LAO" -> Ok(LAO)
    "LVA" -> Ok(LVA)
    "LBN" -> Ok(LBN)
    "LSO" -> Ok(LSO)
    "LBR" -> Ok(LBR)
    "LBY" -> Ok(LBY)
    "LIE" -> Ok(LIE)
    "LTU" -> Ok(LTU)
    "LUX" -> Ok(LUX)
    "MAC" -> Ok(MAC)
    "MDG" -> Ok(MDG)
    "MWI" -> Ok(MWI)
    "MYS" -> Ok(MYS)
    "MDV" -> Ok(MDV)
    "MLI" -> Ok(MLI)
    "MLT" -> Ok(MLT)
    "MHL" -> Ok(MHL)
    "MTQ" -> Ok(MTQ)
    "MRT" -> Ok(MRT)
    "MUS" -> Ok(MUS)
    "MYT" -> Ok(MYT)
    "MEX" -> Ok(MEX)
    "FSM" -> Ok(FSM)
    "MDA" -> Ok(MDA)
    "MCO" -> Ok(MCO)
    "MNG" -> Ok(MNG)
    "MNE" -> Ok(MNE)
    "MSR" -> Ok(MSR)
    "MAR" -> Ok(MAR)
    "MOZ" -> Ok(MOZ)
    "MMR" -> Ok(MMR)
    "NAM" -> Ok(NAM)
    "NRU" -> Ok(NRU)
    "NPL" -> Ok(NPL)
    "NLD" -> Ok(NLD)
    "NCL" -> Ok(NCL)
    "NZL" -> Ok(NZL)
    "NIC" -> Ok(NIC)
    "NER" -> Ok(NER)
    "NGA" -> Ok(NGA)
    "NIU" -> Ok(NIU)
    "NFK" -> Ok(NFK)
    "MKD" -> Ok(MKD)
    "MNP" -> Ok(MNP)
    "NOR" -> Ok(NOR)
    "OMN" -> Ok(OMN)
    "PAK" -> Ok(PAK)
    "PLW" -> Ok(PLW)
    "PSE" -> Ok(PSE)
    "PAN" -> Ok(PAN)
    "PNG" -> Ok(PNG)
    "PRY" -> Ok(PRY)
    "PER" -> Ok(PER)
    "PHL" -> Ok(PHL)
    "PCN" -> Ok(PCN)
    "POL" -> Ok(POL)
    "PRT" -> Ok(PRT)
    "PRI" -> Ok(PRI)
    "QAT" -> Ok(QAT)
    "REU" -> Ok(REU)
    "ROU" -> Ok(ROU)
    "RUS" -> Ok(RUS)
    "RWA" -> Ok(RWA)
    "BLM" -> Ok(BLM)
    "SHN" -> Ok(SHN)
    "KNA" -> Ok(KNA)
    "LCA" -> Ok(LCA)
    "MAF" -> Ok(MAF)
    "SPM" -> Ok(SPM)
    "VCT" -> Ok(VCT)
    "WSM" -> Ok(WSM)
    "SMR" -> Ok(SMR)
    "STP" -> Ok(STP)
    "SAU" -> Ok(SAU)
    "SEN" -> Ok(SEN)
    "SRB" -> Ok(SRB)
    "SYC" -> Ok(SYC)
    "SLE" -> Ok(SLE)
    "SGP" -> Ok(SGP)
    "SXM" -> Ok(SXM)
    "SVK" -> Ok(SVK)
    "SVN" -> Ok(SVN)
    "SLB" -> Ok(SLB)
    "SOM" -> Ok(SOM)
    "ZAF" -> Ok(ZAF)
    "SGS" -> Ok(SGS)
    "SSD" -> Ok(SSD)
    "ESP" -> Ok(ESP)
    "LKA" -> Ok(LKA)
    "SDN" -> Ok(SDN)
    "SUR" -> Ok(SUR)
    "SJM" -> Ok(SJM)
    "SWE" -> Ok(SWE)
    "CHE" -> Ok(CHE)
    "SYR" -> Ok(SYR)
    "TWN" -> Ok(TWN)
    "TJK" -> Ok(TJK)
    "TZA" -> Ok(TZA)
    "THA" -> Ok(THA)
    "TLS" -> Ok(TLS)
    "TGO" -> Ok(TGO)
    "TKL" -> Ok(TKL)
    "TON" -> Ok(TON)
    "TTO" -> Ok(TTO)
    "TUN" -> Ok(TUN)
    "TUR" -> Ok(TUR)
    "TKM" -> Ok(TKM)
    "TCA" -> Ok(TCA)
    "TUV" -> Ok(TUV)
    "UGA" -> Ok(UGA)
    "UKR" -> Ok(UKR)
    "ARE" -> Ok(ARE)
    "GBR" -> Ok(GBR)
    "UMI" -> Ok(UMI)
    "USA" -> Ok(USA)
    "URY" -> Ok(URY)
    "UZB" -> Ok(UZB)
    "VUT" -> Ok(VUT)
    "VEN" -> Ok(VEN)
    "VNM" -> Ok(VNM)
    "VGB" -> Ok(VGB)
    "VIR" -> Ok(VIR)
    "WLF" -> Ok(WLF)
    "ESH" -> Ok(ESH)
    "YEM" -> Ok(YEM)
    "ZMB" -> Ok(ZMB)
    "ZWE" -> Ok(ZWE)
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
