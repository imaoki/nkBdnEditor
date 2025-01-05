//Maya ASCII 2022 scene
//Name: collider.ma
//Last modified: Sun, Jan 05, 2025 02:07:42 AM
//Codeset: 932
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
fileInfo "UUID" "069AF9F9-425E-6B72-C4F9-DBB55721BC69";
createNode transform -s -n "persp";
	rename -uid "358FA051-4BA1-34DE-E048-51819EB8096E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.24272388419578284 22.64431679211339 1.1598368768584859 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".rpt" -type "double3" 4.653252847711391e-18 1.1144300887335629e-17 1.6910112597314248e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "84909D2A-4D4A-FA1A-87DB-69BEFE0E2312";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 22.513494483996048;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.24272388419578284 0.13082230811734163 1.1598368768584861 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "1946B216-4A06-BB2F-F16B-368FB6E882D1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C8038E04-446A-EC5F-9BF9-C886D6EE7040";
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
	rename -uid "60034D81-486B-954B-4D7E-0A8BD2D8075F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "2B667BB0-407D-0722-6F90-36BDA18FAC9D";
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
	rename -uid "39358C3D-4CBE-11D7-495C-75A8574A9F10";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "014E9A8B-4A40-573F-D524-E0AEB6D47C34";
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
createNode joint -n "joint1";
	rename -uid "34B8C439-4EA3-4561-F3C0-35BE03150A3C";
	setAttr ".t" -type "double3" 0 0 -4 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -59.999999999999993 0 ;
	setAttr ".radi" 0.67543251909622937;
createNode joint -n "joint2" -p "joint1";
	rename -uid "3F6F0BFE-4B9C-FD8E-EB34-B886EE396E81";
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -29.999999999999996 0 ;
	setAttr ".radi" 0.64468513682189998;
createNode joint -n "joint3" -p "joint2";
	rename -uid "8698DF28-4E46-7DF8-B128-99A426A8B970";
	setAttr ".t" -type "double3" 4 0 0.99999999999999978 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -59.999999999999993 0 ;
	setAttr ".radi" 0.63793248704859862;
createNode joint -n "joint4" -p "joint3";
	rename -uid "080BA823-4458-B943-1A16-2BA15CD69C1A";
	setAttr ".t" -type "double3" 3.0000000000000009 0 -4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.63793248704859862;
createNode transform -n "BDN_GRP";
	rename -uid "303E1928-4BF6-9DFF-3698-3DBE2C381B4F";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr -l on ".bdnData" -type "string" "type=\"group\";groupType=\"bdn\";";
createNode transform -n "Collider_GRP" -p "BDN_GRP";
	rename -uid "B023BA53-4D88-B28A-D522-1E9E2F7CEBB5";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr -l on ".bdnData" -type "string" "type=\"group\";groupType=\"collider\";";
createNode transform -n "joint1_CapsuleCollider_SPC" -p "Collider_GRP";
	rename -uid "BA8B4097-42EA-D058-1FE0-EDBD070E6EB7";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -ci true -sn "colliderSource" -ln "colliderSource" -dt "string";
	addAttr -ci true -sn "colliderAimTarget" -ln "colliderAimTarget" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -at "double";
	addAttr -uap -ci true -k true -sn "colliderOffset" -ln "colliderOffset" -at "double";
	addAttr -uap -ci true -k true -sn "colliderPivot" -ln "colliderPivot" -min 0 -max 
		2 -en "A:Center:B" -at "enum";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"space\";spaceType=\"collider\";";
	setAttr -l on ".colliderSource" -type "string" "|joint1";
	setAttr -l on ".colliderAimTarget";
	setAttr -k on ".colliderRadiusA";
	setAttr -k on ".colliderRadiusB";
	setAttr -k on ".colliderLength";
	setAttr -k on ".colliderOffset";
	setAttr -k on ".colliderPivot";
createNode transform -n "joint1_CapsuleCollider" -p "joint1_CapsuleCollider_SPC";
	rename -uid "ADE7201A-4D12-B4B1-8680-4D926C08AAEE";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 -min 
		0.001 -at "double";
	addAttr -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 -min 
		0.001 -at "double";
	addAttr -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -at "double";
	addAttr -ci true -k true -sn "colliderOffset" -ln "colliderOffset" -at "double";
	addAttr -ci true -k true -sn "colliderPivot" -ln "colliderPivot" -min 0 -max 2 -en 
		"A:Center:B" -at "enum";
	addAttr -ci true -h true -k true -sn "colliderMatrixA" -ln "colliderMatrixA" -at "matrix";
	addAttr -ci true -h true -k true -sn "colliderMatrixB" -ln "colliderMatrixB" -at "matrix";
	addAttr -s false -ci true -m -sn "colliderAffectedBy" -ln "colliderAffectedBy" -at "message";
	setAttr ".r" -type "double3" 20 29.999999999999996 10 ;
	setAttr -l on ".bdnData" -type "string" "type=\"collider\";colliderType=\"capsule\";";
	setAttr -k on ".colliderRadiusA";
	setAttr -k on ".colliderRadiusB";
	setAttr -k on ".colliderLength";
	setAttr -k on ".colliderOffset";
	setAttr -k on ".colliderPivot";
	setAttr -k on ".colliderMatrixA";
	setAttr -k on ".colliderMatrixB";
	setAttr -s 26 ".colliderAffectedBy";
createNode transform -n "joint1_CapsuleCollider_SphereA" -p "joint1_CapsuleCollider";
	rename -uid "25A54639-4875-57B7-46D0-1CAD3CEE0768";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -at "double";
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
createNode nurbsSurface -n "joint1_CapsuleCollider_SphereAShape" -p "joint1_CapsuleCollider_SphereA";
	rename -uid "7FE6404A-4A42-AEA7-A5B8-D986F3F8F128";
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
createNode transform -n "joint1_CapsuleCollider_SphereB" -p "joint1_CapsuleCollider";
	rename -uid "EA4753BF-48DE-9DAF-5F4C-4FABC14AD8C0";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -at "double";
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
createNode nurbsSurface -n "joint1_CapsuleCollider_SphereBShape" -p "joint1_CapsuleCollider_SphereB";
	rename -uid "B92301C3-4015-13D0-5324-2D98E5BAA9C0";
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
createNode transform -n "joint1_CapsuleCollider_CircleA" -p "joint1_CapsuleCollider";
	rename -uid "48288232-454D-3A67-9839-EF8BC9EF70C8";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -at "double";
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
createNode nurbsCurve -n "joint1_CapsuleCollider_CircleAShape" -p "joint1_CapsuleCollider_CircleA";
	rename -uid "3AF14DD8-4C47-EABC-431B-4999771A8013";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
createNode transform -n "joint1_CapsuleCollider_CircleB" -p "joint1_CapsuleCollider";
	rename -uid "28DC1466-41C5-F909-5470-4C9112C33576";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -at "double";
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
createNode nurbsCurve -n "joint1_CapsuleCollider_CircleBShape" -p "joint1_CapsuleCollider_CircleB";
	rename -uid "8B0C2466-45BD-EF55-8E50-5EAB3C562A0D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
createNode transform -n "joint1_CapsuleCollider_Loft" -p "joint1_CapsuleCollider";
	rename -uid "B3D46BFA-479B-02B2-3034-90AF4BBB7F43";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -at "double";
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
createNode nurbsSurface -n "joint1_CapsuleCollider_LoftShape" -p "joint1_CapsuleCollider_Loft";
	rename -uid "4439D6AB-41B6-FB15-6EC0-F0937EE03EE7";
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
createNode parentConstraint -n "joint1_CapsuleCollider_SPC_PRCST" -p "joint1_CapsuleCollider_SPC";
	rename -uid "EA36A88A-4B4B-E25D-A24C-1FBA7E9AB125";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 -59.999999999999993 0 ;
	setAttr ".rst" -type "double3" 0 0 -4 ;
	setAttr ".rsrr" -type "double3" 0 -59.999999999999993 0 ;
	setAttr -k on ".w0";
createNode transform -n "joint3_InfinitePlaneCollider_SPC" -p "Collider_GRP";
	rename -uid "E6301D79-4390-73BC-F832-2BBE24EBE801";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -ci true -sn "colliderSource" -ln "colliderSource" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderWidth" -ln "colliderWidth" -dv 1 -min 
		0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderHeight" -ln "colliderHeight" -dv 1 -min 
		0.001 -at "double";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"space\";spaceType=\"collider\";";
	setAttr -l on ".colliderSource" -type "string" "|joint1|joint2|joint3";
	setAttr -k on ".colliderWidth";
	setAttr -k on ".colliderHeight";
createNode transform -n "joint3_InfinitePlaneCollider" -p "joint3_InfinitePlaneCollider_SPC";
	rename -uid "BD7F3AA7-4871-6003-7E5D-C58993DF7DEA";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -ci true -k true -sn "colliderWidth" -ln "colliderWidth" -dv 1 -min 0.001 
		-at "double";
	addAttr -ci true -k true -sn "colliderHeight" -ln "colliderHeight" -dv 1 -min 0.001 
		-at "double";
	addAttr -s false -ci true -m -sn "colliderAffectedBy" -ln "colliderAffectedBy" -at "message";
	setAttr ".t" -type "double3" -0.05 0 -1.5 ;
	setAttr -l on ".bdnData" -type "string" "type=\"collider\";colliderType=\"infinitePlane\";";
	setAttr -k on ".colliderWidth";
	setAttr -k on ".colliderHeight";
	setAttr -s 3 ".colliderAffectedBy";
createNode nurbsSurface -n "joint3_InfinitePlaneColliderShape" -p "joint3_InfinitePlaneCollider";
	rename -uid "2B012EEC-42E7-0810-8C0C-28A225A0CC6E";
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
createNode parentConstraint -n "joint3_InfinitePlaneCollider_SPC_PRCST" -p "joint3_InfinitePlaneCollider_SPC";
	rename -uid "311653AD-489E-EBC1-7A4B-1CBDF495C7D7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint3W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 -149.99999999999997 0 ;
	setAttr ".rst" -type "double3" 1.0000000000000016 0 3.4641016151377544 ;
	setAttr ".rsrr" -type "double3" 0 -149.99999999999997 0 ;
	setAttr -k on ".w0";
createNode transform -n "joint4_SphereCollider_SPC" -p "Collider_GRP";
	rename -uid "37F60475-4F85-B146-75F2-DBBE9ED57FF2";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -ci true -sn "colliderSource" -ln "colliderSource" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadius" -ln "colliderRadius" -dv 0.5 
		-min 0.001 -at "double";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"space\";spaceType=\"collider\";";
	setAttr -l on ".colliderSource" -type "string" "|joint1|joint2|joint3|joint4";
	setAttr -k on ".colliderRadius";
createNode transform -n "joint4_SphereCollider" -p "joint4_SphereCollider_SPC";
	rename -uid "56DA6E68-4D20-7A38-270D-DDA64FB673D0";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -ci true -k true -sn "colliderRadius" -ln "colliderRadius" -dv 0.5 -min 
		0.001 -at "double";
	addAttr -s false -ci true -m -sn "colliderAffectedBy" -ln "colliderAffectedBy" -at "message";
	setAttr ".s" -type "double3" 1.5 1.5 1.5 ;
	setAttr -l on ".bdnData" -type "string" "type=\"collider\";colliderType=\"sphere\";";
	setAttr -k on ".colliderRadius";
	setAttr -s 2 ".colliderAffectedBy";
createNode nurbsSurface -n "joint4_SphereColliderShape" -p "joint4_SphereCollider";
	rename -uid "B86BFA87-441A-521E-4A46-C88FEAD2BFBC";
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
createNode parentConstraint -n "joint4_SphereCollider_SPC_PRCST" -p "joint4_SphereCollider_SPC";
	rename -uid "DF7A5DDC-4B1A-1B91-0649-9391826753A4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint4W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 -149.99999999999997 0 ;
	setAttr ".rst" -type "double3" -1.598076211353314 0 4.9641016151377562 ;
	setAttr ".rsrr" -type "double3" 0 -149.99999999999997 0 ;
	setAttr -k on ".w0";
createNode transform -n "joint2_CapsuleCollider_SPC" -p "Collider_GRP";
	rename -uid "FB78E3FE-41B3-67CA-A8DF-19A9ED3AB8F1";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -ci true -sn "colliderSource" -ln "colliderSource" -dt "string";
	addAttr -ci true -sn "colliderAimTarget" -ln "colliderAimTarget" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -at "double";
	addAttr -uap -ci true -k true -sn "colliderOffset" -ln "colliderOffset" -at "double";
	addAttr -uap -ci true -k true -sn "colliderPivot" -ln "colliderPivot" -min 0 -max 
		2 -en "A:Center:B" -at "enum";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"space\";spaceType=\"collider\";";
	setAttr -l on ".colliderSource" -type "string" "|joint1|joint2";
	setAttr -l on ".colliderAimTarget" -type "string" "|joint1|joint2|joint3";
	setAttr -k on ".colliderRadiusA";
	setAttr -k on ".colliderRadiusB";
	setAttr -k on ".colliderLength";
	setAttr -k on ".colliderOffset";
	setAttr -k on ".colliderPivot";
createNode transform -n "joint2_CapsuleCollider" -p "joint2_CapsuleCollider_SPC";
	rename -uid "C0250D72-4DB6-FCBB-04B2-43824F6A3126";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 -min 
		0.001 -at "double";
	addAttr -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 -min 
		0.001 -at "double";
	addAttr -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -at "double";
	addAttr -ci true -k true -sn "colliderOffset" -ln "colliderOffset" -at "double";
	addAttr -ci true -k true -sn "colliderPivot" -ln "colliderPivot" -min 0 -max 2 -en 
		"A:Center:B" -at "enum";
	addAttr -ci true -h true -k true -sn "colliderMatrixA" -ln "colliderMatrixA" -at "matrix";
	addAttr -ci true -h true -k true -sn "colliderMatrixB" -ln "colliderMatrixB" -at "matrix";
	addAttr -s false -ci true -m -sn "colliderAffectedBy" -ln "colliderAffectedBy" -at "message";
	setAttr -l on ".bdnData" -type "string" "type=\"collider\";colliderType=\"capsule\";";
	setAttr -k on ".colliderRadiusA";
	setAttr -k on ".colliderRadiusB";
	setAttr -k on ".colliderLength" 4.1231056256176597;
	setAttr -k on ".colliderOffset";
	setAttr -k on ".colliderPivot";
	setAttr -k on ".colliderMatrixA";
	setAttr -k on ".colliderMatrixB";
	setAttr -s 26 ".colliderAffectedBy";
createNode transform -n "joint2_CapsuleCollider_SphereA" -p "joint2_CapsuleCollider";
	rename -uid "C563AFCB-40AB-31EB-3316-6A8A41455FFD";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -at "double";
	addAttr -uap -ci true -k true -sn "colliderOffset" -ln "colliderOffset" -at "double";
	addAttr -uap -ci true -k true -sn "colliderPivot" -ln "colliderPivot" -min 0 -max 
		2 -en "A:Center:B" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".bdnData" -type "string" "type=\"colliderComponent\";";
	setAttr -k on ".colliderRadiusA";
	setAttr -k on ".colliderRadiusB";
	setAttr -k on ".colliderLength";
	setAttr -k on ".colliderOffset";
	setAttr -k on ".colliderPivot";
createNode nurbsSurface -n "joint2_CapsuleCollider_SphereAShape" -p "joint2_CapsuleCollider_SphereA";
	rename -uid "36CDB5F1-4EF4-5D33-18DD-0C890E1DAA8F";
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
createNode transform -n "joint2_CapsuleCollider_SphereB" -p "joint2_CapsuleCollider";
	rename -uid "501BB26A-419B-279D-272C-938045894CC7";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -at "double";
	addAttr -uap -ci true -k true -sn "colliderOffset" -ln "colliderOffset" -at "double";
	addAttr -uap -ci true -k true -sn "colliderPivot" -ln "colliderPivot" -min 0 -max 
		2 -en "A:Center:B" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".bdnData" -type "string" "type=\"colliderComponent\";";
	setAttr -k on ".colliderRadiusA";
	setAttr -k on ".colliderRadiusB";
	setAttr -k on ".colliderLength";
	setAttr -k on ".colliderOffset";
	setAttr -k on ".colliderPivot";
createNode nurbsSurface -n "joint2_CapsuleCollider_SphereBShape" -p "joint2_CapsuleCollider_SphereB";
	rename -uid "3BEAA732-4AD6-9D87-E5DF-D29164F3B637";
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
createNode transform -n "joint2_CapsuleCollider_CircleA" -p "joint2_CapsuleCollider";
	rename -uid "2907A12A-4973-C061-30EF-CC8E237E9BC7";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -at "double";
	addAttr -uap -ci true -k true -sn "colliderOffset" -ln "colliderOffset" -at "double";
	addAttr -uap -ci true -k true -sn "colliderPivot" -ln "colliderPivot" -min 0 -max 
		2 -en "A:Center:B" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".bdnData" -type "string" "type=\"colliderComponent\";";
	setAttr -k on ".colliderRadiusA";
	setAttr -k on ".colliderRadiusB";
	setAttr -k on ".colliderLength";
	setAttr -k on ".colliderOffset";
	setAttr -k on ".colliderPivot";
createNode nurbsCurve -n "joint2_CapsuleCollider_CircleAShape" -p "joint2_CapsuleCollider_CircleA";
	rename -uid "C68CC2B2-4912-A469-324E-D2B61C947E6A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
createNode transform -n "joint2_CapsuleCollider_CircleB" -p "joint2_CapsuleCollider";
	rename -uid "87AAB13D-49B3-48CB-DB7C-EDA762EDFBBC";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -at "double";
	addAttr -uap -ci true -k true -sn "colliderOffset" -ln "colliderOffset" -at "double";
	addAttr -uap -ci true -k true -sn "colliderPivot" -ln "colliderPivot" -min 0 -max 
		2 -en "A:Center:B" -at "enum";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".bdnData" -type "string" "type=\"colliderComponent\";";
	setAttr -k on ".colliderRadiusA";
	setAttr -k on ".colliderRadiusB";
	setAttr -k on ".colliderLength";
	setAttr -k on ".colliderOffset";
	setAttr -k on ".colliderPivot";
createNode nurbsCurve -n "joint2_CapsuleCollider_CircleBShape" -p "joint2_CapsuleCollider_CircleB";
	rename -uid "B6BEBDD9-49F6-6CB3-BEDA-3CBFEA2D183B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
createNode transform -n "joint2_CapsuleCollider_Loft" -p "joint2_CapsuleCollider";
	rename -uid "1052EEEE-4420-DC0A-C824-1E869341EE76";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -at "double";
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
createNode nurbsSurface -n "joint2_CapsuleCollider_LoftShape" -p "joint2_CapsuleCollider_Loft";
	rename -uid "0FBFC71C-4125-A4EC-DC8B-7995FB8534E0";
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
createNode pointConstraint -n "joint2_CapsuleCollider_SPC_PTCST" -p "joint2_CapsuleCollider_SPC";
	rename -uid "F968CBD1-4D78-15E6-447D-E490327328CB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint2W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 2.0000000000000004 0 -0.53589838486224561 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "joint2_CapsuleCollider_SPC_AMCST" -p "joint2_CapsuleCollider_SPC";
	rename -uid "A7BCDCDF-4DEB-5BD1-7E89-56A1A0E0A26D";
	addAttr -dcb 0 -ci true -sn "w0" -ln "joint3W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 0 255.96375653207352 0 ;
	setAttr -k on ".w0";
createNode transform -n "CapsuleCollider_SPC" -p "Collider_GRP";
	rename -uid "94191063-4CF9-A3FB-1A35-5DAB15A69121";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -ci true -sn "colliderSource" -ln "colliderSource" -dt "string";
	addAttr -ci true -sn "colliderAimTarget" -ln "colliderAimTarget" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -at "double";
	addAttr -uap -ci true -k true -sn "colliderOffset" -ln "colliderOffset" -at "double";
	addAttr -uap -ci true -k true -sn "colliderPivot" -ln "colliderPivot" -min 0 -max 
		2 -en "A:Center:B" -at "enum";
	setAttr ".t" -type "double3" -3 0 -2 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"space\";spaceType=\"collider\";";
	setAttr -l on ".colliderSource";
	setAttr -l on ".colliderAimTarget";
	setAttr -k on ".colliderRadiusA";
	setAttr -k on ".colliderRadiusB";
	setAttr -k on ".colliderLength";
	setAttr -k on ".colliderOffset";
	setAttr -k on ".colliderPivot";
createNode transform -n "CapsuleCollider" -p "CapsuleCollider_SPC";
	rename -uid "378C17B4-4AA1-DAD9-2D36-ACABCAB73459";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 -min 
		0.001 -at "double";
	addAttr -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 -min 
		0.001 -at "double";
	addAttr -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -at "double";
	addAttr -ci true -k true -sn "colliderOffset" -ln "colliderOffset" -at "double";
	addAttr -ci true -k true -sn "colliderPivot" -ln "colliderPivot" -min 0 -max 2 -en 
		"A:Center:B" -at "enum";
	addAttr -ci true -h true -k true -sn "colliderMatrixA" -ln "colliderMatrixA" -at "matrix";
	addAttr -ci true -h true -k true -sn "colliderMatrixB" -ln "colliderMatrixB" -at "matrix";
	addAttr -s false -ci true -m -sn "colliderAffectedBy" -ln "colliderAffectedBy" -at "message";
	setAttr -l on ".bdnData" -type "string" "type=\"collider\";colliderType=\"capsule\";";
	setAttr -k on ".colliderRadiusA";
	setAttr -k on ".colliderRadiusB";
	setAttr -k on ".colliderLength";
	setAttr -k on ".colliderOffset";
	setAttr -k on ".colliderPivot";
	setAttr -k on ".colliderMatrixA";
	setAttr -k on ".colliderMatrixB";
	setAttr -s 26 ".colliderAffectedBy";
createNode transform -n "CapsuleCollider_SphereA" -p "CapsuleCollider";
	rename -uid "4EC3B549-4C50-FD41-68B9-7BAFE8427D51";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -at "double";
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
	rename -uid "471EC645-49DF-7727-56A3-5EA0178223B6";
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
	rename -uid "A09CBB28-4684-DE20-4922-D38EBB811C09";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -at "double";
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
	rename -uid "7D8A41B3-4325-99E1-DF91-799DC3B309A1";
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
	rename -uid "47CF2AF6-475D-AC69-81AA-379394EE156A";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -at "double";
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
	rename -uid "018BDEDE-43D7-4D5A-EAF0-86ACE08ED56C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
createNode transform -n "CapsuleCollider_CircleB" -p "CapsuleCollider";
	rename -uid "C717FDE3-4DB7-8883-8870-BAA6C72533C1";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -at "double";
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
	rename -uid "F9D8983B-4F20-969A-95B0-32858DA7F88C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
createNode transform -n "CapsuleCollider_Loft" -p "CapsuleCollider";
	rename -uid "4658BF81-4B1D-2A48-FF53-7382C680D6F8";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadiusA" -ln "colliderRadiusA" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderRadiusB" -ln "colliderRadiusB" -dv 0.5 
		-min 0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderLength" -ln "colliderLength" -dv 2 -at "double";
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
	rename -uid "1721D08B-4BF0-749A-D266-D0A607867CC1";
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
createNode transform -n "InfinitePlaneCollider_SPC" -p "Collider_GRP";
	rename -uid "87D25635-4D1E-F170-AAC2-5E8D4BC3E38D";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -ci true -sn "colliderSource" -ln "colliderSource" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderWidth" -ln "colliderWidth" -dv 1 -min 
		0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderHeight" -ln "colliderHeight" -dv 1 -min 
		0.001 -at "double";
	setAttr ".t" -type "double3" -2 0 2 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"space\";spaceType=\"collider\";";
	setAttr -l on ".colliderSource";
	setAttr -k on ".colliderWidth";
	setAttr -k on ".colliderHeight";
createNode transform -n "InfinitePlaneCollider" -p "InfinitePlaneCollider_SPC";
	rename -uid "99CFACE8-498C-CA86-87D0-D589783D1D2B";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -ci true -k true -sn "colliderWidth" -ln "colliderWidth" -dv 1 -min 0.001 
		-at "double";
	addAttr -ci true -k true -sn "colliderHeight" -ln "colliderHeight" -dv 1 -min 0.001 
		-at "double";
	addAttr -s false -ci true -m -sn "colliderAffectedBy" -ln "colliderAffectedBy" -at "message";
	setAttr -l on ".bdnData" -type "string" "type=\"collider\";colliderType=\"infinitePlane\";";
	setAttr -k on ".colliderWidth";
	setAttr -k on ".colliderHeight";
	setAttr -s 3 ".colliderAffectedBy";
createNode nurbsSurface -n "InfinitePlaneColliderShape" -p "InfinitePlaneCollider";
	rename -uid "5198CC2C-4C69-4EC2-6575-60AA3B2E8A4A";
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
	rename -uid "60E320CB-400E-8865-364A-25AD0FE79AA0";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -ci true -sn "colliderSource" -ln "colliderSource" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadius" -ln "colliderRadius" -dv 0.5 
		-min 0.001 -at "double";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"space\";spaceType=\"collider\";";
	setAttr -l on ".colliderSource";
	setAttr -k on ".colliderRadius";
createNode transform -n "SphereCollider" -p "SphereCollider_SPC";
	rename -uid "28396A9E-43BB-6FB3-938A-F1BBA646B3F4";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -ci true -k true -sn "colliderRadius" -ln "colliderRadius" -dv 0.5 -min 
		0.001 -at "double";
	addAttr -s false -ci true -m -sn "colliderAffectedBy" -ln "colliderAffectedBy" -at "message";
	setAttr -l on ".bdnData" -type "string" "type=\"collider\";colliderType=\"sphere\";";
	setAttr -k on ".colliderRadius";
	setAttr -s 2 ".colliderAffectedBy";
createNode nurbsSurface -n "SphereColliderShape" -p "SphereCollider";
	rename -uid "21DC85AF-4A55-9CC7-1CA6-B692F9D0A45C";
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "4CE49DF5-4D06-4A43-B380-95A7BCBC4B60";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "50D49668-430F-7410-6828-258BC7AD910F";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "0B701465-406F-8631-12BA-98929427210D";
createNode displayLayerManager -n "layerManager";
	rename -uid "8EA641C1-4309-1632-60C3-A586E4DF1082";
createNode displayLayer -n "defaultLayer";
	rename -uid "31B52486-400B-055F-39FF-29BDF55AD836";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "D67F5128-40AB-6AC9-D181-4D94FED46F93";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "7733D7B2-4FB6-E247-ED89-3AA6714E6F8E";
	setAttr ".g" yes;
createNode makeNurbSphere -n "makeNurbSphere1";
	rename -uid "12BA8E84-426E-714C-3828-57B799971C1D";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".s" 4;
createNode makeNurbSphere -n "makeNurbSphere2";
	rename -uid "8FB8AC65-4331-A87D-C93E-EAA97C92FC24";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".s" 4;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "0EF9E761-41D3-B034-131A-F48615DD9696";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "5F660B90-4283-53C9-CD68-2E859139F475";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode loft -n "loft1";
	rename -uid "46D26AEC-4FB0-837E-85C0-A5A306C9A9CE";
	setAttr -s 2 ".ic";
createNode floatMath -n "joint1_CapsuleCollider_halfLength";
	rename -uid "F7117811-466D-BF19-0E7D-00BAA41D2168";
	setAttr -l on "._fb" -0.5;
	setAttr "._cnd" 2;
createNode floatMath -n "joint1_CapsuleCollider_pivot";
	rename -uid "FFB2BC3C-4A59-CCB6-325B-359D54CA6842";
	setAttr "._cnd" 2;
createNode floatMath -n "joint1_CapsuleCollider_offsetA";
	rename -uid "7E8D1577-4F84-B83C-779F-75B262100E25";
createNode floatMath -n "joint1_CapsuleCollider_offsetB";
	rename -uid "0BAE5563-41B0-E145-B4A4-3C9501309100";
createNode condition -n "joint1_CapsuleCollider_lengthDir";
	rename -uid "5AEC01D7-4A72-FFF4-4756-6CA493B965F3";
	setAttr ".op" 4;
	setAttr ".ct" -type "float3" -1 0 0 ;
createNode setRange -n "joint1_CapsuleCollider_sweepRangeA";
	rename -uid "D60F45BB-4A6D-318A-E880-E88D0B105445";
	setAttr ".n" -type "float3" -90 90 0 ;
	setAttr ".m" -type "float3" 90 270 0 ;
	setAttr ".on" -type "float3" -1 -1 0 ;
	setAttr ".om" -type "float3" 1 1 0 ;
createNode setRange -n "joint1_CapsuleCollider_sweepRangeB";
	rename -uid "B2D31BDD-4B46-D948-FEF2-49A95B1C100C";
	setAttr ".n" -type "float3" 90 270 0 ;
	setAttr ".m" -type "float3" -90 90 0 ;
	setAttr ".on" -type "float3" -1 -1 0 ;
	setAttr ".om" -type "float3" 1 1 0 ;
createNode unitConversion -n "joint1_CapsuleCollider_sweepAStartUc";
	rename -uid "254A86EE-4953-61BF-A9C9-D79E64677DB4";
	setAttr ".cf" 0.01745329;
createNode unitConversion -n "joint1_CapsuleCollider_sweepAEndUc";
	rename -uid "2B4CE489-401E-714B-F803-7F91B1CF8B0E";
	setAttr ".cf" 0.01745329;
createNode unitConversion -n "joint1_CapsuleCollider_sweepBStartUc";
	rename -uid "ADE55A1C-42DB-5C9D-1677-7FAA5F4CE415";
	setAttr ".cf" 0.01745329;
createNode unitConversion -n "joint1_CapsuleCollider_sweepBEndUc";
	rename -uid "382AC3C4-4D40-0127-6E4B-608EA390FB10";
	setAttr ".cf" 0.01745329;
createNode makeNurbPlane -n "makeNurbPlane1";
	rename -uid "3BB08051-4EA8-FB8E-D1A1-32A3CF7D36D6";
	setAttr ".ax" -type "double3" 0 1 0 ;
createNode floatMath -n "joint3_InfinitePlaneCollider_ratio";
	rename -uid "B82F5CEC-4732-F1D3-B04B-A38ED78CFC39";
	setAttr "._cnd" 3;
createNode makeNurbSphere -n "makeNurbSphere3";
	rename -uid "7747C98A-4143-FC1D-ECCF-A696504E990F";
	setAttr ".ax" -type "double3" 0 1 0 ;
createNode makeNurbSphere -n "makeNurbSphere4";
	rename -uid "7B59FC37-41DE-9D39-7CBB-1CB6BD48FDB3";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".s" 4;
createNode makeNurbSphere -n "makeNurbSphere5";
	rename -uid "A1959C82-466B-FC22-F2D0-DA8B6BD53852";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".s" 4;
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "93299769-4769-6CF5-9936-C9A6DBB2D2B8";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "D74B1136-4863-C0A4-EA4F-E9B4F0854EEB";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode loft -n "loft2";
	rename -uid "522E204E-40AB-5FE4-A0F5-189FFD43FA2E";
	setAttr -s 2 ".ic";
createNode floatMath -n "joint2_CapsuleCollider_halfLength";
	rename -uid "29C9B5DC-4E9B-B3C3-06C8-E387D90809FB";
	setAttr -l on "._fb" -0.5;
	setAttr "._cnd" 2;
createNode floatMath -n "joint2_CapsuleCollider_pivot";
	rename -uid "BB204BFC-4C6B-23D4-1A40-D1930CB9903E";
	setAttr "._cnd" 2;
createNode floatMath -n "joint2_CapsuleCollider_offsetA";
	rename -uid "539BACBF-460C-6316-7753-B1AAE13967CF";
createNode floatMath -n "joint2_CapsuleCollider_offsetB";
	rename -uid "3B28C901-4071-3C3B-A9A0-5C84EE289E28";
createNode condition -n "joint2_CapsuleCollider_lengthDir";
	rename -uid "DD83CE0F-445B-59E5-9AC2-64967C9193F6";
	setAttr ".op" 4;
	setAttr ".ct" -type "float3" -1 0 0 ;
createNode setRange -n "joint2_CapsuleCollider_sweepRangeA";
	rename -uid "AF4C9926-4214-A43B-2984-18900F2773FF";
	setAttr ".n" -type "float3" -90 90 0 ;
	setAttr ".m" -type "float3" 90 270 0 ;
	setAttr ".on" -type "float3" -1 -1 0 ;
	setAttr ".om" -type "float3" 1 1 0 ;
createNode setRange -n "joint2_CapsuleCollider_sweepRangeB";
	rename -uid "FFCCA14E-497C-E6B8-500A-148681581AAC";
	setAttr ".n" -type "float3" 90 270 0 ;
	setAttr ".m" -type "float3" -90 90 0 ;
	setAttr ".on" -type "float3" -1 -1 0 ;
	setAttr ".om" -type "float3" 1 1 0 ;
createNode unitConversion -n "joint2_CapsuleCollider_sweepAStartUc";
	rename -uid "0729E152-4DB5-4E2C-9131-23B8850D8355";
	setAttr ".cf" 0.01745329;
createNode unitConversion -n "joint2_CapsuleCollider_sweepAEndUc";
	rename -uid "643802E0-464D-98D4-6FAA-55BEC4E7191C";
	setAttr ".cf" 0.01745329;
createNode unitConversion -n "joint2_CapsuleCollider_sweepBStartUc";
	rename -uid "88A03B64-4C49-843A-C392-33AFB9765523";
	setAttr ".cf" 0.01745329;
createNode unitConversion -n "joint2_CapsuleCollider_sweepBEndUc";
	rename -uid "48806207-46FE-D90D-2EAE-32BA941A5E36";
	setAttr ".cf" 0.01745329;
createNode makeNurbSphere -n "makeNurbSphere6";
	rename -uid "FE17454D-412F-D89C-A8D7-5AA777D8A06B";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".s" 4;
createNode makeNurbSphere -n "makeNurbSphere7";
	rename -uid "D8A84DEA-4E7B-D927-5AA2-FFAABE7D4C88";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".s" 4;
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "0A218A26-492C-B236-4EF4-00BA329374A1";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle6";
	rename -uid "F4DB09CB-44E3-C64B-00A9-49A7FE7B7991";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode loft -n "loft3";
	rename -uid "6714896E-43BA-284E-F5CE-3B9B1698D212";
	setAttr -s 2 ".ic";
createNode floatMath -n "CapsuleCollider_halfLength";
	rename -uid "CDF0748E-4E87-05F3-A7DD-0683F7EF918E";
	setAttr -l on "._fb" -0.5;
	setAttr "._cnd" 2;
createNode floatMath -n "CapsuleCollider_pivot";
	rename -uid "F080086B-4D8C-61D4-A893-FBBB53CAA748";
	setAttr "._cnd" 2;
createNode floatMath -n "CapsuleCollider_offsetA";
	rename -uid "29CF1C80-4D13-9B84-6662-448C1738AE19";
createNode floatMath -n "CapsuleCollider_offsetB";
	rename -uid "A100808C-4292-882C-E643-F48FAEE91D2A";
createNode condition -n "CapsuleCollider_lengthDir";
	rename -uid "478A739D-4331-5068-6508-D493E8D01EAA";
	setAttr ".op" 4;
	setAttr ".ct" -type "float3" -1 0 0 ;
createNode setRange -n "CapsuleCollider_sweepRangeA";
	rename -uid "DC7F7730-48C7-9807-F922-BF977CE21E5B";
	setAttr ".n" -type "float3" -90 90 0 ;
	setAttr ".m" -type "float3" 90 270 0 ;
	setAttr ".on" -type "float3" -1 -1 0 ;
	setAttr ".om" -type "float3" 1 1 0 ;
createNode setRange -n "CapsuleCollider_sweepRangeB";
	rename -uid "39575386-42B7-E615-9215-4B80BF6DEAAD";
	setAttr ".n" -type "float3" 90 270 0 ;
	setAttr ".m" -type "float3" -90 90 0 ;
	setAttr ".on" -type "float3" -1 -1 0 ;
	setAttr ".om" -type "float3" 1 1 0 ;
createNode unitConversion -n "CapsuleCollider_sweepAStartUc";
	rename -uid "D8BA97FD-41A9-CA91-7A7E-15948575DACE";
	setAttr ".cf" 0.01745329;
createNode unitConversion -n "CapsuleCollider_sweepAEndUc";
	rename -uid "A02353F3-420F-4004-132E-DEA62F45B132";
	setAttr ".cf" 0.01745329;
createNode unitConversion -n "CapsuleCollider_sweepBStartUc";
	rename -uid "596BA1BF-48A6-82EC-8137-CD867AC575BA";
	setAttr ".cf" 0.01745329;
createNode unitConversion -n "CapsuleCollider_sweepBEndUc";
	rename -uid "C09048A2-4043-0E80-DF7B-068988F22BFC";
	setAttr ".cf" 0.01745329;
createNode makeNurbPlane -n "makeNurbPlane2";
	rename -uid "4A617AA7-489C-EAB0-8D91-58A5CF4ABD23";
	setAttr ".ax" -type "double3" 0 1 0 ;
createNode floatMath -n "InfinitePlaneCollider_ratio";
	rename -uid "8060B30F-4D58-DBC7-695A-96BBD67BD6E5";
	setAttr "._cnd" 3;
createNode makeNurbSphere -n "makeNurbSphere8";
	rename -uid "F156F446-4E84-A74C-5190-4D8491FF1F5D";
	setAttr ".ax" -type "double3" 0 1 0 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "03861449-4A69-053B-6939-74986CCBD9BE";
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
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 839\n            -height 1092\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
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
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 1\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n"
		+ "                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 1\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n"
		+ "                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n"
		+ "\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 839\\n    -height 1092\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 839\\n    -height 1092\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E598BAAC-4F4C-DC65-90D6-8A973662B6A8";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 30 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "29D79FED-4E1E-8A1F-575C-BC88D7C56285";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -941.66662924819684 -574.99997715155371 ;
	setAttr ".tgi[0].vh" -type "double2" 941.66662924819684 573.80950100838288 ;
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
	setAttr -k on ".fprt";
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
	setAttr -s 13 ".dsm";
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
	setAttr ".cme" no;
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
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2.s" "joint3.is";
connectAttr "joint3.s" "joint4.is";
connectAttr "joint1_CapsuleCollider.colliderRadiusA" "joint1_CapsuleCollider_SPC.colliderRadiusA"
		;
connectAttr "joint1_CapsuleCollider.colliderRadiusB" "joint1_CapsuleCollider_SPC.colliderRadiusB"
		;
connectAttr "joint1_CapsuleCollider.colliderLength" "joint1_CapsuleCollider_SPC.colliderLength"
		;
connectAttr "joint1_CapsuleCollider.colliderOffset" "joint1_CapsuleCollider_SPC.colliderOffset"
		;
connectAttr "joint1_CapsuleCollider.colliderPivot" "joint1_CapsuleCollider_SPC.colliderPivot"
		;
connectAttr "joint1_CapsuleCollider_SPC_PRCST.ctx" "joint1_CapsuleCollider_SPC.tx"
		;
connectAttr "joint1_CapsuleCollider_SPC_PRCST.cty" "joint1_CapsuleCollider_SPC.ty"
		;
connectAttr "joint1_CapsuleCollider_SPC_PRCST.ctz" "joint1_CapsuleCollider_SPC.tz"
		;
connectAttr "joint1_CapsuleCollider_SPC_PRCST.crx" "joint1_CapsuleCollider_SPC.rx"
		;
connectAttr "joint1_CapsuleCollider_SPC_PRCST.cry" "joint1_CapsuleCollider_SPC.ry"
		;
connectAttr "joint1_CapsuleCollider_SPC_PRCST.crz" "joint1_CapsuleCollider_SPC.rz"
		;
connectAttr "joint1_CapsuleCollider_SphereA.wm" "joint1_CapsuleCollider.colliderMatrixA"
		;
connectAttr "joint1_CapsuleCollider_SphereB.wm" "joint1_CapsuleCollider.colliderMatrixB"
		;
connectAttr "joint1_CapsuleCollider_SphereA.msg" "joint1_CapsuleCollider.colliderAffectedBy[0]"
		;
connectAttr "makeNurbSphere1.msg" "joint1_CapsuleCollider.colliderAffectedBy[1]"
		;
connectAttr "joint1_CapsuleCollider_SphereAShape.msg" "joint1_CapsuleCollider.colliderAffectedBy[2]"
		;
connectAttr "joint1_CapsuleCollider_SphereB.msg" "joint1_CapsuleCollider.colliderAffectedBy[3]"
		;
connectAttr "makeNurbSphere2.msg" "joint1_CapsuleCollider.colliderAffectedBy[4]"
		;
connectAttr "joint1_CapsuleCollider_SphereBShape.msg" "joint1_CapsuleCollider.colliderAffectedBy[5]"
		;
connectAttr "joint1_CapsuleCollider_CircleA.msg" "joint1_CapsuleCollider.colliderAffectedBy[6]"
		;
connectAttr "makeNurbCircle1.msg" "joint1_CapsuleCollider.colliderAffectedBy[7]"
		;
connectAttr "joint1_CapsuleCollider_CircleAShape.msg" "joint1_CapsuleCollider.colliderAffectedBy[8]"
		;
connectAttr "joint1_CapsuleCollider_CircleB.msg" "joint1_CapsuleCollider.colliderAffectedBy[9]"
		;
connectAttr "makeNurbCircle2.msg" "joint1_CapsuleCollider.colliderAffectedBy[10]"
		;
connectAttr "joint1_CapsuleCollider_CircleBShape.msg" "joint1_CapsuleCollider.colliderAffectedBy[11]"
		;
connectAttr "joint1_CapsuleCollider_Loft.msg" "joint1_CapsuleCollider.colliderAffectedBy[12]"
		;
connectAttr "loft1.msg" "joint1_CapsuleCollider.colliderAffectedBy[13]";
connectAttr "joint1_CapsuleCollider_LoftShape.msg" "joint1_CapsuleCollider.colliderAffectedBy[14]"
		;
connectAttr "joint1_CapsuleCollider_halfLength.msg" "joint1_CapsuleCollider.colliderAffectedBy[15]"
		;
connectAttr "joint1_CapsuleCollider_pivot.msg" "joint1_CapsuleCollider.colliderAffectedBy[16]"
		;
connectAttr "joint1_CapsuleCollider_offsetA.msg" "joint1_CapsuleCollider.colliderAffectedBy[17]"
		;
connectAttr "joint1_CapsuleCollider_offsetB.msg" "joint1_CapsuleCollider.colliderAffectedBy[18]"
		;
connectAttr "joint1_CapsuleCollider_lengthDir.msg" "joint1_CapsuleCollider.colliderAffectedBy[19]"
		;
connectAttr "joint1_CapsuleCollider_sweepRangeA.msg" "joint1_CapsuleCollider.colliderAffectedBy[20]"
		;
connectAttr "joint1_CapsuleCollider_sweepRangeB.msg" "joint1_CapsuleCollider.colliderAffectedBy[21]"
		;
connectAttr "joint1_CapsuleCollider_sweepAStartUc.msg" "joint1_CapsuleCollider.colliderAffectedBy[22]"
		;
connectAttr "joint1_CapsuleCollider_sweepAEndUc.msg" "joint1_CapsuleCollider.colliderAffectedBy[23]"
		;
connectAttr "joint1_CapsuleCollider_sweepBStartUc.msg" "joint1_CapsuleCollider.colliderAffectedBy[24]"
		;
connectAttr "joint1_CapsuleCollider_sweepBEndUc.msg" "joint1_CapsuleCollider.colliderAffectedBy[25]"
		;
connectAttr "joint1_CapsuleCollider_offsetA.of" "joint1_CapsuleCollider_SphereA.tx"
		;
connectAttr "joint1_CapsuleCollider.colliderRadiusA" "joint1_CapsuleCollider_SphereA.colliderRadiusA"
		;
connectAttr "joint1_CapsuleCollider.colliderRadiusB" "joint1_CapsuleCollider_SphereA.colliderRadiusB"
		;
connectAttr "joint1_CapsuleCollider.colliderLength" "joint1_CapsuleCollider_SphereA.colliderLength"
		;
connectAttr "joint1_CapsuleCollider.colliderOffset" "joint1_CapsuleCollider_SphereA.colliderOffset"
		;
connectAttr "joint1_CapsuleCollider.colliderPivot" "joint1_CapsuleCollider_SphereA.colliderPivot"
		;
connectAttr "makeNurbSphere1.os" "joint1_CapsuleCollider_SphereAShape.cr";
connectAttr "joint1_CapsuleCollider_offsetB.of" "joint1_CapsuleCollider_SphereB.tx"
		;
connectAttr "joint1_CapsuleCollider.colliderRadiusA" "joint1_CapsuleCollider_SphereB.colliderRadiusA"
		;
connectAttr "joint1_CapsuleCollider.colliderRadiusB" "joint1_CapsuleCollider_SphereB.colliderRadiusB"
		;
connectAttr "joint1_CapsuleCollider.colliderLength" "joint1_CapsuleCollider_SphereB.colliderLength"
		;
connectAttr "joint1_CapsuleCollider.colliderOffset" "joint1_CapsuleCollider_SphereB.colliderOffset"
		;
connectAttr "joint1_CapsuleCollider.colliderPivot" "joint1_CapsuleCollider_SphereB.colliderPivot"
		;
connectAttr "makeNurbSphere2.os" "joint1_CapsuleCollider_SphereBShape.cr";
connectAttr "joint1_CapsuleCollider_offsetA.of" "joint1_CapsuleCollider_CircleA.tx"
		;
connectAttr "joint1_CapsuleCollider.colliderRadiusA" "joint1_CapsuleCollider_CircleA.colliderRadiusA"
		;
connectAttr "joint1_CapsuleCollider.colliderRadiusB" "joint1_CapsuleCollider_CircleA.colliderRadiusB"
		;
connectAttr "joint1_CapsuleCollider.colliderLength" "joint1_CapsuleCollider_CircleA.colliderLength"
		;
connectAttr "joint1_CapsuleCollider.colliderOffset" "joint1_CapsuleCollider_CircleA.colliderOffset"
		;
connectAttr "joint1_CapsuleCollider.colliderPivot" "joint1_CapsuleCollider_CircleA.colliderPivot"
		;
connectAttr "makeNurbCircle1.oc" "joint1_CapsuleCollider_CircleAShape.cr";
connectAttr "joint1_CapsuleCollider_offsetB.of" "joint1_CapsuleCollider_CircleB.tx"
		;
connectAttr "joint1_CapsuleCollider.colliderRadiusA" "joint1_CapsuleCollider_CircleB.colliderRadiusA"
		;
connectAttr "joint1_CapsuleCollider.colliderRadiusB" "joint1_CapsuleCollider_CircleB.colliderRadiusB"
		;
connectAttr "joint1_CapsuleCollider.colliderLength" "joint1_CapsuleCollider_CircleB.colliderLength"
		;
connectAttr "joint1_CapsuleCollider.colliderOffset" "joint1_CapsuleCollider_CircleB.colliderOffset"
		;
connectAttr "joint1_CapsuleCollider.colliderPivot" "joint1_CapsuleCollider_CircleB.colliderPivot"
		;
connectAttr "makeNurbCircle2.oc" "joint1_CapsuleCollider_CircleBShape.cr";
connectAttr "joint1_CapsuleCollider.colliderRadiusA" "joint1_CapsuleCollider_Loft.colliderRadiusA"
		;
connectAttr "joint1_CapsuleCollider.colliderRadiusB" "joint1_CapsuleCollider_Loft.colliderRadiusB"
		;
connectAttr "joint1_CapsuleCollider.colliderLength" "joint1_CapsuleCollider_Loft.colliderLength"
		;
connectAttr "joint1_CapsuleCollider.colliderOffset" "joint1_CapsuleCollider_Loft.colliderOffset"
		;
connectAttr "joint1_CapsuleCollider.colliderPivot" "joint1_CapsuleCollider_Loft.colliderPivot"
		;
connectAttr "joint1_CapsuleCollider.wim" "joint1_CapsuleCollider_Loft.opm";
connectAttr "loft1.os" "joint1_CapsuleCollider_LoftShape.cr";
connectAttr "joint1_CapsuleCollider_SPC.ro" "joint1_CapsuleCollider_SPC_PRCST.cro"
		;
connectAttr "joint1_CapsuleCollider_SPC.pim" "joint1_CapsuleCollider_SPC_PRCST.cpim"
		;
connectAttr "joint1_CapsuleCollider_SPC.rp" "joint1_CapsuleCollider_SPC_PRCST.crp"
		;
connectAttr "joint1_CapsuleCollider_SPC.rpt" "joint1_CapsuleCollider_SPC_PRCST.crt"
		;
connectAttr "joint1.t" "joint1_CapsuleCollider_SPC_PRCST.tg[0].tt";
connectAttr "joint1.rp" "joint1_CapsuleCollider_SPC_PRCST.tg[0].trp";
connectAttr "joint1.rpt" "joint1_CapsuleCollider_SPC_PRCST.tg[0].trt";
connectAttr "joint1.r" "joint1_CapsuleCollider_SPC_PRCST.tg[0].tr";
connectAttr "joint1.ro" "joint1_CapsuleCollider_SPC_PRCST.tg[0].tro";
connectAttr "joint1.s" "joint1_CapsuleCollider_SPC_PRCST.tg[0].ts";
connectAttr "joint1.pm" "joint1_CapsuleCollider_SPC_PRCST.tg[0].tpm";
connectAttr "joint1.jo" "joint1_CapsuleCollider_SPC_PRCST.tg[0].tjo";
connectAttr "joint1.ssc" "joint1_CapsuleCollider_SPC_PRCST.tg[0].tsc";
connectAttr "joint1.is" "joint1_CapsuleCollider_SPC_PRCST.tg[0].tis";
connectAttr "joint1_CapsuleCollider_SPC_PRCST.w0" "joint1_CapsuleCollider_SPC_PRCST.tg[0].tw"
		;
connectAttr "joint3_InfinitePlaneCollider.colliderWidth" "joint3_InfinitePlaneCollider_SPC.colliderWidth"
		;
connectAttr "joint3_InfinitePlaneCollider.colliderHeight" "joint3_InfinitePlaneCollider_SPC.colliderHeight"
		;
connectAttr "joint3_InfinitePlaneCollider_SPC_PRCST.ctx" "joint3_InfinitePlaneCollider_SPC.tx"
		;
connectAttr "joint3_InfinitePlaneCollider_SPC_PRCST.cty" "joint3_InfinitePlaneCollider_SPC.ty"
		;
connectAttr "joint3_InfinitePlaneCollider_SPC_PRCST.ctz" "joint3_InfinitePlaneCollider_SPC.tz"
		;
connectAttr "joint3_InfinitePlaneCollider_SPC_PRCST.crx" "joint3_InfinitePlaneCollider_SPC.rx"
		;
connectAttr "joint3_InfinitePlaneCollider_SPC_PRCST.cry" "joint3_InfinitePlaneCollider_SPC.ry"
		;
connectAttr "joint3_InfinitePlaneCollider_SPC_PRCST.crz" "joint3_InfinitePlaneCollider_SPC.rz"
		;
connectAttr "makeNurbPlane1.msg" "joint3_InfinitePlaneCollider.colliderAffectedBy[0]"
		;
connectAttr "joint3_InfinitePlaneColliderShape.msg" "joint3_InfinitePlaneCollider.colliderAffectedBy[1]"
		;
connectAttr "joint3_InfinitePlaneCollider_ratio.msg" "joint3_InfinitePlaneCollider.colliderAffectedBy[2]"
		;
connectAttr "makeNurbPlane1.os" "joint3_InfinitePlaneColliderShape.cr";
connectAttr "joint3_InfinitePlaneCollider_SPC.ro" "joint3_InfinitePlaneCollider_SPC_PRCST.cro"
		;
connectAttr "joint3_InfinitePlaneCollider_SPC.pim" "joint3_InfinitePlaneCollider_SPC_PRCST.cpim"
		;
connectAttr "joint3_InfinitePlaneCollider_SPC.rp" "joint3_InfinitePlaneCollider_SPC_PRCST.crp"
		;
connectAttr "joint3_InfinitePlaneCollider_SPC.rpt" "joint3_InfinitePlaneCollider_SPC_PRCST.crt"
		;
connectAttr "joint3.t" "joint3_InfinitePlaneCollider_SPC_PRCST.tg[0].tt";
connectAttr "joint3.rp" "joint3_InfinitePlaneCollider_SPC_PRCST.tg[0].trp";
connectAttr "joint3.rpt" "joint3_InfinitePlaneCollider_SPC_PRCST.tg[0].trt";
connectAttr "joint3.r" "joint3_InfinitePlaneCollider_SPC_PRCST.tg[0].tr";
connectAttr "joint3.ro" "joint3_InfinitePlaneCollider_SPC_PRCST.tg[0].tro";
connectAttr "joint3.s" "joint3_InfinitePlaneCollider_SPC_PRCST.tg[0].ts";
connectAttr "joint3.pm" "joint3_InfinitePlaneCollider_SPC_PRCST.tg[0].tpm";
connectAttr "joint3.jo" "joint3_InfinitePlaneCollider_SPC_PRCST.tg[0].tjo";
connectAttr "joint3.ssc" "joint3_InfinitePlaneCollider_SPC_PRCST.tg[0].tsc";
connectAttr "joint3.is" "joint3_InfinitePlaneCollider_SPC_PRCST.tg[0].tis";
connectAttr "joint3_InfinitePlaneCollider_SPC_PRCST.w0" "joint3_InfinitePlaneCollider_SPC_PRCST.tg[0].tw"
		;
connectAttr "joint4_SphereCollider.colliderRadius" "joint4_SphereCollider_SPC.colliderRadius"
		;
connectAttr "joint4_SphereCollider_SPC_PRCST.ctx" "joint4_SphereCollider_SPC.tx"
		;
connectAttr "joint4_SphereCollider_SPC_PRCST.cty" "joint4_SphereCollider_SPC.ty"
		;
connectAttr "joint4_SphereCollider_SPC_PRCST.ctz" "joint4_SphereCollider_SPC.tz"
		;
connectAttr "joint4_SphereCollider_SPC_PRCST.crx" "joint4_SphereCollider_SPC.rx"
		;
connectAttr "joint4_SphereCollider_SPC_PRCST.cry" "joint4_SphereCollider_SPC.ry"
		;
connectAttr "joint4_SphereCollider_SPC_PRCST.crz" "joint4_SphereCollider_SPC.rz"
		;
connectAttr "makeNurbSphere3.msg" "joint4_SphereCollider.colliderAffectedBy[0]";
connectAttr "joint4_SphereColliderShape.msg" "joint4_SphereCollider.colliderAffectedBy[1]"
		;
connectAttr "makeNurbSphere3.os" "joint4_SphereColliderShape.cr";
connectAttr "joint4_SphereCollider_SPC.ro" "joint4_SphereCollider_SPC_PRCST.cro"
		;
connectAttr "joint4_SphereCollider_SPC.pim" "joint4_SphereCollider_SPC_PRCST.cpim"
		;
connectAttr "joint4_SphereCollider_SPC.rp" "joint4_SphereCollider_SPC_PRCST.crp"
		;
connectAttr "joint4_SphereCollider_SPC.rpt" "joint4_SphereCollider_SPC_PRCST.crt"
		;
connectAttr "joint4.t" "joint4_SphereCollider_SPC_PRCST.tg[0].tt";
connectAttr "joint4.rp" "joint4_SphereCollider_SPC_PRCST.tg[0].trp";
connectAttr "joint4.rpt" "joint4_SphereCollider_SPC_PRCST.tg[0].trt";
connectAttr "joint4.r" "joint4_SphereCollider_SPC_PRCST.tg[0].tr";
connectAttr "joint4.ro" "joint4_SphereCollider_SPC_PRCST.tg[0].tro";
connectAttr "joint4.s" "joint4_SphereCollider_SPC_PRCST.tg[0].ts";
connectAttr "joint4.pm" "joint4_SphereCollider_SPC_PRCST.tg[0].tpm";
connectAttr "joint4.jo" "joint4_SphereCollider_SPC_PRCST.tg[0].tjo";
connectAttr "joint4.ssc" "joint4_SphereCollider_SPC_PRCST.tg[0].tsc";
connectAttr "joint4.is" "joint4_SphereCollider_SPC_PRCST.tg[0].tis";
connectAttr "joint4_SphereCollider_SPC_PRCST.w0" "joint4_SphereCollider_SPC_PRCST.tg[0].tw"
		;
connectAttr "joint2_CapsuleCollider.colliderRadiusA" "joint2_CapsuleCollider_SPC.colliderRadiusA"
		;
connectAttr "joint2_CapsuleCollider.colliderRadiusB" "joint2_CapsuleCollider_SPC.colliderRadiusB"
		;
connectAttr "joint2_CapsuleCollider.colliderLength" "joint2_CapsuleCollider_SPC.colliderLength"
		;
connectAttr "joint2_CapsuleCollider.colliderOffset" "joint2_CapsuleCollider_SPC.colliderOffset"
		;
connectAttr "joint2_CapsuleCollider.colliderPivot" "joint2_CapsuleCollider_SPC.colliderPivot"
		;
connectAttr "joint2_CapsuleCollider_SPC_PTCST.ctx" "joint2_CapsuleCollider_SPC.tx"
		;
connectAttr "joint2_CapsuleCollider_SPC_PTCST.cty" "joint2_CapsuleCollider_SPC.ty"
		;
connectAttr "joint2_CapsuleCollider_SPC_PTCST.ctz" "joint2_CapsuleCollider_SPC.tz"
		;
connectAttr "joint2_CapsuleCollider_SPC_AMCST.crx" "joint2_CapsuleCollider_SPC.rx"
		;
connectAttr "joint2_CapsuleCollider_SPC_AMCST.cry" "joint2_CapsuleCollider_SPC.ry"
		;
connectAttr "joint2_CapsuleCollider_SPC_AMCST.crz" "joint2_CapsuleCollider_SPC.rz"
		;
connectAttr "joint2_CapsuleCollider_SphereA.wm" "joint2_CapsuleCollider.colliderMatrixA"
		;
connectAttr "joint2_CapsuleCollider_SphereB.wm" "joint2_CapsuleCollider.colliderMatrixB"
		;
connectAttr "joint2_CapsuleCollider_SphereA.msg" "joint2_CapsuleCollider.colliderAffectedBy[0]"
		;
connectAttr "makeNurbSphere4.msg" "joint2_CapsuleCollider.colliderAffectedBy[1]"
		;
connectAttr "joint2_CapsuleCollider_SphereAShape.msg" "joint2_CapsuleCollider.colliderAffectedBy[2]"
		;
connectAttr "joint2_CapsuleCollider_SphereB.msg" "joint2_CapsuleCollider.colliderAffectedBy[3]"
		;
connectAttr "makeNurbSphere5.msg" "joint2_CapsuleCollider.colliderAffectedBy[4]"
		;
connectAttr "joint2_CapsuleCollider_SphereBShape.msg" "joint2_CapsuleCollider.colliderAffectedBy[5]"
		;
connectAttr "joint2_CapsuleCollider_CircleA.msg" "joint2_CapsuleCollider.colliderAffectedBy[6]"
		;
connectAttr "makeNurbCircle3.msg" "joint2_CapsuleCollider.colliderAffectedBy[7]"
		;
connectAttr "joint2_CapsuleCollider_CircleAShape.msg" "joint2_CapsuleCollider.colliderAffectedBy[8]"
		;
connectAttr "joint2_CapsuleCollider_CircleB.msg" "joint2_CapsuleCollider.colliderAffectedBy[9]"
		;
connectAttr "makeNurbCircle4.msg" "joint2_CapsuleCollider.colliderAffectedBy[10]"
		;
connectAttr "joint2_CapsuleCollider_CircleBShape.msg" "joint2_CapsuleCollider.colliderAffectedBy[11]"
		;
connectAttr "joint2_CapsuleCollider_Loft.msg" "joint2_CapsuleCollider.colliderAffectedBy[12]"
		;
connectAttr "loft2.msg" "joint2_CapsuleCollider.colliderAffectedBy[13]";
connectAttr "joint2_CapsuleCollider_LoftShape.msg" "joint2_CapsuleCollider.colliderAffectedBy[14]"
		;
connectAttr "joint2_CapsuleCollider_halfLength.msg" "joint2_CapsuleCollider.colliderAffectedBy[15]"
		;
connectAttr "joint2_CapsuleCollider_pivot.msg" "joint2_CapsuleCollider.colliderAffectedBy[16]"
		;
connectAttr "joint2_CapsuleCollider_offsetA.msg" "joint2_CapsuleCollider.colliderAffectedBy[17]"
		;
connectAttr "joint2_CapsuleCollider_offsetB.msg" "joint2_CapsuleCollider.colliderAffectedBy[18]"
		;
connectAttr "joint2_CapsuleCollider_lengthDir.msg" "joint2_CapsuleCollider.colliderAffectedBy[19]"
		;
connectAttr "joint2_CapsuleCollider_sweepRangeA.msg" "joint2_CapsuleCollider.colliderAffectedBy[20]"
		;
connectAttr "joint2_CapsuleCollider_sweepRangeB.msg" "joint2_CapsuleCollider.colliderAffectedBy[21]"
		;
connectAttr "joint2_CapsuleCollider_sweepAStartUc.msg" "joint2_CapsuleCollider.colliderAffectedBy[22]"
		;
connectAttr "joint2_CapsuleCollider_sweepAEndUc.msg" "joint2_CapsuleCollider.colliderAffectedBy[23]"
		;
connectAttr "joint2_CapsuleCollider_sweepBStartUc.msg" "joint2_CapsuleCollider.colliderAffectedBy[24]"
		;
connectAttr "joint2_CapsuleCollider_sweepBEndUc.msg" "joint2_CapsuleCollider.colliderAffectedBy[25]"
		;
connectAttr "joint2_CapsuleCollider_offsetA.of" "joint2_CapsuleCollider_SphereA.tx"
		;
connectAttr "joint2_CapsuleCollider.colliderRadiusA" "joint2_CapsuleCollider_SphereA.colliderRadiusA"
		;
connectAttr "joint2_CapsuleCollider.colliderRadiusB" "joint2_CapsuleCollider_SphereA.colliderRadiusB"
		;
connectAttr "joint2_CapsuleCollider.colliderLength" "joint2_CapsuleCollider_SphereA.colliderLength"
		;
connectAttr "joint2_CapsuleCollider.colliderOffset" "joint2_CapsuleCollider_SphereA.colliderOffset"
		;
connectAttr "joint2_CapsuleCollider.colliderPivot" "joint2_CapsuleCollider_SphereA.colliderPivot"
		;
connectAttr "makeNurbSphere4.os" "joint2_CapsuleCollider_SphereAShape.cr";
connectAttr "joint2_CapsuleCollider_offsetB.of" "joint2_CapsuleCollider_SphereB.tx"
		;
connectAttr "joint2_CapsuleCollider.colliderRadiusA" "joint2_CapsuleCollider_SphereB.colliderRadiusA"
		;
connectAttr "joint2_CapsuleCollider.colliderRadiusB" "joint2_CapsuleCollider_SphereB.colliderRadiusB"
		;
connectAttr "joint2_CapsuleCollider.colliderLength" "joint2_CapsuleCollider_SphereB.colliderLength"
		;
connectAttr "joint2_CapsuleCollider.colliderOffset" "joint2_CapsuleCollider_SphereB.colliderOffset"
		;
connectAttr "joint2_CapsuleCollider.colliderPivot" "joint2_CapsuleCollider_SphereB.colliderPivot"
		;
connectAttr "makeNurbSphere5.os" "joint2_CapsuleCollider_SphereBShape.cr";
connectAttr "joint2_CapsuleCollider_offsetA.of" "joint2_CapsuleCollider_CircleA.tx"
		;
connectAttr "joint2_CapsuleCollider.colliderRadiusA" "joint2_CapsuleCollider_CircleA.colliderRadiusA"
		;
connectAttr "joint2_CapsuleCollider.colliderRadiusB" "joint2_CapsuleCollider_CircleA.colliderRadiusB"
		;
connectAttr "joint2_CapsuleCollider.colliderLength" "joint2_CapsuleCollider_CircleA.colliderLength"
		;
connectAttr "joint2_CapsuleCollider.colliderOffset" "joint2_CapsuleCollider_CircleA.colliderOffset"
		;
connectAttr "joint2_CapsuleCollider.colliderPivot" "joint2_CapsuleCollider_CircleA.colliderPivot"
		;
connectAttr "makeNurbCircle3.oc" "joint2_CapsuleCollider_CircleAShape.cr";
connectAttr "joint2_CapsuleCollider_offsetB.of" "joint2_CapsuleCollider_CircleB.tx"
		;
connectAttr "joint2_CapsuleCollider.colliderRadiusA" "joint2_CapsuleCollider_CircleB.colliderRadiusA"
		;
connectAttr "joint2_CapsuleCollider.colliderRadiusB" "joint2_CapsuleCollider_CircleB.colliderRadiusB"
		;
connectAttr "joint2_CapsuleCollider.colliderLength" "joint2_CapsuleCollider_CircleB.colliderLength"
		;
connectAttr "joint2_CapsuleCollider.colliderOffset" "joint2_CapsuleCollider_CircleB.colliderOffset"
		;
connectAttr "joint2_CapsuleCollider.colliderPivot" "joint2_CapsuleCollider_CircleB.colliderPivot"
		;
connectAttr "makeNurbCircle4.oc" "joint2_CapsuleCollider_CircleBShape.cr";
connectAttr "joint2_CapsuleCollider.colliderRadiusA" "joint2_CapsuleCollider_Loft.colliderRadiusA"
		;
connectAttr "joint2_CapsuleCollider.colliderRadiusB" "joint2_CapsuleCollider_Loft.colliderRadiusB"
		;
connectAttr "joint2_CapsuleCollider.colliderLength" "joint2_CapsuleCollider_Loft.colliderLength"
		;
connectAttr "joint2_CapsuleCollider.colliderOffset" "joint2_CapsuleCollider_Loft.colliderOffset"
		;
connectAttr "joint2_CapsuleCollider.colliderPivot" "joint2_CapsuleCollider_Loft.colliderPivot"
		;
connectAttr "joint2_CapsuleCollider.wim" "joint2_CapsuleCollider_Loft.opm";
connectAttr "loft2.os" "joint2_CapsuleCollider_LoftShape.cr";
connectAttr "joint2_CapsuleCollider_SPC.pim" "joint2_CapsuleCollider_SPC_PTCST.cpim"
		;
connectAttr "joint2_CapsuleCollider_SPC.rp" "joint2_CapsuleCollider_SPC_PTCST.crp"
		;
connectAttr "joint2_CapsuleCollider_SPC.rpt" "joint2_CapsuleCollider_SPC_PTCST.crt"
		;
connectAttr "joint2.t" "joint2_CapsuleCollider_SPC_PTCST.tg[0].tt";
connectAttr "joint2.rp" "joint2_CapsuleCollider_SPC_PTCST.tg[0].trp";
connectAttr "joint2.rpt" "joint2_CapsuleCollider_SPC_PTCST.tg[0].trt";
connectAttr "joint2.pm" "joint2_CapsuleCollider_SPC_PTCST.tg[0].tpm";
connectAttr "joint2_CapsuleCollider_SPC_PTCST.w0" "joint2_CapsuleCollider_SPC_PTCST.tg[0].tw"
		;
connectAttr "joint2_CapsuleCollider_SPC.pim" "joint2_CapsuleCollider_SPC_AMCST.cpim"
		;
connectAttr "joint2_CapsuleCollider_SPC.t" "joint2_CapsuleCollider_SPC_AMCST.ct"
		;
connectAttr "joint2_CapsuleCollider_SPC.rp" "joint2_CapsuleCollider_SPC_AMCST.crp"
		;
connectAttr "joint2_CapsuleCollider_SPC.rpt" "joint2_CapsuleCollider_SPC_AMCST.crt"
		;
connectAttr "joint2_CapsuleCollider_SPC.ro" "joint2_CapsuleCollider_SPC_AMCST.cro"
		;
connectAttr "joint3.t" "joint2_CapsuleCollider_SPC_AMCST.tg[0].tt";
connectAttr "joint3.rp" "joint2_CapsuleCollider_SPC_AMCST.tg[0].trp";
connectAttr "joint3.rpt" "joint2_CapsuleCollider_SPC_AMCST.tg[0].trt";
connectAttr "joint3.pm" "joint2_CapsuleCollider_SPC_AMCST.tg[0].tpm";
connectAttr "joint2_CapsuleCollider_SPC_AMCST.w0" "joint2_CapsuleCollider_SPC_AMCST.tg[0].tw"
		;
connectAttr "joint2.wm" "joint2_CapsuleCollider_SPC_AMCST.wum";
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
connectAttr "makeNurbSphere6.msg" "CapsuleCollider.colliderAffectedBy[1]";
connectAttr "CapsuleCollider_SphereAShape.msg" "CapsuleCollider.colliderAffectedBy[2]"
		;
connectAttr "CapsuleCollider_SphereB.msg" "CapsuleCollider.colliderAffectedBy[3]"
		;
connectAttr "makeNurbSphere7.msg" "CapsuleCollider.colliderAffectedBy[4]";
connectAttr "CapsuleCollider_SphereBShape.msg" "CapsuleCollider.colliderAffectedBy[5]"
		;
connectAttr "CapsuleCollider_CircleA.msg" "CapsuleCollider.colliderAffectedBy[6]"
		;
connectAttr "makeNurbCircle5.msg" "CapsuleCollider.colliderAffectedBy[7]";
connectAttr "CapsuleCollider_CircleAShape.msg" "CapsuleCollider.colliderAffectedBy[8]"
		;
connectAttr "CapsuleCollider_CircleB.msg" "CapsuleCollider.colliderAffectedBy[9]"
		;
connectAttr "makeNurbCircle6.msg" "CapsuleCollider.colliderAffectedBy[10]";
connectAttr "CapsuleCollider_CircleBShape.msg" "CapsuleCollider.colliderAffectedBy[11]"
		;
connectAttr "CapsuleCollider_Loft.msg" "CapsuleCollider.colliderAffectedBy[12]";
connectAttr "loft3.msg" "CapsuleCollider.colliderAffectedBy[13]";
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
connectAttr "CapsuleCollider_lengthDir.msg" "CapsuleCollider.colliderAffectedBy[19]"
		;
connectAttr "CapsuleCollider_sweepRangeA.msg" "CapsuleCollider.colliderAffectedBy[20]"
		;
connectAttr "CapsuleCollider_sweepRangeB.msg" "CapsuleCollider.colliderAffectedBy[21]"
		;
connectAttr "CapsuleCollider_sweepAStartUc.msg" "CapsuleCollider.colliderAffectedBy[22]"
		;
connectAttr "CapsuleCollider_sweepAEndUc.msg" "CapsuleCollider.colliderAffectedBy[23]"
		;
connectAttr "CapsuleCollider_sweepBStartUc.msg" "CapsuleCollider.colliderAffectedBy[24]"
		;
connectAttr "CapsuleCollider_sweepBEndUc.msg" "CapsuleCollider.colliderAffectedBy[25]"
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
connectAttr "makeNurbSphere6.os" "CapsuleCollider_SphereAShape.cr";
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
connectAttr "makeNurbSphere7.os" "CapsuleCollider_SphereBShape.cr";
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
connectAttr "makeNurbCircle5.oc" "CapsuleCollider_CircleAShape.cr";
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
connectAttr "makeNurbCircle6.oc" "CapsuleCollider_CircleBShape.cr";
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
connectAttr "loft3.os" "CapsuleCollider_LoftShape.cr";
connectAttr "InfinitePlaneCollider.colliderWidth" "InfinitePlaneCollider_SPC.colliderWidth"
		;
connectAttr "InfinitePlaneCollider.colliderHeight" "InfinitePlaneCollider_SPC.colliderHeight"
		;
connectAttr "makeNurbPlane2.msg" "InfinitePlaneCollider.colliderAffectedBy[0]";
connectAttr "InfinitePlaneColliderShape.msg" "InfinitePlaneCollider.colliderAffectedBy[1]"
		;
connectAttr "InfinitePlaneCollider_ratio.msg" "InfinitePlaneCollider.colliderAffectedBy[2]"
		;
connectAttr "makeNurbPlane2.os" "InfinitePlaneColliderShape.cr";
connectAttr "SphereCollider.colliderRadius" "SphereCollider_SPC.colliderRadius";
connectAttr "makeNurbSphere8.msg" "SphereCollider.colliderAffectedBy[0]";
connectAttr "SphereColliderShape.msg" "SphereCollider.colliderAffectedBy[1]";
connectAttr "makeNurbSphere8.os" "SphereColliderShape.cr";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "joint1_CapsuleCollider.colliderRadiusA" "makeNurbSphere1.r";
connectAttr "joint1_CapsuleCollider_sweepAStartUc.o" "makeNurbSphere1.ssw";
connectAttr "joint1_CapsuleCollider_sweepAEndUc.o" "makeNurbSphere1.esw";
connectAttr "joint1_CapsuleCollider.colliderRadiusB" "makeNurbSphere2.r";
connectAttr "joint1_CapsuleCollider_sweepBStartUc.o" "makeNurbSphere2.ssw";
connectAttr "joint1_CapsuleCollider_sweepBEndUc.o" "makeNurbSphere2.esw";
connectAttr "joint1_CapsuleCollider.colliderRadiusA" "makeNurbCircle1.r";
connectAttr "joint1_CapsuleCollider_lengthDir.ocr" "makeNurbCircle1.nrx";
connectAttr "joint1_CapsuleCollider.colliderRadiusB" "makeNurbCircle2.r";
connectAttr "joint1_CapsuleCollider_lengthDir.ocr" "makeNurbCircle2.nrx";
connectAttr "joint1_CapsuleCollider_CircleBShape.ws" "loft1.ic[0]";
connectAttr "joint1_CapsuleCollider_CircleAShape.ws" "loft1.ic[1]";
connectAttr "joint1_CapsuleCollider.colliderLength" "joint1_CapsuleCollider_halfLength._fa"
		;
connectAttr "joint1_CapsuleCollider_halfLength.of" "joint1_CapsuleCollider_pivot._fa"
		;
connectAttr "joint1_CapsuleCollider.colliderPivot" "joint1_CapsuleCollider_pivot._fb"
		;
connectAttr "joint1_CapsuleCollider_pivot.of" "joint1_CapsuleCollider_offsetA._fa"
		;
connectAttr "joint1_CapsuleCollider.colliderOffset" "joint1_CapsuleCollider_offsetA._fb"
		;
connectAttr "joint1_CapsuleCollider_offsetA.of" "joint1_CapsuleCollider_offsetB._fa"
		;
connectAttr "joint1_CapsuleCollider.colliderLength" "joint1_CapsuleCollider_offsetB._fb"
		;
connectAttr "joint1_CapsuleCollider.colliderLength" "joint1_CapsuleCollider_lengthDir.ft"
		;
connectAttr "joint1_CapsuleCollider_lengthDir.ocr" "joint1_CapsuleCollider_sweepRangeA.vx"
		;
connectAttr "joint1_CapsuleCollider_lengthDir.ocr" "joint1_CapsuleCollider_sweepRangeA.vy"
		;
connectAttr "joint1_CapsuleCollider_lengthDir.ocr" "joint1_CapsuleCollider_sweepRangeB.vx"
		;
connectAttr "joint1_CapsuleCollider_lengthDir.ocr" "joint1_CapsuleCollider_sweepRangeB.vy"
		;
connectAttr "joint1_CapsuleCollider_sweepRangeA.ox" "joint1_CapsuleCollider_sweepAStartUc.i"
		;
connectAttr "joint1_CapsuleCollider_sweepRangeA.oy" "joint1_CapsuleCollider_sweepAEndUc.i"
		;
connectAttr "joint1_CapsuleCollider_sweepRangeB.ox" "joint1_CapsuleCollider_sweepBStartUc.i"
		;
connectAttr "joint1_CapsuleCollider_sweepRangeB.oy" "joint1_CapsuleCollider_sweepBEndUc.i"
		;
connectAttr "joint3_InfinitePlaneCollider.colliderWidth" "makeNurbPlane1.w";
connectAttr "joint3_InfinitePlaneCollider_ratio.of" "makeNurbPlane1.lr";
connectAttr "joint3_InfinitePlaneCollider.colliderHeight" "joint3_InfinitePlaneCollider_ratio._fa"
		;
connectAttr "joint3_InfinitePlaneCollider.colliderWidth" "joint3_InfinitePlaneCollider_ratio._fb"
		;
connectAttr "joint4_SphereCollider.colliderRadius" "makeNurbSphere3.r";
connectAttr "joint2_CapsuleCollider.colliderRadiusA" "makeNurbSphere4.r";
connectAttr "joint2_CapsuleCollider_sweepAStartUc.o" "makeNurbSphere4.ssw";
connectAttr "joint2_CapsuleCollider_sweepAEndUc.o" "makeNurbSphere4.esw";
connectAttr "joint2_CapsuleCollider.colliderRadiusB" "makeNurbSphere5.r";
connectAttr "joint2_CapsuleCollider_sweepBStartUc.o" "makeNurbSphere5.ssw";
connectAttr "joint2_CapsuleCollider_sweepBEndUc.o" "makeNurbSphere5.esw";
connectAttr "joint2_CapsuleCollider.colliderRadiusA" "makeNurbCircle3.r";
connectAttr "joint2_CapsuleCollider_lengthDir.ocr" "makeNurbCircle3.nrx";
connectAttr "joint2_CapsuleCollider.colliderRadiusB" "makeNurbCircle4.r";
connectAttr "joint2_CapsuleCollider_lengthDir.ocr" "makeNurbCircle4.nrx";
connectAttr "joint2_CapsuleCollider_CircleBShape.ws" "loft2.ic[0]";
connectAttr "joint2_CapsuleCollider_CircleAShape.ws" "loft2.ic[1]";
connectAttr "joint2_CapsuleCollider.colliderLength" "joint2_CapsuleCollider_halfLength._fa"
		;
connectAttr "joint2_CapsuleCollider_halfLength.of" "joint2_CapsuleCollider_pivot._fa"
		;
connectAttr "joint2_CapsuleCollider.colliderPivot" "joint2_CapsuleCollider_pivot._fb"
		;
connectAttr "joint2_CapsuleCollider_pivot.of" "joint2_CapsuleCollider_offsetA._fa"
		;
connectAttr "joint2_CapsuleCollider.colliderOffset" "joint2_CapsuleCollider_offsetA._fb"
		;
connectAttr "joint2_CapsuleCollider_offsetA.of" "joint2_CapsuleCollider_offsetB._fa"
		;
connectAttr "joint2_CapsuleCollider.colliderLength" "joint2_CapsuleCollider_offsetB._fb"
		;
connectAttr "joint2_CapsuleCollider.colliderLength" "joint2_CapsuleCollider_lengthDir.ft"
		;
connectAttr "joint2_CapsuleCollider_lengthDir.ocr" "joint2_CapsuleCollider_sweepRangeA.vx"
		;
connectAttr "joint2_CapsuleCollider_lengthDir.ocr" "joint2_CapsuleCollider_sweepRangeA.vy"
		;
connectAttr "joint2_CapsuleCollider_lengthDir.ocr" "joint2_CapsuleCollider_sweepRangeB.vx"
		;
connectAttr "joint2_CapsuleCollider_lengthDir.ocr" "joint2_CapsuleCollider_sweepRangeB.vy"
		;
connectAttr "joint2_CapsuleCollider_sweepRangeA.ox" "joint2_CapsuleCollider_sweepAStartUc.i"
		;
connectAttr "joint2_CapsuleCollider_sweepRangeA.oy" "joint2_CapsuleCollider_sweepAEndUc.i"
		;
connectAttr "joint2_CapsuleCollider_sweepRangeB.ox" "joint2_CapsuleCollider_sweepBStartUc.i"
		;
connectAttr "joint2_CapsuleCollider_sweepRangeB.oy" "joint2_CapsuleCollider_sweepBEndUc.i"
		;
connectAttr "CapsuleCollider.colliderRadiusA" "makeNurbSphere6.r";
connectAttr "CapsuleCollider_sweepAStartUc.o" "makeNurbSphere6.ssw";
connectAttr "CapsuleCollider_sweepAEndUc.o" "makeNurbSphere6.esw";
connectAttr "CapsuleCollider.colliderRadiusB" "makeNurbSphere7.r";
connectAttr "CapsuleCollider_sweepBStartUc.o" "makeNurbSphere7.ssw";
connectAttr "CapsuleCollider_sweepBEndUc.o" "makeNurbSphere7.esw";
connectAttr "CapsuleCollider.colliderRadiusA" "makeNurbCircle5.r";
connectAttr "CapsuleCollider_lengthDir.ocr" "makeNurbCircle5.nrx";
connectAttr "CapsuleCollider.colliderRadiusB" "makeNurbCircle6.r";
connectAttr "CapsuleCollider_lengthDir.ocr" "makeNurbCircle6.nrx";
connectAttr "CapsuleCollider_CircleBShape.ws" "loft3.ic[0]";
connectAttr "CapsuleCollider_CircleAShape.ws" "loft3.ic[1]";
connectAttr "CapsuleCollider.colliderLength" "CapsuleCollider_halfLength._fa";
connectAttr "CapsuleCollider_halfLength.of" "CapsuleCollider_pivot._fa";
connectAttr "CapsuleCollider.colliderPivot" "CapsuleCollider_pivot._fb";
connectAttr "CapsuleCollider_pivot.of" "CapsuleCollider_offsetA._fa";
connectAttr "CapsuleCollider.colliderOffset" "CapsuleCollider_offsetA._fb";
connectAttr "CapsuleCollider_offsetA.of" "CapsuleCollider_offsetB._fa";
connectAttr "CapsuleCollider.colliderLength" "CapsuleCollider_offsetB._fb";
connectAttr "CapsuleCollider.colliderLength" "CapsuleCollider_lengthDir.ft";
connectAttr "CapsuleCollider_lengthDir.ocr" "CapsuleCollider_sweepRangeA.vx";
connectAttr "CapsuleCollider_lengthDir.ocr" "CapsuleCollider_sweepRangeA.vy";
connectAttr "CapsuleCollider_lengthDir.ocr" "CapsuleCollider_sweepRangeB.vx";
connectAttr "CapsuleCollider_lengthDir.ocr" "CapsuleCollider_sweepRangeB.vy";
connectAttr "CapsuleCollider_sweepRangeA.ox" "CapsuleCollider_sweepAStartUc.i";
connectAttr "CapsuleCollider_sweepRangeA.oy" "CapsuleCollider_sweepAEndUc.i";
connectAttr "CapsuleCollider_sweepRangeB.ox" "CapsuleCollider_sweepBStartUc.i";
connectAttr "CapsuleCollider_sweepRangeB.oy" "CapsuleCollider_sweepBEndUc.i";
connectAttr "InfinitePlaneCollider.colliderWidth" "makeNurbPlane2.w";
connectAttr "InfinitePlaneCollider_ratio.of" "makeNurbPlane2.lr";
connectAttr "InfinitePlaneCollider.colliderHeight" "InfinitePlaneCollider_ratio._fa"
		;
connectAttr "InfinitePlaneCollider.colliderWidth" "InfinitePlaneCollider_ratio._fb"
		;
connectAttr "SphereCollider.colliderRadius" "makeNurbSphere8.r";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "joint1_CapsuleCollider_SphereAShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "joint1_CapsuleCollider_SphereBShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "joint1_CapsuleCollider_LoftShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "joint3_InfinitePlaneColliderShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "joint4_SphereColliderShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "joint2_CapsuleCollider_SphereAShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "joint2_CapsuleCollider_SphereBShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "joint2_CapsuleCollider_LoftShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "CapsuleCollider_SphereAShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "CapsuleCollider_SphereBShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "CapsuleCollider_LoftShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "InfinitePlaneColliderShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "SphereColliderShape.iog" ":initialShadingGroup.dsm" -na;
// End of collider.ma
