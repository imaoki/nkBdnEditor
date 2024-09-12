//Maya ASCII 2022 scene
//Name: rig_test.ma
//Last modified: Sun, Aug 25, 2024 05:33:53 PM
//Codeset: 932
requires maya "2022";
requires "mtoa" "5.0.0.4";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202405021833-753375ecb3";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "331991F1-4023-A38F-E476-BFBD30D553E0";
createNode transform -s -n "persp";
	rename -uid "BF0D8C91-4745-AA14-8E47-52A65952F549";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 14.425591880771709 20.346355572813746 6.0398988553823507 ;
	setAttr ".r" -type "double3" -48.938352729606024 60.600000000000456 6.4789781256328634e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "607E7854-45A7-A024-1E4C-E9982CBB241A";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 25.544248674100395;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "345CF653-48E2-2010-B19C-FEBD28C17790";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "68C4CC58-4728-F866-A0CB-E8AECE4AFFA3";
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
	rename -uid "9CF97317-40A6-783D-EF3B-40A5263632D2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8CCA2C1A-49E6-DFB8-1728-31999B9F90EA";
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
	rename -uid "E59821E5-4022-0802-8486-6DBE5BC77A25";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "AFEE6613-4923-2BCC-13B9-C1A7B57B5700";
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
createNode transform -n "MDL_Test";
	rename -uid "57BE1D0F-49F1-4805-8D90-B684180646C0";
createNode joint -n "Root" -p "MDL_Test";
	rename -uid "03C9B5E0-48F5-9327-DCB7-A1AC00F01290";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.2;
createNode joint -n "joint1" -p "|MDL_Test|Root";
	rename -uid "B722F22F-4622-985F-07BF-BE9B2AE3957F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "joint2" -p "|MDL_Test|Root|joint1";
	rename -uid "A00ABB51-4466-A0E2-D3C5-6982E11FF6AB";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.1;
createNode joint -n "joint3" -p "|MDL_Test|Root|joint1|joint2";
	rename -uid "16565AF2-4EFB-F10F-94D6-F8BD70381E7F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.1;
createNode joint -n "joint4" -p "|MDL_Test|Root|joint1|joint2|joint3";
	rename -uid "9ECB1EB3-4EFE-B095-4F96-F08834BA6432";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.1;
createNode joint -n "joint5" -p "|MDL_Test|Root|joint1|joint2|joint3|joint4";
	rename -uid "B85B52BA-429A-C79F-33DF-E6BE11E844AD";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.1;
createNode joint -n "joint6" -p "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5";
	rename -uid "F3E38183-4604-6FBC-E3CE-B0B6919C1A30";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.1;
createNode parentConstraint -n "joint6_PRCST" -p "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6";
	rename -uid "713BD764-4ABC-2E7B-A552-27A0F2131D35";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint6W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint5_PRCST" -p "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5";
	rename -uid "DB57A618-4A5F-B0FA-7EA1-229AD69A82B1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint5W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint4_PRCST" -p "|MDL_Test|Root|joint1|joint2|joint3|joint4";
	rename -uid "F6AEA862-4811-E0EF-A507-0AB06F8CAB3A";
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
	setAttr ".rst" -type "double3" 2 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint3_PRCST" -p "|MDL_Test|Root|joint1|joint2|joint3";
	rename -uid "F6C1213D-4DD6-7DDF-A2EB-20B2DFFC2023";
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
	setAttr ".rst" -type "double3" 2 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint2_PRCST" -p "|MDL_Test|Root|joint1|joint2";
	rename -uid "EE187F7A-4609-9ED7-0730-C3AC0049B21B";
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
	setAttr ".rst" -type "double3" 2 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint1_PRCST" -p "|MDL_Test|Root|joint1";
	rename -uid "9AD0FFFB-4519-E196-423E-B5A9B69C929F";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "Root_PRCST" -p "|MDL_Test|Root";
	rename -uid "B03DA51C-45BD-C8A8-5ED5-FCBF63D546C3";
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
createNode transform -n "RIG_Test";
	rename -uid "AB6394A5-4D34-5631-4A51-67A3056CF416";
	addAttr -ci true -sn "mrsd" -ln "mrsData" -dt "string";
	setAttr -l on ".mrsd" -type "string" "type=\"rig\";baseName=\"Test\";datetime=\"202408251728\";toolVersion=\"0.20.1\";";
createNode transform -n "BRG" -p "RIG_Test";
	rename -uid "A46DFCE4-43BE-977A-FB8B-AF9B0993831D";
createNode joint -n "Root" -p "BRG";
	rename -uid "912ADE6E-4900-C9C0-BE04-929BFFEC1B9F";
	addAttr -ci true -sn "mrsd" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsd" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root\";";
createNode joint -n "joint1" -p "|RIG_Test|BRG|Root";
	rename -uid "3049F08B-4C27-B07D-1EF0-1D9C559B2C57";
	addAttr -ci true -sn "mrsd" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsd" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|joint1\";";
createNode joint -n "joint2" -p "|RIG_Test|BRG|Root|joint1";
	rename -uid "89648D0A-4E1E-3DA5-3960-78A198172BB5";
	addAttr -ci true -sn "mrsd" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsd" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|joint1|joint2\";";
createNode joint -n "joint3" -p "|RIG_Test|BRG|Root|joint1|joint2";
	rename -uid "0365E2B6-42E7-C517-D81E-3F9422DEDFDE";
	addAttr -ci true -sn "mrsd" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsd" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|joint1|joint2|joint3\";";
createNode joint -n "joint4" -p "|RIG_Test|BRG|Root|joint1|joint2|joint3";
	rename -uid "45917977-44BE-1FBE-B59A-60AE8366C1DC";
	addAttr -ci true -sn "mrsd" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsd" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|joint1|joint2|joint3|joint4\";";
createNode joint -n "joint5" -p "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4";
	rename -uid "0834CADD-4386-9FCA-444D-C88AA1DEC382";
	addAttr -ci true -sn "mrsd" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsd" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|joint1|joint2|joint3|joint4|joint5\";";
createNode joint -n "joint6" -p "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5";
	rename -uid "F871A077-4FB6-51AB-7D80-D6A6545FB1D1";
	addAttr -ci true -sn "mrsd" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsd" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|joint1|joint2|joint3|joint4|joint5|joint6\";";
createNode parentConstraint -n "joint6_PRCST" -p "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6";
	rename -uid "8AB9278A-4A20-C82A-A0E9-F898822AD9AB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_joint6_BDRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint5_PRCST" -p "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5";
	rename -uid "36C15A69-49D0-4F1C-3EC8-37B40E339CC6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_joint5_BDRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint4_PRCST" -p "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4";
	rename -uid "15482992-4EC6-962F-474D-F4942E53D48A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_joint4_BDRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint3_PRCST" -p "|RIG_Test|BRG|Root|joint1|joint2|joint3";
	rename -uid "9171EFBF-491D-9F8E-AC4C-D985D013DB65";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_joint3_BDRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint2_PRCST" -p "|RIG_Test|BRG|Root|joint1|joint2";
	rename -uid "15AF5155-49BF-A3D4-C4A1-2A83A4ABEE4A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_joint2_BDRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint1_PRCST" -p "|RIG_Test|BRG|Root|joint1";
	rename -uid "8DDFE0B1-4A05-4553-4D65-DCA3D7F4458E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_joint1_BDRW0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "Root_PRCST" -p "|RIG_Test|BRG|Root";
	rename -uid "65D7B17E-4BF8-2DA9-0952-CB81F6220127";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_Root_BDRW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "MOD_Root" -p "RIG_Test";
	rename -uid "5F940490-463E-031C-A5C2-E1B504FDEC01";
	addAttr -ci true -sn "mrsd" -ln "mrsData" -dt "string";
	setAttr -l on ".mrsd" -type "string" "type=\"module\";baseName=\"Root\";moduleType=\"Root\";";
createNode transform -n "CTL_Root_GRP" -p "MOD_Root";
	rename -uid "E815EC61-4E62-DC67-9584-B9B911C46783";
createNode transform -n "CTL_RootGlobal_IDT" -p "CTL_Root_GRP";
	rename -uid "4FE24ECB-4D88-8680-70A5-1B9D017F2AD7";
	addAttr -ci true -sn "mrsd" -ln "mrsData" -dt "string";
	setAttr -l on ".mrsd" -type "string" "first=false;";
createNode transform -n "CTL_RootGlobal" -p "CTL_RootGlobal_IDT";
	rename -uid "E81BF7C6-430E-6F02-447B-5A9B958380BA";
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
	setAttr ".ss" -type "double3" 3 3 3 ;
	setAttr -l on ".ssx";
	setAttr -l on ".ssy";
	setAttr -l on ".ssz";
	setAttr -l on ".cn" -type "string" "Circle(Directional)";
createNode transform -n "AUX_Root_BDR" -p "CTL_RootGlobal";
	rename -uid "D89C90B0-4C10-C7A2-27EB-1CAE89F58524";
createNode transform -n "CTL_RootLocal_IDT" -p "CTL_RootGlobal";
	rename -uid "800EB9EA-48B1-5B43-591D-9A999F2D17AF";
	addAttr -ci true -sn "mrsd" -ln "mrsData" -dt "string";
	setAttr -l on ".mrsd" -type "string" "first=false;";
createNode transform -n "CTL_RootLocal" -p "CTL_RootLocal_IDT";
	rename -uid "EEB56BE7-4B4C-9BDF-B975-409A4A1447BD";
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
	setAttr ".ss" -type "double3" 2 2 2 ;
	setAttr -l on ".ssx";
	setAttr -l on ".ssy";
	setAttr -l on ".ssz";
	setAttr -l on ".cn" -type "string" "Circle(Directional)";
createNode nurbsCurve -n "CTL_RootLocalShape1" -p "CTL_RootLocal";
	rename -uid "241B69DA-47E2-CEED-A42A-B08EC8168C25";
	addAttr -ci true -sn "sc" -ln "sourceCurve" -dt "nurbsCurve";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 14 0 no 3
		19 4.2226777970000002 4.2226777970000002 4.2226777970000002 5 6 7 8 9 10 11
		 11.777322310000001 11.777322310000001 11.777322310000001 12.777322310000001 12.777322310000001
		 12.777322310000001 13.777322310000001 13.777322310000001 13.777322310000001
		17
		0.34729635715484619 0 1.968510627746582
		0.74747788906097412 0 1.8960431814193726
		1.615408182144165 0 1.4508945941925049
		2.216388463973999 0 -2.2067417337900963e-14
		1.5672231912612915 0 -1.5672231912612915
		2.1959344065347608e-13 0 -2.216388463973999
		-1.5672231912612915 0 -1.5672231912612915
		-2.216388463973999 0 -4.6973423414864435e-12
		-1.6154080629348755 0 1.4508947134017944
		-0.74747782945632935 0 1.8960431814193726
		-0.34729617834091187 0 1.9685107469558716
		-0.23153106868267059 0 2.1130766868591309
		-0.1157655343413353 0 2.2565383911132812
		0 0 2.4000000953674316
		0.11576533317565918 0 2.2565383911132812
		0.23153066635131836 0 2.1130766868591309
		0.34729599952697754 0 1.96961510181427
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
createNode nurbsCurve -n "CTL_RootGlobalShape1" -p "CTL_RootGlobal";
	rename -uid "8B7C30B4-45BA-0188-E189-04814093610A";
	addAttr -ci true -sn "sc" -ln "sourceCurve" -dt "nurbsCurve";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 14 0 no 3
		19 4.2226777970000002 4.2226777970000002 4.2226777970000002 5 6 7 8 9 10 11
		 11.777322310000001 11.777322310000001 11.777322310000001 12.777322310000001 12.777322310000001
		 12.777322310000001 13.777322310000001 13.777322310000001 13.777322310000001
		17
		0.52094453573226929 0 2.952765941619873
		1.1212167739868164 0 2.8440647125244141
		2.4231123924255371 0 2.1763420104980469
		3.324582576751709 0 -3.3101126006851445e-14
		2.350834846496582 0 -2.350834846496582
		3.2939016098021412e-13 0 -3.324582576751709
		-2.350834846496582 0 -2.350834846496582
		-3.324582576751709 0 -7.0460135122296652e-12
		-2.423112154006958 0 2.1763420104980469
		-1.1212167739868164 0 2.8440647125244141
		-0.52094423770904541 0 2.9527661800384521
		-0.34729659557342529 0 3.1696150302886963
		-0.17364829778671265 0 3.3848075866699219
		0 0 3.6000001430511475
		0.17364799976348877 0 3.3848075866699219
		0.34729599952697754 0 3.1696150302886963
		0.52094399929046631 0 2.9544227123260498
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
createNode transform -n "MOD_Chain" -p "RIG_Test";
	rename -uid "25CB70B7-4F3D-F73B-3779-21A8439A8B83";
	addAttr -ci true -sn "mrsd" -ln "mrsData" -dt "string";
	setAttr -l on ".mrsd" -type "string" "type=\"module\";baseName=\"Chain\";moduleType=\"FK\";";
createNode transform -n "CTL_Chain_GRP" -p "MOD_Chain";
	rename -uid "389FF23B-497B-7DC3-C7D2-699357E0CE48";
createNode transform -n "CTL_joint1_IDT" -p "CTL_Chain_GRP";
	rename -uid "F20BB95A-4DCC-5A77-E251-BA93DC4ABD84";
createNode transform -n "CTL_joint1" -p "CTL_joint1_IDT";
	rename -uid "516E9F27-4D5B-A8FD-C381-D39FEFBD3F5B";
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
createNode transform -n "AUX_joint1_BDR" -p "CTL_joint1";
	rename -uid "5BD7D3D1-480F-A3CF-C8F4-BDA3811AEE25";
createNode transform -n "CTL_joint2_IDT" -p "CTL_joint1";
	rename -uid "ECB30557-4163-B1B4-82C2-95BCB9D5DFDF";
	setAttr ".t" -type "double3" 2 0 0 ;
createNode transform -n "CTL_joint2" -p "CTL_joint2_IDT";
	rename -uid "96D81605-47CD-1D08-9A31-47B2B6AF6521";
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
createNode transform -n "AUX_joint2_BDR" -p "CTL_joint2";
	rename -uid "F78995F3-4EA7-8B51-DAEA-3CBCE915B6D7";
createNode transform -n "CTL_joint3_IDT" -p "CTL_joint2";
	rename -uid "26AD0B3F-4019-90CA-C621-9C811E1FCA0E";
	setAttr ".t" -type "double3" 2 0 0 ;
createNode transform -n "CTL_joint3" -p "CTL_joint3_IDT";
	rename -uid "53C7426D-4AA5-A3F1-661B-8BAC92754D51";
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
createNode transform -n "AUX_joint3_BDR" -p "CTL_joint3";
	rename -uid "1F2680B1-41E3-4A16-111C-E290DFA6BDF3";
createNode transform -n "CTL_joint4_IDT" -p "CTL_joint3";
	rename -uid "8526E23C-44F1-9B49-1E08-5585298405A4";
	setAttr ".t" -type "double3" 2 0 0 ;
createNode transform -n "CTL_joint4" -p "CTL_joint4_IDT";
	rename -uid "9E0BB53D-43DC-C423-3DDF-969731AA91BD";
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
createNode transform -n "AUX_joint4_BDR" -p "CTL_joint4";
	rename -uid "56A16E09-43C6-F326-8DB0-C4903F1D6520";
createNode transform -n "CTL_joint5_IDT" -p "CTL_joint4";
	rename -uid "6FC64F29-4B71-49ED-70BE-93AE8653E038";
	setAttr ".t" -type "double3" 2 0 0 ;
createNode transform -n "CTL_joint5" -p "CTL_joint5_IDT";
	rename -uid "25C83F4E-4E70-3B4C-D0EB-89BDDF4B94FD";
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
createNode transform -n "AUX_joint5_BDR" -p "CTL_joint5";
	rename -uid "ED940C16-4C9D-7806-A9F5-E6877BD4C172";
createNode transform -n "CTL_joint6_IDT" -p "CTL_joint5";
	rename -uid "A81E09CA-47CA-1664-3F77-2BB3AD2ED00E";
	setAttr ".t" -type "double3" 2 0 0 ;
createNode transform -n "CTL_joint6" -p "CTL_joint6_IDT";
	rename -uid "90F3B4A5-47B7-ED6E-AED2-D7AE8C2BAE7C";
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
createNode transform -n "AUX_joint6_BDR" -p "CTL_joint6";
	rename -uid "BDEC75B2-4BBC-1670-531D-94BCEFBA769F";
createNode nurbsCurve -n "CTL_joint6Shape1" -p "CTL_joint6";
	rename -uid "C1F7AE0D-4C62-1C23-CD54-F2AD06922015";
	addAttr -ci true -sn "sc" -ln "sourceCurve" -dt "nurbsCurve";
	setAttr -k off ".v";
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
createNode nurbsCurve -n "CTL_joint5Shape1" -p "CTL_joint5";
	rename -uid "A780BF6E-4FCD-CFFF-2374-54B230C114D9";
	addAttr -ci true -sn "sc" -ln "sourceCurve" -dt "nurbsCurve";
	setAttr -k off ".v";
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
createNode nurbsCurve -n "CTL_joint4Shape1" -p "CTL_joint4";
	rename -uid "F215A0F5-4051-831E-7D4C-37B70A6CD35E";
	addAttr -ci true -sn "sc" -ln "sourceCurve" -dt "nurbsCurve";
	setAttr -k off ".v";
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
createNode nurbsCurve -n "CTL_joint3Shape1" -p "CTL_joint3";
	rename -uid "673B709B-4C38-27CC-E053-4098EACED094";
	addAttr -ci true -sn "sc" -ln "sourceCurve" -dt "nurbsCurve";
	setAttr -k off ".v";
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
createNode nurbsCurve -n "CTL_joint2Shape1" -p "CTL_joint2";
	rename -uid "15E9AB6F-48A6-D58F-063A-D492A79F0E82";
	addAttr -ci true -sn "sc" -ln "sourceCurve" -dt "nurbsCurve";
	setAttr -k off ".v";
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
createNode nurbsCurve -n "CTL_joint1Shape1" -p "CTL_joint1";
	rename -uid "37917AB1-4A46-BBBC-C27C-ACAD4EE5E817";
	addAttr -ci true -sn "sc" -ln "sourceCurve" -dt "nurbsCurve";
	setAttr -k off ".v";
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
createNode parentConstraint -n "CTL_joint1_IDT_PRCST" -p "CTL_joint1_IDT";
	rename -uid "0D9F64D2-4D8D-C3E6-5F3B-04806847A006";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTL_RootLocalW0" -dv 1 -min 0 -at "double";
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "650248C2-49C6-74BB-A783-6595F36BEEC6";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "35C770A0-4D47-8672-3CA8-CA99D80F3922";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "41CE9147-40A1-871C-247D-7FAB5C88333B";
createNode displayLayerManager -n "layerManager";
	rename -uid "03D9ABE3-4199-6DE5-95FF-A3B4BD20051A";
createNode displayLayer -n "defaultLayer";
	rename -uid "CD8C4CAA-45D9-DDA6-7408-D1BDBA55D225";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C22B64FD-45AC-ABFD-1C64-55B37C737499";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "EE6403F4-4B7B-90B8-8A9C-129A3C21317A";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "4B4A35B9-42AE-00F7-CF25-78B697A06D2F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 966\n            -height 1092\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n"
		+ "            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n"
		+ "                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 966\\n    -height 1092\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 966\\n    -height 1092\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "014AA6A2-4327-FE38-E998-A0826D1C0003";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 30 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 0;
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
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".fs" 1;
	setAttr ".ef" 10;
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
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
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "|MDL_Test|Root|Root_PRCST.ctx" "|MDL_Test|Root.tx";
connectAttr "|MDL_Test|Root|Root_PRCST.cty" "|MDL_Test|Root.ty";
connectAttr "|MDL_Test|Root|Root_PRCST.ctz" "|MDL_Test|Root.tz";
connectAttr "|MDL_Test|Root|Root_PRCST.crx" "|MDL_Test|Root.rx";
connectAttr "|MDL_Test|Root|Root_PRCST.cry" "|MDL_Test|Root.ry";
connectAttr "|MDL_Test|Root|Root_PRCST.crz" "|MDL_Test|Root.rz";
connectAttr "|MDL_Test|Root|joint1|joint1_PRCST.ctx" "|MDL_Test|Root|joint1.tx";
connectAttr "|MDL_Test|Root|joint1|joint1_PRCST.cty" "|MDL_Test|Root|joint1.ty";
connectAttr "|MDL_Test|Root|joint1|joint1_PRCST.ctz" "|MDL_Test|Root|joint1.tz";
connectAttr "|MDL_Test|Root|joint1|joint1_PRCST.crx" "|MDL_Test|Root|joint1.rx";
connectAttr "|MDL_Test|Root|joint1|joint1_PRCST.cry" "|MDL_Test|Root|joint1.ry";
connectAttr "|MDL_Test|Root|joint1|joint1_PRCST.crz" "|MDL_Test|Root|joint1.rz";
connectAttr "|MDL_Test|Root.s" "|MDL_Test|Root|joint1.is";
connectAttr "|MDL_Test|Root|joint1.s" "|MDL_Test|Root|joint1|joint2.is";
connectAttr "|MDL_Test|Root|joint1|joint2|joint2_PRCST.ctx" "|MDL_Test|Root|joint1|joint2.tx"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint2_PRCST.cty" "|MDL_Test|Root|joint1|joint2.ty"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint2_PRCST.ctz" "|MDL_Test|Root|joint1|joint2.tz"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint2_PRCST.crx" "|MDL_Test|Root|joint1|joint2.rx"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint2_PRCST.cry" "|MDL_Test|Root|joint1|joint2.ry"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint2_PRCST.crz" "|MDL_Test|Root|joint1|joint2.rz"
		;
connectAttr "|MDL_Test|Root|joint1|joint2.s" "|MDL_Test|Root|joint1|joint2|joint3.is"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint3_PRCST.ctx" "|MDL_Test|Root|joint1|joint2|joint3.tx"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint3_PRCST.cty" "|MDL_Test|Root|joint1|joint2|joint3.ty"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint3_PRCST.ctz" "|MDL_Test|Root|joint1|joint2|joint3.tz"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint3_PRCST.crx" "|MDL_Test|Root|joint1|joint2|joint3.rx"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint3_PRCST.cry" "|MDL_Test|Root|joint1|joint2|joint3.ry"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint3_PRCST.crz" "|MDL_Test|Root|joint1|joint2|joint3.rz"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3.s" "|MDL_Test|Root|joint1|joint2|joint3|joint4.is"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint4_PRCST.ctx" "|MDL_Test|Root|joint1|joint2|joint3|joint4.tx"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint4_PRCST.cty" "|MDL_Test|Root|joint1|joint2|joint3|joint4.ty"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint4_PRCST.ctz" "|MDL_Test|Root|joint1|joint2|joint3|joint4.tz"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint4_PRCST.crx" "|MDL_Test|Root|joint1|joint2|joint3|joint4.rx"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint4_PRCST.cry" "|MDL_Test|Root|joint1|joint2|joint3|joint4.ry"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint4_PRCST.crz" "|MDL_Test|Root|joint1|joint2|joint3|joint4.rz"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4.s" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5.is"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.ctx" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5.tx"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.cty" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5.ty"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.ctz" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5.tz"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.crx" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5.rx"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.cry" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5.ry"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.crz" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5.rz"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5.s" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6.is"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.ctx" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6.tx"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.cty" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6.ty"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.ctz" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6.tz"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.crx" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6.rx"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.cry" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6.ry"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.crz" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6.rz"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6.ro" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.cro"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6.pim" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.cpim"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6.rp" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.crp"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6.rpt" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.crt"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6.jo" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6.t" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6.rp" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6.rpt" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6.r" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6.ro" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6.s" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6.pm" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6.jo" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6.ssc" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6.is" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.w0" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5.ro" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.cro"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5.pim" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.cpim"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5.rp" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.crp"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5.rpt" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.crt"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5.jo" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5.t" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5.rp" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5.rpt" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5.r" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5.ro" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5.s" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5.pm" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5.jo" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5.ssc" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5.is" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.w0" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4.ro" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint4_PRCST.cro"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4.pim" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint4_PRCST.cpim"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4.rp" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint4_PRCST.crp"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4.rpt" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint4_PRCST.crt"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4.jo" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint4_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4.t" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4.rp" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4.rpt" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4.r" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4.ro" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4.s" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4.pm" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4.jo" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4.ssc" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4.is" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint4_PRCST.w0" "|MDL_Test|Root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3.ro" "|MDL_Test|Root|joint1|joint2|joint3|joint3_PRCST.cro"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3.pim" "|MDL_Test|Root|joint1|joint2|joint3|joint3_PRCST.cpim"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3.rp" "|MDL_Test|Root|joint1|joint2|joint3|joint3_PRCST.crp"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3.rpt" "|MDL_Test|Root|joint1|joint2|joint3|joint3_PRCST.crt"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3.jo" "|MDL_Test|Root|joint1|joint2|joint3|joint3_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3.t" "|MDL_Test|Root|joint1|joint2|joint3|joint3_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3.rp" "|MDL_Test|Root|joint1|joint2|joint3|joint3_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3.rpt" "|MDL_Test|Root|joint1|joint2|joint3|joint3_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3.r" "|MDL_Test|Root|joint1|joint2|joint3|joint3_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3.ro" "|MDL_Test|Root|joint1|joint2|joint3|joint3_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3.s" "|MDL_Test|Root|joint1|joint2|joint3|joint3_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3.pm" "|MDL_Test|Root|joint1|joint2|joint3|joint3_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3.jo" "|MDL_Test|Root|joint1|joint2|joint3|joint3_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3.ssc" "|MDL_Test|Root|joint1|joint2|joint3|joint3_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3.is" "|MDL_Test|Root|joint1|joint2|joint3|joint3_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint3|joint3_PRCST.w0" "|MDL_Test|Root|joint1|joint2|joint3|joint3_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|Root|joint1|joint2.ro" "|MDL_Test|Root|joint1|joint2|joint2_PRCST.cro"
		;
connectAttr "|MDL_Test|Root|joint1|joint2.pim" "|MDL_Test|Root|joint1|joint2|joint2_PRCST.cpim"
		;
connectAttr "|MDL_Test|Root|joint1|joint2.rp" "|MDL_Test|Root|joint1|joint2|joint2_PRCST.crp"
		;
connectAttr "|MDL_Test|Root|joint1|joint2.rpt" "|MDL_Test|Root|joint1|joint2|joint2_PRCST.crt"
		;
connectAttr "|MDL_Test|Root|joint1|joint2.jo" "|MDL_Test|Root|joint1|joint2|joint2_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2.t" "|MDL_Test|Root|joint1|joint2|joint2_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2.rp" "|MDL_Test|Root|joint1|joint2|joint2_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2.rpt" "|MDL_Test|Root|joint1|joint2|joint2_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2.r" "|MDL_Test|Root|joint1|joint2|joint2_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2.ro" "|MDL_Test|Root|joint1|joint2|joint2_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2.s" "|MDL_Test|Root|joint1|joint2|joint2_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2.pm" "|MDL_Test|Root|joint1|joint2|joint2_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2.jo" "|MDL_Test|Root|joint1|joint2|joint2_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2.ssc" "|MDL_Test|Root|joint1|joint2|joint2_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2.is" "|MDL_Test|Root|joint1|joint2|joint2_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|Root|joint1|joint2|joint2_PRCST.w0" "|MDL_Test|Root|joint1|joint2|joint2_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|Root|joint1.ro" "|MDL_Test|Root|joint1|joint1_PRCST.cro";
connectAttr "|MDL_Test|Root|joint1.pim" "|MDL_Test|Root|joint1|joint1_PRCST.cpim"
		;
connectAttr "|MDL_Test|Root|joint1.rp" "|MDL_Test|Root|joint1|joint1_PRCST.crp";
connectAttr "|MDL_Test|Root|joint1.rpt" "|MDL_Test|Root|joint1|joint1_PRCST.crt"
		;
connectAttr "|MDL_Test|Root|joint1.jo" "|MDL_Test|Root|joint1|joint1_PRCST.cjo";
connectAttr "|RIG_Test|BRG|Root|joint1.t" "|MDL_Test|Root|joint1|joint1_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|Root|joint1.rp" "|MDL_Test|Root|joint1|joint1_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|Root|joint1.rpt" "|MDL_Test|Root|joint1|joint1_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|Root|joint1.r" "|MDL_Test|Root|joint1|joint1_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|Root|joint1.ro" "|MDL_Test|Root|joint1|joint1_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|Root|joint1.s" "|MDL_Test|Root|joint1|joint1_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|Root|joint1.pm" "|MDL_Test|Root|joint1|joint1_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|Root|joint1.jo" "|MDL_Test|Root|joint1|joint1_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|Root|joint1.ssc" "|MDL_Test|Root|joint1|joint1_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|Root|joint1.is" "|MDL_Test|Root|joint1|joint1_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|Root|joint1|joint1_PRCST.w0" "|MDL_Test|Root|joint1|joint1_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|Root.ro" "|MDL_Test|Root|Root_PRCST.cro";
connectAttr "|MDL_Test|Root.pim" "|MDL_Test|Root|Root_PRCST.cpim";
connectAttr "|MDL_Test|Root.rp" "|MDL_Test|Root|Root_PRCST.crp";
connectAttr "|MDL_Test|Root.rpt" "|MDL_Test|Root|Root_PRCST.crt";
connectAttr "|MDL_Test|Root.jo" "|MDL_Test|Root|Root_PRCST.cjo";
connectAttr "|RIG_Test|BRG|Root.t" "|MDL_Test|Root|Root_PRCST.tg[0].tt";
connectAttr "|RIG_Test|BRG|Root.rp" "|MDL_Test|Root|Root_PRCST.tg[0].trp";
connectAttr "|RIG_Test|BRG|Root.rpt" "|MDL_Test|Root|Root_PRCST.tg[0].trt";
connectAttr "|RIG_Test|BRG|Root.r" "|MDL_Test|Root|Root_PRCST.tg[0].tr";
connectAttr "|RIG_Test|BRG|Root.ro" "|MDL_Test|Root|Root_PRCST.tg[0].tro";
connectAttr "|RIG_Test|BRG|Root.s" "|MDL_Test|Root|Root_PRCST.tg[0].ts";
connectAttr "|RIG_Test|BRG|Root.pm" "|MDL_Test|Root|Root_PRCST.tg[0].tpm";
connectAttr "|RIG_Test|BRG|Root.jo" "|MDL_Test|Root|Root_PRCST.tg[0].tjo";
connectAttr "|RIG_Test|BRG|Root.ssc" "|MDL_Test|Root|Root_PRCST.tg[0].tsc";
connectAttr "|RIG_Test|BRG|Root.is" "|MDL_Test|Root|Root_PRCST.tg[0].tis";
connectAttr "|MDL_Test|Root|Root_PRCST.w0" "|MDL_Test|Root|Root_PRCST.tg[0].tw";
connectAttr "|RIG_Test|BRG|Root|Root_PRCST.ctx" "|RIG_Test|BRG|Root.tx";
connectAttr "|RIG_Test|BRG|Root|Root_PRCST.cty" "|RIG_Test|BRG|Root.ty";
connectAttr "|RIG_Test|BRG|Root|Root_PRCST.ctz" "|RIG_Test|BRG|Root.tz";
connectAttr "|RIG_Test|BRG|Root|Root_PRCST.crx" "|RIG_Test|BRG|Root.rx";
connectAttr "|RIG_Test|BRG|Root|Root_PRCST.cry" "|RIG_Test|BRG|Root.ry";
connectAttr "|RIG_Test|BRG|Root|Root_PRCST.crz" "|RIG_Test|BRG|Root.rz";
connectAttr "|RIG_Test|BRG|Root.s" "|RIG_Test|BRG|Root|joint1.is";
connectAttr "|RIG_Test|BRG|Root|joint1|joint1_PRCST.ctx" "|RIG_Test|BRG|Root|joint1.tx"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint1_PRCST.cty" "|RIG_Test|BRG|Root|joint1.ty"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint1_PRCST.ctz" "|RIG_Test|BRG|Root|joint1.tz"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint1_PRCST.crx" "|RIG_Test|BRG|Root|joint1.rx"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint1_PRCST.cry" "|RIG_Test|BRG|Root|joint1.ry"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint1_PRCST.crz" "|RIG_Test|BRG|Root|joint1.rz"
		;
connectAttr "|RIG_Test|BRG|Root|joint1.s" "|RIG_Test|BRG|Root|joint1|joint2.is";
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint2_PRCST.ctx" "|RIG_Test|BRG|Root|joint1|joint2.tx"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint2_PRCST.cty" "|RIG_Test|BRG|Root|joint1|joint2.ty"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint2_PRCST.ctz" "|RIG_Test|BRG|Root|joint1|joint2.tz"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint2_PRCST.crx" "|RIG_Test|BRG|Root|joint1|joint2.rx"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint2_PRCST.cry" "|RIG_Test|BRG|Root|joint1|joint2.ry"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint2_PRCST.crz" "|RIG_Test|BRG|Root|joint1|joint2.rz"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2.s" "|RIG_Test|BRG|Root|joint1|joint2|joint3.is"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint3_PRCST.ctx" "|RIG_Test|BRG|Root|joint1|joint2|joint3.tx"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint3_PRCST.cty" "|RIG_Test|BRG|Root|joint1|joint2|joint3.ty"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint3_PRCST.ctz" "|RIG_Test|BRG|Root|joint1|joint2|joint3.tz"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint3_PRCST.crx" "|RIG_Test|BRG|Root|joint1|joint2|joint3.rx"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint3_PRCST.cry" "|RIG_Test|BRG|Root|joint1|joint2|joint3.ry"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint3_PRCST.crz" "|RIG_Test|BRG|Root|joint1|joint2|joint3.rz"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3.s" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4.is"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint4_PRCST.ctx" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4.tx"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint4_PRCST.cty" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4.ty"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint4_PRCST.ctz" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4.tz"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint4_PRCST.crx" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4.rx"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint4_PRCST.cry" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4.ry"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint4_PRCST.crz" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4.rz"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4.s" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5.is"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.ctx" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5.tx"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.cty" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5.ty"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.ctz" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5.tz"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.crx" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5.rx"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.cry" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5.ry"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.crz" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5.rz"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5.s" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6.is"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.ctx" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6.tx"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.cty" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6.ty"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.ctz" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6.tz"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.crx" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6.rx"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.cry" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6.ry"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.crz" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6.rz"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6.ro" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6.pim" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6.rp" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6.rpt" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6.jo" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.cjo"
		;
connectAttr "AUX_joint6_BDR.t" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.tg[0].tt"
		;
connectAttr "AUX_joint6_BDR.rp" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.tg[0].trp"
		;
connectAttr "AUX_joint6_BDR.rpt" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.tg[0].trt"
		;
connectAttr "AUX_joint6_BDR.r" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.tg[0].tr"
		;
connectAttr "AUX_joint6_BDR.ro" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.tg[0].tro"
		;
connectAttr "AUX_joint6_BDR.s" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.tg[0].ts"
		;
connectAttr "AUX_joint6_BDR.pm" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.w0" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint6|joint6_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5.ro" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5.pim" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5.rp" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5.rpt" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5.jo" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.cjo"
		;
connectAttr "AUX_joint5_BDR.t" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.tg[0].tt"
		;
connectAttr "AUX_joint5_BDR.rp" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.tg[0].trp"
		;
connectAttr "AUX_joint5_BDR.rpt" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.tg[0].trt"
		;
connectAttr "AUX_joint5_BDR.r" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.tg[0].tr"
		;
connectAttr "AUX_joint5_BDR.ro" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.tg[0].tro"
		;
connectAttr "AUX_joint5_BDR.s" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.tg[0].ts"
		;
connectAttr "AUX_joint5_BDR.pm" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.w0" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint5|joint5_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4.ro" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint4_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4.pim" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint4_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4.rp" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint4_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4.rpt" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint4_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4.jo" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint4_PRCST.cjo"
		;
connectAttr "AUX_joint4_BDR.t" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tt"
		;
connectAttr "AUX_joint4_BDR.rp" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].trp"
		;
connectAttr "AUX_joint4_BDR.rpt" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].trt"
		;
connectAttr "AUX_joint4_BDR.r" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tr"
		;
connectAttr "AUX_joint4_BDR.ro" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tro"
		;
connectAttr "AUX_joint4_BDR.s" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].ts"
		;
connectAttr "AUX_joint4_BDR.pm" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint4_PRCST.w0" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3.ro" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint3_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3.pim" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint3_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3.rp" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint3_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3.rpt" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint3_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3.jo" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint3_PRCST.cjo"
		;
connectAttr "AUX_joint3_BDR.t" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint3_PRCST.tg[0].tt"
		;
connectAttr "AUX_joint3_BDR.rp" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint3_PRCST.tg[0].trp"
		;
connectAttr "AUX_joint3_BDR.rpt" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint3_PRCST.tg[0].trt"
		;
connectAttr "AUX_joint3_BDR.r" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint3_PRCST.tg[0].tr"
		;
connectAttr "AUX_joint3_BDR.ro" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint3_PRCST.tg[0].tro"
		;
connectAttr "AUX_joint3_BDR.s" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint3_PRCST.tg[0].ts"
		;
connectAttr "AUX_joint3_BDR.pm" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint3_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint3_PRCST.w0" "|RIG_Test|BRG|Root|joint1|joint2|joint3|joint3_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2.ro" "|RIG_Test|BRG|Root|joint1|joint2|joint2_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2.pim" "|RIG_Test|BRG|Root|joint1|joint2|joint2_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2.rp" "|RIG_Test|BRG|Root|joint1|joint2|joint2_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2.rpt" "|RIG_Test|BRG|Root|joint1|joint2|joint2_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2.jo" "|RIG_Test|BRG|Root|joint1|joint2|joint2_PRCST.cjo"
		;
connectAttr "AUX_joint2_BDR.t" "|RIG_Test|BRG|Root|joint1|joint2|joint2_PRCST.tg[0].tt"
		;
connectAttr "AUX_joint2_BDR.rp" "|RIG_Test|BRG|Root|joint1|joint2|joint2_PRCST.tg[0].trp"
		;
connectAttr "AUX_joint2_BDR.rpt" "|RIG_Test|BRG|Root|joint1|joint2|joint2_PRCST.tg[0].trt"
		;
connectAttr "AUX_joint2_BDR.r" "|RIG_Test|BRG|Root|joint1|joint2|joint2_PRCST.tg[0].tr"
		;
connectAttr "AUX_joint2_BDR.ro" "|RIG_Test|BRG|Root|joint1|joint2|joint2_PRCST.tg[0].tro"
		;
connectAttr "AUX_joint2_BDR.s" "|RIG_Test|BRG|Root|joint1|joint2|joint2_PRCST.tg[0].ts"
		;
connectAttr "AUX_joint2_BDR.pm" "|RIG_Test|BRG|Root|joint1|joint2|joint2_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint2|joint2_PRCST.w0" "|RIG_Test|BRG|Root|joint1|joint2|joint2_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|Root|joint1.ro" "|RIG_Test|BRG|Root|joint1|joint1_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|Root|joint1.pim" "|RIG_Test|BRG|Root|joint1|joint1_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|Root|joint1.rp" "|RIG_Test|BRG|Root|joint1|joint1_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|Root|joint1.rpt" "|RIG_Test|BRG|Root|joint1|joint1_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|Root|joint1.jo" "|RIG_Test|BRG|Root|joint1|joint1_PRCST.cjo"
		;
connectAttr "AUX_joint1_BDR.t" "|RIG_Test|BRG|Root|joint1|joint1_PRCST.tg[0].tt"
		;
connectAttr "AUX_joint1_BDR.rp" "|RIG_Test|BRG|Root|joint1|joint1_PRCST.tg[0].trp"
		;
connectAttr "AUX_joint1_BDR.rpt" "|RIG_Test|BRG|Root|joint1|joint1_PRCST.tg[0].trt"
		;
connectAttr "AUX_joint1_BDR.r" "|RIG_Test|BRG|Root|joint1|joint1_PRCST.tg[0].tr"
		;
connectAttr "AUX_joint1_BDR.ro" "|RIG_Test|BRG|Root|joint1|joint1_PRCST.tg[0].tro"
		;
connectAttr "AUX_joint1_BDR.s" "|RIG_Test|BRG|Root|joint1|joint1_PRCST.tg[0].ts"
		;
connectAttr "AUX_joint1_BDR.pm" "|RIG_Test|BRG|Root|joint1|joint1_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|Root|joint1|joint1_PRCST.w0" "|RIG_Test|BRG|Root|joint1|joint1_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|Root.ro" "|RIG_Test|BRG|Root|Root_PRCST.cro";
connectAttr "|RIG_Test|BRG|Root.pim" "|RIG_Test|BRG|Root|Root_PRCST.cpim";
connectAttr "|RIG_Test|BRG|Root.rp" "|RIG_Test|BRG|Root|Root_PRCST.crp";
connectAttr "|RIG_Test|BRG|Root.rpt" "|RIG_Test|BRG|Root|Root_PRCST.crt";
connectAttr "|RIG_Test|BRG|Root.jo" "|RIG_Test|BRG|Root|Root_PRCST.cjo";
connectAttr "AUX_Root_BDR.t" "|RIG_Test|BRG|Root|Root_PRCST.tg[0].tt";
connectAttr "AUX_Root_BDR.rp" "|RIG_Test|BRG|Root|Root_PRCST.tg[0].trp";
connectAttr "AUX_Root_BDR.rpt" "|RIG_Test|BRG|Root|Root_PRCST.tg[0].trt";
connectAttr "AUX_Root_BDR.r" "|RIG_Test|BRG|Root|Root_PRCST.tg[0].tr";
connectAttr "AUX_Root_BDR.ro" "|RIG_Test|BRG|Root|Root_PRCST.tg[0].tro";
connectAttr "AUX_Root_BDR.s" "|RIG_Test|BRG|Root|Root_PRCST.tg[0].ts";
connectAttr "AUX_Root_BDR.pm" "|RIG_Test|BRG|Root|Root_PRCST.tg[0].tpm";
connectAttr "|RIG_Test|BRG|Root|Root_PRCST.w0" "|RIG_Test|BRG|Root|Root_PRCST.tg[0].tw"
		;
connectAttr "CTL_joint1_IDT_PRCST.ctx" "CTL_joint1_IDT.tx";
connectAttr "CTL_joint1_IDT_PRCST.cty" "CTL_joint1_IDT.ty";
connectAttr "CTL_joint1_IDT_PRCST.ctz" "CTL_joint1_IDT.tz";
connectAttr "CTL_joint1_IDT_PRCST.crx" "CTL_joint1_IDT.rx";
connectAttr "CTL_joint1_IDT_PRCST.cry" "CTL_joint1_IDT.ry";
connectAttr "CTL_joint1_IDT_PRCST.crz" "CTL_joint1_IDT.rz";
connectAttr "CTL_joint1_IDT.ro" "CTL_joint1_IDT_PRCST.cro";
connectAttr "CTL_joint1_IDT.pim" "CTL_joint1_IDT_PRCST.cpim";
connectAttr "CTL_joint1_IDT.rp" "CTL_joint1_IDT_PRCST.crp";
connectAttr "CTL_joint1_IDT.rpt" "CTL_joint1_IDT_PRCST.crt";
connectAttr "CTL_RootLocal.t" "CTL_joint1_IDT_PRCST.tg[0].tt";
connectAttr "CTL_RootLocal.rp" "CTL_joint1_IDT_PRCST.tg[0].trp";
connectAttr "CTL_RootLocal.rpt" "CTL_joint1_IDT_PRCST.tg[0].trt";
connectAttr "CTL_RootLocal.r" "CTL_joint1_IDT_PRCST.tg[0].tr";
connectAttr "CTL_RootLocal.ro" "CTL_joint1_IDT_PRCST.tg[0].tro";
connectAttr "CTL_RootLocal.s" "CTL_joint1_IDT_PRCST.tg[0].ts";
connectAttr "CTL_RootLocal.pm" "CTL_joint1_IDT_PRCST.tg[0].tpm";
connectAttr "CTL_joint1_IDT_PRCST.w0" "CTL_joint1_IDT_PRCST.tg[0].tw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of rig_test.ma
