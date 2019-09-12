//Maya ASCII 2019 scene
//Name: Com Thingy.0001.ma
//Last modified: Thu, Sep 12, 2019 03:09:28 PM
//Codeset: 1252
requires maya "2019";
requires "mtoa" "3.1.2";
requires "mtoa" "3.1.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 17134)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "0C074F08-466E-2C8C-E633-E49091E1A4FB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.026944502553788996 1.2523001831795872 0.40695785411325047 ;
	setAttr ".r" -type "double3" -68.138352729637447 -356.99999999999898 7.9622987573794836e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "07DB3B63-4778-A15A-EBA6-F0A6D77B9C66";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 0.7637255301654351;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.302311445436791 0.60771394621632668 -0.020835498978963186 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "09FC221A-411F-FD44-70F9-4D9257D62C53";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "81A32F9D-4F05-BC01-0E43-4FB8CD60B602";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "DFABB246-4EE8-A46F-14DC-8CB44D211EFC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "3415E385-4176-EF6C-0310-69864F8B1B4E";
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
	rename -uid "379640AD-4D84-41B9-6529-1F8CEB542DF2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "A9E1BBB0-4092-4340-85DD-678390F53499";
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
createNode transform -n "pCube1";
	rename -uid "FB31473F-43CE-CA47-60E3-6680ED3F8820";
	setAttr ".t" -type "double3" 0 0.015745749557378286 0 ;
	setAttr ".s" -type "double3" 1 0.090339261346697702 1 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "62B561BE-4A7D-C49E-D5C0-75B6D3A6744E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.12018256762736668 1.1398368775844574 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube2";
	rename -uid "8F1AE4CB-43BC-4AE1-63B9-C1A712828770";
	setAttr ".t" -type "double3" -0.302311445436791 0.31308431913192963 -0.015363867730359221 ;
	setAttr ".s" -type "double3" 0.061133350879651292 0.52966798703341056 0.051514759076981449 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "B8E48F76-4D7A-76E5-0C8D-339E3DA3F5AF";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.8531070053577423 1.3517612665891647 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube3";
	rename -uid "8024A4EE-4FE1-CB16-2252-2F80DD5BA61F";
	setAttr ".t" -type "double3" -0.302311445436791 0.60771394621632668 -0.015363867730359221 ;
	setAttr ".s" -type "double3" 0.012986536635262502 0.11251718774055801 0.01094326249720793 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "12A1018B-4556-CD9A-488A-78AB92D8D1CD";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49520298001737206 0.50785642862319946 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape4" -p "pCube3";
	rename -uid "2D7B2156-42CE-2B36-EF66-37830B42372C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "e[2]" "e[7:8]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 2 "e[0]" "e[9:10]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 11 ".ed[0:10]"  0 1 0 2 3 0 4 5 0 0 2 0 1 3 0 2 4 0 3 5 0
		 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 0 4 -2 -4
		mu 0 4 0 1 3 2
		f 4 1 6 -3 -6
		mu 0 4 2 3 5 4
		f 4 -11 -9 -7 -5
		mu 0 4 1 6 7 3
		f 4 9 3 5 7
		mu 0 4 8 0 2 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube4";
	rename -uid "2DA0088A-4F67-C995-CFC4-4AB8542ED531";
	setAttr ".t" -type "double3" -0.13430938697180012 0.059061572935890871 0 ;
	setAttr ".s" -type "double3" 0.043866036224891491 0.63574053911310136 0.051333106528519884 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "0A44BCB5-431F-8122-7D63-36A97CF9F7C8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.24564896523952484 0.6208069920539856 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube5";
	rename -uid "FB2996B2-499C-6BAC-F8F1-CAB9884D263F";
	setAttr ".t" -type "double3" -0.13305111021157479 0.3285942975549484 -0.017916544614221083 ;
	setAttr ".s" -type "double3" 0.10580204077312412 0.10580204077312412 0.10580204077312412 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	rename -uid "09351899-45D3-2ED2-130C-088A6E171A62";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.88941478729248047 0.70455634593963623 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[4]" -type "float3" -3.5762787e-07 0 0 ;
	setAttr ".pt[5]" -type "float3" -3.5762787e-07 0 0 ;
	setAttr ".pt[6]" -type "float3" -3.5762787e-07 0 0 ;
	setAttr ".pt[7]" -type "float3" -3.5762787e-07 0 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube6";
	rename -uid "8CEE8360-450E-F196-26F4-0ABD1CC402D4";
	setAttr ".t" -type "double3" 0.34698376195881214 0.3285942975549484 0.00043638154659343675 ;
	setAttr ".s" -type "double3" 0.10580204077312412 0.10580204077312412 0.10580204077312412 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	rename -uid "C2B1D0FB-4442-41C8-0F7E-22898CDF4F48";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.86010396480560303 0.54333263635635376 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape1" -p "pCube6";
	rename -uid "AC0BC4D2-4D30-B399-AB44-9EB5A263E037";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "e[2:3]" "e[8:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.2991012 0 -0.29910132 -0.29910168 
		0 -0.29910132 0.13483422 0 -0.13483422 -0.1348343 0 -0.13483422 0.1348342 0 0.13483422 
		-0.13483429 0 0.13483422 0.29910126 0 0.29910135 -0.29910156 0 0.29910135;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.50000036 0.5 -0.5 0.49999964 0.5 -0.5 -0.50000036 -0.5 -0.5 0.49999964 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube7";
	rename -uid "CD8C23DE-4BBA-BCB0-DE68-EDA2717FA8E7";
	setAttr ".t" -type "double3" 0.34572548519858681 0.059061572935890871 0 ;
	setAttr ".s" -type "double3" 0.043866036224891491 0.63574053911310136 0.051333106528519884 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	rename -uid "11EAC0C6-40F6-EABE-EEFC-4CAAA1B3E81E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.72639769315719604 0.45897474884986877 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape2" -p "pCube7";
	rename -uid "29329BDA-4CC3-27D4-35C7-75B5240364E6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "e[0]" "e[9:10]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 2 "e[2]" "e[7:8]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0.46133959 0 ;
	setAttr ".pt[1]" -type "float3" 0 0.46133959 0 ;
	setAttr ".pt[2]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[3]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[6]" -type "float3" 0 0.46133959 0 ;
	setAttr ".pt[7]" -type "float3" 0 0.46133959 0 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 11 ".ed[0:10]"  0 1 0 2 3 0 4 5 0 0 2 0 1 3 0 2 4 0 3 5 0
		 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 0 4 -2 -4
		mu 0 4 0 1 3 2
		f 4 1 6 -3 -6
		mu 0 4 2 3 5 4
		f 4 -11 -9 -7 -5
		mu 0 4 1 6 7 3
		f 4 9 3 5 7
		mu 0 4 8 0 2 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube8";
	rename -uid "719A5251-4D13-5D0A-B5E2-A58203FCD561";
	setAttr ".t" -type "double3" 0.1369404402203761 0.31308431913192963 -0.015363867730359221 ;
	setAttr ".s" -type "double3" 0.061133350879651292 0.52966798703341056 0.051514759076981449 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	rename -uid "C2886BDA-4500-6DCF-FEB8-B88B78E5811D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.87499204277992249 0.48332718014717102 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape3" -p "pCube8";
	rename -uid "6C68B799-4D2D-C3A4-0999-89B5B5B354B6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "e[2]" "e[7:8]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 2 "e[0]" "e[9:10]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 11 ".ed[0:10]"  0 1 0 2 3 0 4 5 0 0 2 0 1 3 0 2 4 0 3 5 0
		 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 0 4 -2 -4
		mu 0 4 0 1 3 2
		f 4 1 6 -3 -6
		mu 0 4 2 3 5 4
		f 4 -11 -9 -7 -5
		mu 0 4 1 6 7 3
		f 4 9 3 5 7
		mu 0 4 8 0 2 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pTorus1";
	rename -uid "4728DBD3-47C5-1567-E8F8-C18B99E17D31";
	setAttr ".t" -type "double3" 0.13380628675570294 0.54449216994477267 -0.01657396667259994 ;
	setAttr ".s" -type "double3" 0.077144606706866403 0.077144606706866403 0.077144606706866403 ;
createNode mesh -n "pTorusShape1" -p "pTorus1";
	rename -uid "5E47D846-4EEA-6DD8-97A3-D1830DEE49C2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.531682014465332 1.0810527205467224 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "0E47A145-477B-4295-4416-FDB78F792B75";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "69068D10-4AAE-6DF3-B12A-5C8ADFE6B083";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "33754A02-4AB8-A542-DC4F-CFA5B3F236EA";
createNode displayLayerManager -n "layerManager";
	rename -uid "C5EE3848-4A66-51C4-BCAC-FAAC358E6DF8";
createNode displayLayer -n "defaultLayer";
	rename -uid "D6EEC04C-4929-EA96-CD35-48B04AF63748";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C04D0E0D-45FB-4117-8D4A-218B12D02794";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4DEE106F-45DE-1280-5120-EA8F8A65903B";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "EA471EE6-4D44-098D-F4E5-F09EA896C315";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube2";
	rename -uid "370C6863-4E65-5413-79FC-1FA314353731";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube3";
	rename -uid "42BC4341-4A40-0F20-616D-0086A78858BA";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube4";
	rename -uid "6E93242B-450C-7ADF-91D6-A4B4B67CBFEA";
	setAttr ".cuv" 4;
createNode objectSet -n "set1";
	rename -uid "AB39430B-460E-47F9-1F51-5FB6D74E62BA";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr -s 2 ".gn";
createNode groupId -n "groupId1";
	rename -uid "5A381F27-479B-C1E5-3005-708867558D64";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "C92970CC-4A4E-C22F-2C90-718A19639A16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "e[2:3]" "e[8:9]";
createNode deleteComponent -n "deleteComponent1";
	rename -uid "572E046F-4857-873A-A87E-868B280A86B9";
	setAttr ".dc" -type "componentList" 1 "f[2]";
createNode objectSet -n "set2";
	rename -uid "EB1F56AD-4376-6CAE-546A-42995E8CC530";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr -s 2 ".gn";
createNode groupId -n "groupId2";
	rename -uid "0E4143F7-4EEA-F109-D249-E498853A4C42";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "864DF121-4E0D-52C9-2F5C-5AA9DD5B8E46";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "e[2:3]" "e[8:9]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "429F41AB-440B-914A-387F-629E8E7515A9";
	setAttr ".dc" -type "componentList" 1 "f[2]";
createNode objectSet -n "set3";
	rename -uid "D5EEFDD3-4604-5852-C2AE-B295122358DC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "9C941554-4227-56C3-0A1A-5DACD24C65A1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "7EB8802B-415B-F79E-94D9-5D8D0959AEEE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "e[2:3]" "e[8:9]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "12AA1F2C-4EF4-8661-184D-5DBE73593577";
	setAttr ".dc" -type "componentList" 1 "f[2]";
createNode objectSet -n "set4";
	rename -uid "EFEBE828-437B-8872-0E2D-A6A8E798F4AA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "DFCF54C3-43AB-A7B9-8D55-2F965E91E73E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "52D3BF3D-42BB-02D0-2535-75A8063CE24A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "e[0]" "e[3]" "e[10:11]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "A76F8B34-45FC-02AB-86A6-4A922C2AA63E";
	setAttr ".dc" -type "componentList" 1 "f[2]";
createNode objectSet -n "set5";
	rename -uid "BC464A34-4330-2A3D-B7F7-82AB5DF3CCF1";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr -s 2 ".gn";
createNode groupId -n "groupId5";
	rename -uid "175AF088-4C19-D758-A049-5781176665B9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "711DDCC9-477D-203C-C4C0-6CAC75751674";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "e[0]" "e[3]" "e[10:11]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "759815C9-4FA1-BED5-9D03-59944C0CF94A";
	setAttr ".dc" -type "componentList" 1 "f[3]";
createNode objectSet -n "set6";
	rename -uid "0162BB49-4294-C782-BBBB-F59409B52B32";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr -s 2 ".gn";
createNode groupId -n "groupId6";
	rename -uid "C19EF710-42DA-D321-4190-52BBF42179D3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "C9C2B60C-4B19-6D42-DA44-3686F05E775C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "e[0]" "e[3]" "e[10:11]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "0D702A30-40CD-5F68-DF2B-91949E4414E4";
	setAttr ".dc" -type "componentList" 1 "f[2]";
createNode objectSet -n "set7";
	rename -uid "48A68EE5-444B-552F-0C23-5AB3CC6E213C";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr -s 2 ".gn";
createNode groupId -n "groupId7";
	rename -uid "66C8002D-4668-C4A8-776A-9BABFFFD31AF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "408D5B7F-4A17-BCF9-0F75-A791AC6A2313";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "e[2:3]" "e[8:9]";
createNode deleteComponent -n "deleteComponent7";
	rename -uid "E561B05C-4BAA-3080-B2AB-1D8F58D58BFF";
	setAttr ".dc" -type "componentList" 1 "f[2]";
createNode polyTorus -n "polyTorus1";
	rename -uid "CC64D259-4483-8831-CB82-A5ACF0DE1F2C";
	setAttr ".sa" 6;
	setAttr ".sh" 6;
createNode objectSet -n "set8";
	rename -uid "67B1AA55-4220-8B17-2E8E-3294124B7E46";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "CB73B499-4009-DF78-2A24-9B87294F8403";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "9538E246-4325-2282-A61D-C1B1D5584FE6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "e[12]" "e[18]" "e[24]" "e[48:49]" "e[54:55]";
createNode polyTweak -n "polyTweak1";
	rename -uid "59C143CF-4947-17C8-04A3-81B0AF6D4E49";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk[6:12]" -type "float3"  -0.19814858 5.5511151e-17
		 0.34320372 0.19814858 5.5511151e-17 0.3432039 0.39629728 5.5511151e-17 4.3305452e-08
		 0.19814873 5.5511151e-17 -0.34320384 -0.19814861 5.5511151e-17 -0.3432039 -0.39629728
		 5.5511151e-17 -1.5747442e-08 0 0 0;
createNode deleteComponent -n "deleteComponent8";
	rename -uid "5078EDB1-4B7D-B370-CEDC-6B8B249A450A";
	setAttr ".dc" -type "componentList" 2 "f[12]" "f[18]";
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "D0D4056D-4C36-46DD-8061-E393E52EB432";
	setAttr ".ics" -type "componentList" 6 "e[12]" "e[23]" "e[29]" "e[47:48]" "e[53:54]" "e[59:60]";
	setAttr ".cv" yes;
createNode objectSet -n "set9";
	rename -uid "89CFED47-42B5-0504-9622-68B6ACA04FA6";
	setAttr ".ihi" 0;
createNode objectSet -n "set10";
	rename -uid "B104304F-4471-698E-0C2E-49AD07301344";
	setAttr ".ihi" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "752B3705-43E3-77BF-BF85-A69397001F2A";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 767\n            -height 791\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 767\\n    -height 791\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 767\\n    -height 791\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E2E6416D-4E2D-7BA8-8808-A284309C7788";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyMapDel -n "polyMapDel1";
	rename -uid "1BAF57D8-4539-811A-9485-82B4258ADD35";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyMapDel -n "polyMapDel2";
	rename -uid "90C53FDC-4BB1-0588-455E-E69F7AC37262";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId16";
	rename -uid "616A3DC2-4F4E-B25D-D0A5-7F8542A68699";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "28134D6A-4F99-B957-534B-C3A8222D5913";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "e[2:3]" "e[8:9]";
createNode polyMapDel -n "polyMapDel3";
	rename -uid "1C4637AD-4E7C-A154-5AED-16B399F860F0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId17";
	rename -uid "1DE15AA7-465D-47F5-71FF-729D6B188696";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "6D19DCE6-4CE0-D848-7F3A-CDB8458E7D19";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "e[0]" "e[9:10]";
createNode groupId -n "groupId18";
	rename -uid "8F717FD7-4FFE-27D9-04D3-E38241F598D3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "A68CDC3C-49E5-73AE-899C-66B1E405246B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "e[2]" "e[7:8]";
createNode polyMapDel -n "polyMapDel4";
	rename -uid "4CF1800B-4E22-D9B3-15C2-358F4C30B7E2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyMapDel -n "polyMapDel5";
	rename -uid "ADF95962-4D33-3A0C-102E-6590E4EDD288";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyMapDel -n "polyMapDel6";
	rename -uid "14666C69-4779-D760-F6A3-67A7C31097A0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyMapDel -n "polyMapDel7";
	rename -uid "125C72DC-46FD-4861-D99F-ED92F57D0B8D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId19";
	rename -uid "C03C7A67-4515-6259-B081-4F9E993E7179";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "00557656-4EE7-BFB0-BCA1-5B9DD69EDF76";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "e[2]" "e[7:8]";
createNode groupId -n "groupId20";
	rename -uid "ECD30F5F-4A40-CD61-5B39-C98B5C59091A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "151C1F27-41DD-B969-90BB-C885453A90B6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "e[0]" "e[9:10]";
createNode polyMapDel -n "polyMapDel8";
	rename -uid "ABD6F85E-4D4C-0609-4177-D7B40E40A8BE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTweak -n "polyTweak2";
	rename -uid "F8FCEFDB-45CB-1540-A11B-468AEA8D814E";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.46133959 0 ;
	setAttr ".tk[1]" -type "float3" 0 0.46133959 0 ;
	setAttr ".tk[2]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".tk[3]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".tk[6]" -type "float3" 0 0.46133959 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.46133959 0 ;
createNode polyMapDel -n "polyMapDel9";
	rename -uid "B0BF2A40-439C-8398-0AB4-F39FB87B9BDC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId21";
	rename -uid "EE34EDE4-49AB-C0B0-DC37-09AC04E7146A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "7EC4E686-4A17-FC7A-C174-FCB0222404FE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "e[2]" "e[7:8]";
createNode groupId -n "groupId22";
	rename -uid "E2DA3A3B-4722-641D-7194-A9AF7238EB46";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "65EAA4D9-4CA6-06D9-BE7A-9395D688FD87";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "e[0]" "e[9:10]";
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "A03D7193-4738-C4E7-FD8E-B2B387D121DB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:3]";
	setAttr ".ix" -type "matrix" 0.012986536635262502 0 0 0 0 0.11251718774055801 0 0
		 0 0 0.01094326249720793 0 -0.302311445436791 0.60771394621632668 -0.015363867730359221 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "060E424A-4F9C-3F2D-C624-9C8FFF9393CD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".ix" -type "matrix" 0.10580204077312412 0 0 0 0 0.10580204077312412 0 0
		 0 0 0.10580204077312412 0 -0.13305111021157479 0.3285942975549484 -0.017916544614221083 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj3";
	rename -uid "AB740F56-4012-51D8-BA6D-53BDF91BF3FE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:3]";
	setAttr ".ix" -type "matrix" 0.043866036224891491 0 0 0 0 0.63574053911310136 0 0
		 0 0 0.051333106528519884 0 -0.13430938697180012 0.059061572935890871 0 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj4";
	rename -uid "E30B4A95-44AE-5F28-41AF-698453E427E6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:3]";
	setAttr ".ix" -type "matrix" 0.061133350879651292 0 0 0 0 0.52966798703341056 0 0
		 0 0 0.051514759076981449 0 -0.302311445436791 0.31308431913192963 -0.015363867730359221 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj5";
	rename -uid "EE31B6C4-4A9F-FC10-BE01-0DA3DAEDFB1A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.090339261346697702 0 0 0 0 1 0 0 0.015745749557378286 0 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj6";
	rename -uid "E022C02F-43D1-62CD-4EE9-A4ADC1F7E99D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:30]";
	setAttr ".ix" -type "matrix" 0.077144606706866403 0 0 0 0 0.077144606706866403 0 0
		 0 0 0.077144606706866403 0 0.13380628675570294 0.54449216994477267 -0.01657396667259994 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj7";
	rename -uid "A984020D-47EE-9141-01DA-8DADA26393DE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:3]";
	setAttr ".ix" -type "matrix" 0.061133350879651292 0 0 0 0 0.52966798703341056 0 0
		 0 0 0.051514759076981449 0 0.1369404402203761 0.31308431913192963 -0.015363867730359221 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj8";
	rename -uid "6B96F129-4FC9-1716-FFA3-D9BB4FC1BAF9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".ix" -type "matrix" 0.10580204077312412 0 0 0 0 0.10580204077312412 0 0
		 0 0 0.10580204077312412 0 0.34698376195881214 0.3285942975549484 0.00043638154659343675 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj9";
	rename -uid "19A1F4E0-4123-DAE5-DFE8-358F5F52F0EB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:3]";
	setAttr ".ix" -type "matrix" 0.043866036224891491 0 0 0 0 0.63574053911310136 0 0
		 0 0 0.051333106528519884 0 0.34572548519858681 0.059061572935890871 0 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "85AD5B6B-40C7-F9D9-36C7-D7B811DC3692";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[0:15]" -type "float2" 1.19908822 8.9406967e-08
		 1.19908834 2.9802322e-08 1.19908834 -5.9604645e-08 1.19908834 0 0.037155014 0.85443199
		 0.037154976 0.85443199 0.037154917 0.85443193 0.037154999 0.85443193 0.56606692 -1.29064941
		 0.56606686 -1.29064941 0.56606686 -1.29064941 0.56606692 -1.29064941 -1.014886856
		 0.55675066 -1.014886856 0.55675071 -1.014886856 0.55675071 -1.014886856 0.55675071;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "F4B67737-485E-7585-A4E7-9FA1E80F9D81";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[0:19]" -type "float2" 0.037154976 0 0.037154976
		 0 0.037154976 0 0.037154976 0 0.037154973 0 0.037154976 0 0.037154976 0 0.037154973
		 0 0.037154976 0 0.037154976 0 0.037154976 0 0.037154976 0 0.037154976 0 0.037154976
		 0 0.037154976 0 0.037154976 0 0.037154973 -0.43930289 0.037154976 -0.43930289 0.037154976
		 -0.43930289 0.037154973 -0.43930289;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "FE63562A-460E-3000-AE7E-618FC6C55F2C";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[0:15]" -type "float2" 0.037154976 0 0.037154976
		 0 0.037154976 0 0.037154976 0 0.037154976 0 0.037154976 0 0.037154976 0 0.037154976
		 0 0.037154976 0 0.037154976 0 0.037154976 0 0.037154976 0 -0.37373531 0 -0.37373531
		 0 -0.37373531 0 -0.37373531 0;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "D0C28655-4067-2A82-8708-CFA14C8C7AB2";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[0:15]" -type "float2" 1.74158442 0 1.74158454 0
		 1.74158454 0 1.74158442 0 0.037155014 0.85443199 0.037154976 0.85443199 0.037154917
		 0.85443193 0.037154999 0.85443193 0.037154976 -1.068687439 0.037154976 -1.068687439
		 0.037154976 -1.068687439 0.037154976 -1.068687439 -0.48344308 0.51698279 -0.48344308
		 0.51698279 -0.48344308 0.51698279 -0.48344308 0.51698279;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "8929C4A9-43F8-BF90-9483-BFB056032549";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[0:15]" -type "float2" 0.037154976 0 0.037154976
		 0 0.037154976 0 0.037154976 0 0.037154976 0 0.037154976 0 0.037154976 0 0.037154976
		 0 0.037154976 0 0.037154976 0 0.037154976 0 0.037154976 0 0.037154973 0 0.037154976
		 0 0.037154976 0 0.037154973 0;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "AE8E5B70-40AA-4EA3-594E-7ABC892CA000";
	setAttr ".uopa" yes;
	setAttr -s 74 ".uvtk[0:73]" -type "float2" 0.029235903 -0.00167799 0.054616544
		 -0.0012340546 0.042236958 0.0061583519 0.025335256 0.0051553249 0.0265867 -0.008836925
		 0.041296426 0.001239121 0.031953726 0.0055957437 0.045978341 -0.0063995719 0.028430361
		 0.00044417381 0.045521099 -0.0019218922 0.035776738 -0.0013946891 0.024696205 -0.00069916248
		 0.025182376 0.0011036992 0.053097676 0.0017102361 0.047810499 0.0016767383 0.036724839
		 -0.00091904402 0.034290452 -0.68337929 0.039471347 -0.67199326 0.036355708 -0.69065273
		 0.037154999 -0.68328494 0.036669161 -0.6730026 0.040019512 -0.68319058 0.037640769
		 -0.69356728 0.037954245 -0.67591715 0.034838583 -0.69457668 0.034290437 -0.70507091
		 0.039471332 -0.69368482 0.036355738 -0.71234435 0.037155006 -0.70497656 0.036669169
		 -0.69469416 0.040019516 -0.7048822 0.037640754 -0.7152589 0.037954245 -0.69760877
		 0.034838576 -0.7162683 0.77105361 -0.54590487 0.77105361 -0.54590493 0.77105361 -0.54590493
		 0.77105367 -0.54590493 0.77105361 -0.54590493 0.77105367 -0.54590493 0.77105361 -0.54590499
		 0.77105355 -0.54590493 0.77105355 -0.54590493 0.77105355 -0.54590493 0.77105349 -0.54590493
		 0.77105355 -0.54590493 0.039005402 0.0046439171 0.039184395 0.00026488304 0.038443688
		 0.0057279468 0.028656427 -0.0012357235 0.04270095 -0.00046563148 0.042730514 -0.0046578646
		 0.035739545 0.0040163398 0.041581754 -0.0073599815 0.031643812 -0.0024793148 0.035799567
		 -0.00070279837 0.033604804 0.0026631355 0.036768917 -0.00041490793 0.035767052 -0.0014610887
		 0.036764536 0.00056099892 0.038396958 0.0011652708 0.037691358 -0.00026518106 0.0351553
		 -0.0012139082 0.039231677 -0.002967 0.040217195 -0.0026352406 0.037333522 -0.0013951063
		 0.032438759 0.0054204464 0.038553376 0.0027908087 0.044034187 0.0082659125 0.040110651
		 -0.0052267909 0.034800861 -0.0080956221 0.039509062 0.0080956817 0.030275796 -0.0082659721
		 0.034199271 0.0052267909;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "13B18AE0-49BF-DF96-E010-87AF2F93AD9F";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[0:15]" -type "float2" 0.037155036 1.31109965 0.037154976
		 1.31109965 0.037154976 1.31109953 0.037154976 1.31109953 0.037155014 0.85443199 0.037154976
		 0.85443199 0.037154917 0.85443193 0.037154999 0.85443193 0.037154946 -0.54590493
		 0.037154976 -0.54590493 0.037154976 -0.54590499 0.037154976 -0.54590493 0.037154984
		 -1.1641532e-08 0.037154976 -6.9849193e-09 0.037154976 0 0.03715498 0;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "8E3E6765-49F1-FC79-6DBE-2F9B33082E60";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[0:19]" -type "float2" -1.65625286 -0.0019372996
		 -1.65757632 -0.0013741665 -1.65953755 0.0021674931 -1.65713239 0.0011439323 2.28196383
		 -0.0019372106 2.2806406 -0.0013741255 2.27867937 0.0021674633 2.28108454 0.0011439323
		 0.49723369 0.85443193 0.49723366 0.85443193 0.49723369 0.85443193 0.49723369 0.85443193
		 -1.26561904 0.072767578 -1.26561904 0.072767578 -1.26561904 0.072767578 -1.26561904
		 0.072767578 -1.72667313 -0.0019371926 -1.72799647 -0.0013740992 -1.7299577 0.0021673739
		 -1.72755241 0.0011438727;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "B549C092-423C-C68D-22B6-D88C2BA9BAE3";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[0:15]" -type "float2" 0.037155036 5.9604645e-08
		 0.037154976 -5.9604645e-08 0.037154917 -5.9604645e-08 0.037154976 5.9604645e-08 1.73430073
		 1.23097658 1.73430073 1.23097694 1.73430049 1.23097694 1.73430049 1.23097682 2.38985038
		 -0.123826 2.38985038 -0.12382609 2.38985062 -0.12382612 2.38985062 -0.12382606 1.89454615
		 -0.26221997 1.89454615 -0.26221991 1.89454603 -0.26221994 1.89454603 -0.26221997;
createNode polyMapSewMove -n "polyMapSewMove1";
	rename -uid "D1B6BB18-4775-5BB1-7CB6-7A80F501AB64";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[1]";
createNode polyMapSewMove -n "polyMapSewMove2";
	rename -uid "EBB060F8-4354-BCCD-60A5-89B70DB20147";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[1]";
createNode polyMapSewMove -n "polyMapSewMove3";
	rename -uid "D33442B6-46F3-77C3-DCC4-5C8A72D05188";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[6]";
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "AAB51AC4-4678-2F4C-1547-01B641BD261A";
	setAttr ".uopa" yes;
	setAttr -s 18 ".uvtk[0:17]" -type "float2" 1.20912516 1.23097682 1.20912528
		 1.23097682 1.20912528 1.23097682 1.20912516 1.23097682 -1.2965318 0.43703327 -1.2965318
		 0.43703327 -1.2965318 0.43703321 -1.2965318 0.43703321 -0.91104662 -0.33621958 -0.91104662
		 -0.33621964 -0.91104668 -0.33621961 -0.91104668 -0.33621958 1.52961612 0.91776967
		 1.52961624 0.91776973 1.52961636 0.91776973 1.52961636 0.91776973 -0.91104662 -0.33621955
		 -0.91104662 -0.33621961;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "8BEC78A6-4783-6FDC-CBCC-CB8EB8B24E5C";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[0:13]" -type "float2" 5.9604645e-08 5.9604645e-08
		 0 -5.9604645e-08 -5.9604645e-08 -5.9604645e-08 0 5.9604645e-08 1.20912504 1.54418397
		 1.20912504 1.54418397 1.20912504 1.54418397 1.20912504 1.54418397 -0.49529117 2.9802322e-08
		 -0.49529123 1.071021e-08 -0.49529123 -1.9557774e-08 -0.4952912 0 -0.49529117 0 -0.49529123
		 -9.3132257e-10;
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "DF1FB905-430C-5E1E-A015-87BD24185ED3";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[0:13]" -type "float2" 0.52580422 2.9802322e-08
		 0.52580422 -2.9802322e-08 0.52580422 -5.9604645e-08 0.5258044 0 4.4703484e-08 0.85443199
		 0 0.85443199 -5.9604645e-08 0.85443193 1.4901161e-08 0.85443193 0.52580416 0 0.52580434
		 1.1920929e-07 -0.54458296 -0.67133933 -0.54458296 -0.67133933 -0.54458296 -0.67133933
		 -0.54458296 -0.67133933;
createNode polyMapSewMove -n "polyMapSewMove4";
	rename -uid "24B4F022-42A0-B255-7D76-78B854EAE4DE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[44]" "e[50]";
createNode polyMapSewMove -n "polyMapSewMove5";
	rename -uid "070E0A45-48ED-A268-84C5-13BD9348A88A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[48]" "e[54]";
createNode polyMapSewMove -n "polyMapSewMove6";
	rename -uid "0587BC70-4E2E-5B44-9950-09AE137D7B0B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[47]" "e[53]";
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "0D7CD524-4032-7671-AACA-AD9BDAFC2B6D";
	setAttr ".uopa" yes;
	setAttr -s 52 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.56101435 0.85443193 ;
	setAttr ".uvtk[1]" -type "float2" -0.56101435 0.85443193 ;
	setAttr ".uvtk[2]" -type "float2" -0.56101435 0.85443193 ;
	setAttr ".uvtk[3]" -type "float2" -0.56101435 0.85443193 ;
	setAttr ".uvtk[4]" -type "float2" -0.56101435 0.85443193 ;
	setAttr ".uvtk[5]" -type "float2" -0.56101435 0.85443193 ;
	setAttr ".uvtk[6]" -type "float2" -0.56101435 0.85443193 ;
	setAttr ".uvtk[7]" -type "float2" -0.56101435 0.85443193 ;
	setAttr ".uvtk[8]" -type "float2" 0 0.30515423 ;
	setAttr ".uvtk[9]" -type "float2" 0 0.30515429 ;
	setAttr ".uvtk[10]" -type "float2" 0 0.30515423 ;
	setAttr ".uvtk[11]" -type "float2" 0 0.30515423 ;
	setAttr ".uvtk[12]" -type "float2" 0 0.30515423 ;
	setAttr ".uvtk[13]" -type "float2" 0 0.30515423 ;
	setAttr ".uvtk[14]" -type "float2" 0 0.30515423 ;
	setAttr ".uvtk[15]" -type "float2" 0 0.30515429 ;
	setAttr ".uvtk[16]" -type "float2" 0 -0.62204522 ;
	setAttr ".uvtk[17]" -type "float2" 0 -0.62204522 ;
	setAttr ".uvtk[18]" -type "float2" 0 -0.62204522 ;
	setAttr ".uvtk[19]" -type "float2" 0 -0.62204522 ;
	setAttr ".uvtk[20]" -type "float2" 0 -0.62204522 ;
	setAttr ".uvtk[21]" -type "float2" 0 -0.62204522 ;
	setAttr ".uvtk[22]" -type "float2" 0 -0.62204522 ;
	setAttr ".uvtk[23]" -type "float2" 0 -0.62204528 ;
	setAttr ".uvtk[24]" -type "float2" 0 -0.62204522 ;
	setAttr ".uvtk[25]" -type "float2" 0 -0.62204522 ;
	setAttr ".uvtk[26]" -type "float2" 0 -0.62204522 ;
	setAttr ".uvtk[27]" -type "float2" 0 -0.62204528 ;
	setAttr ".uvtk[28]" -type "float2" 0 -0.62204522 ;
	setAttr ".uvtk[29]" -type "float2" 0 -0.62204516 ;
	setAttr ".uvtk[30]" -type "float2" 0 -0.62204522 ;
	setAttr ".uvtk[31]" -type "float2" 0 -0.62204516 ;
	setAttr ".uvtk[32]" -type "float2" 0 -0.62204528 ;
	setAttr ".uvtk[33]" -type "float2" 0 -0.62204516 ;
	setAttr ".uvtk[46]" -type "float2" -0.73567253 1.3156083 ;
	setAttr ".uvtk[47]" -type "float2" -0.73567253 1.3156084 ;
	setAttr ".uvtk[48]" -type "float2" -0.73567253 1.3156084 ;
	setAttr ".uvtk[49]" -type "float2" -0.73567253 1.3156081 ;
	setAttr ".uvtk[50]" -type "float2" -0.73567253 1.3156083 ;
	setAttr ".uvtk[51]" -type "float2" -0.73567253 1.3156083 ;
	setAttr ".uvtk[52]" -type "float2" -0.73567253 1.3156084 ;
	setAttr ".uvtk[53]" -type "float2" -0.73567253 1.3156083 ;
	setAttr ".uvtk[54]" -type "float2" -0.73567253 1.3156083 ;
	setAttr ".uvtk[55]" -type "float2" -0.73567253 1.3156081 ;
	setAttr ".uvtk[56]" -type "float2" -0.73567253 1.3156081 ;
	setAttr ".uvtk[57]" -type "float2" -0.73567253 1.3156081 ;
	setAttr ".uvtk[62]" -type "float2" -0.68468535 0.19666493 ;
	setAttr ".uvtk[63]" -type "float2" -0.68468535 0.19666493 ;
	setAttr ".uvtk[64]" -type "float2" -0.68468535 0.19666493 ;
	setAttr ".uvtk[65]" -type "float2" -0.68468535 0.19666493 ;
	setAttr ".uvtk[66]" -type "float2" -0.68468535 0.19666493 ;
	setAttr ".uvtk[67]" -type "float2" -0.68468535 0.19666493 ;
createNode polyMapSewMove -n "polyMapSewMove7";
	rename -uid "4FBFD9FC-4F36-5EBD-3A83-B8874CA310DF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[7]";
createNode polyMapSewMove -n "polyMapSewMove8";
	rename -uid "69CC61BF-49E6-6B84-AF3F-E582D964D45E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[36]";
createNode polyMapSewMove -n "polyMapSewMove9";
	rename -uid "A24A95AA-48E5-C1DC-9F49-B28946B68B5A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[64]";
createNode polyMapSewMove -n "polyMapSewMove10";
	rename -uid "10D30848-4CF5-5952-770E-57BA55A1208B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[60]";
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "B684DB82-48F1-9008-5D7F-3B9150EBAC9A";
	setAttr ".uopa" yes;
	setAttr -s 61 ".uvtk[0:60]" -type "float2" 0.026795626 0.037221581 -0.046123981
		 0.091805726 -0.058549762 0.033288687 -0.043382049 -0.026744783 0.094943047 0.10795803
		 0.092834353 -0.030173466 0.023320436 -0.075142592 0.17228997 0.0034383088 0.19331293
		 -0.02731359 0.30950335 0.00075101852 0.25753105 0.10476995 0.18022391 0.090224862
		 0.21647149 -0.20149714 0.37123883 -0.11245251 0.060471222 0.056203127 0.095008999
		 0.12114978 0.0059855878 -0.010678232 0.0038507283 -0.0048996508 0.001170367 -0.0046603009
		 0.0020527244 -0.0096387267 -0.0009867847 -0.0060759336 -5.9917569e-05 -0.011684418
		 -0.00044369698 -0.01070559 0.00091287494 -0.0098822713 0.0039368272 -0.010689735
		 6.1988831e-05 0.011680126 -0.0039246678 0.010688365 -0.00090038776 0.0098810196 -0.0020507276
		 0.0096375942 0.00045584142 0.010707736 -0.0059836805 0.010683417 0.00097355247 0.0060707331
		 -0.0011857152 0.0046597719 -0.0038649291 0.0049059391 -0.029267907 0.051127791 0.026910305
		 0.025014669 -0.032713771 0.058810711 -0.0069745779 0.0078195632 0.030337214 -0.043857813
		 -0.090370774 0.02038832 -0.0093202591 -0.062757075 -0.029130578 -0.080121189 -0.03437674
		 -0.070348501 -0.08722055 -0.047728032 -0.64316624 0.097052574 -0.68376499 0.089903116
		 -0.33978721 -0.027330875 0.13128357 -0.15434885 0.25492176 -0.18047786 -0.23907445
		 0.21061313 -0.56045067 0.055454135 -0.56384259 -0.068369627 -0.12176836 -0.08844465
		 -0.16420969 -0.22599435 2.9802322e-08 0 0 0 0 0 0 0 0.40780383 0.084818363 0.32255465
		 0.1597482 0.51573861 0.015541196;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "30D44B09-4AAB-EB13-678B-B0A59632CCC3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[60]";
createNode polyTweakUV -n "polyTweakUV15";
	rename -uid "40ECD3FE-40EB-7EBB-B0B3-D3BC8CDE6989";
	setAttr ".uopa" yes;
	setAttr -s 63 ".uvtk[0:62]" -type "float2" 1.089046836 -2.9802322e-08
		 1.089046836 -4.4703484e-08 1.089046836 -8.9406967e-08 1.089046955 -2.9802322e-08
		 1.089046955 -4.4703484e-08 1.089046836 -5.9604645e-08 1.089046955 -2.9802322e-08
		 1.089046836 -4.4703484e-08 1.28480518 0.0047590733 1.29315364 0.0027197599 1.29826546
		 0.0061225891 1.29441214 0.00074660778 1.26300001 0.05761975 1.28803122 0.00012415648
		 0.63394946 -0.3404898 1.29614353 -0.016188145 1.089068651 8.7320805e-05 1.089069366
		 0.00014417619 1.089046836 0.00015019625 1.089047313 8.7618828e-05 1.089025378 0.00014364719
		 1.089026332 8.7112188e-05 1.089068413 2.9146671e-05 1.089047074 2.9087067e-05 1.089025736
		 2.8967857e-05 1.089067221 -8.7141991e-05 1.089067936 -2.8967857e-05 1.089046597 -2.9146671e-05
		 1.089046478 -8.7618828e-05 1.089025378 -2.9206276e-05 1.089025021 -8.72612e-05 1.089068413
		 -0.00014364719 1.089046836 -0.0001502037 1.089024305 -0.00014424324 1.089046836 -5.9604645e-08
		 1.089046597 -2.682209e-07 1.089046836 -3.9488077e-07 1.089046717 2.9802322e-08 1.089046359
		 1.7881393e-07 1.089047313 -1.1362135e-07 1.089046836 1.1920929e-07 1.089046836 4.4703484e-07
		 1.089046955 1.1920929e-07 1.089047313 3.1292439e-07 0.97874939 -0.0083458424 0.81100106
		 0.083746195 0.53551817 -0.37861973 0.61636716 -0.50044966 0.96772087 -0.081051052
		 0.74487412 -0.40430403 1.15117145 0.46087742 1.1868242 0.36228657 1.24826133 0.39254063
		 1.1146214 0.3896203 1.089046836 0 1.089046836 0 1.089046836 0 1.089046836 0 1.30384159
		 0.0006737709 1.30505764 0.0068711042 1.30466521 -0.0076550245 0.79657757 0.024188936
		 1.29583526 -0.055793524;
createNode polyMapSewMove -n "polyMapSewMove11";
	rename -uid "13BB4033-4B79-2EE5-02EC-4392C1B8AAA2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[4]";
createNode polyMapSewMove -n "polyMapSewMove12";
	rename -uid "A63C78E5-4094-92CB-22E5-1290C8992E93";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[4]";
createNode polyMapSewMove -n "polyMapSewMove13";
	rename -uid "716AC61E-4FFC-36CC-8F87-48B4B4111216";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[4]";
createNode polyMapSewMove -n "polyMapSewMove14";
	rename -uid "55591F42-4929-7714-1263-2C8942847C9C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[4]";
createNode polyMapSewMove -n "polyMapSewMove15";
	rename -uid "FF808CDB-48FD-442C-547A-3382E8417038";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[2]";
createNode polyMapSewMove -n "polyMapSewMove16";
	rename -uid "41D66D6B-4A1F-F3F2-A52B-C798A9A656F7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[1]";
createNode polyMapSewMove -n "polyMapSewMove17";
	rename -uid "EACD9986-4C8F-79E0-91C4-42AAFFA2C9A7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[5]";
createNode polyMapSewMove -n "polyMapSewMove18";
	rename -uid "EA82D7B4-47A2-5F98-B885-9C83C867EB7F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0]";
createNode polyMapSewMove -n "polyMapSewMove19";
	rename -uid "319DE855-48B5-A141-5BD1-138C2AA22C86";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[6]";
createNode polyMapSewMove -n "polyMapSewMove20";
	rename -uid "FF480E44-41E6-F924-9D5F-939D9D40ECB7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[6]";
createNode polyMapSewMove -n "polyMapSewMove21";
	rename -uid "6612E084-4E8A-B385-449B-AC9A8FA248C4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[6]";
createNode polyMapSewMove -n "polyMapSewMove22";
	rename -uid "F3147D83-4DCC-3FEF-1440-F9B8F18A89B1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[2]";
createNode polyMapSewMove -n "polyMapSewMove23";
	rename -uid "A9B2A6F7-40EF-3868-6483-71A182A2B169";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[5]";
createNode polyMapSewMove -n "polyMapSewMove24";
	rename -uid "A1DFFD04-4CC5-A50C-A858-1683E79A1D56";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[1]";
createNode polyTweakUV -n "polyTweakUV16";
	rename -uid "2CB2BD0D-43C9-3410-B2AB-EBB7F5FEC237";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk[0:11]" -type "float2" 1.089046836 2.9802322e-08
		 1.089046836 -1.4901161e-07 1.089047074 -5.9604645e-08 1.089046836 -5.9604645e-08
		 1.089046836 0 1.089046717 0 1.089046836 0 1.089046836 0 1.089046597 -1.1920929e-07
		 1.089046836 1.1920929e-07 1.089046955 1.7881393e-07 1.089046955 1.7881393e-07;
createNode polyTweakUV -n "polyTweakUV17";
	rename -uid "AA42C827-47E0-247B-D5A5-34B9189AEBC4";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[0:15]" -type "float2" -0.67774504 -1.11614192 -0.88707167
		 -1.11614203 -0.88707167 -1.32546878 -0.67774504 -1.32546866 1.2015816 1.45925236
		 0.99225515 1.45925212 0.99225521 1.24992549 1.20158195 1.24992585 0.78292847 1.24992561
		 0.78292847 1.040598869 0.99225521 1.040598869 -1.40557718 -0.4141652 -1.61490393
		 -0.4141652 -1.61490417 -0.623492 -1.40557718 -0.623492 0.78292853 1.45925236;
createNode polyTweakUV -n "polyTweakUV18";
	rename -uid "1DBCA94F-4BD5-9DC9-76DA-588C5834DD26";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[0:13]" -type "float2" -0.11735821 -0.77183837 -0.11735821
		 -0.39593297 -0.31984365 -0.39593297 -0.31984353 -0.77183837 -1.6519748 -2.13153076
		 -1.6519748 -1.75562537 -1.85446 -1.75562537 -1.85446 -2.13153076 0.90623438 0.4530552
		 0.90623438 0.8289606 0.53032899 0.82896048 0.53032899 0.45305505 1.10871971 0.45305511
		 1.10871983 0.82896048;
createNode polyTweakUV -n "polyTweakUV19";
	rename -uid "C49AB45E-4161-C961-B992-A2B5B6B41C6A";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk[0:11]" -type "float2" 1.089046836 0 1.089046836
		 2.9802322e-08 1.089046836 0 1.089046836 0 0.20937437 0.47663531 0.20937431 0.47663531
		 0.20937437 0.47663531 0.20937437 0.47663531 1.089047074 1.1920929e-07 1.089047074
		 1.1920929e-07 1.089046955 -1.1920929e-07 1.089046836 -1.1920929e-07;
createNode polyTweakUV -n "polyTweakUV20";
	rename -uid "6A468AA2-494B-D212-1969-52AE1EB6457F";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk[0:11]" -type "float2" 1.089046836 -2.9802322e-08
		 1.089046717 -5.9604645e-08 1.089046836 0 1.089046836 0 -0.35487771 0 -0.35487777
		 0 -0.35487771 0 -0.35487768 0 1.089047074 0 1.089046717 0 1.089046836 0 1.089046955
		 0;
createNode polyTweakUV -n "polyTweakUV21";
	rename -uid "E04E3DE5-423E-AE45-843D-DB8E00892904";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk[0:11]" -type "float2" 0.28864098 -1.77052271 -0.044757307
		 -1.77052271 -0.044757187 -2.1039207 0.2886411 -2.10392118 0.75797963 -0.46741158
		 0.42458129 -0.46741158 0.42458141 -0.8008098 0.75797963 -0.8008098 0.28864074 -2.43731928
		 -0.044757605 -2.43731904 0.62203932 -1.77052259 0.62203944 -2.10392094;
createNode polyTweakUV -n "polyTweakUV22";
	rename -uid "2CCBC5CF-4C2E-1EFF-DBDD-0AB061A636DF";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[0:15]" -type "float2" 1.088852644 -0.00051626487
		 1.089331627 -0.0004384428 1.089469671 -3.2186508e-05 1.089168787 1.8626451e-05 1.089046836
		 -5.9604645e-08 1.089046597 -5.9604645e-08 1.089047074 0 1.089046836 5.9604645e-08
		 1.089046717 0 1.089046836 0 1.089046836 0 1.089046836 0 1.089229345 0.00086212158
		 1.088142395 0.00046509504 1.089313149 -0.00033067167 1.088866949 -2.8252602e-05;
createNode polyTweakUV -n "polyTweakUV23";
	rename -uid "04449FB2-4ADF-CF36-5383-94ADA5E8201E";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk[0:11]" -type "float2" 0.037686586 -0.75758624 0.037686586
		 -0.38168085 -0.1647988 -0.38168085 -0.16479868 -0.75758624 -2.40678406 0.3411805
		 -2.030879021 0.34118342 -2.03088069 0.54366755 -2.40678596 0.54366636 -2.030880451
		 0.91957259 -2.40678596 0.91957259 -1.82839525 0.5436672 -1.82839513 0.91957259;
createNode polyMapSewMove -n "polyMapSewMove25";
	rename -uid "2F9EC0C2-4EF0-DB1D-0677-F8B831DE6560";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[3]";
createNode polyMapSewMove -n "polyMapSewMove26";
	rename -uid "52263FCE-4F2A-C320-D8A2-9F989553D91A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[3]";
createNode polyMapSewMove -n "polyMapSewMove27";
	rename -uid "26081720-4BE1-BE2B-E53E-24B8E10FDE72";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[9]";
createNode polyMapSewMove -n "polyMapSewMove28";
	rename -uid "01D7623F-4AE8-22CB-F64C-C8A3D5E1042E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[3]";
createNode polyMapSewMove -n "polyMapSewMove29";
	rename -uid "1ED450C0-4A7D-8358-F103-41AA5561CBD8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[2]";
createNode polyMapSewMove -n "polyMapSewMove30";
	rename -uid "433464DF-4DC5-D9E3-B668-73BD9BEB8C70";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[6]";
createNode polyMapSewMove -n "polyMapSewMove31";
	rename -uid "8248C995-41BE-3EE5-24E9-05B8201E2D86";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[2]";
createNode polyTweakUV -n "polyTweakUV24";
	rename -uid "04CA3277-44FE-34D4-E616-D18366ED6AD5";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk[0:9]" -type "float2" -1.98336434 -0.14628351 -2.3211813
		 -0.14628342 -2.32118177 -0.48410043 -1.98336434 -0.48410052 -1.64554739 -1.15973425
		 -1.64554763 -0.82191753 -1.98336482 -0.82191753 -1.98336434 -1.15973449 -2.32118177
		 -0.82191736 -1.64554763 -0.48410064;
createNode polyTweakUV -n "polyTweakUV25";
	rename -uid "D901320D-4EE8-C1F2-E86D-539B3A02F0FF";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[0:13]" -type "float2" 1.036579847 0.72479403 0.88670182
		 0.72438931 0.82644796 0.34620553 1.098875403 0.3469412 -1.18733096 -1.76803398 -1.037618279
		 -1.76801133 -0.97586685 -1.39040089 -1.24919653 -1.39044023 -0.97530317 -1.11587048
		 -1.24983454 -1.11590767 1.13092685 0.91459888 0.98885095 0.86686987 1.17865562 0.77252299
		 1.35712123 0.4336963;
createNode polyMapSewMove -n "polyMapSewMove32";
	rename -uid "CAC69ABA-4108-5C26-F791-729E67F6BA89";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[32]";
createNode polyTweakUV -n "polyTweakUV26";
	rename -uid "0FEBB64A-4997-E7CC-E32E-9B9D5D77C874";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk[0:9]" -type "float2" -2.14943933 0.30899236 -2.48725653
		 0.30899248 -2.48725629 -0.028824449 -2.14943933 -0.028824568 -1.47380495 0.30899143
		 -1.81162214 0.30899233 -1.81162262 -0.028824627 -1.47380579 -0.028825462 -2.14943933
		 -0.36664152 -2.48725677 -0.36664146;
createNode polyTweakUV -n "polyTweakUV27";
	rename -uid "0EF51E1D-473E-B61D-3E30-21B840EBCDA7";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk[0:9]" -type "float2" -2.69540858 -0.15417656 -3.033225775
		 -0.15417674 -3.033225536 -0.49199373 -2.69540834 -0.49199349 -2.01977396 -0.15417773
		 -2.35759115 -0.15417638 -2.35759211 -0.49199331 -2.019775391 -0.4919945 -2.69540811
		 -0.8298105 -3.033225298 -0.82981074;
createNode polyTweakUV -n "polyTweakUV28";
	rename -uid "B1EF4DDC-4966-9BFE-64DD-F889B824B65F";
	setAttr ".uopa" yes;
	setAttr -s 61 ".uvtk[0:60]" -type "float2" -2.24228191 0.4555923 -2.24421
		 0.45124966 -2.25183845 0.44530031 -2.23522568 0.45592806 -2.24608827 0.45408243 -2.24729705
		 0.45374095 -2.24724817 0.45628577 -2.2459507 0.45284677 -1.32838619 -0.27093637 -1.41414285
		 -0.23254478 -1.43390048 -0.31469601 -1.37636912 -0.33975828 -1.27421212 -0.19665307
		 -1.39654922 -0.1428479 -0.24963355 -0.88115215 -1.32325554 -0.37898362 -1.033545136
		 0.97666472 -1.034603 0.89611274 -1.0027536154 0.88758987 -1.0033373833 0.97627079
		 -0.97227657 0.89687145 -0.97376144 0.97694832 -1.033244252 1.059028387 -1.0030632019
		 1.059117794 -0.97289312 1.059304237 -1.031749725 1.22379529 -1.032621145 1.14143825
		 -1.0024514198 1.14162481 -1.0021739006 1.22447169 -0.97227037 1.14171314 -0.97196597
		 1.22407579 -1.033229589 1.30387235 -1.002751708 1.31315243 -0.97090268 1.3046273
		 -2.26407242 0.46634203 -2.34696317 0.51170778 -2.32345438 0.40056717 -2.24889255
		 0.49725723 -2.26360345 0.58777052 -2.21601081 0.36680871 -2.22399759 0.51124656 -2.15544605
		 0.55316079 -2.21411824 0.48656198 -2.13254213 0.44257337 -0.15508282 -1.04211688
		 -0.089041293 -1.089300394 -0.064757615 -0.88016623 -0.23771775 -0.74681282 -0.43721372
		 -0.8452366 -0.19127899 -0.92881185 -0.2802828 -1.1709286 -0.27306074 -1.090177774
		 -0.45062709 -1.051769614 -0.37711591 -1.017149687 -1.26700485 -0.38651955 -1.27530622
		 -0.34504277 -1.3015151 -0.39741951 -1.50712442 -0.23099285 -1.49809492 -0.31274676
		 -1.5307045 -0.14426601 -0.37096739 -0.8924073;
createNode polyMapSewMove -n "polyMapSewMove33";
	rename -uid "A97BE379-4822-0A37-01E7-02A52D80B693";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[6]";
createNode polyMapSewMove -n "polyMapSewMove34";
	rename -uid "0CDC1F11-4324-DB5B-0519-E0962002C340";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[5]";
createNode polyMapSewMove -n "polyMapSewMove35";
	rename -uid "AD588722-444A-F264-C621-8FAF7CED22BF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[6]";
createNode polyMapSewMove -n "polyMapSewMove36";
	rename -uid "AA157E03-4BF5-1BA3-C4E7-81A25F8FEC34";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[3]";
createNode polyMapSewMove -n "polyMapSewMove37";
	rename -uid "557F9879-4597-3821-44EE-F187B852543D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[11]";
createNode polyTweakUV -n "polyTweakUV29";
	rename -uid "984FB623-475D-295C-0AA8-F7BAA652DDD4";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[0:13]" -type "float2" -0.027010083 0.37838569 -0.031428754
		 0.37838539 -0.031429052 0.37396699 -0.027010262 0.37396663 0.72241646 -0.6857217
		 0.71799773 -0.68572176 0.71799773 -0.69014043 0.72241646 -0.69014055 0.71357906 -0.69014049
		 0.71357912 -0.69455916 0.71799773 -0.69455916 -0.031429648 0.38280374 -0.027010977
		 0.38280445 0.713579 -0.68572181;
createNode polyTweakUV -n "polyTweakUV30";
	rename -uid "4BEA1BE5-4888-C61B-7EBE-EFAD49E12089";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk[0:9]" -type "float2" 0.55486417 -0.53461516 0.55044556
		 -0.53461552 0.55044568 -0.53699547 0.55486441 -0.53699547 0.55044568 -0.54379451
		 0.55486429 -0.54379439 0.55486429 -0.54141426 0.55044562 -0.54141414 0.55724442 -0.54141426
		 0.55724454 -0.53699559;
createNode polyTweakUV -n "polyTweakUV31";
	rename -uid "CB21805C-4FAB-F686-01DB-DE8861A7AD70";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk[0:9]" -type "float2" -0.19057339 0.53683102 -0.19499207
		 0.53683108 -0.19499224 0.53241241 -0.19057345 0.53241229 -0.18173614 0.53683108 -0.18615472
		 0.5368309 -0.18615472 0.53241223 -0.18173602 0.53241235 -0.19057357 0.52799362 -0.1949923
		 0.52799368;
createNode polyTweakUV -n "polyTweakUV32";
	rename -uid "A51221A3-40EC-4725-2368-0A93DFED2DC8";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk[0:9]" -type "float2" 0.22674608 -0.26086372 0.22232741
		 -0.26086354 0.22232735 -0.26324379 0.22674602 -0.26324385 0.22232747 -0.27004272
		 0.22674614 -0.2700426 0.2267462 -0.26766241 0.22232729 -0.26766253 0.22912621 -0.26766235
		 0.22912621 -0.26324373;
createNode polyMapSewMove -n "polyMapSewMove38";
	rename -uid "D8474331-43F2-0589-227A-70927B271278";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[1]";
createNode polyTweakUV -n "polyTweakUV33";
	rename -uid "79D28189-474B-F5D2-AF59-C29CF77A89F1";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk[0:11]" -type "float2" -0.65892076 -0.055646718
		 -0.66069621 -0.055650771 -0.661412 -0.060130239 -0.65818465 -0.060123682 -0.65008402
		 -0.060037673 -0.6506502 -0.058354914 -0.65512562 -0.05909586 -0.6540966 -0.062153816
		 -0.65715522 -0.06318301 -0.65780228 -0.053398967 -0.65948546 -0.053963482 -0.65723759
		 -0.055082142;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
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
connectAttr "groupId3.id" "pCubeShape1.iog.og[0].gid";
connectAttr "set3.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupId4.id" "pCubeShape1.iog.og[1].gid";
connectAttr "set4.mwc" "pCubeShape1.iog.og[1].gco";
connectAttr "polyTweakUV24.out" "pCubeShape1.i";
connectAttr "polyTweakUV24.uvtk[0]" "pCubeShape1.uvst[0].uvtw";
connectAttr "groupId2.id" "pCubeShape2.iog.og[0].gid";
connectAttr "set2.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupId6.id" "pCubeShape2.iog.og[1].gid";
connectAttr "set6.mwc" "pCubeShape2.iog.og[1].gco";
connectAttr "polyTweakUV27.out" "pCubeShape2.i";
connectAttr "polyTweakUV27.uvtk[0]" "pCubeShape2.uvst[0].uvtw";
connectAttr "groupId21.id" "pCubeShape3.iog.og[0].gid";
connectAttr "set9.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupId22.id" "pCubeShape3.iog.og[1].gid";
connectAttr "set10.mwc" "pCubeShape3.iog.og[1].gco";
connectAttr "polyTweakUV26.out" "pCubeShape3.i";
connectAttr "polyTweakUV26.uvtk[0]" "pCubeShape3.uvst[0].uvtw";
connectAttr "groupId5.id" "pCubeShape4.iog.og[0].gid";
connectAttr "set5.mwc" "pCubeShape4.iog.og[0].gco";
connectAttr "groupId7.id" "pCubeShape4.iog.og[1].gid";
connectAttr "set7.mwc" "pCubeShape4.iog.og[1].gco";
connectAttr "polyTweakUV30.out" "pCubeShape4.i";
connectAttr "polyTweakUV30.uvtk[0]" "pCubeShape4.uvst[0].uvtw";
connectAttr "groupId1.id" "pCubeShape5.iog.og[0].gid";
connectAttr "set1.mwc" "pCubeShape5.iog.og[0].gco";
connectAttr "polyTweakUV29.out" "pCubeShape5.i";
connectAttr "polyTweakUV29.uvtk[0]" "pCubeShape5.uvst[0].uvtw";
connectAttr "groupId16.id" "pCubeShape6.iog.og[0].gid";
connectAttr "set1.mwc" "pCubeShape6.iog.og[0].gco";
connectAttr "polyTweakUV33.out" "pCubeShape6.i";
connectAttr "polyTweakUV33.uvtk[0]" "pCubeShape6.uvst[0].uvtw";
connectAttr "groupId17.id" "pCubeShape7.iog.og[0].gid";
connectAttr "set5.mwc" "pCubeShape7.iog.og[0].gco";
connectAttr "groupId18.id" "pCubeShape7.iog.og[1].gid";
connectAttr "set7.mwc" "pCubeShape7.iog.og[1].gco";
connectAttr "polyTweakUV32.out" "pCubeShape7.i";
connectAttr "polyTweakUV32.uvtk[0]" "pCubeShape7.uvst[0].uvtw";
connectAttr "groupId19.id" "pCubeShape8.iog.og[0].gid";
connectAttr "set2.mwc" "pCubeShape8.iog.og[0].gco";
connectAttr "groupId20.id" "pCubeShape8.iog.og[1].gid";
connectAttr "set6.mwc" "pCubeShape8.iog.og[1].gco";
connectAttr "polyTweakUV31.out" "pCubeShape8.i";
connectAttr "polyTweakUV31.uvtk[0]" "pCubeShape8.uvst[0].uvtw";
connectAttr "groupId13.id" "pTorusShape1.iog.og[0].gid";
connectAttr "set8.mwc" "pTorusShape1.iog.og[0].gco";
connectAttr "polyTweakUV28.out" "pTorusShape1.i";
connectAttr "polyTweakUV28.uvtk[0]" "pTorusShape1.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "groupId1.msg" "set1.gn" -na;
connectAttr "groupId16.msg" "set1.gn" -na;
connectAttr "pCubeShape5.iog.og[0]" "set1.dsm" -na;
connectAttr "pCubeShape6.iog.og[0]" "set1.dsm" -na;
connectAttr "polyCube4.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "deleteComponent1.ig";
connectAttr "groupId2.msg" "set2.gn" -na;
connectAttr "groupId19.msg" "set2.gn" -na;
connectAttr "pCubeShape2.iog.og[0]" "set2.dsm" -na;
connectAttr "pCubeShape8.iog.og[0]" "set2.dsm" -na;
connectAttr "polyCube2.out" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "groupParts2.og" "deleteComponent2.ig";
connectAttr "groupId3.msg" "set3.gn" -na;
connectAttr "pCubeShape1.iog.og[0]" "set3.dsm" -na;
connectAttr "polyCube1.out" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "groupParts3.og" "deleteComponent3.ig";
connectAttr "groupId4.msg" "set4.gn" -na;
connectAttr "pCubeShape1.iog.og[1]" "set4.dsm" -na;
connectAttr "deleteComponent3.og" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "groupParts4.og" "deleteComponent4.ig";
connectAttr "groupId5.msg" "set5.gn" -na;
connectAttr "groupId17.msg" "set5.gn" -na;
connectAttr "pCubeShape4.iog.og[0]" "set5.dsm" -na;
connectAttr "pCubeShape7.iog.og[0]" "set5.dsm" -na;
connectAttr "polyCube3.out" "groupParts5.ig";
connectAttr "groupId5.id" "groupParts5.gi";
connectAttr "groupParts5.og" "deleteComponent5.ig";
connectAttr "groupId6.msg" "set6.gn" -na;
connectAttr "groupId20.msg" "set6.gn" -na;
connectAttr "pCubeShape2.iog.og[1]" "set6.dsm" -na;
connectAttr "pCubeShape8.iog.og[1]" "set6.dsm" -na;
connectAttr "deleteComponent2.og" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "groupParts6.og" "deleteComponent6.ig";
connectAttr "groupId7.msg" "set7.gn" -na;
connectAttr "groupId18.msg" "set7.gn" -na;
connectAttr "pCubeShape4.iog.og[1]" "set7.dsm" -na;
connectAttr "pCubeShape7.iog.og[1]" "set7.dsm" -na;
connectAttr "deleteComponent5.og" "groupParts7.ig";
connectAttr "groupId7.id" "groupParts7.gi";
connectAttr "groupParts7.og" "deleteComponent7.ig";
connectAttr "groupId13.msg" "set8.gn" -na;
connectAttr "pTorusShape1.iog.og[0]" "set8.dsm" -na;
connectAttr "polyTorus1.out" "groupParts8.ig";
connectAttr "groupId13.id" "groupParts8.gi";
connectAttr "groupParts8.og" "polyTweak1.ip";
connectAttr "polyTweak1.out" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "polyDelEdge1.ip";
connectAttr "groupId21.msg" "set9.gn" -na;
connectAttr "pCubeShape3.iog.og[0]" "set9.dsm" -na;
connectAttr "groupId22.msg" "set10.gn" -na;
connectAttr "pCubeShape3.iog.og[1]" "set10.dsm" -na;
connectAttr "deleteComponent1.og" "polyMapDel1.ip";
connectAttr "groupParts9.og" "polyMapDel2.ip";
connectAttr "polySurfaceShape1.o" "groupParts9.ig";
connectAttr "groupId16.id" "groupParts9.gi";
connectAttr "groupParts11.og" "polyMapDel3.ip";
connectAttr "polySurfaceShape2.o" "groupParts10.ig";
connectAttr "groupId17.id" "groupParts10.gi";
connectAttr "groupParts10.og" "groupParts11.ig";
connectAttr "groupId18.id" "groupParts11.gi";
connectAttr "deleteComponent6.og" "polyMapDel4.ip";
connectAttr "deleteComponent4.og" "polyMapDel5.ip";
connectAttr "polyDelEdge1.out" "polyMapDel6.ip";
connectAttr "groupParts13.og" "polyMapDel7.ip";
connectAttr "polySurfaceShape3.o" "groupParts12.ig";
connectAttr "groupId19.id" "groupParts12.gi";
connectAttr "groupParts12.og" "groupParts13.ig";
connectAttr "groupId20.id" "groupParts13.gi";
connectAttr "polyTweak2.out" "polyMapDel8.ip";
connectAttr "deleteComponent7.og" "polyTweak2.ip";
connectAttr "groupParts15.og" "polyMapDel9.ip";
connectAttr "polySurfaceShape4.o" "groupParts14.ig";
connectAttr "groupId21.id" "groupParts14.gi";
connectAttr "groupParts14.og" "groupParts15.ig";
connectAttr "groupId22.id" "groupParts15.gi";
connectAttr "polyMapDel9.out" "polyAutoProj1.ip";
connectAttr "pCubeShape3.wm" "polyAutoProj1.mp";
connectAttr "polyMapDel1.out" "polyAutoProj2.ip";
connectAttr "pCubeShape5.wm" "polyAutoProj2.mp";
connectAttr "polyMapDel8.out" "polyAutoProj3.ip";
connectAttr "pCubeShape4.wm" "polyAutoProj3.mp";
connectAttr "polyMapDel4.out" "polyAutoProj4.ip";
connectAttr "pCubeShape2.wm" "polyAutoProj4.mp";
connectAttr "polyMapDel5.out" "polyAutoProj5.ip";
connectAttr "pCubeShape1.wm" "polyAutoProj5.mp";
connectAttr "polyMapDel6.out" "polyAutoProj6.ip";
connectAttr "pTorusShape1.wm" "polyAutoProj6.mp";
connectAttr "polyMapDel7.out" "polyAutoProj7.ip";
connectAttr "pCubeShape8.wm" "polyAutoProj7.mp";
connectAttr "polyMapDel2.out" "polyAutoProj8.ip";
connectAttr "pCubeShape6.wm" "polyAutoProj8.mp";
connectAttr "polyMapDel3.out" "polyAutoProj9.ip";
connectAttr "pCubeShape7.wm" "polyAutoProj9.mp";
connectAttr "polyAutoProj1.out" "polyTweakUV1.ip";
connectAttr "polyAutoProj2.out" "polyTweakUV2.ip";
connectAttr "polyAutoProj3.out" "polyTweakUV3.ip";
connectAttr "polyAutoProj4.out" "polyTweakUV4.ip";
connectAttr "polyAutoProj5.out" "polyTweakUV5.ip";
connectAttr "polyAutoProj6.out" "polyTweakUV6.ip";
connectAttr "polyAutoProj7.out" "polyTweakUV7.ip";
connectAttr "polyAutoProj8.out" "polyTweakUV8.ip";
connectAttr "polyAutoProj9.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV3.out" "polyMapSewMove1.ip";
connectAttr "polyTweakUV2.out" "polyMapSewMove2.ip";
connectAttr "polyTweakUV5.out" "polyMapSewMove3.ip";
connectAttr "polyMapSewMove2.out" "polyTweakUV10.ip";
connectAttr "polyMapSewMove1.out" "polyTweakUV11.ip";
connectAttr "polyMapSewMove3.out" "polyTweakUV12.ip";
connectAttr "polyTweakUV6.out" "polyMapSewMove4.ip";
connectAttr "polyMapSewMove4.out" "polyMapSewMove5.ip";
connectAttr "polyMapSewMove5.out" "polyMapSewMove6.ip";
connectAttr "polyMapSewMove6.out" "polyTweakUV13.ip";
connectAttr "polyTweakUV13.out" "polyMapSewMove7.ip";
connectAttr "polyMapSewMove7.out" "polyMapSewMove8.ip";
connectAttr "polyMapSewMove8.out" "polyMapSewMove9.ip";
connectAttr "polyMapSewMove9.out" "polyMapSewMove10.ip";
connectAttr "polyMapSewMove10.out" "polyTweakUV14.ip";
connectAttr "polyTweakUV14.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV15.ip";
connectAttr "polyTweakUV7.out" "polyMapSewMove11.ip";
connectAttr "polyTweakUV4.out" "polyMapSewMove12.ip";
connectAttr "polyTweakUV1.out" "polyMapSewMove13.ip";
connectAttr "polyTweakUV10.out" "polyMapSewMove14.ip";
connectAttr "polyTweakUV11.out" "polyMapSewMove15.ip";
connectAttr "polyTweakUV12.out" "polyMapSewMove16.ip";
connectAttr "polyTweakUV8.out" "polyMapSewMove17.ip";
connectAttr "polyMapSewMove17.out" "polyMapSewMove18.ip";
connectAttr "polyMapSewMove11.out" "polyMapSewMove19.ip";
connectAttr "polyMapSewMove12.out" "polyMapSewMove20.ip";
connectAttr "polyMapSewMove13.out" "polyMapSewMove21.ip";
connectAttr "polyTweakUV9.out" "polyMapSewMove22.ip";
connectAttr "polyMapSewMove22.out" "polyMapSewMove23.ip";
connectAttr "polyMapSewMove23.out" "polyMapSewMove24.ip";
connectAttr "polyMapSewMove21.out" "polyTweakUV16.ip";
connectAttr "polyMapSewMove14.out" "polyTweakUV17.ip";
connectAttr "polyMapSewMove15.out" "polyTweakUV18.ip";
connectAttr "polyMapSewMove20.out" "polyTweakUV19.ip";
connectAttr "polyMapSewMove16.out" "polyTweakUV20.ip";
connectAttr "polyMapSewMove19.out" "polyTweakUV21.ip";
connectAttr "polyMapSewMove18.out" "polyTweakUV22.ip";
connectAttr "polyMapSewMove24.out" "polyTweakUV23.ip";
connectAttr "polyTweakUV16.out" "polyMapSewMove25.ip";
connectAttr "polyTweakUV20.out" "polyMapSewMove26.ip";
connectAttr "polyTweakUV19.out" "polyMapSewMove27.ip";
connectAttr "polyMapSewMove27.out" "polyMapSewMove28.ip";
connectAttr "polyTweakUV22.out" "polyMapSewMove29.ip";
connectAttr "polyMapSewMove29.out" "polyMapSewMove30.ip";
connectAttr "polyMapSewMove30.out" "polyMapSewMove31.ip";
connectAttr "polyMapSewMove26.out" "polyTweakUV24.ip";
connectAttr "polyMapSewMove31.out" "polyTweakUV25.ip";
connectAttr "polyTweakUV15.out" "polyMapSewMove32.ip";
connectAttr "polyMapSewMove25.out" "polyTweakUV26.ip";
connectAttr "polyMapSewMove28.out" "polyTweakUV27.ip";
connectAttr "polyMapSewMove32.out" "polyTweakUV28.ip";
connectAttr "polyTweakUV18.out" "polyMapSewMove33.ip";
connectAttr "polyMapSewMove33.out" "polyMapSewMove34.ip";
connectAttr "polyTweakUV23.out" "polyMapSewMove35.ip";
connectAttr "polyTweakUV21.out" "polyMapSewMove36.ip";
connectAttr "polyTweakUV17.out" "polyMapSewMove37.ip";
connectAttr "polyMapSewMove37.out" "polyTweakUV29.ip";
connectAttr "polyMapSewMove34.out" "polyTweakUV30.ip";
connectAttr "polyMapSewMove36.out" "polyTweakUV31.ip";
connectAttr "polyMapSewMove35.out" "polyTweakUV32.ip";
connectAttr "polyTweakUV25.out" "polyMapSewMove38.ip";
connectAttr "polyMapSewMove38.out" "polyTweakUV33.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape1.iog" ":initialShadingGroup.dsm" -na;
// End of Com Thingy.0001.ma
