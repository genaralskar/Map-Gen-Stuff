//Maya ASCII 2018 scene
//Name: Chest.ma
//Last modified: Fri, Jun 28, 2019 08:45:21 AM
//Codeset: 1252
requires maya "2018";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiStandardSurface"
		 "mtoa" "2.0.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "DFA31085-4FA9-6B2A-9F4D-46AB25B1F20E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.7315916855998377 2.2557728105978576 2.8322220849596875 ;
	setAttr ".r" -type "double3" 341.66164727038398 1120.5999999997809 -1.0472391919487779e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F4574FA6-4FD9-3EF2-3018-DBA4EF84D0BA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 4.0575395725673022;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 0.85934758186340332 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "8F9CC026-44CA-41C3-55A3-B286E4A17D74";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "41AF8474-449B-81F9-D1CF-98BE6DFDAEB1";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 2.4516068863720877;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "C3E5BD07-4CC4-41E3-CB44-788E3E517EED";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C022A8F0-482D-8AF0-2CCC-C181A1C45508";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "31D86921-48F0-94C0-4004-499251E8DE9A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E570C663-4C35-E6B4-C836-578C296D202E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Chest";
	rename -uid "03BBC411-459F-C3D1-DBF9-33899D933234";
createNode mesh -n "ChestShape" -p "Chest";
	rename -uid "578C6BBA-4329-509D-178D-EFB639B45F28";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:23]" "f[28:71]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 2 "f[24:27]" "f[72:75]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.21745333075523376 0.25656399875879288 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 178 ".uvst[0].uvsp[0:177]" -type "float2" 0.0023294687 0.12365728
		 0.3423323 0.26366958 0.0037611974 0.45021528 0.0037614256 0.4502151 0.0037614256
		 0.59022117 0.14376713 0.59022063 0.14376713 0.4502151 0.0037611974 0.59022105 0.14376739
		 0.59022099 0.14376739 0.45021528 0.34233552 0.12366384 0.0023289472 0.12365734 0.0023258477
		 0.26366356 0.0023264885 0.26366311 0.3423326 0.26366964 0.34233487 0.12366376 0.4800117
		 0.11633527 0.34000576 0.11633408 0.34000576 0 0.4800117 5.9604645e-08 0.96002269
		 0.11633521 0.82001746 0.11633515 0.8200174 0 0.96002328 1.7881393e-07 0 0.11633396
		 0 1.1920929e-07 0.58196574 0.3598929 0.39255625 0.12656681 0.42257023 0.15656094
		 0.3423323 0.37467602 0.42256302 0.18655421 0.44197237 0.29988635 0.002327919 0.43467465
		 0.36256486 0.15656827 0.36257422 0.15656678 0.3625766 0.1865636 0.34234631 0.37473151
		 0.39256662 0.1865596 0.39259106 0.32656303 0.58198094 0.29984823 0.36259466 0.32656839
		 0.4419663 0.29988563 0.42256749 0.15656231 0.39257497 0.12655982 0.42257541 0.18655607
		 0.58197135 0.35989434 0.39257324 0.18656109 0.39258409 0.32656455 0.34233895 0.27828375
		 0.4225806 0.32656223 0.42259282 0.35655412 0.39258587 0.38656089 0.42257977 0.32656488
		 0.0023300648 0.33823389 0.44199327 0.35988018 0.36260003 0.35656479 0.36258972 0.35656345
		 0.4419969 0.35986599 0.39258885 0.3865577 0.42258018 0.35656762 0.0023315549 0.33826831
		 0.58198059 0.29986408 0.39258289 0.32656667 0.39257455 0.18655984 0.34233332 0.27824906
		 0.36257792 0.18656163 0.36258745 0.35656533 0.36258334 0.35656941 0.3625825 0.32657069
		 0.39258093 0.32657015 0.39257675 0.18655723 0.0023386925 0.43473032 0.36257613 0.15656416
		 0.36257738 0.15655911 0.39256126 0.15656321 0.39257097 0.1565647 0.39259642 0.3565596
		 0.39258635 0.35656136 0.39258409 0.35656378 0.39258176 0.35656822 0.39257336 0.1565627
		 0.3925758 0.15655851 0.35257697 0.18656443 0.0023264587 0.44467476 0.34234014 0.26828399
		 0.35259491 0.32657012 0.35258216 0.32657135 0.34233236 0.26824889 0.0023405999 0.44473007
		 0.35257792 0.18656223 0.43257576 0.1865555 0.44196737 0.2898854 0.5819788 0.28986534
		 0.43258047 0.32656145 0.43256265 0.18655269 0.44197357 0.28988689 0.58197796 0.28984812
		 0.43257964 0.32656428 0.44200048 0.38985953 0.0023261905 0.36823007 0.0023339391
		 0.36826518 0.44200107 0.38987681 0.42257422 0.15655732 0.4419688 0.32988191 0.58198357
		 0.32985738 0.42258155 0.35656199 0.4225831 0.3565588 0.58198941 0.3298448 0.44196379
		 0.32988364 0.42255765 0.15655781 0.58197409 0.32989627 0.39257157 0.12656565 0.39258271
		 0.38656694 0.4419851 0.32988331 0.44199392 0.32987264 0.39260167 0.3865563 0.39256859
		 0.12656797 0.58196884 0.3298974 0.0023334473 0.40473324 0.34233743 0.40467277 0.36257643
		 0.12656039 0.0023280829 0.37473646 0.36257434 0.1265672 0.44196582 0.359878 0.36258429
		 0.38656819 0.0023294687 0.30827102 0.34233534 0.30824569 0.36258924 0.38656232 0.3625921
		 0.38656002 0.34233478 0.30828062 0.0023337603 0.30823705 0.36260504 0.38656119 0.36257184
		 0.12657036 0.44196105 0.35988182 0.34234184 0.4047285 0.0023320913 0.40467766 0.3625595
		 0.12657188 0.0023368001 0.37468019 0.44197658 0.29988667 0.44197366 0.28988686 0.42258769
		 0.32655779 0.43258744 0.32655594 0.42257202 0.18655805 0.43257189 0.18655746 0.58197182
		 0.29990184 0.5819729 0.28990209 0.44199094 0.29987898 0.44198975 0.28987989 0.42257959
		 0.3265689 0.43257993 0.3265689 0.42256987 0.18655871 0.43256962 0.18655805 0.58197635
		 0.29989874 0.58197767 0.28989792 0.34234291 0.43466982 0.3423447 0.44466969 0.36257833
		 0.1865578 0.35257763 0.18655846 0.36258566 0.32656822 0.35258567 0.32656881 0.0023270547
		 0.27827409 0.0023264587 0.26827422 0.0023376942 0.2782402 0.0023388267 0.26824054
		 0.36258745 0.32656693 0.3525877 0.32656759 0.36257023 0.18656497 0.35257024 0.18656676
		 0.34233737 0.43472603 0.34233594 0.44472596 0.34233749 0.33824292 0.34233987 0.36823979
		 0.58198655 0.35985121 0.58199012 0.38984463 0.58199751 0.35984144 0.58200622 0.38983807
		 0.3423312 0.33827677 0.34232703 0.36827353;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 80 ".vt[0:79]"  -1 0 0.35001501 -0.85001498 0 0.35001501
		 -0.85001498 0 0.5 -0.85001498 0.149985 0.5 -1 0.149985 0.5 -1 0.149985 0.35001501
		 1 0 0.35001501 1 0.149985 0.35001501 1 0.14998502 0.5 0.85001498 0.14998502 0.5 0.85001498 7.4505806e-09 0.5
		 0.85001498 7.4505806e-09 0.35001501 -1 1 0.35001501 -1 0.85001498 0.35001501 -1 0.85001498 0.5
		 -0.85001498 0.85001498 0.5 -0.85001498 1 0.5 -0.85001498 1 0.35001501 1 1 0.35001501
		 0.85001498 1 0.35001501 0.85001498 1 0.5 0.85001498 0.85001498 0.5 1 0.85001498 0.5
		 1 0.85001498 0.35001501 -1 0.85001498 -0.5 -1 0.85001498 -0.35001501 -1 1 -0.35001501
		 -0.85001498 1 -0.35001501 -0.85001498 1 -0.5 -0.85001498 0.85001498 -0.5 1 0.85001498 -0.5
		 0.85001498 0.85001498 -0.5 0.85001498 1 -0.5 0.85001498 1 -0.35001501 1 1 -0.35001501
		 1 0.85001498 -0.35001501 -1 0 -0.35001501 -1 0.149985 -0.35001501 -1 0.149985 -0.5
		 -0.85001498 0.149985 -0.5 -0.85001498 0 -0.5 -0.85001498 0 -0.35001501 1 0 -0.35001501
		 0.85001498 0 -0.35001501 0.85001498 0 -0.5 0.85001498 0.149985 -0.5 1 0.149985 -0.5
		 1 0.149985 -0.35001501 -1 0 0.5 1 0 0.5 -1 1 0.5 1 1 0.5 -1 1 -0.5 1 1 -0.5 -1 0 -0.5
		 1 0 -0.5 0.85001498 0.149985 0.44999999 -0.85001498 0.149985 0.44999999 0.85001498 0.85001498 0.44999999
		 -0.85001498 0.85001498 0.44999999 0.85001498 0.85001498 -0.44999999 -0.85001498 0.85001498 -0.44999999
		 0.85001498 0.149985 -0.44999999 -0.85001498 0.149985 -0.44999999 0.95000005 0.149985 -0.35001501
		 0.95000005 0.149985 0.35001501 0.95000005 0.85001498 -0.35001501 0.95000005 0.85001498 0.35001501
		 -0.95000005 0.149985 0.35001501 -0.95000005 0.149985 -0.35001501 -0.95000005 0.85001498 0.35001501
		 -0.95000005 0.85001498 -0.35001501 0.85001498 0.85001498 0.35001501 -0.85001498 0.85001498 0.35001501
		 0.85001498 0.85001498 -0.35001501 -0.85001498 0.85001498 -0.35001501 0.85001498 0.26834291 0.35001501
		 -0.85001498 0.26834291 0.35001501 0.85001498 0.26834291 -0.35001501 -0.85001498 0.26834291 -0.35001501;
	setAttr -s 156 ".ed[0:155]"  1 0 1 0 36 0 36 41 1 41 1 0 0 5 1 5 37 0
		 37 36 1 3 2 1 2 10 0 10 9 1 9 3 0 2 1 1 1 11 0 11 10 1 5 4 1 4 14 0 14 13 1 13 5 0
		 4 3 1 3 15 0 15 14 1 7 6 1 6 42 0 42 47 1 47 7 0 6 11 1 11 43 0 43 42 1 9 8 1 8 22 0
		 22 21 1 21 9 0 8 7 1 7 23 0 23 22 1 13 12 1 12 26 0 26 25 1 25 13 0 12 17 1 17 27 0
		 27 26 1 17 16 1 16 20 0 20 19 1 19 17 0 16 15 1 15 21 0 21 20 1 19 18 1 18 34 0 34 33 1
		 33 19 0 18 23 1 23 35 0 35 34 1 25 24 1 24 38 0 38 37 1 37 25 0 24 29 1 29 39 0 39 38 1
		 29 28 1 28 32 0 32 31 1 31 29 0 28 27 1 27 33 0 33 32 1 31 30 1 30 46 0 46 45 1 45 31 0
		 30 35 1 35 47 0 47 46 1 41 40 1 40 44 0 44 43 1 43 41 0 40 39 1 39 45 0 45 44 1 0 48 0
		 48 4 0 2 48 0 6 49 0 49 10 0 8 49 0 12 50 0 50 16 0 14 50 0 18 51 0 51 22 0 20 51 0
		 24 52 0 52 28 0 26 52 0 30 53 0 53 34 0 32 53 0 36 54 0 54 40 0 38 54 0 42 55 0 55 46 0
		 44 55 0 9 56 0 3 57 0 56 57 0 21 58 0 58 56 0 15 59 0 59 58 0 57 59 0 31 60 0 29 61 0
		 60 61 0 45 62 0 62 60 0 39 63 0 63 62 0 61 63 0 47 64 0 7 65 0 64 65 0 35 66 0 66 64 0
		 23 67 0 67 66 0 65 67 0 5 68 0 37 69 0 68 69 0 13 70 0 70 68 0 25 71 0 71 70 0 69 71 0
		 19 72 0 17 73 0 72 73 0 33 74 0 74 72 0 27 75 0 75 74 0 73 75 0 72 76 0 73 77 0 76 77 0
		 74 78 0 78 76 0 75 79 0 79 78 0 77 79 0;
	setAttr -s 76 -ch 304 ".fc[0:75]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 26 117 103 123
		f 4 4 5 6 -2
		mu 0 4 117 144 31 103
		f 4 7 8 9 10
		mu 0 4 32 135 134 168
		f 4 11 12 13 -9
		mu 0 4 135 137 36 134
		f 4 14 15 16 17
		mu 0 4 30 37 38 140
		f 4 18 19 20 -16
		mu 0 4 37 166 40 38
		f 4 21 22 23 24
		mu 0 4 41 108 110 152
		f 4 25 26 27 -23
		mu 0 4 108 133 45 110
		f 4 28 29 30 31
		mu 0 4 35 46 47 164
		f 4 32 33 34 -30
		mu 0 4 46 150 49 47
		f 4 35 36 37 38
		mu 0 4 39 107 113 138
		f 4 39 40 41 -37
		mu 0 4 107 174 54 113
		f 4 42 43 44 45
		mu 0 4 53 130 129 176
		f 4 46 47 48 -44
		mu 0 4 130 162 48 129
		f 4 49 50 51 52
		mu 0 4 57 114 104 172
		f 4 53 54 55 -51
		mu 0 4 114 146 61 104
		f 4 56 57 58 59
		mu 0 4 52 62 63 142
		f 4 60 61 62 -58
		mu 0 4 62 158 65 63
		f 4 63 64 65 66
		mu 0 4 64 126 125 160
		f 4 67 68 69 -65
		mu 0 4 126 170 60 125
		f 4 70 71 72 73
		mu 0 4 68 69 70 156
		f 4 74 75 76 -72
		mu 0 4 69 148 44 70
		f 4 77 78 79 80
		mu 0 4 29 119 118 121
		f 4 81 82 83 -79
		mu 0 4 119 154 71 118
		f 4 -111 -113 -115 -116
		mu 0 4 0 15 14 13
		f 4 -119 -121 -123 -124
		mu 0 4 1 12 11 10
		f 4 -127 -129 -131 -132
		mu 0 4 2 9 8 7
		f 4 -135 -137 -139 -140
		mu 0 4 3 6 5 4
		f 4 -15 -5 84 85
		mu 0 4 37 30 109 74
		f 4 -1 -12 86 -85
		mu 0 4 27 136 33 74
		f 4 -8 -19 -86 -87
		mu 0 4 33 166 37 74
		f 4 -14 -26 87 88
		mu 0 4 34 132 116 75
		f 4 -22 -33 89 -88
		mu 0 4 42 150 46 75
		f 4 -29 -10 -89 -90
		mu 0 4 46 35 34 75
		f 4 -43 -40 90 91
		mu 0 4 55 131 115 76
		f 4 -36 -17 92 -91
		mu 0 4 50 140 38 76
		f 4 -21 -47 -92 -93
		mu 0 4 38 40 55 76
		f 4 -35 -54 93 94
		mu 0 4 47 49 106 77
		f 4 -50 -45 95 -94
		mu 0 4 58 128 56 77
		f 4 -49 -31 -95 -96
		mu 0 4 56 164 47 77
		f 4 -64 -61 96 97
		mu 0 4 66 158 62 78
		f 4 -57 -38 98 -97
		mu 0 4 62 52 105 78
		f 4 -42 -68 -98 -99
		mu 0 4 51 127 66 78
		f 4 -56 -75 99 100
		mu 0 4 59 148 69 79
		f 4 -71 -66 101 -100
		mu 0 4 69 68 67 79
		f 4 -70 -52 -101 -102
		mu 0 4 67 124 112 79
		f 4 -78 -3 102 103
		mu 0 4 72 122 111 80
		f 4 -7 -59 104 -103
		mu 0 4 28 142 63 80
		f 4 -63 -82 -104 -105
		mu 0 4 63 65 72 80
		f 4 -77 -24 105 106
		mu 0 4 70 44 102 81
		f 4 -28 -80 107 -106
		mu 0 4 43 120 73 81
		f 4 -84 -73 -107 -108
		mu 0 4 73 156 70 81
		f 4 -11 108 110 -110
		mu 0 4 32 168 169 83
		f 4 -32 111 112 -109
		mu 0 4 35 164 165 82
		f 4 -48 113 114 -112
		mu 0 4 48 162 163 84
		f 4 -20 109 115 -114
		mu 0 4 40 166 167 85
		f 4 -67 116 118 -118
		mu 0 4 64 160 161 87
		f 4 -74 119 120 -117
		mu 0 4 68 156 157 86
		f 4 -83 121 122 -120
		mu 0 4 71 154 155 88
		f 4 -62 117 123 -122
		mu 0 4 65 158 159 89
		f 4 -25 124 126 -126
		mu 0 4 41 152 153 91
		f 4 -76 127 128 -125
		mu 0 4 44 148 149 90
		f 4 -55 129 130 -128
		mu 0 4 61 146 147 92
		f 4 -34 125 131 -130
		mu 0 4 49 150 151 93
		f 4 -6 132 134 -134
		mu 0 4 31 144 145 95
		f 4 -18 135 136 -133
		mu 0 4 30 140 141 94
		f 4 -39 137 138 -136
		mu 0 4 39 138 139 96
		f 4 -60 133 139 -138
		mu 0 4 52 142 143 97
		f 4 -46 140 142 -142
		mu 0 4 53 176 177 99
		f 4 -53 143 144 -141
		mu 0 4 57 172 173 98
		f 4 -69 145 146 -144
		mu 0 4 60 170 171 100
		f 4 -41 141 147 -146
		mu 0 4 54 174 175 101
		f 4 -143 148 150 -150
		mu 0 4 21 16 19 22
		f 4 -145 151 152 -149
		mu 0 4 16 17 18 19
		f 4 -147 153 154 -152
		mu 0 4 17 24 25 18
		f 4 -148 149 155 -154
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Chest_Top" -p "Chest";
	rename -uid "7B4E0086-44D0-0DAB-043C-5180E3E6C20E";
	setAttr ".rp" -type "double3" -4.4408920985006262e-16 1 -0.49999994039535517 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-16 1 -0.49999994039535517 ;
createNode mesh -n "Chest_TopShape" -p "Chest_Top";
	rename -uid "067F98EA-4949-DC41-23F2-2992D24C6FD7";
	setAttr -k off ".v";
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[4:11]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 6 "f[0:3]" "f[12:23]" "f[55:58]" "f[64:67]" "f[73:76]" "f[82:85]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 5 "f[24:54]" "f[59:63]" "f[68:72]" "f[77:81]" "f[86:93]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.89285570383071899 0.15996527671813965 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 160 ".uvst[0].uvsp[0:159]" -type "float2" 0.84893143 0.17463136
		 0.83554566 0.68769169 0.33800563 0.56724465 0.19651116 0.56728017 0.197779 0.46030298
		 0.83555937 0.8410008 0.83555436 0.78484106 0.93679029 0.17462254 0.83555001 0.73626637
		 0.89286304 0.19535697 0.26718986 0.4603034 0.64523566 0.68770862 0.26719892 0.46030152
		 0.5283156 0.5671972 0.64524925 0.84101796 0.6452443 0.78485799 0.64524001 0.7362833
		 0.5412941 0.48014313 0.36718893 0.54693425 0.81671488 0.60393929 0.81670201 0.52740252
		 0.56243449 0.65030777 0.39987275 0.48011786 0.81667626 0.37432921 0.38684234 0.65035331
		 0.47057816 0.5094198 0.81668913 0.45086586 0.26718915 0.54693335 0.59229422 0.52744031
		 0.59230709 0.60397696 0.267187 0.54693127 0.16243427 0.65041173 0.59226847 0.374367
		 0.59228134 0.45090365 0.16242607 0.6178776 0.33660066 0.48030415 0.33801058 0.58724463
		 0.33801815 0.61783373 0.97872072 0.26649004 0.38682577 0.58723223 0.19777876 0.4803029
		 0.16718966 0.51440024 0.26718938 0.51440126 0.26718974 0.48030356 0.56242597 0.61777747
		 0.52832061 0.58719695 0.26719618 0.48030138 0.26719141 0.51439929 0.19651558 0.58728158
		 0.16242586 0.61787951 0.33802465 0.64409959 0.37345517 0.54066813 0.37345529 0.52066815
		 0.3380197 0.62409961 0.1609233 0.54066634 0.38684067 0.6440872 0.97245461 0.26648909
		 0.16092354 0.52066624 0.26718915 0.5406673 0.26718938 0.52066725 0.26718783 0.54066533
		 0.5686987 0.64404213 0.56869364 0.62404191 0.26719058 0.52066535 0.15616654 0.64414728
		 0.15616135 0.6241473 0.78674382 0.84100533 0.33801016 0.58724487 0.78673875 0.78484535
		 0.78673446 0.73627067 0.78673017 0.68769586 0.38682118 0.56723249 0.38682613 0.58723247
		 0.386834 0.61782134 0.38683555 0.62408769 0.38684049 0.64408743 0.7678991 0.60394764
		 0.76788628 0.52741086 0.76787341 0.45087409 0.76786053 0.37433743 0.33802643 0.65036595
		 0.33802482 0.64410007 0.92363882 0.26648253 0.92364711 0.20402169 0.92364335 0.23211914
		 0.97872448 0.23839259 0.97245836 0.23839176 0.92364252 0.2383852 0.56869894 0.64403999
		 0.5686937 0.62403977 0.56242591 0.61777556 0.37345386 0.54067993 0.37345672 0.52067995
		 0.36719143 0.51441294 0.3671869 0.54694515 0.3705962 0.40940189 0.16092187 0.54065055
		 0.16092461 0.52065057 0.16719157 0.51438522 0.15616657 0.64414513 0.15616156 0.62414515
		 0.36718929 0.51440203 0.3705962 0.40943551 0.99230707 0.60390973 0.52832025 0.58719528
		 0.97705388 0.8409884 0.33660722 0.48031116 0.82344407 0.12458432 0.1977852 0.48029184
		 0.19778794 0.46029198 0.19651617 0.58728015 0.82344431 0.12458789 0.89286059 0.19535577
		 0.93678874 0.17462289 0.97704446 0.73625374 0.97704017 0.68767893 0.84892958 0.17462885
		 0.97704887 0.78482842 0.47061262 0.50941896 0.39989731 0.48014128 0.54131842 0.48011804
		 0.99228132 0.45083642 0.99229419 0.52737308 0.99226844 0.37429971 0.81666338 0.29779255
		 0.76784766 0.29780078 0.33802626 0.65036595 0.38684204 0.65035355 0.5705961 0.40940261
		 0.59225559 0.29783034 0.16718704 0.5469175 0.56243408 0.65030968 0.47059616 0.40941918
		 0.47059616 0.40941989 0.99225557 0.29776299 0.1671893 0.5469324 0.5705961 0.40943789
		 0.16243424 0.65040982 0.83554065 0.63153172 0.7867251 0.63153613 0.38682052 0.56723225
		 0.33800498 0.56724489 0.64523059 0.63154864 0.19651039 0.5672816 0.52831513 0.56719553
		 0.97703516 0.63151908 0.33660996 0.46031117 0.8928557 0.12457955 0.96226734 0.12457478
		 0.89285576 0.12458062 0.96226698 0.12457359 0.3366009 0.46030411 0.38683543 0.62408721
		 0.38683388 0.6178211 0.33801797 0.61783397 0.33801964 0.62409985 0.97245914 0.2321257
		 0.91737264 0.2664817 0.97246289 0.20402825 0.9173764 0.23838437;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".lev" 3;
	setAttr -s 88 ".vt[0:87]"  1 1.4535532 -0.35355335 1 1.099999905 -0.49999994
		 1 1.099999905 0.49999994 1 1.45355332 0.35355335 1 1.5999999 0 -1 1.4535532 -0.35355335
		 -1 1.099999905 -0.49999994 -1 1.099999905 0.49999994 -1 1.45355332 0.35355335 -1 1.5999999 0
		 1 1.099999905 0 -1 1.099999905 0 0.82951117 1.35022998 -0.21964648 0.8295114 1.099999905 -0.34705538
		 -0.8295114 1.099999905 -0.34705538 -0.82951117 1.35022998 -0.21964648 0.8295114 1.099999905 0.34705538
		 0.82951117 1.3502301 0.21964651 -0.82951117 1.3502301 0.21964651 -0.8295114 1.099999905 0.34705538
		 0.82951117 1.45387888 2.9802322e-08 -0.82951117 1.45387888 2.9802322e-08 0.82951128 1.099999905 0
		 -0.82951128 1.099999905 0 1 1 -0.49999994 0.8295114 1 -0.34705538 -0.8295114 1 -0.34705538
		 -1 1 -0.49999994 -1 1 0.49999994 -0.8295114 1 0.34705538 0.8295114 1 0.34705538 1 1 0.49999994
		 1 1 0 0.82951128 1 0 -0.82951128 1 0 -1 1 0 1.031330585 1.099999905 -0.53133053 -1.031330585 1.099999905 -0.53133053
		 1.031330585 1 -0.53133053 -1.031330585 1 -0.53133053 1.031330585 1.099999905 0.53133053
		 -1.031330585 1.099999905 0.53133053 -1.031330585 1 0.53133053 1.031330585 1 0.53133053
		 1.031330585 1.099999905 0 1.031330585 1 0 -1.031330585 1.099999905 0 -1.031330585 1 0
		 -0.12203892 1 0.34705538 -0.12203892 1.099999905 0.34705538 -0.12203886 1.3502301 0.21964651
		 -0.12203886 1.45387888 2.9802322e-08 -0.12203886 1.35022998 -0.21964648 -0.12203892 1.099999905 -0.34705538
		 -0.12203892 1 -0.34705538 -0.12203949 1 -0.49999994 -0.12203958 1 -0.53133053 -0.12203958 1.099999905 -0.53133053
		 -0.12203949 1.099999905 -0.49999994 -0.12203949 1.4535532 -0.35355335 -0.12203949 1.5999999 0
		 -0.12203949 1.45355332 0.35355335 -0.12203949 1.099999905 0.49999994 -0.12203958 1.099999905 0.53133053
		 -0.12203958 1 0.53133053 -0.12203949 1 0.49999994 0.12203895 1 0.34705538 0.12203895 1.099999905 0.34705538
		 0.12203886 1.3502301 0.21964651 0.12203886 1.45387888 2.9802322e-08 0.12203886 1.35022998 -0.21964648
		 0.12203895 1.099999905 -0.34705538 0.12203895 1 -0.34705538 0.12203946 1 -0.49999994
		 0.12203958 1 -0.53133053 0.12203958 1.099999905 -0.53133053 0.12203946 1.099999905 -0.49999994
		 0.12203946 1.4535532 -0.35355335 0.12203946 1.5999999 0 0.12203946 1.45355332 0.35355335
		 0.12203946 1.099999905 0.49999994 0.12203958 1.099999905 0.53133053 0.12203958 1 0.53133053
		 0.12203946 1 0.49999994 0.12203946 0.8595131 0.49999994 -0.12203949 0.8595131 0.49999994
		 0.12203958 0.8595131 0.53133053 -0.12203958 0.8595131 0.53133053;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 3 4 0 4 0 0 5 6 0 7 8 0 8 9 0 9 5 0 0 77 0
		 1 76 0 2 80 0 3 79 0 4 78 0 10 0 1 10 1 0 10 2 0 10 3 1 10 4 1 5 11 1 6 11 0 7 11 0
		 8 11 1 9 11 1 12 13 0 13 71 1 15 14 0 12 70 0 16 17 0 17 68 0 19 18 0 16 67 1 17 20 0
		 20 69 0 18 21 0 20 12 0 21 15 0 22 12 1 22 13 1 22 16 1 22 17 1 22 20 1 14 23 1 15 23 1
		 18 23 1 19 23 1 21 23 1 13 25 0 24 25 1 14 26 0 25 72 0 27 26 1 24 73 1 19 29 0 28 29 1
		 16 30 0 30 66 0 31 30 1 31 83 1 22 33 1 32 33 1 33 25 0 32 24 1 33 30 0 32 31 1 23 34 1
		 26 34 0 35 34 1 27 35 1 29 34 0 28 35 1 1 36 1 6 37 1 36 75 0 24 38 1 36 38 0 27 39 1
		 38 74 0 37 39 0 2 40 1 7 41 1 40 81 0 28 42 1 41 42 0 31 43 1 43 82 0 40 43 0 10 44 1
		 44 36 0 32 45 1 44 45 1 45 38 0 44 40 0 45 43 0 11 46 1 37 46 0 35 47 1 39 47 0 46 47 1
		 41 46 0 42 47 0 48 29 0 49 19 1 48 49 1 50 18 0 49 50 1 51 21 0 50 51 1 52 15 0 51 52 1
		 53 14 1 52 53 1 54 26 0 53 54 1 55 27 1 54 55 1 56 39 0 55 56 1 57 37 0 56 57 1 58 6 0
		 57 58 1 59 5 0 58 59 1 60 9 0 59 60 1 61 8 0 60 61 1 62 7 0 61 62 1 63 41 0 62 63 1
		 64 42 0 63 64 1 65 28 1 64 65 0 65 48 1 66 48 0 67 49 1 66 67 1 68 50 0 67 68 1 69 51 0
		 68 69 1 70 52 0 69 70 1 71 53 1 70 71 1 72 54 0 71 72 1 73 55 1 72 73 1 74 56 0 73 74 1
		 75 57 0 74 75 1 76 58 0 75 76 1 77 59 0 76 77 1 78 60 0 77 78 1 79 61 0 78 79 1 80 62 0
		 79 80 1 81 63 0;
	setAttr ".ed[166:179]" 80 81 1 82 64 1 81 82 1 83 65 0 82 83 0 83 66 1 83 84 0
		 65 85 0 84 85 0 82 86 0 86 84 0 64 87 0 86 87 0 87 85 0;
	setAttr -s 94 -ch 360 ".fc[0:93]" -type "polyFaces" 
		f 4 26 146 -25 -24
		mu 0 4 115 1 138 145
		f 4 30 140 -29 -28
		mu 0 4 105 5 6 117
		f 4 28 142 -33 -32
		mu 0 4 117 6 8 114
		f 4 32 144 -27 -35
		mu 0 4 114 8 1 115
		f 3 -38 36 23
		mu 0 3 111 149 0
		f 3 -40 38 27
		mu 0 3 7 149 150
		f 3 -41 39 31
		mu 0 3 9 149 7
		f 3 -37 40 34
		mu 0 3 0 149 9
		f 3 42 -42 -26
		mu 0 3 113 147 148
		f 3 44 -44 -30
		mu 0 3 107 147 116
		f 3 43 -46 -34
		mu 0 3 116 147 112
		f 3 45 -43 -36
		mu 0 3 112 147 113
		f 4 0 9 158 -9
		mu 0 4 122 103 19 20
		f 4 1 11 164 -11
		mu 0 4 134 123 23 124
		f 4 2 12 162 -12
		mu 0 4 123 121 26 23
		f 4 3 8 160 -13
		mu 0 4 121 122 20 26
		f 3 -1 -14 14
		mu 0 3 136 17 133
		f 3 -2 -16 16
		mu 0 3 22 95 133
		f 3 -3 -17 17
		mu 0 3 25 22 133
		f 3 -4 -18 13
		mu 0 3 17 25 133
		f 3 4 19 -19
		mu 0 3 119 102 132
		f 3 5 21 -21
		mu 0 3 128 120 132
		f 3 6 22 -22
		mu 0 3 120 118 132
		f 3 7 18 -23
		mu 0 3 118 119 132
		f 4 47 49 150 -52
		mu 0 4 34 110 36 37
		f 4 171 -56 -57 57
		mu 0 4 153 39 104 90
		f 4 59 60 -48 -62
		mu 0 4 42 43 35 101
		f 4 56 -63 -60 63
		mu 0 4 41 40 43 42
		f 4 50 65 -67 -68
		mu 0 4 98 108 46 47
		f 4 66 -69 -54 69
		mu 0 4 47 46 106 93
		f 4 24 148 -50 -47
		mu 0 4 3 2 36 110
		f 4 -73 74 76 154
		mu 0 4 50 99 100 53
		f 4 -31 54 55 138
		mu 0 4 140 144 104 39
		f 4 80 168 -85 -86
		mu 0 4 88 55 152 89
		f 4 37 46 -61 -59
		mu 0 4 10 151 35 43
		f 4 -88 89 90 -75
		mu 0 4 51 58 59 52
		f 4 -39 58 62 -55
		mu 0 4 4 10 43 40
		f 4 91 85 -93 -90
		mu 0 4 58 54 57 59
		f 4 41 64 -66 -49
		mu 0 4 109 12 46 108
		f 4 -95 77 96 -98
		mu 0 4 60 96 97 63
		f 4 -45 52 68 -65
		mu 0 4 12 146 106 46
		f 4 98 97 -100 -83
		mu 0 4 91 60 63 92
		f 4 -10 70 72 156
		mu 0 4 126 137 99 50
		f 4 51 152 -77 -74
		mu 0 4 34 37 53 100
		f 4 10 166 -81 -79
		mu 0 4 21 24 55 88
		f 4 -58 83 84 170
		mu 0 4 153 90 89 152
		f 4 -15 86 87 -71
		mu 0 4 18 27 58 51
		f 4 61 73 -91 -89
		mu 0 4 42 101 52 59
		f 4 15 78 -92 -87
		mu 0 4 27 135 54 58
		f 4 -64 88 92 -84
		mu 0 4 41 42 59 57
		f 4 -20 71 94 -94
		mu 0 4 30 130 96 60
		f 4 67 95 -97 -76
		mu 0 4 98 47 63 97
		f 4 20 93 -99 -80
		mu 0 4 94 30 60 91
		f 4 -70 81 99 -96
		mu 0 4 47 93 92 63
		f 4 -102 -103 100 -53
		mu 0 4 143 141 67 48
		f 4 -105 101 29 -104
		mu 0 4 68 66 14 15
		f 4 -107 103 33 -106
		mu 0 4 69 68 15 16
		f 4 -109 105 35 -108
		mu 0 4 70 69 16 11
		f 4 -111 107 25 -110
		mu 0 4 139 70 11 142
		f 4 -113 109 48 -112
		mu 0 4 72 71 13 45
		f 4 -115 111 -51 -114
		mu 0 4 73 72 45 44
		f 4 -117 113 75 -116
		mu 0 4 74 73 44 62
		f 4 -118 -119 115 -78
		mu 0 4 61 75 74 62
		f 4 -120 -121 117 -72
		mu 0 4 131 127 75 61
		f 4 -123 119 -5 -122
		mu 0 4 77 76 29 28
		f 4 -125 121 -8 -124
		mu 0 4 78 77 28 33
		f 4 -127 123 -7 -126
		mu 0 4 79 78 33 32
		f 4 -129 125 -6 -128
		mu 0 4 125 79 32 129
		f 4 -131 127 79 -130
		mu 0 4 81 80 31 64
		f 4 -133 129 82 -132
		mu 0 4 155 81 64 65
		f 4 -134 -135 131 -82
		mu 0 4 49 154 155 65
		f 4 53 -101 -136 133
		mu 0 4 49 48 67 154
		f 4 -138 -139 136 102
		mu 0 4 141 140 39 67
		f 4 -141 137 104 -140
		mu 0 4 6 5 66 68
		f 4 -143 139 106 -142
		mu 0 4 8 6 68 69
		f 4 -145 141 108 -144
		mu 0 4 1 8 69 70
		f 4 -147 143 110 -146
		mu 0 4 138 1 70 139
		f 4 -149 145 112 -148
		mu 0 4 36 2 71 72
		f 4 -151 147 114 -150
		mu 0 4 37 36 72 73
		f 4 -153 149 116 -152
		mu 0 4 53 37 73 74
		f 4 -154 -155 151 118
		mu 0 4 75 50 53 74
		f 4 -156 -157 153 120
		mu 0 4 127 126 50 75
		f 4 -159 155 122 -158
		mu 0 4 20 19 76 77
		f 4 -161 157 124 -160
		mu 0 4 26 20 77 78
		f 4 -163 159 126 -162
		mu 0 4 23 26 78 79
		f 4 -165 161 128 -164
		mu 0 4 124 23 79 125
		f 4 -167 163 130 -166
		mu 0 4 55 24 80 81
		f 4 -169 165 132 -168
		mu 0 4 152 55 81 155
		f 4 -175 -177 178 179
		mu 0 4 84 156 86 87
		f 4 135 -137 -172 169
		mu 0 4 154 67 39 153
		f 4 -170 172 174 -174
		mu 0 4 83 158 156 84
		f 4 -171 175 176 -173
		mu 0 4 38 56 86 85
		f 4 167 177 -179 -176
		mu 0 4 56 82 87 86
		f 4 134 173 -180 -178
		mu 0 4 82 157 159 87;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Gold" -p "Chest";
	rename -uid "4E9850FC-4A66-3D55-8609-C2B72AC67151";
	setAttr ".rp" -type "double3" 0 0.84596934980564309 0 ;
	setAttr ".sp" -type "double3" 0 0.84596934980564309 0 ;
createNode mesh -n "GoldShape" -p "Gold";
	rename -uid "C29F87C9-4394-46A9-44A9-6493D2E5D5BD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5001341849565506 0.50355032086372375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0.026503116 0.29304767
		 0.26331872 0.29304767 0.50013435 0.29304767 0.73694962 0.29304767 0.97376525 0.29304767
		 0.026503116 0.50355053 0.26331872 0.50355053 0.50013435 0.50355053 0.73694962 0.50355053
		 0.97376525 0.50355053 0.026503116 0.71405298 0.26331872 0.71405298 0.50013435 0.71405298
		 0.73694962 0.71405298 0.97376525 0.71405298;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".vt[0:14]"  -0.89999998 0.92687553 0.40000001 -0.44999999 0.92687553 0.40000001
		 0 0.84596938 0.40000001 0.44999993 0.79588652 0.40000001 0.89999998 0.79181963 0.40000001
		 -0.89999998 0.92687553 0 -0.44999999 0.92363209 0 0 0.84596938 0 0.44999993 0.84596938 0
		 0.89999998 0.84596938 0 -0.89999998 0.84596938 -0.40000001 -0.44999999 0.87833637 -0.40000001
		 0 0.84596938 -0.40000001 0.44999993 0.84596938 -0.40000001 0.89999998 0.90657848 -0.40000001;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 5 0 1 2 0 1 6 1 2 3 0 2 7 1 3 4 0
		 3 8 1 4 9 0 5 6 1 5 10 0 6 7 1 6 11 1 7 8 1 7 12 1 8 9 1 8 13 1 9 14 0 10 11 0 11 12 0
		 12 13 0 13 14 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 3 -10 -2
		mu 0 4 0 1 6 5
		f 4 2 5 -12 -4
		mu 0 4 1 2 7 6
		f 4 4 7 -14 -6
		mu 0 4 2 3 8 7
		f 4 6 8 -16 -8
		mu 0 4 3 4 9 8
		f 4 9 12 -19 -11
		mu 0 4 5 6 11 10
		f 4 11 14 -20 -13
		mu 0 4 6 7 12 11
		f 4 13 16 -21 -15
		mu 0 4 7 8 13 12
		f 4 15 17 -22 -17
		mu 0 4 8 9 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "47FB3AC7-4420-FCD9-8541-E084C2A16828";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "86AA8D26-4249-4A5E-7FDC-C5A8A9FBF1D3";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "4ED78A82-46D8-9BD7-2588-86892B33E141";
createNode displayLayerManager -n "layerManager";
	rename -uid "D0BDE1CB-4B45-9022-DA31-30A51FC7DB2B";
createNode displayLayer -n "defaultLayer";
	rename -uid "4FB7D551-4C1F-434E-29DD-B89F65E13D52";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "D3E7DEC8-4033-5603-62B9-0D9EB988ED8E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A04182C3-4F04-C1D3-4362-D2BEA8E32811";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "54CFB779-44BF-8271-05A3-E396E3456F9C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 935\n            -height 751\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n"
		+ "                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"straight\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 935\\n    -height 751\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 935\\n    -height 751\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "7FC56460-4ACF-D53E-3169-0FBA77ABADFD";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode aiStandardSurface -n "GoldCoins";
	rename -uid "4CFAD622-4B15-ACED-87BE-FFA9411E58E4";
	setAttr ".specular" 0;
	setAttr ".specular_color" -type "float3" 0 0 0 ;
	setAttr ".specular_roughness" 1;
createNode shadingEngine -n "aiStandardSurface1SG";
	rename -uid "68CA1BAD-4577-ABA2-24DD-1AB989DD61BB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "7F1888EE-4672-326B-58E8-E28D7E0A8153";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "B3135E93-43A7-449D-9C93-038278A0446F";
	setAttr ".version" -type "string" "2.0.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "8795F96F-40A0-C46F-6456-1288AAD0A491";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "DBCE2C1B-4DF5-41FC-0876-0AAAD3808DCA";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "05436FCB-4A5F-E0F6-9BB7-96AEC36C5D68";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode file -n "file1";
	rename -uid "115F0941-4DA8-20BB-9160-F3A01EB66F4D";
	setAttr ".ftn" -type "string" "D:/GIT/Map-Gen-Stuff/Unity/Map Gen/Assets/Materials/Gold Coins/Coins_basecolor.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "6DAA7E2E-4025-1675-F045-C2893B9861EB";
createNode file -n "file2";
	rename -uid "716A255F-460E-EDB5-BC5C-91A87A61EA3D";
	setAttr ".ftn" -type "string" "D:/GIT/Map-Gen-Stuff/Unity/Map Gen/Assets/Materials/Gold Coins/Coins_normal.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "EBA336A9-497A-4F1F-FA6B-ED8ED2FE8ED6";
createNode aiStandardSurface -n "Wood_Planks";
	rename -uid "D1FEB1E0-40CB-CE9A-95D3-B6A375127F8B";
	setAttr ".specular" 0;
	setAttr ".specular_roughness" 1;
createNode shadingEngine -n "aiStandardSurface2SG";
	rename -uid "7669FC40-411E-83A9-F316-6C9F788D4B0A";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "materialInfo2";
	rename -uid "53D65910-4D48-9960-3C72-52AEB7273F7C";
createNode groupId -n "groupId1";
	rename -uid "77CA54F9-4293-F192-2D77-C7A547337EA0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "F626AA0E-4182-68FD-ADB9-3F85DDC18FE2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "8D95369C-447C-C46E-3436-5F942675E6B3";
	setAttr ".ihi" 0;
createNode file -n "file3";
	rename -uid "A9D674BB-4E47-BA50-AB97-C490283758E1";
	setAttr ".ftn" -type "string" "D:/GIT/Map-Gen-Stuff/Unity/Map Gen/Assets/Materials/Wood Planks/Wood_Planks_basecolor.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "E7463970-42F9-5633-8ECE-4399322ADF52";
createNode groupId -n "groupId4";
	rename -uid "8C83A277-4AAD-9C82-4BDB-E5981CD0324C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "E07A6DA6-4353-F511-1328-5FAC595460BA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "AB1185B1-44A1-1C0B-CF8C-059E99031B1D";
	setAttr ".ihi" 0;
createNode aiStandardSurface -n "metal";
	rename -uid "C79D0836-47F7-26CB-BD8C-098C4AE80A07";
	setAttr ".specular_roughness" 0.32167831063270569;
	setAttr ".metalness" 0.64335662126541138;
createNode shadingEngine -n "aiStandardSurface3SG";
	rename -uid "B5F066C1-4C13-90C1-5E57-8C9C60EB0FB3";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo3";
	rename -uid "48CEC6F1-48E0-90BA-7BB6-97A1FDCE06EC";
createNode groupId -n "groupId7";
	rename -uid "90192E56-4391-45AA-1605-B880BEF990B2";
	setAttr ".ihi" 0;
createNode file -n "file4";
	rename -uid "F17F3229-4E52-6047-47A8-DAB043FC2133";
	setAttr ".ftn" -type "string" "D:/GIT/Map-Gen-Stuff/Unity/Map Gen/Assets/Materials/Metal/Stone_Metal_Base_Color.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "B6A6FBF9-44EF-4BF1-33C3-2DA932731DCA";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "9CD0AC8A-4D06-BBB9-BA29-C9AF63759CF2";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -414.39810789095543 -382.1428419578649 ;
	setAttr ".tgi[0].vh" -type "double2" 282.25525599898344 328.57141551517361 ;
	setAttr -s 6 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -272.85714721679688;
	setAttr ".tgi[0].ni[0].y" 270;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 34.285713195800781;
	setAttr ".tgi[0].ni[1].y" 291.42855834960938;
	setAttr ".tgi[0].ni[1].nvs" 2387;
	setAttr ".tgi[0].ni[2].x" 382.85714721679688;
	setAttr ".tgi[0].ni[2].y" 268.57144165039063;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -555.7161865234375;
	setAttr ".tgi[0].ni[3].y" -40.682346343994141;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -580;
	setAttr ".tgi[0].ni[4].y" 247.14285278320313;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" -316.48947143554688;
	setAttr ".tgi[0].ni[5].y" -29.240671157836914;
	setAttr ".tgi[0].ni[5].nvs" 1923;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".aoon" yes;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 4 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId1.id" "ChestShape.iog.og[0].gid";
connectAttr "aiStandardSurface3SG.mwc" "ChestShape.iog.og[0].gco";
connectAttr "groupId3.id" "ChestShape.iog.og[1].gid";
connectAttr "aiStandardSurface2SG.mwc" "ChestShape.iog.og[1].gco";
connectAttr "groupId2.id" "ChestShape.ciog.cog[0].cgid";
connectAttr "groupId4.id" "Chest_TopShape.iog.og[1].gid";
connectAttr "aiStandardSurface2SG.mwc" "Chest_TopShape.iog.og[1].gco";
connectAttr "groupId6.id" "Chest_TopShape.iog.og[2].gid";
connectAttr "aiStandardSurface2SG.mwc" "Chest_TopShape.iog.og[2].gco";
connectAttr "groupId7.id" "Chest_TopShape.iog.og[3].gid";
connectAttr "aiStandardSurface3SG.mwc" "Chest_TopShape.iog.og[3].gco";
connectAttr "groupId5.id" "Chest_TopShape.ciog.cog[0].cgid";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "file1.oc" "GoldCoins.base_color";
connectAttr "file2.oc" "GoldCoins.n";
connectAttr "GoldCoins.out" "aiStandardSurface1SG.ss";
connectAttr "GoldShape.iog" "aiStandardSurface1SG.dsm" -na;
connectAttr "aiStandardSurface1SG.msg" "materialInfo1.sg";
connectAttr "GoldCoins.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "file3.oc" "Wood_Planks.base_color";
connectAttr "Wood_Planks.out" "aiStandardSurface2SG.ss";
connectAttr "groupId3.msg" "aiStandardSurface2SG.gn" -na;
connectAttr "groupId6.msg" "aiStandardSurface2SG.gn" -na;
connectAttr "groupId4.msg" "aiStandardSurface2SG.gn" -na;
connectAttr "ChestShape.iog.og[1]" "aiStandardSurface2SG.dsm" -na;
connectAttr "Chest_TopShape.iog.og[2]" "aiStandardSurface2SG.dsm" -na;
connectAttr "Chest_TopShape.iog.og[1]" "aiStandardSurface2SG.dsm" -na;
connectAttr "aiStandardSurface2SG.msg" "materialInfo2.sg";
connectAttr "Wood_Planks.msg" "materialInfo2.m";
connectAttr "file3.msg" "materialInfo2.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file3.ws";
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr "file4.oc" "metal.base_color";
connectAttr "metal.out" "aiStandardSurface3SG.ss";
connectAttr "groupId7.msg" "aiStandardSurface3SG.gn" -na;
connectAttr "groupId1.msg" "aiStandardSurface3SG.gn" -na;
connectAttr "Chest_TopShape.iog.og[3]" "aiStandardSurface3SG.dsm" -na;
connectAttr "ChestShape.iog.og[0]" "aiStandardSurface3SG.dsm" -na;
connectAttr "aiStandardSurface3SG.msg" "materialInfo3.sg";
connectAttr "metal.msg" "materialInfo3.m";
connectAttr "file4.msg" "materialInfo3.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file4.ws";
connectAttr "place2dTexture4.c" "file4.c";
connectAttr "place2dTexture4.tf" "file4.tf";
connectAttr "place2dTexture4.rf" "file4.rf";
connectAttr "place2dTexture4.mu" "file4.mu";
connectAttr "place2dTexture4.mv" "file4.mv";
connectAttr "place2dTexture4.s" "file4.s";
connectAttr "place2dTexture4.wu" "file4.wu";
connectAttr "place2dTexture4.wv" "file4.wv";
connectAttr "place2dTexture4.re" "file4.re";
connectAttr "place2dTexture4.of" "file4.of";
connectAttr "place2dTexture4.r" "file4.ro";
connectAttr "place2dTexture4.n" "file4.n";
connectAttr "place2dTexture4.vt1" "file4.vt1";
connectAttr "place2dTexture4.vt2" "file4.vt2";
connectAttr "place2dTexture4.vt3" "file4.vt3";
connectAttr "place2dTexture4.vc1" "file4.vc1";
connectAttr "place2dTexture4.o" "file4.uv";
connectAttr "place2dTexture4.ofs" "file4.fs";
connectAttr "file1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "GoldCoins.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "aiStandardSurface1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "place2dTexture2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "file2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "aiStandardSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface3SG.pa" ":renderPartition.st" -na;
connectAttr "GoldCoins.msg" ":defaultShaderList1.s" -na;
connectAttr "Wood_Planks.msg" ":defaultShaderList1.s" -na;
connectAttr "metal.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "ChestShape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Chest_TopShape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
// End of Chest.ma
