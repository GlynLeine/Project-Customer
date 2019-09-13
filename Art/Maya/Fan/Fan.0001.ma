//Maya ASCII 2019 scene
//Name: Fan.0001.ma
//Last modified: Thu, Sep 12, 2019 02:23:40 PM
//Codeset: 1252
requires maya "2019";
requires "mtoa" "3.1.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 17134)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "1F9F2AE2-46AA-5FAB-6350-93BE72CDC077";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2895.0025321416933 515.73147438750823 -72.616065696627345 ;
	setAttr ".r" -type "double3" -9.9383526478089994 -1350.200000000041 2.2779091224499098e-13 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "AE11F7BF-4891-BFAA-FD9F-3183AA1F9AA9";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 2766.1309980871206;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 170.3966410202159 38.329146061759815 -82.126773050957908 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "624BD444-4821-1E6B-B000-F494E83690B7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "82B9E0A1-4A8E-1D7C-744B-96B45AC49295";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 29.034985747691014;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "08D7A5F7-4397-2999-90A7-CA9230355EC6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C566D48F-42BC-70FB-4F38-71AAFBC821A6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 41.355851923221898;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "1E51171A-4D16-1E62-C656-4A822DE85075";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "248D46F1-4294-0A78-554D-57890767601C";
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
createNode transform -n "pCube9";
	rename -uid "4438CCBC-429F-6A49-8982-9D9BA3D2137F";
	setAttr ".rp" -type "double3" 178.07823523653616 126.32369205174402 13.475824537549641 ;
	setAttr ".sp" -type "double3" 178.07823523653616 126.32369205174402 13.475824537549641 ;
createNode mesh -n "pCube9Shape" -p "pCube9";
	rename -uid "BD88A51A-429F-B1FC-56B7-58965D4F8B30";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "group2";
	rename -uid "CA749026-47DA-15AE-4E8D-DF91DBB76D84";
createNode transform -n "pCube8" -p "group2";
	rename -uid "9CC86999-46C2-CF2F-7579-3F9471A4E384";
	setAttr ".t" -type "double3" 240.98158976836723 100.65007153664294 105.65406722109992 ;
	setAttr ".r" -type "double3" 14.999999999999998 0 -45.000000000000007 ;
	setAttr ".s" -type "double3" 10.39723858318065 64.12604844511371 12.895869477525892 ;
createNode transform -n "transform10" -p "pCube8";
	rename -uid "3F654D12-442C-4448-A04E-41A237B6DABD";
	setAttr ".v" no;
createNode mesh -n "pCubeShape8" -p "transform10";
	rename -uid "21948F78-4CFB-A75E-B77F-D0BE847D3F03";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.375 0.75 0.625 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -0.49999881 -0.5 0.5 0.50000119 -0.5 0.5
		 -0.50000072 0.5 0.055971652 0.49999931 0.5 0.055971652 -0.50000072 0.53388906 0.1289134
		 0.49999931 0.53388906 0.1289134 -0.49999881 -0.5 -0.5 0.50000119 -0.5 -0.5 -0.50000787 -3.2488091 -0.5
		 0.49999261 -3.2488091 -0.5 0.49999261 -3.2488091 0.5 -0.50000787 -3.2488091 0.5;
	setAttr -s 19 ".ed[0:18]"  0 1 1 2 3 0 4 5 0 6 7 1 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 7 1 1 6 8 0 7 9 0 8 9 0 1 10 0 9 10 0 0 11 0 11 10 0 8 11 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 13 15 -18 -19
		mu 0 4 12 13 14 15
		f 4 -11 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 3 12 -14 -12
		mu 0 4 6 7 13 12
		f 4 10 14 -16 -13
		mu 0 4 7 9 14 13
		f 4 -1 16 17 -15
		mu 0 4 9 8 15 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube7" -p "group2";
	rename -uid "2E1D9986-480F-E4A5-D0D8-C094DA3FCBB2";
	setAttr ".t" -type "double3" 240.98158976836723 100.65007153664294 -87.240724417481545 ;
	setAttr ".r" -type "double3" 0 0 -45.000000000000014 ;
	setAttr ".s" -type "double3" 10.39723858318065 64.12604844511371 12.895869477525892 ;
createNode transform -n "transform9" -p "pCube7";
	rename -uid "1BBBE64F-4B32-610D-DA48-F791215589C7";
	setAttr ".v" no;
createNode mesh -n "pCubeShape7" -p "transform9";
	rename -uid "DD79AD9D-45B6-22C2-81B4-1793EF68581C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.375 0.75 0.625 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -0.49999881 -0.5 0.5 0.50000119 -0.5 0.5
		 -0.50000072 0.5 0.055971652 0.49999931 0.5 0.055971652 -0.50000072 0.5 -0.5 0.49999931 0.5 -0.5
		 -0.49999881 -0.5 -0.5 0.50000119 -0.5 -0.5 -0.50000787 -3.2488091 -0.5 0.49999261 -3.2488091 -0.5
		 0.49999261 -3.2488091 0.5 -0.50000787 -3.2488091 0.5;
	setAttr -s 19 ".ed[0:18]"  0 1 1 2 3 0 4 5 0 6 7 1 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 7 1 1 6 8 0 7 9 0 8 9 0 1 10 0 9 10 0 0 11 0 11 10 0 8 11 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 13 15 -18 -19
		mu 0 4 12 13 14 15
		f 4 -11 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 3 12 -14 -12
		mu 0 4 6 7 13 12
		f 4 10 14 -16 -13
		mu 0 4 7 9 14 13
		f 4 -1 16 17 -15
		mu 0 4 9 8 15 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube6" -p "group2";
	rename -uid "7F268719-42C3-E3F7-A1E3-3EB86734FFCD";
	setAttr ".t" -type "double3" 232.71761557471305 267.11551700041497 0 ;
	setAttr ".r" -type "double3" 0 0 -45.000000000000014 ;
	setAttr ".s" -type "double3" 10.39723858318065 64.12604844511371 12.895869477525892 ;
createNode transform -n "transform8" -p "pCube6";
	rename -uid "4FB2AF8F-40EC-388C-CA1A-4BB44C2B0B54";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform8";
	rename -uid "54AE41C5-4516-1AB0-8645-DA8ADE7FA870";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube5" -p "group2";
	rename -uid "B8F6F81E-49F6-A90D-3382-238C965E8F63";
	setAttr ".t" -type "double3" 253.99988570013977 168.28384190515598 13.475820755389115 ;
	setAttr ".r" -type "double3" 0 -89.999999999999972 0 ;
	setAttr ".s" -type "double3" 16.555691321870079 16.555691321870079 16.555691321870079 ;
	setAttr ".rp" -type "double3" 3.4083011250038133 5.1781202557401365 0 ;
	setAttr ".sp" -type "double3" 3.4083011250038133 5.1781202557401365 0 ;
createNode transform -n "transform7" -p "pCube5";
	rename -uid "B8F4E4DB-4B83-338C-A204-67A502D6AD9A";
	setAttr ".v" no;
createNode mesh -n "pCube5Shape" -p "transform7";
	rename -uid "10444163-4854-13E7-23BD-BEBD2BF49E06";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "group1" -p "group2";
	rename -uid "B6D6F537-4CB8-9C33-E04C-FBB035907EAC";
createNode transform -n "pCube3" -p "group1";
	rename -uid "1295A881-4159-8BC3-E76A-88A09E251108";
	setAttr ".t" -type "double3" 1.2086149118472176 0.01069903569661973 -0.58207868118230177 ;
	setAttr ".r" -type "double3" 0 -125.00000000000001 0 ;
	setAttr ".s" -type "double3" 5.7541168939347278 0.19384189518182632 1 ;
	setAttr ".rp" -type "double3" 2.5726447784610884 0 0 ;
	setAttr ".sp" -type "double3" 0.44709637045657691 0 0 ;
	setAttr ".spt" -type "double3" 2.1255484080045117 0 0 ;
createNode transform -n "transform1" -p "pCube3";
	rename -uid "43462FF1-43E8-9D12-433B-448D06BF0F33";
	setAttr ".v" no;
createNode mesh -n "pCubeShape3" -p "transform1";
	rename -uid "8343EF52-4B1B-8B44-E070-3FA6CC01DF27";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:59]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.3928571417927742 0.39821809530258179 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0.625 0.78571427
		 0.83928573 0.25 0.625 0.82142854 0.80357146 0 0.625 0.42857146 0.80357146 0.25 0.625
		 0.85714281 0.76785719 0 0.625 0.39285719 0.76785719 0.25 0.625 0.89285707 0.73214293
		 0 0.625 0.3571429 0.73214293 0.25 0.625 0.9285714 0.6964286 0 0.625 0.3214286 0.6964286
		 0.25 0.625 0.96428573 0.66071427 0 0.625 0.2857143 0.53311348 0.3214286 0.53311348
		 0.3571429 0.53311348 0.39285719 0.53311348 0.42857146 0.53311348 0.82142854 0.53311348
		 0.85714281 0.53311348 0.89285707 0.53311348 0.9285714 0.83928573 0 0.87500006 0.062493749
		 0.875 0.18750626 0.625 0.062493749 0.66071427 0.25 0.375 0.96428573 0.41707045 1
		 0.53311348 1 0.375 0.2857143 0.625 0.56249374 0.625 1 0.41707045 0.062493727 0.41707045
		 0.2857143 0.41707045 0.56249374 0.41707045 0.96428573 0.33928573 0.18750626 0.16071428
		 0.062493742 0.41707045 0.78571427 0.41707045 0.46428573 0.19642857 0.062493458 0.16071428
		 0.18750626 0.41707045 0.82142854 0.23214287 0.062493429 0.19642857 0.18750626 0.41707045
		 0.85714281 0.41707045 0.42857146 0.26785713 0.062493458 0.23214285 0.18750624 0.41707042
		 0.89285707 0.41707042 0.39285716 0.30357143 0.062493548 0.26785713 0.18750626 0.41707045
		 0.9285714 0.41707045 0.3571429 0.33928573 0.062493995 0.30357143 0.18750624 0.41707045
		 0.3214286 0.53311348 0.46428573 0.41707045 0.68750626 0.53311348 0.56249374 0.53311348
		 0.96428573 0.41707045 0.18750624 0.53311348 0.062493753 0.53311348 0.2857143 0.625
		 0.46428573 0.53311348 0.68750626 0.625 0.68750626 0.53311348 0.78571427 0.53311348
		 0.18750626 0.625 0.18750626;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".vt[0:59]"  0.5 -0.5 -0.35714287 0.5 0.5 -0.35714287
		 0.5 -0.5 -0.2142857 0.5 0.5 -0.2142857 0.5 -0.5 -0.071428567 0.5 0.5 -0.071428567
		 0.5 -0.5 0.071428575 0.5 0.5 0.071428575 0.5 -0.5 0.21428573 0.5 0.5 0.21428573 0.5 -0.5 0.35714287
		 0.5 0.5 0.35714287 -0.35320562 0.5 0.61619127 -0.36887103 0.5 0.3697148 -0.37651071 0.5 0.12323827
		 -0.37651071 0.5 -0.12323825 -0.36887103 0.5 -0.3697148 -0.35320562 0.5 -0.61619127
		 -0.35320562 -0.5 -0.61619127 -0.36887103 -0.5 -0.3697148 -0.37651071 -0.5 -0.12323825
		 -0.37651071 -0.5 0.12323827 -0.36887103 -0.5 0.3697148 -0.35320562 -0.5 0.61619127
		 0.12295841 0.5 0.59256923 0.11603567 0.5 0.35554165 0.1126596 0.5 0.11851387 0.1126596 0.5 -0.11851386
		 0.11603567 0.5 -0.35554159 0.12295841 0.5 -0.59256923 0.12295841 -0.5 -0.59256923
		 0.11603567 -0.5 -0.35554159 0.1126596 -0.5 -0.11851386 0.1126596 -0.5 0.11851387
		 0.11603567 -0.5 0.35554165 0.12295841 -0.5 0.59256923 -0.33171821 -0.250025 0.8626678
		 -0.33171821 0.250025 0.8626678 -0.33171821 0.250025 -0.8626678 -0.33171821 -0.250025 -0.8626678
		 -0.52583498 0.250025 0.35714287 -0.52583498 -0.250025 -0.35714287 -0.52583498 0.250025 -0.35714287
		 -0.54466993 -0.250025 -0.2142857 -0.54466993 0.250025 -0.2142857 -0.55385536 -0.250025 -0.071428567
		 -0.55385536 0.250025 -0.071428567 -0.55385536 -0.250025 0.071428575 -0.55385536 0.250025 0.071428575
		 -0.54466993 -0.250025 0.21428573 -0.54466993 0.250025 0.21428573 -0.52583498 -0.250025 0.35714287
		 0.13245395 0.250025 0.82959712 0.13245395 0.250025 -0.82959712 0.13245395 -0.250025 -0.82959712
		 0.13245395 -0.250025 0.82959712 0.5 0.250025 0.5 0.5 0.250025 -0.5 0.5 -0.250025 -0.5
		 0.5 -0.250025 0.5;
	setAttr -s 118 ".ed[0:117]"  0 2 0 0 1 1 1 29 1 2 4 0 3 1 0 2 3 1 3 28 1
		 4 6 0 5 3 0 4 5 1 5 27 1 6 8 0 7 5 0 6 7 1 7 26 1 8 10 0 9 7 0 8 9 1 9 25 1 11 9 0
		 10 11 1 11 24 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 18 30 1 19 31 1 18 19 1 20 32 1
		 19 20 1 21 33 1 20 21 1 22 34 1 21 22 1 23 35 1 22 23 1 24 12 1 25 13 1 24 25 1 26 14 1
		 25 26 1 27 15 1 26 27 1 28 16 1 27 28 1 29 17 1 28 29 1 30 0 1 31 2 1 30 31 1 32 4 1
		 31 32 1 33 6 1 32 33 1 34 8 1 33 34 1 35 10 1 34 35 1 56 11 0 57 58 0 57 1 0 58 0 0
		 59 56 0 10 59 0 36 51 0 55 36 0 40 37 0 37 52 0 38 42 0 53 38 0 41 39 0 39 54 0 50 40 0
		 43 41 0 42 44 0 45 43 0 44 46 0 47 45 0 46 48 0 49 47 0 48 50 0 51 49 0 52 56 0 57 53 0
		 54 58 0 59 55 0 36 37 1 37 12 1 12 40 1 38 39 1 51 23 1 23 36 1 40 51 1 41 42 1 39 18 1
		 18 41 1 42 17 1 17 38 1 43 44 1 19 43 1 44 16 1 45 46 1 20 45 1 46 15 1 47 48 1 21 47 1
		 48 14 1 49 50 1 22 49 1 50 13 1 52 24 1 29 53 1 53 54 1 54 30 1 35 55 1 55 52 1;
	setAttr -s 60 -ch 236 ".fc[0:59]" -type "polyFaces" 
		f 4 -2 -64 -62 62
		mu 0 4 1 29 30 31
		f 4 -6 -1 1 -5
		mu 0 4 5 3 29 1
		f 4 -10 -4 5 -9
		mu 0 4 9 7 3 5
		f 4 -14 -8 9 -13
		mu 0 4 13 11 7 9
		f 4 -18 -12 13 -17
		mu 0 4 17 15 11 13
		f 4 -21 -16 17 -20
		mu 0 4 33 19 15 17
		f 4 -23 -39 40 39
		mu 0 4 65 41 72 21
		f 4 -24 -40 42 41
		mu 0 4 62 65 21 22
		f 4 -25 -42 44 43
		mu 0 4 58 62 22 23
		f 4 -26 -44 46 45
		mu 0 4 54 58 23 24
		f 4 -27 -46 48 47
		mu 0 4 47 54 24 66
		f 4 -30 27 51 -29
		mu 0 4 50 46 76 25
		f 4 -32 28 53 -31
		mu 0 4 53 50 25 26
		f 4 -34 30 55 -33
		mu 0 4 57 53 26 27
		f 4 -36 32 57 -35
		mu 0 4 61 57 27 28
		f 4 -38 34 59 -37
		mu 0 4 43 61 28 69
		f 4 -41 -22 19 18
		mu 0 4 21 72 20 16
		f 4 -43 -19 16 14
		mu 0 4 22 21 16 12
		f 4 -45 -15 12 10
		mu 0 4 23 22 12 8
		f 4 -47 -11 8 6
		mu 0 4 24 23 8 4
		f 4 -49 -7 4 2
		mu 0 4 66 24 4 73
		f 4 -52 49 0 -51
		mu 0 4 25 76 0 2
		f 4 -54 50 3 -53
		mu 0 4 26 25 2 6
		f 4 -56 52 7 -55
		mu 0 4 27 26 6 10
		f 4 -58 54 11 -57
		mu 0 4 28 27 10 14
		f 4 -60 56 15 -59
		mu 0 4 69 28 14 18
		f 4 -66 20 -61 -65
		mu 0 4 32 19 33 78
		f 3 92 93 66
		mu 0 3 34 43 40
		f 4 67 -94 36 116
		mu 0 4 36 35 43 69
		f 3 68 89 90
		mu 0 3 37 70 41
		f 4 69 112 38 -90
		mu 0 4 70 77 72 41
		f 3 98 99 70
		mu 0 3 49 47 42
		f 4 71 -100 -48 113
		mu 0 4 68 42 47 66
		f 3 72 96 97
		mu 0 3 45 67 46
		f 4 73 115 -28 -97
		mu 0 4 67 74 76 46
		f 4 74 -91 22 -112
		mu 0 4 64 44 41 65
		f 4 75 -98 29 101
		mu 0 4 48 45 46 50
		f 4 76 102 26 -99
		mu 0 4 49 52 54 47
		f 4 77 -102 31 104
		mu 0 4 51 48 50 53
		f 4 78 105 25 -103
		mu 0 4 52 56 58 54
		f 4 79 -105 33 107
		mu 0 4 55 51 53 57
		f 4 80 108 24 -106
		mu 0 4 56 60 62 58
		f 4 81 -108 35 110
		mu 0 4 59 55 57 61
		f 4 82 111 23 -109
		mu 0 4 60 64 65 62
		f 4 83 -111 37 -93
		mu 0 4 63 59 61 43
		f 4 84 60 21 -113
		mu 0 4 77 78 20 72
		f 4 -63 85 -114 -3
		mu 0 4 73 38 68 66
		f 4 86 63 -50 -116
		mu 0 4 74 75 0 76
		f 4 65 87 -117 58
		mu 0 4 18 39 36 69
		f 4 -67 88 -69 94
		mu 0 4 63 40 70 44
		f 4 -71 91 -73 95
		mu 0 4 49 42 67 45
		f 4 -76 100 -77 -96
		mu 0 4 45 48 52 49
		f 4 -78 103 -79 -101
		mu 0 4 48 51 56 52
		f 4 -80 106 -81 -104
		mu 0 4 51 55 60 56
		f 4 -82 109 -83 -107
		mu 0 4 55 59 64 60
		f 4 -84 -95 -75 -110
		mu 0 4 59 63 44 64
		f 4 -92 -72 114 -74
		mu 0 4 67 42 68 74
		f 4 -89 -68 117 -70
		mu 0 4 70 40 71 77
		f 4 -115 -86 61 -87
		mu 0 4 74 68 38 75
		f 4 -118 -88 64 -85
		mu 0 4 77 71 32 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube2" -p "group1";
	rename -uid "841AD3EB-4757-D5CF-DB06-9CABA83E628E";
	setAttr ".t" -type "double3" 1.2521304343471367 0 0.78652457583473301 ;
	setAttr ".r" -type "double3" 0 119.99999999999999 0 ;
	setAttr ".s" -type "double3" 5.7541168939347278 0.19384189518182632 1 ;
	setAttr ".rp" -type "double3" 2.5726447784610884 0 0 ;
	setAttr ".sp" -type "double3" 0.44709637045657691 0 0 ;
	setAttr ".spt" -type "double3" 2.1255484080045117 0 0 ;
createNode transform -n "transform2" -p "pCube2";
	rename -uid "36DB9271-413B-58DC-5342-958DDE5EC05C";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform2";
	rename -uid "4C31E624-4D5C-5324-795B-8A9419D1BBBB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:59]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.3928571417927742 0.39821809530258179 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0.625 0.78571427
		 0.83928573 0.25 0.625 0.82142854 0.80357146 0 0.625 0.42857146 0.80357146 0.25 0.625
		 0.85714281 0.76785719 0 0.625 0.39285719 0.76785719 0.25 0.625 0.89285707 0.73214293
		 0 0.625 0.3571429 0.73214293 0.25 0.625 0.9285714 0.6964286 0 0.625 0.3214286 0.6964286
		 0.25 0.625 0.96428573 0.66071427 0 0.625 0.2857143 0.53311348 0.3214286 0.53311348
		 0.3571429 0.53311348 0.39285719 0.53311348 0.42857146 0.53311348 0.82142854 0.53311348
		 0.85714281 0.53311348 0.89285707 0.53311348 0.9285714 0.83928573 0 0.87500006 0.062493749
		 0.875 0.18750626 0.625 0.062493749 0.66071427 0.25 0.375 0.96428573 0.41707045 1
		 0.53311348 1 0.375 0.2857143 0.625 0.56249374 0.625 1 0.41707045 0.062493727 0.41707045
		 0.2857143 0.41707045 0.56249374 0.41707045 0.96428573 0.33928573 0.18750626 0.16071428
		 0.062493742 0.41707045 0.78571427 0.41707045 0.46428573 0.19642857 0.062493458 0.16071428
		 0.18750626 0.41707045 0.82142854 0.23214287 0.062493429 0.19642857 0.18750626 0.41707045
		 0.85714281 0.41707045 0.42857146 0.26785713 0.062493458 0.23214285 0.18750624 0.41707042
		 0.89285707 0.41707042 0.39285716 0.30357143 0.062493548 0.26785713 0.18750626 0.41707045
		 0.9285714 0.41707045 0.3571429 0.33928573 0.062493995 0.30357143 0.18750624 0.41707045
		 0.3214286 0.53311348 0.46428573 0.41707045 0.68750626 0.53311348 0.56249374 0.53311348
		 0.96428573 0.41707045 0.18750624 0.53311348 0.062493753 0.53311348 0.2857143 0.625
		 0.46428573 0.53311348 0.68750626 0.625 0.68750626 0.53311348 0.78571427 0.53311348
		 0.18750626 0.625 0.18750626;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".vt[0:59]"  0.5 -0.5 -0.35714287 0.5 0.5 -0.35714287
		 0.5 -0.5 -0.2142857 0.5 0.5 -0.2142857 0.5 -0.5 -0.071428567 0.5 0.5 -0.071428567
		 0.5 -0.5 0.071428575 0.5 0.5 0.071428575 0.5 -0.5 0.21428573 0.5 0.5 0.21428573 0.5 -0.5 0.35714287
		 0.5 0.5 0.35714287 -0.35320562 0.5 0.61619127 -0.36887103 0.5 0.3697148 -0.37651071 0.5 0.12323827
		 -0.37651071 0.5 -0.12323825 -0.36887103 0.5 -0.3697148 -0.35320562 0.5 -0.61619127
		 -0.35320562 -0.5 -0.61619127 -0.36887103 -0.5 -0.3697148 -0.37651071 -0.5 -0.12323825
		 -0.37651071 -0.5 0.12323827 -0.36887103 -0.5 0.3697148 -0.35320562 -0.5 0.61619127
		 0.12295841 0.5 0.59256923 0.11603567 0.5 0.35554165 0.1126596 0.5 0.11851387 0.1126596 0.5 -0.11851386
		 0.11603567 0.5 -0.35554159 0.12295841 0.5 -0.59256923 0.12295841 -0.5 -0.59256923
		 0.11603567 -0.5 -0.35554159 0.1126596 -0.5 -0.11851386 0.1126596 -0.5 0.11851387
		 0.11603567 -0.5 0.35554165 0.12295841 -0.5 0.59256923 -0.33171821 -0.250025 0.8626678
		 -0.33171821 0.250025 0.8626678 -0.33171821 0.250025 -0.8626678 -0.33171821 -0.250025 -0.8626678
		 -0.52583498 0.250025 0.35714287 -0.52583498 -0.250025 -0.35714287 -0.52583498 0.250025 -0.35714287
		 -0.54466993 -0.250025 -0.2142857 -0.54466993 0.250025 -0.2142857 -0.55385536 -0.250025 -0.071428567
		 -0.55385536 0.250025 -0.071428567 -0.55385536 -0.250025 0.071428575 -0.55385536 0.250025 0.071428575
		 -0.54466993 -0.250025 0.21428573 -0.54466993 0.250025 0.21428573 -0.52583498 -0.250025 0.35714287
		 0.13245395 0.250025 0.82959712 0.13245395 0.250025 -0.82959712 0.13245395 -0.250025 -0.82959712
		 0.13245395 -0.250025 0.82959712 0.5 0.250025 0.5 0.5 0.250025 -0.5 0.5 -0.250025 -0.5
		 0.5 -0.250025 0.5;
	setAttr -s 118 ".ed[0:117]"  0 2 0 0 1 1 1 29 1 2 4 0 3 1 0 2 3 1 3 28 1
		 4 6 0 5 3 0 4 5 1 5 27 1 6 8 0 7 5 0 6 7 1 7 26 1 8 10 0 9 7 0 8 9 1 9 25 1 11 9 0
		 10 11 1 11 24 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 18 30 1 19 31 1 18 19 1 20 32 1
		 19 20 1 21 33 1 20 21 1 22 34 1 21 22 1 23 35 1 22 23 1 24 12 1 25 13 1 24 25 1 26 14 1
		 25 26 1 27 15 1 26 27 1 28 16 1 27 28 1 29 17 1 28 29 1 30 0 1 31 2 1 30 31 1 32 4 1
		 31 32 1 33 6 1 32 33 1 34 8 1 33 34 1 35 10 1 34 35 1 56 11 0 57 58 0 57 1 0 58 0 0
		 59 56 0 10 59 0 36 51 0 55 36 0 40 37 0 37 52 0 38 42 0 53 38 0 41 39 0 39 54 0 50 40 0
		 43 41 0 42 44 0 45 43 0 44 46 0 47 45 0 46 48 0 49 47 0 48 50 0 51 49 0 52 56 0 57 53 0
		 54 58 0 59 55 0 36 37 1 37 12 1 12 40 1 38 39 1 51 23 1 23 36 1 40 51 1 41 42 1 39 18 1
		 18 41 1 42 17 1 17 38 1 43 44 1 19 43 1 44 16 1 45 46 1 20 45 1 46 15 1 47 48 1 21 47 1
		 48 14 1 49 50 1 22 49 1 50 13 1 52 24 1 29 53 1 53 54 1 54 30 1 35 55 1 55 52 1;
	setAttr -s 60 -ch 236 ".fc[0:59]" -type "polyFaces" 
		f 4 -2 -64 -62 62
		mu 0 4 1 29 30 31
		f 4 -6 -1 1 -5
		mu 0 4 5 3 29 1
		f 4 -10 -4 5 -9
		mu 0 4 9 7 3 5
		f 4 -14 -8 9 -13
		mu 0 4 13 11 7 9
		f 4 -18 -12 13 -17
		mu 0 4 17 15 11 13
		f 4 -21 -16 17 -20
		mu 0 4 33 19 15 17
		f 4 -23 -39 40 39
		mu 0 4 65 41 72 21
		f 4 -24 -40 42 41
		mu 0 4 62 65 21 22
		f 4 -25 -42 44 43
		mu 0 4 58 62 22 23
		f 4 -26 -44 46 45
		mu 0 4 54 58 23 24
		f 4 -27 -46 48 47
		mu 0 4 47 54 24 66
		f 4 -30 27 51 -29
		mu 0 4 50 46 76 25
		f 4 -32 28 53 -31
		mu 0 4 53 50 25 26
		f 4 -34 30 55 -33
		mu 0 4 57 53 26 27
		f 4 -36 32 57 -35
		mu 0 4 61 57 27 28
		f 4 -38 34 59 -37
		mu 0 4 43 61 28 69
		f 4 -41 -22 19 18
		mu 0 4 21 72 20 16
		f 4 -43 -19 16 14
		mu 0 4 22 21 16 12
		f 4 -45 -15 12 10
		mu 0 4 23 22 12 8
		f 4 -47 -11 8 6
		mu 0 4 24 23 8 4
		f 4 -49 -7 4 2
		mu 0 4 66 24 4 73
		f 4 -52 49 0 -51
		mu 0 4 25 76 0 2
		f 4 -54 50 3 -53
		mu 0 4 26 25 2 6
		f 4 -56 52 7 -55
		mu 0 4 27 26 6 10
		f 4 -58 54 11 -57
		mu 0 4 28 27 10 14
		f 4 -60 56 15 -59
		mu 0 4 69 28 14 18
		f 4 -66 20 -61 -65
		mu 0 4 32 19 33 78
		f 3 92 93 66
		mu 0 3 34 43 40
		f 4 67 -94 36 116
		mu 0 4 36 35 43 69
		f 3 68 89 90
		mu 0 3 37 70 41
		f 4 69 112 38 -90
		mu 0 4 70 77 72 41
		f 3 98 99 70
		mu 0 3 49 47 42
		f 4 71 -100 -48 113
		mu 0 4 68 42 47 66
		f 3 72 96 97
		mu 0 3 45 67 46
		f 4 73 115 -28 -97
		mu 0 4 67 74 76 46
		f 4 74 -91 22 -112
		mu 0 4 64 44 41 65
		f 4 75 -98 29 101
		mu 0 4 48 45 46 50
		f 4 76 102 26 -99
		mu 0 4 49 52 54 47
		f 4 77 -102 31 104
		mu 0 4 51 48 50 53
		f 4 78 105 25 -103
		mu 0 4 52 56 58 54
		f 4 79 -105 33 107
		mu 0 4 55 51 53 57
		f 4 80 108 24 -106
		mu 0 4 56 60 62 58
		f 4 81 -108 35 110
		mu 0 4 59 55 57 61
		f 4 82 111 23 -109
		mu 0 4 60 64 65 62
		f 4 83 -111 37 -93
		mu 0 4 63 59 61 43
		f 4 84 60 21 -113
		mu 0 4 77 78 20 72
		f 4 -63 85 -114 -3
		mu 0 4 73 38 68 66
		f 4 86 63 -50 -116
		mu 0 4 74 75 0 76
		f 4 65 87 -117 58
		mu 0 4 18 39 36 69
		f 4 -67 88 -69 94
		mu 0 4 63 40 70 44
		f 4 -71 91 -73 95
		mu 0 4 49 42 67 45
		f 4 -76 100 -77 -96
		mu 0 4 45 48 52 49
		f 4 -78 103 -79 -101
		mu 0 4 48 51 56 52
		f 4 -80 106 -81 -104
		mu 0 4 51 55 60 56
		f 4 -82 109 -83 -107
		mu 0 4 55 59 64 60
		f 4 -84 -95 -75 -110
		mu 0 4 59 63 44 64
		f 4 -92 -72 114 -74
		mu 0 4 67 42 68 74
		f 4 -89 -68 117 -70
		mu 0 4 70 40 71 77
		f 4 -115 -86 61 -87
		mu 0 4 74 68 38 75
		f 4 -118 -88 64 -85
		mu 0 4 77 71 32 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pTorus1" -p "group1";
	rename -uid "6D1FA7B1-4AF4-36B2-AF3D-2F90C71478C9";
	setAttr ".t" -type "double3" 3.424530196029123 0 0 ;
	setAttr ".s" -type "double3" 0.58309196150518305 0.58309196150518305 0.58309196150518305 ;
createNode transform -n "transform3" -p "pTorus1";
	rename -uid "5211034B-4AB0-21A5-6368-69B6752D8915";
	setAttr ".v" no;
createNode mesh -n "pTorusShape1" -p "transform3";
	rename -uid "ACD6C815-4F62-17C0-30AD-E18D9AE49095";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube1" -p "group1";
	rename -uid "677E4A44-4A11-FA19-4FF2-C2B53E898F48";
	setAttr ".s" -type "double3" 5.7541168939347278 0.19384189518182632 1 ;
	setAttr ".rp" -type "double3" 2.5726447784610884 0 0 ;
	setAttr ".sp" -type "double3" 0.44709637045657691 0 0 ;
	setAttr ".spt" -type "double3" 2.1255484080045117 0 0 ;
createNode transform -n "transform4" -p "pCube1";
	rename -uid "CF2C722F-480C-77A8-342D-529BCD1E382E";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform4";
	rename -uid "32F00B5D-4736-169D-2890-2BA0A233D172";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.3928571417927742 0.39821809530258179 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pTorus2" -p "group2";
	rename -uid "2F590105-4D5F-0A5B-F530-7C8AF1A683AE";
	setAttr ".t" -type "double3" 3.4083011250038133 5.2408304500566629 0 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 7.5724946894513643 2.1318060896977422 7.5724946894513643 ;
createNode transform -n "transform5" -p "pTorus2";
	rename -uid "7FD6827A-4FB0-0C09-F431-669FD637659A";
	setAttr ".v" no;
createNode mesh -n "pTorusShape2" -p "transform5";
	rename -uid "8482C54B-4A0B-D094-6F28-75A905EE3F8B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999994039535522 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 48 ".pt[0:47]" -type "float3"  0.30344486 0 -0.17519365 
		0.17519365 0 -0.30344486 -3.5604112e-18 0 -0.35038731 -0.17519365 0 -0.30344486 -0.30344486 
		0 -0.17519365 -0.35038731 0 0 -0.30344486 0 0.17519365 -0.17519365 0 0.30344486 -3.5604112e-18 
		0 0.35038731 0.17519365 0 0.30344486 0.30344486 0 0.17519365 0.35038731 0 0 -0.030729882 
		-0.017741906 0.017741906 -0.017741906 -0.017741906 0.030729882 0 -0.017741906 0.035483811 
		0.017741906 -0.017741906 0.030729882 0.030729882 -0.017741906 0.017741906 0.035483811 
		-0.017741906 0 0.030729882 -0.017741906 -0.017741906 0.017741906 -0.017741906 -0.030729882 
		0 -0.017741906 -0.035483811 -0.017741906 -0.017741906 -0.030729882 -0.030729882 -0.017741906 
		-0.017741906 -0.035483811 -0.017741906 0 -0.41146582 1.5510464e-09 0.23756009 -0.23756009 
		1.5510464e-09 0.41146582 0 1.5510464e-09 0.47512019 0.23756009 1.5510464e-09 0.41146582 
		0.41146582 1.5510464e-09 0.23756009 0.47512019 1.5510464e-09 5.4598105e-24 0.41146582 
		1.5510464e-09 -0.23756009 0.23756009 1.5510464e-09 -0.41146582 0 1.5510464e-09 -0.47512019 
		-0.23756009 1.5510464e-09 -0.41146582 -0.41146582 1.5510464e-09 -0.23756009 -0.47512019 
		1.5510464e-09 5.4598105e-24 -0.030729881 0.017741906 0.017741904 -0.017741904 0.017741906 
		0.030729881 0 0.017741906 0.035483807 0.017741904 0.017741906 0.030729881 0.030729881 
		0.017741906 0.017741904 0.035483807 0.017741906 0 0.030729881 0.017741906 -0.017741904 
		0.017741904 0.017741906 -0.030729881 0 0.017741906 -0.035483807 -0.017741904 0.017741906 
		-0.030729881 -0.030729881 0.017741906 -0.017741904 -0.035483807 0.017741906 0;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube4" -p "group2";
	rename -uid "5CC0567F-426F-6324-3495-399C12D647AD";
	setAttr ".t" -type "double3" 0 5.2595635900229301 0 ;
	setAttr ".r" -type "double3" -89.999999999999758 -360 824.99999999999989 ;
	setAttr ".rp" -type "double3" 3.4337198973899916 8.6887473049745978e-09 0.0017501214742552396 ;
	setAttr ".sp" -type "double3" 3.4337198973899916 8.6887473049745978e-09 0.0017501214742552396 ;
createNode transform -n "transform6" -p "pCube4";
	rename -uid "135A8D6F-4ECA-A9CD-CCD2-708D44E22663";
	setAttr ".v" no;
createNode mesh -n "pCube4Shape" -p "transform6";
	rename -uid "B147C6A6-4C87-994B-29C7-0D96E07FA5CA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.35714289546012878 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "6BD002E4-4272-BA0F-6F26-45BD30C20440";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "7B86B002-4C5E-69D9-A19A-E5AC22ACF5DB";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "3B86359D-461C-A6A2-7217-2A9196A68D82";
createNode displayLayerManager -n "layerManager";
	rename -uid "9CA2C9F4-49C7-7AE7-D43B-338B40F84832";
createNode displayLayer -n "defaultLayer";
	rename -uid "57B2D082-4593-3155-5E8B-87B89C13AF48";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "D152C38C-472D-55C8-FEE4-48AA87C56BE8";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "20E080E5-4BF8-56A9-7E7C-699FFD537C5A";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "D92EB511-41E2-984A-7E4E-C49F534DCF10";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "8D513482-469F-2CE9-048F-DCB3EA4428F6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 5.7541168939347278 0 0 0 0 0.19384189518182632 0 0 0 0 1 0
		 0 0 0 1;
	setAttr ".wt" 0.39253541827201843;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 6;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "A2B73C34-47A2-7F27-B4B7-969F24B37D88";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[0:3]" "e[16]" "e[19]" "e[24]" "e[27]" "e[32]" "e[35]" "e[40]" "e[43]" "e[48]" "e[51]" "e[56]" "e[59]";
	setAttr ".ix" -type "matrix" 5.7541168939347278 0 0 0 0 0.19384189518182632 0 0 0 0 1 0
		 0 0 0 1;
	setAttr ".wt" 0.16828180849552155;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 6;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "A88891FA-4D60-2E52-AA74-E4A91C05E06D";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[8]" -type "float3" -0.025834968 0 0 ;
	setAttr ".tk[9]" -type "float3" -0.025834968 0 0 ;
	setAttr ".tk[12]" -type "float3" -0.044669989 0 0 ;
	setAttr ".tk[13]" -type "float3" -0.044669989 0 0 ;
	setAttr ".tk[16]" -type "float3" -0.053855419 0 0 ;
	setAttr ".tk[17]" -type "float3" -0.053855419 0 0 ;
	setAttr ".tk[20]" -type "float3" -0.053855419 0 0 ;
	setAttr ".tk[21]" -type "float3" -0.053855419 0 0 ;
	setAttr ".tk[24]" -type "float3" -0.044669989 0 0 ;
	setAttr ".tk[25]" -type "float3" -0.044669989 0 0 ;
	setAttr ".tk[28]" -type "float3" -0.025834968 0 0 ;
	setAttr ".tk[29]" -type "float3" -0.025834968 0 0 ;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "C3399725-4A26-3A27-832A-C98D49C9A094";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[19]" "e[27]" "e[35]" "e[43]" "e[51]" "e[59:60]" "e[73]" "e[75]" "e[77]" "e[79]" "e[81]" "e[83]" "e[85]" "e[87]" "e[89]";
	setAttr ".ix" -type "matrix" 5.7541168939347278 0 0 0 0 0.19384189518182632 0 0 0 0 1 0
		 0 0 0 1;
	setAttr ".wt" 0.55808824300765991;
	setAttr ".dr" no;
	setAttr ".re" 60;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 6;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "4EA75A11-4663-2BA3-D74E-1192D608711D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[0:3]" "e[6]" "e[10]" "e[12:13]" "e[20:21]" "e[28:29]" "e[36:37]" "e[44:45]" "e[52:53]" "e[60]" "e[73]" "e[75]" "e[89]" "e[92]" "e[105]" "e[107]" "e[121]";
	setAttr ".ix" -type "matrix" 5.7541168939347278 0 0 0 0 0.19384189518182632 0 0 0 0 1 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak2";
	rename -uid "E26460B4-45E4-364F-44B2-0CAAE0A6978D";
	setAttr ".uopa" yes;
	setAttr -s 34 ".tk";
	setAttr ".tk[32]" -type "float3" 0 0 0.36266777 ;
	setAttr ".tk[33]" -type "float3" 0 0 0.25904843 ;
	setAttr ".tk[34]" -type "float3" 0 0 0.15542908 ;
	setAttr ".tk[35]" -type "float3" 0 0 0.051809687 ;
	setAttr ".tk[36]" -type "float3" 0 0 -0.051809687 ;
	setAttr ".tk[37]" -type "float3" 0 0 -0.15542908 ;
	setAttr ".tk[38]" -type "float3" 0 0 -0.25904843 ;
	setAttr ".tk[39]" -type "float3" 0 0 -0.36266777 ;
	setAttr ".tk[40]" -type "float3" 0 0 -0.36266777 ;
	setAttr ".tk[41]" -type "float3" 0 0 -0.25904843 ;
	setAttr ".tk[42]" -type "float3" 0 0 -0.15542908 ;
	setAttr ".tk[43]" -type "float3" 0 0 -0.051809687 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.051809687 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.15542908 ;
	setAttr ".tk[46]" -type "float3" 0 0 0.25904843 ;
	setAttr ".tk[47]" -type "float3" 0 0 0.36266777 ;
	setAttr ".tk[48]" -type "float3" 0 0 0.32959715 ;
	setAttr ".tk[49]" -type "float3" 0 0 0.2354264 ;
	setAttr ".tk[50]" -type "float3" 0 0 0.14125592 ;
	setAttr ".tk[51]" -type "float3" 0 0 0.047085296 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.047085293 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.14125589 ;
	setAttr ".tk[54]" -type "float3" 0 0 -0.2354264 ;
	setAttr ".tk[55]" -type "float3" 0 0 -0.32959715 ;
	setAttr ".tk[56]" -type "float3" 0 0 -0.32959715 ;
	setAttr ".tk[57]" -type "float3" 0 0 -0.2354264 ;
	setAttr ".tk[58]" -type "float3" 0 0 -0.14125589 ;
	setAttr ".tk[59]" -type "float3" 0 0 -0.047085293 ;
	setAttr ".tk[60]" -type "float3" 0 0 0.047085296 ;
	setAttr ".tk[61]" -type "float3" 0 0 0.14125592 ;
	setAttr ".tk[62]" -type "float3" 0 0 0.2354264 ;
	setAttr ".tk[63]" -type "float3" 0 0 0.32959715 ;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "5F6E0ED2-4C39-E5ED-D67B-0099FC3910C1";
	setAttr ".ics" -type "componentList" 3 "e[94]" "e[97]" "e[140]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge2";
	rename -uid "ECFFA82D-403E-5928-A78D-FBB4676B3293";
	setAttr ".ics" -type "componentList" 3 "e[85]" "e[88]" "e[133]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge3";
	rename -uid "236051A8-41C6-371C-9644-08B24C86FB8A";
	setAttr ".ics" -type "componentList" 3 "e[72]" "e[75]" "e[130]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge4";
	rename -uid "8458BBA6-47F5-371B-6A2D-F9ACE146905B";
	setAttr ".ics" -type "componentList" 12 "e[69]" "e[72]" "e[79]" "e[82:83]" "e[92]" "e[95]" "e[100:101]" "e[106:107]" "e[112:113]" "e[117:118]" "e[126]" "e[130]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge5";
	rename -uid "4E206F0F-4157-BF74-562A-B0AED5A8D69E";
	setAttr ".ics" -type "componentList" 3 "e[76]" "e[79]" "e[93]";
	setAttr ".cv" yes;
createNode polyTorus -n "polyTorus1";
	rename -uid "C41D6C14-4DA4-9B4F-7A7A-EFA00E5C1F4A";
	setAttr ".sa" 8;
	setAttr ".sh" 8;
createNode polyUnite -n "polyUnite1";
	rename -uid "E9F08C59-4E1F-1A26-8EEB-7F8B025F9AE1";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "groupId1";
	rename -uid "EAAAA948-4EFD-FFD1-2F06-FB8FD15589B1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "2EAF8FAE-4C8C-F0CE-B318-1B8D3E04803C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode groupId -n "groupId3";
	rename -uid "AF74B63C-415F-5CF8-F70E-4CB28C5DFEAA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "35E5A7B5-4FF4-3676-179D-AAA00764B7DE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:63]";
createNode groupId -n "groupId9";
	rename -uid "CA641F9D-40DF-A177-D11E-E196C4691730";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "9D1DCF03-40E9-6B6B-13D8-F7BA9B50668D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:243]";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "FBB3CBFF-4091-E3FE-F2A3-FFAFAC48A97A";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 660\n            -height 380\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 659\n            -height 379\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 660\n            -height 379\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1330\n            -height 807\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1330\\n    -height 807\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1330\\n    -height 807\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "24C00798-4B7F-5059-F57D-69B8696335FE";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "AD094886-4AA3-0815-C7CE-09B0B23511E8";
	setAttr ".dc" -type "componentList" 30 "f[11:15]" "f[21:25]" "f[27:28]" "f[33:34]" "f[36]" "f[38]" "f[40]" "f[42]" "f[44]" "f[47:48]" "f[135:139]" "f[145:149]" "f[151:152]" "f[157:158]" "f[160]" "f[162]" "f[164]" "f[166]" "f[168]" "f[171:172]" "f[195:199]" "f[205:209]" "f[211:212]" "f[217:218]" "f[220]" "f[222]" "f[224]" "f[226]" "f[228]" "f[231:232]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "E7720465-4F1C-04C5-F27F-759E00AA1DD9";
	setAttr ".dc" -type "componentList" 1 "f[91]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "3D62FB41-4F98-38C8-A5AF-80B538D53311";
	setAttr ".dc" -type "componentList" 1 "f[91]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "B2134155-4922-4F12-8227-A79E85828263";
	setAttr ".dc" -type "componentList" 1 "f[91]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "AF26584E-4839-6C75-A6E1-70A21C9D5072";
	setAttr ".dc" -type "componentList" 1 "f[91]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "311047DC-40B1-6313-6D41-2FBE2E879EA4";
	setAttr ".dc" -type "componentList" 1 "f[87]";
createNode deleteComponent -n "deleteComponent7";
	rename -uid "8DBEBDAE-4169-48DC-7DEF-54B29042FD10";
	setAttr ".dc" -type "componentList" 1 "f[87]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "7ED78FFA-4232-C3B5-62DA-A0A2424A5ACB";
	setAttr ".dc" -type "componentList" 1 "f[87]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "F9C2D292-46C7-5E47-2A30-28ABE4B72FEF";
	setAttr ".dc" -type "componentList" 1 "f[87]";
createNode deleteComponent -n "deleteComponent10";
	rename -uid "4E6AB78B-4A46-E20A-BC5E-14AD2720A1D8";
	setAttr ".dc" -type "componentList" 2 "f[63]" "f[79:86]";
createNode deleteComponent -n "deleteComponent11";
	rename -uid "911AA41E-4872-5CB5-77AE-72B9CA63D0D8";
	setAttr ".dc" -type "componentList" 2 "f[0:5]" "f[16]";
createNode deleteComponent -n "deleteComponent12";
	rename -uid "FAA78844-4AD1-77A9-3773-44886CFEC55E";
	setAttr ".dc" -type "componentList" 2 "f[84]" "f[95]";
createNode deleteComponent -n "deleteComponent13";
	rename -uid "C9E4A081-4927-90F9-2626-A8B3883EAC2C";
	setAttr ".dc" -type "componentList" 1 "f[81]";
createNode polyTweak -n "polyTweak3";
	rename -uid "CD31FF57-46FB-1145-B2D1-BBABFCD5D00F";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[104]" -type "float3" 0.005125796 0.0033897054 -0.0029593797 ;
	setAttr ".tk[105]" -type "float3" 0.005125796 0.0033897054 -0.0029593797 ;
	setAttr ".tk[106]" -type "float3" 0.005125796 0.0033897054 -0.0029593797 ;
	setAttr ".tk[107]" -type "float3" 0.005125796 0.0033897054 -0.0029593797 ;
createNode deleteComponent -n "deleteComponent14";
	rename -uid "FBE6DC46-4DB8-1339-2B58-9C844E6C13F5";
	setAttr ".dc" -type "componentList" 1 "f[81:82]";
createNode deleteComponent -n "deleteComponent15";
	rename -uid "667E2336-46CD-059B-06B8-B69D583ECE11";
	setAttr ".dc" -type "componentList" 1 "f[80]";
createNode deleteComponent -n "deleteComponent16";
	rename -uid "AB7FDB88-4FEF-4700-F0EC-6F8B985CFCA1";
	setAttr ".dc" -type "componentList" 1 "f[79]";
createNode deleteComponent -n "deleteComponent17";
	rename -uid "68163A0B-4C91-7863-72A1-9AA667788D3D";
	setAttr ".dc" -type "componentList" 2 "f[111:116]" "f[127]";
createNode polyTorus -n "polyTorus2";
	rename -uid "EA963FF3-4EF3-3220-89A0-34B1DCA2A89D";
	setAttr ".sa" 12;
	setAttr ".sh" 4;
createNode lambert -n "lambert2";
	rename -uid "3C38AF04-4C87-E392-8CE0-FCA14D1C42F2";
createNode shadingEngine -n "BoatSG";
	rename -uid "B590D645-4569-0C46-C2FD-24A22AF9753A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "3675C33F-492D-381B-3F27-A7804B2F3EC7";
createNode lambert -n "lambert3";
	rename -uid "0BC0B815-4D41-2D07-47B9-D1956F9DBB3F";
createNode shadingEngine -n "FlagSG";
	rename -uid "1CDA99BC-42C0-062F-3967-6C9E52233DED";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "3D53105B-4223-8C30-1EB8-66BD78B482CC";
createNode polyUnite -n "polyUnite2";
	rename -uid "8668C61F-40B5-1F66-3CF6-D1BC75C4C8CE";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId27";
	rename -uid "B151BF42-407C-77FC-5116-0587A3A5E29F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	rename -uid "45323F29-4B5F-8BB3-C83D-D5904CF13D18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:47]";
createNode groupId -n "groupId29";
	rename -uid "F4E9AAE6-4751-3947-01F7-90960B50C23D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	rename -uid "CF967929-4AF3-11CB-0AB8-A68FF2E7F109";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:190]";
createNode polyCube -n "polyCube2";
	rename -uid "91E4DE22-449C-67A7-FFD7-E9BBEB97F60E";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "A732D1D6-495C-E78B-6ACB-AB92B9FDD363";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 7.3519579077814488 -7.3519579077814514 -0 0 45.343963706236977 45.343963706236963 0 0
		 0 -0 12.895869477525892 0 232.71761557471305 267.11551700041497 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 210.04564 244.44354 0 ;
	setAttr ".rs" 58985;
	setAttr ".lt" -type "double3" 1.4210854715202004e-14 0 176.27028240133467 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 206.36965476770385 240.76755619340577 -6.447934738762946 ;
	setAttr ".cbx" -type "double3" 213.72161267548529 248.11951410118721 6.447934738762946 ;
createNode deleteComponent -n "deleteComponent18";
	rename -uid "2E6CCADA-4916-DCD6-8DAA-0E8BF4537AA8";
	setAttr ".dc" -type "componentList" 2 "f[5]" "f[9]";
createNode groupId -n "groupId28";
	rename -uid "787FC0CE-45C9-7F7B-17A6-77A777F881F4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "17B3E290-40EF-4AF4-A750-9B9E494B0F10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "599B71B0-47BB-555C-7227-B6A0AA7AF330";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "BB2F2798-4A52-9B4D-3093-2EA47164A635";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "3C568F09-49B2-53FE-7CC9-208EDC594482";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "4AA2F34C-4881-AE08-1D40-5591689AEED7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "5A7B2C29-495C-DDA2-8255-B6A2E8B5E5A8";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite3";
	rename -uid "C37C0905-438A-CDAC-0F19-F6BE68B4C3A4";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "groupId30";
	rename -uid "3DDAA421-4717-F5F3-24B1-C6A13E8A476B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId31";
	rename -uid "4568BC21-444C-D58C-9315-1F8CC87B2181";
	setAttr ".ihi" 0;
createNode groupId -n "groupId32";
	rename -uid "09E2638C-48F8-B6EC-6D1F-4E9BC2F70D14";
	setAttr ".ihi" 0;
createNode groupId -n "groupId33";
	rename -uid "EEAB9064-4387-F147-626D-63BB63159417";
	setAttr ".ihi" 0;
createNode groupId -n "groupId34";
	rename -uid "A5995C66-4954-59CE-F3AC-F09BF399289C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	rename -uid "E20D604B-4623-EDFD-84D6-52827F807399";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode groupId -n "groupId35";
	rename -uid "DAC39DFD-4573-9FF1-DF01-278B8F2EA563";
	setAttr ".ihi" 0;
createNode groupId -n "groupId36";
	rename -uid "D70D4987-4A0E-E019-0C38-429F9EA34E34";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	rename -uid "A4B815EB-4C5B-8A53-630E-13AD4824A5DC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:214]";
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 19 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 19 ".gn";
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
connectAttr "groupParts24.og" "pCube9Shape.i";
connectAttr "groupId36.id" "pCube9Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube9Shape.iog.og[0].gco";
connectAttr "groupId30.id" "pCubeShape8.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape8.iog.og[2].gco";
connectAttr "groupId31.id" "pCubeShape8.ciog.cog[1].cgid";
connectAttr "groupId32.id" "pCubeShape7.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape7.iog.og[2].gco";
connectAttr "groupId33.id" "pCubeShape7.ciog.cog[1].cgid";
connectAttr "groupId34.id" "pCubeShape4.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape4.iog.og[2].gco";
connectAttr "groupParts23.og" "pCubeShape4.i";
connectAttr "groupId35.id" "pCubeShape4.ciog.cog[1].cgid";
connectAttr "groupParts22.og" "pCube5Shape.i";
connectAttr "groupId29.id" "pCube5Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube5Shape.iog.og[0].gco";
connectAttr "groupId7.id" "pCubeShape3.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape3.iog.og[1].gco";
connectAttr "groupId8.id" "pCubeShape3.ciog.cog[1].cgid";
connectAttr "groupId5.id" "pCubeShape2.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[1].gco";
connectAttr "groupId6.id" "pCubeShape2.ciog.cog[1].cgid";
connectAttr "groupId3.id" "pTorusShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pTorusShape1.iog.og[0].gco";
connectAttr "groupParts2.og" "pTorusShape1.i";
connectAttr "groupId4.id" "pTorusShape1.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pCubeShape1.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[1].gco";
connectAttr "groupParts1.og" "pCubeShape1.i";
connectAttr "groupId2.id" "pCubeShape1.ciog.cog[1].cgid";
connectAttr "groupId27.id" "pTorusShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pTorusShape2.iog.og[0].gco";
connectAttr "groupParts21.og" "pTorusShape2.i";
connectAttr "groupId28.id" "pTorusShape2.ciog.cog[0].cgid";
connectAttr "deleteComponent17.og" "pCube4Shape.i";
connectAttr "groupId9.id" "pCube4Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube4Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "BoatSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "FlagSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "BoatSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "FlagSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polyTweak1.out" "polySplitRing2.ip";
connectAttr "pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing1.out" "polyTweak1.ip";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polyTweak2.out" "polyBevel1.ip";
connectAttr "pCubeShape1.wm" "polyBevel1.mp";
connectAttr "polySplitRing3.out" "polyTweak2.ip";
connectAttr "polyBevel1.out" "polyDelEdge1.ip";
connectAttr "polyDelEdge1.out" "polyDelEdge2.ip";
connectAttr "polyDelEdge2.out" "polyDelEdge3.ip";
connectAttr "polyDelEdge3.out" "polyDelEdge4.ip";
connectAttr "polyDelEdge4.out" "polyDelEdge5.ip";
connectAttr "pCubeShape1.o" "polyUnite1.ip[0]";
connectAttr "pTorusShape1.o" "polyUnite1.ip[1]";
connectAttr "pCubeShape2.o" "polyUnite1.ip[2]";
connectAttr "pCubeShape3.o" "polyUnite1.ip[3]";
connectAttr "pCubeShape1.wm" "polyUnite1.im[0]";
connectAttr "pTorusShape1.wm" "polyUnite1.im[1]";
connectAttr "pCubeShape2.wm" "polyUnite1.im[2]";
connectAttr "pCubeShape3.wm" "polyUnite1.im[3]";
connectAttr "polyDelEdge5.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyTorus1.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyUnite1.out" "groupParts3.ig";
connectAttr "groupId9.id" "groupParts3.gi";
connectAttr "groupParts3.og" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "polyTweak3.ip";
connectAttr "polyTweak3.out" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "deleteComponent15.ig";
connectAttr "deleteComponent15.og" "deleteComponent16.ig";
connectAttr "deleteComponent16.og" "deleteComponent17.ig";
connectAttr "lambert2.oc" "BoatSG.ss";
connectAttr "BoatSG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "lambert3.oc" "FlagSG.ss";
connectAttr "FlagSG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "pCube4Shape.o" "polyUnite2.ip[0]";
connectAttr "pTorusShape2.o" "polyUnite2.ip[1]";
connectAttr "pCube4Shape.wm" "polyUnite2.im[0]";
connectAttr "pTorusShape2.wm" "polyUnite2.im[1]";
connectAttr "polyTorus2.out" "groupParts21.ig";
connectAttr "groupId27.id" "groupParts21.gi";
connectAttr "polyUnite2.out" "groupParts22.ig";
connectAttr "groupId29.id" "groupParts22.gi";
connectAttr "polyCube2.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "deleteComponent18.ig";
connectAttr "pCubeShape8.o" "polyUnite3.ip[0]";
connectAttr "pCubeShape7.o" "polyUnite3.ip[1]";
connectAttr "pCubeShape4.o" "polyUnite3.ip[2]";
connectAttr "pCube5Shape.o" "polyUnite3.ip[3]";
connectAttr "pCubeShape8.wm" "polyUnite3.im[0]";
connectAttr "pCubeShape7.wm" "polyUnite3.im[1]";
connectAttr "pCubeShape4.wm" "polyUnite3.im[2]";
connectAttr "pCube5Shape.wm" "polyUnite3.im[3]";
connectAttr "deleteComponent18.og" "groupParts23.ig";
connectAttr "groupId34.id" "groupParts23.gi";
connectAttr "polyUnite3.out" "groupParts24.ig";
connectAttr "groupId36.id" "groupParts24.gi";
connectAttr "BoatSG.pa" ":renderPartition.st" -na;
connectAttr "FlagSG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube4Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube5Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube9Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId29.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId30.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId31.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId32.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId33.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId34.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId35.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId36.msg" ":initialShadingGroup.gn" -na;
// End of Fan.0001.ma
