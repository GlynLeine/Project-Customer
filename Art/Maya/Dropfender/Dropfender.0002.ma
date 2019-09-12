//Maya ASCII 2019 scene
//Name: Dropfender.0002.ma
//Last modified: Thu, Sep 12, 2019 03:21:09 PM
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
	rename -uid "F38B3D89-4322-AA37-62E5-D1937CFC6A45";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.45854843788520994 2.7516957571563503 1.3878023750021498 ;
	setAttr ".r" -type "double3" -41.138352729588675 -336.19999999997594 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "B6923D23-406C-93B1-A8F7-53B2E5CF42B4";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 3.0435685715698533;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.1920928955078125e-07 0 -1.7881393432617188e-07 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "BC1F9DDD-4351-A680-7D31-D9B324FA1F17";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "0E428705-4CAE-55E0-B17C-E8916C0949E8";
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
	rename -uid "BC1F933F-4D34-5363-67CB-8786C0325D10";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "24162048-4088-8828-DBAC-C683544D807D";
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
	rename -uid "E6B48096-46C7-575D-F589-67B44FA9DB70";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "813BC68C-4674-EB8D-A36F-3DA99FACDFCA";
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
createNode transform -n "pSphere1";
	rename -uid "38F85955-4714-5270-EEC6-E38A3C81E945";
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "A5E51CA1-4DA1-C7DC-E984-E0A436E4A3FA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.73874127864837646 0.16110906336042619 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pTorus1";
	rename -uid "FD501663-452F-798A-E7AE-50BB9879D5B8";
	setAttr ".t" -type "double3" 0 2.2914395317296847 0 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 0.10873877294275525 0.10873877294275525 0.10873877294275525 ;
createNode mesh -n "pTorusShape1" -p "pTorus1";
	rename -uid "81456794-44CB-28C2-E749-FE9F9C307DCC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.81837115379558933 0.53953829407691956 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D183D498-41B4-66EE-37E7-C5846DD26BDB";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "7F31EC4D-4054-9415-9E61-B6889A412167";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "99122314-403B-7522-51AE-ACA6C2CFE022";
createNode displayLayerManager -n "layerManager";
	rename -uid "E796FAE7-416F-5DAE-188E-908E68A558F1";
createNode displayLayer -n "defaultLayer";
	rename -uid "7FC05638-4384-B498-8161-7C87094CFD12";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "16C30BE1-46E3-51A9-6452-F1AFE2673DBC";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C8F80AD6-4571-0A0A-684A-F7B485ECA62C";
	setAttr ".g" yes;
createNode polySphere -n "polySphere1";
	rename -uid "5694EFC2-447D-FBD9-5F31-B1BBA7FBB5C6";
	setAttr ".sa" 11;
	setAttr ".sh" 5;
createNode polyTorus -n "polyTorus1";
	rename -uid "ADE00E9B-4620-5545-6BAB-7ABB68D761E3";
	setAttr ".sa" 8;
	setAttr ".sh" 7;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "CC0C4AF6-4441-D60B-BB26-FABF66DD6C26";
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
	rename -uid "4DCD4810-4BA2-94E3-13FA-9BBCE6182BF6";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyMapDel -n "polyMapDel1";
	rename -uid "FC490710-4151-994E-6261-B7A92B8283C6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:54]";
createNode polyTweak -n "polyTweak1";
	rename -uid "F9B48467-4E9B-2C76-32FA-898013426D42";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[24]" -type "float3" 0 0.024797462 0 ;
	setAttr ".tk[33]" -type "float3" 0 1.0124532 0 ;
	setAttr ".tk[34]" -type "float3" 0 1.0124532 0 ;
	setAttr ".tk[35]" -type "float3" 0 1.0124532 0 ;
	setAttr ".tk[36]" -type "float3" 0 1.0124532 0 ;
	setAttr ".tk[37]" -type "float3" 0 1.0124532 0 ;
	setAttr ".tk[38]" -type "float3" 0 1.0124532 0 ;
	setAttr ".tk[39]" -type "float3" 0 1.0124532 0 ;
	setAttr ".tk[40]" -type "float3" 0 1.0124532 0 ;
	setAttr ".tk[41]" -type "float3" 0 1.0124532 0 ;
	setAttr ".tk[42]" -type "float3" 0 1.0124532 0 ;
	setAttr ".tk[43]" -type "float3" 0 1.0124532 0 ;
	setAttr ".tk[45]" -type "float3" 0 1.2245644 0 ;
createNode polyMapDel -n "polyMapDel2";
	rename -uid "CE0D5FD5-4147-C993-7255-03902B1CCA93";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyMapDel -n "polyMapDel3";
	rename -uid "0920AD84-4264-FCDC-6C92-8FA3CF168663";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "AFA14F9D-4CE6-BF9C-218C-ADA0F9365174";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:54]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 3.4491634120548809 3.4491634120548809 3.4491634120548809 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "12AB705C-4238-209C-6F06-22B220689E39";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:55]";
	setAttr ".ix" -type "matrix" 0.10873877294275525 0 0 0 0 -4.8289715756213545e-17 0.10873877294275525 0
		 0 -0.10873877294275525 -4.8289715756213545e-17 0 0 2.2914395317296847 0 1;
	setAttr ".s" -type "double3" 3.4491634120548809 3.4491634120548809 3.4491634120548809 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "EF3E7F48-426C-E9B4-1EF0-A4A915E4F7C0";
	setAttr ".uopa" yes;
	setAttr -s 116 ".uvtk[0:115]" -type "float2" -0.57526517 0 -0.57526517
		 0 -0.57526517 0 -0.57526517 0 -0.57526517 0 -0.57526517 0 -0.57526517 0 -0.57526517
		 0 -0.57526517 0 -0.31869915 0 -0.31869915 0 -0.31869915 0 -0.31869915 0 -0.31869915
		 0 -0.31869915 0 -0.31869915 0 -0.31869915 0 -0.31869915 0 0.055360872 0 0.055360872
		 0 0.055360872 0 0.055360872 0 0.055360872 0 0.055360872 0 0.055360872 0 0.055360872
		 0 0.055360872 0 0.055360872 0 0.055360872 0 0.055360872 0 0.019451134 0 0.019451134
		 0 0.019451134 0 0.019451134 0 0.019451134 0 0.019451134 0 0.019451134 0 0.019451134
		 0 0.019451134 0 0.019451134 0 0.019451134 0 0.019451134 0 -0.48178935 0 -0.48178935
		 0 -0.48178935 0 -0.48178935 0 -0.48178935 0 -0.48178935 0 -0.48178935 0 -0.48178935
		 0 -0.48178935 0 -0.48178935 0 -0.48178935 0 -0.48178935 0 -0.48178935 0 -0.48178935
		 0 -0.48178935 0 -0.48178935 0 -0.48178935 0 -0.48178935 0 -0.48178935 0 -0.48178935
		 0 -0.48178935 0 -0.48178935 0 0.59400743 0 0.59400731 0 0.59400731 0 0.59400743 0
		 0.59400743 0 0.59400743 0 0.59400731 0 0.59400731 0 0.59400731 0 0.59400743 0 0.59400737
		 0 0.59400731 0 0.59400731 0 0.59400731 0 0.59400743 0 0.59400743 0 0.59400743 0 0.59400731
		 0 0.59400743 0 0.59400743 0 0.59400743 0 0.59400737 0 -0.35012022 0 -0.35012022 0
		 -0.35012022 0 -0.35012022 0 -0.35012022 0 -0.35012022 0 -0.35012022 0 -0.35012022
		 0 -0.35012022 0 -0.4428871 0 -0.4428871 0 -0.4428871 0 -0.4428871 0 -0.44288707 0
		 -0.44288707 0 -0.4428871 0 -0.4428871 0 -0.44288707 0 0 0.13915035 0 0.13915035 0
		 0.13915035 0 0.13915035 0 0.13915029 0 0.13915029 0 0.055360891 0 0.055360831 0 0.055360831
		 0 0.055360891 0 0.055360891 0 0.055360891;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "361291ED-4113-4025-6EE3-A3AEBFB53BE9";
	setAttr ".uopa" yes;
	setAttr -s 49 ".uvtk";
	setAttr ".uvtk[38]" -type "float2" -0.39799988 0.27231571 ;
	setAttr ".uvtk[39]" -type "float2" -0.39799988 0.27231571 ;
	setAttr ".uvtk[40]" -type "float2" -0.39799988 0.27231571 ;
	setAttr ".uvtk[41]" -type "float2" -0.39799988 0.27231571 ;
	setAttr ".uvtk[42]" -type "float2" -0.39799988 0.27231571 ;
	setAttr ".uvtk[43]" -type "float2" -0.39799988 0.27231571 ;
	setAttr ".uvtk[44]" -type "float2" -0.39799988 0.27231571 ;
	setAttr ".uvtk[45]" -type "float2" -0.39799988 0.27231571 ;
	setAttr ".uvtk[46]" -type "float2" -0.39799988 0.27231571 ;
	setAttr ".uvtk[47]" -type "float2" -0.39799988 0.27231565 ;
	setAttr ".uvtk[48]" -type "float2" -0.39799988 0.27231571 ;
	setAttr ".uvtk[49]" -type "float2" -0.39799988 0.27231571 ;
	setAttr ".uvtk[50]" -type "float2" -0.39799988 0.27231565 ;
	setAttr ".uvtk[51]" -type "float2" -0.39799988 0.27231571 ;
	setAttr ".uvtk[52]" -type "float2" -0.39799988 0.27231571 ;
	setAttr ".uvtk[53]" -type "float2" -0.39799988 0.27231565 ;
	setAttr ".uvtk[54]" -type "float2" -0.39799988 0.27231577 ;
	setAttr ".uvtk[55]" -type "float2" -0.39799988 0.27231565 ;
	setAttr ".uvtk[56]" -type "float2" -0.27231571 0 ;
	setAttr ".uvtk[57]" -type "float2" -0.27231571 0 ;
	setAttr ".uvtk[58]" -type "float2" -0.27231571 0 ;
	setAttr ".uvtk[59]" -type "float2" -0.27231571 0 ;
	setAttr ".uvtk[60]" -type "float2" -0.27231571 0 ;
	setAttr ".uvtk[61]" -type "float2" -0.27231571 0 ;
	setAttr ".uvtk[62]" -type "float2" -0.93066138 -0.33665404 ;
	setAttr ".uvtk[63]" -type "float2" -0.93066144 -0.33665404 ;
	setAttr ".uvtk[64]" -type "float2" -0.93066138 -0.33665404 ;
	setAttr ".uvtk[65]" -type "float2" -0.93066144 -0.33665404 ;
	setAttr ".uvtk[66]" -type "float2" -0.93066144 -0.33665404 ;
	setAttr ".uvtk[67]" -type "float2" -0.93066144 -0.33665404 ;
	setAttr ".uvtk[68]" -type "float2" 0 -0.10772929 ;
	setAttr ".uvtk[69]" -type "float2" 0 -0.10772929 ;
	setAttr ".uvtk[70]" -type "float2" 0 -0.10772929 ;
	setAttr ".uvtk[71]" -type "float2" 0 -0.10772929 ;
	setAttr ".uvtk[72]" -type "float2" 0 -0.10772929 ;
	setAttr ".uvtk[73]" -type "float2" 0 -0.10772929 ;
	setAttr ".uvtk[74]" -type "float2" 0 -0.10772929 ;
	setAttr ".uvtk[75]" -type "float2" 0 -0.10772929 ;
	setAttr ".uvtk[76]" -type "float2" 0 -0.10772929 ;
	setAttr ".uvtk[77]" -type "float2" 0.35161644 0.18852624 ;
	setAttr ".uvtk[78]" -type "float2" 0.3516165 0.18852624 ;
	setAttr ".uvtk[79]" -type "float2" 0.3516165 0.18852624 ;
	setAttr ".uvtk[80]" -type "float2" 0.35161644 0.18852624 ;
	setAttr ".uvtk[81]" -type "float2" 0.35161644 0.18852624 ;
	setAttr ".uvtk[82]" -type "float2" 0.35161644 0.18852624 ;
	setAttr ".uvtk[83]" -type "float2" 0.35161638 0.1885263 ;
	setAttr ".uvtk[84]" -type "float2" 0.35161644 0.1885263 ;
	setAttr ".uvtk[85]" -type "float2" 0.35161644 0.1885263 ;
createNode polyMapSewMove -n "polyMapSewMove1";
	rename -uid "2790974A-4851-558E-A01C-AAA1624A986A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[67]";
createNode polyMapSewMove -n "polyMapSewMove2";
	rename -uid "052B559C-4459-0FCE-1289-B383A0F3DF51";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[72]";
createNode polyMapSewMove -n "polyMapSewMove3";
	rename -uid "FB7F52EA-4362-0A44-9474-46ABD2BF7C9D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[69]";
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "DB4E530E-45B4-F983-1D2A-6C90D7FAFF78";
	setAttr ".uopa" yes;
	setAttr -s 50 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.0013831258 -0.38704458 ;
	setAttr ".uvtk[1]" -type "float2" -0.010305703 -0.39537349 ;
	setAttr ".uvtk[2]" -type "float2" 0.0010268092 -0.40638065 ;
	setAttr ".uvtk[3]" -type "float2" 0.0090970397 -0.40025669 ;
	setAttr ".uvtk[4]" -type "float2" 0.0013284087 -0.39813685 ;
	setAttr ".uvtk[5]" -type "float2" 0.0013383627 -0.39977935 ;
	setAttr ".uvtk[6]" -type "float2" 0.00081330538 -0.40094152 ;
	setAttr ".uvtk[7]" -type "float2" 0.004471302 -0.39994717 ;
	setAttr ".uvtk[8]" -type "float2" 0.016890109 -0.42151237 ;
	setAttr ".uvtk[9]" -type "float2" 0.020009756 -0.41837668 ;
	setAttr ".uvtk[10]" -type "float2" 0.0059919953 -0.39861083 ;
	setAttr ".uvtk[11]" -type "float2" 0.0015253425 -0.40303782 ;
	setAttr ".uvtk[12]" -type "float2" 0.014897227 -0.40656191 ;
	setAttr ".uvtk[13]" -type "float2" 0.0046688318 -0.41071749 ;
	setAttr ".uvtk[14]" -type "float2" 0.016992509 -0.41311401 ;
	setAttr ".uvtk[15]" -type "float2" -0.0090202689 -0.38189566 ;
	setAttr ".uvtk[16]" -type "float2" 0.010648221 -0.41605282 ;
	setAttr ".uvtk[17]" -type "float2" 0.00083146244 -0.3874549 ;
	setAttr ".uvtk[18]" -type "float2" -0.011274964 -0.38605291 ;
	setAttr ".uvtk[19]" -type "float2" -0.0082732141 -0.40447313 ;
	setAttr ".uvtk[20]" -type "float2" -0.001090914 -0.4015601 ;
	setAttr ".uvtk[21]" -type "float2" -0.018413827 -0.39566234 ;
	setAttr ".uvtk[22]" -type "float2" -0.014224529 -0.39477137 ;
	setAttr ".uvtk[23]" -type "float2" -0.022851974 -0.3916797 ;
	setAttr ".uvtk[24]" -type "float2" -0.015108079 -0.40595686 ;
	setAttr ".uvtk[25]" -type "float2" -0.00017510355 -0.43236482 ;
	setAttr ".uvtk[26]" -type "float2" 0.0016771406 -0.42253381 ;
	setAttr ".uvtk[27]" -type "float2" -0.021654628 -0.39965978 ;
	setAttr ".uvtk[28]" -type "float2" -0.028293675 -0.39570802 ;
	setAttr ".uvtk[29]" -type "float2" -0.0098196119 -0.40202504 ;
	setAttr ".uvtk[30]" -type "float2" -0.036111131 -0.40888745 ;
	setAttr ".uvtk[31]" -type "float2" 0.001688838 -0.40749043 ;
	setAttr ".uvtk[32]" -type "float2" 0.010936826 -0.40436274 ;
	setAttr ".uvtk[33]" -type "float2" -0.002493456 -0.4270435 ;
	setAttr ".uvtk[34]" -type "float2" 0.0037984103 -0.38408583 ;
	setAttr ".uvtk[35]" -type "float2" -0.016480885 -0.41088325 ;
	setAttr ".uvtk[36]" -type "float2" 0.0092379153 -0.41999575 ;
	setAttr ".uvtk[37]" -type "float2" 0.014779806 -0.4181518 ;
	setAttr ".uvtk[68]" -type "float2" 0.0098616183 -0.39582995 ;
	setAttr ".uvtk[69]" -type "float2" 0.0024318695 -0.39745748 ;
	setAttr ".uvtk[70]" -type "float2" 0.0034606457 -0.409428 ;
	setAttr ".uvtk[71]" -type "float2" 0.0021181107 -0.39318836 ;
	setAttr ".uvtk[72]" -type "float2" 0.011357278 -0.42113966 ;
	setAttr ".uvtk[73]" -type "float2" -0.0062446594 -0.39858764 ;
	setAttr ".uvtk[74]" -type "float2" -0.0016800165 -0.4004384 ;
	setAttr ".uvtk[75]" -type "float2" 0.0099029541 -0.40372312 ;
	setAttr ".uvtk[76]" -type "float2" -0.0041799545 -0.40697038 ;
	setAttr ".uvtk[77]" -type "float2" 0.0043535233 -0.41010678 ;
	setAttr ".uvtk[78]" -type "float2" 0.022222579 -0.41562712 ;
	setAttr ".uvtk[79]" -type "float2" 0.017955363 -0.41860026 ;
createNode polyMapSewMove -n "polyMapSewMove4";
	rename -uid "DADA4A08-4310-8C9B-2387-9DA08F5EF6F1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[33]";
createNode polyMapSewMove -n "polyMapSewMove5";
	rename -uid "92B3547C-4010-B6BF-C7DC-A8BB07655989";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[34]";
createNode polyMapSewMove -n "polyMapSewMove6";
	rename -uid "5D2A815F-4146-C2CB-52E0-9E87D8B8CB3B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[35]";
createNode polyMapSewMove -n "polyMapSewMove7";
	rename -uid "D8B49871-4ED1-2322-D62D-87AB5014DF14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[36]";
createNode polyMapCut -n "polyMapCut1";
	rename -uid "2750B4CE-4FE0-593C-FE47-E589234ABEBE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[89:91]";
createNode polyMapCut -n "polyMapCut2";
	rename -uid "06EC2C53-48AC-9A08-2080-70A744917948";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[98]";
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "D63F1437-4C72-B6A0-B226-B9A13779615E";
	setAttr ".uopa" yes;
	setAttr -s 55 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.00061780214 0.009358272 ;
	setAttr ".uvtk[1]" -type "float2" -0.0025606751 0.01271084 ;
	setAttr ".uvtk[2]" -type "float2" -0.0065730214 0.0105648 ;
	setAttr ".uvtk[3]" -type "float2" -0.0045292377 0.0070789941 ;
	setAttr ".uvtk[4]" -type "float2" 0.0030553937 0.01207526 ;
	setAttr ".uvtk[5]" -type "float2" 0.0017572641 0.014468089 ;
	setAttr ".uvtk[6]" -type "float2" -0.0041240454 0.016406938 ;
	setAttr ".uvtk[7]" -type "float2" -0.0087051988 0.013986655 ;
	setAttr ".uvtk[8]" -type "float2" -0.016703665 0.0039906502 ;
	setAttr ".uvtk[9]" -type "float2" 0.041549891 -0.047814444 ;
	setAttr ".uvtk[10]" -type "float2" 0.0017516613 0.0062206239 ;
	setAttr ".uvtk[11]" -type "float2" -0.0025189519 0.003561914 ;
	setAttr ".uvtk[12]" -type "float2" 0.00096899271 0.017009541 ;
	setAttr ".uvtk[13]" -type "float2" 0.0047369003 0.01011759 ;
	setAttr ".uvtk[14]" -type "float2" -0.018135965 0.0061164498 ;
	setAttr ".uvtk[15]" -type "float2" -0.020760149 0.00028187037 ;
	setAttr ".uvtk[16]" -type "float2" 0.0070439875 -0.033643588 ;
	setAttr ".uvtk[17]" -type "float2" 0.0040644184 -0.018495589 ;
	setAttr ".uvtk[18]" -type "float2" 0.0043064803 -0.013749123 ;
	setAttr ".uvtk[19]" -type "float2" -0.00077496469 -0.012830064 ;
	setAttr ".uvtk[20]" -type "float2" -0.0014665648 -0.017968357 ;
	setAttr ".uvtk[21]" -type "float2" 0.0097483322 -0.018073529 ;
	setAttr ".uvtk[22]" -type "float2" 0.0098637789 -0.014554113 ;
	setAttr ".uvtk[23]" -type "float2" 0.0048272312 -0.0093332231 ;
	setAttr ".uvtk[24]" -type "float2" -0.00086089969 -0.008358568 ;
	setAttr ".uvtk[25]" -type "float2" -0.014619946 -0.0070711151 ;
	setAttr ".uvtk[26]" -type "float2" -0.01604224 -0.014729753 ;
	setAttr ".uvtk[27]" -type "float2" 0.0042945575 -0.02356717 ;
	setAttr ".uvtk[28]" -type "float2" -0.0023105592 -0.023301616 ;
	setAttr ".uvtk[29]" -type "float2" 0.010401383 -0.011211336 ;
	setAttr ".uvtk[30]" -type "float2" 0.010221481 -0.021407843 ;
	setAttr ".uvtk[31]" -type "float2" 0.0059966147 -0.0048311353 ;
	setAttr ".uvtk[32]" -type "float2" -0.00055477023 -0.0041655749 ;
	setAttr ".uvtk[33]" -type "float2" -0.011808366 -0.0085852295 ;
	setAttr ".uvtk[34]" -type "float2" -0.045562521 -0.0065932572 ;
	setAttr ".uvtk[35]" -type "float2" -0.017049331 -0.018103294 ;
	setAttr ".uvtk[36]" -type "float2" 0.011545986 -0.0082096756 ;
	setAttr ".uvtk[37]" -type "float2" -0.014344543 -0.0058180615 ;
	setAttr ".uvtk[56]" -type "float2" 0.10391673 0.056519479 ;
	setAttr ".uvtk[57]" -type "float2" -0.010598958 -0.0163721 ;
	setAttr ".uvtk[64]" -type "float2" 0.0040135384 -0.0033468306 ;
	setAttr ".uvtk[65]" -type "float2" 0.0031889379 0.00063985586 ;
	setAttr ".uvtk[66]" -type "float2" -0.0016105175 -0.00033187866 ;
	setAttr ".uvtk[67]" -type "float2" 0.0022373199 0.0046087056 ;
	setAttr ".uvtk[68]" -type "float2" -0.0054228902 0.017404102 ;
	setAttr ".uvtk[69]" -type "float2" -0.0083789825 0.020270981 ;
	setAttr ".uvtk[70]" -type "float2" -0.01160109 0.016857594 ;
	setAttr ".uvtk[71]" -type "float2" -0.011448264 0.023063034 ;
	setAttr ".uvtk[72]" -type "float2" -0.014696419 0.019523323 ;
	setAttr ".uvtk[73]" -type "float2" -0.019857407 0.00801 ;
	setAttr ".uvtk[74]" -type "float2" -0.02180475 0.0096379519 ;
	setAttr ".uvtk[75]" -type "float2" 0.063410223 0.0338853 ;
	setAttr ".uvtk[76]" -type "float2" 0.021342874 0.017375648 ;
	setAttr ".uvtk[77]" -type "float2" -0.022858098 0.006757915 ;
	setAttr ".uvtk[78]" -type "float2" 0.0046567917 -0.0060359687 ;
createNode polyMapCut -n "polyMapCut3";
	rename -uid "EE78D6B1-42AF-142D-E94E-D4B325AEB95C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[33:37]" "e[42:43]";
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "5FD99637-4664-B70B-5243-E8A260D41D72";
	setAttr ".uopa" yes;
	setAttr -s 69 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.00021612644 4.1410327e-05 ;
	setAttr ".uvtk[1]" -type "float2" 0.00022810698 4.0963292e-05 ;
	setAttr ".uvtk[2]" -type "float2" 0.00029158592 2.5456771e-05 ;
	setAttr ".uvtk[3]" -type "float2" 0.00022602081 -5.7704747e-06 ;
	setAttr ".uvtk[4]" -type "float2" 0.00019407272 7.905066e-05 ;
	setAttr ".uvtk[5]" -type "float2" 0.00019091368 7.2911382e-05 ;
	setAttr ".uvtk[6]" -type "float2" 0.00021576881 3.2260083e-05 ;
	setAttr ".uvtk[7]" -type "float2" 0.00032043457 3.3773482e-05 ;
	setAttr ".uvtk[8]" -type "float2" 0.00075209141 0.00015830994 ;
	setAttr ".uvtk[9]" -type "float2" 0.00077268481 -0.00013892353 ;
	setAttr ".uvtk[10]" -type "float2" 0.00020956993 5.1796436e-05 ;
	setAttr ".uvtk[11]" -type "float2" 0.0001321435 -4.3779612e-05 ;
	setAttr ".uvtk[12]" -type "float2" 0.00017619133 6.6369772e-05 ;
	setAttr ".uvtk[13]" -type "float2" 0.00019937754 9.2417002e-05 ;
	setAttr ".uvtk[14]" -type "float2" 0.00067085028 0.00010457635 ;
	setAttr ".uvtk[15]" -type "float2" -0.00085383654 0.00042483211 ;
	setAttr ".uvtk[16]" -type "float2" 0.00058701634 -3.7819147e-05 ;
	setAttr ".uvtk[17]" -type "float2" -0.00034344196 5.0663948e-05 ;
	setAttr ".uvtk[18]" -type "float2" -0.0003144443 4.3421984e-05 ;
	setAttr ".uvtk[19]" -type "float2" -0.00033387542 6.9737434e-06 ;
	setAttr ".uvtk[20]" -type "float2" -0.0004222244 1.3113022e-05 ;
	setAttr ".uvtk[21]" -type "float2" -0.00031922758 9.1463327e-05 ;
	setAttr ".uvtk[22]" -type "float2" -0.00030896068 8.648634e-05 ;
	setAttr ".uvtk[23]" -type "float2" -0.00027382374 3.4689903e-05 ;
	setAttr ".uvtk[24]" -type "float2" -0.00021469593 -1.6078353e-05 ;
	setAttr ".uvtk[25]" -type "float2" 0.00078764558 -0.0010112897 ;
	setAttr ".uvtk[26]" -type "float2" 0.00082504749 -0.00086437911 ;
	setAttr ".uvtk[27]" -type "float2" -0.0003291741 5.8561563e-05 ;
	setAttr ".uvtk[28]" -type "float2" -0.00041886978 1.3798475e-05 ;
	setAttr ".uvtk[29]" -type "float2" -0.00029507279 8.3625317e-05 ;
	setAttr ".uvtk[30]" -type "float2" -0.00030906126 9.8973513e-05 ;
	setAttr ".uvtk[31]" -type "float2" -0.00026345253 3.233552e-05 ;
	setAttr ".uvtk[32]" -type "float2" -9.3698502e-05 -4.6536326e-05 ;
	setAttr ".uvtk[33]" -type "float2" 0.00029547513 -0.00058083981 ;
	setAttr ".uvtk[34]" -type "float2" -0.00062225759 0.0014440715 ;
	setAttr ".uvtk[35]" -type "float2" -0.0012650304 -5.5536628e-05 ;
	setAttr ".uvtk[36]" -type "float2" -0.000300318 8.7469816e-05 ;
	setAttr ".uvtk[37]" -type "float2" 0.00035023689 -0.00034154207 ;
	setAttr ".uvtk[56]" -type "float2" -0.00074318051 0.00044974685 ;
	setAttr ".uvtk[57]" -type "float2" 0.0003156364 -0.00015452504 ;
	setAttr ".uvtk[64]" -type "float2" -2.05338e-05 -6.2584877e-07 ;
	setAttr ".uvtk[65]" -type "float2" 8.136034e-06 -1.2844801e-05 ;
	setAttr ".uvtk[66]" -type "float2" 2.8699636e-05 -6.6637993e-05 ;
	setAttr ".uvtk[67]" -type "float2" 3.2544136e-05 -1.5705824e-05 ;
	setAttr ".uvtk[68]" -type "float2" 0.00029939413 7.0627779e-05 ;
	setAttr ".uvtk[69]" -type "float2" 0.00028914213 4.4979155e-05 ;
	setAttr ".uvtk[70]" -type "float2" 0.00033187866 2.1442771e-05 ;
	setAttr ".uvtk[71]" -type "float2" 0.00027287006 1.4409423e-05 ;
	setAttr ".uvtk[72]" -type "float2" 0.0003207922 -6.9439411e-06 ;
	setAttr ".uvtk[73]" -type "float2" 0.00062251091 6.5982342e-05 ;
	setAttr ".uvtk[74]" -type "float2" 0.00059962273 3.8653612e-05 ;
	setAttr ".uvtk[75]" -type "float2" -0.00031191111 0.00026765466 ;
	setAttr ".uvtk[76]" -type "float2" -0.00027912855 0.00034074485 ;
	setAttr ".uvtk[77]" -type "float2" -0.00017020106 0.00034078956 ;
	setAttr ".uvtk[78]" -type "float2" -0.00061453879 0.0012042671 ;
	setAttr ".uvtk[79]" -type "float2" -0.0006133616 3.2819808e-05 ;
	setAttr ".uvtk[80]" -type "float2" -0.0002027899 -0.00057969242 ;
	setAttr ".uvtk[81]" -type "float2" -2.5764108e-05 -0.00010792166 ;
	setAttr ".uvtk[82]" -type "float2" -0.00017309189 -0.00019297004 ;
	setAttr ".uvtk[83]" -type "float2" -0.0013383478 -4.8674643e-05 ;
	setAttr ".uvtk[84]" -type "float2" 0.00044372678 -9.6902251e-05 ;
	setAttr ".uvtk[85]" -type "float2" 0.00015616417 -0.0004119277 ;
	setAttr ".uvtk[86]" -type "float2" 8.1121922e-05 -0.00028590858 ;
	setAttr ".uvtk[87]" -type "float2" 0.00026106834 -0.00041864812 ;
	setAttr ".uvtk[88]" -type "float2" -3.7252903e-06 -0.00011314452 ;
	setAttr ".uvtk[89]" -type "float2" 0.00019434094 -0.00045767426 ;
	setAttr ".uvtk[90]" -type "float2" -7.1108341e-05 8.046627e-07 ;
	setAttr ".uvtk[91]" -type "float2" 7.5221062e-05 -0.0003894493 ;
	setAttr ".uvtk[92]" -type "float2" -0.00012525916 0.00024004281 ;
createNode polyMapSewMove -n "polyMapSewMove8";
	rename -uid "83A8BC6E-4A8D-C39B-BF0A-D5BAD6071954";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[98]";
createNode polyMapSewMove -n "polyMapSewMove9";
	rename -uid "50E94685-4005-15C0-366C-BE81298AEAD5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[88]";
createNode polyMapSewMove -n "polyMapSewMove10";
	rename -uid "15BEAEF4-483E-22C5-E4B3-C8AEC49768FB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[89]";
createNode polyMapSewMove -n "polyMapSewMove11";
	rename -uid "B26F40D5-41CA-6925-B175-0FA4EE0DECDC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[90]";
createNode polyMapSewMove -n "polyMapSewMove12";
	rename -uid "39FF3032-4732-5547-488B-0BB0C2CB2692";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[91]";
createNode polyMapSewMove -n "polyMapSewMove13";
	rename -uid "346A79D8-482B-DEB5-B0CC-E7B42A466438";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[92]";
createNode polyMapSewMove -n "polyMapSewMove14";
	rename -uid "47C0BC94-41E4-72E3-8D35-B18E9A66C1CE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[93]";
createNode polyMapSewMove -n "polyMapSewMove15";
	rename -uid "B8BC70ED-47B0-D89D-0825-3E87B5C405EB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[97]";
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "9399CF8C-426C-258A-3F9B-3BA84792F8EE";
	setAttr ".uopa" yes;
	setAttr -s 78 ".uvtk[0:77]" -type "float2" -0.24758485 0.31364381 -0.27527678
		 0.29053125 -0.24924943 0.25762433 -0.22019291 0.28164238 -0.27858058 0.3427453 -0.29841805
		 0.32700133 -0.30659705 0.27020657 -0.2773487 0.23273252 -0.17473489 0.17780107 0.49545243
		 -0.032362644 -0.22257489 0.34030136 -0.19030473 0.3050015 -0.32039535 0.31561887
		 -0.26339811 0.36130065 -0.1913861 0.16087466 0.54821664 -0.0093858037 0.49132109
		 -0.012229096 -0.011538714 0.3803423 -0.046668664 0.37799579 -0.045866601 0.33703572
		 -0.0086607225 0.33788362 -0.021512017 0.42186013 -0.047667161 0.42017683 -0.082111806
		 0.37846181 -0.082919896 0.33590293 0.53307843 0.062703326 0.57873619 0.025115926
		 0.024022602 0.38694054 0.029117396 0.33768511 -0.074067369 0.42167228 0.0017911419
		 0.42818454 -0.11900239 0.38278368 -0.11998169 0.3331728 0.51144713 0.046989899 0.0050758198
		 0.2248874 -0.098510265 0.4273904 0.4985612 0.027627248 -0.15310705 -0.21219081 -0.17425364
		 -0.22985941 -0.13292408 -0.25699526 -0.18247083 -0.25614399 -0.12470221 -0.20648479
		 -0.1751876 -0.2827031 -0.12412754 -0.20332223 -0.16852102 -0.21580434 -0.099763498
		 -0.2207104 -0.15467969 -0.30110759 -0.084491886 -0.22847211 -0.085246973 -0.24407524
		 -0.12674174 -0.30780137 -0.085735202 -0.27155149 -0.17162439 -0.29794896 -0.12651053
		 -0.31101358 -0.1010749 -0.29439104 -0.087400429 -0.28662658 0.49232322 0.0076640602
		 0.50780433 -0.048532356 0.53295475 -0.059884802 0.56055588 -0.059675619 0.58366239
		 -0.044577409 -0.1359742 0.37437427 -0.17172974 0.36082184 -0.15495941 0.3186464 -0.20700279
		 0.34604487 -0.31414652 0.25713557 -0.33551818 0.22541843 -0.29899591 0.20166464 -0.35597509
		 0.19275777 -0.31827968 0.16899472 -0.20562622 0.14183757 -0.21720502 0.12128618 -0.043563969
		 0.22884631 -0.068005741 0.22750378 -0.018944845 0.2280474 -0.1559349 0.19304237 -0.13570562
		 0.20618844 -0.11419892 0.21639694 -0.091472194 0.22357029;
createNode polyMapSewMove -n "polyMapSewMove16";
	rename -uid "2E37976A-4540-C2BC-1FA4-67BFC1E8F479";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[106]";
createNode polyMapSewMove -n "polyMapSewMove17";
	rename -uid "C9027AB7-460A-FB47-50A7-52B6F2C244EA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[108]";
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "9F79DEC2-4B55-AD07-1093-EFBAF4B95DD0";
	setAttr ".uopa" yes;
	setAttr -s 23 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.55321544 0 ;
	setAttr ".uvtk[1]" -type "float2" -0.55321538 0 ;
	setAttr ".uvtk[2]" -type "float2" -0.55321544 0 ;
	setAttr ".uvtk[3]" -type "float2" -0.55321544 0 ;
	setAttr ".uvtk[4]" -type "float2" -0.55321538 0 ;
	setAttr ".uvtk[5]" -type "float2" -0.55321544 0 ;
	setAttr ".uvtk[6]" -type "float2" -0.55321544 0 ;
	setAttr ".uvtk[7]" -type "float2" -0.55321544 0 ;
	setAttr ".uvtk[8]" -type "float2" -0.5532155 0 ;
	setAttr ".uvtk[86]" -type "float2" -0.55321538 0 ;
	setAttr ".uvtk[87]" -type "float2" -0.55321538 0 ;
	setAttr ".uvtk[88]" -type "float2" -0.55321544 0 ;
	setAttr ".uvtk[89]" -type "float2" -0.55321544 0 ;
	setAttr ".uvtk[90]" -type "float2" -0.55321544 0 ;
	setAttr ".uvtk[91]" -type "float2" -0.55321544 0 ;
	setAttr ".uvtk[92]" -type "float2" -0.55321544 0 ;
	setAttr ".uvtk[93]" -type "float2" -0.55321544 0 ;
	setAttr ".uvtk[94]" -type "float2" -0.55321544 0 ;
	setAttr ".uvtk[95]" -type "float2" -0.55321544 0 ;
	setAttr ".uvtk[96]" -type "float2" -0.55321538 0 ;
	setAttr ".uvtk[97]" -type "float2" -0.55321544 0 ;
	setAttr ".uvtk[98]" -type "float2" -0.55321544 0 ;
	setAttr ".uvtk[99]" -type "float2" -0.55321544 0 ;
createNode polyMapSewMove -n "polyMapSewMove18";
	rename -uid "6779D003-49BC-37E9-AE8C-6D942F14B0FF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[62]";
createNode polyMapSewMove -n "polyMapSewMove19";
	rename -uid "B9F3DE4E-4732-2776-3E2A-A0AE8F63AA06";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[110]";
createNode polyMapSewMove -n "polyMapSewMove20";
	rename -uid "F01E9F2A-42B3-A1C4-5165-3691DA24246F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[58]";
createNode polyMapSewMove -n "polyMapSewMove21";
	rename -uid "5577C12A-4DCD-BDF8-7EF6-2C87BD0CB4DA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[60]";
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "7DCC2996-4DD1-0A3C-DE80-0E9B98ECC567";
	setAttr ".uopa" yes;
	setAttr -s 27 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.036333621 -0.041776776 ;
	setAttr ".uvtk[1]" -type "float2" 0.03778857 -0.0483464 ;
	setAttr ".uvtk[2]" -type "float2" 0.038022578 -0.070333123 ;
	setAttr ".uvtk[3]" -type "float2" 0.036945879 -0.034792483 ;
	setAttr ".uvtk[4]" -type "float2" 0.035393953 -0.049784839 ;
	setAttr ".uvtk[5]" -type "float2" 0.052634478 -0.035684884 ;
	setAttr ".uvtk[6]" -type "float2" 0.034635484 -0.034683049 ;
	setAttr ".uvtk[7]" -type "float2" 0.061160117 -0.020142496 ;
	setAttr ".uvtk[8]" -type "float2" 0.017611861 -0.063560069 ;
	setAttr ".uvtk[9]" -type "float2" -0.019894004 0.059782505 ;
	setAttr ".uvtk[10]" -type "float2" -0.019006848 0.05504787 ;
	setAttr ".uvtk[11]" -type "float2" -0.0013186932 0.084605992 ;
	setAttr ".uvtk[12]" -type "float2" -0.017455041 0.071044683 ;
	setAttr ".uvtk[13]" -type "float2" -0.017555207 0.061325073 ;
	setAttr ".uvtk[14]" -type "float2" -0.045012265 0.043592453 ;
	setAttr ".uvtk[15]" -type "float2" -0.02143082 0.059496522 ;
	setAttr ".uvtk[16]" -type "float2" -0.034955829 0.064039111 ;
	setAttr ".uvtk[17]" -type "float2" -0.017887831 0.050797343 ;
	setAttr ".uvtk[86]" -type "float2" -0.0045159459 -0.038389981 ;
	setAttr ".uvtk[87]" -type "float2" -0.046170533 -0.02341336 ;
	setAttr ".uvtk[88]" -type "float2" -0.082224131 -0.056942701 ;
	setAttr ".uvtk[89]" -type "float2" -0.023097456 -0.087692857 ;
	setAttr ".uvtk[90]" -type "float2" 0.0092982054 -0.0018953085 ;
	setAttr ".uvtk[91]" -type "float2" -0.0326612 0.025342345 ;
	setAttr ".uvtk[92]" -type "float2" 0.0076830685 0.010451674 ;
	setAttr ".uvtk[93]" -type "float2" 0.050676525 0.046365082 ;
	setAttr ".uvtk[94]" -type "float2" -0.034998596 -0.024452507 ;
createNode polyMapCut -n "polyMapCut4";
	rename -uid "6E685CE4-43A8-4BBC-FA7A-B5BA4C0045E5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16:17]";
createNode polyMapCut -n "polyMapCut5";
	rename -uid "0A9BE141-4C83-A840-8448-39B6EC6C66EE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[20:21]";
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "D8201440-4CC4-C8E4-2B56-1BA4E20E7AA8";
	setAttr ".uopa" yes;
	setAttr -s 29 ".uvtk";
	setAttr ".uvtk[42]" -type "float2" -0.00092563033 -0.0014716685 ;
	setAttr ".uvtk[43]" -type "float2" -0.0016951561 -0.00038599968 ;
	setAttr ".uvtk[44]" -type "float2" -0.00087096542 0.00086733699 ;
	setAttr ".uvtk[45]" -type "float2" 0 0.18992338 ;
	setAttr ".uvtk[46]" -type "float2" -0.001471892 0.00092622638 ;
	setAttr ".uvtk[47]" -type "float2" -3.4756958e-06 0.0012275875 ;
	setAttr ".uvtk[48]" -type "float2" 0 0.18992338 ;
	setAttr ".uvtk[49]" -type "float2" 0 0.18992338 ;
	setAttr ".uvtk[50]" -type "float2" 0.00038775802 -0.0016964674 ;
	setAttr ".uvtk[51]" -type "float2" 0 0.18992341 ;
	setAttr ".uvtk[52]" -type "float2" -0.00038774312 0.0016964674 ;
	setAttr ".uvtk[53]" -type "float2" 0 -0.1178835 ;
	setAttr ".uvtk[54]" -type "float2" 0 0.18992338 ;
	setAttr ".uvtk[55]" -type "float2" 0.0014719069 -0.00092622638 ;
	setAttr ".uvtk[56]" -type "float2" 3.4868717e-06 -0.0012275875 ;
	setAttr ".uvtk[57]" -type "float2" 0.00092560053 0.0014716834 ;
	setAttr ".uvtk[58]" -type "float2" 0 -0.1178835 ;
	setAttr ".uvtk[59]" -type "float2" 0.0016951561 0.00038601458 ;
	setAttr ".uvtk[60]" -type "float2" 0.00087097287 -0.00086733699 ;
	setAttr ".uvtk[61]" -type "float2" 0 -0.1178835 ;
	setAttr ".uvtk[62]" -type "float2" 0 -0.1178835 ;
	setAttr ".uvtk[63]" -type "float2" 0 -0.1178835 ;
	setAttr ".uvtk[107]" -type "float2" -0.0012297928 -2.8014183e-06 ;
	setAttr ".uvtk[108]" -type "float2" -0.00086629391 -0.00087302923 ;
	setAttr ".uvtk[109]" -type "float2" 0 0.18992341 ;
	setAttr ".uvtk[110]" -type "float2" 0.001229763 2.7790666e-06 ;
	setAttr ".uvtk[111]" -type "float2" 0.00086632371 0.00087301433 ;
	setAttr ".uvtk[112]" -type "float2" 0 -0.1178835 ;
createNode polyMapSewMove -n "polyMapSewMove22";
	rename -uid "4C2756BA-4967-1C13-0B56-8B8B2DD6E38D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[72]";
createNode polyMapSewMove -n "polyMapSewMove23";
	rename -uid "6CFF7E1F-40E0-9C34-CEFC-9ABA14B5B866";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[78]";
createNode polyMapSewMove -n "polyMapSewMove24";
	rename -uid "8A7CE9F0-4B2F-BAE5-F742-2B861418B958";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[74]";
createNode polyMapSewMove -n "polyMapSewMove25";
	rename -uid "3915B333-4C76-E5DA-FA0C-9E968E195D90";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[76]";
createNode polyMapCut -n "polyMapCut6";
	rename -uid "7AD338F8-4073-DCCB-03DE-B886DD524D7C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[26:27]" "e[30:31]";
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "5B304691-4720-DD4F-6B64-D4B28D23A28D";
	setAttr ".uopa" yes;
	setAttr -s 57 ".uvtk";
	setAttr ".uvtk[18]" -type "float2" 0.19434907 0.0041993856 ;
	setAttr ".uvtk[19]" -type "float2" 0.00014638901 0.028967261 ;
	setAttr ".uvtk[20]" -type "float2" 0.22233368 0.013235986 ;
	setAttr ".uvtk[21]" -type "float2" 0.18562962 0.0057789683 ;
	setAttr ".uvtk[22]" -type "float2" 0.028386593 0.017865598 ;
	setAttr ".uvtk[23]" -type "float2" -0.0094577074 0.032477081 ;
	setAttr ".uvtk[24]" -type "float2" 0.23732735 0.0027022958 ;
	setAttr ".uvtk[25]" -type "float2" 0.2079723 0.0048338771 ;
	setAttr ".uvtk[26]" -type "float2" 0.24556412 -0.02442807 ;
	setAttr ".uvtk[27]" -type "float2" 0.21163882 -0.0070441961 ;
	setAttr ".uvtk[28]" -type "float2" -0.033628583 -0.018763125 ;
	setAttr ".uvtk[29]" -type "float2" 0.23254062 0.0022970438 ;
	setAttr ".uvtk[30]" -type "float2" 1.0004396 0.00066751242 ;
	setAttr ".uvtk[31]" -type "float2" 0.011438429 -0.015762746 ;
	setAttr ".uvtk[32]" -type "float2" 0.97853637 -0.017329395 ;
	setAttr ".uvtk[33]" -type "float2" 1.0118344 0.00059872866 ;
	setAttr ".uvtk[34]" -type "float2" -0.041697025 -0.0095772743 ;
	setAttr ".uvtk[35]" -type "float2" 0.015089691 -0.02522558 ;
	setAttr ".uvtk[36]" -type "float2" 0.96446735 -0.0069836974 ;
	setAttr ".uvtk[37]" -type "float2" 0.99202961 -0.00065129995 ;
	setAttr ".uvtk[38]" -type "float2" 0.97323704 0.006821394 ;
	setAttr ".uvtk[39]" -type "float2" 0.98427153 0.016771615 ;
	setAttr ".uvtk[40]" -type "float2" 0.020413458 0.0082675815 ;
	setAttr ".uvtk[41]" -type "float2" 0.96725494 0.0042241216 ;
	setAttr ".uvtk[45]" -type "float2" 0.010573864 0.027650058 ;
	setAttr ".uvtk[48]" -type "float2" 0.014758468 0.016145587 ;
	setAttr ".uvtk[54]" -type "float2" 0.0029733181 -0.039182663 ;
	setAttr ".uvtk[57]" -type "float2" 0.0069389343 -0.027678251 ;
	setAttr ".uvtk[58]" -type "float2" 0.0029476881 0.011463173 ;
	setAttr ".uvtk[59]" -type "float2" -0.0039153099 0.0063101202 ;
	setAttr ".uvtk[60]" -type "float2" -0.0029312372 0.0059034079 ;
	setAttr ".uvtk[61]" -type "float2" 0.0020444393 0.0079338402 ;
	setAttr ".uvtk[62]" -type "float2" 0.0032527447 -0.0035376139 ;
	setAttr ".uvtk[63]" -type "float2" 0.00011909008 -0.01158531 ;
	setAttr ".uvtk[64]" -type "float2" -0.0072101355 0.0026779473 ;
	setAttr ".uvtk[65]" -type "float2" -0.0056160688 0.0018601716 ;
	setAttr ".uvtk[66]" -type "float2" 0.0080014467 0.0023055971 ;
	setAttr ".uvtk[67]" -type "float2" 0.0057046413 0.0033883005 ;
	setAttr ".uvtk[68]" -type "float2" 0.0063346624 -0.016124152 ;
	setAttr ".uvtk[69]" -type "float2" -0.0080013275 -0.0023055673 ;
	setAttr ".uvtk[70]" -type "float2" -0.0057045221 -0.0033883154 ;
	setAttr ".uvtk[71]" -type "float2" 0.0072102547 -0.0026779771 ;
	setAttr ".uvtk[72]" -type "float2" 0.0056160688 -0.0018601716 ;
	setAttr ".uvtk[73]" -type "float2" -0.0029478073 -0.011463165 ;
	setAttr ".uvtk[74]" -type "float2" -0.0020445585 -0.0079338253 ;
	setAttr ".uvtk[75]" -type "float2" 0.0039153099 -0.0063101351 ;
	setAttr ".uvtk[76]" -type "float2" 0.0029313564 -0.0059034228 ;
	setAttr ".uvtk[77]" -type "float2" -0.0063346624 0.016124129 ;
	setAttr ".uvtk[78]" -type "float2" -0.0032528639 0.0035376549 ;
	setAttr ".uvtk[79]" -type "float2" -0.00011909008 0.011585295 ;
	setAttr ".uvtk[105]" -type "float2" -0.066835225 -0.0096033216 ;
	setAttr ".uvtk[106]" -type "float2" 0.016890049 -0.0013259053 ;
	setAttr ".uvtk[107]" -type "float2" 0.96919155 -0.0041189194 ;
	setAttr ".uvtk[108]" -type "float2" 0.053914547 0.024379909 ;
	setAttr ".uvtk[109]" -type "float2" -0.0299052 -0.0086343288 ;
	setAttr ".uvtk[110]" -type "float2" 0.22736932 -0.0015752912 ;
createNode polyMapSewMove -n "polyMapSewMove26";
	rename -uid "F4D868D7-42D3-A9B7-FA5C-52849A27B2D0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[94]";
createNode polyMapSewMove -n "polyMapSewMove27";
	rename -uid "7796A217-49F8-73FF-2586-129E6EABAF3B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[46]";
createNode polyMapSewMove -n "polyMapSewMove28";
	rename -uid "3ABD5491-45EB-9BE7-422B-068EB6424464";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[88]";
createNode polyMapSewMove -n "polyMapSewMove29";
	rename -uid "04DBAE48-4730-3F81-8D79-57BE2B783099";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[92]";
createNode polyMapSewMove -n "polyMapSewMove30";
	rename -uid "EC5A8F3E-4292-3E91-7FFE-51A534A7434C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[90]";
createNode polyMapCut -n "polyMapCut7";
	rename -uid "CD19A7A5-4435-145A-76C9-EF9234187145";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[34:35]" "e[38:39]";
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "0D9F4DAF-4E46-A734-EDD3-E1B97D5BA1E5";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[18]" -type "float2" 0.75969374 0 ;
	setAttr ".uvtk[26]" -type "float2" 0.75969368 0 ;
	setAttr ".uvtk[30]" -type "float2" 0 0.62434584 ;
	setAttr ".uvtk[38]" -type "float2" 0 0.6243459 ;
	setAttr ".uvtk[98]" -type "float2" 0 0.62434584 ;
	setAttr ".uvtk[101]" -type "float2" 0.75969368 0 ;
	setAttr ".uvtk[102]" -type "float2" 0 0.6243459 ;
	setAttr ".uvtk[103]" -type "float2" 0 0.6243459 ;
	setAttr ".uvtk[104]" -type "float2" 0 0.62434584 ;
	setAttr ".uvtk[105]" -type "float2" 0.75969362 0 ;
	setAttr ".uvtk[106]" -type "float2" 0.75969368 0 ;
	setAttr ".uvtk[107]" -type "float2" 0.75969368 0 ;
createNode polyMapCut -n "polyMapCut8";
	rename -uid "62ED3B12-4F89-904E-B6C6-C6B9341F044A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[40:41]" "e[44:47]";
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "D5D45BDB-43AB-6CA0-41C0-FFA107DB1987";
	setAttr ".uopa" yes;
	setAttr -s 115 ".uvtk[0:114]" -type "float2" -1.1026859e-05 -1.680851e-05
		 -2.2232533e-05 -3.349781e-05 -5.6624413e-06 -4.5001507e-05 5.6028366e-06 -2.771616e-05
		 -2.7835369e-05 -6.1988831e-06 -3.9100647e-05 -2.3007393e-05 0 0 1.6719103e-05 -1.0669231e-05
		 -1.6689301e-05 1.0669231e-05 3.3468008e-05 4.9710274e-05 2.220273e-05 3.349781e-05
		 3.9070845e-05 2.3007393e-05 5.0634146e-05 3.9935112e-05 1.758337e-05 6.2823296e-05
		 5.6326389e-06 4.4941902e-05 4.4584274e-05 6.4611435e-05 6.1810017e-05 5.865097e-05
		 3.3378601e-05 8.058548e-05 0.026159048 -0.013985187 1.1920929e-07 0 0.074710369 -0.033248037
		 0.0039442182 -0.05226469 0 1.1920929e-07 1.1920929e-07 -5.9604645e-08 0.06626761
		 0.56993264 0.021622896 -0.017060667 0.0063248873 0.023568988 -0.027129412 0.0050984621
		 -1.1920929e-07 -1.1920929e-07 -0.012236238 0.5920043 -0.023623705 -0.01697892 1.7881393e-07
		 5.9604645e-08 0.0043749809 0.026153028 0.00017499924 -0.028138131 -5.9604645e-08
		 1.1920929e-07 -5.9604645e-08 -1.1920929e-07 0.0016210079 0.60237974 -0.0016804934
		 0.58598757 -0.0070489645 -0.035942912 -0.054181099 -0.019155778 -5.9604645e-08 -5.9604645e-08
		 -0.049129009 0.57547861 0 0 0 -2.9802322e-08 0 0 5.9604645e-08 -5.9604645e-08 0 0
		 -3.7252903e-09 0 1.1920929e-07 -5.9604645e-08 0 0 0 0 0 0 0 0 0 0 0 -1.7881393e-07
		 0 0 0 0 1.1920929e-07 -2.3841858e-07 0.0080907345 0.57851291 0.0079311132 0.59103876
		 0.0050503016 0.58433318 0.011926293 0.0030440479 0.0058323145 0.59690619 -0.00043463707
		 0.58409339 0.0012469292 0.60006088 -0.0089044571 0.58412504 -0.0050199032 0.58724809
		 -0.0072784424 0.60564137 -0.0042380095 0.59982109 -0.0071188211 0.59311551 -0.016793489
		 0.03031683 -3.349781e-05 -4.9710274e-05 -4.452467e-05 -6.4611435e-05 -3.3318996e-05
		 -8.0645084e-05 -1.758337e-05 -6.2823296e-05 -5.0663948e-05 -3.9994717e-05 -6.1810017e-05
		 -5.865097e-05 1.1056662e-05 1.680851e-05 2.7835369e-05 6.2584877e-06 -5.6624413e-06
		 2.771616e-05 0.0016873479 0.0001270175 0.001037091 -0.0081704855 -0.0023376346 -0.0084246397
		 -0.0016873479 -0.00012713671 0.0023376048 0.0084246397 -0.0010371208 0.0081706047
		 -0.0016873777 -0.0001270771 -0.0010371208 0.0081706047 0.0023376346 0.0084247589
		 0.0016873777 0.0001270771 -0.0023376346 -0.0084247589 0.0010371208 -0.0081706047
		 0 0 0 0 0 7.4505806e-09 -7.4505806e-09 0 -1.1920929e-07 1.7881393e-07 0 -5.9604645e-08
		 0.012113333 0.024098039 0 4.1723251e-07 -3.5762787e-07 0 -0.006516099 -0.025276333
		 -0.037200928 -0.014858603 0.060449004 0.0059814453 -0.0046887398 0.037701011 0.038219452
		 -0.016853213 0.021623015 0.029556811 -0.085810304 0.0029889271 -0.0089461803 0.013685793
		 -0.052968502 0.0054315627 -0.0065207481 0.026044309 -0.013199925 0.025821447 -0.014076591
		 0.011257976 0.0083324909 0.0075393394 0.068729877 -0.0045254678;
createNode polyMapSewMove -n "polyMapSewMove31";
	rename -uid "68983F39-4AA3-8831-3EBF-7AB90BB436AE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[84]";
createNode polyMapSewMove -n "polyMapSewMove32";
	rename -uid "88B2D114-4FCD-EDF2-40AA-138FEB21E13D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[80]";
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "D027ABFD-48BF-63B9-6EEA-EA8EDBC93462";
	setAttr ".uopa" yes;
	setAttr -s 111 ".uvtk[0:110]" -type "float2" 0.75453055 -0.35044265 0.76854283
		 -0.32941771 0.7476536 -0.31495684 0.73351461 -0.33675253 0.7756564 -0.36378941 0.7898339
		 -0.34261012 0.74060011 -0.37164333 0.71954358 -0.35820553 0.76166046 -0.38507757
		 0.69844073 -0.43426746 0.71264428 -0.41385847 0.69136155 -0.40065229 0.67681277 -0.42201126
		 0.71846634 -0.45081824 0.73352647 -0.42833155 0.68445516 -0.45299262 0.66272157 -0.44556898
		 0.6986171 -0.47319478 -1.62165463 0.066611528 -0.44161576 -0.16727096 -0.44333458
		 -0.035011567 -0.39909905 -0.12668562 -0.44152945 -0.24124146 -0.42068833 -0.18814597
		 -1.078486323 0.060273111 -0.43681788 -0.1283273 -1.6650697 -0.028852522 -0.43263006
		 -0.22272751 -0.41870528 -0.29351884 -1.071963191 -0.07763952 -0.8216936 -0.32682586
		 -0.29240751 -0.31237304 -0.62035191 -0.23348165 -0.66458696 -0.14180736 -0.29249382
		 -0.23840255 -0.31333497 -0.29149795 -1.20987606 -0.084163904 -1.24170041 -0.016557634
		 -0.85315472 -0.23460674 -0.63105589 -0.045765918 -0.31531802 -0.18612513 -1.21639919
		 0.053748667 0.87028944 0.51382208 0.82889295 0.53064084 0.80289549 0.50445962 -0.36842728
		 -0.16530326 0.81151396 0.57180506 0.77461839 0.57167608 -0.36846805 -0.13574487 0.91145313
		 0.53120172 0.8283335 0.61320114 0.9282726 0.5725978 0.96516824 0.57272679 0.86949718
		 0.63058078 -0.36559612 -0.31434065 0.91089368 0.61376202 0.9368912 0.63994318 -0.36555541
		 -0.34389901 -1.14879441 0.085573912 -1.188483 0.028252542 -1.14708328 0.047805846
		 -0.53943902 -0.0014985092 -1.2039324 -0.014847755 -1.10398281 0.032357156 -1.1843797
		 -0.056248128 -1.046662092 -0.0073333383 -1.084429979 -0.0090431571 -1.13956809 -0.10946488
		 -1.1412791 -0.071696758 -1.099879384 -0.052143514 -0.52424723 -0.26699492 0.78273135
		 -0.30899766 0.79670179 -0.29026118 0.78252357 -0.27007014 0.76269311 -0.29246196
		 0.8043685 -0.32123759 0.81844121 -0.29766774 0.72666633 -0.39284116 0.70554614 -0.37948483
		 0.74768198 -0.40653598 -0.88139671 -0.15156299 -0.81902856 -0.22258943 -0.84906346
		 -0.14017466 -0.91053516 -0.068833679 -0.87820196 -0.057445377 -1.70163941 -0.10859406
		 -1.69956899 -0.013822615 -1.73306656 -0.0949018 -1.736673 -0.18900448 -1.76810002
		 -0.17531216 0.87041962 0.47692621 0.93763465 0.50520444 0.869367 0.66747659 0.80215198
		 0.63919842 -0.26293907 -0.23839289 -0.29443815 -0.16520146 -0.78933579 -0.41873038
		 -0.4710843 -0.24125111 -0.43958527 -0.3144424 -1.57977593 0.16274437 -0.78577429
		 -0.31417942 -0.7534166 -0.40608388 -1.65922642 0.082979113 -1.61734772 0.17911196
		 -0.62686813 -0.14016597 -0.6031965 -0.071254097 -0.59485716 -0.20562693 -0.52592856
		 -0.22927323 -0.46048957 -0.19723931 -0.53775752 -0.039220192 -0.4688291 -0.062866427;
createNode polyMapCut -n "polyMapCut9";
	rename -uid "9FC8F6E5-4ADF-E32F-C87B-418501541825";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[1:2]" "e[6:7]";
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "19F1C062-4FB3-A996-6FC4-E3B7716519C0";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[43]" -type "float2" -0.25741598 0 ;
	setAttr ".uvtk[44]" -type "float2" -0.25741598 0 ;
	setAttr ".uvtk[47]" -type "float2" -0.25741598 0 ;
	setAttr ".uvtk[51]" -type "float2" -0.16701394 0 ;
	setAttr ".uvtk[52]" -type "float2" -0.16701394 0 ;
	setAttr ".uvtk[54]" -type "float2" -0.16701394 0 ;
	setAttr ".uvtk[78]" -type "float2" -0.16701394 0 ;
	setAttr ".uvtk[79]" -type "float2" -0.16701394 0 ;
	setAttr ".uvtk[80]" -type "float2" -0.16701394 0 ;
	setAttr ".uvtk[81]" -type "float2" -0.25741598 0 ;
	setAttr ".uvtk[82]" -type "float2" -0.25741598 0 ;
	setAttr ".uvtk[83]" -type "float2" -0.25741598 0 ;
createNode polyMapSewMove -n "polyMapSewMove33";
	rename -uid "35E1A0F0-456F-201D-5372-F1969283AC2C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[47]";
createNode polyMapSewMove -n "polyMapSewMove34";
	rename -uid "4B8CDE07-4ED7-D896-686B-828EA3EDA0F0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[52]";
createNode polyMapCut -n "polyMapCut10";
	rename -uid "06F224B0-4964-7C7D-109E-7AAA2B0B4225";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[11]" "e[15:16]" "e[19:21]";
createNode polyMapSewMove -n "polyMapSewMove35";
	rename -uid "0DC763E9-4122-2C9E-E639-29B0F886D565";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[45]";
createNode polyMapCut -n "polyMapCut11";
	rename -uid "E5032E0B-469D-30CA-D932-1B893093AC57";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[14]";
createNode polyTweakUV -n "polyTweakUV15";
	rename -uid "F699133F-4801-A924-B1C5-B08A52FDB33E";
	setAttr ".uopa" yes;
	setAttr -s 87 ".uvtk[0:86]" -type "float2" 0.0021907091 -0.0030365437
		 0.0055556297 0.00041177869 0.00098311901 -1.3530254e-05 0.0021142662 -0.00067317486
		 0.0065656602 -0.010792673 0.0085164905 -0.019079834 0.035321116 -0.034713686 -0.0017875731
		 0.0032838285 -0.0023485422 -0.0019925535 0 0 -0.0072053671 0.0027363598 0.0010745525
		 0.0013618767 0.010749459 -0.032370925 0.0052489936 -0.0084856451 -0.0036222637 -0.0012892485
		 0 1.4901161e-08 0 1.4901161e-08 -0.0062291846 -0.0049499199 0.0006986931 -0.010711953
		 0.0013804436 -0.0069028586 0.0014343932 -0.0037165135 -0.01750648 0.0031711087 -0.019609123
		 -0.0050997473 0.0073149204 -0.006773375 0.0014865398 -0.0049809068 0 0 0 0 -0.011138747
		 0.012018032 0.002090343 0.0030754805 -0.016146302 -0.0083891731 -0.01196909 0.015304521
		 -0.0036387146 0.0037013553 0.0017035156 -0.00013041496 0 -1.4901161e-08 0.0046853498
		 -0.002984494 -0.006556958 -0.0080094356 0 0 0.00061569363 0.0008648634 0.00016403198
		 0.00073987246 -6.6503882e-05 -5.9604645e-06 -0.00016836822 0.0003785491 4.9173832e-07
		 -0.0015490651 -0.00023819506 -0.00010055304 0.0041159391 0.0019867346 0.00021973252
		 0.00042188168 -5.9723854e-05 -0.00054216385 0.00024193805 -0.00012403727 -0.00040628761
		 0.0014810562 3.3910386e-05 -0.00062304735 0.0077208281 0.027237147 -0.00033671409
		 -0.00094145536 0.0037988424 0.040843621 0 0 0 2.9802322e-08 0 -2.9802322e-08 0 -2.9802322e-08
		 0 0 0.0027714968 0.00039927661 0.0023688376 0.0011540353 0.0014535785 0.00048206747
		 0.0019008219 0.0019554943 -0.000667274 0.005300045 -0.0023289919 0.0062155724 -0.003305614
		 0.0042330623 -0.0040681958 0.0070743859 -0.0050188899 0.0050351918 -0.0048340857
		 -0.00069773197 -0.0059928894 -0.00023320317 0.0024498254 -0.0046725571 0.001301676
		 -0.0042417943 0.0037274882 -0.0041515231 -0.0011530221 -0.0022603273 -0.00036782026
		 -0.0022539496 0.00012531877 -0.0026678741 0.00066673756 -0.0033251941 -0.0098204613
		 0.027736023 -0.011188269 0.034175001 0.0032003522 -0.0074522272 -0.019218355 -0.010078982
		 -0.018156648 -0.0041007474 -0.0083430409 -0.0056248307 0.0061318874 0.012018979 0.02485168
		 -0.010123506 0.00035595894 0.010668546 0.010234132 0.0072546527 0.011361778 -0.0013192296
		 0.014570475 -0.000533849;
createNode polyMapSewMove -n "polyMapSewMove36";
	rename -uid "07BF76BD-4557-8A26-A133-7E8F388AE32D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[50]";
createNode polyTweakUV -n "polyTweakUV16";
	rename -uid "B1C75477-4544-D077-A48C-A58D0D1C0993";
	setAttr ".uopa" yes;
	setAttr -s 85 ".uvtk[0:84]" -type "float2" -0.0018112063 -0.07146696
		 -0.0022574961 -0.071845397 -0.0018249452 -0.072334722 -0.0013998747 -0.071968585
		 -0.1249634 0.7335242 -0.12648878 0.70129639 -0.12240526 0.7852475 -0.0022204816 -0.072738454
		 -0.00067707896 -0.073512971 -0.21267331 -0.14544985 -0.0013555586 -0.071117602 -0.00094220042
		 -0.071637288 -0.17009661 0.77438146 -0.13387525 0.75593865 -0.00091484189 -0.073773175
		 -0.21214354 -0.14496677 -0.21285039 -0.14508674 0.0018052459 -0.070449397 0.0012144223
		 -0.070431158 0.0012201294 -0.071080476 0.0017773472 -0.071097299 -0.13731381 0.80082649
		 -0.14305016 0.78215891 0.00062178075 -0.070460685 0.00066369772 -0.071115278 -0.21177134
		 -0.14435397 -0.21149915 -0.14465247 0.0023787422 -0.07049834 0.0023375719 -0.07116323
		 -0.14975581 0.77343285 -0.1405251 0.82843781 -0.14710717 0.7791422 0.00010612607
		 -0.071201153 -0.21216172 -0.14425002 0.0019531287 -0.072797924 -0.15107703 0.77071702
		 -0.21254635 -0.14437363 0.65724659 -0.66168737 0.65708154 -0.66183573 0.6574167 -0.66204274
		 0.65702277 -0.66204977 0.65746576 -0.66165185 0.65708911 -0.66226161 -0.13051638
		 0.78771597 0.65766925 -0.66174048 0.65725946 -0.66240394 0.65779257 -0.66192496 0.6574797
		 -0.66243154 0.65779656 -0.66214693 -0.1069096 0.90643579 0.65767998 -0.66233575 -0.21280307
		 -0.14468555 -0.21232802 -0.14565957 -0.21192417 -0.14564933 -0.21158996 -0.14542237
		 -0.21143153 -0.14505076 -0.00014349818 -0.070588447 -0.00067573786 -0.070798591 -0.00041586161
		 -0.071424581 -0.0012001395 -0.071027532 -0.002782464 -0.072391301 -0.0030874014 -0.072875232
		 -0.0025308728 -0.073212951 -0.003377974 -0.073372781 -0.0028041005 -0.073710114 -0.0011171103
		 -0.074064046 -0.0012799203 -0.074376464 0.0012447312 -0.072722912 0.00088900328 -0.072747052
		 0.0016019344 -0.072739735 -0.00040635467 -0.073282003 -0.000110358 -0.07308501 0.00020745397
		 -0.072928131 0.00054310262 -0.072814494 -0.15914923 0.85895312 -0.14487323 0.76712322
		 -0.12145665 0.77015203 -0.14267284 0.76797628 -0.097017169 0.79592973 -0.08712095
		 0.84509045 -0.05842942 0.68136108 -0.0026787519 -0.072245151 4.1738153e-05 -0.070525937
		 -0.099439263 0.77818644 -0.069214374 0.74193895;
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
	setAttr -s 2 ".dsm";
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
connectAttr "polyTweakUV16.out" "pSphereShape1.i";
connectAttr "polyTweakUV16.uvtk[0]" "pSphereShape1.uvst[0].uvtw";
connectAttr "polyTweakUV13.out" "pTorusShape1.i";
connectAttr "polyTweakUV13.uvtk[0]" "pTorusShape1.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polyMapDel1.ip";
connectAttr "polySphere1.out" "polyTweak1.ip";
connectAttr "polyMapDel1.out" "polyMapDel2.ip";
connectAttr "polyTorus1.out" "polyMapDel3.ip";
connectAttr "polyMapDel2.out" "polyAutoProj1.ip";
connectAttr "pSphereShape1.wm" "polyAutoProj1.mp";
connectAttr "polyMapDel3.out" "polyAutoProj2.ip";
connectAttr "pTorusShape1.wm" "polyAutoProj2.mp";
connectAttr "polyAutoProj2.out" "polyTweakUV1.ip";
connectAttr "polyAutoProj1.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapSewMove1.ip";
connectAttr "polyMapSewMove1.out" "polyMapSewMove2.ip";
connectAttr "polyMapSewMove2.out" "polyMapSewMove3.ip";
connectAttr "polyMapSewMove3.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyMapSewMove4.ip";
connectAttr "polyMapSewMove4.out" "polyMapSewMove5.ip";
connectAttr "polyMapSewMove5.out" "polyMapSewMove6.ip";
connectAttr "polyMapSewMove6.out" "polyMapSewMove7.ip";
connectAttr "polyMapSewMove7.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyTweakUV5.ip";
connectAttr "polyTweakUV5.out" "polyMapSewMove8.ip";
connectAttr "polyMapSewMove8.out" "polyMapSewMove9.ip";
connectAttr "polyMapSewMove9.out" "polyMapSewMove10.ip";
connectAttr "polyMapSewMove10.out" "polyMapSewMove11.ip";
connectAttr "polyMapSewMove11.out" "polyMapSewMove12.ip";
connectAttr "polyMapSewMove12.out" "polyMapSewMove13.ip";
connectAttr "polyMapSewMove13.out" "polyMapSewMove14.ip";
connectAttr "polyMapSewMove14.out" "polyMapSewMove15.ip";
connectAttr "polyMapSewMove15.out" "polyTweakUV6.ip";
connectAttr "polyTweakUV1.out" "polyMapSewMove16.ip";
connectAttr "polyMapSewMove16.out" "polyMapSewMove17.ip";
connectAttr "polyMapSewMove17.out" "polyTweakUV7.ip";
connectAttr "polyTweakUV7.out" "polyMapSewMove18.ip";
connectAttr "polyMapSewMove18.out" "polyMapSewMove19.ip";
connectAttr "polyMapSewMove19.out" "polyMapSewMove20.ip";
connectAttr "polyMapSewMove20.out" "polyMapSewMove21.ip";
connectAttr "polyMapSewMove21.out" "polyTweakUV8.ip";
connectAttr "polyTweakUV8.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV9.out" "polyMapSewMove22.ip";
connectAttr "polyMapSewMove22.out" "polyMapSewMove23.ip";
connectAttr "polyMapSewMove23.out" "polyMapSewMove24.ip";
connectAttr "polyMapSewMove24.out" "polyMapSewMove25.ip";
connectAttr "polyMapSewMove25.out" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyTweakUV10.ip";
connectAttr "polyTweakUV10.out" "polyMapSewMove26.ip";
connectAttr "polyMapSewMove26.out" "polyMapSewMove27.ip";
connectAttr "polyMapSewMove27.out" "polyMapSewMove28.ip";
connectAttr "polyMapSewMove28.out" "polyMapSewMove29.ip";
connectAttr "polyMapSewMove29.out" "polyMapSewMove30.ip";
connectAttr "polyMapSewMove30.out" "polyMapCut7.ip";
connectAttr "polyMapCut7.out" "polyTweakUV11.ip";
connectAttr "polyTweakUV11.out" "polyMapCut8.ip";
connectAttr "polyMapCut8.out" "polyTweakUV12.ip";
connectAttr "polyTweakUV12.out" "polyMapSewMove31.ip";
connectAttr "polyMapSewMove31.out" "polyMapSewMove32.ip";
connectAttr "polyMapSewMove32.out" "polyTweakUV13.ip";
connectAttr "polyTweakUV6.out" "polyMapCut9.ip";
connectAttr "polyMapCut9.out" "polyTweakUV14.ip";
connectAttr "polyTweakUV14.out" "polyMapSewMove33.ip";
connectAttr "polyMapSewMove33.out" "polyMapSewMove34.ip";
connectAttr "polyMapSewMove34.out" "polyMapCut10.ip";
connectAttr "polyMapCut10.out" "polyMapSewMove35.ip";
connectAttr "polyMapSewMove35.out" "polyMapCut11.ip";
connectAttr "polyMapCut11.out" "polyTweakUV15.ip";
connectAttr "polyTweakUV15.out" "polyMapSewMove36.ip";
connectAttr "polyMapSewMove36.out" "polyTweakUV16.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape1.iog" ":initialShadingGroup.dsm" -na;
// End of Dropfender.0002.ma
