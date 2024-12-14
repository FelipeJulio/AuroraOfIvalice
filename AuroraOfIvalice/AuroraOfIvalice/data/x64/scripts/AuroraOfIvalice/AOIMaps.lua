-- Aurora of Ivalice: Made by FehDead 

-------------------------------------
-- MAPS INFO
-------------------------------------
-- id           map id
-- hasCycle     apply mod on map or not
-- preset       preset to be applyed
-- name         map name
-- []           map region
-------------------------------------

local AOIMaps = {
    ["Archades"] = {{
        id = 635,
        hasCycle = true,
        preset = "sunny",
        name = "Grand Arcade"
    }, {
        id = 636,
        hasCycle = true,
        preset = "sunny",
        name = "Highgarden Terrace"
    }, {
        id = 640,
        hasCycle = true,
        preset = "sunny",
        name = "Molberry"
    }, {
        id = 641,
        hasCycle = true,
        preset = "sunny",
        name = "Trant"
    }, {
        id = 642,
        hasCycle = false,
        preset = "sunny",
        name = "Charlotte's Magickery"
    }, {
        id = 643,
        hasCycle = false,
        preset = "sunny",
        name = "Bulward's Technicks"
    }, {
        id = 745,
        hasCycle = true,
        preset = "sunny",
        name = "Nilbasse"
    }, {
        id = 746,
        hasCycle = true,
        preset = "sunny",
        name = "Rienna"
    }, {
        id = 747,
        hasCycle = false,
        preset = "sunny",
        name = "Vint's Armaments"
    }, {
        id = 748,
        hasCycle = false,
        preset = "sunny",
        name = "Granch's Requisites"
    }, {
        id = 749,
        hasCycle = false,
        preset = "sunny",
        name = "Lebleu's Gambits"
    }, {
        id = 756,
        hasCycle = true,
        preset = "sunny",
        name = "Tsenoble"
    }, {
        id = 794,
        hasCycle = false,
        preset = "sunny",
        name = "Aerodrome (Archades)"
    }},
    ["Bahamut"] = {{
        id = 774,
        hasCycle = false,
        preset = "sunny",
        name = "Periphery"
    }, {
        id = 775,
        hasCycle = false,
        preset = "sunny",
        name = "Catwalk"
    }, {
        id = 776,
        hasCycle = false,
        preset = "sunny",
        name = "Antechamber (North / South / West)"
    }, {
        id = 777,
        hasCycle = false,
        preset = "sunny",
        name = "Antechamber (East)"
    }, {
        id = 779,
        hasCycle = false,
        preset = "sunny",
        name = "Central Lift"
    }, {
        id = 782,
        hasCycle = false,
        preset = "sunny",
        name = "Central Shaft"
    }, {
        id = 785,
        hasCycle = false,
        preset = "sunny",
        name = "Cannon Superstructure"
    }},
    ["Balfonheim"] = {{
        id = 797,
        hasCycle = false,
        preset = "sunny",
        name = "Aerodrome (Balfonheim)"
    }, {
        id = 823,
        hasCycle = true,
        preset = "sunny",
        name = "Sea Breeze Lane"
    }, {
        id = 824,
        hasCycle = true,
        preset = "sunny",
        name = "Gallerina Marketplace"
    }, {
        id = 825,
        hasCycle = true,
        preset = "sunny",
        name = "Quayside Court"
    }, {
        id = 826,
        hasCycle = true,
        preset = "sunny",
        name = "Saccio Lane"
    }, {
        id = 827,
        hasCycle = true,
        preset = "sunny",
        name = "Chivany Breakwater"
    }, {
        id = 828,
        hasCycle = true,
        preset = "sunny",
        name = "Canal Lane"
    }, {
        id = 833,
        hasCycle = false,
        preset = "sunny",
        name = "Beruny's Armaments"
    }, {
        id = 834,
        hasCycle = false,
        preset = "sunny",
        name = "Odo's Technicks"
    }, {
        id = 835,
        hasCycle = false,
        preset = "sunny",
        name = "Port Villa (1)"
    }, {
        id = 836,
        hasCycle = false,
        preset = "sunny",
        name = "The Whitecap"
    }, {
        id = 837,
        hasCycle = false,
        preset = "sunny",
        name = "Port Villa (2)"
    }},
    ["Barheim Passage"] = {{
        id = 53,
        hasCycle = false,
        preset = "sunny",
        name = "The Lightworks"
    }, {
        id = 54,
        hasCycle = false,
        preset = "sunny",
        name = "Great Eastern Passage"
    }, {
        id = 55,
        hasCycle = false,
        preset = "sunny",
        name = "Op Sector 36"
    }, {
        id = 56,
        hasCycle = false,
        preset = "sunny",
        name = "Special Op Sector 3"
    }, {
        id = 57,
        hasCycle = false,
        preset = "sunny",
        name = "Op Sector 37"
    }, {
        id = 58,
        hasCycle = false,
        preset = "sunny",
        name = "Op Sector 29"
    }, {
        id = 61,
        hasCycle = false,
        preset = "sunny",
        name = "Great Central Passage"
    }, {
        id = 62,
        hasCycle = false,
        preset = "sunny",
        name = "The Zeviah Subterrane"
    }, {
        id = 66,
        hasCycle = false,
        preset = "sunny",
        name = "North-South Junction"
    }, {
        id = 69,
        hasCycle = false,
        preset = "sunny",
        name = "Terminus No. 4"
    }, {
        id = 70,
        hasCycle = false,
        preset = "sunny",
        name = "Terminus No. 4 Adjunct"
    }, {
        id = 71,
        hasCycle = false,
        preset = "sunny",
        name = "Terminus No. 7"
    }, {
        id = 891,
        hasCycle = false,
        preset = "sunny",
        name = "East-West Bypass"
    }, {
        id = 892,
        hasCycle = false,
        preset = "sunny",
        name = "The Zeviah Span"
    }, {
        id = 893,
        hasCycle = false,
        preset = "sunny",
        name = "West Annex"
    }, {
        id = 894,
        hasCycle = false,
        preset = "sunny",
        name = "Terminus No. 7 Adjunct"
    }, {
        id = 895,
        hasCycle = false,
        preset = "sunny",
        name = "Special Op Sector 5"
    }},
    ["Bhujerba"] = {{
        id = 791,
        hasCycle = false,
        preset = "bhujerba",
        name = "Aerodrome (Bhujerba)"
    }, {
        id = 803,
        hasCycle = true,
        preset = "bhujerba",
        name = "Travica Way"
    }, {
        id = 804,
        hasCycle = true,
        preset = "bhujerba",
        name = "Cloudborne Row"
    }, {
        id = 805,
        hasCycle = true,
        preset = "bhujerba",
        name = "Miners' End"
    }, {
        id = 806,
        hasCycle = true,
        preset = "bhujerba",
        name = "Lhusu Square"
    }, {
        id = 809,
        hasCycle = true,
        preset = "bhujerba",
        name = "Khus Skygrounds"
    }, {
        id = 810,
        hasCycle = true,
        preset = "bhujerba",
        name = "Kaff Terrace"
    }, {
        id = 813,
        hasCycle = false,
        preset = "bhujerba",
        name = "Targe's Arms"
    }, {
        id = 814,
        hasCycle = false,
        preset = "bhujerba",
        name = "Rithil's Protectives"
    }, {
        id = 816,
        hasCycle = false,
        preset = "bhujerba",
        name = "Mait's Magicks"
    }, {
        id = 817,
        hasCycle = false,
        preset = "bhujerba",
        name = "Clio's Technicks"
    }, {
        id = 818,
        hasCycle = false,
        preset = "bhujerba",
        name = "Bashketi's Gambits"
    }, {
        id = 819,
        hasCycle = false,
        preset = "bhujerba",
        name = "The Staras Residence"
    }, {
        id = 820,
        hasCycle = false,
        preset = "bhujerba",
        name = "The Cloudborne"
    }},
    ["Cerobi Steppe"] = {{
        id = 497,
        hasCycle = true,
        preset = "sunny",
        name = "Old Elanise Road"
    }, {
        id = 498,
        hasCycle = true,
        preset = "sunny",
        name = "Crossfield"
    }, {
        id = 499,
        hasCycle = true,
        preset = "sunny",
        name = "The Terraced Bank"
    }, {
        id = 500,
        hasCycle = true,
        preset = "sunny",
        name = "Journey's Rest"
    }, {
        id = 503,
        hasCycle = true,
        preset = "sunny",
        name = "North Liavell Hills"
    }, {
        id = 504,
        hasCycle = true,
        preset = "sunny",
        name = "South Liavell Hills"
    }, {
        id = 505,
        hasCycle = true,
        preset = "sunny",
        name = "Feddik River"
    }, {
        id = 506,
        hasCycle = true,
        preset = "sunny",
        name = "The Northsward"
    }},
    ["Dalmasca Estersand"] = {{
        id = 129,
        hasCycle = true,
        preset = "ambar",
        name = "South Bank Village"
    }, {
        id = 130,
        hasCycle = true,
        preset = "ambar",
        name = "North Bank Village"
    }, {
        id = 132,
        hasCycle = true,
        preset = "ambar",
        name = "The Yoma"
    }, {
        id = 133,
        hasCycle = true,
        preset = "ambar",
        name = "Broken Sands"
    }, {
        id = 227,
        hasCycle = true,
        preset = "ambar",
        name = "The Stepping"
    }, {
        id = 228,
        hasCycle = true,
        preset = "ambar",
        name = "Yardang Labyrinth"
    }, {
        id = 229,
        hasCycle = true,
        preset = "ambar",
        name = "Sand-swept Naze"
    }, {
        id = 230,
        hasCycle = true,
        preset = "ambar",
        name = "Banks of the Nebra"
    }, {
        id = 231,
        hasCycle = true,
        preset = "ambar",
        name = "Passage Entrance"
    }, {
        id = 232,
        hasCycle = true,
        preset = "ambar",
        name = "Murmuring Defile"
    }, {
        id = 233,
        hasCycle = true,
        preset = "ambar",
        name = "Outpost"
    }},
    ["Dalmasca Westersand"] = {{
        id = 345,
        hasCycle = true,
        preset = "ambar",
        name = "Galtea Downs"
    }, {
        id = 346,
        hasCycle = true,
        preset = "ambar",
        name = "Corridor of Sand"
    }, {
        id = 347,
        hasCycle = true,
        preset = "ambar",
        name = "Shimmering Horizons"
    }, {
        id = 348,
        hasCycle = true,
        preset = "ambar",
        name = "The Midfault"
    }, {
        id = 349,
        hasCycle = true,
        preset = "ambar",
        name = "Windtrace Dunes"
    }, {
        id = 350,
        hasCycle = true,
        preset = "ambar",
        name = "The Western Divide"
    }, {
        id = 354,
        hasCycle = true,
        preset = "ambar",
        name = "Wyrm's Nest"
    }},
    ["Draklor Laboratory"] = {{
        id = 286,
        hasCycle = false,
        preset = "sunny",
        name = "Energy Transitarium"
    }, {
        id = 854,
        hasCycle = false,
        preset = "sunny",
        name = "C.D.B."
    }, {
        id = 1008,
        hasCycle = false,
        preset = "sunny",
        name = "66th Floor (Lights on)"
    }, {
        id = 1009,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6613 West (1)"
    }, {
        id = 1010,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6613 East (1)"
    }, {
        id = 1011,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6612 West (1)"
    }, {
        id = 1012,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6612 East"
    }, {
        id = 1013,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6611 West (1)"
    }, {
        id = 1014,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6611 East (1)"
    }, {
        id = 1015,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6602 West (1)"
    }, {
        id = 1016,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6601 West (1)"
    }, {
        id = 1017,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6602 East (1)"
    }, {
        id = 1018,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6601 East (1)"
    }, {
        id = 1019,
        hasCycle = false,
        preset = "sunny",
        name = "67th Floor (Lights on)"
    }, {
        id = 1020,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6711 West (1)"
    }, {
        id = 1021,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6711 East (1)"
    }, {
        id = 1022,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6704 West"
    }, {
        id = 1023,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6703 West (1)"
    }, {
        id = 1024,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6704 East (1)"
    }, {
        id = 1025,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6703 East (1)"
    }, {
        id = 1026,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6702 West (1)"
    }, {
        id = 1027,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6701 West (1)"
    }, {
        id = 1028,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6702 East (1)"
    }, {
        id = 1029,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6701 East"
    }, {
        id = 1030,
        hasCycle = false,
        preset = "sunny",
        name = "68th Floor (Lights on)"
    }, {
        id = 1031,
        hasCycle = false,
        preset = "sunny",
        name = "69th Floor (1)"
    }, {
        id = 1036,
        hasCycle = false,
        preset = "sunny",
        name = "66th Floor (Lights off)"
    }, {
        id = 1037,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6613 West (2)"
    }, {
        id = 1038,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6613 East (2)"
    }, {
        id = 1039,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6612 West (2)"
    }, {
        id = 1041,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6611 West (2)"
    }, {
        id = 1042,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6611 East (2)"
    }, {
        id = 1043,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6602 West (2)"
    }, {
        id = 1044,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6601 West (2)"
    }, {
        id = 1045,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6602 East (2)"
    }, {
        id = 1046,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6601 East (2)"
    }, {
        id = 1047,
        hasCycle = false,
        preset = "sunny",
        name = "70th Floor"
    }, {
        id = 1048,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 7002 West"
    }, {
        id = 1049,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 7001 West"
    }, {
        id = 1050,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 7002 East"
    }, {
        id = 1051,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 7001 East"
    }, {
        id = 1054,
        hasCycle = false,
        preset = "sunny",
        name = "67th Floor (Lights off)"
    }, {
        id = 1055,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6711 West (2)"
    }, {
        id = 1056,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6711 East (2)"
    }, {
        id = 1058,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6703 West (2)"
    }, {
        id = 1059,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6704 East (2)"
    }, {
        id = 1060,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6703 East (2)"
    }, {
        id = 1061,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6702 West (2)"
    }, {
        id = 1062,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6701 West (2)"
    }, {
        id = 1063,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6702 East (2)"
    }, {
        id = 1067,
        hasCycle = false,
        preset = "sunny",
        name = "68th Floor (Lights off)"
    }, {
        id = 1068,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6814 West"
    }, {
        id = 1069,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6814 East"
    }, {
        id = 1070,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6813 West"
    }, {
        id = 1071,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6813 East"
    }, {
        id = 1072,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6812 West"
    }, {
        id = 1073,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6812 East"
    }, {
        id = 1074,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6811 West"
    }, {
        id = 1075,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6811 East"
    }, {
        id = 1076,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6804 West"
    }, {
        id = 1077,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6803 West"
    }, {
        id = 1078,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6804 East"
    }, {
        id = 1079,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6803 East"
    }, {
        id = 1080,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6802 West"
    }, {
        id = 1081,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6801 West"
    }, {
        id = 1082,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6802 East"
    }, {
        id = 1083,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6801 East"
    }, {
        id = 1086,
        hasCycle = false,
        preset = "sunny",
        name = "69th Floor (2)"
    }, {
        id = 1087,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6912 East (1)"
    }, {
        id = 1088,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6912 East (2)"
    }, {
        id = 1089,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6911 West"
    }, {
        id = 1090,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6911 East"
    }, {
        id = 1091,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6904 West"
    }, {
        id = 1092,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6903 West"
    }, {
        id = 1093,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6904 East"
    }, {
        id = 1094,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6903 East"
    }, {
        id = 1095,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6902 West"
    }, {
        id = 1096,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6901 West"
    }, {
        id = 1097,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6902 East"
    }, {
        id = 1098,
        hasCycle = false,
        preset = "sunny",
        name = "Rm 6901 East"
    }},
    ["Dreadnought Leviathan"] = {{
        id = 552,
        hasCycle = false,
        preset = "sunny",
        name = "Port Launch"
    }, {
        id = 555,
        hasCycle = false,
        preset = "sunny",
        name = "Port Section"
    }, {
        id = 556,
        hasCycle = false,
        preset = "sunny",
        name = "Large Freight Stores"
    }, {
        id = 557,
        hasCycle = false,
        preset = "sunny",
        name = "Starboard Section"
    }, {
        id = 558,
        hasCycle = false,
        preset = "sunny",
        name = "Sub-control Room"
    }, {
        id = 561,
        hasCycle = false,
        preset = "sunny",
        name = "Airship Berth Access"
    }, {
        id = 564,
        hasCycle = false,
        preset = "sunny",
        name = "Central Brig Access"
    }, {
        id = 871,
        hasCycle = false,
        preset = "sunny",
        name = "Bridge"
    }, {
        id = 872,
        hasCycle = false,
        preset = "sunny",
        name = "Battle Launch"
    }, {
        id = 876,
        hasCycle = false,
        preset = "sunny",
        name = "Brig No. 1"
    }},
    ["Eruyt Village"] = {{
        id = 766,
        hasCycle = true,
        preset = "sunny",
        name = "Fane of the Path"
    }, {
        id = 767,
        hasCycle = true,
        preset = "sunny",
        name = "The Spiritwood"
    }, {
        id = 768,
        hasCycle = true,
        preset = "sunny",
        name = "Road of Verdant Praise"
    }},
    ["Feywood"] = {{
        id = 539,
        hasCycle = true,
        preset = "sunny",
        name = "Walk of Flitting Rifts"
    }, {
        id = 540,
        hasCycle = true,
        preset = "sunny",
        name = "Walk of Stolen Truths"
    }, {
        id = 541,
        hasCycle = true,
        preset = "sunny",
        name = "Walk of Dancing Shadow"
    }, {
        id = 542,
        hasCycle = true,
        preset = "sunny",
        name = "Antiquity's End"
    }, {
        id = 545,
        hasCycle = true,
        preset = "sunny",
        name = "Redolent Glade"
    }, {
        id = 548,
        hasCycle = true,
        preset = "sunny",
        name = "White Magick's Embrace"
    }, {
        id = 549,
        hasCycle = true,
        preset = "sunny",
        name = "Ice Field of Clearsight"
    }, {
        id = 550,
        hasCycle = true,
        preset = "sunny",
        name = "The Edge of Reason"
    }},
    ["Garamysythe Waterway"] = {{
        id = 311,
        hasCycle = false,
        preset = "sunny",
        name = "Central Spur Stairs"
    }, {
        id = 313,
        hasCycle = false,
        preset = "sunny",
        name = "North Spur Sluiceway"
    }, {
        id = 314,
        hasCycle = false,
        preset = "sunny",
        name = "East Spur Stairs"
    }, {
        id = 315,
        hasCycle = false,
        preset = "sunny",
        name = "Northern Sluiceway"
    }, {
        id = 316,
        hasCycle = false,
        preset = "sunny",
        name = "East Waterway Control"
    }, {
        id = 318,
        hasCycle = false,
        preset = "sunny",
        name = "No. 11 Channel (Escape)"
    }, {
        id = 319,
        hasCycle = false,
        preset = "sunny",
        name = "East Sluice Control (Escape)"
    }, {
        id = 320,
        hasCycle = false,
        preset = "sunny",
        name = "West Sluice Control (Escape)"
    }, {
        id = 321,
        hasCycle = false,
        preset = "sunny",
        name = "No. 10 Channel (Escape)"
    }, {
        id = 322,
        hasCycle = false,
        preset = "sunny",
        name = "Central Waterway Control (Escape)"
    }, {
        id = 326,
        hasCycle = false,
        preset = "sunny",
        name = "Southern Sluiceway (Escape)"
    }, {
        id = 329,
        hasCycle = false,
        preset = "sunny",
        name = "Overflow Cloaca (Escape)"
    }, {
        id = 342,
        hasCycle = false,
        preset = "sunny",
        name = "No. 1 Cloaca (Drained)"
    }, {
        id = 838,
        hasCycle = false,
        preset = "sunny",
        name = "No. 11 Channel (Flooded)"
    }, {
        id = 839,
        hasCycle = false,
        preset = "sunny",
        name = "No. 11 Channel (Drained)"
    }, {
        id = 840,
        hasCycle = false,
        preset = "sunny",
        name = "East Sluice Control"
    }, {
        id = 841,
        hasCycle = false,
        preset = "sunny",
        name = "Southern Sluiceway"
    }, {
        id = 842,
        hasCycle = false,
        preset = "sunny",
        name = "West Sluice Control"
    }, {
        id = 843,
        hasCycle = false,
        preset = "sunny",
        name = "No. 10 Channel (Flooded)"
    }, {
        id = 844,
        hasCycle = false,
        preset = "sunny",
        name = "No. 10 Channel (Drained)"
    }, {
        id = 845,
        hasCycle = false,
        preset = "sunny",
        name = "No. 3 Cloaca Spur (Flooded)"
    }, {
        id = 846,
        hasCycle = false,
        preset = "sunny",
        name = "No. 3 Cloaca Spur (Drained)"
    }, {
        id = 847,
        hasCycle = false,
        preset = "sunny",
        name = "No. 1 Cloaca"
    }, {
        id = 848,
        hasCycle = false,
        preset = "sunny",
        name = "No. 4 Cloaca Spur (Flooded)"
    }, {
        id = 849,
        hasCycle = false,
        preset = "sunny",
        name = "No. 4 Cloaca Spur (Drained)"
    }, {
        id = 850,
        hasCycle = false,
        preset = "sunny",
        name = "Central Waterway Control"
    }, {
        id = 1145,
        hasCycle = false,
        preset = "sunny",
        name = "Overflow Cloaca"
    }},
    ["Giruvegan"] = {{
        id = 332,
        hasCycle = false,
        preset = "sunny",
        name = "A Vikaari Bhrum"
    }, {
        id = 333,
        hasCycle = false,
        preset = "sunny",
        name = "Trahk Pis Praa"
    }, {
        id = 334,
        hasCycle = false,
        preset = "sunny",
        name = "Sthaana Pisces"
    }, {
        id = 335,
        hasCycle = false,
        preset = "sunny",
        name = "Dha Vikaari Jula"
    }, {
        id = 336,
        hasCycle = false,
        preset = "sunny",
        name = "Trahk Jilaam Praa'dii"
    }, {
        id = 337,
        hasCycle = false,
        preset = "sunny",
        name = "Sthaana Aries"
    }, {
        id = 341,
        hasCycle = false,
        preset = "sunny",
        name = "Crystal Core"
    }, {
        id = 621,
        hasCycle = false,
        preset = "sunny",
        name = "A Prama Vikaari"
    }, {
        id = 622,
        hasCycle = false,
        preset = "sunny",
        name = "Kabonii Jilaam Pratii'vaa"
    }, {
        id = 623,
        hasCycle = false,
        preset = "sunny",
        name = "Kabonii Jilaam Avaa"
    }, {
        id = 624,
        hasCycle = false,
        preset = "sunny",
        name = "Dha Vikaari Bhrum"
    }, {
        id = 625,
        hasCycle = false,
        preset = "sunny",
        name = "Sthaana Scorpio"
    }, {
        id = 626,
        hasCycle = false,
        preset = "sunny",
        name = "A Vikaari Dhebon"
    }, {
        id = 686,
        hasCycle = false,
        preset = "sunny",
        name = "Gate of Earth"
    }, {
        id = 687,
        hasCycle = false,
        preset = "sunny",
        name = "Gate of Water"
    }, {
        id = 690,
        hasCycle = false,
        preset = "sunny",
        name = "The Trimahla Water-Steps"
    }, {
        id = 691,
        hasCycle = false,
        preset = "sunny",
        name = "The Aadha Water-Steps"
    }, {
        id = 694,
        hasCycle = false,
        preset = "sunny",
        name = "The Haalmikah Water-Steps"
    }, {
        id = 695,
        hasCycle = false,
        preset = "sunny",
        name = "Gate of Fire"
    }, {
        id = 698,
        hasCycle = false,
        preset = "sunny",
        name = "Gate of Wind"
    }, {
        id = 888,
        hasCycle = false,
        preset = "sunny",
        name = "Crystal Peak"
    }, {
        id = 916,
        hasCycle = false,
        preset = "sunny",
        name = "Siti Bhrusuna"
    }, {
        id = 926,
        hasCycle = false,
        preset = "sunny",
        name = "A Vikaari Kabonii"
    }, {
        id = 927,
        hasCycle = false,
        preset = "sunny",
        name = "Sthaana Cancer"
    }, {
        id = 928,
        hasCycle = false,
        preset = "sunny",
        name = "Bhrum Pis Avaa"
    }, {
        id = 929,
        hasCycle = false,
        preset = "sunny",
        name = "Bhrum Pis Pratii"
    }, {
        id = 930,
        hasCycle = false,
        preset = "sunny",
        name = "Dha Vikaari Trahk"
    }, {
        id = 939,
        hasCycle = false,
        preset = "sunny",
        name = "Dha Vikaari Kabonii"
    }, {
        id = 940,
        hasCycle = false,
        preset = "sunny",
        name = "A Vikaari Kanbhru Ra"
    }, {
        id = 941,
        hasCycle = false,
        preset = "sunny",
        name = "Dhebon Jilaam Praa'dii"
    }, {
        id = 942,
        hasCycle = false,
        preset = "sunny",
        name = "Dhebon Jilaam Pratii'dii"
    }, {
        id = 943,
        hasCycle = false,
        preset = "sunny",
        name = "Sthaana Sagittarius"
    }, {
        id = 944,
        hasCycle = false,
        preset = "sunny",
        name = "A Vikaari Sirhru Pratii"
    }, {
        id = 945,
        hasCycle = false,
        preset = "sunny",
        name = "A Vikaari Sirhru Praa"
    }, {
        id = 946,
        hasCycle = false,
        preset = "sunny",
        name = "Dhebon Jilaam Avaapratii"
    }, {
        id = 947,
        hasCycle = false,
        preset = "sunny",
        name = "A Vikaari Sirhru Si"
    }, {
        id = 949,
        hasCycle = false,
        preset = "sunny",
        name = "Dhebon Jilaam Avaa"
    }, {
        id = 952,
        hasCycle = false,
        preset = "sunny",
        name = "Dha Vikaari Dhebon Praa"
    }, {
        id = 953,
        hasCycle = false,
        preset = "sunny",
        name = "Dha Vikaari Dhebon Pratii"
    }, {
        id = 954,
        hasCycle = false,
        preset = "sunny",
        name = "Sirhru Phullam Praa"
    }, {
        id = 955,
        hasCycle = false,
        preset = "sunny",
        name = "Sthaana Leo"
    }, {
        id = 956,
        hasCycle = false,
        preset = "sunny",
        name = "Sirhru Phullam Praa'vaa"
    }, {
        id = 957,
        hasCycle = false,
        preset = "sunny",
        name = "Sirhru Phullam Pratii'vaa"
    }, {
        id = 958,
        hasCycle = false,
        preset = "sunny",
        name = "Sthaana Gemini"
    }, {
        id = 959,
        hasCycle = false,
        preset = "sunny",
        name = "Sirhru Phullam Udiipratii"
    }, {
        id = 960,
        hasCycle = false,
        preset = "sunny",
        name = "Sirhru Jilaam Praa'dii"
    }, {
        id = 961,
        hasCycle = false,
        preset = "sunny",
        name = "Sirhru Jilaam Pratii'dii"
    }, {
        id = 962,
        hasCycle = false,
        preset = "sunny",
        name = "Sirhru Jilaam Praa"
    }, {
        id = 963,
        hasCycle = false,
        preset = "sunny",
        name = "Sirhru Jilaam Pratii"
    }, {
        id = 964,
        hasCycle = false,
        preset = "sunny",
        name = "Sirhru Jilaam Praa'vaa"
    }, {
        id = 965,
        hasCycle = false,
        preset = "sunny",
        name = "Sirhru Jilaam Pratii'vaa"
    }, {
        id = 966,
        hasCycle = false,
        preset = "sunny",
        name = "Sirhru Pis Praa"
    }, {
        id = 967,
        hasCycle = false,
        preset = "sunny",
        name = "Sirhru Pis Pratii"
    }, {
        id = 968,
        hasCycle = false,
        preset = "sunny",
        name = "Sirhru Pis Avaa"
    }, {
        id = 969,
        hasCycle = false,
        preset = "sunny",
        name = "Sirhru Jilaam Avaapratii"
    }, {
        id = 970,
        hasCycle = false,
        preset = "sunny",
        name = "Sirhru Jilaam Avaapraa"
    }, {
        id = 971,
        hasCycle = false,
        preset = "sunny",
        name = "A Vikaari Uldobi"
    }, {
        id = 972,
        hasCycle = false,
        preset = "sunny",
        name = "A Vikaari Uldobi Si"
    }, {
        id = 973,
        hasCycle = false,
        preset = "sunny",
        name = "Dha Vikaari Dhebon Si"
    }, {
        id = 979,
        hasCycle = false,
        preset = "sunny",
        name = "Dha Vikaari Sirhru"
    }, {
        id = 980,
        hasCycle = false,
        preset = "sunny",
        name = "Sthaana Virgo"
    }, {
        id = 981,
        hasCycle = false,
        preset = "sunny",
        name = "Uldobi Jilaam Praa'dii"
    }, {
        id = 982,
        hasCycle = false,
        preset = "sunny",
        name = "Uldobi Jilaam Pratii"
    }, {
        id = 983,
        hasCycle = false,
        preset = "sunny",
        name = "Uldobi Jilaam Praa"
    }, {
        id = 984,
        hasCycle = false,
        preset = "sunny",
        name = "Uldobi Phullam Pratii'dii"
    }, {
        id = 985,
        hasCycle = false,
        preset = "sunny",
        name = "Sthaana Capricorn"
    }, {
        id = 986,
        hasCycle = false,
        preset = "sunny",
        name = "Dha Vikaari Sirhru Si"
    }, {
        id = 987,
        hasCycle = false,
        preset = "sunny",
        name = "Uldobi Phullam Udiipraa"
    }, {
        id = 988,
        hasCycle = false,
        preset = "sunny",
        name = "Uldobi Phullam Pratii'vaa"
    }, {
        id = 989,
        hasCycle = false,
        preset = "sunny",
        name = "Uldobi Phullam Praa'vaa"
    }, {
        id = 990,
        hasCycle = false,
        preset = "sunny",
        name = "Uldobi Phullam Pratii"
    }, {
        id = 991,
        hasCycle = false,
        preset = "sunny",
        name = "Sthaana Taurus"
    }, {
        id = 992,
        hasCycle = false,
        preset = "sunny",
        name = "Sthaana Libra"
    }, {
        id = 993,
        hasCycle = false,
        preset = "sunny",
        name = "Uldobi Jilaam Praa'vaa"
    }, {
        id = 994,
        hasCycle = false,
        preset = "sunny",
        name = "Uldobi Jilaam Pratii'vaa"
    }, {
        id = 995,
        hasCycle = false,
        preset = "sunny",
        name = "Uldobi Jilaam Avaa"
    }, {
        id = 996,
        hasCycle = false,
        preset = "sunny",
        name = "A Vikaari Kanbhru"
    }, {
        id = 1002,
        hasCycle = false,
        preset = "sunny",
        name = "Dha Vikaari Uldobi"
    }, {
        id = 1003,
        hasCycle = false,
        preset = "sunny",
        name = "Kanbhru Pis"
    }, {
        id = 1004,
        hasCycle = false,
        preset = "sunny",
        name = "Dha Vikaari Dhebon Ra"
    }, {
        id = 1005,
        hasCycle = false,
        preset = "sunny",
        name = "Sthaana Aquarius"
    }},
    ["Giza Plains"] = {{
        id = 236,
        hasCycle = true,
        preset = "gizaPlainsDry",
        name = "Throne Road (Dry)"
    }, {
        id = 237,
        hasCycle = true,
        preset = "gizaPlainsDry",
        name = "Warrior's Wash (Dry)"
    }, {
        id = 238,
        hasCycle = true,
        preset = "gizaPlainsDry",
        name = "Gizas North Bank (Dry)"
    }, {
        id = 239,
        hasCycle = true,
        preset = "gizaPlainsDry",
        name = "Toam Hills (Dry)"
    }, {
        id = 243,
        hasCycle = true,
        preset = "gizaPlainsDry",
        name = "Nomad Village (Dry)"
    }, {
        id = 247,
        hasCycle = true,
        preset = "gizaPlainsDry",
        name = "Starfall Field (Dry)"
    }, {
        id = 248,
        hasCycle = true,
        preset = "gizaPlainsDry",
        name = "Crystal Glade (Dry)"
    }, {
        id = 249,
        hasCycle = true,
        preset = "gizaPlainsDry",
        name = "Gizas South Bank (Dry)"
    }, {
        id = 253,
        hasCycle = true,
        preset = "gizaPlainsRainy",
        name = "Throne Road (Rainy)"
    }, {
        id = 254,
        hasCycle = true,
        preset = "gizaPlainsRainy",
        name = "Warrior's Wash (Rainy)"
    }, {
        id = 255,
        hasCycle = true,
        preset = "gizaPlainsRainy",
        name = "Gizas North Bank (Rainy)"
    }, {
        id = 256,
        hasCycle = true,
        preset = "gizaPlainsRainy",
        name = "Toam Hills (Rainy)"
    }, {
        id = 260,
        hasCycle = true,
        preset = "gizaPlainsRainy",
        name = "Nomad Village (Rainy)"
    }, {
        id = 264,
        hasCycle = true,
        preset = "gizaPlainsRainy",
        name = "Starfall Field  (Rainy)"
    }, {
        id = 265,
        hasCycle = true,
        preset = "gizaPlainsRainy",
        name = "Crystal Glade  (Rainy)"
    }, {
        id = 266,
        hasCycle = true,
        preset = "gizaPlainsRainy",
        name = "Gizas South Bank (Rainy)"
    }, {
        id = 270,
        hasCycle = true,
        preset = "gizaPlainsRainy",
        name = "Tracks of the Beast (Rainy)"
    }},
    ["Golmore Jungle"] = {{
        id = 447,
        hasCycle = false,
        preset = "sunny",
        name = "Paths of Chained Light"
    }, {
        id = 448,
        hasCycle = false,
        preset = "sunny",
        name = "The Needlebrake"
    }, {
        id = 449,
        hasCycle = false,
        preset = "sunny",
        name = "Whisperleaf Way"
    }, {
        id = 450,
        hasCycle = false,
        preset = "sunny",
        name = "The Parting Glade"
    }, {
        id = 453,
        hasCycle = false,
        preset = "sunny",
        name = "The Rustling Chapel"
    }, {
        id = 456,
        hasCycle = false,
        preset = "sunny",
        name = "Dell of the Dreamer"
    }, {
        id = 459,
        hasCycle = false,
        preset = "sunny",
        name = "The Branchway"
    }, {
        id = 460,
        hasCycle = false,
        preset = "sunny",
        name = "The Greenswathe"
    }},
    ["Henne Mines"] = {{
        id = 712,
        hasCycle = false,
        preset = "sunny",
        name = "North Entrance"
    }, {
        id = 713,
        hasCycle = false,
        preset = "sunny",
        name = "Pithead Junction A"
    }, {
        id = 714,
        hasCycle = false,
        preset = "sunny",
        name = "Phase 1 Shaft"
    }, {
        id = 715,
        hasCycle = false,
        preset = "sunny",
        name = "Phase 1 Dig"
    }, {
        id = 716,
        hasCycle = false,
        preset = "sunny",
        name = "Crossover A"
    }, {
        id = 717,
        hasCycle = false,
        preset = "sunny",
        name = "Pithead Junction B"
    }, {
        id = 718,
        hasCycle = false,
        preset = "sunny",
        name = "Staging Shaft"
    }, {
        id = 719,
        hasCycle = false,
        preset = "sunny",
        name = "Crossover B"
    }, {
        id = 722,
        hasCycle = false,
        preset = "sunny",
        name = "Ore Separation"
    }, {
        id = 725,
        hasCycle = false,
        preset = "sunny",
        name = "Phase 2 Dig"
    }, {
        id = 726,
        hasCycle = false,
        preset = "sunny",
        name = "Crossover C"
    }, {
        id = 727,
        hasCycle = false,
        preset = "sunny",
        name = "Pithead Junction C"
    }, {
        id = 728,
        hasCycle = false,
        preset = "sunny",
        name = "Phase 2 Shaft"
    }, {
        id = 730,
        hasCycle = false,
        preset = "sunny",
        name = "Special Charter Shaft"
    }, {
        id = 733,
        hasCycle = false,
        preset = "sunny",
        name = "Special Charter Dig"
    }},
    ["Jahara"] = {{
        id = 751,
        hasCycle = true,
        preset = "ambar",
        name = "Banks of the Sogoht"
    }, {
        id = 752,
        hasCycle = true,
        preset = "ambar",
        name = "Lull of the Land"
    }, {
        id = 753,
        hasCycle = true,
        preset = "ambar",
        name = "The Elderknoll"
    }},
    ["Lhusu Mines"] = {{
        id = 357,
        hasCycle = false,
        preset = "sunny",
        name = "Shaft Entry"
    }, {
        id = 358,
        hasCycle = true,
        preset = "sunny",
        name = "Oltam Span"
    }, {
        id = 359,
        hasCycle = false,
        preset = "sunny",
        name = "Transitway 1"
    }, {
        id = 360,
        hasCycle = false,
        preset = "sunny",
        name = "Transitway 2"
    }, {
        id = 365,
        hasCycle = true,
        preset = "sunny",
        name = "Shunia Twinspan"
    }, {
        id = 366,
        hasCycle = false,
        preset = "sunny",
        name = "Site 2"
    }, {
        id = 367,
        hasCycle = false,
        preset = "sunny",
        name = "Site 3"
    }, {
        id = 369,
        hasCycle = true,
        preset = "sunny",
        name = "Tasche Span"
    }, {
        id = 372,
        hasCycle = false,
        preset = "sunny",
        name = "Site 9"
    }, {
        id = 374,
        hasCycle = false,
        preset = "sunny",
        name = "Site 11"
    }, {
        id = 376,
        hasCycle = false,
        preset = "sunny",
        name = "Site 7"
    }, {
        id = 901,
        hasCycle = true,
        preset = "sunny",
        name = "Lasche Span"
    }, {
        id = 902,
        hasCycle = false,
        preset = "sunny",
        name = "Site 5"
    }, {
        id = 903,
        hasCycle = false,
        preset = "sunny",
        name = "Site 6 South"
    }, {
        id = 904,
        hasCycle = false,
        preset = "sunny",
        name = "Site 6 North"
    }, {
        id = 905,
        hasCycle = false,
        preset = "sunny",
        name = "Staging Area"
    }, {
        id = 933,
        hasCycle = false,
        preset = "sunny",
        name = "Site 2 (Event)"
    }, {
        id = 934,
        hasCycle = true,
        preset = "sunny",
        name = "Shunia Twinspan (Event)"
    }, {
        id = 935,
        hasCycle = false,
        preset = "sunny",
        name = "Transitway 1 (Event)"
    }, {
        id = 936,
        hasCycle = true,
        preset = "sunny",
        name = "Oltam Span (Event)"
    }},
    ["Lowtown"] = {{
        id = 701,
        hasCycle = false,
        preset = "sunny",
        name = "North Sprawl"
    }, {
        id = 702,
        hasCycle = false,
        preset = "sunny",
        name = "South Sprawl"
    }, {
        id = 703,
        hasCycle = false,
        preset = "sunny",
        name = "Dalan's House"
    }, {
        id = 704,
        hasCycle = false,
        preset = "sunny",
        name = "Residence"
    }, {
        id = 856,
        hasCycle = false,
        preset = "sunny",
        name = "Dalan's Marker"
    }},
    ["Mosphoran Highwaste"] = {{
        id = 209,
        hasCycle = true,
        preset = "sunny",
        name = "Southern Skirts"
    }, {
        id = 210,
        hasCycle = true,
        preset = "sunny",
        name = "Summit Path"
    }, {
        id = 215,
        hasCycle = true,
        preset = "sunny",
        name = "Rays of Ashen Light"
    }, {
        id = 216,
        hasCycle = true,
        preset = "sunny",
        name = "Empyrean Way"
    }, {
        id = 217,
        hasCycle = true,
        preset = "sunny",
        name = "Skyreach Ridge"
    }, {
        id = 218,
        hasCycle = true,
        preset = "sunny",
        name = "Trail of Sky-flung Stone"
    }, {
        id = 219,
        hasCycle = true,
        preset = "sunny",
        name = "Northern Skirts"
    }, {
        id = 220,
        hasCycle = true,
        preset = "sunny",
        name = "Halny Crossing"
    }, {
        id = 223,
        hasCycle = true,
        preset = "sunny",
        name = "Empyrean Seat"
    }, {
        id = 1151,
        hasCycle = true,
        preset = "sunny",
        name = "Babbling Vale"
    }},
    ["Mt. Bur-Omisace"] = {{
        id = 736,
        hasCycle = false,
        preset = "sunny",
        name = "Hall of the Light (Undamaged)"
    }, {
        id = 737,
        hasCycle = false,
        preset = "sunny",
        name = "Hall of the Light (Destroyed)"
    }, {
        id = 738,
        hasCycle = true,
        preset = "sunny",
        name = "Temple Grounds"
    }, {
        id = 741,
        hasCycle = true,
        preset = "sunny",
        name = "Temple Approach"
    }, {
        id = 742,
        hasCycle = true,
        preset = "sunny",
        name = "Sand-strewn Pass"
    }},
    ["Nabreus Deadlands"] = {{
        id = 167,
        hasCycle = true,
        preset = "sunny",
        name = "Greencrag"
    }, {
        id = 168,
        hasCycle = true,
        preset = "sunny",
        name = "The Muted Scarp"
    }, {
        id = 169,
        hasCycle = true,
        preset = "sunny",
        name = "Vale of Lingering Sorrow"
    }, {
        id = 170,
        hasCycle = true,
        preset = "sunny",
        name = "Hope's Reach"
    }, {
        id = 171,
        hasCycle = true,
        preset = "sunny",
        name = "Echoes of the Past"
    }, {
        id = 175,
        hasCycle = true,
        preset = "sunny",
        name = "The Slumbermead"
    }, {
        id = 176,
        hasCycle = true,
        preset = "sunny",
        name = "Succor Midst Sorrow"
    }, {
        id = 177,
        hasCycle = true,
        preset = "sunny",
        name = "The Fog Mutters"
    }, {
        id = 178,
        hasCycle = true,
        preset = "sunny",
        name = "Overlooking Eternity"
    }, {
        id = 179,
        hasCycle = true,
        preset = "sunny",
        name = "Lifeless Strand"
    }, {
        id = 180,
        hasCycle = true,
        preset = "sunny",
        name = "Field of the Fallen Lord"
    }},
    ["Nalbina Dungeon"] = {{
        id = 48,
        hasCycle = false,
        preset = "sunny",
        name = "Stockade"
    }, {
        id = 49,
        hasCycle = true,
        preset = "sunny",
        name = "Arena"
    }, {
        id = 51,
        hasCycle = false,
        preset = "sunny",
        name = "Oubliette"
    }, {
        id = 709,
        hasCycle = false,
        preset = "sunny",
        name = "The Black Watch"
    }, {
        id = 710,
        hasCycle = false,
        preset = "sunny",
        name = "The Confiscatory"
    }},
    ["Nalbina Fortress"] = {{
        id = 274,
        hasCycle = false,
        preset = "sunny",
        name = "Aerial Gardens"
    }, {
        id = 275,
        hasCycle = false,
        preset = "sunny",
        name = "Inner Ward"
    }, {
        id = 279,
        hasCycle = false,
        preset = "sunny",
        name = "Lower Apartments"
    }, {
        id = 280,
        hasCycle = false,
        preset = "sunny",
        name = "Upper Apartments"
    }, {
        id = 282,
        hasCycle = false,
        preset = "sunny",
        name = "The Highhall"
    }},
    ["Nalbina Town"] = {{
        id = 630,
        hasCycle = true,
        preset = "sunny",
        name = "West Barbican"
    }, {
        id = 631,
        hasCycle = true,
        preset = "sunny",
        name = "Jajim Bazaar"
    }, {
        id = 632,
        hasCycle = true,
        preset = "sunny",
        name = "West Ward"
    }, {
        id = 800,
        hasCycle = true,
        preset = "sunny",
        name = "Aerodrome (Nalbina Town)"
    }},
    ["Nam-Yensa Sandsea"] = {{
        id = 390,
        hasCycle = true,
        preset = "sunny",
        name = "The Urutan-Yensa Sea"
    }, {
        id = 391,
        hasCycle = true,
        preset = "sunny",
        name = "Withering Shores"
    }, {
        id = 392,
        hasCycle = true,
        preset = "sunny",
        name = "Augur Hill"
    }, {
        id = 393,
        hasCycle = true,
        preset = "sunny",
        name = "Yellow Sands"
    }, {
        id = 394,
        hasCycle = true,
        preset = "sunny",
        name = "The Sandscale Bank"
    }, {
        id = 398,
        hasCycle = true,
        preset = "sunny",
        name = "Demesne of the Sandqueen"
    }, {
        id = 399,
        hasCycle = true,
        preset = "sunny",
        name = "Trail of Fading Warmth"
    }, {
        id = 400,
        hasCycle = true,
        preset = "sunny",
        name = "Simoon Bluff"
    }, {
        id = 1153,
        hasCycle = true,
        preset = "sunny",
        name = "Withering Shores (Event)"
    }},
    ["Necrohol of Nabudis"] = {{
        id = 421,
        hasCycle = false,
        preset = "sunny",
        name = "Hall of Effulgent Light"
    }, {
        id = 422,
        hasCycle = false,
        preset = "sunny",
        name = "Cloister of Distant Song"
    }, {
        id = 426,
        hasCycle = false,
        preset = "sunny",
        name = "Cloister of the Highborn"
    }, {
        id = 430,
        hasCycle = false,
        preset = "sunny",
        name = "Hall of the Ivory Covenant"
    }, {
        id = 431,
        hasCycle = false,
        preset = "sunny",
        name = "Hall of Slumbering Might"
    }, {
        id = 438,
        hasCycle = false,
        preset = "sunny",
        name = "The Crucible"
    }, {
        id = 441,
        hasCycle = false,
        preset = "sunny",
        name = "Cloister of Solace"
    }, {
        id = 444,
        hasCycle = false,
        preset = "sunny",
        name = "Cloister of Reason"
    }},
    ["Ogir-Yensa Sandsea"] = {{
        id = 379,
        hasCycle = true,
        preset = "ogirYensaSandsea",
        name = "Platform 1 - East Tanks"
    }, {
        id = 380,
        hasCycle = true,
        preset = "ogirYensaSandsea",
        name = "Platform 1 - Refinery"
    }, {
        id = 381,
        hasCycle = true,
        preset = "ogirYensaSandsea",
        name = "East Junction"
    }, {
        id = 382,
        hasCycle = true,
        preset = "ogirYensaSandsea",
        name = "Primary Tank Complex"
    }, {
        id = 383,
        hasCycle = true,
        preset = "ogirYensaSandsea",
        name = "Central Junction"
    }, {
        id = 384,
        hasCycle = true,
        preset = "ogirYensaSandsea",
        name = "Platform 1 - South Tanks"
    }, {
        id = 385,
        hasCycle = true,
        preset = "ogirYensaSandsea",
        name = "Platform 2 - Refinery"
    }, {
        id = 386,
        hasCycle = true,
        preset = "ogirYensaSandsea",
        name = "Yensa Border Tunnel"
    }, {
        id = 387,
        hasCycle = true,
        preset = "ogirYensaSandsea",
        name = "South Tank Approach"
    }},
    ["Old Archades"] = {{
        id = 762,
        hasCycle = true,
        preset = "sunny",
        name = "Alley of Muted Sighs"
    }, {
        id = 763,
        hasCycle = true,
        preset = "sunny",
        name = "Alley of Low Whispers"
    }},
    ["Ozmone Plain"] = {{
        id = 525,
        hasCycle = true,
        preset = "sunny",
        name = "Field of Fallen Wings"
    }, {
        id = 526,
        hasCycle = true,
        preset = "sunny",
        name = "The Switchback"
    }, {
        id = 527,
        hasCycle = true,
        preset = "sunny",
        name = "Haulo Green"
    }, {
        id = 530,
        hasCycle = true,
        preset = "sunny",
        name = "Dagan Flats"
    }, {
        id = 531,
        hasCycle = true,
        preset = "sunny",
        name = "Field of Light Winds"
    }, {
        id = 532,
        hasCycle = true,
        preset = "sunny",
        name = "The Greensnake"
    }, {
        id = 533,
        hasCycle = true,
        preset = "sunny",
        name = "Sunlit Path"
    }, {
        id = 536,
        hasCycle = true,
        preset = "sunny",
        name = "The Shred"
    }},
    ["Paramina Rift"] = {{
        id = 463,
        hasCycle = true,
        preset = "sunny",
        name = "Fading Vale"
    }, {
        id = 464,
        hasCycle = true,
        preset = "sunny",
        name = "Head of the Silverflow"
    }, {
        id = 465,
        hasCycle = true,
        preset = "sunny",
        name = "Freezing Gorge"
    }, {
        id = 468,
        hasCycle = true,
        preset = "sunny",
        name = "Frozen Brook"
    }, {
        id = 469,
        hasCycle = true,
        preset = "sunny",
        name = "Icebound Flow"
    }, {
        id = 470,
        hasCycle = true,
        preset = "sunny",
        name = "Karydine Glacier"
    }, {
        id = 473,
        hasCycle = true,
        preset = "sunny",
        name = "Path of the Firstfall"
    }, {
        id = 474,
        hasCycle = true,
        preset = "sunny",
        name = "Spine of the Icewyrm"
    }, {
        id = 475,
        hasCycle = true,
        preset = "sunny",
        name = "Silverflow's End"
    }},
    ["Pharos"] = {{
        id = 666,
        hasCycle = true,
        preset = "sunny",
        name = "Womb of the Sun-cryst (Event)"
    }, {
        id = 668,
        hasCycle = true,
        preset = "sunny",
        name = "Womb of the Sun-cryst"
    }, {
        id = 670,
        hasCycle = false,
        preset = "sunny",
        name = "Heaven's Challenge"
    }, {
        id = 682,
        hasCycle = false,
        preset = "sunny",
        name = "Hell's Challenge"
    }},
    ["Pharos of Ridorana"] = {{
        id = 1101,
        hasCycle = false,
        preset = "sunny",
        name = "The Wellspring"
    }, {
        id = 1102,
        hasCycle = false,
        preset = "sunny",
        name = "Horizon's Break"
    }, {
        id = 1103,
        hasCycle = false,
        preset = "sunny",
        name = "The Reach"
    }, {
        id = 1104,
        hasCycle = false,
        preset = "sunny",
        name = "Reach of the Damned"
    }, {
        id = 1105,
        hasCycle = false,
        preset = "sunny",
        name = "Reach of the Occult"
    }, {
        id = 1111,
        hasCycle = false,
        preset = "sunny",
        name = "Wellspring Labyrinth"
    }, {
        id = 1113,
        hasCycle = false,
        preset = "sunny",
        name = "Dunes of Profaning Wind"
    }, {
        id = 1114,
        hasCycle = false,
        preset = "sunny",
        name = "Blackrock Vault"
    }, {
        id = 1115,
        hasCycle = false,
        preset = "sunny",
        name = "Wellspring Ravel - 1st Flight"
    }, {
        id = 1116,
        hasCycle = false,
        preset = "sunny",
        name = "Wellspring Ravel - 2nd Flight"
    }, {
        id = 1118,
        hasCycle = false,
        preset = "sunny",
        name = "Wellspring Ravel - 3rd Flight"
    }, {
        id = 1119,
        hasCycle = false,
        preset = "sunny",
        name = "Wellspring Ravel - 4th Flight"
    }, {
        id = 1121,
        hasCycle = false,
        preset = "sunny",
        name = "Marsh of Profaning Wind"
    }, {
        id = 1122,
        hasCycle = false,
        preset = "sunny",
        name = "Horizon's Cusp"
    }, {
        id = 1123,
        hasCycle = false,
        preset = "sunny",
        name = "Penumbra - Interior"
    }, {
        id = 1124,
        hasCycle = false,
        preset = "sunny",
        name = "Penumbra - North"
    }, {
        id = 1125,
        hasCycle = false,
        preset = "sunny",
        name = "Penumbra - South"
    }, {
        id = 1126,
        hasCycle = false,
        preset = "sunny",
        name = "Umbra - Interior"
    }, {
        id = 1127,
        hasCycle = false,
        preset = "sunny",
        name = "Umbra - North"
    }, {
        id = 1128,
        hasCycle = false,
        preset = "sunny",
        name = "Umbra - South"
    }, {
        id = 1129,
        hasCycle = false,
        preset = "sunny",
        name = "Abyssal - Interior"
    }, {
        id = 1130,
        hasCycle = false,
        preset = "sunny",
        name = "Abyssal - North"
    }, {
        id = 1131,
        hasCycle = false,
        preset = "sunny",
        name = "Abyssal - South"
    }, {
        id = 1132,
        hasCycle = false,
        preset = "sunny",
        name = "Cleft of Profaning Wind"
    }, {
        id = 1133,
        hasCycle = false,
        preset = "sunny",
        name = "The Bounds of Truth"
    }, {
        id = 1134,
        hasCycle = false,
        preset = "sunny",
        name = "Station of Banishment"
    }, {
        id = 1136,
        hasCycle = false,
        preset = "sunny",
        name = "Station of Suffering"
    }, {
        id = 1138,
        hasCycle = false,
        preset = "sunny",
        name = "Station of Ascension"
    }, {
        id = 1140,
        hasCycle = false,
        preset = "sunny",
        name = "Spire Ravel - 1st Flight"
    }, {
        id = 1141,
        hasCycle = false,
        preset = "sunny",
        name = "Spire Ravel - 2nd Flight"
    }, {
        id = 1143,
        hasCycle = false,
        preset = "sunny",
        name = "Empyrean Ravel"
    }},
    ["Phon Coast"] = {{
        id = 478,
        hasCycle = true,
        preset = "phonCoast",
        name = "The Reseta Strand"
    }, {
        id = 479,
        hasCycle = true,
        preset = "phonCoast",
        name = "Pora-Pora Sands"
    }, {
        id = 480,
        hasCycle = true,
        preset = "phonCoast",
        name = "The Mauleia Strand"
    }, {
        id = 481,
        hasCycle = true,
        preset = "phonCoast",
        name = "Cape Uahuk"
    }, {
        id = 482,
        hasCycle = true,
        preset = "phonCoast",
        name = "Cape Tialan"
    }, {
        id = 483,
        hasCycle = true,
        preset = "phonCoast",
        name = "Kaukula Pass"
    }, {
        id = 484,
        hasCycle = true,
        preset = "phonCoast",
        name = "The Hakawea Shore"
    }, {
        id = 488,
        hasCycle = true,
        preset = "phonCoast",
        name = "Hunters' Camp"
    }, {
        id = 491,
        hasCycle = true,
        preset = "phonCoast",
        name = "Caima Hills"
    }, {
        id = 492,
        hasCycle = true,
        preset = "phonCoast",
        name = "The Vaddu Strand"
    }, {
        id = 493,
        hasCycle = true,
        preset = "phonCoast",
        name = "Limatra Hills"
    }, {
        id = 494,
        hasCycle = true,
        preset = "phonCoast",
        name = "Rava's Pass"
    }},
    ["Rabanastre"] = {{
        id = 50,
        hasCycle = false,
        preset = "rabanastre",
        name = "Reks's Hospital Room"
    }, {
        id = 289,
        hasCycle = true,
        preset = "rabanastre",
        name = "North End"
    }, {
        id = 290,
        hasCycle = true,
        preset = "rabanastre",
        name = "Muthru Bazaar"
    }, {
        id = 291,
        hasCycle = true,
        preset = "rabanastre",
        name = "East End"
    }, {
        id = 292,
        hasCycle = true,
        preset = "rabanastre",
        name = "Southern Plaza"
    }, {
        id = 295,
        hasCycle = false,
        preset = "rabanastre",
        name = "Amal's Weaponry"
    }, {
        id = 296,
        hasCycle = false,
        preset = "rabanastre",
        name = "Panamis's Protectives"
    }, {
        id = 297,
        hasCycle = false,
        preset = "rabanastre",
        name = "Migelo's Sundries"
    }, {
        id = 298,
        hasCycle = false,
        preset = "rabanastre",
        name = "Yugri's Magicks"
    }, {
        id = 299,
        hasCycle = false,
        preset = "rabanastre",
        name = "Batahn's Technicks"
    }, {
        id = 300,
        hasCycle = false,
        preset = "rabanastre",
        name = "Yamoora's Gambits"
    }, {
        id = 301,
        hasCycle = false,
        preset = "rabanastre",
        name = "Samalzalam Manor"
    }, {
        id = 302,
        hasCycle = false,
        preset = "rabanastre",
        name = "The Clan Hall"
    }, {
        id = 304,
        hasCycle = false,
        preset = "rabanastre",
        name = "The Sandsea"
    }, {
        id = 305,
        hasCycle = true,
        preset = "rabanastreGates",
        name = "Eastgate"
    }, {
        id = 306,
        hasCycle = true,
        preset = "rabanastreGates",
        name = "Southgate"
    }, {
        id = 307,
        hasCycle = true,
        preset = "rabanastreGates",
        name = "Westgate"
    }, {
        id = 788,
        hasCycle = false,
        preset = "rabanastre",
        name = "Aerodrome (Rabanstre)"
    }},
    ["Ridorana Cataract"] = {{
        id = 509,
        hasCycle = true,
        preset = "sunny",
        name = "Footfalls of the Past"
    }, {
        id = 511,
        hasCycle = true,
        preset = "sunny",
        name = "Echoes from Time's Garden"
    }, {
        id = 517,
        hasCycle = true,
        preset = "sunny",
        name = "City of Other Days"
    }, {
        id = 518,
        hasCycle = true,
        preset = "sunny",
        name = "Path of Hidden Blessing"
    }, {
        id = 522,
        hasCycle = true,
        preset = "sunny",
        name = "They Who Thirst Not"
    }, {
        id = 898,
        hasCycle = true,
        preset = "sunny",
        name = "Colosseum"
    }},
    ["Royal Palace"] = {{
        id = 567,
        hasCycle = false,
        preset = "sunny",
        name = "Cellar Stores"
    }, {
        id = 568,
        hasCycle = false,
        preset = "sunny",
        name = "Cellars"
    }, {
        id = 569,
        hasCycle = false,
        preset = "sunny",
        name = "Lower Halls"
    }, {
        id = 570,
        hasCycle = false,
        preset = "sunny",
        name = "Secret Passage"
    }, {
        id = 571,
        hasCycle = false,
        preset = "sunny",
        name = "Treasure Room No. 8"
    }, {
        id = 572,
        hasCycle = false,
        preset = "sunny",
        name = "The Garden Stairs"
    }},
    ["Salikawood"] = {{
        id = 151,
        hasCycle = true,
        preset = "sunny",
        name = "The Omen-Spur"
    }, {
        id = 152,
        hasCycle = true,
        preset = "sunny",
        name = "Trunkwall Road"
    }, {
        id = 153,
        hasCycle = true,
        preset = "sunny",
        name = "Diverging Way"
    }, {
        id = 154,
        hasCycle = true,
        preset = "sunny",
        name = "Sun-dappled Path"
    }, {
        id = 155,
        hasCycle = true,
        preset = "sunny",
        name = "Garden of Decay"
    }, {
        id = 156,
        hasCycle = true,
        preset = "sunny",
        name = "Path of Hours"
    }, {
        id = 157,
        hasCycle = true,
        preset = "sunny",
        name = "Quietened Trace"
    }, {
        id = 158,
        hasCycle = true,
        preset = "sunny",
        name = "Grand Bower"
    }, {
        id = 162,
        hasCycle = true,
        preset = "sunny",
        name = "Corridor of Ages"
    }, {
        id = 163,
        hasCycle = true,
        preset = "sunny",
        name = "Piebald Path"
    }, {
        id = 908,
        hasCycle = true,
        preset = "sunny",
        name = "Living Chasm"
    }},
    ["Skyferry"] = {{
        id = 124,
        hasCycle = false,
        preset = "sunny",
        name = "Observation Parlour"
    }, {
        id = 125,
        hasCycle = false,
        preset = "sunny",
        name = "Sky Saloon"
    }, {
        id = 126,
        hasCycle = true,
        preset = "sunny",
        name = "Air Deck"
    }, {
        id = 1150,
        hasCycle = true,
        preset = "sunny",
        name = "Air Deck (Event)"
    }},
    ["Sochen Cave Palace"] = {{
        id = 184,
        hasCycle = false,
        preset = "sunny",
        name = "Falls of Time"
    }, {
        id = 185,
        hasCycle = false,
        preset = "sunny",
        name = "Mirror of the Soul"
    }, {
        id = 186,
        hasCycle = false,
        preset = "sunny",
        name = "The Acolyte's Burden"
    }, {
        id = 187,
        hasCycle = false,
        preset = "sunny",
        name = "Doubt Abandoned"
    }, {
        id = 188,
        hasCycle = false,
        preset = "sunny",
        name = "Skybent Chamber"
    }, {
        id = 192,
        hasCycle = false,
        preset = "sunny",
        name = "Destiny's March"
    }, {
        id = 193,
        hasCycle = false,
        preset = "sunny",
        name = "Temptation Eluded"
    }, {
        id = 194,
        hasCycle = false,
        preset = "sunny",
        name = "Chamber of the Chosen"
    }, {
        id = 198,
        hasCycle = false,
        preset = "sunny",
        name = "Hall of Shadowlight"
    }, {
        id = 200,
        hasCycle = false,
        preset = "sunny",
        name = "Hall of Lambent Darkness"
    }, {
        id = 202,
        hasCycle = false,
        preset = "sunny",
        name = "Hall of the Wroth God"
    }},
    ["Stilshrine of Miriam"] = {{
        id = 593,
        hasCycle = true,
        preset = "sunny",
        name = "Walk of Sky"
    }, {
        id = 594,
        hasCycle = true,
        preset = "sunny",
        name = "Walk of Mind"
    }, {
        id = 597,
        hasCycle = false,
        preset = "sunny",
        name = "Ward of Measure"
    }, {
        id = 598,
        hasCycle = false,
        preset = "sunny",
        name = "Cold Distance"
    }, {
        id = 599,
        hasCycle = false,
        preset = "sunny",
        name = "Walk of Prescience"
    }, {
        id = 600,
        hasCycle = false,
        preset = "sunny",
        name = "Walk of Reason"
    }, {
        id = 603,
        hasCycle = false,
        preset = "sunny",
        name = "Ward of Steel"
    }, {
        id = 606,
        hasCycle = false,
        preset = "sunny",
        name = "Ward of Velitation"
    }, {
        id = 607,
        hasCycle = false,
        preset = "sunny",
        name = "Walk of Torn Illusion"
    }, {
        id = 608,
        hasCycle = false,
        preset = "sunny",
        name = "Walk of Revelation"
    }, {
        id = 609,
        hasCycle = false,
        preset = "sunny",
        name = "Ward of the Sword-King"
    }, {
        id = 612,
        hasCycle = false,
        preset = "sunny",
        name = "Hall of Worth"
    }, {
        id = 615,
        hasCycle = false,
        preset = "sunny",
        name = "Vault of the Champion"
    }, {
        id = 618,
        hasCycle = false,
        preset = "sunny",
        name = "Throne of Veiled Gods"
    }},
    ["Tchita Uplands"] = {{
        id = 137,
        hasCycle = true,
        preset = "tchitaUplands",
        name = "Uazcuff Hills"
    }, {
        id = 138,
        hasCycle = true,
        preset = "tchitaUplands",
        name = "Sundered Earth"
    }, {
        id = 139,
        hasCycle = true,
        preset = "tchitaUplands",
        name = "The Highlands"
    }, {
        id = 140,
        hasCycle = true,
        preset = "tchitaUplands",
        name = "Fields of Eternity"
    }, {
        id = 141,
        hasCycle = true,
        preset = "tchitaUplands",
        name = "The Shaded Path"
    }, {
        id = 142,
        hasCycle = true,
        preset = "tchitaUplands",
        name = "The Chosen Path"
    }, {
        id = 144,
        hasCycle = true,
        preset = "tchitaUplands",
        name = "The Skytrail"
    }, {
        id = 145,
        hasCycle = true,
        preset = "tchitaUplands",
        name = "Realm of the Elder Dream"
    }, {
        id = 146,
        hasCycle = true,
        preset = "tchitaUplands",
        name = "The Lost Way"
    }, {
        id = 147,
        hasCycle = true,
        preset = "tchitaUplands",
        name = "Garden of Life's Circle"
    }, {
        id = 148,
        hasCycle = true,
        preset = "tchitaUplands",
        name = "Oliphzak Rise"
    }, {
        id = 149,
        hasCycle = true,
        preset = "tchitaUplands",
        name = "The Nameless Spring"
    }},
    ["The Tomb of Raithwall"] = {{
        id = 403,
        hasCycle = true,
        preset = "sunny",
        name = "Valley of the Dead"
    }, {
        id = 406,
        hasCycle = false,
        preset = "sunny",
        name = "Hall of the Destroyer"
    }, {
        id = 407,
        hasCycle = false,
        preset = "sunny",
        name = "Hall of the Sentinel"
    }, {
        id = 410,
        hasCycle = false,
        preset = "sunny",
        name = "Royal Passage"
    }, {
        id = 411,
        hasCycle = false,
        preset = "sunny",
        name = "Southfall Passage"
    }, {
        id = 412,
        hasCycle = false,
        preset = "sunny",
        name = "Northfall Passage"
    }, {
        id = 415,
        hasCycle = false,
        preset = "sunny",
        name = "Cloister of Flame"
    }, {
        id = 418,
        hasCycle = false,
        preset = "sunny",
        name = "Chamber of First Light"
    }},
    ["Zertinan Caverns"] = {{
        id = 576,
        hasCycle = true,
        preset = "zertinanCaverns",
        name = "Invitation to Heresy"
    }, {
        id = 577,
        hasCycle = true,
        preset = "zertinanCaverns",
        name = "Sandfalls"
    }, {
        id = 578,
        hasCycle = true,
        preset = "zertinanCaverns",
        name = "Hourglass Basin"
    }, {
        id = 581,
        hasCycle = true,
        preset = "zertinanCaverns",
        name = "The Undershore"
    }, {
        id = 582,
        hasCycle = true,
        preset = "zertinanCaverns",
        name = "Halls of Ardent Darkness"
    }, {
        id = 585,
        hasCycle = true,
        preset = "zertinanCaverns",
        name = "The Balamka Fault"
    }, {
        id = 586,
        hasCycle = true,
        preset = "zertinanCaverns",
        name = "Drybeam Cavern"
    }, {
        id = 587,
        hasCycle = true,
        preset = "zertinanCaverns",
        name = "Darkened Wharf"
    }, {
        id = 588,
        hasCycle = true,
        preset = "zertinanCaverns",
        name = "Canopy of Clay"
    }, {
        id = 590,
        hasCycle = true,
        preset = "zertinanCaverns",
        name = "Athroza Quicksands"
    }}
}

return AOIMaps
