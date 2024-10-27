//Maya ASCII 2022 scene
//Name: anim_test.ma
//Last modified: Mon, Oct 28, 2024 03:45:48 AM
//Codeset: 932
file -rdi 1 -ns ":" -rfn "rig_testRN" -op "v=0;" -typ "mayaAscii" "C:/Users/ne1b1/OneDrive/Data/Maya/dev/nkBdnTool/test/rig_test.ma";
file -r -ns ":" -dr 1 -rfn "rig_testRN" -op "v=0;" -typ "mayaAscii" "C:/Users/ne1b1/OneDrive/Data/Maya/dev/nkBdnTool/test/rig_test.ma";
requires maya "2022";
requires -nodeType "floatMath" "lookdevKit" "1.0";
requires "stereoCamera" "10.0";
requires "mtoa" "5.0.0.4";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202405021833-753375ecb3";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "51AE8BA6-4E66-25E4-8C57-DE8C01626965";
createNode transform -s -n "persp";
	rename -uid "FCE949ED-4DD8-56E3-D789-7D805122D2F7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 26.308853426130753 29.403865543903585 49.026109262016043 ;
	setAttr ".r" -type "double3" -21.338352729634551 14.200000000003214 4.1009979079888194e-16 ;
	setAttr ".rp" -type "double3" -2.4632379982171654e-15 -1.434606823691251e-15 0 ;
	setAttr ".rpt" -type "double3" -3.1265279752400246e-15 -1.3292219494425984e-15 2.5308826424364661e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "523104FE-4D29-8942-1114-A1B98DF1ADC2";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 59.950556950079395;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 4.4351057680130008 0.045902907848358154 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "D9EF84F7-4ABD-B21C-FCC2-78AB35F58215";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "D56C531A-40C2-0E65-75DE-FABABABF3CF4";
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
	rename -uid "079500D2-48AA-D125-175F-BAB9A2B2F900";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "08459E03-4B88-C690-75AE-D1BEC0CCD30C";
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
	rename -uid "272262AD-4890-7E87-7A7E-98AE9C2487D7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "78637CEA-4A95-D6C2-7B1B-58916261EF75";
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
createNode transform -n "BDN_Test";
	rename -uid "2E803D50-4280-982E-701E-B1B5CEEAB5B9";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr -l on ".bdnData" -type "string" "type=\"bdn\";";
createNode transform -n "Collider_GRP" -p "BDN_Test";
	rename -uid "0AF7CAB0-4BFD-FD02-C65B-5B83033FAA7D";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr -l on ".bdnData" -type "string" "type=\"colliderGroup\";";
createNode transform -n "InfinitePlaneCollider_SPC" -p "Collider_GRP";
	rename -uid "A07CECE2-480A-CFBC-3139-A7A148E15954";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "colliderSource" -ln "colliderSource" -at "message";
	addAttr -uap -ci true -k true -sn "colliderWidth" -ln "colliderWidth" -dv 1 -min 
		0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderHeight" -ln "colliderHeight" -dv 1 -min 
		0.001 -at "double";
	setAttr ".t" -type "double3" 0 -4 0 ;
	setAttr ".r" -type "double3" 0 0 -29.999999999999996 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"space\";spaceType=\"collider\";";
	setAttr -av -k on ".colliderWidth";
	setAttr -av -k on ".colliderHeight";
createNode transform -n "InfinitePlaneCollider" -p "InfinitePlaneCollider_SPC";
	rename -uid "20DDF310-442C-B5A5-38D4-4582ED71A79A";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -m -sn "colliderAffectedBy" -ln "colliderAffectedBy" -at "message";
	addAttr -ci true -k true -sn "colliderWidth" -ln "colliderWidth" -dv 1 -min 0.001 
		-at "double";
	addAttr -ci true -k true -sn "colliderHeight" -ln "colliderHeight" -dv 1 -min 0.001 
		-at "double";
	setAttr -l on ".bdnData" -type "string" "type=\"collider\";colliderType=\"infinitePlane\";";
	setAttr -s 3 ".colliderAffectedBy";
	setAttr -k on ".colliderWidth" 40;
	setAttr -k on ".colliderHeight" 20;
createNode nurbsSurface -n "InfinitePlaneColliderShape" -p "InfinitePlaneCollider";
	rename -uid "65FE0196-4A88-0B24-2775-B6A35371C3E9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "SphereCollider_SPC" -p "Collider_GRP";
	rename -uid "5AE4E637-4BE6-23DD-00CA-1396A428A4E3";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "colliderSource" -ln "colliderSource" -at "message";
	addAttr -uap -ci true -k true -sn "colliderRadius" -ln "colliderRadius" -dv 0.5 
		-min 0.001 -at "double";
	setAttr ".t" -type "double3" -3 -3 1 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"space\";spaceType=\"collider\";";
	setAttr -av -k on ".colliderRadius";
createNode transform -n "SphereCollider" -p "SphereCollider_SPC";
	rename -uid "70BA6716-4D37-1268-1DAB-85816C8A2199";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -m -sn "colliderAffectedBy" -ln "colliderAffectedBy" -at "message";
	addAttr -ci true -k true -sn "colliderRadius" -ln "colliderRadius" -dv 0.5 -min 
		0.001 -at "double";
	setAttr -l on ".bdnData" -type "string" "type=\"collider\";colliderType=\"sphere\";";
	setAttr -s 2 ".colliderAffectedBy";
	setAttr -k on ".colliderRadius" 4;
createNode nurbsSurface -n "SphereColliderShape" -p "SphereCollider";
	rename -uid "2A252B22-49AE-FC60-2636-488604253C0D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "CapsuleCollider_SPC" -p "Collider_GRP";
	rename -uid "58025E8D-470C-EB58-62AE-5F9F9B4232C6";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "colliderSource" -ln "colliderSource" -at "message";
	addAttr -uap -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -min 
		0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderOffset" -ln "colliderOffset" -at "double";
	addAttr -uap -ci true -k true -sn "colliderPivot" -ln "colliderPivot" -min 0 -max 
		2 -en "A:Center:B" -at "enum";
	setAttr ".t" -type "double3" 0.90174118159785221 -5 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"space\";spaceType=\"collider\";";
	setAttr -av -k on ".colliderRadiusA";
	setAttr -av -k on ".colliderRadiusB";
	setAttr -av -k on ".colliderLength";
	setAttr -k on ".colliderOffset";
	setAttr -k on ".colliderPivot";
createNode transform -n "CapsuleCollider" -p "CapsuleCollider_SPC";
	rename -uid "2CE6DA80-4750-B8B2-B7AF-2989D2342166";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -m -sn "colliderAffectedBy" -ln "colliderAffectedBy" -at "message";
	addAttr -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 -min 
		0.001 -at "double";
	addAttr -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 -min 
		0.001 -at "double";
	addAttr -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -min 0.001 
		-at "double";
	addAttr -ci true -k true -sn "colliderOffset" -ln "colliderOffset" -at "double";
	addAttr -ci true -k true -sn "colliderPivot" -ln "colliderPivot" -min 0 -max 2 -en 
		"A:Center:B" -at "enum";
	addAttr -ci true -h true -k true -sn "colliderMatrixA" -ln "colliderMatrixA" -at "matrix";
	addAttr -ci true -h true -k true -sn "colliderMatrixB" -ln "colliderMatrixB" -at "matrix";
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"collider\";colliderType=\"capsule\";";
	setAttr -s 19 ".colliderAffectedBy";
	setAttr -k on ".colliderRadiusA" 4;
	setAttr -k on ".colliderRadiusB" 4;
	setAttr -k on ".colliderLength" 27;
	setAttr -k on ".colliderOffset";
	setAttr -k on ".colliderPivot" 1;
	setAttr -k on ".colliderMatrixA";
	setAttr -k on ".colliderMatrixB";
createNode transform -n "CapsuleCollider_SphereA" -p "CapsuleCollider";
	rename -uid "A8B18269-47EF-9CD1-0865-03A27068D1A4";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -min 
		0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderOffset" -ln "colliderOffset" -at "double";
	addAttr -uap -ci true -k true -sn "colliderPivot" -ln "colliderPivot" -min 0 -max 
		2 -en "A:Center:B" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".bdnData" -type "string" "type=\"colliderComponent\";";
	setAttr -k on ".colliderRadiusA";
	setAttr -k on ".colliderRadiusB";
	setAttr -k on ".colliderLength";
	setAttr -k on ".colliderOffset";
	setAttr -k on ".colliderPivot";
createNode nurbsSurface -n "CapsuleCollider_SphereAShape" -p "CapsuleCollider_SphereA";
	rename -uid "458226C6-4684-9F06-5086-E3BF754600B2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".mb" no;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".vis" no;
	setAttr ".tw" yes;
	setAttr ".ds" no;
	setAttr ".smo" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "CapsuleCollider_SphereB" -p "CapsuleCollider";
	rename -uid "4BA8BAAB-4733-071E-BB58-29BCF0F0D567";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -min 
		0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderOffset" -ln "colliderOffset" -at "double";
	addAttr -uap -ci true -k true -sn "colliderPivot" -ln "colliderPivot" -min 0 -max 
		2 -en "A:Center:B" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".bdnData" -type "string" "type=\"colliderComponent\";";
	setAttr -k on ".colliderRadiusA";
	setAttr -k on ".colliderRadiusB";
	setAttr -k on ".colliderLength";
	setAttr -k on ".colliderOffset";
	setAttr -k on ".colliderPivot";
createNode nurbsSurface -n "CapsuleCollider_SphereBShape" -p "CapsuleCollider_SphereB";
	rename -uid "6FD79F79-464B-30A3-1624-6399B5E818F4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".mb" no;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".vis" no;
	setAttr ".tw" yes;
	setAttr ".ds" no;
	setAttr ".smo" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "CapsuleCollider_CircleA" -p "CapsuleCollider";
	rename -uid "575EAE55-44A3-18A0-E112-8CA8EE910FFC";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -min 
		0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderOffset" -ln "colliderOffset" -at "double";
	addAttr -uap -ci true -k true -sn "colliderPivot" -ln "colliderPivot" -min 0 -max 
		2 -en "A:Center:B" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".bdnData" -type "string" "type=\"colliderComponent\";";
	setAttr -k on ".colliderRadiusA";
	setAttr -k on ".colliderRadiusB";
	setAttr -k on ".colliderLength";
	setAttr -k on ".colliderOffset";
	setAttr -k on ".colliderPivot";
createNode nurbsCurve -n "CapsuleCollider_CircleAShape" -p "CapsuleCollider_CircleA";
	rename -uid "685C3996-4B22-E998-23FF-DA8A7001877A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
createNode transform -n "CapsuleCollider_CircleB" -p "CapsuleCollider";
	rename -uid "96A5EACE-4990-3ADE-92B9-00A3C29F32F9";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -min 
		0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderOffset" -ln "colliderOffset" -at "double";
	addAttr -uap -ci true -k true -sn "colliderPivot" -ln "colliderPivot" -min 0 -max 
		2 -en "A:Center:B" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".bdnData" -type "string" "type=\"colliderComponent\";";
	setAttr -k on ".colliderRadiusA";
	setAttr -k on ".colliderRadiusB";
	setAttr -k on ".colliderLength";
	setAttr -k on ".colliderOffset";
	setAttr -k on ".colliderPivot";
createNode nurbsCurve -n "CapsuleCollider_CircleBShape" -p "CapsuleCollider_CircleB";
	rename -uid "EBB52342-46F8-CAB6-2DBE-29AB125099EC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
createNode transform -n "CapsuleCollider_Loft" -p "CapsuleCollider";
	rename -uid "51FB3642-42BE-329F-6B71-20937E228E40";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -min 
		0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderOffset" -ln "colliderOffset" -at "double";
	addAttr -uap -ci true -k true -sn "colliderPivot" -ln "colliderPivot" -min 0 -max 
		2 -en "A:Center:B" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".bdnData" -type "string" "type=\"colliderComponent\";";
	setAttr -k on ".colliderRadiusA";
	setAttr -k on ".colliderRadiusB";
	setAttr -k on ".colliderLength";
	setAttr -k on ".colliderOffset";
	setAttr -k on ".colliderPivot";
createNode nurbsSurface -n "CapsuleCollider_LoftShape" -p "CapsuleCollider_Loft";
	rename -uid "B084F000-40CF-3543-2611-C09A66EFE97E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".mb" no;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".vis" no;
	setAttr ".tw" yes;
	setAttr ".ds" no;
	setAttr ".smo" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "forceVector";
	rename -uid "12EEE710-431E-4E97-4C1C-A48F7B08A58D";
	addAttr -ci true -sn "st" -ln "shapeTranslate" -at "double3" -nc 3;
	addAttr -ci true -sn "stx" -ln "shapeTranslateX" -at "doubleLinear" -p "shapeTranslate";
	addAttr -ci true -sn "sty" -ln "shapeTranslateY" -at "doubleLinear" -p "shapeTranslate";
	addAttr -ci true -sn "stz" -ln "shapeTranslateZ" -at "doubleLinear" -p "shapeTranslate";
	addAttr -ci true -sn "sr" -ln "shapeRotate" -at "double3" -nc 3;
	addAttr -ci true -sn "srx" -ln "shapeRotateX" -at "doubleAngle" -p "shapeRotate";
	addAttr -ci true -sn "sry" -ln "shapeRotateY" -at "doubleAngle" -p "shapeRotate";
	addAttr -ci true -sn "srz" -ln "shapeRotateZ" -at "doubleAngle" -p "shapeRotate";
	addAttr -ci true -sn "ss" -ln "shapeScale" -at "double3" -nc 3;
	addAttr -ci true -sn "ssx" -ln "shapeScaleX" -at "double" -p "shapeScale";
	addAttr -ci true -sn "ssy" -ln "shapeScaleY" -at "double" -p "shapeScale";
	addAttr -ci true -sn "ssz" -ln "shapeScaleZ" -at "double" -p "shapeScale";
	addAttr -ci true -sn "cn" -ln "curveName" -dt "string";
	setAttr ".t" -type "double3" -3 2.558979641843651 1 ;
	setAttr ".r" -type "double3" 59.999999999999993 0 90 ;
	setAttr -l on ".stx";
	setAttr -l on ".sty";
	setAttr -l on ".stz";
	setAttr -l on ".srx";
	setAttr -l on ".sry";
	setAttr -l on ".srz";
	setAttr ".ss" -type "double3" 1 4 1 ;
	setAttr -l on ".ssx";
	setAttr -l on ".ssy";
	setAttr -l on ".ssz";
	setAttr -l on ".cn" -type "string" "Pyramid(Diamond)";
createNode nurbsCurve -n "forceVectorShape" -p "forceVector";
	rename -uid "037DE7B8-44B5-3359-89EB-90944B24A775";
	addAttr -ci true -sn "sc" -ln "sourceCurve" -dt "nurbsCurve";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		0 0 1
		1 0 0
		0 4 0
		0 0 1
		-1 0 0
		0 4 0
		0 0 -1
		-1 0 0
		0 0 -1
		1 0 0
		;
	setAttr ".sc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		0 0 1
		1 0 0
		0 1 0
		0 0 1
		-1 0 0
		0 1 0
		0 0 -1
		-1 0 0
		0 0 -1
		1 0 0
		;
createNode transform -n "pTorus1";
	rename -uid "AB2DC1C4-4E26-BB15-FE2A-D8BDF61B0E7E";
	setAttr ".t" -type "double3" 12 -4 -3 ;
createNode mesh -n "pTorusShape1" -p "pTorus1";
	rename -uid "549DB472-4CF0-1697-9966-DCB603D9839E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "FD5F3839-405C-8EDD-B5EF-718A142DF091";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "AFA0A533-484C-B9EB-F10B-13901B8F6E93";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "BFC111A5-494B-AD8E-6543-4F9DCFE0F320";
createNode displayLayerManager -n "layerManager";
	rename -uid "F39CEEDF-42C6-10E1-6509-2DBC47C2CD72";
createNode displayLayer -n "defaultLayer";
	rename -uid "54A0A038-424D-0E77-CA90-50BF334C2F8B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A59B85E7-4391-971D-C148-88BADD1DA6BC";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B3E53397-4EBD-4C56-FC51-BD95CD8291F8";
	setAttr ".g" yes;
createNode reference -n "rig_testRN";
	rename -uid "D6697BA1-4AA3-EFFC-59C5-88AF007400CF";
	setAttr -s 33 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"rig_testRN"
		"rig_testRN" 9
		5 3 "rig_testRN" "|RIG_Test|MOD_L_Hair|CTL_L_Hair_GRP|CTL_l_hair1_IDT|CTL_l_hair1.instObjGroups" 
		"rig_testRN.placeHolderList[1]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_L_Hair|CTL_L_Hair_GRP|CTL_l_hair1_IDT|CTL_l_hair1|CTL_l_hair2_IDT|CTL_l_hair2.instObjGroups" 
		"rig_testRN.placeHolderList[2]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_L_Hair|CTL_L_Hair_GRP|CTL_l_hair1_IDT|CTL_l_hair1|CTL_l_hair2_IDT|CTL_l_hair2|CTL_l_hair3_IDT|CTL_l_hair3.instObjGroups" 
		"rig_testRN.placeHolderList[3]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_L_Hair|CTL_L_Hair_GRP|CTL_l_hair1_IDT|CTL_l_hair1|CTL_l_hair2_IDT|CTL_l_hair2|CTL_l_hair3_IDT|CTL_l_hair3|CTL_l_hair4_IDT|CTL_l_hair4.instObjGroups" 
		"rig_testRN.placeHolderList[4]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_L_Hair|CTL_L_Hair_GRP|CTL_l_hair1_IDT|CTL_l_hair1|CTL_l_hair2_IDT|CTL_l_hair2|CTL_l_hair3_IDT|CTL_l_hair3|CTL_l_hair4_IDT|CTL_l_hair4|CTL_l_hair5_IDT|CTL_l_hair5.instObjGroups" 
		"rig_testRN.placeHolderList[5]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_R_Hair|CTL_R_Hair_GRP|CTL_r_hair1_IDT|CTL_r_hair1.instObjGroups" 
		"rig_testRN.placeHolderList[6]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_R_Hair|CTL_R_Hair_GRP|CTL_r_hair1_IDT|CTL_r_hair1|CTL_r_hair2_IDT|CTL_r_hair2.instObjGroups" 
		"rig_testRN.placeHolderList[7]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_R_Hair|CTL_R_Hair_GRP|CTL_r_hair1_IDT|CTL_r_hair1|CTL_r_hair2_IDT|CTL_r_hair2|CTL_r_hair3_IDT|CTL_r_hair3.instObjGroups" 
		"rig_testRN.placeHolderList[8]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_R_Hair|CTL_R_Hair_GRP|CTL_r_hair1_IDT|CTL_r_hair1|CTL_r_hair2_IDT|CTL_r_hair2|CTL_r_hair3_IDT|CTL_r_hair3|CTL_r_hair4_IDT|CTL_r_hair4.instObjGroups" 
		"rig_testRN.placeHolderList[9]" ""
		"rig_testRN" 27
		2 "|RIG_Test|MOD_Root|CTL_Root_GRP|CTL_RootGlobal_IDT|CTL_RootGlobal" "translate" 
		" -type \"double3\" 0 0 0"
		2 "|RIG_Test|MOD_ChainD|CTL_ChainD_GRP|CTL_chainD1_IDT|CTL_chainD1|CTL_chainD2_IDT|CTL_chainD2|CTL_chainD3_IDT|CTL_chainD3|CTL_chainD6_IDT|CTL_chainD6" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "mdl_joint" "visibility" " 1"
		5 3 "rig_testRN" "|RIG_Test|MOD_ChainA|CTL_ChainA_GRP|CTL_chainA1_IDT|CTL_chainA1.instObjGroups" 
		"rig_testRN.placeHolderList[10]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_ChainA|CTL_ChainA_GRP|CTL_chainA1_IDT|CTL_chainA1|CTL_chainA2_IDT|CTL_chainA2.instObjGroups" 
		"rig_testRN.placeHolderList[11]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_ChainA|CTL_ChainA_GRP|CTL_chainA1_IDT|CTL_chainA1|CTL_chainA2_IDT|CTL_chainA2|CTL_chainA3_IDT|CTL_chainA3.instObjGroups" 
		"rig_testRN.placeHolderList[12]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_ChainA|CTL_ChainA_GRP|CTL_chainA1_IDT|CTL_chainA1|CTL_chainA2_IDT|CTL_chainA2|CTL_chainA3_IDT|CTL_chainA3|CTL_chainA4_IDT|CTL_chainA4.instObjGroups" 
		"rig_testRN.placeHolderList[13]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_ChainA|CTL_ChainA_GRP|CTL_chainA1_IDT|CTL_chainA1|CTL_chainA2_IDT|CTL_chainA2|CTL_chainA3_IDT|CTL_chainA3|CTL_chainA4_IDT|CTL_chainA4|CTL_chainA5_IDT|CTL_chainA5.instObjGroups" 
		"rig_testRN.placeHolderList[14]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_ChainA|CTL_ChainA_GRP|CTL_chainA1_IDT|CTL_chainA1|CTL_chainA2_IDT|CTL_chainA2|CTL_chainA3_IDT|CTL_chainA3|CTL_chainA4_IDT|CTL_chainA4|CTL_chainA5_IDT|CTL_chainA5|CTL_chainA6_IDT|CTL_chainA6.instObjGroups" 
		"rig_testRN.placeHolderList[15]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_ChainB|CTL_ChainB_GRP|CTL_chainB1_IDT|CTL_chainB1.instObjGroups" 
		"rig_testRN.placeHolderList[16]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_ChainB|CTL_ChainB_GRP|CTL_chainB1_IDT|CTL_chainB1|CTL_chainB2_IDT|CTL_chainB2.instObjGroups" 
		"rig_testRN.placeHolderList[17]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_ChainB|CTL_ChainB_GRP|CTL_chainB1_IDT|CTL_chainB1|CTL_chainB2_IDT|CTL_chainB2|CTL_chainB3_IDT|CTL_chainB3.instObjGroups" 
		"rig_testRN.placeHolderList[18]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_ChainB|CTL_ChainB_GRP|CTL_chainB1_IDT|CTL_chainB1|CTL_chainB2_IDT|CTL_chainB2|CTL_chainB3_IDT|CTL_chainB3|CTL_chainB4_IDT|CTL_chainB4.instObjGroups" 
		"rig_testRN.placeHolderList[19]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_ChainB|CTL_ChainB_GRP|CTL_chainB1_IDT|CTL_chainB1|CTL_chainB2_IDT|CTL_chainB2|CTL_chainB3_IDT|CTL_chainB3|CTL_chainB4_IDT|CTL_chainB4|CTL_chainB5_IDT|CTL_chainB5.instObjGroups" 
		"rig_testRN.placeHolderList[20]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_ChainC|CTL_ChainC_GRP|CTL_chainC1_IDT|CTL_chainC1.instObjGroups" 
		"rig_testRN.placeHolderList[21]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_ChainD|CTL_ChainD_GRP|CTL_chainD1_IDT|CTL_chainD1.instObjGroups" 
		"rig_testRN.placeHolderList[22]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_ChainD|CTL_ChainD_GRP|CTL_chainD1_IDT|CTL_chainD1|CTL_chainD2_IDT|CTL_chainD2.instObjGroups" 
		"rig_testRN.placeHolderList[23]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_ChainD|CTL_ChainD_GRP|CTL_chainD1_IDT|CTL_chainD1|CTL_chainD2_IDT|CTL_chainD2|CTL_chainD3_IDT|CTL_chainD3.instObjGroups" 
		"rig_testRN.placeHolderList[24]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_ChainD|CTL_ChainD_GRP|CTL_chainD1_IDT|CTL_chainD1|CTL_chainD2_IDT|CTL_chainD2|CTL_chainD3_IDT|CTL_chainD3|CTL_chainD4_IDT|CTL_chainD4.instObjGroups" 
		"rig_testRN.placeHolderList[25]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_ChainD|CTL_ChainD_GRP|CTL_chainD1_IDT|CTL_chainD1|CTL_chainD2_IDT|CTL_chainD2|CTL_chainD3_IDT|CTL_chainD3|CTL_chainD4_IDT|CTL_chainD4|CTL_chainD5_IDT|CTL_chainD5.instObjGroups" 
		"rig_testRN.placeHolderList[26]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_ChainD|CTL_ChainD_GRP|CTL_chainD1_IDT|CTL_chainD1|CTL_chainD2_IDT|CTL_chainD2|CTL_chainD3_IDT|CTL_chainD3|CTL_chainD6_IDT|CTL_chainD6.instObjGroups" 
		"rig_testRN.placeHolderList[27]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_ChainD|CTL_ChainD_GRP|CTL_chainD1_IDT|CTL_chainD1|CTL_chainD2_IDT|CTL_chainD2|CTL_chainD3_IDT|CTL_chainD3|CTL_chainD6_IDT|CTL_chainD6|CTL_chainD7_IDT|CTL_chainD7.instObjGroups" 
		"rig_testRN.placeHolderList[28]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_ChainD|CTL_ChainD_GRP|CTL_chainD1_IDT|CTL_chainD1|CTL_chainD2_IDT|CTL_chainD2|CTL_chainD3_IDT|CTL_chainD3|CTL_chainD6_IDT|CTL_chainD6|CTL_chainD7_IDT|CTL_chainD7|CTL_chainD8_IDT|CTL_chainD8.instObjGroups" 
		"rig_testRN.placeHolderList[29]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_ChainE|CTL_ChainE_GRP|CTL_chainE1_IDT|CTL_chainE1.instObjGroups" 
		"rig_testRN.placeHolderList[30]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_ChainE|CTL_ChainE_GRP|CTL_chainE1_IDT|CTL_chainE1|CTL_chainE2_IDT|CTL_chainE2.instObjGroups" 
		"rig_testRN.placeHolderList[31]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_ChainE|CTL_ChainE_GRP|CTL_chainE1_IDT|CTL_chainE1|CTL_chainE2_IDT|CTL_chainE2|CTL_chainE3_IDT|CTL_chainE3.instObjGroups" 
		"rig_testRN.placeHolderList[32]" ""
		5 3 "rig_testRN" "|RIG_Test|MOD_ChainE|CTL_ChainE_GRP|CTL_chainE1_IDT|CTL_chainE1|CTL_chainE4_IDT|CTL_chainE4.instObjGroups" 
		"rig_testRN.placeHolderList[33]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode1";
	rename -uid "77A98ED5-47A6-70EA-13E9-169484DC2BB5";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n"
		+ "            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n"
		+ "            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n"
		+ "            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"updateModelPanelBar\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1078\n            -height 1092\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"|persp\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n"
		+ "                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n"
		+ "                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1078\\n    -height 1092\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1078\\n    -height 1092\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode1";
	rename -uid "9D1ED8A9-43CD-2CA4-5425-3CB8C27865E4";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 30 ";
	setAttr ".st" 6;
createNode objectSet -n "Set_L_Hair";
	rename -uid "EEC68DB1-456F-0910-2615-1A90F04DC492";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode objectSet -n "Set_R_Hair";
	rename -uid "ABC74EC7-4E97-793F-051F-62B44606C06A";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode objectSet -n "Set_ChainA";
	rename -uid "424663BE-49E0-EEAF-AF9C-A1AF48870ED0";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode objectSet -n "Set_ChainB";
	rename -uid "5EACDF9B-498F-F592-1A86-0DBF111D7EA1";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode objectSet -n "Set_ChainC";
	rename -uid "8D5F94F3-415E-8152-44FE-94A39D467CE1";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "gCharacterSet";
createNode objectSet -n "Set_ChainD";
	rename -uid "7D32631E-49BC-8A2E-E2AF-0889FF5E2C45";
	setAttr ".ihi" 0;
	setAttr -s 8 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode objectSet -n "Set_ChainE";
	rename -uid "6128152A-4D1C-BA6B-F86B-39934F91CFBF";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode makeNurbPlane -n "makeNurbPlane1";
	rename -uid "99E435F5-4CF2-0F89-568E-4B9CC35DBA39";
	setAttr ".ax" -type "double3" 0 1 0 ;
createNode floatMath -n "InfinitePlaneCollider_ratio";
	rename -uid "8DCDAA00-48E0-9902-A356-BB8CE8835542";
	setAttr "._cnd" 3;
createNode makeNurbSphere -n "makeNurbSphere1";
	rename -uid "A253258B-42F6-0199-AF66-A5A02A8A9869";
	setAttr ".ax" -type "double3" 0 1 0 ;
createNode makeNurbSphere -n "makeNurbSphere2";
	rename -uid "1350FA46-466C-9C30-30F3-D8BAADB138C2";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".ssw" 90;
	setAttr ".esw" 270;
	setAttr ".s" 4;
createNode makeNurbSphere -n "makeNurbSphere3";
	rename -uid "49451276-435E-2ED7-65AF-BEA1EC9778F3";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".ssw" -90;
	setAttr ".esw" 90;
	setAttr ".s" 4;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "9BD5F7EF-4957-9E92-84AD-A4BBEF82A180";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "C6489B70-4635-5E82-A5CC-F3B4F55FAC3B";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode loft -n "loft1";
	rename -uid "C28C29E0-4E1F-4DA2-738E-509FE4F6102D";
	setAttr -s 2 ".ic";
createNode floatMath -n "CapsuleCollider_halfLength";
	rename -uid "4191E4E9-47A0-78AC-5A45-E4A4E3565CDD";
	setAttr -l on "._fb" -0.5;
	setAttr "._cnd" 2;
createNode floatMath -n "CapsuleCollider_pivot";
	rename -uid "17320A4E-44D5-5FD9-E5C1-D8AC21C0505B";
	setAttr "._cnd" 2;
createNode floatMath -n "CapsuleCollider_offsetA";
	rename -uid "ECA660AB-4C4B-FCED-72AE-2CA6E4C8192B";
createNode floatMath -n "CapsuleCollider_offsetB";
	rename -uid "39DBE6BE-4418-CC7D-F468-13A8D87D028C";
createNode polyTorus -n "polyTorus1";
	rename -uid "A2DDF35D-4CFD-BCDB-91D2-34B2DF9D0D0C";
	setAttr ".r" 6;
	setAttr ".sr" 3;
	setAttr ".sa" 40;
select -ne :time1;
	setAttr -av -cb on ".cch";
	setAttr -av -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 0;
	setAttr -av -k on ".unw";
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".fzn";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k on ".rm";
	setAttr -av -k on ".lm";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -av -k on ".hom";
	setAttr -av -k on ".hodm";
	setAttr -av -k on ".xry";
	setAttr -av -k on ".jxr";
	setAttr -av -k on ".sslt";
	setAttr -av -k on ".cbr";
	setAttr -av -k on ".bbr";
	setAttr -av -k on ".mhl";
	setAttr -k on ".cons";
	setAttr -k on ".vac";
	setAttr -av -k on ".hwi";
	setAttr -k on ".csvd";
	setAttr -av -k on ".ta";
	setAttr -av -k on ".tq";
	setAttr -k on ".ts";
	setAttr -av -k on ".etmr";
	setAttr -av -k on ".tmr";
	setAttr -av -k on ".aoon";
	setAttr -av -k on ".aoam";
	setAttr -av -k on ".aora";
	setAttr -av -k on ".aofr";
	setAttr -av -k on ".aosm";
	setAttr -av -k on ".hff";
	setAttr -av -k on ".hfd";
	setAttr -av -k on ".hfs";
	setAttr -av -k on ".hfe";
	setAttr -av ".hfc";
	setAttr -av -k on ".hfcr";
	setAttr -av -k on ".hfcg";
	setAttr -av -k on ".hfcb";
	setAttr -av -k on ".hfa";
	setAttr -av -k on ".mbe";
	setAttr -av -k on ".mbt";
	setAttr -av -k on ".mbsof";
	setAttr -k on ".mbsc";
	setAttr -k on ".mbc";
	setAttr -k on ".mbfa";
	setAttr -k on ".mbftb";
	setAttr -k on ".mbftg";
	setAttr -k on ".mbftr";
	setAttr -av -k on ".mbfta";
	setAttr -k on ".mbfe";
	setAttr -k on ".mbme";
	setAttr -av -k on ".mbcsx";
	setAttr -av -k on ".mbcsy";
	setAttr -av -k on ".mbasx";
	setAttr -av -k on ".mbasy";
	setAttr -av -k on ".blen";
	setAttr -av -k on ".blth";
	setAttr -av -k on ".blfr";
	setAttr -av -k on ".blfa";
	setAttr -av -k on ".blat";
	setAttr -av -k on ".msaa";
	setAttr -av -k on ".aasc";
	setAttr -av -k on ".aasq";
	setAttr -k on ".laa";
	setAttr -k on ".fprt" yes;
	setAttr -k on ".rtfm";
select -ne :renderPartition;
	setAttr -av -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".r";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -s 6 ".dsm";
	setAttr -k on ".mwc";
	setAttr -av -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -k on ".hio";
	setAttr -cb on ".ai_override";
	setAttr -k on ".ai_surface_shader";
	setAttr -cb on ".ai_surface_shaderr";
	setAttr -cb on ".ai_surface_shaderg";
	setAttr -cb on ".ai_surface_shaderb";
	setAttr -k on ".ai_volume_shader";
	setAttr -cb on ".ai_volume_shaderr";
	setAttr -cb on ".ai_volume_shaderg";
	setAttr -cb on ".ai_volume_shaderb";
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -cb on ".mwc";
	setAttr -av -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -k on ".hio";
	setAttr -cb on ".ai_override";
	setAttr -k on ".ai_surface_shader";
	setAttr -cb on ".ai_surface_shaderr";
	setAttr -cb on ".ai_surface_shaderg";
	setAttr -cb on ".ai_surface_shaderb";
	setAttr -k on ".ai_volume_shader";
	setAttr -cb on ".ai_volume_shaderr";
	setAttr -cb on ".ai_volume_shaderg";
	setAttr -cb on ".ai_volume_shaderb";
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -cb on ".macc";
	setAttr -av -cb on ".macd";
	setAttr -av -cb on ".macq";
	setAttr -av -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -av -k on ".clip";
	setAttr -av -k on ".edm";
	setAttr -av -k on ".edl";
	setAttr -av -cb on ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -av -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf";
	setAttr -av -cb on ".imfkey";
	setAttr -av -k on ".gama";
	setAttr -av -k on ".exrc";
	setAttr -av -k on ".expt";
	setAttr -av -k on ".an";
	setAttr -cb on ".ar";
	setAttr -av -k on ".fs" 1;
	setAttr -av -k on ".ef" 10;
	setAttr -av -k on ".bfs";
	setAttr -av -cb on ".me";
	setAttr -cb on ".se";
	setAttr -av -k on ".be";
	setAttr -av -cb on ".ep";
	setAttr -av -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -av -cb on ".pff";
	setAttr -av -cb on ".peie";
	setAttr -av -cb on ".ifp";
	setAttr -k on ".rv";
	setAttr -av -k on ".comp";
	setAttr -av -k on ".cth";
	setAttr -av -k on ".soll";
	setAttr -av -cb on ".sosl";
	setAttr -av -k on ".rd";
	setAttr -av -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -av -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -av -k on ".mm";
	setAttr -av -k on ".npu";
	setAttr -av -cb on ".itf";
	setAttr -av -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -av -k on ".uf";
	setAttr -av -k on ".oi";
	setAttr -av -k on ".rut";
	setAttr -av -k on ".mot";
	setAttr -av -cb on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -av -k on ".mbso";
	setAttr -av -k on ".mbsc";
	setAttr -av -k on ".afp";
	setAttr -av -k on ".pfb";
	setAttr -av -k on ".pram";
	setAttr -av -k on ".poam";
	setAttr -av -k on ".prlm";
	setAttr -av -k on ".polm";
	setAttr -av -cb on ".prm";
	setAttr -av -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -av -k on ".ubc";
	setAttr -av -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -av -k on ".udbx";
	setAttr -av -k on ".smc";
	setAttr -av -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -av -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -av -k on ".tlwd";
	setAttr -av -k on ".tlht";
	setAttr -av -cb on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -av -cb on ".ope";
	setAttr -av -cb on ".oppf";
	setAttr -av -k on ".rcp";
	setAttr -av -k on ".icp";
	setAttr -av -k on ".ocp";
	setAttr -cb on ".hbl";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -cb on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -cb on ".isu";
	setAttr -av -cb on ".pdu";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr -av -cb on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k off -cb on ".ctrs" 256;
	setAttr -av -k off -cb on ".btrs" 512;
	setAttr -av -k off -cb on ".fbfm";
	setAttr -av -k off -cb on ".ehql";
	setAttr -av -k off -cb on ".eams";
	setAttr -av -k off -cb on ".eeaa";
	setAttr -av -k off -cb on ".engm";
	setAttr -av -k off -cb on ".mes";
	setAttr -av -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -av -k off -cb on ".mbs";
	setAttr -av -k off -cb on ".trm";
	setAttr -av -k off -cb on ".tshc";
	setAttr -av -k off -cb on ".enpt";
	setAttr -av -k off -cb on ".clmt";
	setAttr -av -k off -cb on ".tcov";
	setAttr -av -k off -cb on ".lith";
	setAttr -av -k off -cb on ".sobc";
	setAttr -av -k off -cb on ".cuth";
	setAttr -av -k off -cb on ".hgcd";
	setAttr -av -k off -cb on ".hgci";
	setAttr -av -k off -cb on ".mgcs";
	setAttr -av -k off -cb on ".twa";
	setAttr -av -k off -cb on ".twz";
	setAttr -av -cb on ".hwcc";
	setAttr -av -cb on ".hwdp";
	setAttr -av -cb on ".hwql";
	setAttr -av -k on ".hwfr";
	setAttr -av -k on ".soll";
	setAttr -av -k on ".sosl";
	setAttr -av -k on ".bswa";
	setAttr -av -k on ".shml";
	setAttr -av -k on ".hwel";
connectAttr "rig_testRN.phl[10]" "Set_ChainA.dsm" -na;
connectAttr "rig_testRN.phl[11]" "Set_ChainA.dsm" -na;
connectAttr "rig_testRN.phl[12]" "Set_ChainA.dsm" -na;
connectAttr "rig_testRN.phl[13]" "Set_ChainA.dsm" -na;
connectAttr "rig_testRN.phl[14]" "Set_ChainA.dsm" -na;
connectAttr "rig_testRN.phl[15]" "Set_ChainA.dsm" -na;
connectAttr "rig_testRN.phl[16]" "Set_ChainB.dsm" -na;
connectAttr "rig_testRN.phl[17]" "Set_ChainB.dsm" -na;
connectAttr "rig_testRN.phl[18]" "Set_ChainB.dsm" -na;
connectAttr "rig_testRN.phl[19]" "Set_ChainB.dsm" -na;
connectAttr "rig_testRN.phl[20]" "Set_ChainB.dsm" -na;
connectAttr "rig_testRN.phl[21]" "Set_ChainC.dsm" -na;
connectAttr "rig_testRN.phl[22]" "Set_ChainD.dsm" -na;
connectAttr "rig_testRN.phl[23]" "Set_ChainD.dsm" -na;
connectAttr "rig_testRN.phl[24]" "Set_ChainD.dsm" -na;
connectAttr "rig_testRN.phl[25]" "Set_ChainD.dsm" -na;
connectAttr "rig_testRN.phl[26]" "Set_ChainD.dsm" -na;
connectAttr "rig_testRN.phl[27]" "Set_ChainD.dsm" -na;
connectAttr "rig_testRN.phl[28]" "Set_ChainD.dsm" -na;
connectAttr "rig_testRN.phl[29]" "Set_ChainD.dsm" -na;
connectAttr "rig_testRN.phl[30]" "Set_ChainE.dsm" -na;
connectAttr "rig_testRN.phl[31]" "Set_ChainE.dsm" -na;
connectAttr "rig_testRN.phl[32]" "Set_ChainE.dsm" -na;
connectAttr "rig_testRN.phl[33]" "Set_ChainE.dsm" -na;
connectAttr "InfinitePlaneCollider.colliderWidth" "InfinitePlaneCollider_SPC.colliderWidth"
		;
connectAttr "InfinitePlaneCollider.colliderHeight" "InfinitePlaneCollider_SPC.colliderHeight"
		;
connectAttr "makeNurbPlane1.msg" "InfinitePlaneCollider.colliderAffectedBy[0]";
connectAttr "InfinitePlaneColliderShape.msg" "InfinitePlaneCollider.colliderAffectedBy[1]"
		;
connectAttr "InfinitePlaneCollider_ratio.msg" "InfinitePlaneCollider.colliderAffectedBy[2]"
		;
connectAttr "makeNurbPlane1.os" "InfinitePlaneColliderShape.cr";
connectAttr "SphereCollider.colliderRadius" "SphereCollider_SPC.colliderRadius";
connectAttr "makeNurbSphere1.msg" "SphereCollider.colliderAffectedBy[0]";
connectAttr "SphereColliderShape.msg" "SphereCollider.colliderAffectedBy[1]";
connectAttr "makeNurbSphere1.os" "SphereColliderShape.cr";
connectAttr "CapsuleCollider.colliderRadiusA" "CapsuleCollider_SPC.colliderRadiusA"
		;
connectAttr "CapsuleCollider.colliderRadiusB" "CapsuleCollider_SPC.colliderRadiusB"
		;
connectAttr "CapsuleCollider.colliderLength" "CapsuleCollider_SPC.colliderLength"
		;
connectAttr "CapsuleCollider.colliderOffset" "CapsuleCollider_SPC.colliderOffset"
		;
connectAttr "CapsuleCollider.colliderPivot" "CapsuleCollider_SPC.colliderPivot";
connectAttr "CapsuleCollider_SphereA.wm" "CapsuleCollider.colliderMatrixA";
connectAttr "CapsuleCollider_SphereB.wm" "CapsuleCollider.colliderMatrixB";
connectAttr "CapsuleCollider_SphereA.msg" "CapsuleCollider.colliderAffectedBy[0]"
		;
connectAttr "makeNurbSphere2.msg" "CapsuleCollider.colliderAffectedBy[1]";
connectAttr "CapsuleCollider_SphereAShape.msg" "CapsuleCollider.colliderAffectedBy[2]"
		;
connectAttr "CapsuleCollider_SphereB.msg" "CapsuleCollider.colliderAffectedBy[3]"
		;
connectAttr "makeNurbSphere3.msg" "CapsuleCollider.colliderAffectedBy[4]";
connectAttr "CapsuleCollider_SphereBShape.msg" "CapsuleCollider.colliderAffectedBy[5]"
		;
connectAttr "CapsuleCollider_CircleA.msg" "CapsuleCollider.colliderAffectedBy[6]"
		;
connectAttr "makeNurbCircle1.msg" "CapsuleCollider.colliderAffectedBy[7]";
connectAttr "CapsuleCollider_CircleAShape.msg" "CapsuleCollider.colliderAffectedBy[8]"
		;
connectAttr "CapsuleCollider_CircleB.msg" "CapsuleCollider.colliderAffectedBy[9]"
		;
connectAttr "makeNurbCircle2.msg" "CapsuleCollider.colliderAffectedBy[10]";
connectAttr "CapsuleCollider_CircleBShape.msg" "CapsuleCollider.colliderAffectedBy[11]"
		;
connectAttr "CapsuleCollider_Loft.msg" "CapsuleCollider.colliderAffectedBy[12]";
connectAttr "loft1.msg" "CapsuleCollider.colliderAffectedBy[13]";
connectAttr "CapsuleCollider_LoftShape.msg" "CapsuleCollider.colliderAffectedBy[14]"
		;
connectAttr "CapsuleCollider_halfLength.msg" "CapsuleCollider.colliderAffectedBy[15]"
		;
connectAttr "CapsuleCollider_pivot.msg" "CapsuleCollider.colliderAffectedBy[16]"
		;
connectAttr "CapsuleCollider_offsetA.msg" "CapsuleCollider.colliderAffectedBy[17]"
		;
connectAttr "CapsuleCollider_offsetB.msg" "CapsuleCollider.colliderAffectedBy[18]"
		;
connectAttr "CapsuleCollider_offsetA.of" "CapsuleCollider_SphereA.tx";
connectAttr "CapsuleCollider.colliderRadiusA" "CapsuleCollider_SphereA.colliderRadiusA"
		;
connectAttr "CapsuleCollider.colliderRadiusB" "CapsuleCollider_SphereA.colliderRadiusB"
		;
connectAttr "CapsuleCollider.colliderLength" "CapsuleCollider_SphereA.colliderLength"
		;
connectAttr "CapsuleCollider.colliderOffset" "CapsuleCollider_SphereA.colliderOffset"
		;
connectAttr "CapsuleCollider.colliderPivot" "CapsuleCollider_SphereA.colliderPivot"
		;
connectAttr "makeNurbSphere2.os" "CapsuleCollider_SphereAShape.cr";
connectAttr "CapsuleCollider_offsetB.of" "CapsuleCollider_SphereB.tx";
connectAttr "CapsuleCollider.colliderRadiusA" "CapsuleCollider_SphereB.colliderRadiusA"
		;
connectAttr "CapsuleCollider.colliderRadiusB" "CapsuleCollider_SphereB.colliderRadiusB"
		;
connectAttr "CapsuleCollider.colliderLength" "CapsuleCollider_SphereB.colliderLength"
		;
connectAttr "CapsuleCollider.colliderOffset" "CapsuleCollider_SphereB.colliderOffset"
		;
connectAttr "CapsuleCollider.colliderPivot" "CapsuleCollider_SphereB.colliderPivot"
		;
connectAttr "makeNurbSphere3.os" "CapsuleCollider_SphereBShape.cr";
connectAttr "CapsuleCollider_offsetA.of" "CapsuleCollider_CircleA.tx";
connectAttr "CapsuleCollider.colliderRadiusA" "CapsuleCollider_CircleA.colliderRadiusA"
		;
connectAttr "CapsuleCollider.colliderRadiusB" "CapsuleCollider_CircleA.colliderRadiusB"
		;
connectAttr "CapsuleCollider.colliderLength" "CapsuleCollider_CircleA.colliderLength"
		;
connectAttr "CapsuleCollider.colliderOffset" "CapsuleCollider_CircleA.colliderOffset"
		;
connectAttr "CapsuleCollider.colliderPivot" "CapsuleCollider_CircleA.colliderPivot"
		;
connectAttr "makeNurbCircle1.oc" "CapsuleCollider_CircleAShape.cr";
connectAttr "CapsuleCollider_offsetB.of" "CapsuleCollider_CircleB.tx";
connectAttr "CapsuleCollider.colliderRadiusA" "CapsuleCollider_CircleB.colliderRadiusA"
		;
connectAttr "CapsuleCollider.colliderRadiusB" "CapsuleCollider_CircleB.colliderRadiusB"
		;
connectAttr "CapsuleCollider.colliderLength" "CapsuleCollider_CircleB.colliderLength"
		;
connectAttr "CapsuleCollider.colliderOffset" "CapsuleCollider_CircleB.colliderOffset"
		;
connectAttr "CapsuleCollider.colliderPivot" "CapsuleCollider_CircleB.colliderPivot"
		;
connectAttr "makeNurbCircle2.oc" "CapsuleCollider_CircleBShape.cr";
connectAttr "CapsuleCollider.colliderRadiusA" "CapsuleCollider_Loft.colliderRadiusA"
		;
connectAttr "CapsuleCollider.colliderRadiusB" "CapsuleCollider_Loft.colliderRadiusB"
		;
connectAttr "CapsuleCollider.colliderLength" "CapsuleCollider_Loft.colliderLength"
		;
connectAttr "CapsuleCollider.colliderOffset" "CapsuleCollider_Loft.colliderOffset"
		;
connectAttr "CapsuleCollider.colliderPivot" "CapsuleCollider_Loft.colliderPivot"
		;
connectAttr "CapsuleCollider.wim" "CapsuleCollider_Loft.opm";
connectAttr "loft1.os" "CapsuleCollider_LoftShape.cr";
connectAttr "polyTorus1.out" "pTorusShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "rig_testRN.phl[1]" "Set_L_Hair.dsm" -na;
connectAttr "rig_testRN.phl[2]" "Set_L_Hair.dsm" -na;
connectAttr "rig_testRN.phl[3]" "Set_L_Hair.dsm" -na;
connectAttr "rig_testRN.phl[4]" "Set_L_Hair.dsm" -na;
connectAttr "rig_testRN.phl[5]" "Set_L_Hair.dsm" -na;
connectAttr "rig_testRN.phl[6]" "Set_R_Hair.dsm" -na;
connectAttr "rig_testRN.phl[7]" "Set_R_Hair.dsm" -na;
connectAttr "rig_testRN.phl[8]" "Set_R_Hair.dsm" -na;
connectAttr "rig_testRN.phl[9]" "Set_R_Hair.dsm" -na;
connectAttr "InfinitePlaneCollider.colliderWidth" "makeNurbPlane1.w";
connectAttr "InfinitePlaneCollider_ratio.of" "makeNurbPlane1.lr";
connectAttr "InfinitePlaneCollider.colliderHeight" "InfinitePlaneCollider_ratio._fa"
		;
connectAttr "InfinitePlaneCollider.colliderWidth" "InfinitePlaneCollider_ratio._fb"
		;
connectAttr "SphereCollider.colliderRadius" "makeNurbSphere1.r";
connectAttr "CapsuleCollider.colliderRadiusA" "makeNurbSphere2.r";
connectAttr "CapsuleCollider.colliderRadiusB" "makeNurbSphere3.r";
connectAttr "CapsuleCollider.colliderRadiusA" "makeNurbCircle1.r";
connectAttr "CapsuleCollider.colliderRadiusB" "makeNurbCircle2.r";
connectAttr "CapsuleCollider_CircleBShape.ws" "loft1.ic[0]";
connectAttr "CapsuleCollider_CircleAShape.ws" "loft1.ic[1]";
connectAttr "CapsuleCollider.colliderLength" "CapsuleCollider_halfLength._fa";
connectAttr "CapsuleCollider_halfLength.of" "CapsuleCollider_pivot._fa";
connectAttr "CapsuleCollider.colliderPivot" "CapsuleCollider_pivot._fb";
connectAttr "CapsuleCollider_pivot.of" "CapsuleCollider_offsetA._fa";
connectAttr "CapsuleCollider.colliderOffset" "CapsuleCollider_offsetA._fb";
connectAttr "CapsuleCollider_offsetA.of" "CapsuleCollider_offsetB._fa";
connectAttr "CapsuleCollider.colliderLength" "CapsuleCollider_offsetB._fb";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "InfinitePlaneColliderShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "SphereColliderShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "CapsuleCollider_SphereAShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "CapsuleCollider_SphereBShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "CapsuleCollider_LoftShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape1.iog" ":initialShadingGroup.dsm" -na;
// End of anim_test.ma
