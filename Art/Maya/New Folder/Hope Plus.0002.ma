//Maya ASCII 2019 scene
//Name: Hope Plus.0002.ma
//Last modified: Thu, Sep 12, 2019 10:49:47 AM
//Codeset: 1252
requires maya "2019";
requires "mtoa" "3.1.2";
requires -nodeType "polyDisc" "modelingToolkit" "0.0.0.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 17134)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "854A1ACF-4A83-5E7D-00BD-4588FF03F2B1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.16822838819452879 1.0980934389469221 6.4023425333801889 ;
	setAttr ".r" -type "double3" -6.3383527289561252 -723.79999999990423 1.4941699870294092e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "BC14FBDE-4257-B9C3-1CD7-A696D4D8E39A";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 7.5446057305958503;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.32872563600540161 0.26517179227004428 -1.0796594619750977 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "30EA4A4D-406C-2FFD-0857-8A9AB90F611D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "A80B973C-42C3-252E-E58C-E8A440AEC832";
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
	rename -uid "CF69DE86-4D9B-6D21-3F83-4EB00355280E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "5A7CEA2D-461C-B988-9776-F6960735E1CE";
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
	rename -uid "42E743C2-49CD-E004-ED87-75B5C6D646B6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "B24CBED5-4CF6-9455-2419-0C92B350C60C";
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
createNode transform -n "pCube3";
	rename -uid "267FAEB2-45E8-79F7-71AF-B7981E8B1161";
	setAttr ".t" -type "double3" 0 0.02384171998629947 0 ;
	setAttr ".rp" -type "double3" 0 0.16452708568427582 0 ;
	setAttr ".sp" -type "double3" 0 0.16452708568427582 0 ;
createNode mesh -n "pCube3Shape" -p "pCube3";
	rename -uid "DE60A9CD-4C39-5981-73F0-36B861F481B9";
	setAttr -k off ".v";
	setAttr -s 12 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.44754746556282043 0.99111014604568481 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[1]" -type "float3" -0.0001029233 0 0 ;
	setAttr ".pt[28]" -type "float3" 0.058117185 0.02169754 0.054100286 ;
	setAttr ".pt[29]" -type "float3" -0.058117185 0.02169754 0.054100286 ;
	setAttr ".pt[30]" -type "float3" 0 -0.059374437 0 ;
	setAttr ".pt[31]" -type "float3" 0 -0.059374437 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube6";
	rename -uid "A359DFC2-44AC-8672-B247-0EB3745FE511";
	setAttr ".t" -type "double3" 0 -0.41386723589672891 0 ;
	setAttr ".rp" -type "double3" -2.2204460492503131e-16 0.57880881040298426 -0.34803975604420179 ;
	setAttr ".sp" -type "double3" -2.2204460492503131e-16 0.57880881040298426 -0.34803975604420179 ;
createNode mesh -n "pCube6Shape" -p "pCube6";
	rename -uid "1015735F-4189-73CF-162F-4EA8F2DDFC83";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000979006290436 0.46773490309715271 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube7";
	rename -uid "0DE2BDF6-48C0-99A1-5C2F-96A20F0E5BD4";
	setAttr ".t" -type "double3" -2.8201883258166527e-05 0.59753725324621665 -0.99592591999206082 ;
	setAttr ".s" -type "double3" 1.3040162532812296 0.22188037533176311 0.33058055651532825 ;
createNode mesh -n "pCubeShape3" -p "pCube7";
	rename -uid "D9736A0D-41E4-3259-8525-96A7C7EEB6C2";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.62499994039535522 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".pt";
	setAttr ".pt[0]" -type "float3" -0.018271314 4.9960036e-16 0.39354521 ;
	setAttr ".pt[1]" -type "float3" 0.011513081 0 0.39354521 ;
	setAttr ".pt[2]" -type "float3" -0.018271314 4.9960036e-16 0 ;
	setAttr ".pt[3]" -type "float3" 0.011513081 0 0 ;
	setAttr ".pt[5]" -type "float3" 0 0 0.39354527 ;
	setAttr ".pt[6]" -type "float3" 0 0 0.39354527 ;
	setAttr ".pt[9]" -type "float3" 0 0 0.39354527 ;
	setAttr ".pt[10]" -type "float3" 0 0 0.39354527 ;
	setAttr ".pt[12]" -type "float3" -0.018271314 -0.76543671 0.28462666 ;
	setAttr ".pt[13]" -type "float3" 0 -0.76543671 0 ;
	setAttr ".pt[14]" -type "float3" 0 0 0.39354521 ;
	setAttr ".pt[15]" -type "float3" -0.018271314 4.4408921e-16 0.39354521 ;
	setAttr ".pt[16]" -type "float3" 0 -0.76543671 0 ;
	setAttr ".pt[17]" -type "float3" 0.011513081 -0.76543671 0.2211584 ;
	setAttr ".pt[18]" -type "float3" 0.011513081 0 0.39354521 ;
	setAttr ".pt[19]" -type "float3" 0 0 0.39354521 ;
	setAttr ".pt[20]" -type "float3" 0 0 0.39354521 ;
	setAttr ".pt[21]" -type "float3" 0 0 0.39354521 ;
	setAttr ".pt[24]" -type "float3" 0 0 0.39354521 ;
	setAttr ".pt[25]" -type "float3" 0 0 0.39354521 ;
	setAttr ".pt[28]" -type "float3" 0 0 -0.24602845 ;
	setAttr ".pt[29]" -type "float3" 0 0 -0.24602845 ;
	setAttr ".pt[30]" -type "float3" 0 0 -0.24602845 ;
	setAttr ".pt[31]" -type "float3" 0 0 -0.24602845 ;
	setAttr ".pt[32]" -type "float3" 0 0 -0.24602845 ;
	setAttr ".pt[33]" -type "float3" 0 0 -0.24602845 ;
	setAttr ".pt[34]" -type "float3" 0.011513081 0 -0.24602845 ;
	setAttr ".pt[35]" -type "float3" -0.018271314 4.9960036e-16 -0.24602845 ;
	setAttr ".pt[36]" -type "float3" 0 -0.76543671 -0.24602845 ;
	setAttr ".pt[37]" -type "float3" -0.018271314 -0.76543671 -0.24602845 ;
	setAttr ".pt[38]" -type "float3" 0.011513081 -0.76543671 -0.24602845 ;
	setAttr ".pt[39]" -type "float3" 0 -0.76543671 -0.24602845 ;
	setAttr ".pt[40]" -type "float3" 0 0 -0.24602845 ;
	setAttr ".pt[41]" -type "float3" 0 0 -0.24602845 ;
	setAttr ".pt[42]" -type "float3" 0 -0.76543671 0 ;
	setAttr ".pt[43]" -type "float3" 0 -0.76543671 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pTorus1";
	rename -uid "975B90A9-43E4-D572-6A0A-5198B47453CC";
	setAttr ".t" -type "double3" 0 0.05247622347814597 -1.0952255312588794 ;
	setAttr ".r" -type "double3" -90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 0.016557283389638348 0.016557283389638348 0.016557283389638348 ;
createNode mesh -n "pTorusShape1" -p "pTorus1";
	rename -uid "2484EC59-491C-0947-D693-4DB0716D6DFD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pSphere1";
	rename -uid "A23603B2-4146-F663-E002-30986E0EF98D";
	setAttr ".t" -type "double3" 0 0.24149639934774636 -0.4852907562836547 ;
	setAttr ".s" -type "double3" 0.38594539973602798 0.3294438464537856 0.69809001143671079 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "68BBCF60-42A6-1438-B644-AFBE3C548872";
	setAttr -k off ".v";
	setAttr -s 14 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.82142868638038635 0.3571428656578064 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "group1";
	rename -uid "0D986ACD-4D5D-1857-6662-EB89480547B2";
createNode transform -n "pCube1" -p "group1";
	rename -uid "2C4B70A6-4C82-2E05-B8FB-FBBE06335AB2";
	setAttr ".t" -type "double3" 0 0.10448828129915838 0 ;
	setAttr ".s" -type "double3" 1.314902524258849 0.11860047661736142 2.1593188662414668 ;
createNode transform -n "transform2" -p "pCube1";
	rename -uid "E0FDBD76-4C0C-D615-C701-29887A37EC90";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform2";
	rename -uid "36BCAB0B-4EE3-4F07-EB15-ACB6E75C9FE5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube2" -p "group1";
	rename -uid "A36961B7-4C24-9827-64C0-5B92F3082332";
	setAttr ".t" -type "double3" 0 0.22456589006939315 0 ;
	setAttr ".r" -type "double3" 0 0 -180 ;
	setAttr ".s" -type "double3" 1.314902524258849 0.11860047661736142 2.1593188662414668 ;
createNode transform -n "transform1" -p "pCube2";
	rename -uid "D5819981-4838-6F05-F424-B1BCCF47AEB8";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform1";
	rename -uid "1E00856E-4060-E102-C770-3F8201046D02";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 6 "e[0]" "e[3:4]" "e[9]" "e[13:14]" "e[27]" "e[29]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 27 ".uvst[0].uvsp[0:26]" -type "float2" 0.4652572 0.016000871
		 0.46598485 0.25461888 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.43867114 1.0004863739
		 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.5 0.5 0.5 0.75 0.68953025 0.25 0.31046981
		 0.25 0.31046981 0 0.375 0.93546981 0.5 0.93546981 0.625 0.93546981 0.68953019 0 0.625
		 0.87565273 0.74934733 0 0.5 0.87565273 0.2506527 0 0.375 0.87565273 0.2506527 0.25
		 0.74934733 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -1.7465074e-09 -0.28709197 0.5 0 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0 0.50000024 -0.5 0 -1.59462106 -0.5
		 0.5 0.5 0.24187921 -0.5 0.5 0.24187921 -0.5 -0.16963449 0.24187922 -2.9802322e-08 -1.29038537 0.24187922
		 0.5 -0.28023264 0.24187922 0.5 -0.38940185 0.0026107579 -2.0190575e-08 -1.59462142 0.0026107579
		 -0.5 -0.5 0.0026107579 -0.5 0.5 0.002610743 0.5 0.5 0.002610743;
	setAttr -s 31 ".ed[0:30]"  2 6 0 4 7 0 0 1 0 1 9 0 1 8 0 2 4 0 3 5 0
		 4 15 0 5 13 0 6 3 0 7 5 0 6 7 1 7 14 1 8 17 0 9 16 0 10 0 0 9 10 1 11 0 1 10 11 1
		 12 0 0 11 12 1 12 8 1 13 12 0 14 11 1 13 14 1 15 10 0 14 15 1 16 2 0 15 16 1 17 3 0
		 17 13 1;
	setAttr -s 14 -ch 54 ".fc[0:13]" -type "polyFaces" 
		f 4 0 11 -2 -6
		mu 0 4 2 11 12 4
		f 3 18 17 -16
		mu 0 3 16 17 6
		f 4 -20 21 -5 -3
		mu 0 4 0 19 13 1
		f 4 15 2 3 16
		mu 0 4 15 0 1 14
		f 4 9 6 -11 -12
		mu 0 4 11 3 5 12
		f 3 -18 20 19
		mu 0 3 6 17 18
		f 4 7 28 27 5
		mu 0 4 9 23 25 10
		f 4 1 12 26 -8
		mu 0 4 4 12 22 24
		f 4 24 -13 10 8
		mu 0 4 20 22 12 5
		f 4 30 -9 -7 -30
		mu 0 4 26 21 7 8
		f 4 -21 -24 -25 22
		mu 0 4 18 17 22 20
		f 4 -27 23 -19 -26
		mu 0 4 24 22 17 16
		f 4 -29 25 -17 14
		mu 0 4 25 23 15 14
		f 4 -22 -23 -31 -14
		mu 0 4 13 19 21 26;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube4" -p "group1";
	rename -uid "7645BACD-4C74-91A0-F544-74B56F4A3465";
	setAttr ".t" -type "double3" 0 0.41428172471870611 -0.34803975604420173 ;
	setAttr ".s" -type "double3" 2.1385358741897433 0.4007013095272966 0.43910901789893758 ;
	setAttr ".rp" -type "double3" 0 0.16452708568427582 0 ;
	setAttr ".sp" -type "double3" 0 0.16452708568427582 0 ;
createNode transform -n "transform3" -p "pCube4";
	rename -uid "EBBBCE7E-43A7-E51F-0C4C-EDAB7724C120";
	setAttr ".v" no;
createNode mesh -n "pCube4Shape" -p "transform3";
	rename -uid "988709C3-4205-8B19-A7A9-D48DE05F6C95";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "e[1]" "e[4]" "e[8]" "e[16]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 8 "e[0]" "e[6:7]" "e[9]" "e[14]" "e[19]" "e[22:23]" "e[26]" "e[28]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4693368524312973 0.50824362225830555 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.4652572 0.016000871
		 0.4658373 0.25740153 0.6249885 0.55338001 0.625 0.75 0.43867114 1.0004863739 0.875
		 0 0.87499917 0.25436369 0.49999741 0.53714031 0.5 0.75 0.68960154 0.24316077 0.5
		 0.93546981 0.625 0.93546981 0.68953019 0 0.625 0.87565273 0.74934733 0 0.5 0.87565273
		 0.74936688 0.24406461 0.37501144 0.55159622 0.50000256 0.53556377 0.5 0.75 0.375
		 0.75 0.375 0.93546981 0.5 0.93546981 0.43867114 1.0004863739 0.4652572 0.016000871
		 0.46584156 0.26135096 0.31046981 0 0.31055334 0.23104201 0.125 0 0.2506527 0 0.25067464
		 0.23932083 0.12501095 0.24871092 0.5 0.87565273 0.375 0.87565273;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 19 ".vt[0:18]"  -2.296487e-09 -0.030554488 1.079659462 0 0.16378853 1.079659462
		 0.65745127 0.16378853 -1.079659462 0.65745127 -0.054119173 -1.079659462 0 0.16378856 -1.079659462
		 0 -0.18394175 -1.079659462 0.65745127 0.16378853 0.52229434 -3.918715e-08 -0.14954557 0.5222944
		 0.65745127 -0.029740974 0.5222944 0.65745127 -0.042688493 0.005637459 -2.6548637e-08 -0.18562812 0.005637459
		 0.65745127 0.16378853 0.0056374269 2.296487e-09 0.33240825 1.079659462 0.65745127 0.37691748 -1.079659462
		 -2.3160867e-17 0.50674009 -1.079659462 0.66065139 0.27012289 0.50995809 0.0032001338 0.41559795 0.50995809
		 2.6548637e-08 0.47112074 0.005637459 0.65745127 0.3353135 0.005637459;
	setAttr -s 32 ".ed[0:31]"  0 1 0 1 6 0 2 3 0 3 9 0 4 2 0 5 3 0 4 5 1
		 5 10 1 6 11 0 7 0 1 8 0 0 7 8 1 8 6 1 9 8 0 10 7 1 9 10 1 11 2 0 11 9 1 13 14 0 12 1 0
		 2 13 0 13 18 0 4 14 1 14 17 1 15 12 0 6 15 1 16 12 1 15 16 1 17 16 1 18 15 0 17 18 1
		 18 11 1;
	setAttr -s 14 -ch 54 ".fc[0:13]" -type "polyFaces" 
		f 4 -11 12 -2 -1
		mu 0 4 0 12 9 1
		f 4 4 2 -6 -7
		mu 0 4 7 2 3 8
		f 3 -10 11 10
		mu 0 3 4 10 11
		f 4 15 -8 5 3
		mu 0 4 13 15 8 3
		f 4 17 -4 -3 -17
		mu 0 4 16 14 5 6
		f 4 -12 -15 -16 13
		mu 0 4 11 10 15 13
		f 4 -13 -14 -18 -9
		mu 0 4 9 12 14 16
		f 4 -5 22 -19 -21
		mu 0 4 17 18 19 20
		f 3 27 26 -25
		mu 0 3 21 22 23
		f 4 24 19 1 25
		mu 0 4 26 24 25 27
		f 4 21 31 16 20
		mu 0 4 28 29 30 31
		f 4 18 23 30 -22
		mu 0 4 20 19 32 33
		f 4 -31 28 -28 -30
		mu 0 4 33 32 22 21
		f 4 -32 29 -26 8
		mu 0 4 30 29 26 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube5" -p "group1";
	rename -uid "85ED15F9-4CB2-11C2-256B-1CA59650545C";
	setAttr ".t" -type "double3" 0 0.41428172471870611 -0.34803975604420173 ;
	setAttr ".r" -type "double3" 0 0 179.99999999999983 ;
	setAttr ".s" -type "double3" 2.1385358741897433 0.4007013095272966 0.43910901789893758 ;
	setAttr ".rp" -type "double3" 0 0.16452708568427582 0 ;
	setAttr ".sp" -type "double3" 0 0.16452708568427582 0 ;
createNode transform -n "transform4" -p "pCube5";
	rename -uid "3751BC76-46EC-BDDB-4547-52A5ED5CEB04";
	setAttr ".v" no;
createNode mesh -n "pCube5Shape" -p "transform4";
	rename -uid "FE1265CA-42F5-E7C1-4364-458F155A316C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "e[1]" "e[4]" "e[8]" "e[16]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 8 "e[0]" "e[6:7]" "e[9]" "e[14]" "e[19]" "e[22:23]" "e[26]" "e[28]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4693368524312973 0.50824362225830555 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.4652572 0.016000871
		 0.4658373 0.25740153 0.6249885 0.55338001 0.625 0.75 0.43867114 1.0004863739 0.875
		 0 0.87499917 0.25436369 0.49999741 0.53714031 0.5 0.75 0.68960154 0.24316077 0.5
		 0.93546981 0.625 0.93546981 0.68953019 0 0.625 0.87565273 0.74934733 0 0.5 0.87565273
		 0.74936688 0.24406461 0.37501144 0.55159622 0.50000256 0.53556377 0.5 0.75 0.375
		 0.75 0.375 0.93546981 0.5 0.93546981 0.43867114 1.0004863739 0.4652572 0.016000871
		 0.46584156 0.26135096 0.31046981 0 0.31055334 0.23104201 0.125 0 0.2506527 0 0.25067464
		 0.23932083 0.12501095 0.24871092 0.5 0.87565273 0.375 0.87565273;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 19 ".vt[0:18]"  -2.296487e-09 -0.030554488 1.079659462 0 0.16378853 1.079659462
		 0.65745127 0.16378853 -1.079659462 0.65745127 -0.054119173 -1.079659462 0 0.16378856 -1.079659462
		 0 -0.18394175 -1.079659462 0.65745127 0.16378853 0.52229434 -3.918715e-08 -0.14954557 0.5222944
		 0.65745127 -0.029740974 0.5222944 0.65745127 -0.042688493 0.005637459 -2.6548637e-08 -0.18562812 0.005637459
		 0.65745127 0.16378853 0.0056374269 2.296487e-09 0.33240825 1.079659462 0.65745127 0.37691748 -1.079659462
		 -2.3160867e-17 0.50674009 -1.079659462 0.66065139 0.27012289 0.50995809 0.0032001338 0.41559795 0.50995809
		 2.6548637e-08 0.47112074 0.005637459 0.65745127 0.3353135 0.005637459;
	setAttr -s 32 ".ed[0:31]"  0 1 0 1 6 0 2 3 0 3 9 0 4 2 0 5 3 0 4 5 0
		 5 10 0 6 11 0 7 0 0 8 0 0 7 8 1 8 6 1 9 8 0 10 7 0 9 10 1 11 2 0 11 9 1 13 14 0 12 1 0
		 2 13 0 13 18 0 4 14 0 14 17 0 15 12 0 6 15 1 16 12 0 15 16 1 17 16 0 18 15 0 17 18 1
		 18 11 1;
	setAttr -s 14 -ch 54 ".fc[0:13]" -type "polyFaces" 
		f 4 -11 12 -2 -1
		mu 0 4 0 12 9 1
		f 4 4 2 -6 -7
		mu 0 4 7 2 3 8
		f 3 -10 11 10
		mu 0 3 4 10 11
		f 4 15 -8 5 3
		mu 0 4 13 15 8 3
		f 4 17 -4 -3 -17
		mu 0 4 16 14 5 6
		f 4 -12 -15 -16 13
		mu 0 4 11 10 15 13
		f 4 -13 -14 -18 -9
		mu 0 4 9 12 14 16
		f 4 -5 22 -19 -21
		mu 0 4 17 18 19 20
		f 3 27 26 -25
		mu 0 3 21 22 23
		f 4 24 19 1 25
		mu 0 4 26 24 25 27
		f 4 21 31 16 20
		mu 0 4 28 29 30 31
		f 4 18 23 30 -22
		mu 0 4 20 19 32 33
		f 4 -31 28 -28 -30
		mu 0 4 33 32 22 21
		f 4 -32 29 -26 8
		mu 0 4 30 29 26 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "CE10CA2D-4085-FE39-CA64-ADA817F049E8";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "EE796589-4B58-08B0-B6F8-5B8D8C0543E1";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "CED16F80-49ED-878B-AA40-85B6CC47561B";
createNode displayLayerManager -n "layerManager";
	rename -uid "513B8EFA-4EE1-62D1-A348-DEA8CAF738E7";
createNode displayLayer -n "defaultLayer";
	rename -uid "9D6C943B-4A6C-389F-834A-85988848B396";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C23408DD-4877-D872-673A-0A859D852A3A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "64D38226-4D7E-821A-5D34-46B8245F73F1";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "FA76D6A9-494C-8A6A-C772-45A42FD90CFE";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "4AAD6014-4C56-A4FB-30D5-E986F5CB71A7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 1.314902524258849 0 0 0 0 0.11860047661736142 0 0 0 0 2.1593188662414668 0
		 0 0.10448828129915838 0 1;
	setAttr ".wt" 0.488655686378479;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "3A66F9F3-431E-F0D4-AA23-359B2858C4F6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[6:7]" "e[10:11]" "e[16]" "e[19]";
	setAttr ".ix" -type "matrix" 1.314902524258849 0 0 0 0 0.11860047661736142 0 0 0 0 2.1593188662414668 0
		 0 0.10448828129915838 0 1;
	setAttr ".wt" 0.25812080502510071;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "289A96DA-41FE-326A-DDCC-51AE9FC5AEE0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[10:11]" "e[16]" "e[20:21]" "e[23]";
	setAttr ".ix" -type "matrix" 1.314902524258849 0 0 0 0 0.11860047661736142 0 0 0 0 2.1593188662414668 0
		 0 0.10448828129915838 0 1;
	setAttr ".wt" 0.67748326063156128;
	setAttr ".dr" no;
	setAttr ".re" 11;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "44440D33-4F68-A2D3-69FD-FEAA0954765E";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[8]" -type "float3" 0 2.3841858e-07 0 ;
	setAttr ".tk[9]" -type "float3" 0 -0.79038489 0 ;
	setAttr ".tk[10]" -type "float3" -2.9802322e-08 -2.3841858e-07 0 ;
	setAttr ".tk[13]" -type "float3" 0 -1.0728836e-06 0 ;
	setAttr ".tk[16]" -type "float3" -2.9802322e-08 -0.79038537 0 ;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "2147712B-4E2E-F762-5E6E-C59A0F90C19C";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[3]" -type "float2" -0.050557274 0.0037551546 ;
	setAttr ".uvtk[18]" -type "float2" -1.2192469e-11 -0.0018537893 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "7DC343F5-4A25-2EA2-2EEF-168C18BD240F";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[11]";
	setAttr ".ix" -type "matrix" 1.314902524258849 0 0 0 0 0.11860047661736142 0 0 0 0 2.1593188662414668 0
		 0 0.10448828129915838 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak2";
	rename -uid "67472C98-468A-57AF-5F2F-D38D92D4141C";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[0]" -type "float3" 0.49198806 0.2197673 0 ;
	setAttr ".tk[1]" -type "float3" -0.49198806 0.2197673 0 ;
	setAttr ".tk[2]" -type "float3" 0.49198806 -1.4901161e-08 0 ;
	setAttr ".tk[3]" -type "float3" -0.5 -1.4901161e-08 0 ;
	setAttr ".tk[9]" -type "float3" 0 -0.3042362 0 ;
	setAttr ".tk[10]" -type "float3" 2.8040182e-08 1.4901161e-08 0 ;
	setAttr ".tk[11]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.33036551 0 ;
	setAttr ".tk[17]" -type "float3" 0 0.21976736 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.11059815 0 ;
	setAttr ".tk[19]" -type "float3" 0 -0.3042362 0 ;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "B01C8FD2-4D38-1D65-50F2-A19816BB6F68";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" 0.064003557 0.0063937851 ;
	setAttr ".uvtk[3]" -type "float2" -0.044255227 0.0018932823 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "445F845B-4740-CE7C-B5B6-D78FB4C4D8DD";
	setAttr ".ics" -type "componentList" 1 "vtx[2:3]";
	setAttr ".ix" -type "matrix" 1.314902524258849 0 0 0 0 0.11860047661736142 0 0 0 0 2.1593188662414668 0
		 0 0.10448828129915838 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak3";
	rename -uid "AA4A45BA-4589-20FF-2E0D-048C4848AB54";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[2:3]" -type "float3"  0.0080119371 0 0 0 0 0;
createNode polySplit -n "polySplit1";
	rename -uid "EEC2011D-4715-7598-685B-07A45F3D9CBC";
	setAttr -s 2 ".e[0:1]"  0 0.20659301;
	setAttr -s 2 ".d[0:1]"  -2147483645 -2147483632;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "A0AB5C23-492B-54BD-A65D-65AFFFB948CE";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[1]" -type "float2" -0.088050582 0.030139478 ;
	setAttr ".uvtk[8]" -type "float2" -0.0004843598 0.0003828886 ;
	setAttr ".uvtk[37]" -type "float2" -0.0026320287 -0.016603814 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "4BF9B1AA-437D-2366-DDDD-14B16887395A";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[22]";
	setAttr ".ix" -type "matrix" 1.314902524258849 0 0 0 0 0.11860047661736142 0 0 0 0 2.1593188662414668 0
		 0 0.10448828129915838 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak4";
	rename -uid "AB4A1C62-4CAC-1816-B9BA-1DBFB3E6C417";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[1]" -type "float3" -0.008011939 -0.0068592727 0 ;
	setAttr ".tk[22]" -type "float3" 1.110223e-16 0.0063151745 0 ;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "81E11CBF-42CF-227F-5BE9-3A8A97333A21";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.082169004 0.02292731 ;
	setAttr ".uvtk[1]" -type "float2" -0.040768929 -0.0053111496 ;
	setAttr ".uvtk[7]" -type "float2" -0.00025533731 0.00039106247 ;
	setAttr ".uvtk[8]" -type "float2" -0.0034634038 0.00032105262 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "E9F3B683-41B1-C3F3-7F0C-6D8B696094B1";
	setAttr ".ics" -type "componentList" 1 "vtx[0:1]";
	setAttr ".ix" -type "matrix" 1.314902524258849 0 0 0 0 0.11860047661736142 0 0 0 0 2.1593188662414668 0
		 0 0.10448828129915838 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak5";
	rename -uid "3282C3E6-45AF-9A28-59EB-AE892818BB01";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[0:1]" -type "float3"  0.0080119353 -0.0068592727
		 0 3.3306691e-16 0 0;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "FFCE44B8-4B10-5806-3052-1892921284FD";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.00023462823 -0.0093417438 ;
	setAttr ".uvtk[6]" -type "float2" 0.0036886942 0.00031862254 ;
	setAttr ".uvtk[7]" -type "float2" -0.003360908 0.00031155199 ;
	setAttr ".uvtk[14]" -type "float2" -0.0010910677 0.00026315264 ;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "E615666C-406D-6BA9-2F60-AD9C0FE51744";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[8]";
	setAttr ".ix" -type "matrix" 1.314902524258849 0 0 0 0 0.11860047661736142 0 0 0 0 2.1593188662414668 0
		 0 0.10448828129915838 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak6";
	rename -uid "4352572C-41EA-FF09-51CF-D799550879F9";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[8]" -type "float3" 1.5633272e-11 0.21290827 0 ;
createNode objectSet -n "set1";
	rename -uid "72C7619F-4167-F6E1-B262-4E8FA921ECD8";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr -s 2 ".gn";
createNode groupId -n "groupId1";
	rename -uid "952FEFD9-41ED-C0A8-4B98-E19D153914C6";
	setAttr ".ihi" 0;
createNode objectSet -n "set2";
	rename -uid "0302828E-48B5-FC3A-865D-45B27890B27B";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr -s 5 ".gn";
createNode groupId -n "groupId2";
	rename -uid "ED4727F6-40A8-C202-5B93-A3A74A60FF41";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "DB5D69C0-41B2-2E70-CC63-F9A67F1DC686";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "e[0]" "e[3:4]" "e[9]" "e[13:18]" "e[31]" "e[33:36]";
createNode deleteComponent -n "deleteComponent1";
	rename -uid "3F9FF170-49B8-4045-5E8E-E8BF75619EBA";
	setAttr ".dc" -type "componentList" 3 "f[0]" "f[7:9]" "f[17:18]";
createNode polyUnite -n "polyUnite1";
	rename -uid "4033F082-49B2-76BB-7766-A3AE96EB7F7D";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId3";
	rename -uid "295BB01B-47B5-302D-D650-0FBC9C5D6B4F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "CE0F688C-4A5A-BA58-7065-BBB357C201CD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode groupId -n "groupId4";
	rename -uid "2FAFE545-449E-B096-B44A-E68B704523DF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "79DBAC2D-4E71-BD63-2243-2198D742108B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "C08A75F0-4498-66D0-AE71-BEAAE0FF5E61";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "48E7AE57-4053-8596-3A05-9CA28D1BCDDE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "A2085666-4AC1-EA56-8535-F0BB4EF72C87";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "e[0]" "e[3:4]" "e[9]" "e[13:14]" "e[27]" "e[29]";
createNode groupId -n "groupId8";
	rename -uid "1553EF25-4715-7F1F-7585-27A7BEE1FBBC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "5FDDBB95-4F5E-C8BB-5B6C-229510519376";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:27]";
createNode groupId -n "groupId9";
	rename -uid "AAEA60F0-4739-29E4-C8A4-78A948C50736";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "C6F753FD-453E-4296-F658-FF9719F31E89";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "e[31]" "e[34:35]" "e[40]" "e[44:45]" "e[58]" "e[60]";
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "85E4DA92-4C2A-FCB1-13C1-9B8A404BA474";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[13]" -type "float2" 7.1312825e-05 -0.0068392307 ;
	setAttr ".uvtk[39]" -type "float2" 8.3546794e-05 -0.018957984 ;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "87A90CAF-4304-F3F5-567C-27A98FA2AC03";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[27]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak7";
	rename -uid "1CCC6B23-4FB0-FF01-CCD3-FABE8601A744";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[27]" -type "float3" 0 -0.0014771223 0 ;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "A5BE2802-4DAC-32A1-2A14-E9A33DB04E90";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[26]" -type "float2" 1.9560232e-05 -0.0059353905 ;
	setAttr ".uvtk[45]" -type "float2" 2.1941945e-05 -0.01067917 ;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "B9420BA2-4F1B-04B2-6FF7-3EB8C4EED376";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak8";
	rename -uid "8425CAD4-445A-7167-BA2B-E4B50A3E0950";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[33]" -type "float3" 0 -0.0014771223 0 ;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "5AFCDEB2-47FA-2843-7FB4-DCB9F3A9DB79";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[3]" -type "float2" -1.152638e-05 0.053379994 ;
	setAttr ".uvtk[8]" -type "float2" -8.4472782e-07 0.004363691 ;
	setAttr ".uvtk[27]" -type "float2" 1.1453404e-05 0.051596221 ;
	setAttr ".uvtk[46]" -type "float2" 1.0948848e-05 -0.0012890827 ;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "CFBFABE9-4BAF-035F-2D38-419227AB5020";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak9";
	rename -uid "6E944F62-408C-E2E6-085F-05BF38A40878";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[20]" -type "float3" 0 -0.0014771223 0 ;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "080C1D38-440B-2A93-DD2B-98BFA1FDD52F";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[11]" -type "float2" -2.5867544e-06 0.037140302 ;
	setAttr ".uvtk[28]" -type "float2" 2.5855895e-06 0.035563793 ;
createNode polyMergeVert -n "polyMergeVert9";
	rename -uid "DCA6746A-442E-E20D-898F-FD9A97B8BB73";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[23]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak10";
	rename -uid "A29B9802-444D-C48F-99C5-DAAED418BC95";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[23]" -type "float3" -7.2621883e-18 -0.0014770627 0 ;
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "5C6120B5-4A8D-BC5C-AA23-E4A0332DE691";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" 1.1023492e-05 0.060583454 ;
	setAttr ".uvtk[10]" -type "float2" 5.3343683e-06 -0.00088238978 ;
	setAttr ".uvtk[40]" -type "float2" -1.1008467e-05 0.059051201 ;
	setAttr ".uvtk[53]" -type "float2" -5.6692743e-06 0.0090847043 ;
createNode polyMergeVert -n "polyMergeVert10";
	rename -uid "53F5C8B4-4677-D46E-B1AE-8888F6B55CAF";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak11";
	rename -uid "F6DEAEDC-4705-5F58-94FD-A481F696AF9A";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[20]" -type "float3" 0 -0.0014771223 0 ;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "AF338A4F-41C6-AE0B-C111-D78BB7102A24";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[25]" -type "float2" 7.5639133e-07 -0.0082517993 ;
	setAttr ".uvtk[50]" -type "float2" -8.150181e-07 0.00053072034 ;
createNode polyMergeVert -n "polyMergeVert11";
	rename -uid "8CC0CF90-4C59-ECAB-FD81-24A13F8C49CB";
	setAttr ".ics" -type "componentList" 2 "vtx[16]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak12";
	rename -uid "61617237-4A91-4C29-6428-999A06D546A6";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[30]" -type "float3" 0 -0.0014771223 0 ;
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "CDFCED62-4EDC-0753-8926-8C8645CE4003";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[14]" -type "float2" 8.0839083e-05 -0.02385327 ;
	setAttr ".uvtk[36]" -type "float2" 7.3142757e-05 -0.0035455204 ;
createNode polyMergeVert -n "polyMergeVert12";
	rename -uid "C93C3298-427D-8452-0476-F1976EDEE13D";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[23]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak13";
	rename -uid "728B9A06-444E-0B61-9830-12A9CD411A66";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[23]" -type "float3" 0 -0.0014771223 0 ;
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "36AF444B-450F-619A-5684-379256ADDB57";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[1]" -type "float2" -0.00014753862 0.0027826477 ;
	setAttr ".uvtk[37]" -type "float2" -0.00014327874 0.006732082 ;
createNode polyMergeVert -n "polyMergeVert13";
	rename -uid "2BB17AD6-4A5E-4B59-7EB4-D9B3C5438299";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak14";
	rename -uid "2708EFBD-40DB-FB3F-5FA8-D1914134902B";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[19]" -type "float3" -7.262185e-18 -0.0014771223 0 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "02110855-41E9-1E7C-BDDC-0692289448C8";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1330\n            -height 807\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
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
	rename -uid "1AFFA95C-42C2-FD7A-8AF5-179B1CB53EB7";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode objectSet -n "set3";
	rename -uid "EF847669-4979-F481-4A8B-D5B8317D2334";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr -s 3 ".gn";
createNode groupId -n "groupId10";
	rename -uid "5BB5F43A-4836-A9F3-9E32-B49C5988ECCE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "94DAF86D-4B4E-F948-CD2D-56A4BEA5F880";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	rename -uid "12864756-4B60-D1B7-D415-9CB9269422E3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "BCC94B68-4E78-A9D2-450F-17A27EF0A0D1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	rename -uid "2A69E753-460E-65FF-A105-2F88118B668C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	rename -uid "DF3D7F96-4F67-8C8F-EA1F-ABB09D6B11CD";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite2";
	rename -uid "CB34B3AC-4B52-3D7F-D6AA-CC9B68178E54";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId16";
	rename -uid "36C595C6-4AFB-9235-D884-D290E414D0F8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "88127A05-4A18-5567-F5DA-2285C29F3091";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 8 "e[1]" "e[4]" "e[8]" "e[16]" "e[33]" "e[36]" "e[40]" "e[48]";
createNode groupId -n "groupId17";
	rename -uid "E49C3FD4-4021-49CC-1539-25B203C14603";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "B489E900-41EA-B306-5909-43B98D631122";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:27]";
createNode groupId -n "groupId18";
	rename -uid "BE1D158A-4C79-FAC3-2DA7-C5BDE013F799";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "04805C1E-4842-9B2E-297F-088E68097119";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 16 "e[0]" "e[6:7]" "e[9]" "e[14]" "e[19]" "e[22:23]" "e[26]" "e[28]" "e[32]" "e[38:39]" "e[41]" "e[46]" "e[51]" "e[54:55]" "e[58]" "e[60]";
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "5B67069D-4A48-3553-D1FB-DEADF7E22724";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.00017974809 0.034711424 ;
	setAttr ".uvtk[4]" -type "float2" -0.0003800173 0.0004368239 ;
	setAttr ".uvtk[57]" -type "float2" 9.6710493e-05 -0.00010173218 ;
	setAttr ".uvtk[59]" -type "float2" 0.00023548129 -0.011766727 ;
createNode polyMergeVert -n "polyMergeVert14";
	rename -uid "67CD2B8C-4457-56B5-2387-5CAC42E3BD55";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[31]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak15";
	rename -uid "66A6CC8E-4FC5-BCEC-D65A-9DB2C532D424";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -0.010899246 0 ;
createNode polyTweakUV -n "polyTweakUV15";
	rename -uid "AE0AA225-44E9-6CD3-2F21-B099D8EFCC19";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[1]" -type "float2" -9.3806681e-05 -0.00099984626 ;
	setAttr ".uvtk[25]" -type "float2" -0.00024506298 0.011913801 ;
	setAttr ".uvtk[37]" -type "float2" -0.00012128802 0.00053024839 ;
	setAttr ".uvtk[60]" -type "float2" -0.00021021313 0.0077699204 ;
createNode polyMergeVert -n "polyMergeVert15";
	rename -uid "209D8062-4D2B-AD6E-7159-B88CB395F77C";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[20]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak16";
	rename -uid "95FFAD7C-4AAB-55EB-6251-46A18A1BA821";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[1]" -type "float3" -9.5622079e-19 0 0 ;
	setAttr ".tk[20]" -type "float3" 0 0.00059193373 0 ;
createNode polyTweakUV -n "polyTweakUV16";
	rename -uid "68E8EC14-45B7-F57D-63BC-489692372469";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[23]" -type "float2" 0.00049053045 -0.00047381697 ;
	setAttr ".uvtk[24]" -type "float2" 0.00021101254 -0.054789271 ;
	setAttr ".uvtk[34]" -type "float2" 0.00010319129 0.00095681747 ;
	setAttr ".uvtk[42]" -type "float2" 9.8572396e-05 -0.00010424312 ;
createNode polyMergeVert -n "polyMergeVert16";
	rename -uid "32C54236-4B1D-C69F-B468-BEB741F9A61E";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak17";
	rename -uid "3A1423BC-4619-4ECF-395C-C0934663B00C";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[12]" -type "float3" 4.4408921e-16 -0.010899246 0 ;
createNode polyTweakUV -n "polyTweakUV17";
	rename -uid "F1AC683D-42C8-91EF-D222-1680FDB0E35F";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[8]" -type "float2" 1.7608542e-06 -8.7697954e-05 ;
	setAttr ".uvtk[53]" -type "float2" -1.859349e-06 0.0050723935 ;
createNode polyMergeVert -n "polyMergeVert17";
	rename -uid "1B82B03E-42CE-D5F9-4F4F-89805EFBA690";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak18";
	rename -uid "AEDF4DBE-48FB-8FA5-6705-4FBB8D9D4B51";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[5]" -type "float3" -4.5116321e-16 -0.0025067329 0 ;
	setAttr ".tk[30]" -type "float3" 4.9530348e-17 0 0 ;
createNode polyTweakUV -n "polyTweakUV18";
	rename -uid "CB068B31-46B3-3948-DB11-569666A914DA";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[15]" -type "float2" 2.1520131e-05 -2.1399061e-05 ;
	setAttr ".uvtk[66]" -type "float2" 6.8160385e-05 0.00078900263 ;
createNode polyMergeVert -n "polyMergeVert18";
	rename -uid "DE347CB6-4C86-188D-D928-129EFCDCF105";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[32]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak19";
	rename -uid "B1A738E3-4F96-7E9C-15C7-5181DEFF2BB8";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[10]" -type "float3" 0 -0.017455161 0 ;
createNode polyTweakUV -n "polyTweakUV19";
	rename -uid "E4AD37EF-4855-E733-ED8C-339F4253F895";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[10]" -type "float2" -0.025964523 -0.0010316758 ;
	setAttr ".uvtk[56]" -type "float2" -0.01266735 -0.00041606638 ;
createNode polyMergeVert -n "polyMergeVert19";
	rename -uid "360B32E4-47D4-8843-F598-B0BA97EBD545";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[31]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak20";
	rename -uid "560D3427-47FF-C670-E335-119497BE9F96";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[7]" -type "float3" 0.0068435175 -0.025244951 -0.0054169893 ;
createNode polyTweakUV -n "polyTweakUV20";
	rename -uid "CC530FD6-432E-0F02-CB53-4A9C6D8831D2";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[19]" -type "float2" -1.8593491e-06 0.0050723869 ;
	setAttr ".uvtk[41]" -type "float2" 1.7608543e-06 -8.7721717e-05 ;
createNode polyMergeVert -n "polyMergeVert20";
	rename -uid "A49CABE0-4976-CC66-9914-7BAD70A3F868";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[22]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak21";
	rename -uid "DFCD9B3F-49B5-4479-5DDB-77BDF01F0ED1";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[14]" -type "float3" 3.9353336e-16 0 0 ;
	setAttr ".tk[22]" -type "float3" 0 0.0025067329 0 ;
createNode polyTweakUV -n "polyTweakUV21";
	rename -uid "9D2871CB-4A8D-642B-70FF-62BFCC9249B3";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[7]" -type "float2" 1.9964214e-06 -0.013919992 ;
	setAttr ".uvtk[18]" -type "float2" -2.1270282e-06 -0.011899028 ;
	setAttr ".uvtk[38]" -type "float2" 2.0251964e-06 -0.012888114 ;
	setAttr ".uvtk[52]" -type "float2" -2.0988812e-06 -0.012956063 ;
createNode polyMergeVert -n "polyMergeVert21";
	rename -uid "B3CEC7AA-4C66-3322-BE60-6A96A2B77D08";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak22";
	rename -uid "E5C305D4-49EE-CFEE-55C1-23B87B467EF7";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[4]" -type "float3" -9.5618108e-19 -0.00059187412 0 ;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "234AC23B-46AC-A9C2-45BA-37A3C28BB1C7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[39]" "e[42]" "e[48]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.02384171998629947 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 1;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyCube -n "polyCube2";
	rename -uid "8D9154DE-4CBF-FC98-454C-D189A8E42716";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "8CDEAE51-40D8-C7FF-3867-5D8E6646F2C0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 1.2444636745460234 0 0 0 0 0.22188037533176311 0 0 0 0 0.33058055651532825 0
		 0 0.97207683856912941 -1.0814413361505142 1;
	setAttr ".wt" 0.13776780664920807;
	setAttr ".re" 3;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "B5615175-480F-121D-56A3-B2A0356682CF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[12:13]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 1.2444636745460234 0 0 0 0 0.22188037533176311 0 0 0 0 0.33058055651532825 0
		 0 0.97207683856912941 -1.0814413361505142 1;
	setAttr ".wt" 0.8414875864982605;
	setAttr ".dr" no;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "CE187C06-45EA-8027-BB4E-239FC4009672";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1.2444636745460234 0 0 0 0 0.22188037533176311 0 0 0 0 0.33058055651532825 0
		 0 0.97207683856912941 -1.0814413361505142 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.53650832 0.86113667 -1.0814413 ;
	setAttr ".rs" 63607;
	setAttr ".lt" -type "double3" 0 2.2204460492503131e-16 0.20726838440394146 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.62223183727301168 0.86113665090324787 -1.2467316144081784 ;
	setAttr ".cbx" -type "double3" -0.45078482492014593 0.86113665090324787 -0.91615105789285001 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "D358D9E0-41F6-EE23-A4B2-11B6C32E093C";
	setAttr ".ics" -type "componentList" 1 "f[10]";
	setAttr ".ix" -type "matrix" 1.2444636745460234 0 0 0 0 0.22188037533176311 0 0 0 0 0.33058055651532825 0
		 0 0.97207683856912941 -1.0814413361505142 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.53718859 0.86113667 -1.0814412 ;
	setAttr ".rs" 37086;
	setAttr ".lt" -type "double3" 0 0 0.21069067680582376 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.45214535772359338 0.86113665090324787 -1.2467314567750851 ;
	setAttr ".cbx" -type "double3" 0.62223183727301168 0.86113665090324787 -0.9161509790763035 ;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "B4F45B38-4A57-07AC-5D9F-54A565B0F45D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[6:7]";
	setAttr ".ix" -type "matrix" 1.2444636745460234 0 0 0 0 0.22188037533176311 0 0 0 0 0.33058055651532825 0
		 0 0.97207683856912941 -1.0814413361505142 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "A23D6FBA-4958-88C4-AC3D-189FCE7C8E4F";
	setAttr ".ics" -type "componentList" 4 "f[8]" "f[12:13]" "f[17]" "f[21]";
	setAttr ".ix" -type "matrix" 1.3040162532812296 0 0 0 0 0.22188037533176311 0 0 0 0 0.33058055651532825 0
		 -2.8201883258166527e-05 0.59753725324621665 -0.99592591999206082 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.00011807737 0.49219188 -1.154199 ;
	setAttr ".rs" 33807;
	setAttr ".lt" -type "double3" 0 -2.4020713017501919e-17 0.19614400686161981 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.65637636083618967 0.27590634236518075 -1.154199062588539 ;
	setAttr ".cbx" -type "double3" 0.65661251557147438 0.70847744091209819 -1.154199062588539 ;
createNode polyTweak -n "polyTweak23";
	rename -uid "92EACC08-4EA8-80A6-8B99-80A43318E99B";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk";
	setAttr ".tk[0]" -type "float3" -0.0033282111 0 -6.9849193e-10 ;
	setAttr ".tk[1]" -type "float3" 0.0035525691 9.4368957e-16 0 ;
	setAttr ".tk[2]" -type "float3" -0.0033282111 5.5511151e-17 0.021225268 ;
	setAttr ".tk[3]" -type "float3" 0.0035525691 9.9920072e-16 0.021225264 ;
	setAttr ".tk[4]" -type "float3" 0 5.5511151e-17 0.021225268 ;
	setAttr ".tk[7]" -type "float3" 0 -5.5511151e-17 0.021225268 ;
	setAttr ".tk[8]" -type "float3" 0 5.5511151e-17 0.021225264 ;
	setAttr ".tk[11]" -type "float3" 0 -5.5511151e-17 0.021225264 ;
	setAttr ".tk[12]" -type "float3" -0.0033282111 0 0.021225268 ;
	setAttr ".tk[13]" -type "float3" 0 0 0.021225268 ;
	setAttr ".tk[15]" -type "float3" -0.0033282111 0 -6.9849193e-10 ;
	setAttr ".tk[16]" -type "float3" 0 0 0.021225264 ;
	setAttr ".tk[17]" -type "float3" 0.0035525691 8.8817842e-16 0.021225264 ;
	setAttr ".tk[18]" -type "float3" 0.0035525691 8.8817842e-16 0 ;
	setAttr ".tk[20]" -type "float3" 0.022468654 -0.11495648 -4.6566129e-10 ;
	setAttr ".tk[21]" -type "float3" 0 -0.1088457 0 ;
	setAttr ".tk[22]" -type "float3" 0.022468654 -0.11495648 0.021225268 ;
	setAttr ".tk[23]" -type "float3" 0 -0.1088457 0.021225268 ;
	setAttr ".tk[24]" -type "float3" 0 -0.1088457 0 ;
	setAttr ".tk[25]" -type "float3" -0.030179424 -0.11495648 4.6566129e-10 ;
	setAttr ".tk[26]" -type "float3" 0 -0.1088457 0.021225264 ;
	setAttr ".tk[27]" -type "float3" -0.030179424 -0.11495648 0.021225264 ;
createNode objectSet -n "set4";
	rename -uid "87B34B76-4E27-7F46-3002-C08979136961";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	rename -uid "B1F6486F-4221-46F2-8C09-4982F949B7C2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "676B3B1F-4D6D-AF05-9CBB-7ABEE40C9563";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "e[26]" "e[51]" "e[70]" "e[72]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "6F1B10F1-4198-F65A-24AA-3DAD86ADACD2";
	setAttr ".dc" -type "componentList" 1 "f[34]";
createNode objectSet -n "set5";
	rename -uid "D429F78F-4F8A-7539-57CB-67A9E5685714";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	rename -uid "80B981AD-4881-8529-CD14-D5B01B775231";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "3D6ABCEE-4F95-C564-06BB-75A3A77A80B4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "e[19]" "e[47]" "e[63:64]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "24E0E76C-48A7-0845-AAF1-D99E597E8CAA";
	setAttr ".dc" -type "componentList" 1 "f[29]";
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "8E9A5C0B-4352-4FF2-7696-359DB4710DC2";
	setAttr ".ics" -type "componentList" 1 "f[25]";
	setAttr ".ix" -type "matrix" 1.3040162532812296 0 0 0 0 0.22188037533176311 0 0 0 0 0.33058055651532825 0
		 -2.8201883258166527e-05 0.59753725324621665 -0.99592591999206082 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.00068465684 0.48659709 -1.2522711 ;
	setAttr ".rs" 40874;
	setAttr ".lt" -type "double3" -1.0842021724855044e-19 0 0.20840440893240136 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.47238485004304342 0.48659710525563793 -1.3503431223175268 ;
	setAttr ".cbx" -type "double3" 0.47375416375754043 0.48659710525563793 -1.1541990034761289 ;
createNode polyTweakUV -n "polyTweakUV22";
	rename -uid "3117D879-43EE-AE5A-9415-169FD10E5956";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[44]" -type "float2" -4.314469e-05 -7.7715612e-16 ;
	setAttr ".uvtk[53]" -type "float2" 5.7421585e-06 1.6653345e-15 ;
createNode polyMergeVert -n "polyMergeVert22";
	rename -uid "A3B8E90D-4EAB-ACCA-B2FE-9187E361135A";
	setAttr ".ics" -type "componentList" 2 "vtx[36]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1.3040162532812296 0 0 0 0 0.22188037533176311 0 0 0 0 0.33058055651532825 0
		 -2.8201883258166527e-05 0.59753725324621665 -0.99592591999206082 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak24";
	rename -uid "82B24121-4F56-7F4D-E7C9-BAAC3F3DED99";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[4]" -type "float3" 0 -5.9604645e-08 0 ;
	setAttr ".tk[8]" -type "float3" 0 -5.9604645e-08 0 ;
	setAttr ".tk[29]" -type "float3" 0 -5.9604645e-08 0 ;
	setAttr ".tk[31]" -type "float3" 0 -5.9604645e-08 0 ;
	setAttr ".tk[36]" -type "float3" 0 -0.005120039 0 ;
	setAttr ".tk[42]" -type "float3" 0 1.7881393e-07 0 ;
	setAttr ".tk[43]" -type "float3" 0 1.7881393e-07 0 ;
	setAttr ".tk[44]" -type "float3" 0 1.7881393e-07 0 ;
	setAttr ".tk[45]" -type "float3" 0 1.7881393e-07 0 ;
	setAttr ".tk[46]" -type "float3" 0 1.7881393e-07 0 ;
	setAttr ".tk[47]" -type "float3" 0 1.7881393e-07 0 ;
	setAttr ".tk[48]" -type "float3" 0 1.7881393e-07 0 ;
	setAttr ".tk[49]" -type "float3" 0 1.7881393e-07 0 ;
createNode polyTweakUV -n "polyTweakUV23";
	rename -uid "584323E0-4B1D-9197-C3F8-7B82053CAD05";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[48]" -type "float2" 4.3331216e-05 -2.6645353e-15 ;
	setAttr ".uvtk[54]" -type "float2" -4.7904969e-06 1.7763568e-15 ;
createNode polyMergeVert -n "polyMergeVert23";
	rename -uid "FE84B335-4637-F813-89D1-52A83B2C6463";
	setAttr ".ics" -type "componentList" 2 "vtx[39]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1.3040162532812296 0 0 0 0 0.22188037533176311 0 0 0 0 0.33058055651532825 0
		 -2.8201883258166527e-05 0.59753725324621665 -0.99592591999206082 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak25";
	rename -uid "97CB8075-465B-7B41-05C2-F195FA6F717D";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[44]" -type "float3" 0 -0.010304689 0 ;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "16183A54-48AE-EDB9-5DB8-A2B324458308";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[8]" "e[12:13]" "e[17]" "e[25]" "e[29]" "e[31]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.41386723589672891 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak26";
	rename -uid "046B4DC7-494E-B522-F7E5-4288D7D58DC8";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -0.026205931 -0.044826403 ;
	setAttr ".tk[5]" -type "float3" 0 -1.8626451e-09 0 ;
	setAttr ".tk[8]" -type "float3" 0 -0.026205929 -0.044826403 ;
	setAttr ".tk[13]" -type "float3" 0 0.018644143 0 ;
	setAttr ".tk[14]" -type "float3" 0 0.018644143 0 ;
	setAttr ".tk[17]" -type "float3" 0 -0.03960618 0 ;
	setAttr ".tk[18]" -type "float3" 0 -0.03960618 0 ;
	setAttr ".tk[20]" -type "float3" 0 0.018644143 0 ;
	setAttr ".tk[27]" -type "float3" 0 -1.8626451e-09 0 ;
	setAttr ".tk[28]" -type "float3" 0 -0.026205931 -0.044826403 ;
createNode polySoftEdge -n "polySoftEdge2";
	rename -uid "903A9C78-4217-B5CE-15E0-AA96C2AB633C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[8]" "e[12:13]" "e[17]" "e[25]" "e[29]" "e[31]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.41386723589672891 0 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge3";
	rename -uid "367A15E5-460B-76A0-6A94-36861DFD1C75";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[38]" "e[42:43]" "e[47]" "e[52]" "e[54]" "e[56]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.41386723589672891 0 1;
	setAttr ".a" 0;
createNode polyDisc -n "polyDisc2";
	rename -uid "740A7749-446F-69D7-4970-96B69A7DAF4B";
createNode polyTorus -n "polyTorus1";
	rename -uid "1603359F-43C4-30C4-8058-5FAB4ED3BB2F";
	setAttr ".sa" 6;
createNode polySphere -n "polySphere1";
	rename -uid "E0CB4BF4-4E78-1EC0-19F4-07BB47E209E0";
	setAttr ".sa" 14;
	setAttr ".sh" 14;
createNode objectSet -n "set6";
	rename -uid "E25F5CC0-4007-25C3-A99D-DB8B8F152D02";
	setAttr ".ihi" 0;
createNode groupId -n "groupId21";
	rename -uid "C6065236-4847-7317-99F3-8E91CE4A1672";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "8797A1F3-4530-6C4B-4920-029748946291";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "e[1:6]" "e[12:20]" "e[22:54]" "e[100:106]" "e[111:142]" "e[188:189]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "345CA818-4B92-B933-E632-AC99DB54D424";
	setAttr ".dc" -type "componentList" 5 "f[1:6]" "f[12:20]" "f[22:28]" "f[30:43]" "f[89]";
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "50F9A750-43E0-C443-BB9B-429539FE8FE5";
	setAttr ".ics" -type "componentList" 5 "e[0:5]" "e[7:29]" "e[74:79]" "e[81:84]" "e[130:131]";
	setAttr ".cv" yes;
createNode objectSet -n "set7";
	rename -uid "8A3770A9-47EC-96B1-C9D3-8CBA771A1FC4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	rename -uid "661ADAC3-41A0-1415-31EB-458BFF885B8A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "1EBA89D5-49F2-C216-F5D5-15A1F2AF7AFB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "e[0:8]" "e[10]" "e[67:70]" "e[117:125]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "195E03BF-4A97-9703-2C1F-6CBD18320EB2";
	setAttr ".dc" -type "componentList" 2 "f[0:3]" "f[49:54]";
createNode objectSet -n "set8";
	rename -uid "BED6BD9E-45E7-90AF-3F18-138FA006D6EE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId23";
	rename -uid "DEB1BD4C-445D-1231-3E5B-26A585DADB55";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "2FE6C826-4AE4-710C-EAAC-E18F61FE9838";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "e[0:1]" "e[57:58]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "50ED4FC1-431D-FBDA-5D67-05AA08B70CB6";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode polySplit -n "polySplit2";
	rename -uid "BDC64176-4414-9CD1-1054-37A0361BBE52";
	setAttr -s 3 ".e[0:2]"  1 0.45788601 1;
	setAttr -s 3 ".d[0:2]"  -2147483422 -2147483408 -2147483421;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode objectSet -n "set9";
	rename -uid "485629C7-4C5C-3CF4-B002-27B2BEFCF616";
	setAttr ".ihi" 0;
createNode groupId -n "groupId24";
	rename -uid "6E649894-4297-0E75-F50C-3E841C28C89C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "B06D2279-44B1-D1E0-B455-E2B4C88F07C2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "e[8]" "e[10]" "e[140:141]";
createNode deleteComponent -n "deleteComponent7";
	rename -uid "2F01BD96-4173-0523-78B4-A49004EBA521";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode objectSet -n "set10";
	rename -uid "583F77E9-4B06-43FF-D1A7-AAAAE53B7B21";
	setAttr ".ihi" 0;
createNode groupId -n "groupId25";
	rename -uid "7BF670E2-4B23-E449-CE7B-9F8C77683B5A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "95A90357-4AA8-B7A4-4B42-5585DE57028D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "e[0:8]" "e[136:137]" "e[252:262]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "2197D9B8-4A12-6137-0560-AAA3F87C284E";
	setAttr ".dc" -type "componentList" 2 "f[0]" "f[107:114]";
createNode objectSet -n "set11";
	rename -uid "8D816D49-4BD3-BCC0-D74E-CAA81E5196BA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId26";
	rename -uid "8E133C63-4532-14A0-AEEA-C584B428AF3B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "1A76AB26-4287-93E6-9E1F-73B72FB2EB7D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "e[0:7]" "e[9:37]" "e[39:50]" "e[53:56]" "e[127:165]" "e[170:174]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "B8D70CFF-4515-CFD2-CEBF-5B97B5E7D6C3";
	setAttr ".dc" -type "componentList" 4 "f[0:7]" "f[9:23]" "f[25:36]" "f[38:41]";
createNode objectSet -n "set12";
	rename -uid "FAD4A8B2-4779-9F9E-4A86-8796F590E6E1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	rename -uid "13B41D56-4032-7D7B-399B-899905D44663";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	rename -uid "C66E060B-4C1B-3591-D723-CAB2823D7DBE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "e[0:3]" "e[84:87]";
createNode deleteComponent -n "deleteComponent10";
	rename -uid "B8179B65-4AA8-49FA-CF5A-E18ECB4E50F4";
	setAttr ".dc" -type "componentList" 1 "f[0:1]";
createNode objectSet -n "set13";
	rename -uid "832C42A8-4400-1F03-8E2B-0C9153869280";
	setAttr ".ihi" 0;
createNode groupId -n "groupId28";
	rename -uid "E3B44B18-4BF3-6492-D502-8A80EA045408";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	rename -uid "6CB3FF8D-46D8-EFC7-30AB-1AAA17BD87A2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "e[9]" "e[31:32]" "e[36]" "e[46]";
createNode polyTweak -n "polyTweak27";
	rename -uid "247A8F04-43D1-CFD6-5E1C-B682303C0D55";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[3]" -type "float3" 0 1.8626451e-09 0 ;
	setAttr ".tk[17]" -type "float3" 0 1.8626451e-09 0 ;
	setAttr ".tk[24]" -type "float3" 0.28812802 -0.12575138 0 ;
	setAttr ".tk[26]" -type "float3" -0.25534862 -0.12575138 0 ;
	setAttr ".tk[27]" -type "float3" -0.25534862 -0.099138737 0 ;
	setAttr ".tk[28]" -type "float3" 0.28812802 -0.099138737 0 ;
	setAttr ".tk[31]" -type "float3" 0 0.026612625 0 ;
	setAttr ".tk[32]" -type "float3" 0 0.026612625 0 ;
createNode deleteComponent -n "deleteComponent11";
	rename -uid "51882177-4AF4-318D-18FA-2399CF7AF0C8";
	setAttr ".dc" -type "componentList" 1 "f[14]";
createNode objectSet -n "set14";
	rename -uid "B3AE3A18-4073-9807-739A-C0A735384529";
	setAttr ".ihi" 0;
createNode groupId -n "groupId29";
	rename -uid "27581DE3-42D1-9715-E274-C8A0627507E0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	rename -uid "1B08060C-4B42-D07E-96F2-A2B773D871A9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "e[46:47]" "e[50]";
createNode deleteComponent -n "deleteComponent12";
	rename -uid "6288F127-40EA-9441-14AF-19BD1007B8B9";
	setAttr ".dc" -type "componentList" 1 "f[30]";
createNode objectSet -n "set15";
	rename -uid "F1D4E628-4B35-72E6-943C-91888AAB5AA7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId30";
	rename -uid "6293540A-4247-C684-EF5B-88A17D997FC2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	rename -uid "FE31C700-4E3C-8918-06E8-9B9FBC2A0413";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "e[0]" "e[33]" "e[36]" "e[45:46]";
createNode deleteComponent -n "deleteComponent13";
	rename -uid "6ED0F3CD-4F0A-593B-5C8C-DAB0FB2B2A88";
	setAttr ".dc" -type "componentList" 1 "f[15]";
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
	setAttr -s 11 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 8 ".gn";
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
connectAttr "deleteComponent13.og" "pCube3Shape.i";
connectAttr "groupId7.id" "pCube3Shape.iog.og[0].gid";
connectAttr "set2.mwc" "pCube3Shape.iog.og[0].gco";
connectAttr "groupId8.id" "pCube3Shape.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pCube3Shape.iog.og[1].gco";
connectAttr "groupId9.id" "pCube3Shape.iog.og[2].gid";
connectAttr "set1.mwc" "pCube3Shape.iog.og[2].gco";
connectAttr "groupId28.id" "pCube3Shape.iog.og[3].gid";
connectAttr "set13.mwc" "pCube3Shape.iog.og[3].gco";
connectAttr "groupId29.id" "pCube3Shape.iog.og[4].gid";
connectAttr "set14.mwc" "pCube3Shape.iog.og[4].gco";
connectAttr "groupId30.id" "pCube3Shape.iog.og[5].gid";
connectAttr "set15.mwc" "pCube3Shape.iog.og[5].gco";
connectAttr "polyTweakUV13.uvtk[0]" "pCube3Shape.uvst[0].uvtw";
connectAttr "polySoftEdge3.out" "pCube6Shape.i";
connectAttr "groupId16.id" "pCube6Shape.iog.og[0].gid";
connectAttr "set2.mwc" "pCube6Shape.iog.og[0].gco";
connectAttr "groupId17.id" "pCube6Shape.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pCube6Shape.iog.og[1].gco";
connectAttr "groupId18.id" "pCube6Shape.iog.og[2].gid";
connectAttr "set3.mwc" "pCube6Shape.iog.og[2].gco";
connectAttr "polyTweakUV21.uvtk[0]" "pCube6Shape.uvst[0].uvtw";
connectAttr "groupId19.id" "pCubeShape3.iog.og[0].gid";
connectAttr "set4.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupId20.id" "pCubeShape3.iog.og[1].gid";
connectAttr "set5.mwc" "pCubeShape3.iog.og[1].gco";
connectAttr "polyMergeVert23.out" "pCubeShape3.i";
connectAttr "polyTweakUV23.uvtk[0]" "pCubeShape3.uvst[0].uvtw";
connectAttr "polyTorus1.out" "pTorusShape1.i";
connectAttr "groupId21.id" "pSphereShape1.iog.og[1].gid";
connectAttr "set6.mwc" "pSphereShape1.iog.og[1].gco";
connectAttr "groupId22.id" "pSphereShape1.iog.og[2].gid";
connectAttr "set7.mwc" "pSphereShape1.iog.og[2].gco";
connectAttr "groupId23.id" "pSphereShape1.iog.og[3].gid";
connectAttr "set8.mwc" "pSphereShape1.iog.og[3].gco";
connectAttr "groupId24.id" "pSphereShape1.iog.og[4].gid";
connectAttr "set9.mwc" "pSphereShape1.iog.og[4].gco";
connectAttr "groupId25.id" "pSphereShape1.iog.og[5].gid";
connectAttr "set10.mwc" "pSphereShape1.iog.og[5].gco";
connectAttr "groupId26.id" "pSphereShape1.iog.og[6].gid";
connectAttr "set11.mwc" "pSphereShape1.iog.og[6].gco";
connectAttr "groupId27.id" "pSphereShape1.iog.og[7].gid";
connectAttr "set12.mwc" "pSphereShape1.iog.og[7].gco";
connectAttr "deleteComponent10.og" "pSphereShape1.i";
connectAttr "groupId2.id" "pCubeShape1.iog.og[1].gid";
connectAttr "set2.mwc" "pCubeShape1.iog.og[1].gco";
connectAttr "groupId3.id" "pCubeShape1.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[2].gco";
connectAttr "groupParts2.og" "pCubeShape1.i";
connectAttr "polyTweakUV5.uvtk[0]" "pCubeShape1.uvst[0].uvtw";
connectAttr "groupId4.id" "pCubeShape1.ciog.cog[1].cgid";
connectAttr "groupId1.id" "pCubeShape2.iog.og[1].gid";
connectAttr "set1.mwc" "pCubeShape2.iog.og[1].gco";
connectAttr "groupId5.id" "pCubeShape2.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[2].gco";
connectAttr "groupId6.id" "pCubeShape2.ciog.cog[1].cgid";
connectAttr "groupId10.id" "pCube4Shape.iog.og[0].gid";
connectAttr "set2.mwc" "pCube4Shape.iog.og[0].gco";
connectAttr "groupId11.id" "pCube4Shape.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pCube4Shape.iog.og[1].gco";
connectAttr "groupId12.id" "pCube4Shape.iog.og[3].gid";
connectAttr "set3.mwc" "pCube4Shape.iog.og[3].gco";
connectAttr "groupId13.id" "pCube5Shape.iog.og[0].gid";
connectAttr "set2.mwc" "pCube5Shape.iog.og[0].gco";
connectAttr "groupId14.id" "pCube5Shape.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pCube5Shape.iog.og[1].gco";
connectAttr "groupId15.id" "pCube5Shape.iog.og[3].gid";
connectAttr "set3.mwc" "pCube5Shape.iog.og[3].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polyTweak1.out" "polySplitRing3.ip";
connectAttr "pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polySplitRing2.out" "polyTweak1.ip";
connectAttr "polySplitRing3.out" "polyTweakUV1.ip";
connectAttr "polyTweak2.out" "polyMergeVert1.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert1.mp";
connectAttr "polyTweakUV1.out" "polyTweak2.ip";
connectAttr "polyMergeVert1.out" "polyTweakUV2.ip";
connectAttr "polyTweak3.out" "polyMergeVert2.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert2.mp";
connectAttr "polyTweakUV2.out" "polyTweak3.ip";
connectAttr "polyMergeVert2.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polyTweakUV3.ip";
connectAttr "polyTweak4.out" "polyMergeVert3.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert3.mp";
connectAttr "polyTweakUV3.out" "polyTweak4.ip";
connectAttr "polyMergeVert3.out" "polyTweakUV4.ip";
connectAttr "polyTweak5.out" "polyMergeVert4.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert4.mp";
connectAttr "polyTweakUV4.out" "polyTweak5.ip";
connectAttr "polyMergeVert4.out" "polyTweakUV5.ip";
connectAttr "polyTweak6.out" "polyMergeVert5.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert5.mp";
connectAttr "polyTweakUV5.out" "polyTweak6.ip";
connectAttr "groupId1.msg" "set1.gn" -na;
connectAttr "groupId9.msg" "set1.gn" -na;
connectAttr "pCubeShape2.iog.og[1]" "set1.dsm" -na;
connectAttr "pCube3Shape.iog.og[2]" "set1.dsm" -na;
connectAttr "groupId2.msg" "set2.gn" -na;
connectAttr "groupId7.msg" "set2.gn" -na;
connectAttr "groupId10.msg" "set2.gn" -na;
connectAttr "groupId13.msg" "set2.gn" -na;
connectAttr "groupId16.msg" "set2.gn" -na;
connectAttr "pCubeShape1.iog.og[1]" "set2.dsm" -na;
connectAttr "pCube3Shape.iog.og[0]" "set2.dsm" -na;
connectAttr "pCube4Shape.iog.og[0]" "set2.dsm" -na;
connectAttr "pCube5Shape.iog.og[0]" "set2.dsm" -na;
connectAttr "pCube6Shape.iog.og[0]" "set2.dsm" -na;
connectAttr "polyMergeVert5.out" "groupParts1.ig";
connectAttr "groupId2.id" "groupParts1.gi";
connectAttr "groupParts1.og" "deleteComponent1.ig";
connectAttr "pCubeShape1.o" "polyUnite1.ip[0]";
connectAttr "pCubeShape2.o" "polyUnite1.ip[1]";
connectAttr "pCubeShape1.wm" "polyUnite1.im[0]";
connectAttr "pCubeShape2.wm" "polyUnite1.im[1]";
connectAttr "deleteComponent1.og" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyUnite1.out" "groupParts3.ig";
connectAttr "groupId7.id" "groupParts3.gi";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId8.id" "groupParts4.gi";
connectAttr "groupParts4.og" "groupParts5.ig";
connectAttr "groupId9.id" "groupParts5.gi";
connectAttr "groupParts5.og" "polyTweakUV6.ip";
connectAttr "polyTweak7.out" "polyMergeVert6.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert6.mp";
connectAttr "polyTweakUV6.out" "polyTweak7.ip";
connectAttr "polyMergeVert6.out" "polyTweakUV7.ip";
connectAttr "polyTweak8.out" "polyMergeVert7.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert7.mp";
connectAttr "polyTweakUV7.out" "polyTweak8.ip";
connectAttr "polyMergeVert7.out" "polyTweakUV8.ip";
connectAttr "polyTweak9.out" "polyMergeVert8.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert8.mp";
connectAttr "polyTweakUV8.out" "polyTweak9.ip";
connectAttr "polyMergeVert8.out" "polyTweakUV9.ip";
connectAttr "polyTweak10.out" "polyMergeVert9.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert9.mp";
connectAttr "polyTweakUV9.out" "polyTweak10.ip";
connectAttr "polyMergeVert9.out" "polyTweakUV10.ip";
connectAttr "polyTweak11.out" "polyMergeVert10.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert10.mp";
connectAttr "polyTweakUV10.out" "polyTweak11.ip";
connectAttr "polyMergeVert10.out" "polyTweakUV11.ip";
connectAttr "polyTweak12.out" "polyMergeVert11.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert11.mp";
connectAttr "polyTweakUV11.out" "polyTweak12.ip";
connectAttr "polyMergeVert11.out" "polyTweakUV12.ip";
connectAttr "polyTweak13.out" "polyMergeVert12.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert12.mp";
connectAttr "polyTweakUV12.out" "polyTweak13.ip";
connectAttr "polyMergeVert12.out" "polyTweakUV13.ip";
connectAttr "polyTweak14.out" "polyMergeVert13.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert13.mp";
connectAttr "polyTweakUV13.out" "polyTweak14.ip";
connectAttr "groupId12.msg" "set3.gn" -na;
connectAttr "groupId15.msg" "set3.gn" -na;
connectAttr "groupId18.msg" "set3.gn" -na;
connectAttr "pCube4Shape.iog.og[3]" "set3.dsm" -na;
connectAttr "pCube5Shape.iog.og[3]" "set3.dsm" -na;
connectAttr "pCube6Shape.iog.og[2]" "set3.dsm" -na;
connectAttr "pCube5Shape.o" "polyUnite2.ip[0]";
connectAttr "pCube4Shape.o" "polyUnite2.ip[1]";
connectAttr "pCube5Shape.wm" "polyUnite2.im[0]";
connectAttr "pCube4Shape.wm" "polyUnite2.im[1]";
connectAttr "polyUnite2.out" "groupParts6.ig";
connectAttr "groupId16.id" "groupParts6.gi";
connectAttr "groupParts6.og" "groupParts7.ig";
connectAttr "groupId17.id" "groupParts7.gi";
connectAttr "groupParts7.og" "groupParts8.ig";
connectAttr "groupId18.id" "groupParts8.gi";
connectAttr "groupParts8.og" "polyTweakUV14.ip";
connectAttr "polyTweak15.out" "polyMergeVert14.ip";
connectAttr "pCube6Shape.wm" "polyMergeVert14.mp";
connectAttr "polyTweakUV14.out" "polyTweak15.ip";
connectAttr "polyMergeVert14.out" "polyTweakUV15.ip";
connectAttr "polyTweak16.out" "polyMergeVert15.ip";
connectAttr "pCube6Shape.wm" "polyMergeVert15.mp";
connectAttr "polyTweakUV15.out" "polyTweak16.ip";
connectAttr "polyMergeVert15.out" "polyTweakUV16.ip";
connectAttr "polyTweak17.out" "polyMergeVert16.ip";
connectAttr "pCube6Shape.wm" "polyMergeVert16.mp";
connectAttr "polyTweakUV16.out" "polyTweak17.ip";
connectAttr "polyMergeVert16.out" "polyTweakUV17.ip";
connectAttr "polyTweak18.out" "polyMergeVert17.ip";
connectAttr "pCube6Shape.wm" "polyMergeVert17.mp";
connectAttr "polyTweakUV17.out" "polyTweak18.ip";
connectAttr "polyMergeVert17.out" "polyTweakUV18.ip";
connectAttr "polyTweak19.out" "polyMergeVert18.ip";
connectAttr "pCube6Shape.wm" "polyMergeVert18.mp";
connectAttr "polyTweakUV18.out" "polyTweak19.ip";
connectAttr "polyMergeVert18.out" "polyTweakUV19.ip";
connectAttr "polyTweak20.out" "polyMergeVert19.ip";
connectAttr "pCube6Shape.wm" "polyMergeVert19.mp";
connectAttr "polyTweakUV19.out" "polyTweak20.ip";
connectAttr "polyMergeVert19.out" "polyTweakUV20.ip";
connectAttr "polyTweak21.out" "polyMergeVert20.ip";
connectAttr "pCube6Shape.wm" "polyMergeVert20.mp";
connectAttr "polyTweakUV20.out" "polyTweak21.ip";
connectAttr "polyMergeVert20.out" "polyTweakUV21.ip";
connectAttr "polyTweak22.out" "polyMergeVert21.ip";
connectAttr "pCube6Shape.wm" "polyMergeVert21.mp";
connectAttr "polyTweakUV21.out" "polyTweak22.ip";
connectAttr "polyMergeVert13.out" "polyBevel1.ip";
connectAttr "pCube3Shape.wm" "polyBevel1.mp";
connectAttr "polyCube2.out" "polySplitRing4.ip";
connectAttr "pCubeShape3.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCubeShape3.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyBevel2.ip";
connectAttr "pCubeShape3.wm" "polyBevel2.mp";
connectAttr "polyTweak23.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace3.mp";
connectAttr "polyBevel2.out" "polyTweak23.ip";
connectAttr "groupId19.msg" "set4.gn" -na;
connectAttr "pCubeShape3.iog.og[0]" "set4.dsm" -na;
connectAttr "polyExtrudeFace3.out" "groupParts9.ig";
connectAttr "groupId19.id" "groupParts9.gi";
connectAttr "groupParts9.og" "deleteComponent2.ig";
connectAttr "groupId20.msg" "set5.gn" -na;
connectAttr "pCubeShape3.iog.og[1]" "set5.dsm" -na;
connectAttr "deleteComponent2.og" "groupParts10.ig";
connectAttr "groupId20.id" "groupParts10.gi";
connectAttr "groupParts10.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyExtrudeFace4.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace4.out" "polyTweakUV22.ip";
connectAttr "polyTweak24.out" "polyMergeVert22.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert22.mp";
connectAttr "polyTweakUV22.out" "polyTweak24.ip";
connectAttr "polyMergeVert22.out" "polyTweakUV23.ip";
connectAttr "polyTweak25.out" "polyMergeVert23.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert23.mp";
connectAttr "polyTweakUV23.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polySoftEdge1.ip";
connectAttr "pCube6Shape.wm" "polySoftEdge1.mp";
connectAttr "polyMergeVert21.out" "polyTweak26.ip";
connectAttr "polySoftEdge1.out" "polySoftEdge2.ip";
connectAttr "pCube6Shape.wm" "polySoftEdge2.mp";
connectAttr "polySoftEdge2.out" "polySoftEdge3.ip";
connectAttr "pCube6Shape.wm" "polySoftEdge3.mp";
connectAttr "groupId21.msg" "set6.gn" -na;
connectAttr "pSphereShape1.iog.og[1]" "set6.dsm" -na;
connectAttr "polySphere1.out" "groupParts11.ig";
connectAttr "groupId21.id" "groupParts11.gi";
connectAttr "groupParts11.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyDelEdge1.ip";
connectAttr "groupId22.msg" "set7.gn" -na;
connectAttr "pSphereShape1.iog.og[2]" "set7.dsm" -na;
connectAttr "polyDelEdge1.out" "groupParts12.ig";
connectAttr "groupId22.id" "groupParts12.gi";
connectAttr "groupParts12.og" "deleteComponent5.ig";
connectAttr "groupId23.msg" "set8.gn" -na;
connectAttr "pSphereShape1.iog.og[3]" "set8.dsm" -na;
connectAttr "deleteComponent5.og" "groupParts13.ig";
connectAttr "groupId23.id" "groupParts13.gi";
connectAttr "groupParts13.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "polySplit2.ip";
connectAttr "groupId24.msg" "set9.gn" -na;
connectAttr "pSphereShape1.iog.og[4]" "set9.dsm" -na;
connectAttr "polySplit2.out" "groupParts14.ig";
connectAttr "groupId24.id" "groupParts14.gi";
connectAttr "groupParts14.og" "deleteComponent7.ig";
connectAttr "groupId25.msg" "set10.gn" -na;
connectAttr "pSphereShape1.iog.og[5]" "set10.dsm" -na;
connectAttr "deleteComponent7.og" "groupParts15.ig";
connectAttr "groupId25.id" "groupParts15.gi";
connectAttr "groupParts15.og" "deleteComponent8.ig";
connectAttr "groupId26.msg" "set11.gn" -na;
connectAttr "pSphereShape1.iog.og[6]" "set11.dsm" -na;
connectAttr "deleteComponent8.og" "groupParts16.ig";
connectAttr "groupId26.id" "groupParts16.gi";
connectAttr "groupParts16.og" "deleteComponent9.ig";
connectAttr "groupId27.msg" "set12.gn" -na;
connectAttr "pSphereShape1.iog.og[7]" "set12.dsm" -na;
connectAttr "deleteComponent9.og" "groupParts17.ig";
connectAttr "groupId27.id" "groupParts17.gi";
connectAttr "groupParts17.og" "deleteComponent10.ig";
connectAttr "groupId28.msg" "set13.gn" -na;
connectAttr "pCube3Shape.iog.og[3]" "set13.dsm" -na;
connectAttr "polyBevel1.out" "groupParts18.ig";
connectAttr "groupId28.id" "groupParts18.gi";
connectAttr "groupParts18.og" "polyTweak27.ip";
connectAttr "polyTweak27.out" "deleteComponent11.ig";
connectAttr "groupId29.msg" "set14.gn" -na;
connectAttr "pCube3Shape.iog.og[4]" "set14.dsm" -na;
connectAttr "deleteComponent11.og" "groupParts19.ig";
connectAttr "groupId29.id" "groupParts19.gi";
connectAttr "groupParts19.og" "deleteComponent12.ig";
connectAttr "groupId30.msg" "set15.gn" -na;
connectAttr "pCube3Shape.iog.og[5]" "set15.dsm" -na;
connectAttr "deleteComponent12.og" "groupParts20.ig";
connectAttr "groupId30.id" "groupParts20.gi";
connectAttr "groupParts20.og" "deleteComponent13.ig";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube3Shape.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube4Shape.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube5Shape.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube6Shape.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
// End of Hope Plus.0002.ma
