//Maya ASCII 2022 scene
//Name: fk.ma
//Last modified: Sun, Feb 09, 2025 04:32:35 AM
//Codeset: 932
requires maya "2022";
requires "stereoCamera" "10.0";
requires "mtoa" "5.0.0.4";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202405021833-753375ecb3";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "A65387DC-4661-F60F-3D96-29940047C422";
createNode transform -s -n "persp";
	rename -uid "CC445886-4659-848A-C84B-0E94880DA8D7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 11.41266321786469 43.212149142271777 21.311491904955464 ;
	setAttr ".r" -type "double3" -63.938352729603672 4.2000000000001343 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "960A8537-442D-62A3-19B7-65888FF90F2B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 48.523438481339987;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "EB60764F-4287-E776-07EE-AFBF0A2E0C36";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "8F56F476-4E71-314E-F414-759742666A93";
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
	rename -uid "51B10765-4654-3D79-A220-3193A0AE896E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "62BFAA1D-45D3-D1D0-A4FC-4589C44FCE95";
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
	rename -uid "81CE575F-492F-3827-E525-6D8659F65C2C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "EFB38AD3-4C53-A938-85E8-48B5F442D8E6";
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
createNode transform -n "MDL";
	rename -uid "804DE71A-4BB5-CA2B-3CE1-299D6D2731C5";
createNode joint -n "root" -p "MDL";
	rename -uid "CB546D06-402E-7F34-EC30-E589E38FEE84";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "joint_A1" -p "|MDL|root";
	rename -uid "B27CDCA4-456C-10C5-5174-8E8327B7C241";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "joint_A2" -p "|MDL|root|joint_A1";
	rename -uid "09C2AA2E-4817-C4AD-68D5-C08BE6CC27C6";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "joint_A3" -p "|MDL|root|joint_A1|joint_A2";
	rename -uid "1A186296-4B94-FB6A-2927-B0B343882C7D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "joint_A4" -p "|MDL|root|joint_A1|joint_A2|joint_A3";
	rename -uid "9F582A87-459C-597D-B6D1-8D82E18B6990";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "joint_A4_PRCST" -p "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4";
	rename -uid "DA17D6AE-4CEA-537F-89DE-B392E72A20D3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint_A4W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 3 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_A3_PRCST" -p "|MDL|root|joint_A1|joint_A2|joint_A3";
	rename -uid "7B19B144-4BA7-EF0A-CED1-2EA1F898EC27";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint_A3W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 3 0 3.3306690738754696e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_A2_PRCST" -p "|MDL|root|joint_A1|joint_A2";
	rename -uid "D9DD73ED-490E-2644-A388-699B68C06D06";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint_A2W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 3 0 6.4392935428259079e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_A1_PRCST" -p "|MDL|root|joint_A1";
	rename -uid "B6576FCE-4FC2-13AE-6CCA-67AC03031779";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint_A1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0 0 -2 ;
	setAttr -k on ".w0";
createNode joint -n "joint_B1" -p "|MDL|root";
	rename -uid "6C371414-4D06-219D-CC02-0388D1D7588D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "joint_B2" -p "|MDL|root|joint_B1";
	rename -uid "F4A74352-4C95-1716-57AE-15B365BA6B57";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "joint_B3" -p "|MDL|root|joint_B1|joint_B2";
	rename -uid "8CF4A674-4DD1-88C9-8759-B5A28599C21D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "joint_B4" -p "|MDL|root|joint_B1|joint_B2|joint_B3";
	rename -uid "FEF82583-48D3-951F-81D1-6FB5BA6D8E33";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "joint_B4_PRCST" -p "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4";
	rename -uid "82D50499-4F67-02BE-26F3-D8A9ED14EAB9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint_B4W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 3 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_B3_PRCST" -p "|MDL|root|joint_B1|joint_B2|joint_B3";
	rename -uid "E04B8290-4A75-1E8D-1CD5-11BED4A617CF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint_B3W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 3 0 8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_B2_PRCST" -p "|MDL|root|joint_B1|joint_B2";
	rename -uid "E290B33A-4ACF-C577-33BF-5F9506F68937";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint_B2W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 3 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_B1_PRCST" -p "|MDL|root|joint_B1";
	rename -uid "D8E8D9F2-4CE6-6BE8-5D3F-888684EAB399";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint_B1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0 0 2 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "root_PRCST" -p "|MDL|root";
	rename -uid "7358A42B-49B6-B701-A0DB-D4833E8F030E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "rootW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "GID";
	rename -uid "122E7071-448B-2ED6-4776-F3A465615BC1";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".v" no;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";";
createNode transform -n "root" -p "GID";
	rename -uid "12E6C958-4D67-42A2-B562-E5A0EDC9D06B";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root\";";
createNode transform -n "joint_A1" -p "|GID|root";
	rename -uid "C7EC282D-4F1D-CE9E-D574-CC947D05BEF6";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 0 0 -2 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root|joint_A1\";";
createNode transform -n "joint_A2" -p "|GID|root|joint_A1";
	rename -uid "20E57D0C-498B-0890-F939-CF93C0523E5A";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 3 0 6.4392935428259079e-15 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root|joint_A1|joint_A2\";";
createNode transform -n "joint_A3" -p "|GID|root|joint_A1|joint_A2";
	rename -uid "F53819A4-4CBD-F7B5-A827-0698E7C6315B";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 3 0 3.3306690738754696e-15 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root|joint_A1|joint_A2|joint_A3\";";
createNode transform -n "joint_A4" -p "|GID|root|joint_A1|joint_A2|joint_A3";
	rename -uid "FA4B2054-41A5-5042-1A23-9C981BF30B77";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 3 0 0 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4\";";
createNode transform -n "joint_B1" -p "|GID|root";
	rename -uid "F1C79B44-42BF-BD72-487C-F59D32980963";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 0 0 2 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root|joint_B1\";";
createNode transform -n "joint_B2" -p "|GID|root|joint_B1";
	rename -uid "16FED9AB-40F4-F0CA-6A51-0781FBE8C973";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 3 0 0 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root|joint_B1|joint_B2\";";
createNode transform -n "joint_B3" -p "|GID|root|joint_B1|joint_B2";
	rename -uid "2409A96E-48B3-011E-A14C-74B7833DE75C";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 3 0 8.8817841970012523e-16 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root|joint_B1|joint_B2|joint_B3\";";
createNode transform -n "joint_B4" -p "|GID|root|joint_B1|joint_B2|joint_B3";
	rename -uid "46F073B2-417F-83B4-7420-DA8F731CDD9B";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 3 0 0 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4\";";
createNode transform -n "RIG";
	rename -uid "6856A566-42AD-7375-1D35-2EB3AF673058";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr -l on ".mrsData" -type "string" "type=\"rig\";datetime=\"202502090415\";toolVersion=\"0.22.9\";";
createNode transform -n "BRG" -p "RIG";
	rename -uid "E6198C3A-45E4-BCA6-6CB8-7CB368225A01";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".v" no;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";";
createNode joint -n "root" -p "BRG";
	rename -uid "0DE6D79C-4749-9315-4D72-3496688F07F4";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root\";";
createNode joint -n "joint_A1" -p "|RIG|BRG|root";
	rename -uid "DAA11B54-4F42-7889-74F9-83AF72E03AD7";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root|joint_A1\";";
createNode joint -n "joint_A2" -p "|RIG|BRG|root|joint_A1";
	rename -uid "4D739399-4FDF-4BEE-8B2C-92BE279D8E3D";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root|joint_A1|joint_A2\";";
createNode joint -n "joint_A3" -p "|RIG|BRG|root|joint_A1|joint_A2";
	rename -uid "9EE81A0B-4F7E-BBF7-0B84-23B2AC5B7E7A";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root|joint_A1|joint_A2|joint_A3\";";
createNode joint -n "joint_A4" -p "|RIG|BRG|root|joint_A1|joint_A2|joint_A3";
	rename -uid "438A1D77-4E4B-A1B6-3C74-94901BB982BB";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4\";";
createNode parentConstraint -n "joint_A4_PRCST" -p "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4";
	rename -uid "5DBDBD8B-409A-44E3-AB46-5D853E51F891";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_joint_A4_BDRW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".rst" -type "double3" 3 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_A3_PRCST" -p "|RIG|BRG|root|joint_A1|joint_A2|joint_A3";
	rename -uid "52AEECCA-4188-017E-2CE0-6BBC963FFB52";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_joint_A3_BDRW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".rst" -type "double3" 3 0 3.3306690738754696e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_A2_PRCST" -p "|RIG|BRG|root|joint_A1|joint_A2";
	rename -uid "F4372950-4781-3970-AD56-28A88F1DDF1E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_joint_A2_BDRW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".rst" -type "double3" 3 0 6.4392935428259079e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_A1_PRCST" -p "|RIG|BRG|root|joint_A1";
	rename -uid "3B17B8DC-4F01-7720-0C86-228682B55A1D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_joint_A1_BDRW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".rst" -type "double3" 0 0 -2 ;
	setAttr -k on ".w0";
createNode joint -n "joint_B1" -p "|RIG|BRG|root";
	rename -uid "01FBF22F-4421-7DA4-E886-E9B49DA3FBD5";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root|joint_B1\";";
createNode joint -n "joint_B2" -p "|RIG|BRG|root|joint_B1";
	rename -uid "CE23E9A3-4D9F-D0FC-05B5-9EBF83D31E58";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root|joint_B1|joint_B2\";";
createNode joint -n "joint_B3" -p "|RIG|BRG|root|joint_B1|joint_B2";
	rename -uid "BC104726-4FD6-CA3E-FA14-FA9B13FA7408";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root|joint_B1|joint_B2|joint_B3\";";
createNode joint -n "joint_B4" -p "|RIG|BRG|root|joint_B1|joint_B2|joint_B3";
	rename -uid "C592866B-4FDC-46DD-2AAD-6FB169F4C1A1";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4\";";
createNode parentConstraint -n "joint_B4_PRCST" -p "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4";
	rename -uid "399A550A-469E-7155-B3B1-20A4F2C299A7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_joint_B4_BDRW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".rst" -type "double3" 3 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_B3_PRCST" -p "|RIG|BRG|root|joint_B1|joint_B2|joint_B3";
	rename -uid "C63BFA1F-4F45-11DF-B293-34895E5CFA5E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_joint_B3_BDRW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".rst" -type "double3" 3 0 8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_B2_PRCST" -p "|RIG|BRG|root|joint_B1|joint_B2";
	rename -uid "BB87B4B5-40FF-72C6-2A86-4883CC296CE9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_joint_B2_BDRW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".rst" -type "double3" 3 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_B1_PRCST" -p "|RIG|BRG|root|joint_B1";
	rename -uid "CD9994D8-46D5-9E50-1137-EDA6DB09C34C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_joint_B1_BDRW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".rst" -type "double3" 0 0 2 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "root_PRCST" -p "|RIG|BRG|root";
	rename -uid "802E799E-4E6A-9EC9-26F6-9AAE90B6B29A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_root_BDRW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "MOD_Root" -p "RIG";
	rename -uid "E59639A3-445C-8020-8DAE-CBACFACAFACF";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr -l on ".mrsData" -type "string" "type=\"module\";moduleType=\"FK\";";
createNode transform -n "CTL_Root_GRP" -p "MOD_Root";
	rename -uid "0A96BD98-4A3D-D3DB-D0C9-5084B3D03362";
createNode transform -n "CTL_root_IDT" -p "CTL_Root_GRP";
	rename -uid "9FCEB379-46FB-6AD2-EF71-C681D97D0DCA";
createNode transform -n "CTL_root" -p "CTL_root_IDT";
	rename -uid "F8DC853B-428D-E21B-C0EE-ADA8322F7A59";
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
	setAttr -l on ".stx";
	setAttr -l on ".sty";
	setAttr -l on ".stz";
	setAttr -l on ".srx";
	setAttr -l on ".sry";
	setAttr -l on ".srz";
	setAttr ".ss" -type "double3" 0.8 0.8 0.8 ;
	setAttr -l on ".ssx";
	setAttr -l on ".ssy";
	setAttr -l on ".ssz";
	setAttr -l on ".cn" -type "string" "Circle(Directional)";
createNode transform -n "AUX_root_BDR" -p "CTL_root";
	rename -uid "FDBBB271-4F89-5DA4-8A38-99AAE940CFE7";
createNode nurbsCurve -n "CTL_rootShape1" -p "CTL_root";
	rename -uid "8CF7CD4A-4D5D-3C73-DC55-D3B7FE3B07D7";
	addAttr -ci true -sn "sc" -ln "sourceCurve" -dt "nurbsCurve";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 14 0 no 3
		19 4.2226777970000002 4.2226777970000002 4.2226777970000002 5 6 7 8 9 10 11
		 11.777322310000001 11.777322310000001 11.777322310000001 12.777322310000001 12.777322310000001
		 12.777322310000001 13.777322310000001 13.777322310000001 13.777322310000001
		17
		0.13891854882240295 0 0.78740423917770386
		0.29899117350578308 0 0.75841730833053589
		0.64616328477859497 0 0.58035784959793091
		0.88655537366867065 0 -8.8269667657537958e-15
		0.62688928842544556 0 -0.62688928842544556
		8.7837377616643147e-14 0 -0.88655537366867065
		-0.62688928842544556 0 -0.62688928842544556
		-0.88655537366867065 0 -1.8789368932264905e-12
		-0.6461632251739502 0 0.58035790920257568
		-0.29899114370346069 0 0.75841730833053589
		-0.13891847431659698 0 0.78740429878234863
		-0.092612430453300476 0 0.84523069858551025
		-0.046306215226650238 0 0.90261536836624146
		0 0 0.96000003814697266
		0.046306133270263672 0 0.90261536836624146
		0.092612266540527344 0 0.84523069858551025
		0.13891839981079102 0 0.78784602880477905
		;
	setAttr ".sc" -type "nurbsCurve" 
		3 14 0 no 3
		19 4.2226777970000002 4.2226777970000002 4.2226777970000002 5 6 7 8 9 10 11
		 11.777322310000001 11.777322310000001 11.777322310000001 12.777322310000001 12.777322310000001
		 12.777322310000001 13.777322310000001 13.777322310000001 13.777322310000001
		17
		0.17364817690000001 0 0.98425534339999998
		0.3737389585 0 0.94802158999999997
		0.80770406819999996 0 0.72544732140000001
		1.1081941879999999 0 -1.1033708669999999e-14
		0.78361162490000003 0 -0.78361162490000003
		1.0979672030000001e-13 0 -1.1081941879999999
		-0.78361162490000003 0 -0.78361162490000003
		-1.1081941879999999 0 -2.348671079e-12
		-0.80770405649999999 0 0.72544734970000002
		-0.37373890570000001 0 0.94802161699999998
		-0.17364809349999999 0 0.98425535850000001
		-0.1157655319 0 1.056538328
		-0.057882765930000003 0 1.128269164
		0 0 1.2
		0.05788266659 0 1.1282691840000001
		0.1157653332 0 1.0565383669999999
		0.17364799980000001 0 0.98480755090000005
		;
createNode transform -n "MOD_joint_A" -p "RIG";
	rename -uid "9B26B1EF-4632-FEA9-FAF0-97BCDAE1E1AB";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr -l on ".mrsData" -type "string" "type=\"module\";moduleType=\"FK\";";
createNode transform -n "CTL_joint_A_GRP" -p "MOD_joint_A";
	rename -uid "6CCFA8BC-47E4-A7F5-F46E-E195C0FC8F0B";
createNode transform -n "CTL_joint_A1_IDT" -p "CTL_joint_A_GRP";
	rename -uid "297F5486-4C7F-137C-ECEF-14B652DDA419";
	setAttr ".t" -type "double3" 0 0 -2 ;
createNode transform -n "CTL_joint_A1" -p "CTL_joint_A1_IDT";
	rename -uid "CA438B5B-481D-FE0A-A2E0-8D87C78E6492";
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
	setAttr -l on ".stx";
	setAttr -l on ".sty";
	setAttr -l on ".stz";
	setAttr ".sr" -type "double3" 0 90 90 ;
	setAttr -l on ".srx";
	setAttr -l on ".sry";
	setAttr -l on ".srz";
	setAttr ".ss" -type "double3" 1 1 1 ;
	setAttr -l on ".ssx";
	setAttr -l on ".ssy";
	setAttr -l on ".ssz";
	setAttr -l on ".cn" -type "string" "Circle(Directional)";
createNode transform -n "AUX_joint_A1_BDR" -p "CTL_joint_A1";
	rename -uid "26FCB21E-4281-7A1B-26C4-E495094A4658";
createNode transform -n "CTL_joint_A2_IDT" -p "CTL_joint_A1";
	rename -uid "B3480D06-4CD9-8E5A-318A-7086C633206F";
	setAttr ".t" -type "double3" 3 0 6.4392935428259079e-15 ;
createNode transform -n "CTL_joint_A2" -p "CTL_joint_A2_IDT";
	rename -uid "C084AF80-42B2-9185-E664-F39228ACDCDC";
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
	setAttr -l on ".stx";
	setAttr -l on ".sty";
	setAttr -l on ".stz";
	setAttr ".sr" -type "double3" 0 90 90 ;
	setAttr -l on ".srx";
	setAttr -l on ".sry";
	setAttr -l on ".srz";
	setAttr ".ss" -type "double3" 1 1 1 ;
	setAttr -l on ".ssx";
	setAttr -l on ".ssy";
	setAttr -l on ".ssz";
	setAttr -l on ".cn" -type "string" "Circle(Directional)";
createNode transform -n "AUX_joint_A2_BDR" -p "CTL_joint_A2";
	rename -uid "1C332636-4663-D693-1ABD-299FBF142BA0";
createNode transform -n "CTL_joint_A3_IDT" -p "CTL_joint_A2";
	rename -uid "17F1FDB0-48A9-FCE2-3372-FC9DFFB0FB68";
	setAttr ".t" -type "double3" 3 0 3.3306690738754696e-15 ;
createNode transform -n "CTL_joint_A3" -p "CTL_joint_A3_IDT";
	rename -uid "BB661028-439F-0A9C-B11B-2B9E098860D9";
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
	setAttr -l on ".stx";
	setAttr -l on ".sty";
	setAttr -l on ".stz";
	setAttr ".sr" -type "double3" 0 90 90 ;
	setAttr -l on ".srx";
	setAttr -l on ".sry";
	setAttr -l on ".srz";
	setAttr ".ss" -type "double3" 1 1 1 ;
	setAttr -l on ".ssx";
	setAttr -l on ".ssy";
	setAttr -l on ".ssz";
	setAttr -l on ".cn" -type "string" "Circle(Directional)";
createNode transform -n "AUX_joint_A3_BDR" -p "CTL_joint_A3";
	rename -uid "D999212F-4AAC-525E-A134-FE8CEB6E7DBD";
createNode transform -n "CTL_joint_A4_IDT" -p "CTL_joint_A3";
	rename -uid "26DBAF38-4384-B3D3-806F-D1A1D39DA186";
	setAttr ".t" -type "double3" 3 0 0 ;
createNode transform -n "CTL_joint_A4" -p "CTL_joint_A4_IDT";
	rename -uid "93229D07-4AE5-19CD-E813-2C840A4ADE0E";
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
	setAttr -l on ".stx";
	setAttr -l on ".sty";
	setAttr -l on ".stz";
	setAttr -l on ".srx";
	setAttr -l on ".sry";
	setAttr -l on ".srz";
	setAttr ".ss" -type "double3" 0.4 0.4 0.4 ;
	setAttr -l on ".ssx";
	setAttr -l on ".ssy";
	setAttr -l on ".ssz";
	setAttr -l on ".cn" -type "string" "Octahedron";
createNode transform -n "AUX_joint_A4_BDR" -p "CTL_joint_A4";
	rename -uid "F05770BC-4E87-FD7C-320F-1C89D069F471";
createNode nurbsCurve -n "CTL_joint_A4Shape1" -p "CTL_joint_A4";
	rename -uid "B09ADA87-4945-2249-6FD0-1587A6EAC97E";
	addAttr -ci true -sn "sc" -ln "sourceCurve" -dt "nurbsCurve";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0 0 0.40000000596046448
		0.40000000596046448 0 0
		0 0.40000000596046448 0
		0 0 0.40000000596046448
		-0.40000000596046448 0 0
		0 0.40000000596046448 0
		0 0 -0.40000000596046448
		-0.40000000596046448 0 0
		0 -0.40000000596046448 0
		0 0 -0.40000000596046448
		0.40000000596046448 0 0
		0 -0.40000000596046448 0
		0 0 0.40000000596046448
		-0.40000000596046448 0 0
		;
	setAttr ".sc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0 0 1
		1 0 0
		0 1 0
		0 0 1
		-1 0 0
		0 1 0
		0 0 -1
		-1 0 0
		0 -1 0
		0 0 -1
		1 0 0
		0 -1 0
		0 0 1
		-1 0 0
		;
createNode nurbsCurve -n "CTL_joint_A3Shape1" -p "CTL_joint_A3";
	rename -uid "6624EFF2-41CC-ABFE-18EE-FFB5DEDB34D5";
	addAttr -ci true -sn "sc" -ln "sourceCurve" -dt "nurbsCurve";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 14 0 no 3
		19 4.2226777970000002 4.2226777970000002 4.2226777970000002 5 6 7 8 9 10 11
		 11.777322310000001 11.777322310000001 11.777322310000001 12.777322310000001 12.777322310000001
		 12.777322310000001 13.777322310000001 13.777322310000001 13.777322310000001
		17
		0 0.98425531387329102 -0.1736481785774231
		0 0.94802159070968628 -0.37373894453048706
		0 0.72544729709625244 -0.80770409107208252
		0 -1.1033708668950482e-14 -1.1081942319869995
		0 -0.78361159563064575 -0.78361159563064575
		0 -1.1081942319869995 -1.0979672032673804e-13
		0 -0.78361159563064575 0.78361159563064575
		0 -2.3486711707432217e-12 1.1081942319869995
		0 0.72544735670089722 0.80770403146743774
		0 0.94802159070968628 0.37373891472816467
		0 0.98425537347793579 0.17364808917045593
		0 1.0565383434295654 0.1157655343413353
		0 1.1282691955566406 0.057882767170667648
		0 1.2000000476837158 0
		0 1.1282691955566406 -0.05788266658782959
		0 1.0565383434295654 -0.11576533317565918
		0 0.98480755090713501 -0.17364799976348877
		;
	setAttr ".sc" -type "nurbsCurve" 
		3 14 0 no 3
		19 4.2226777970000002 4.2226777970000002 4.2226777970000002 5 6 7 8 9 10 11
		 11.777322310000001 11.777322310000001 11.777322310000001 12.777322310000001 12.777322310000001
		 12.777322310000001 13.777322310000001 13.777322310000001 13.777322310000001
		17
		0.17364817690000001 0 0.98425534339999998
		0.3737389585 0 0.94802158999999997
		0.80770406819999996 0 0.72544732140000001
		1.1081941879999999 0 -1.1033708669999999e-14
		0.78361162490000003 0 -0.78361162490000003
		1.0979672030000001e-13 0 -1.1081941879999999
		-0.78361162490000003 0 -0.78361162490000003
		-1.1081941879999999 0 -2.348671079e-12
		-0.80770405649999999 0 0.72544734970000002
		-0.37373890570000001 0 0.94802161699999998
		-0.17364809349999999 0 0.98425535850000001
		-0.1157655319 0 1.056538328
		-0.057882765930000003 0 1.128269164
		0 0 1.2
		0.05788266659 0 1.1282691840000001
		0.1157653332 0 1.0565383669999999
		0.17364799980000001 0 0.98480755090000005
		;
createNode nurbsCurve -n "CTL_joint_A2Shape1" -p "CTL_joint_A2";
	rename -uid "6A33318B-4670-C5CD-F11A-419371AB4911";
	addAttr -ci true -sn "sc" -ln "sourceCurve" -dt "nurbsCurve";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 14 0 no 3
		19 4.2226777970000002 4.2226777970000002 4.2226777970000002 5 6 7 8 9 10 11
		 11.777322310000001 11.777322310000001 11.777322310000001 12.777322310000001 12.777322310000001
		 12.777322310000001 13.777322310000001 13.777322310000001 13.777322310000001
		17
		0 0.98425531387329102 -0.1736481785774231
		0 0.94802159070968628 -0.37373894453048706
		0 0.72544729709625244 -0.80770409107208252
		0 -1.1033708668950482e-14 -1.1081942319869995
		0 -0.78361159563064575 -0.78361159563064575
		0 -1.1081942319869995 -1.0979672032673804e-13
		0 -0.78361159563064575 0.78361159563064575
		0 -2.3486711707432217e-12 1.1081942319869995
		0 0.72544735670089722 0.80770403146743774
		0 0.94802159070968628 0.37373891472816467
		0 0.98425537347793579 0.17364808917045593
		0 1.0565383434295654 0.1157655343413353
		0 1.1282691955566406 0.057882767170667648
		0 1.2000000476837158 0
		0 1.1282691955566406 -0.05788266658782959
		0 1.0565383434295654 -0.11576533317565918
		0 0.98480755090713501 -0.17364799976348877
		;
	setAttr ".sc" -type "nurbsCurve" 
		3 14 0 no 3
		19 4.2226777970000002 4.2226777970000002 4.2226777970000002 5 6 7 8 9 10 11
		 11.777322310000001 11.777322310000001 11.777322310000001 12.777322310000001 12.777322310000001
		 12.777322310000001 13.777322310000001 13.777322310000001 13.777322310000001
		17
		0.17364817690000001 0 0.98425534339999998
		0.3737389585 0 0.94802158999999997
		0.80770406819999996 0 0.72544732140000001
		1.1081941879999999 0 -1.1033708669999999e-14
		0.78361162490000003 0 -0.78361162490000003
		1.0979672030000001e-13 0 -1.1081941879999999
		-0.78361162490000003 0 -0.78361162490000003
		-1.1081941879999999 0 -2.348671079e-12
		-0.80770405649999999 0 0.72544734970000002
		-0.37373890570000001 0 0.94802161699999998
		-0.17364809349999999 0 0.98425535850000001
		-0.1157655319 0 1.056538328
		-0.057882765930000003 0 1.128269164
		0 0 1.2
		0.05788266659 0 1.1282691840000001
		0.1157653332 0 1.0565383669999999
		0.17364799980000001 0 0.98480755090000005
		;
createNode nurbsCurve -n "CTL_joint_A1Shape1" -p "CTL_joint_A1";
	rename -uid "AE2F21A8-49AC-2E4E-81BD-B8B6511E92BB";
	addAttr -ci true -sn "sc" -ln "sourceCurve" -dt "nurbsCurve";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 14 0 no 3
		19 4.2226777970000002 4.2226777970000002 4.2226777970000002 5 6 7 8 9 10 11
		 11.777322310000001 11.777322310000001 11.777322310000001 12.777322310000001 12.777322310000001
		 12.777322310000001 13.777322310000001 13.777322310000001 13.777322310000001
		17
		0 0.98425531387329102 -0.1736481785774231
		0 0.94802159070968628 -0.37373894453048706
		0 0.72544729709625244 -0.80770409107208252
		0 -1.1033708668950482e-14 -1.1081942319869995
		0 -0.78361159563064575 -0.78361159563064575
		0 -1.1081942319869995 -1.0979672032673804e-13
		0 -0.78361159563064575 0.78361159563064575
		0 -2.3486711707432217e-12 1.1081942319869995
		0 0.72544735670089722 0.80770403146743774
		0 0.94802159070968628 0.37373891472816467
		0 0.98425537347793579 0.17364808917045593
		0 1.0565383434295654 0.1157655343413353
		0 1.1282691955566406 0.057882767170667648
		0 1.2000000476837158 0
		0 1.1282691955566406 -0.05788266658782959
		0 1.0565383434295654 -0.11576533317565918
		0 0.98480755090713501 -0.17364799976348877
		;
	setAttr ".sc" -type "nurbsCurve" 
		3 14 0 no 3
		19 4.2226777970000002 4.2226777970000002 4.2226777970000002 5 6 7 8 9 10 11
		 11.777322310000001 11.777322310000001 11.777322310000001 12.777322310000001 12.777322310000001
		 12.777322310000001 13.777322310000001 13.777322310000001 13.777322310000001
		17
		0.17364817690000001 0 0.98425534339999998
		0.3737389585 0 0.94802158999999997
		0.80770406819999996 0 0.72544732140000001
		1.1081941879999999 0 -1.1033708669999999e-14
		0.78361162490000003 0 -0.78361162490000003
		1.0979672030000001e-13 0 -1.1081941879999999
		-0.78361162490000003 0 -0.78361162490000003
		-1.1081941879999999 0 -2.348671079e-12
		-0.80770405649999999 0 0.72544734970000002
		-0.37373890570000001 0 0.94802161699999998
		-0.17364809349999999 0 0.98425535850000001
		-0.1157655319 0 1.056538328
		-0.057882765930000003 0 1.128269164
		0 0 1.2
		0.05788266659 0 1.1282691840000001
		0.1157653332 0 1.0565383669999999
		0.17364799980000001 0 0.98480755090000005
		;
createNode parentConstraint -n "CTL_joint_A_GRP_PRCST" -p "CTL_joint_A_GRP";
	rename -uid "D9B87052-4CE7-6082-0FD4-259643365901";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTL_rootW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "MOD_joint_B1" -p "RIG";
	rename -uid "780B9B95-4C96-C72A-DAD5-008007FE818D";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr -l on ".mrsData" -type "string" "type=\"module\";moduleType=\"FK\";";
createNode transform -n "CTL_joint_B1_GRP" -p "MOD_joint_B1";
	rename -uid "066ACAC1-4C32-7BBA-3BFD-149AE91CA1DE";
createNode transform -n "CTL_joint_B1_IDT" -p "CTL_joint_B1_GRP";
	rename -uid "F452CC44-4B1C-4408-2F17-FEA138834ADE";
	setAttr ".t" -type "double3" 0 0 2 ;
createNode transform -n "CTL_joint_B1" -p "CTL_joint_B1_IDT";
	rename -uid "52C5492A-4BD6-50B2-29DB-4F800E7EF822";
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
	setAttr -l on ".stx";
	setAttr -l on ".sty";
	setAttr -l on ".stz";
	setAttr ".sr" -type "double3" 0 90 90 ;
	setAttr -l on ".srx";
	setAttr -l on ".sry";
	setAttr -l on ".srz";
	setAttr ".ss" -type "double3" 1 1 1 ;
	setAttr -l on ".ssx";
	setAttr -l on ".ssy";
	setAttr -l on ".ssz";
	setAttr -l on ".cn" -type "string" "Circle(Directional)";
createNode transform -n "AUX_joint_B1_BDR" -p "CTL_joint_B1";
	rename -uid "C9102238-475B-3AC3-D699-F79CFA4EB79A";
createNode nurbsCurve -n "CTL_joint_B1Shape1" -p "CTL_joint_B1";
	rename -uid "647E1956-4E98-61BF-92D2-D8B00AB5EFD1";
	addAttr -ci true -sn "sc" -ln "sourceCurve" -dt "nurbsCurve";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 14 0 no 3
		19 4.2226777970000002 4.2226777970000002 4.2226777970000002 5 6 7 8 9 10 11
		 11.777322310000001 11.777322310000001 11.777322310000001 12.777322310000001 12.777322310000001
		 12.777322310000001 13.777322310000001 13.777322310000001 13.777322310000001
		17
		0 0.98425531387329102 -0.1736481785774231
		0 0.94802159070968628 -0.37373894453048706
		0 0.72544729709625244 -0.80770409107208252
		0 -1.1033708668950482e-14 -1.1081942319869995
		0 -0.78361159563064575 -0.78361159563064575
		0 -1.1081942319869995 -1.0979672032673804e-13
		0 -0.78361159563064575 0.78361159563064575
		0 -2.3486711707432217e-12 1.1081942319869995
		0 0.72544735670089722 0.80770403146743774
		0 0.94802159070968628 0.37373891472816467
		0 0.98425537347793579 0.17364808917045593
		0 1.0565383434295654 0.1157655343413353
		0 1.1282691955566406 0.057882767170667648
		0 1.2000000476837158 0
		0 1.1282691955566406 -0.05788266658782959
		0 1.0565383434295654 -0.11576533317565918
		0 0.98480755090713501 -0.17364799976348877
		;
	setAttr ".sc" -type "nurbsCurve" 
		3 14 0 no 3
		19 4.2226777970000002 4.2226777970000002 4.2226777970000002 5 6 7 8 9 10 11
		 11.777322310000001 11.777322310000001 11.777322310000001 12.777322310000001 12.777322310000001
		 12.777322310000001 13.777322310000001 13.777322310000001 13.777322310000001
		17
		0.17364817690000001 0 0.98425534339999998
		0.3737389585 0 0.94802158999999997
		0.80770406819999996 0 0.72544732140000001
		1.1081941879999999 0 -1.1033708669999999e-14
		0.78361162490000003 0 -0.78361162490000003
		1.0979672030000001e-13 0 -1.1081941879999999
		-0.78361162490000003 0 -0.78361162490000003
		-1.1081941879999999 0 -2.348671079e-12
		-0.80770405649999999 0 0.72544734970000002
		-0.37373890570000001 0 0.94802161699999998
		-0.17364809349999999 0 0.98425535850000001
		-0.1157655319 0 1.056538328
		-0.057882765930000003 0 1.128269164
		0 0 1.2
		0.05788266659 0 1.1282691840000001
		0.1157653332 0 1.0565383669999999
		0.17364799980000001 0 0.98480755090000005
		;
createNode parentConstraint -n "CTL_joint_B1_GRP_PRCST" -p "CTL_joint_B1_GRP";
	rename -uid "98A082AF-4B56-6F4C-FC12-709F0DABBC90";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTL_rootW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "MOD_joint_B2" -p "RIG";
	rename -uid "64145C53-489F-20DC-C9CF-18A515F80C03";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr -l on ".mrsData" -type "string" "type=\"module\";moduleType=\"FK\";";
createNode transform -n "CTL_joint_B2_GRP" -p "MOD_joint_B2";
	rename -uid "D85C0DC1-4C43-E079-E731-BF99657EF62F";
createNode transform -n "CTL_joint_B2_IDT" -p "CTL_joint_B2_GRP";
	rename -uid "4507C420-421C-2B7C-D360-01833B5577F8";
	setAttr ".t" -type "double3" 3 0 2 ;
createNode transform -n "CTL_joint_B2" -p "CTL_joint_B2_IDT";
	rename -uid "22550AA6-461F-EF45-5D9E-9FB35F290B33";
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
	setAttr -l on ".stx";
	setAttr -l on ".sty";
	setAttr -l on ".stz";
	setAttr ".sr" -type "double3" 0 90 90 ;
	setAttr -l on ".srx";
	setAttr -l on ".sry";
	setAttr -l on ".srz";
	setAttr ".ss" -type "double3" 1 1 1 ;
	setAttr -l on ".ssx";
	setAttr -l on ".ssy";
	setAttr -l on ".ssz";
	setAttr -l on ".cn" -type "string" "Circle(Directional)";
createNode transform -n "AUX_joint_B2_BDR" -p "CTL_joint_B2";
	rename -uid "04780826-4E26-DC9A-26C2-26878B1C52E8";
createNode nurbsCurve -n "CTL_joint_B2Shape1" -p "CTL_joint_B2";
	rename -uid "7D05D9E5-4E39-82C6-BDC1-1ABBFB897E4F";
	addAttr -ci true -sn "sc" -ln "sourceCurve" -dt "nurbsCurve";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 14 0 no 3
		19 4.2226777970000002 4.2226777970000002 4.2226777970000002 5 6 7 8 9 10 11
		 11.777322310000001 11.777322310000001 11.777322310000001 12.777322310000001 12.777322310000001
		 12.777322310000001 13.777322310000001 13.777322310000001 13.777322310000001
		17
		0 0.98425531387329102 -0.1736481785774231
		0 0.94802159070968628 -0.37373894453048706
		0 0.72544729709625244 -0.80770409107208252
		0 -1.1033708668950482e-14 -1.1081942319869995
		0 -0.78361159563064575 -0.78361159563064575
		0 -1.1081942319869995 -1.0979672032673804e-13
		0 -0.78361159563064575 0.78361159563064575
		0 -2.3486711707432217e-12 1.1081942319869995
		0 0.72544735670089722 0.80770403146743774
		0 0.94802159070968628 0.37373891472816467
		0 0.98425537347793579 0.17364808917045593
		0 1.0565383434295654 0.1157655343413353
		0 1.1282691955566406 0.057882767170667648
		0 1.2000000476837158 0
		0 1.1282691955566406 -0.05788266658782959
		0 1.0565383434295654 -0.11576533317565918
		0 0.98480755090713501 -0.17364799976348877
		;
	setAttr ".sc" -type "nurbsCurve" 
		3 14 0 no 3
		19 4.2226777970000002 4.2226777970000002 4.2226777970000002 5 6 7 8 9 10 11
		 11.777322310000001 11.777322310000001 11.777322310000001 12.777322310000001 12.777322310000001
		 12.777322310000001 13.777322310000001 13.777322310000001 13.777322310000001
		17
		0.17364817690000001 0 0.98425534339999998
		0.3737389585 0 0.94802158999999997
		0.80770406819999996 0 0.72544732140000001
		1.1081941879999999 0 -1.1033708669999999e-14
		0.78361162490000003 0 -0.78361162490000003
		1.0979672030000001e-13 0 -1.1081941879999999
		-0.78361162490000003 0 -0.78361162490000003
		-1.1081941879999999 0 -2.348671079e-12
		-0.80770405649999999 0 0.72544734970000002
		-0.37373890570000001 0 0.94802161699999998
		-0.17364809349999999 0 0.98425535850000001
		-0.1157655319 0 1.056538328
		-0.057882765930000003 0 1.128269164
		0 0 1.2
		0.05788266659 0 1.1282691840000001
		0.1157653332 0 1.0565383669999999
		0.17364799980000001 0 0.98480755090000005
		;
createNode parentConstraint -n "CTL_joint_B2_GRP_PRCST" -p "CTL_joint_B2_GRP";
	rename -uid "FFBD818E-4F72-0DE6-2E37-49B1F37F7A87";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTL_joint_B1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 0 -2 ;
	setAttr -k on ".w0";
createNode transform -n "MOD_joint_B3" -p "RIG";
	rename -uid "B8F0DBDA-4F09-8445-70F8-A093850E3771";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr -l on ".mrsData" -type "string" "type=\"module\";moduleType=\"FK\";";
createNode transform -n "CTL_joint_B3_GRP" -p "MOD_joint_B3";
	rename -uid "85E5EB82-4E96-F2B5-1D13-7194AEDE569C";
createNode transform -n "CTL_joint_B3_IDT" -p "CTL_joint_B3_GRP";
	rename -uid "F16BA5ED-4624-189D-DA1C-5B87EC09270D";
	setAttr ".t" -type "double3" 6 0 2.0000000000000009 ;
createNode transform -n "CTL_joint_B3" -p "CTL_joint_B3_IDT";
	rename -uid "EDDC8050-45EB-E7B2-A613-0F8CBF36C8F0";
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
	setAttr -l on ".stx";
	setAttr -l on ".sty";
	setAttr -l on ".stz";
	setAttr ".sr" -type "double3" 0 90 90 ;
	setAttr -l on ".srx";
	setAttr -l on ".sry";
	setAttr -l on ".srz";
	setAttr ".ss" -type "double3" 1 1 1 ;
	setAttr -l on ".ssx";
	setAttr -l on ".ssy";
	setAttr -l on ".ssz";
	setAttr -l on ".cn" -type "string" "Circle(Directional)";
createNode transform -n "AUX_joint_B3_BDR" -p "CTL_joint_B3";
	rename -uid "9D39E7A6-4A8A-1ABD-4E3C-7A8C46DBDF7C";
createNode nurbsCurve -n "CTL_joint_B3Shape1" -p "CTL_joint_B3";
	rename -uid "8A3B6EFF-4E32-EAD4-CC00-2D8587825657";
	addAttr -ci true -sn "sc" -ln "sourceCurve" -dt "nurbsCurve";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 14 0 no 3
		19 4.2226777970000002 4.2226777970000002 4.2226777970000002 5 6 7 8 9 10 11
		 11.777322310000001 11.777322310000001 11.777322310000001 12.777322310000001 12.777322310000001
		 12.777322310000001 13.777322310000001 13.777322310000001 13.777322310000001
		17
		0 0.98425531387329102 -0.1736481785774231
		0 0.94802159070968628 -0.37373894453048706
		0 0.72544729709625244 -0.80770409107208252
		0 -1.1033708668950482e-14 -1.1081942319869995
		0 -0.78361159563064575 -0.78361159563064575
		0 -1.1081942319869995 -1.0979672032673804e-13
		0 -0.78361159563064575 0.78361159563064575
		0 -2.3486711707432217e-12 1.1081942319869995
		0 0.72544735670089722 0.80770403146743774
		0 0.94802159070968628 0.37373891472816467
		0 0.98425537347793579 0.17364808917045593
		0 1.0565383434295654 0.1157655343413353
		0 1.1282691955566406 0.057882767170667648
		0 1.2000000476837158 0
		0 1.1282691955566406 -0.05788266658782959
		0 1.0565383434295654 -0.11576533317565918
		0 0.98480755090713501 -0.17364799976348877
		;
	setAttr ".sc" -type "nurbsCurve" 
		3 14 0 no 3
		19 4.2226777970000002 4.2226777970000002 4.2226777970000002 5 6 7 8 9 10 11
		 11.777322310000001 11.777322310000001 11.777322310000001 12.777322310000001 12.777322310000001
		 12.777322310000001 13.777322310000001 13.777322310000001 13.777322310000001
		17
		0.17364817690000001 0 0.98425534339999998
		0.3737389585 0 0.94802158999999997
		0.80770406819999996 0 0.72544732140000001
		1.1081941879999999 0 -1.1033708669999999e-14
		0.78361162490000003 0 -0.78361162490000003
		1.0979672030000001e-13 0 -1.1081941879999999
		-0.78361162490000003 0 -0.78361162490000003
		-1.1081941879999999 0 -2.348671079e-12
		-0.80770405649999999 0 0.72544734970000002
		-0.37373890570000001 0 0.94802161699999998
		-0.17364809349999999 0 0.98425535850000001
		-0.1157655319 0 1.056538328
		-0.057882765930000003 0 1.128269164
		0 0 1.2
		0.05788266659 0 1.1282691840000001
		0.1157653332 0 1.0565383669999999
		0.17364799980000001 0 0.98480755090000005
		;
createNode parentConstraint -n "CTL_joint_B3_GRP_PRCST" -p "CTL_joint_B3_GRP";
	rename -uid "E7553121-4551-5C10-B289-D59C423DF0E8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTL_joint_B2W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3 0 -2 ;
	setAttr -k on ".w0";
createNode transform -n "MOD_joint_B4" -p "RIG";
	rename -uid "D38E10C5-41F3-B650-2EFF-A0BB26C5B8F8";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr -l on ".mrsData" -type "string" "type=\"module\";moduleType=\"FK\";";
createNode transform -n "CTL_joint_B4_GRP" -p "MOD_joint_B4";
	rename -uid "01335007-429D-54F6-6648-B7AD29763B63";
createNode transform -n "CTL_joint_B4_IDT" -p "CTL_joint_B4_GRP";
	rename -uid "D90CC857-49BC-95B6-ED3A-D790CB41D7DB";
	setAttr ".t" -type "double3" 9 0 2.0000000000000009 ;
createNode transform -n "CTL_joint_B4" -p "CTL_joint_B4_IDT";
	rename -uid "DB50D773-4921-5018-C9B6-D3B9DCFF4E8C";
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
	setAttr -l on ".stx";
	setAttr -l on ".sty";
	setAttr -l on ".stz";
	setAttr -l on ".srx";
	setAttr -l on ".sry";
	setAttr -l on ".srz";
	setAttr ".ss" -type "double3" 0.4 0.4 0.4 ;
	setAttr -l on ".ssx";
	setAttr -l on ".ssy";
	setAttr -l on ".ssz";
	setAttr -l on ".cn" -type "string" "Octahedron";
createNode transform -n "AUX_joint_B4_BDR" -p "CTL_joint_B4";
	rename -uid "A1A81C49-4CE9-9384-FA38-14891170871D";
createNode nurbsCurve -n "CTL_joint_B4Shape1" -p "CTL_joint_B4";
	rename -uid "A1E7E2CC-4AB5-476F-7504-5F897BD16FA8";
	addAttr -ci true -sn "sc" -ln "sourceCurve" -dt "nurbsCurve";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0 0 0.40000000596046448
		0.40000000596046448 0 0
		0 0.40000000596046448 0
		0 0 0.40000000596046448
		-0.40000000596046448 0 0
		0 0.40000000596046448 0
		0 0 -0.40000000596046448
		-0.40000000596046448 0 0
		0 -0.40000000596046448 0
		0 0 -0.40000000596046448
		0.40000000596046448 0 0
		0 -0.40000000596046448 0
		0 0 0.40000000596046448
		-0.40000000596046448 0 0
		;
	setAttr ".sc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0 0 1
		1 0 0
		0 1 0
		0 0 1
		-1 0 0
		0 1 0
		0 0 -1
		-1 0 0
		0 -1 0
		0 0 -1
		1 0 0
		0 -1 0
		0 0 1
		-1 0 0
		;
createNode parentConstraint -n "CTL_joint_B4_GRP_PRCST" -p "CTL_joint_B4_GRP";
	rename -uid "5F107F7A-4045-E16D-48C7-70898ACF777D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTL_joint_B3W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -6 0 -2.0000000000000009 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "41D9FBEA-490A-4A28-2F46-42942B0FB915";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "748ACD5F-42BC-FC08-6390-93A2F0ECE9DE";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "EAC676F8-421C-4F7E-E103-F1B79AEEBA9C";
createNode displayLayerManager -n "layerManager";
	rename -uid "856137F6-4E6F-EE1E-4B28-16A848EC0041";
createNode displayLayer -n "defaultLayer";
	rename -uid "3A12294B-41A4-FBF7-AD40-308FA9862F11";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C5B52D77-4743-52F2-E202-EC8E4BF7088C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "54CB1682-4553-37B6-8ADE-FABC0EF1251D";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F1B2C591-49F6-3B46-2407-E595CF50F381";
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
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2218\n            -height 1092\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
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
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 1\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 1\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"|persp\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n"
		+ "                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n"
		+ "                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2218\\n    -height 1092\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2218\\n    -height 1092\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "AAEAB51F-4DAA-B1B8-0ECB-17A31E06C61C";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 30 ";
	setAttr ".st" 6;
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
connectAttr "|MDL|root|root_PRCST.ctx" "|MDL|root.tx";
connectAttr "|MDL|root|root_PRCST.cty" "|MDL|root.ty";
connectAttr "|MDL|root|root_PRCST.ctz" "|MDL|root.tz";
connectAttr "|MDL|root|root_PRCST.crx" "|MDL|root.rx";
connectAttr "|MDL|root|root_PRCST.cry" "|MDL|root.ry";
connectAttr "|MDL|root|root_PRCST.crz" "|MDL|root.rz";
connectAttr "|MDL|root.s" "|MDL|root|joint_A1.is";
connectAttr "|MDL|root|joint_A1|joint_A1_PRCST.ctx" "|MDL|root|joint_A1.tx";
connectAttr "|MDL|root|joint_A1|joint_A1_PRCST.cty" "|MDL|root|joint_A1.ty";
connectAttr "|MDL|root|joint_A1|joint_A1_PRCST.ctz" "|MDL|root|joint_A1.tz";
connectAttr "|MDL|root|joint_A1|joint_A1_PRCST.crx" "|MDL|root|joint_A1.rx";
connectAttr "|MDL|root|joint_A1|joint_A1_PRCST.cry" "|MDL|root|joint_A1.ry";
connectAttr "|MDL|root|joint_A1|joint_A1_PRCST.crz" "|MDL|root|joint_A1.rz";
connectAttr "|MDL|root|joint_A1.s" "|MDL|root|joint_A1|joint_A2.is";
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A2_PRCST.ctx" "|MDL|root|joint_A1|joint_A2.tx"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A2_PRCST.cty" "|MDL|root|joint_A1|joint_A2.ty"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A2_PRCST.ctz" "|MDL|root|joint_A1|joint_A2.tz"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A2_PRCST.crx" "|MDL|root|joint_A1|joint_A2.rx"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A2_PRCST.cry" "|MDL|root|joint_A1|joint_A2.ry"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A2_PRCST.crz" "|MDL|root|joint_A1|joint_A2.rz"
		;
connectAttr "|MDL|root|joint_A1|joint_A2.s" "|MDL|root|joint_A1|joint_A2|joint_A3.is"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.ctx" "|MDL|root|joint_A1|joint_A2|joint_A3.tx"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.cty" "|MDL|root|joint_A1|joint_A2|joint_A3.ty"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.ctz" "|MDL|root|joint_A1|joint_A2|joint_A3.tz"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.crx" "|MDL|root|joint_A1|joint_A2|joint_A3.rx"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.cry" "|MDL|root|joint_A1|joint_A2|joint_A3.ry"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.crz" "|MDL|root|joint_A1|joint_A2|joint_A3.rz"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3.s" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4.is"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.ctx" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4.tx"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.cty" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4.ty"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.ctz" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4.tz"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.crx" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4.rx"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.cry" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4.ry"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.crz" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4.rz"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4.ro" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.cro"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4.pim" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.cpim"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4.rp" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.crp"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4.rpt" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.crt"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4.jo" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.cjo"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4.t" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.tg[0].tt"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4.rp" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.tg[0].trp"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4.rpt" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.tg[0].trt"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4.r" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.tg[0].tr"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4.ro" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.tg[0].tro"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4.s" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.tg[0].ts"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4.pm" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4.jo" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.tg[0].tjo"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4.ssc" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.tg[0].tsc"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4.is" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.tg[0].tis"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.w0" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.tg[0].tw"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3.ro" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.cro"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3.pim" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.cpim"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3.rp" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.crp"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3.rpt" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.crt"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3.jo" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.cjo"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3.t" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.tg[0].tt"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3.rp" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.tg[0].trp"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3.rpt" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.tg[0].trt"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3.r" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.tg[0].tr"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3.ro" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.tg[0].tro"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3.s" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.tg[0].ts"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3.pm" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3.jo" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.tg[0].tjo"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3.ssc" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.tg[0].tsc"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3.is" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.tg[0].tis"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.w0" "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.tg[0].tw"
		;
connectAttr "|MDL|root|joint_A1|joint_A2.ro" "|MDL|root|joint_A1|joint_A2|joint_A2_PRCST.cro"
		;
connectAttr "|MDL|root|joint_A1|joint_A2.pim" "|MDL|root|joint_A1|joint_A2|joint_A2_PRCST.cpim"
		;
connectAttr "|MDL|root|joint_A1|joint_A2.rp" "|MDL|root|joint_A1|joint_A2|joint_A2_PRCST.crp"
		;
connectAttr "|MDL|root|joint_A1|joint_A2.rpt" "|MDL|root|joint_A1|joint_A2|joint_A2_PRCST.crt"
		;
connectAttr "|MDL|root|joint_A1|joint_A2.jo" "|MDL|root|joint_A1|joint_A2|joint_A2_PRCST.cjo"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2.t" "|MDL|root|joint_A1|joint_A2|joint_A2_PRCST.tg[0].tt"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2.rp" "|MDL|root|joint_A1|joint_A2|joint_A2_PRCST.tg[0].trp"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2.rpt" "|MDL|root|joint_A1|joint_A2|joint_A2_PRCST.tg[0].trt"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2.r" "|MDL|root|joint_A1|joint_A2|joint_A2_PRCST.tg[0].tr"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2.ro" "|MDL|root|joint_A1|joint_A2|joint_A2_PRCST.tg[0].tro"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2.s" "|MDL|root|joint_A1|joint_A2|joint_A2_PRCST.tg[0].ts"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2.pm" "|MDL|root|joint_A1|joint_A2|joint_A2_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2.jo" "|MDL|root|joint_A1|joint_A2|joint_A2_PRCST.tg[0].tjo"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2.ssc" "|MDL|root|joint_A1|joint_A2|joint_A2_PRCST.tg[0].tsc"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2.is" "|MDL|root|joint_A1|joint_A2|joint_A2_PRCST.tg[0].tis"
		;
connectAttr "|MDL|root|joint_A1|joint_A2|joint_A2_PRCST.w0" "|MDL|root|joint_A1|joint_A2|joint_A2_PRCST.tg[0].tw"
		;
connectAttr "|MDL|root|joint_A1.ro" "|MDL|root|joint_A1|joint_A1_PRCST.cro";
connectAttr "|MDL|root|joint_A1.pim" "|MDL|root|joint_A1|joint_A1_PRCST.cpim";
connectAttr "|MDL|root|joint_A1.rp" "|MDL|root|joint_A1|joint_A1_PRCST.crp";
connectAttr "|MDL|root|joint_A1.rpt" "|MDL|root|joint_A1|joint_A1_PRCST.crt";
connectAttr "|MDL|root|joint_A1.jo" "|MDL|root|joint_A1|joint_A1_PRCST.cjo";
connectAttr "|RIG|BRG|root|joint_A1.t" "|MDL|root|joint_A1|joint_A1_PRCST.tg[0].tt"
		;
connectAttr "|RIG|BRG|root|joint_A1.rp" "|MDL|root|joint_A1|joint_A1_PRCST.tg[0].trp"
		;
connectAttr "|RIG|BRG|root|joint_A1.rpt" "|MDL|root|joint_A1|joint_A1_PRCST.tg[0].trt"
		;
connectAttr "|RIG|BRG|root|joint_A1.r" "|MDL|root|joint_A1|joint_A1_PRCST.tg[0].tr"
		;
connectAttr "|RIG|BRG|root|joint_A1.ro" "|MDL|root|joint_A1|joint_A1_PRCST.tg[0].tro"
		;
connectAttr "|RIG|BRG|root|joint_A1.s" "|MDL|root|joint_A1|joint_A1_PRCST.tg[0].ts"
		;
connectAttr "|RIG|BRG|root|joint_A1.pm" "|MDL|root|joint_A1|joint_A1_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint_A1.jo" "|MDL|root|joint_A1|joint_A1_PRCST.tg[0].tjo"
		;
connectAttr "|RIG|BRG|root|joint_A1.ssc" "|MDL|root|joint_A1|joint_A1_PRCST.tg[0].tsc"
		;
connectAttr "|RIG|BRG|root|joint_A1.is" "|MDL|root|joint_A1|joint_A1_PRCST.tg[0].tis"
		;
connectAttr "|MDL|root|joint_A1|joint_A1_PRCST.w0" "|MDL|root|joint_A1|joint_A1_PRCST.tg[0].tw"
		;
connectAttr "|MDL|root.s" "|MDL|root|joint_B1.is";
connectAttr "|MDL|root|joint_B1|joint_B1_PRCST.ctx" "|MDL|root|joint_B1.tx";
connectAttr "|MDL|root|joint_B1|joint_B1_PRCST.cty" "|MDL|root|joint_B1.ty";
connectAttr "|MDL|root|joint_B1|joint_B1_PRCST.ctz" "|MDL|root|joint_B1.tz";
connectAttr "|MDL|root|joint_B1|joint_B1_PRCST.crx" "|MDL|root|joint_B1.rx";
connectAttr "|MDL|root|joint_B1|joint_B1_PRCST.cry" "|MDL|root|joint_B1.ry";
connectAttr "|MDL|root|joint_B1|joint_B1_PRCST.crz" "|MDL|root|joint_B1.rz";
connectAttr "|MDL|root|joint_B1.s" "|MDL|root|joint_B1|joint_B2.is";
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B2_PRCST.ctx" "|MDL|root|joint_B1|joint_B2.tx"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B2_PRCST.cty" "|MDL|root|joint_B1|joint_B2.ty"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B2_PRCST.ctz" "|MDL|root|joint_B1|joint_B2.tz"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B2_PRCST.crx" "|MDL|root|joint_B1|joint_B2.rx"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B2_PRCST.cry" "|MDL|root|joint_B1|joint_B2.ry"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B2_PRCST.crz" "|MDL|root|joint_B1|joint_B2.rz"
		;
connectAttr "|MDL|root|joint_B1|joint_B2.s" "|MDL|root|joint_B1|joint_B2|joint_B3.is"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.ctx" "|MDL|root|joint_B1|joint_B2|joint_B3.tx"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.cty" "|MDL|root|joint_B1|joint_B2|joint_B3.ty"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.ctz" "|MDL|root|joint_B1|joint_B2|joint_B3.tz"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.crx" "|MDL|root|joint_B1|joint_B2|joint_B3.rx"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.cry" "|MDL|root|joint_B1|joint_B2|joint_B3.ry"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.crz" "|MDL|root|joint_B1|joint_B2|joint_B3.rz"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3.s" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4.is"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.ctx" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4.tx"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.cty" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4.ty"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.ctz" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4.tz"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.crx" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4.rx"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.cry" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4.ry"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.crz" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4.rz"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4.ro" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.cro"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4.pim" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.cpim"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4.rp" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.crp"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4.rpt" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.crt"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4.jo" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.cjo"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4.t" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.tg[0].tt"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4.rp" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.tg[0].trp"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4.rpt" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.tg[0].trt"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4.r" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.tg[0].tr"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4.ro" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.tg[0].tro"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4.s" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.tg[0].ts"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4.pm" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4.jo" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.tg[0].tjo"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4.ssc" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.tg[0].tsc"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4.is" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.tg[0].tis"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.w0" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.tg[0].tw"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3.ro" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.cro"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3.pim" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.cpim"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3.rp" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.crp"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3.rpt" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.crt"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3.jo" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.cjo"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3.t" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.tg[0].tt"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3.rp" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.tg[0].trp"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3.rpt" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.tg[0].trt"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3.r" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.tg[0].tr"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3.ro" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.tg[0].tro"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3.s" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.tg[0].ts"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3.pm" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3.jo" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.tg[0].tjo"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3.ssc" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.tg[0].tsc"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3.is" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.tg[0].tis"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.w0" "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.tg[0].tw"
		;
connectAttr "|MDL|root|joint_B1|joint_B2.ro" "|MDL|root|joint_B1|joint_B2|joint_B2_PRCST.cro"
		;
connectAttr "|MDL|root|joint_B1|joint_B2.pim" "|MDL|root|joint_B1|joint_B2|joint_B2_PRCST.cpim"
		;
connectAttr "|MDL|root|joint_B1|joint_B2.rp" "|MDL|root|joint_B1|joint_B2|joint_B2_PRCST.crp"
		;
connectAttr "|MDL|root|joint_B1|joint_B2.rpt" "|MDL|root|joint_B1|joint_B2|joint_B2_PRCST.crt"
		;
connectAttr "|MDL|root|joint_B1|joint_B2.jo" "|MDL|root|joint_B1|joint_B2|joint_B2_PRCST.cjo"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2.t" "|MDL|root|joint_B1|joint_B2|joint_B2_PRCST.tg[0].tt"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2.rp" "|MDL|root|joint_B1|joint_B2|joint_B2_PRCST.tg[0].trp"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2.rpt" "|MDL|root|joint_B1|joint_B2|joint_B2_PRCST.tg[0].trt"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2.r" "|MDL|root|joint_B1|joint_B2|joint_B2_PRCST.tg[0].tr"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2.ro" "|MDL|root|joint_B1|joint_B2|joint_B2_PRCST.tg[0].tro"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2.s" "|MDL|root|joint_B1|joint_B2|joint_B2_PRCST.tg[0].ts"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2.pm" "|MDL|root|joint_B1|joint_B2|joint_B2_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2.jo" "|MDL|root|joint_B1|joint_B2|joint_B2_PRCST.tg[0].tjo"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2.ssc" "|MDL|root|joint_B1|joint_B2|joint_B2_PRCST.tg[0].tsc"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2.is" "|MDL|root|joint_B1|joint_B2|joint_B2_PRCST.tg[0].tis"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B2_PRCST.w0" "|MDL|root|joint_B1|joint_B2|joint_B2_PRCST.tg[0].tw"
		;
connectAttr "|MDL|root|joint_B1.ro" "|MDL|root|joint_B1|joint_B1_PRCST.cro";
connectAttr "|MDL|root|joint_B1.pim" "|MDL|root|joint_B1|joint_B1_PRCST.cpim";
connectAttr "|MDL|root|joint_B1.rp" "|MDL|root|joint_B1|joint_B1_PRCST.crp";
connectAttr "|MDL|root|joint_B1.rpt" "|MDL|root|joint_B1|joint_B1_PRCST.crt";
connectAttr "|MDL|root|joint_B1.jo" "|MDL|root|joint_B1|joint_B1_PRCST.cjo";
connectAttr "|RIG|BRG|root|joint_B1.t" "|MDL|root|joint_B1|joint_B1_PRCST.tg[0].tt"
		;
connectAttr "|RIG|BRG|root|joint_B1.rp" "|MDL|root|joint_B1|joint_B1_PRCST.tg[0].trp"
		;
connectAttr "|RIG|BRG|root|joint_B1.rpt" "|MDL|root|joint_B1|joint_B1_PRCST.tg[0].trt"
		;
connectAttr "|RIG|BRG|root|joint_B1.r" "|MDL|root|joint_B1|joint_B1_PRCST.tg[0].tr"
		;
connectAttr "|RIG|BRG|root|joint_B1.ro" "|MDL|root|joint_B1|joint_B1_PRCST.tg[0].tro"
		;
connectAttr "|RIG|BRG|root|joint_B1.s" "|MDL|root|joint_B1|joint_B1_PRCST.tg[0].ts"
		;
connectAttr "|RIG|BRG|root|joint_B1.pm" "|MDL|root|joint_B1|joint_B1_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint_B1.jo" "|MDL|root|joint_B1|joint_B1_PRCST.tg[0].tjo"
		;
connectAttr "|RIG|BRG|root|joint_B1.ssc" "|MDL|root|joint_B1|joint_B1_PRCST.tg[0].tsc"
		;
connectAttr "|RIG|BRG|root|joint_B1.is" "|MDL|root|joint_B1|joint_B1_PRCST.tg[0].tis"
		;
connectAttr "|MDL|root|joint_B1|joint_B1_PRCST.w0" "|MDL|root|joint_B1|joint_B1_PRCST.tg[0].tw"
		;
connectAttr "|MDL|root.ro" "|MDL|root|root_PRCST.cro";
connectAttr "|MDL|root.pim" "|MDL|root|root_PRCST.cpim";
connectAttr "|MDL|root.rp" "|MDL|root|root_PRCST.crp";
connectAttr "|MDL|root.rpt" "|MDL|root|root_PRCST.crt";
connectAttr "|MDL|root.jo" "|MDL|root|root_PRCST.cjo";
connectAttr "|RIG|BRG|root.t" "|MDL|root|root_PRCST.tg[0].tt";
connectAttr "|RIG|BRG|root.rp" "|MDL|root|root_PRCST.tg[0].trp";
connectAttr "|RIG|BRG|root.rpt" "|MDL|root|root_PRCST.tg[0].trt";
connectAttr "|RIG|BRG|root.r" "|MDL|root|root_PRCST.tg[0].tr";
connectAttr "|RIG|BRG|root.ro" "|MDL|root|root_PRCST.tg[0].tro";
connectAttr "|RIG|BRG|root.s" "|MDL|root|root_PRCST.tg[0].ts";
connectAttr "|RIG|BRG|root.pm" "|MDL|root|root_PRCST.tg[0].tpm";
connectAttr "|RIG|BRG|root.jo" "|MDL|root|root_PRCST.tg[0].tjo";
connectAttr "|RIG|BRG|root.ssc" "|MDL|root|root_PRCST.tg[0].tsc";
connectAttr "|RIG|BRG|root.is" "|MDL|root|root_PRCST.tg[0].tis";
connectAttr "|MDL|root|root_PRCST.w0" "|MDL|root|root_PRCST.tg[0].tw";
connectAttr "|RIG|BRG|root|root_PRCST.ctx" "|RIG|BRG|root.tx";
connectAttr "|RIG|BRG|root|root_PRCST.cty" "|RIG|BRG|root.ty";
connectAttr "|RIG|BRG|root|root_PRCST.ctz" "|RIG|BRG|root.tz";
connectAttr "|RIG|BRG|root|root_PRCST.crx" "|RIG|BRG|root.rx";
connectAttr "|RIG|BRG|root|root_PRCST.cry" "|RIG|BRG|root.ry";
connectAttr "|RIG|BRG|root|root_PRCST.crz" "|RIG|BRG|root.rz";
connectAttr "|RIG|BRG|root|joint_A1|joint_A1_PRCST.ctx" "|RIG|BRG|root|joint_A1.tx"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A1_PRCST.cty" "|RIG|BRG|root|joint_A1.ty"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A1_PRCST.ctz" "|RIG|BRG|root|joint_A1.tz"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A1_PRCST.crx" "|RIG|BRG|root|joint_A1.rx"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A1_PRCST.cry" "|RIG|BRG|root|joint_A1.ry"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A1_PRCST.crz" "|RIG|BRG|root|joint_A1.rz"
		;
connectAttr "|RIG|BRG|root.s" "|RIG|BRG|root|joint_A1.is";
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A2_PRCST.ctx" "|RIG|BRG|root|joint_A1|joint_A2.tx"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A2_PRCST.cty" "|RIG|BRG|root|joint_A1|joint_A2.ty"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A2_PRCST.ctz" "|RIG|BRG|root|joint_A1|joint_A2.tz"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A2_PRCST.crx" "|RIG|BRG|root|joint_A1|joint_A2.rx"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A2_PRCST.cry" "|RIG|BRG|root|joint_A1|joint_A2.ry"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A2_PRCST.crz" "|RIG|BRG|root|joint_A1|joint_A2.rz"
		;
connectAttr "|RIG|BRG|root|joint_A1.s" "|RIG|BRG|root|joint_A1|joint_A2.is";
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.ctx" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3.tx"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.cty" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3.ty"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.ctz" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3.tz"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.crx" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3.rx"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.cry" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3.ry"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.crz" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3.rz"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2.s" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3.is"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.ctx" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4.tx"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.cty" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4.ty"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.ctz" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4.tz"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.crx" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4.rx"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.cry" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4.ry"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.crz" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4.rz"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3.s" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4.is"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4.ro" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.cro"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4.pim" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.cpim"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4.rp" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.crp"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4.rpt" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.crt"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4.jo" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.cjo"
		;
connectAttr "AUX_joint_A4_BDR.t" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.tg[0].tt"
		;
connectAttr "AUX_joint_A4_BDR.rp" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.tg[0].trp"
		;
connectAttr "AUX_joint_A4_BDR.rpt" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.tg[0].trt"
		;
connectAttr "AUX_joint_A4_BDR.r" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.tg[0].tr"
		;
connectAttr "AUX_joint_A4_BDR.ro" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.tg[0].tro"
		;
connectAttr "AUX_joint_A4_BDR.s" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.tg[0].ts"
		;
connectAttr "AUX_joint_A4_BDR.pm" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.w0" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4|joint_A4_PRCST.tg[0].tw"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3.ro" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.cro"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3.pim" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.cpim"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3.rp" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.crp"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3.rpt" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.crt"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3.jo" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.cjo"
		;
connectAttr "AUX_joint_A3_BDR.t" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.tg[0].tt"
		;
connectAttr "AUX_joint_A3_BDR.rp" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.tg[0].trp"
		;
connectAttr "AUX_joint_A3_BDR.rpt" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.tg[0].trt"
		;
connectAttr "AUX_joint_A3_BDR.r" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.tg[0].tr"
		;
connectAttr "AUX_joint_A3_BDR.ro" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.tg[0].tro"
		;
connectAttr "AUX_joint_A3_BDR.s" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.tg[0].ts"
		;
connectAttr "AUX_joint_A3_BDR.pm" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.w0" "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A3_PRCST.tg[0].tw"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2.ro" "|RIG|BRG|root|joint_A1|joint_A2|joint_A2_PRCST.cro"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2.pim" "|RIG|BRG|root|joint_A1|joint_A2|joint_A2_PRCST.cpim"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2.rp" "|RIG|BRG|root|joint_A1|joint_A2|joint_A2_PRCST.crp"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2.rpt" "|RIG|BRG|root|joint_A1|joint_A2|joint_A2_PRCST.crt"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2.jo" "|RIG|BRG|root|joint_A1|joint_A2|joint_A2_PRCST.cjo"
		;
connectAttr "AUX_joint_A2_BDR.t" "|RIG|BRG|root|joint_A1|joint_A2|joint_A2_PRCST.tg[0].tt"
		;
connectAttr "AUX_joint_A2_BDR.rp" "|RIG|BRG|root|joint_A1|joint_A2|joint_A2_PRCST.tg[0].trp"
		;
connectAttr "AUX_joint_A2_BDR.rpt" "|RIG|BRG|root|joint_A1|joint_A2|joint_A2_PRCST.tg[0].trt"
		;
connectAttr "AUX_joint_A2_BDR.r" "|RIG|BRG|root|joint_A1|joint_A2|joint_A2_PRCST.tg[0].tr"
		;
connectAttr "AUX_joint_A2_BDR.ro" "|RIG|BRG|root|joint_A1|joint_A2|joint_A2_PRCST.tg[0].tro"
		;
connectAttr "AUX_joint_A2_BDR.s" "|RIG|BRG|root|joint_A1|joint_A2|joint_A2_PRCST.tg[0].ts"
		;
connectAttr "AUX_joint_A2_BDR.pm" "|RIG|BRG|root|joint_A1|joint_A2|joint_A2_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A2|joint_A2_PRCST.w0" "|RIG|BRG|root|joint_A1|joint_A2|joint_A2_PRCST.tg[0].tw"
		;
connectAttr "|RIG|BRG|root|joint_A1.ro" "|RIG|BRG|root|joint_A1|joint_A1_PRCST.cro"
		;
connectAttr "|RIG|BRG|root|joint_A1.pim" "|RIG|BRG|root|joint_A1|joint_A1_PRCST.cpim"
		;
connectAttr "|RIG|BRG|root|joint_A1.rp" "|RIG|BRG|root|joint_A1|joint_A1_PRCST.crp"
		;
connectAttr "|RIG|BRG|root|joint_A1.rpt" "|RIG|BRG|root|joint_A1|joint_A1_PRCST.crt"
		;
connectAttr "|RIG|BRG|root|joint_A1.jo" "|RIG|BRG|root|joint_A1|joint_A1_PRCST.cjo"
		;
connectAttr "AUX_joint_A1_BDR.t" "|RIG|BRG|root|joint_A1|joint_A1_PRCST.tg[0].tt"
		;
connectAttr "AUX_joint_A1_BDR.rp" "|RIG|BRG|root|joint_A1|joint_A1_PRCST.tg[0].trp"
		;
connectAttr "AUX_joint_A1_BDR.rpt" "|RIG|BRG|root|joint_A1|joint_A1_PRCST.tg[0].trt"
		;
connectAttr "AUX_joint_A1_BDR.r" "|RIG|BRG|root|joint_A1|joint_A1_PRCST.tg[0].tr"
		;
connectAttr "AUX_joint_A1_BDR.ro" "|RIG|BRG|root|joint_A1|joint_A1_PRCST.tg[0].tro"
		;
connectAttr "AUX_joint_A1_BDR.s" "|RIG|BRG|root|joint_A1|joint_A1_PRCST.tg[0].ts"
		;
connectAttr "AUX_joint_A1_BDR.pm" "|RIG|BRG|root|joint_A1|joint_A1_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint_A1|joint_A1_PRCST.w0" "|RIG|BRG|root|joint_A1|joint_A1_PRCST.tg[0].tw"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B1_PRCST.ctx" "|RIG|BRG|root|joint_B1.tx"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B1_PRCST.cty" "|RIG|BRG|root|joint_B1.ty"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B1_PRCST.ctz" "|RIG|BRG|root|joint_B1.tz"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B1_PRCST.crx" "|RIG|BRG|root|joint_B1.rx"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B1_PRCST.cry" "|RIG|BRG|root|joint_B1.ry"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B1_PRCST.crz" "|RIG|BRG|root|joint_B1.rz"
		;
connectAttr "|RIG|BRG|root.s" "|RIG|BRG|root|joint_B1.is";
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B2_PRCST.ctx" "|RIG|BRG|root|joint_B1|joint_B2.tx"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B2_PRCST.cty" "|RIG|BRG|root|joint_B1|joint_B2.ty"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B2_PRCST.ctz" "|RIG|BRG|root|joint_B1|joint_B2.tz"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B2_PRCST.crx" "|RIG|BRG|root|joint_B1|joint_B2.rx"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B2_PRCST.cry" "|RIG|BRG|root|joint_B1|joint_B2.ry"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B2_PRCST.crz" "|RIG|BRG|root|joint_B1|joint_B2.rz"
		;
connectAttr "|RIG|BRG|root|joint_B1.s" "|RIG|BRG|root|joint_B1|joint_B2.is";
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.ctx" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3.tx"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.cty" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3.ty"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.ctz" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3.tz"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.crx" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3.rx"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.cry" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3.ry"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.crz" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3.rz"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2.s" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3.is"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.ctx" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4.tx"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.cty" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4.ty"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.ctz" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4.tz"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.crx" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4.rx"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.cry" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4.ry"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.crz" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4.rz"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3.s" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4.is"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4.ro" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.cro"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4.pim" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.cpim"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4.rp" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.crp"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4.rpt" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.crt"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4.jo" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.cjo"
		;
connectAttr "AUX_joint_B4_BDR.t" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.tg[0].tt"
		;
connectAttr "AUX_joint_B4_BDR.rp" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.tg[0].trp"
		;
connectAttr "AUX_joint_B4_BDR.rpt" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.tg[0].trt"
		;
connectAttr "AUX_joint_B4_BDR.r" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.tg[0].tr"
		;
connectAttr "AUX_joint_B4_BDR.ro" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.tg[0].tro"
		;
connectAttr "AUX_joint_B4_BDR.s" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.tg[0].ts"
		;
connectAttr "AUX_joint_B4_BDR.pm" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.w0" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4|joint_B4_PRCST.tg[0].tw"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3.ro" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.cro"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3.pim" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.cpim"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3.rp" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.crp"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3.rpt" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.crt"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3.jo" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.cjo"
		;
connectAttr "AUX_joint_B3_BDR.t" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.tg[0].tt"
		;
connectAttr "AUX_joint_B3_BDR.rp" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.tg[0].trp"
		;
connectAttr "AUX_joint_B3_BDR.rpt" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.tg[0].trt"
		;
connectAttr "AUX_joint_B3_BDR.r" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.tg[0].tr"
		;
connectAttr "AUX_joint_B3_BDR.ro" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.tg[0].tro"
		;
connectAttr "AUX_joint_B3_BDR.s" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.tg[0].ts"
		;
connectAttr "AUX_joint_B3_BDR.pm" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.w0" "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B3_PRCST.tg[0].tw"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2.ro" "|RIG|BRG|root|joint_B1|joint_B2|joint_B2_PRCST.cro"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2.pim" "|RIG|BRG|root|joint_B1|joint_B2|joint_B2_PRCST.cpim"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2.rp" "|RIG|BRG|root|joint_B1|joint_B2|joint_B2_PRCST.crp"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2.rpt" "|RIG|BRG|root|joint_B1|joint_B2|joint_B2_PRCST.crt"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2.jo" "|RIG|BRG|root|joint_B1|joint_B2|joint_B2_PRCST.cjo"
		;
connectAttr "AUX_joint_B2_BDR.t" "|RIG|BRG|root|joint_B1|joint_B2|joint_B2_PRCST.tg[0].tt"
		;
connectAttr "AUX_joint_B2_BDR.rp" "|RIG|BRG|root|joint_B1|joint_B2|joint_B2_PRCST.tg[0].trp"
		;
connectAttr "AUX_joint_B2_BDR.rpt" "|RIG|BRG|root|joint_B1|joint_B2|joint_B2_PRCST.tg[0].trt"
		;
connectAttr "AUX_joint_B2_BDR.r" "|RIG|BRG|root|joint_B1|joint_B2|joint_B2_PRCST.tg[0].tr"
		;
connectAttr "AUX_joint_B2_BDR.ro" "|RIG|BRG|root|joint_B1|joint_B2|joint_B2_PRCST.tg[0].tro"
		;
connectAttr "AUX_joint_B2_BDR.s" "|RIG|BRG|root|joint_B1|joint_B2|joint_B2_PRCST.tg[0].ts"
		;
connectAttr "AUX_joint_B2_BDR.pm" "|RIG|BRG|root|joint_B1|joint_B2|joint_B2_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B2_PRCST.w0" "|RIG|BRG|root|joint_B1|joint_B2|joint_B2_PRCST.tg[0].tw"
		;
connectAttr "|RIG|BRG|root|joint_B1.ro" "|RIG|BRG|root|joint_B1|joint_B1_PRCST.cro"
		;
connectAttr "|RIG|BRG|root|joint_B1.pim" "|RIG|BRG|root|joint_B1|joint_B1_PRCST.cpim"
		;
connectAttr "|RIG|BRG|root|joint_B1.rp" "|RIG|BRG|root|joint_B1|joint_B1_PRCST.crp"
		;
connectAttr "|RIG|BRG|root|joint_B1.rpt" "|RIG|BRG|root|joint_B1|joint_B1_PRCST.crt"
		;
connectAttr "|RIG|BRG|root|joint_B1.jo" "|RIG|BRG|root|joint_B1|joint_B1_PRCST.cjo"
		;
connectAttr "AUX_joint_B1_BDR.t" "|RIG|BRG|root|joint_B1|joint_B1_PRCST.tg[0].tt"
		;
connectAttr "AUX_joint_B1_BDR.rp" "|RIG|BRG|root|joint_B1|joint_B1_PRCST.tg[0].trp"
		;
connectAttr "AUX_joint_B1_BDR.rpt" "|RIG|BRG|root|joint_B1|joint_B1_PRCST.tg[0].trt"
		;
connectAttr "AUX_joint_B1_BDR.r" "|RIG|BRG|root|joint_B1|joint_B1_PRCST.tg[0].tr"
		;
connectAttr "AUX_joint_B1_BDR.ro" "|RIG|BRG|root|joint_B1|joint_B1_PRCST.tg[0].tro"
		;
connectAttr "AUX_joint_B1_BDR.s" "|RIG|BRG|root|joint_B1|joint_B1_PRCST.tg[0].ts"
		;
connectAttr "AUX_joint_B1_BDR.pm" "|RIG|BRG|root|joint_B1|joint_B1_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B1_PRCST.w0" "|RIG|BRG|root|joint_B1|joint_B1_PRCST.tg[0].tw"
		;
connectAttr "|RIG|BRG|root.ro" "|RIG|BRG|root|root_PRCST.cro";
connectAttr "|RIG|BRG|root.pim" "|RIG|BRG|root|root_PRCST.cpim";
connectAttr "|RIG|BRG|root.rp" "|RIG|BRG|root|root_PRCST.crp";
connectAttr "|RIG|BRG|root.rpt" "|RIG|BRG|root|root_PRCST.crt";
connectAttr "|RIG|BRG|root.jo" "|RIG|BRG|root|root_PRCST.cjo";
connectAttr "AUX_root_BDR.t" "|RIG|BRG|root|root_PRCST.tg[0].tt";
connectAttr "AUX_root_BDR.rp" "|RIG|BRG|root|root_PRCST.tg[0].trp";
connectAttr "AUX_root_BDR.rpt" "|RIG|BRG|root|root_PRCST.tg[0].trt";
connectAttr "AUX_root_BDR.r" "|RIG|BRG|root|root_PRCST.tg[0].tr";
connectAttr "AUX_root_BDR.ro" "|RIG|BRG|root|root_PRCST.tg[0].tro";
connectAttr "AUX_root_BDR.s" "|RIG|BRG|root|root_PRCST.tg[0].ts";
connectAttr "AUX_root_BDR.pm" "|RIG|BRG|root|root_PRCST.tg[0].tpm";
connectAttr "|RIG|BRG|root|root_PRCST.w0" "|RIG|BRG|root|root_PRCST.tg[0].tw";
connectAttr "CTL_joint_A_GRP_PRCST.ctx" "CTL_joint_A_GRP.tx";
connectAttr "CTL_joint_A_GRP_PRCST.cty" "CTL_joint_A_GRP.ty";
connectAttr "CTL_joint_A_GRP_PRCST.ctz" "CTL_joint_A_GRP.tz";
connectAttr "CTL_joint_A_GRP_PRCST.crx" "CTL_joint_A_GRP.rx";
connectAttr "CTL_joint_A_GRP_PRCST.cry" "CTL_joint_A_GRP.ry";
connectAttr "CTL_joint_A_GRP_PRCST.crz" "CTL_joint_A_GRP.rz";
connectAttr "CTL_joint_A_GRP.ro" "CTL_joint_A_GRP_PRCST.cro";
connectAttr "CTL_joint_A_GRP.pim" "CTL_joint_A_GRP_PRCST.cpim";
connectAttr "CTL_joint_A_GRP.rp" "CTL_joint_A_GRP_PRCST.crp";
connectAttr "CTL_joint_A_GRP.rpt" "CTL_joint_A_GRP_PRCST.crt";
connectAttr "CTL_root.t" "CTL_joint_A_GRP_PRCST.tg[0].tt";
connectAttr "CTL_root.rp" "CTL_joint_A_GRP_PRCST.tg[0].trp";
connectAttr "CTL_root.rpt" "CTL_joint_A_GRP_PRCST.tg[0].trt";
connectAttr "CTL_root.r" "CTL_joint_A_GRP_PRCST.tg[0].tr";
connectAttr "CTL_root.ro" "CTL_joint_A_GRP_PRCST.tg[0].tro";
connectAttr "CTL_root.s" "CTL_joint_A_GRP_PRCST.tg[0].ts";
connectAttr "CTL_root.pm" "CTL_joint_A_GRP_PRCST.tg[0].tpm";
connectAttr "CTL_joint_A_GRP_PRCST.w0" "CTL_joint_A_GRP_PRCST.tg[0].tw";
connectAttr "CTL_joint_B1_GRP_PRCST.ctx" "CTL_joint_B1_GRP.tx";
connectAttr "CTL_joint_B1_GRP_PRCST.cty" "CTL_joint_B1_GRP.ty";
connectAttr "CTL_joint_B1_GRP_PRCST.ctz" "CTL_joint_B1_GRP.tz";
connectAttr "CTL_joint_B1_GRP_PRCST.crx" "CTL_joint_B1_GRP.rx";
connectAttr "CTL_joint_B1_GRP_PRCST.cry" "CTL_joint_B1_GRP.ry";
connectAttr "CTL_joint_B1_GRP_PRCST.crz" "CTL_joint_B1_GRP.rz";
connectAttr "CTL_joint_B1_GRP.ro" "CTL_joint_B1_GRP_PRCST.cro";
connectAttr "CTL_joint_B1_GRP.pim" "CTL_joint_B1_GRP_PRCST.cpim";
connectAttr "CTL_joint_B1_GRP.rp" "CTL_joint_B1_GRP_PRCST.crp";
connectAttr "CTL_joint_B1_GRP.rpt" "CTL_joint_B1_GRP_PRCST.crt";
connectAttr "CTL_root.t" "CTL_joint_B1_GRP_PRCST.tg[0].tt";
connectAttr "CTL_root.rp" "CTL_joint_B1_GRP_PRCST.tg[0].trp";
connectAttr "CTL_root.rpt" "CTL_joint_B1_GRP_PRCST.tg[0].trt";
connectAttr "CTL_root.r" "CTL_joint_B1_GRP_PRCST.tg[0].tr";
connectAttr "CTL_root.ro" "CTL_joint_B1_GRP_PRCST.tg[0].tro";
connectAttr "CTL_root.s" "CTL_joint_B1_GRP_PRCST.tg[0].ts";
connectAttr "CTL_root.pm" "CTL_joint_B1_GRP_PRCST.tg[0].tpm";
connectAttr "CTL_joint_B1_GRP_PRCST.w0" "CTL_joint_B1_GRP_PRCST.tg[0].tw";
connectAttr "CTL_joint_B2_GRP_PRCST.ctx" "CTL_joint_B2_GRP.tx";
connectAttr "CTL_joint_B2_GRP_PRCST.cty" "CTL_joint_B2_GRP.ty";
connectAttr "CTL_joint_B2_GRP_PRCST.ctz" "CTL_joint_B2_GRP.tz";
connectAttr "CTL_joint_B2_GRP_PRCST.crx" "CTL_joint_B2_GRP.rx";
connectAttr "CTL_joint_B2_GRP_PRCST.cry" "CTL_joint_B2_GRP.ry";
connectAttr "CTL_joint_B2_GRP_PRCST.crz" "CTL_joint_B2_GRP.rz";
connectAttr "CTL_joint_B2_GRP.ro" "CTL_joint_B2_GRP_PRCST.cro";
connectAttr "CTL_joint_B2_GRP.pim" "CTL_joint_B2_GRP_PRCST.cpim";
connectAttr "CTL_joint_B2_GRP.rp" "CTL_joint_B2_GRP_PRCST.crp";
connectAttr "CTL_joint_B2_GRP.rpt" "CTL_joint_B2_GRP_PRCST.crt";
connectAttr "CTL_joint_B1.t" "CTL_joint_B2_GRP_PRCST.tg[0].tt";
connectAttr "CTL_joint_B1.rp" "CTL_joint_B2_GRP_PRCST.tg[0].trp";
connectAttr "CTL_joint_B1.rpt" "CTL_joint_B2_GRP_PRCST.tg[0].trt";
connectAttr "CTL_joint_B1.r" "CTL_joint_B2_GRP_PRCST.tg[0].tr";
connectAttr "CTL_joint_B1.ro" "CTL_joint_B2_GRP_PRCST.tg[0].tro";
connectAttr "CTL_joint_B1.s" "CTL_joint_B2_GRP_PRCST.tg[0].ts";
connectAttr "CTL_joint_B1.pm" "CTL_joint_B2_GRP_PRCST.tg[0].tpm";
connectAttr "CTL_joint_B2_GRP_PRCST.w0" "CTL_joint_B2_GRP_PRCST.tg[0].tw";
connectAttr "CTL_joint_B3_GRP_PRCST.ctx" "CTL_joint_B3_GRP.tx";
connectAttr "CTL_joint_B3_GRP_PRCST.cty" "CTL_joint_B3_GRP.ty";
connectAttr "CTL_joint_B3_GRP_PRCST.ctz" "CTL_joint_B3_GRP.tz";
connectAttr "CTL_joint_B3_GRP_PRCST.crx" "CTL_joint_B3_GRP.rx";
connectAttr "CTL_joint_B3_GRP_PRCST.cry" "CTL_joint_B3_GRP.ry";
connectAttr "CTL_joint_B3_GRP_PRCST.crz" "CTL_joint_B3_GRP.rz";
connectAttr "CTL_joint_B3_GRP.ro" "CTL_joint_B3_GRP_PRCST.cro";
connectAttr "CTL_joint_B3_GRP.pim" "CTL_joint_B3_GRP_PRCST.cpim";
connectAttr "CTL_joint_B3_GRP.rp" "CTL_joint_B3_GRP_PRCST.crp";
connectAttr "CTL_joint_B3_GRP.rpt" "CTL_joint_B3_GRP_PRCST.crt";
connectAttr "CTL_joint_B2.t" "CTL_joint_B3_GRP_PRCST.tg[0].tt";
connectAttr "CTL_joint_B2.rp" "CTL_joint_B3_GRP_PRCST.tg[0].trp";
connectAttr "CTL_joint_B2.rpt" "CTL_joint_B3_GRP_PRCST.tg[0].trt";
connectAttr "CTL_joint_B2.r" "CTL_joint_B3_GRP_PRCST.tg[0].tr";
connectAttr "CTL_joint_B2.ro" "CTL_joint_B3_GRP_PRCST.tg[0].tro";
connectAttr "CTL_joint_B2.s" "CTL_joint_B3_GRP_PRCST.tg[0].ts";
connectAttr "CTL_joint_B2.pm" "CTL_joint_B3_GRP_PRCST.tg[0].tpm";
connectAttr "CTL_joint_B3_GRP_PRCST.w0" "CTL_joint_B3_GRP_PRCST.tg[0].tw";
connectAttr "CTL_joint_B4_GRP_PRCST.ctx" "CTL_joint_B4_GRP.tx";
connectAttr "CTL_joint_B4_GRP_PRCST.cty" "CTL_joint_B4_GRP.ty";
connectAttr "CTL_joint_B4_GRP_PRCST.ctz" "CTL_joint_B4_GRP.tz";
connectAttr "CTL_joint_B4_GRP_PRCST.crx" "CTL_joint_B4_GRP.rx";
connectAttr "CTL_joint_B4_GRP_PRCST.cry" "CTL_joint_B4_GRP.ry";
connectAttr "CTL_joint_B4_GRP_PRCST.crz" "CTL_joint_B4_GRP.rz";
connectAttr "CTL_joint_B4_GRP.ro" "CTL_joint_B4_GRP_PRCST.cro";
connectAttr "CTL_joint_B4_GRP.pim" "CTL_joint_B4_GRP_PRCST.cpim";
connectAttr "CTL_joint_B4_GRP.rp" "CTL_joint_B4_GRP_PRCST.crp";
connectAttr "CTL_joint_B4_GRP.rpt" "CTL_joint_B4_GRP_PRCST.crt";
connectAttr "CTL_joint_B3.t" "CTL_joint_B4_GRP_PRCST.tg[0].tt";
connectAttr "CTL_joint_B3.rp" "CTL_joint_B4_GRP_PRCST.tg[0].trp";
connectAttr "CTL_joint_B3.rpt" "CTL_joint_B4_GRP_PRCST.tg[0].trt";
connectAttr "CTL_joint_B3.r" "CTL_joint_B4_GRP_PRCST.tg[0].tr";
connectAttr "CTL_joint_B3.ro" "CTL_joint_B4_GRP_PRCST.tg[0].tro";
connectAttr "CTL_joint_B3.s" "CTL_joint_B4_GRP_PRCST.tg[0].ts";
connectAttr "CTL_joint_B3.pm" "CTL_joint_B4_GRP_PRCST.tg[0].tpm";
connectAttr "CTL_joint_B4_GRP_PRCST.w0" "CTL_joint_B4_GRP_PRCST.tg[0].tw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of fk.ma
