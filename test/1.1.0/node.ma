//Maya ASCII 2022 scene
//Name: node.ma
//Last modified: Mon, Feb 03, 2025 04:57:57 PM
//Codeset: 932
requires maya "2022";
requires -nodeType "floatMath" "lookdevKit" "1.0";
requires "stereoCamera" "10.0";
requires "mtoa" "5.0.0.4";
requires -nodeType "boneDynamicsNode" "boneDynamicsNode" "0.4.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202405021833-753375ecb3";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "926353D9-43A7-AEFC-8991-EEBA954F0470";
createNode transform -s -n "persp";
	rename -uid "347D49AD-41AE-7D45-9720-76BE579D0AB5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.0579007388434434 21.131425939847638 19.554756647906082 ;
	setAttr ".r" -type "double3" -37.53835272961939 17.800000000002107 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "03C2F228-4574-247B-FA4E-DA94C7D3DF49";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 29.834433855488989;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "3812C0D4-41DE-310E-6D04-B5A4B2DAF03C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "0E594ADA-4F3C-8D84-38AD-A99320B76937";
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
	rename -uid "7CA4E605-424D-BC88-17AF-35A261DCCB75";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "9D7AABDF-48AB-04E5-4B3C-8F8A6067A165";
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
	rename -uid "9B59828A-4EB4-9569-0E37-76952480369C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "DC074D86-4C05-D2D2-DC68-23BC84F245AC";
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
	rename -uid "DEE95760-4E7B-5DCE-8A75-D091DB2B8902";
createNode joint -n "root" -p "MDL";
	rename -uid "27DA5CCE-4C9D-2C62-A0FB-279555F9BBDF";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.2;
createNode joint -n "joint1" -p "|MDL|root";
	rename -uid "4CD27429-4C6F-C7C0-9951-11A4ADBD7AA5";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.2;
createNode joint -n "joint2" -p "|MDL|root|joint1";
	rename -uid "2C6E990B-4BDD-4EBD-8AB0-85A2B938868E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.2;
createNode joint -n "joint3" -p "|MDL|root|joint1|joint2";
	rename -uid "DA3F3A8F-4CAE-EA29-4882-4CB2C0F31A11";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.2;
createNode joint -n "joint4" -p "|MDL|root|joint1|joint2|joint3";
	rename -uid "9B147006-407B-DF93-853F-11BA5458161D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.2;
createNode parentConstraint -n "joint4_PRCST" -p "|MDL|root|joint1|joint2|joint3|joint4";
	rename -uid "5292853F-4C6B-20AB-B5C1-A9B0D532AD39";
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
createNode parentConstraint -n "joint3_PRCST" -p "|MDL|root|joint1|joint2|joint3";
	rename -uid "50A5A4EE-4861-B0E4-A339-AE8D28FD31F6";
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
	setAttr ".rst" -type "double3" 2.5741999999999994 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint2_PRCST" -p "|MDL|root|joint1|joint2";
	rename -uid "714A7D8B-42C6-6F81-1D1B-34ABE58E9918";
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
	setAttr ".rst" -type "double3" 2 0 1.8873791418627661e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint1_PRCST" -p "|MDL|root|joint1";
	rename -uid "A329F8BE-478A-12DC-88BC-47B230EA968D";
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
	setAttr ".rst" -type "double3" 0 2 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "root_PRCST" -p "|MDL|root";
	rename -uid "9F9694C2-461E-6C39-DD06-EEB5D39E1CF6";
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
	rename -uid "B7C362FB-4653-647D-7A83-23B729EC35EA";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".v" no;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";";
createNode transform -n "root" -p "GID";
	rename -uid "23E26F3D-4746-A98E-3B8D-42809DD74FEC";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root\";";
createNode transform -n "joint1" -p "|GID|root";
	rename -uid "D20AA373-4268-31A1-D9E4-90A44FCA6EB9";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 0 2 0 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root|joint1\";";
createNode transform -n "joint2" -p "|GID|root|joint1";
	rename -uid "57B484C4-4619-8097-AA14-699CD694DCC4";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 1.8873791418627661e-15 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root|joint1|joint2\";";
createNode transform -n "joint3" -p "|GID|root|joint1|joint2";
	rename -uid "B4499975-4024-B894-C136-E6B7A223D336";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2.5741999999999994 0 0 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root|joint1|joint2|joint3\";";
createNode transform -n "joint4" -p "|GID|root|joint1|joint2|joint3";
	rename -uid "4CFDBFE5-48F2-7F39-EAEC-00BE89A99853";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root|joint1|joint2|joint3|joint4\";";
createNode transform -n "RIG";
	rename -uid "C0D5038C-4556-3A8A-A73C-D698EE8D4CCA";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr -l on ".mrsData" -type "string" "type=\"rig\";datetime=\"202411190118\";toolVersion=\"0.22.9\";";
createNode transform -n "BRG" -p "RIG";
	rename -uid "3F80D223-49C8-A440-4DDE-B2B5EAAC78D5";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr -l on ".v" no;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";";
createNode joint -n "root" -p "BRG";
	rename -uid "FC645079-47FC-303A-207D-53BE36990045";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root\";";
createNode joint -n "joint1" -p "|RIG|BRG|root";
	rename -uid "15CD1892-4CE5-2ED7-3DC2-DD86A7301C9B";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root|joint1\";";
createNode joint -n "joint2" -p "|RIG|BRG|root|joint1";
	rename -uid "E44748A9-486E-2C0A-CFD8-CF87794434A1";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root|joint1|joint2\";";
createNode joint -n "joint3" -p "|RIG|BRG|root|joint1|joint2";
	rename -uid "D7680A5F-4EC9-FD81-DD24-329E67E60CD3";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root|joint1|joint2|joint3\";";
createNode joint -n "joint4" -p "|RIG|BRG|root|joint1|joint2|joint3";
	rename -uid "CAA306C0-4ECE-E50B-827C-039D62A505CC";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root|joint1|joint2|joint3|joint4\";";
createNode parentConstraint -n "joint4_PRCST" -p "|RIG|BRG|root|joint1|joint2|joint3|joint4";
	rename -uid "CBD31688-456D-E7C9-2FD9-43A67F4AAEBF";
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
createNode parentConstraint -n "joint3_PRCST" -p "|RIG|BRG|root|joint1|joint2|joint3";
	rename -uid "EB64EE77-4743-ED75-98F8-0DAC4856C98E";
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
	setAttr ".rst" -type "double3" 2.5741999999999994 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint2_PRCST" -p "|RIG|BRG|root|joint1|joint2";
	rename -uid "F56F7A5D-4898-A6E6-838D-45B8A7CCDEE3";
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
	setAttr ".rst" -type "double3" 2 0 1.8873791418627661e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint1_PRCST" -p "|RIG|BRG|root|joint1";
	rename -uid "80BF0442-4109-34E1-DE6F-67A89B70A959";
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
	setAttr ".rst" -type "double3" 0 2 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "root_PRCST" -p "|RIG|BRG|root";
	rename -uid "9E4A1676-4336-9B3A-93B9-A9BE0F1B2F68";
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
createNode transform -n "MOD_Root" -p "RIG";
	rename -uid "F06BE2EF-4DE6-1E0A-4677-928B26B870A8";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr -l on ".mrsData" -type "string" "type=\"module\";moduleType=\"Root\";";
createNode transform -n "CTL_Root_GRP" -p "MOD_Root";
	rename -uid "35713A10-409C-7113-1BC4-0D84A70BD603";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
createNode transform -n "CTL_RootGlobal_IDT" -p "CTL_Root_GRP";
	rename -uid "F93F28FF-4538-09B7-B07C-D9B609CEDAED";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr -l on ".mrsData" -type "string" "first=false;";
createNode transform -n "CTL_RootGlobal" -p "CTL_RootGlobal_IDT";
	rename -uid "BDCC59DE-415C-D039-BC1B-F3BFDF782937";
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
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
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
	rename -uid "256351EC-4BB2-86A2-97DA-7D94FAF3C451";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
createNode transform -n "CTL_RootLocal_IDT" -p "CTL_RootGlobal";
	rename -uid "3FB54807-465A-5F62-9223-1E8AA7F810F8";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr -l on ".mrsData" -type "string" "first=false;";
createNode transform -n "CTL_RootLocal" -p "CTL_RootLocal_IDT";
	rename -uid "87FC8E2B-43E9-17B4-6C07-CD8FEA4F7E57";
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
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
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
	rename -uid "BFC2F67C-4FE6-6859-DEB1-15A0EC76BCB6";
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
	rename -uid "6DF95431-4BBD-7CAD-0706-0F83FB856BE4";
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
createNode transform -n "MOD_Joint" -p "RIG";
	rename -uid "1E7F4A43-4423-36F1-D051-9AB865D4E263";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr -l on ".mrsData" -type "string" "type=\"module\";moduleType=\"FK\";";
createNode transform -n "CTL_Joint_GRP" -p "MOD_Joint";
	rename -uid "2433B23F-4B48-FACE-19EC-7E87AD26025F";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
createNode transform -n "CTL_joint1_IDT" -p "CTL_Joint_GRP";
	rename -uid "3971D14A-4A6D-6725-9B8F-2FB43EB9D3FC";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
createNode transform -n "CTL_joint1" -p "CTL_joint1_IDT";
	rename -uid "EF7C26DA-4C82-BD4A-9638-0FB6BC791FA6";
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
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
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
	rename -uid "243DB914-4CFA-5775-AF0D-AB98ECB9D5A5";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
createNode transform -n "CTL_joint2_IDT" -p "CTL_joint1";
	rename -uid "DA36C72C-4A84-8B04-66F3-9EAC68FBE16B";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 2 0 1.8873791418627661e-15 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
createNode transform -n "CTL_joint2" -p "CTL_joint2_IDT";
	rename -uid "980F3E20-450C-C644-AD9F-108A32A41FA8";
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
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
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
	rename -uid "6A586286-40F5-988F-7077-45B99E7F6EC7";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
createNode transform -n "CTL_joint3_IDT" -p "CTL_joint2";
	rename -uid "138C787D-4377-233A-4184-3BA05F190F37";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 2.5741999999999994 0 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
createNode transform -n "CTL_joint3" -p "CTL_joint3_IDT";
	rename -uid "0E4266AB-4B47-08FE-9BD2-18B0FC80D461";
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
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
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
	rename -uid "03E0D217-4D8F-D9D6-FB11-C197111BFEC9";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
createNode transform -n "CTL_joint4_IDT" -p "CTL_joint3";
	rename -uid "BDAC41C6-4DBA-5489-3AB7-D8A6AF8E8BA6";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
createNode transform -n "CTL_joint4" -p "CTL_joint4_IDT";
	rename -uid "824F27EA-43E7-F356-CD92-1184A04FE248";
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
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
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
createNode transform -n "AUX_joint4_BDR" -p "CTL_joint4";
	rename -uid "4072B0C7-4C0B-0E21-532C-999AD6206A1F";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
createNode nurbsCurve -n "CTL_joint4Shape1" -p "CTL_joint4";
	rename -uid "95F533F8-4646-8968-CC48-C7B95BE2A1FA";
	addAttr -ci true -sn "sc" -ln "sourceCurve" -dt "nurbsCurve";
	setAttr -k off ".v";
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
createNode nurbsCurve -n "CTL_joint3Shape1" -p "CTL_joint3";
	rename -uid "8CC23A16-4598-6A0D-62DB-41BF67D4B47C";
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
createNode orientConstraint -n "CTL_joint3_Dynamics_ORCST" -p "CTL_joint3";
	rename -uid "980D5E8A-4F65-670D-1331-CDAA8AB8D30A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTL_joint3_DynamicsW0" -dv 1 -min 
		0 -at "double";
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
createNode nurbsCurve -n "CTL_joint2Shape1" -p "CTL_joint2";
	rename -uid "0A67D4D7-42A6-5588-2832-4C956AAE4AD8";
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
createNode orientConstraint -n "CTL_joint2_Dynamics_ORCST" -p "CTL_joint2";
	rename -uid "A91D3E13-4BA1-236E-3A8E-6EB0E0F43C32";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTL_joint2_DynamicsW0" -dv 1 -min 
		0 -at "double";
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
createNode nurbsCurve -n "CTL_joint1Shape1" -p "CTL_joint1";
	rename -uid "4A5AB218-4986-1608-AD07-39B8F7B1301F";
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
createNode orientConstraint -n "CTL_joint1_Dynamics_ORCST" -p "CTL_joint1";
	rename -uid "D523263D-4150-AE10-2CA0-058493E3DD4D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTL_joint1_DynamicsW0" -dv 1 -min 
		0 -at "double";
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
createNode parentConstraint -n "CTL_joint1_IDT_PRCST" -p "CTL_joint1_IDT";
	rename -uid "B6FCBB60-4D80-AD57-5B3B-FA9F799C50AD";
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
	setAttr ".tg[0].tot" -type "double3" 0 2 0 ;
	setAttr ".rst" -type "double3" 0 2 0 ;
	setAttr -k on ".w0";
createNode transform -n "pCube1";
	rename -uid "425B1FEB-429F-4584-5A21-B68456CFA4DC";
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "9FF9AE2D-4FF5-0EC1-04D7-4486047A7109";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "nurbsCurve";
	rename -uid "2749B7A2-45E8-1C62-8168-74BA994648D8";
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
	setAttr ".t" -type "double3" 4 7.1054273576010019e-15 -4 ;
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
createNode nurbsCurve -n "nurbsCurveShape1" -p "nurbsCurve";
	rename -uid "CBDAB62F-4F83-2BA7-D562-C4912B26EB29";
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
createNode transform -n "nurbsCurve1";
	rename -uid "CEA29B95-4090-E11D-B8B0-F19C035F44A4";
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
	setAttr ".t" -type "double3" 7 0 -4 ;
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
	setAttr -l on ".cn" -type "string" "Pyramid(Square)";
createNode nurbsCurve -n "nurbsCurve1Shape1" -p "nurbsCurve1";
	rename -uid "1FA88647-4D5F-D82B-09AE-ABA6A7B4BDD2";
	addAttr -ci true -sn "sc" -ln "sourceCurve" -dt "nurbsCurve";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		-1 0 1
		1 0 1
		0 4 0
		-1 0 1
		-1 0 -1
		0 4 0
		1 0 -1
		-1 0 -1
		1 0 -1
		1 0 1
		;
	setAttr ".sc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		-1 0 1
		1 0 1
		0 1 0
		-1 0 1
		-1 0 -1
		0 1 0
		1 0 -1
		-1 0 -1
		1 0 -1
		1 0 1
		;
createNode transform -n "pTorus1";
	rename -uid "3FA00435-4FE7-E109-7F43-AB8319F52CDE";
createNode mesh -n "pTorusShape1" -p "pTorus1";
	rename -uid "180462E7-49B2-2D72-A7C1-3B9910EC59EE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "BDN_GRP";
	rename -uid "14FB377A-4BEC-05A0-88A3-C38F7AE0A1F8";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr -l on ".bdnData" -type "string" "type=\"group\";groupType=\"bdn\";";
createNode transform -n "Dynamics_GRP" -p "BDN_GRP";
	rename -uid "3D7F32D2-4CA6-4442-38B8-898CD9692E2D";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr -l on ".bdnData" -type "string" "type=\"group\";groupType=\"dynamics\";";
createNode transform -n "CTL_joint1_Dynamics_SPC" -p "Dynamics_GRP";
	rename -uid "3E29775D-4783-E52A-D216-5CBC1D07C357";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindSource" -ln "bdnBindSource" -at "message";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"space\";spaceType=\"dynamics\";";
createNode joint -n "CTL_joint1_Dynamics" -p "CTL_joint1_Dynamics_SPC";
	rename -uid "4236C6FC-4597-2409-6FDB-16AC38BE3852";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindTarget" -ln "bdnBindTarget" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".radi" 0.5;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"dynamics\";jointType=\"normal\";";
createNode joint -n "CTL_joint2_Dynamics" -p "CTL_joint1_Dynamics";
	rename -uid "71E8BE8F-4C5B-E1F1-8A77-22822A1AD312";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindTarget" -ln "bdnBindTarget" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 2 0 1.8873791418627661e-15 ;
	setAttr ".radi" 0.5;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"dynamics\";jointType=\"normal\";";
createNode joint -n "CTL_joint3_Dynamics" -p "CTL_joint2_Dynamics";
	rename -uid "893DF2D9-449A-34A6-03A9-82855553858F";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindTarget" -ln "bdnBindTarget" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 2.5741999999999994 0 0 ;
	setAttr ".radi" 0.5;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"dynamics\";jointType=\"normal\";";
createNode joint -n "CTL_joint3_Dynamics_End" -p "CTL_joint3_Dynamics";
	rename -uid "EBA9C916-4D78-F138-FC79-6985956D9BE6";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindTarget" -ln "bdnBindTarget" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".radi" 0.5;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"dynamics\";jointType=\"end\";";
createNode transform -n "CTL_joint3_Dynamics_End_Radius" -p "CTL_joint3_Dynamics_End";
	rename -uid "D78FAA1E-496B-EB7A-5FB3-309812F8BB2B";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on ".bdnData" -type "string" "type=\"radius\";";
createNode implicitSphere -n "CTL_joint3_Dynamics_End_RadiusShape" -p "CTL_joint3_Dynamics_End_Radius";
	rename -uid "F285ABA3-4A23-45F3-F3A1-CC80E5CBD6DE";
	setAttr -k off ".v";
createNode transform -n "CTL_joint3_Dynamics_Radius" -p "CTL_joint3_Dynamics";
	rename -uid "6585B964-449D-6F73-746A-2787EBC64717";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on ".bdnData" -type "string" "type=\"radius\";";
createNode implicitSphere -n "CTL_joint3_Dynamics_RadiusShape" -p "CTL_joint3_Dynamics_Radius";
	rename -uid "728E6320-4855-6CF2-3B5E-58A04A4A3FC1";
	setAttr -k off ".v";
createNode transform -n "CTL_joint2_Dynamics_Radius" -p "CTL_joint2_Dynamics";
	rename -uid "D7F67479-44FF-E24C-F415-289CA6C6A5C5";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on ".bdnData" -type "string" "type=\"radius\";";
createNode implicitSphere -n "CTL_joint2_Dynamics_RadiusShape" -p "CTL_joint2_Dynamics_Radius";
	rename -uid "D51897B8-4B42-08B2-24EE-0D96E81B86B6";
	setAttr -k off ".v";
createNode parentConstraint -n "CTL_joint1_Dynamics_SPC_PRCST" -p "CTL_joint1_Dynamics_SPC";
	rename -uid "1537AD7A-4818-FC13-9387-D5A54AF39CBF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTL_joint1_IDTW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0 2 0 ;
	setAttr -k on ".w0";
createNode transform -n "Target_GRP" -p "BDN_GRP";
	rename -uid "D86B41CC-476C-CE50-A62D-67B9245DCD25";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr -l on ".bdnData" -type "string" "type=\"group\";groupType=\"target\";";
createNode transform -n "CTL_joint1_Target_SPC" -p "Target_GRP";
	rename -uid "C953C1BE-43D0-D7CA-B7E4-44AA97D04AC7";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindSource" -ln "bdnBindSource" -at "message";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 0 1 ;
	setAttr -l on ".bdnData" -type "string" "type=\"space\";spaceType=\"target\";";
createNode joint -n "CTL_joint1_Target" -p "CTL_joint1_Target_SPC";
	rename -uid "B697AAAB-4E95-715B-3FFF-17897F6FB926";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnSource" -ln "bdnSource" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"target\";jointType=\"normal\";";
createNode joint -n "CTL_joint2_Target" -p "CTL_joint1_Target";
	rename -uid "06396BB1-4313-F5C2-2A5E-11A875D6B444";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnSource" -ln "bdnSource" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 2 0 1.8873791418627661e-15 ;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"target\";jointType=\"normal\";";
createNode joint -n "CTL_joint3_Target" -p "CTL_joint2_Target";
	rename -uid "0B27058A-40FE-DF79-D326-80A6E7327D06";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnSource" -ln "bdnSource" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 2.5741999999999994 0 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"target\";jointType=\"normal\";";
createNode parentConstraint -n "CTL_joint1_Target_SPC_PRCST" -p "CTL_joint1_Target_SPC";
	rename -uid "4ED8930A-45D9-4D51-5F5A-608C62B9D906";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTL_joint1_IDTW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0 2 0 ;
	setAttr -k on ".w0";
createNode transform -n "Collider_GRP" -p "BDN_GRP";
	rename -uid "E0D222F8-4139-061C-A6C7-76A857861128";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr -l on ".bdnData" -type "string" "type=\"group\";groupType=\"collider\";";
createNode transform -n "CapsuleCollider_SPC" -p "Collider_GRP";
	rename -uid "06101290-4B60-A50C-0242-E2BEEE78BF63";
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
	setAttr ".t" -type "double3" 0 0 4 ;
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
	rename -uid "65375427-48FA-78BE-8D0F-2498995F6514";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -m -sn "colliderAffectedBy" -ln "colliderAffectedBy" -at "message";
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
	setAttr -l on ".bdnData" -type "string" "type=\"collider\";colliderType=\"capsule\";";
	setAttr -s 26 ".colliderAffectedBy";
	setAttr -k on ".colliderRadiusA" 2;
	setAttr -k on ".colliderRadiusB" 2;
	setAttr -k on ".colliderLength";
	setAttr -k on ".colliderOffset";
	setAttr -k on ".colliderPivot";
	setAttr -k on ".colliderMatrixA";
	setAttr -k on ".colliderMatrixB";
createNode transform -n "CapsuleCollider_SphereA" -p "CapsuleCollider";
	rename -uid "65145DF8-4981-181A-0099-2DB1CF1B34D9";
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
	rename -uid "F221221A-4B59-0A30-9C2F-F59ABDD97192";
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
	rename -uid "D074E071-47D6-FA11-ED14-0F937DD206D5";
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
	rename -uid "A55FFBE6-413E-40B5-01B4-4D9AB58FF776";
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
	rename -uid "DA19641A-4408-B9A4-238A-01901469D25E";
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
	rename -uid "B2D0BFC8-4446-D307-4A05-868FF9500BEE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
createNode transform -n "CapsuleCollider_CircleB" -p "CapsuleCollider";
	rename -uid "978B4F19-4F5A-BE73-EDEE-AEBA4F859110";
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
	rename -uid "C3B97CF6-4234-CD8C-BFD0-54A5516AF3C4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
createNode transform -n "CapsuleCollider_Loft" -p "CapsuleCollider";
	rename -uid "0D24FE06-427E-B1F6-F7C8-F386F1F9CFA4";
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
	rename -uid "2E6DC254-4F30-48E0-7D2E-2981ACC20CF0";
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
	rename -uid "B2DF2283-45BF-00F4-F778-B7B8AD9CCC02";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -ci true -sn "colliderSource" -ln "colliderSource" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderWidth" -ln "colliderWidth" -dv 1 -min 
		0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderHeight" -ln "colliderHeight" -dv 1 -min 
		0.001 -at "double";
	setAttr ".t" -type "double3" -4 0 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"space\";spaceType=\"collider\";";
	setAttr -l on ".colliderSource";
	setAttr -k on ".colliderWidth";
	setAttr -k on ".colliderHeight";
createNode transform -n "InfinitePlaneCollider" -p "InfinitePlaneCollider_SPC";
	rename -uid "6BD62FAA-4455-31EA-22D8-DBB945D40C2B";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -m -sn "colliderAffectedBy" -ln "colliderAffectedBy" -at "message";
	addAttr -ci true -k true -sn "colliderWidth" -ln "colliderWidth" -dv 1 -min 0.001 
		-at "double";
	addAttr -ci true -k true -sn "colliderHeight" -ln "colliderHeight" -dv 1 -min 0.001 
		-at "double";
	setAttr ".r" -type "double3" 0 0 -45 ;
	setAttr -l on ".bdnData" -type "string" "type=\"collider\";colliderType=\"infinitePlane\";";
	setAttr -s 3 ".colliderAffectedBy";
	setAttr -k on ".colliderWidth" 10;
	setAttr -k on ".colliderHeight" 10;
createNode nurbsSurface -n "InfinitePlaneColliderShape" -p "InfinitePlaneCollider";
	rename -uid "9B6CBE07-4797-C34A-ABC9-C2BD7134E082";
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
	rename -uid "E2563B60-4698-AD84-BB5A-1D92FB62AB99";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -ci true -sn "colliderSource" -ln "colliderSource" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadius" -ln "colliderRadius" -dv 0.5 
		-min 0.001 -at "double";
	setAttr ".t" -type "double3" 0 0 -4 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"space\";spaceType=\"collider\";";
	setAttr -l on ".colliderSource";
	setAttr -k on ".colliderRadius";
createNode transform -n "SphereCollider" -p "SphereCollider_SPC";
	rename -uid "ECF820A1-4F9B-1A56-B861-94985F664057";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -m -sn "colliderAffectedBy" -ln "colliderAffectedBy" -at "message";
	addAttr -ci true -k true -sn "colliderRadius" -ln "colliderRadius" -dv 0.5 -min 
		0.001 -at "double";
	setAttr -l on ".bdnData" -type "string" "type=\"collider\";colliderType=\"sphere\";";
	setAttr -s 2 ".colliderAffectedBy";
	setAttr -k on ".colliderRadius" 2;
createNode nurbsSurface -n "SphereColliderShape" -p "SphereCollider";
	rename -uid "72494209-4ED0-F0E1-48FE-B397DA8D23AA";
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
	rename -uid "C7F8E03F-4B21-C362-336F-E680643EFAA8";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E174DA91-4C33-08FE-1E0B-5684AAEA0A47";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C8FA9F48-43D7-0544-4F71-5FBF72646D73";
createNode displayLayerManager -n "layerManager";
	rename -uid "4CC88464-49F5-884F-3FA7-AE8D9B4E0C6D";
createNode displayLayer -n "defaultLayer";
	rename -uid "F8B6C60E-4A73-3712-7C8E-7490F59A09DD";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "659F84B4-42D5-D113-3210-75ADE807AA0E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "71B6D7E0-4309-884E-8CED-24AB1EDAD685";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "D8DC10D4-4227-387B-C1B7-34AD19F84EF0";
	setAttr ".w" 4;
	setAttr ".h" 4;
	setAttr ".d" 4;
	setAttr ".cuv" 4;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "B3DBA757-4C91-3B87-50D4-7B9BF9FC8541";
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
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 813\n            -height 1092\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 813\\n    -height 1092\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 813\\n    -height 1092\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C444A304-4C43-C7D9-BC58-2AB88E9CFFAA";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 30 ";
	setAttr ".st" 6;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "CEF9BBF6-4AF7-66B3-FD7C-028C5C5052F4";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4 0 0 1;
createNode polyTorus -n "polyTorus1";
	rename -uid "B39654A6-485D-64F8-02A5-72942C993E90";
	setAttr ".r" 3;
	setAttr ".sr" 1;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "C2D47BA9-4A28-2B27-8A71-8C977D2B026E";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6 0 0 1;
createNode boneDynamicsNode -n "CTL_joint1_Dynamics_BDN";
	rename -uid "781DBDE1-438A-C92D-B96B-CC9C5B04B4A6";
	setAttr ".r" 0.8;
	setAttr -s 2 ".mc";
createNode boneDynamicsNode -n "CTL_joint2_Dynamics_BDN";
	rename -uid "CB4CBE07-4D36-B3FF-B73E-BEAC0C1E4D34";
	setAttr ".r" 0.8;
createNode boneDynamicsNode -n "CTL_joint3_Dynamics_BDN";
	rename -uid "6BA64936-461B-2C10-066D-A39B70AB0E9B";
	setAttr ".r" 0.8;
createNode makeNurbSphere -n "makeNurbSphere1";
	rename -uid "040C1C45-4FCA-56EE-41A5-06AC8D4D6ADC";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".s" 4;
createNode makeNurbSphere -n "makeNurbSphere2";
	rename -uid "F5CDCBAC-4A90-8F00-ECA8-4B9262E3AAD1";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".s" 4;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "EA786476-4E29-D561-B0AB-0C921730C37F";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "BDFC1447-4D14-3099-7AF8-34870ED43292";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode loft -n "loft1";
	rename -uid "CB7BA150-4286-053E-36AE-BBA198681CD5";
	setAttr -s 2 ".ic";
createNode floatMath -n "CapsuleCollider_halfLength";
	rename -uid "B5601437-410E-FFD1-CD8F-4CA4B9F4CECE";
	setAttr -l on "._fb" -0.5;
	setAttr "._cnd" 2;
createNode floatMath -n "CapsuleCollider_pivot";
	rename -uid "3A68E153-447C-DC99-712E-BE984D16FBB5";
	setAttr "._cnd" 2;
createNode floatMath -n "CapsuleCollider_offsetA";
	rename -uid "3F100B06-4403-A978-4AE9-92AEBD88FA70";
createNode floatMath -n "CapsuleCollider_offsetB";
	rename -uid "7AADC46C-453A-7D69-2509-8B92629A9BF8";
createNode condition -n "CapsuleCollider_lengthDir";
	rename -uid "CD741168-4F50-5FF4-561D-D8952974BD40";
	setAttr ".op" 4;
	setAttr ".ct" -type "float3" -1 0 0 ;
createNode setRange -n "CapsuleCollider_sweepRangeA";
	rename -uid "100D1D44-4808-42FB-1531-298218B4068E";
	setAttr ".n" -type "float3" -90 90 0 ;
	setAttr ".m" -type "float3" 90 270 0 ;
	setAttr ".on" -type "float3" -1 -1 0 ;
	setAttr ".om" -type "float3" 1 1 0 ;
createNode setRange -n "CapsuleCollider_sweepRangeB";
	rename -uid "CD51E69D-4CE9-55E6-32F1-4480A1E5BD52";
	setAttr ".n" -type "float3" 90 270 0 ;
	setAttr ".m" -type "float3" -90 90 0 ;
	setAttr ".on" -type "float3" -1 -1 0 ;
	setAttr ".om" -type "float3" 1 1 0 ;
createNode unitConversion -n "CapsuleCollider_sweepAStartUc";
	rename -uid "A3F16A54-4B4A-D817-4110-20BF570DC77C";
	setAttr ".cf" 0.01745329;
createNode unitConversion -n "CapsuleCollider_sweepAEndUc";
	rename -uid "97F75D3A-4AA3-D258-5312-85B3BE174AA0";
	setAttr ".cf" 0.01745329;
createNode unitConversion -n "CapsuleCollider_sweepBStartUc";
	rename -uid "447B96E3-4E9F-CDBC-0E21-C4B2EF85098F";
	setAttr ".cf" 0.01745329;
createNode unitConversion -n "CapsuleCollider_sweepBEndUc";
	rename -uid "DD130F0D-468B-B542-E1EC-A0A33C63C260";
	setAttr ".cf" 0.01745329;
createNode makeNurbPlane -n "makeNurbPlane1";
	rename -uid "0263F390-4E4E-B863-010E-6AB9F214D3BE";
	setAttr ".ax" -type "double3" 0 1 0 ;
createNode floatMath -n "InfinitePlaneCollider_ratio";
	rename -uid "20A28DE8-4F36-AA13-0BE8-D3AE9D4233BD";
	setAttr "._cnd" 3;
createNode makeNurbSphere -n "makeNurbSphere3";
	rename -uid "0677C6AE-4C31-CDC7-6F4B-EFA1557FC5FA";
	setAttr ".ax" -type "double3" 0 1 0 ;
createNode vectorProduct -n "nurbsCurve_forceVector";
	rename -uid "B0FD3251-48FD-64A9-BAD3-FF911C3138BD";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 0 1 0 ;
	setAttr ".no" yes;
	setAttr -l on ".bdnData" -type "string" "type=\"force\";";
createNode vectorProduct -n "nurbsCurve1_forceVector";
	rename -uid "868B8EC7-405C-A4CD-BAF1-96910C532620";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 0 1 0 ;
	setAttr ".no" yes;
	setAttr -l on ".bdnData" -type "string" "type=\"force\";";
createNode animCurveTU -n "CTL_joint1_Dynamics_BDN_damping";
	rename -uid "4E75C171-4682-5913-A160-1F90F563D9AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.1;
createNode animCurveTU -n "CTL_joint1_Dynamics_BDN_elasticity";
	rename -uid "53D51BA8-4D0E-F7FF-184B-8EA3A081F0D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 30;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "F95EBDA4-419F-A7C8-5A7C-34800F7052C9";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -2149.8082846145685 -1597.7089150519039 ;
	setAttr ".tgi[0].vh" -type "double2" 2045.7049454253458 961.50111465006637 ;
	setAttr -s 24 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[0].y" -511.42855834960938;
	setAttr ".tgi[0].ni[0].nvs" 18313;
	setAttr ".tgi[0].ni[1].x" -150;
	setAttr ".tgi[0].ni[1].y" 45.714286804199219;
	setAttr ".tgi[0].ni[1].nvs" 18313;
	setAttr ".tgi[0].ni[2].x" 535.71429443359375;
	setAttr ".tgi[0].ni[2].y" -725.71429443359375;
	setAttr ".tgi[0].ni[2].nvs" 18313;
	setAttr ".tgi[0].ni[3].x" -1178.5714111328125;
	setAttr ".tgi[0].ni[3].y" 902.85711669921875;
	setAttr ".tgi[0].ni[3].nvs" 18313;
	setAttr ".tgi[0].ni[4].x" 192.85714721679688;
	setAttr ".tgi[0].ni[4].y" -297.14285278320312;
	setAttr ".tgi[0].ni[4].nvs" 18313;
	setAttr ".tgi[0].ni[5].x" -1521.4285888671875;
	setAttr ".tgi[0].ni[5].y" -940;
	setAttr ".tgi[0].ni[5].nvs" 18313;
	setAttr ".tgi[0].ni[6].x" 192.85714721679688;
	setAttr ".tgi[0].ni[6].y" 45.714286804199219;
	setAttr ".tgi[0].ni[6].nvs" 18313;
	setAttr ".tgi[0].ni[7].x" 535.71429443359375;
	setAttr ".tgi[0].ni[7].y" -511.42855834960938;
	setAttr ".tgi[0].ni[7].nvs" 18313;
	setAttr ".tgi[0].ni[8].x" -1521.4285888671875;
	setAttr ".tgi[0].ni[8].y" -725.71429443359375;
	setAttr ".tgi[0].ni[8].nvs" 18313;
	setAttr ".tgi[0].ni[9].x" -1521.4285888671875;
	setAttr ".tgi[0].ni[9].y" 2.8571429252624512;
	setAttr ".tgi[0].ni[9].nvs" 18313;
	setAttr ".tgi[0].ni[10].x" -1521.4285888671875;
	setAttr ".tgi[0].ni[10].y" 688.5714111328125;
	setAttr ".tgi[0].ni[10].nvs" 18313;
	setAttr ".tgi[0].ni[11].x" -1521.4285888671875;
	setAttr ".tgi[0].ni[11].y" -297.14285278320312;
	setAttr ".tgi[0].ni[11].nvs" 18313;
	setAttr ".tgi[0].ni[12].x" -835.71429443359375;
	setAttr ".tgi[0].ni[12].y" 902.85711669921875;
	setAttr ".tgi[0].ni[12].nvs" 18313;
	setAttr ".tgi[0].ni[13].x" 878.5714111328125;
	setAttr ".tgi[0].ni[13].y" -511.42855834960938;
	setAttr ".tgi[0].ni[13].nvs" 18313;
	setAttr ".tgi[0].ni[14].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[14].y" -854.28570556640625;
	setAttr ".tgi[0].ni[14].nvs" 18313;
	setAttr ".tgi[0].ni[15].x" -1521.4285888671875;
	setAttr ".tgi[0].ni[15].y" 174.28572082519531;
	setAttr ".tgi[0].ni[15].nvs" 18313;
	setAttr ".tgi[0].ni[16].x" -1521.4285888671875;
	setAttr ".tgi[0].ni[16].y" -1154.2857666015625;
	setAttr ".tgi[0].ni[16].nvs" 18313;
	setAttr ".tgi[0].ni[17].x" -1521.4285888671875;
	setAttr ".tgi[0].ni[17].y" -1411.4285888671875;
	setAttr ".tgi[0].ni[17].nvs" 18313;
	setAttr ".tgi[0].ni[18].x" -1521.4285888671875;
	setAttr ".tgi[0].ni[18].y" -511.42855834960938;
	setAttr ".tgi[0].ni[18].nvs" 18313;
	setAttr ".tgi[0].ni[19].x" -1521.4285888671875;
	setAttr ".tgi[0].ni[19].y" 345.71429443359375;
	setAttr ".tgi[0].ni[19].nvs" 18313;
	setAttr ".tgi[0].ni[20].x" -492.85714721679688;
	setAttr ".tgi[0].ni[20].y" -168.57142639160156;
	setAttr ".tgi[0].ni[20].nvs" 18313;
	setAttr ".tgi[0].ni[21].x" -1521.4285888671875;
	setAttr ".tgi[0].ni[21].y" 902.85711669921875;
	setAttr ".tgi[0].ni[21].nvs" 18313;
	setAttr ".tgi[0].ni[22].x" -835.71429443359375;
	setAttr ".tgi[0].ni[22].y" 560;
	setAttr ".tgi[0].ni[22].nvs" 18313;
	setAttr ".tgi[0].ni[23].x" -492.85714721679688;
	setAttr ".tgi[0].ni[23].y" 45.714286804199219;
	setAttr ".tgi[0].ni[23].nvs" 18313;
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
	setAttr -s 7 ".dsm";
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
connectAttr "|MDL|root.s" "|MDL|root|joint1.is";
connectAttr "|MDL|root|joint1|joint1_PRCST.ctx" "|MDL|root|joint1.tx";
connectAttr "|MDL|root|joint1|joint1_PRCST.cty" "|MDL|root|joint1.ty";
connectAttr "|MDL|root|joint1|joint1_PRCST.ctz" "|MDL|root|joint1.tz";
connectAttr "|MDL|root|joint1|joint1_PRCST.crx" "|MDL|root|joint1.rx";
connectAttr "|MDL|root|joint1|joint1_PRCST.cry" "|MDL|root|joint1.ry";
connectAttr "|MDL|root|joint1|joint1_PRCST.crz" "|MDL|root|joint1.rz";
connectAttr "|MDL|root|joint1.s" "|MDL|root|joint1|joint2.is";
connectAttr "|MDL|root|joint1|joint2|joint2_PRCST.ctx" "|MDL|root|joint1|joint2.tx"
		;
connectAttr "|MDL|root|joint1|joint2|joint2_PRCST.cty" "|MDL|root|joint1|joint2.ty"
		;
connectAttr "|MDL|root|joint1|joint2|joint2_PRCST.ctz" "|MDL|root|joint1|joint2.tz"
		;
connectAttr "|MDL|root|joint1|joint2|joint2_PRCST.crx" "|MDL|root|joint1|joint2.rx"
		;
connectAttr "|MDL|root|joint1|joint2|joint2_PRCST.cry" "|MDL|root|joint1|joint2.ry"
		;
connectAttr "|MDL|root|joint1|joint2|joint2_PRCST.crz" "|MDL|root|joint1|joint2.rz"
		;
connectAttr "|MDL|root|joint1|joint2.s" "|MDL|root|joint1|joint2|joint3.is";
connectAttr "|MDL|root|joint1|joint2|joint3|joint3_PRCST.ctx" "|MDL|root|joint1|joint2|joint3.tx"
		;
connectAttr "|MDL|root|joint1|joint2|joint3|joint3_PRCST.cty" "|MDL|root|joint1|joint2|joint3.ty"
		;
connectAttr "|MDL|root|joint1|joint2|joint3|joint3_PRCST.ctz" "|MDL|root|joint1|joint2|joint3.tz"
		;
connectAttr "|MDL|root|joint1|joint2|joint3|joint3_PRCST.crx" "|MDL|root|joint1|joint2|joint3.rx"
		;
connectAttr "|MDL|root|joint1|joint2|joint3|joint3_PRCST.cry" "|MDL|root|joint1|joint2|joint3.ry"
		;
connectAttr "|MDL|root|joint1|joint2|joint3|joint3_PRCST.crz" "|MDL|root|joint1|joint2|joint3.rz"
		;
connectAttr "|MDL|root|joint1|joint2|joint3.s" "|MDL|root|joint1|joint2|joint3|joint4.is"
		;
connectAttr "|MDL|root|joint1|joint2|joint3|joint4|joint4_PRCST.ctx" "|MDL|root|joint1|joint2|joint3|joint4.tx"
		;
connectAttr "|MDL|root|joint1|joint2|joint3|joint4|joint4_PRCST.cty" "|MDL|root|joint1|joint2|joint3|joint4.ty"
		;
connectAttr "|MDL|root|joint1|joint2|joint3|joint4|joint4_PRCST.ctz" "|MDL|root|joint1|joint2|joint3|joint4.tz"
		;
connectAttr "|MDL|root|joint1|joint2|joint3|joint4|joint4_PRCST.crx" "|MDL|root|joint1|joint2|joint3|joint4.rx"
		;
connectAttr "|MDL|root|joint1|joint2|joint3|joint4|joint4_PRCST.cry" "|MDL|root|joint1|joint2|joint3|joint4.ry"
		;
connectAttr "|MDL|root|joint1|joint2|joint3|joint4|joint4_PRCST.crz" "|MDL|root|joint1|joint2|joint3|joint4.rz"
		;
connectAttr "|MDL|root|joint1|joint2|joint3|joint4.ro" "|MDL|root|joint1|joint2|joint3|joint4|joint4_PRCST.cro"
		;
connectAttr "|MDL|root|joint1|joint2|joint3|joint4.pim" "|MDL|root|joint1|joint2|joint3|joint4|joint4_PRCST.cpim"
		;
connectAttr "|MDL|root|joint1|joint2|joint3|joint4.rp" "|MDL|root|joint1|joint2|joint3|joint4|joint4_PRCST.crp"
		;
connectAttr "|MDL|root|joint1|joint2|joint3|joint4.rpt" "|MDL|root|joint1|joint2|joint3|joint4|joint4_PRCST.crt"
		;
connectAttr "|MDL|root|joint1|joint2|joint3|joint4.jo" "|MDL|root|joint1|joint2|joint3|joint4|joint4_PRCST.cjo"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint4.t" "|MDL|root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tt"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint4.rp" "|MDL|root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].trp"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint4.rpt" "|MDL|root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].trt"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint4.r" "|MDL|root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tr"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint4.ro" "|MDL|root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tro"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint4.s" "|MDL|root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].ts"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint4.pm" "|MDL|root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint4.jo" "|MDL|root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tjo"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint4.ssc" "|MDL|root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tsc"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint4.is" "|MDL|root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tis"
		;
connectAttr "|MDL|root|joint1|joint2|joint3|joint4|joint4_PRCST.w0" "|MDL|root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tw"
		;
connectAttr "|MDL|root|joint1|joint2|joint3.ro" "|MDL|root|joint1|joint2|joint3|joint3_PRCST.cro"
		;
connectAttr "|MDL|root|joint1|joint2|joint3.pim" "|MDL|root|joint1|joint2|joint3|joint3_PRCST.cpim"
		;
connectAttr "|MDL|root|joint1|joint2|joint3.rp" "|MDL|root|joint1|joint2|joint3|joint3_PRCST.crp"
		;
connectAttr "|MDL|root|joint1|joint2|joint3.rpt" "|MDL|root|joint1|joint2|joint3|joint3_PRCST.crt"
		;
connectAttr "|MDL|root|joint1|joint2|joint3.jo" "|MDL|root|joint1|joint2|joint3|joint3_PRCST.cjo"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3.t" "|MDL|root|joint1|joint2|joint3|joint3_PRCST.tg[0].tt"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3.rp" "|MDL|root|joint1|joint2|joint3|joint3_PRCST.tg[0].trp"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3.rpt" "|MDL|root|joint1|joint2|joint3|joint3_PRCST.tg[0].trt"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3.r" "|MDL|root|joint1|joint2|joint3|joint3_PRCST.tg[0].tr"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3.ro" "|MDL|root|joint1|joint2|joint3|joint3_PRCST.tg[0].tro"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3.s" "|MDL|root|joint1|joint2|joint3|joint3_PRCST.tg[0].ts"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3.pm" "|MDL|root|joint1|joint2|joint3|joint3_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3.jo" "|MDL|root|joint1|joint2|joint3|joint3_PRCST.tg[0].tjo"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3.ssc" "|MDL|root|joint1|joint2|joint3|joint3_PRCST.tg[0].tsc"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3.is" "|MDL|root|joint1|joint2|joint3|joint3_PRCST.tg[0].tis"
		;
connectAttr "|MDL|root|joint1|joint2|joint3|joint3_PRCST.w0" "|MDL|root|joint1|joint2|joint3|joint3_PRCST.tg[0].tw"
		;
connectAttr "|MDL|root|joint1|joint2.ro" "|MDL|root|joint1|joint2|joint2_PRCST.cro"
		;
connectAttr "|MDL|root|joint1|joint2.pim" "|MDL|root|joint1|joint2|joint2_PRCST.cpim"
		;
connectAttr "|MDL|root|joint1|joint2.rp" "|MDL|root|joint1|joint2|joint2_PRCST.crp"
		;
connectAttr "|MDL|root|joint1|joint2.rpt" "|MDL|root|joint1|joint2|joint2_PRCST.crt"
		;
connectAttr "|MDL|root|joint1|joint2.jo" "|MDL|root|joint1|joint2|joint2_PRCST.cjo"
		;
connectAttr "|RIG|BRG|root|joint1|joint2.t" "|MDL|root|joint1|joint2|joint2_PRCST.tg[0].tt"
		;
connectAttr "|RIG|BRG|root|joint1|joint2.rp" "|MDL|root|joint1|joint2|joint2_PRCST.tg[0].trp"
		;
connectAttr "|RIG|BRG|root|joint1|joint2.rpt" "|MDL|root|joint1|joint2|joint2_PRCST.tg[0].trt"
		;
connectAttr "|RIG|BRG|root|joint1|joint2.r" "|MDL|root|joint1|joint2|joint2_PRCST.tg[0].tr"
		;
connectAttr "|RIG|BRG|root|joint1|joint2.ro" "|MDL|root|joint1|joint2|joint2_PRCST.tg[0].tro"
		;
connectAttr "|RIG|BRG|root|joint1|joint2.s" "|MDL|root|joint1|joint2|joint2_PRCST.tg[0].ts"
		;
connectAttr "|RIG|BRG|root|joint1|joint2.pm" "|MDL|root|joint1|joint2|joint2_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint1|joint2.jo" "|MDL|root|joint1|joint2|joint2_PRCST.tg[0].tjo"
		;
connectAttr "|RIG|BRG|root|joint1|joint2.ssc" "|MDL|root|joint1|joint2|joint2_PRCST.tg[0].tsc"
		;
connectAttr "|RIG|BRG|root|joint1|joint2.is" "|MDL|root|joint1|joint2|joint2_PRCST.tg[0].tis"
		;
connectAttr "|MDL|root|joint1|joint2|joint2_PRCST.w0" "|MDL|root|joint1|joint2|joint2_PRCST.tg[0].tw"
		;
connectAttr "|MDL|root|joint1.ro" "|MDL|root|joint1|joint1_PRCST.cro";
connectAttr "|MDL|root|joint1.pim" "|MDL|root|joint1|joint1_PRCST.cpim";
connectAttr "|MDL|root|joint1.rp" "|MDL|root|joint1|joint1_PRCST.crp";
connectAttr "|MDL|root|joint1.rpt" "|MDL|root|joint1|joint1_PRCST.crt";
connectAttr "|MDL|root|joint1.jo" "|MDL|root|joint1|joint1_PRCST.cjo";
connectAttr "|RIG|BRG|root|joint1.t" "|MDL|root|joint1|joint1_PRCST.tg[0].tt";
connectAttr "|RIG|BRG|root|joint1.rp" "|MDL|root|joint1|joint1_PRCST.tg[0].trp";
connectAttr "|RIG|BRG|root|joint1.rpt" "|MDL|root|joint1|joint1_PRCST.tg[0].trt"
		;
connectAttr "|RIG|BRG|root|joint1.r" "|MDL|root|joint1|joint1_PRCST.tg[0].tr";
connectAttr "|RIG|BRG|root|joint1.ro" "|MDL|root|joint1|joint1_PRCST.tg[0].tro";
connectAttr "|RIG|BRG|root|joint1.s" "|MDL|root|joint1|joint1_PRCST.tg[0].ts";
connectAttr "|RIG|BRG|root|joint1.pm" "|MDL|root|joint1|joint1_PRCST.tg[0].tpm";
connectAttr "|RIG|BRG|root|joint1.jo" "|MDL|root|joint1|joint1_PRCST.tg[0].tjo";
connectAttr "|RIG|BRG|root|joint1.ssc" "|MDL|root|joint1|joint1_PRCST.tg[0].tsc"
		;
connectAttr "|RIG|BRG|root|joint1.is" "|MDL|root|joint1|joint1_PRCST.tg[0].tis";
connectAttr "|MDL|root|joint1|joint1_PRCST.w0" "|MDL|root|joint1|joint1_PRCST.tg[0].tw"
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
connectAttr "|RIG|BRG|root|joint1|joint1_PRCST.ctx" "|RIG|BRG|root|joint1.tx";
connectAttr "|RIG|BRG|root|joint1|joint1_PRCST.cty" "|RIG|BRG|root|joint1.ty";
connectAttr "|RIG|BRG|root|joint1|joint1_PRCST.ctz" "|RIG|BRG|root|joint1.tz";
connectAttr "|RIG|BRG|root|joint1|joint1_PRCST.crx" "|RIG|BRG|root|joint1.rx";
connectAttr "|RIG|BRG|root|joint1|joint1_PRCST.cry" "|RIG|BRG|root|joint1.ry";
connectAttr "|RIG|BRG|root|joint1|joint1_PRCST.crz" "|RIG|BRG|root|joint1.rz";
connectAttr "|RIG|BRG|root.s" "|RIG|BRG|root|joint1.is";
connectAttr "|RIG|BRG|root|joint1|joint2|joint2_PRCST.ctx" "|RIG|BRG|root|joint1|joint2.tx"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint2_PRCST.cty" "|RIG|BRG|root|joint1|joint2.ty"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint2_PRCST.ctz" "|RIG|BRG|root|joint1|joint2.tz"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint2_PRCST.crx" "|RIG|BRG|root|joint1|joint2.rx"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint2_PRCST.cry" "|RIG|BRG|root|joint1|joint2.ry"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint2_PRCST.crz" "|RIG|BRG|root|joint1|joint2.rz"
		;
connectAttr "|RIG|BRG|root|joint1.s" "|RIG|BRG|root|joint1|joint2.is";
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint3_PRCST.ctx" "|RIG|BRG|root|joint1|joint2|joint3.tx"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint3_PRCST.cty" "|RIG|BRG|root|joint1|joint2|joint3.ty"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint3_PRCST.ctz" "|RIG|BRG|root|joint1|joint2|joint3.tz"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint3_PRCST.crx" "|RIG|BRG|root|joint1|joint2|joint3.rx"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint3_PRCST.cry" "|RIG|BRG|root|joint1|joint2|joint3.ry"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint3_PRCST.crz" "|RIG|BRG|root|joint1|joint2|joint3.rz"
		;
connectAttr "|RIG|BRG|root|joint1|joint2.s" "|RIG|BRG|root|joint1|joint2|joint3.is"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint4|joint4_PRCST.ctx" "|RIG|BRG|root|joint1|joint2|joint3|joint4.tx"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint4|joint4_PRCST.cty" "|RIG|BRG|root|joint1|joint2|joint3|joint4.ty"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint4|joint4_PRCST.ctz" "|RIG|BRG|root|joint1|joint2|joint3|joint4.tz"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint4|joint4_PRCST.crx" "|RIG|BRG|root|joint1|joint2|joint3|joint4.rx"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint4|joint4_PRCST.cry" "|RIG|BRG|root|joint1|joint2|joint3|joint4.ry"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint4|joint4_PRCST.crz" "|RIG|BRG|root|joint1|joint2|joint3|joint4.rz"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3.s" "|RIG|BRG|root|joint1|joint2|joint3|joint4.is"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint4.ro" "|RIG|BRG|root|joint1|joint2|joint3|joint4|joint4_PRCST.cro"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint4.pim" "|RIG|BRG|root|joint1|joint2|joint3|joint4|joint4_PRCST.cpim"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint4.rp" "|RIG|BRG|root|joint1|joint2|joint3|joint4|joint4_PRCST.crp"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint4.rpt" "|RIG|BRG|root|joint1|joint2|joint3|joint4|joint4_PRCST.crt"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint4.jo" "|RIG|BRG|root|joint1|joint2|joint3|joint4|joint4_PRCST.cjo"
		;
connectAttr "AUX_joint4_BDR.t" "|RIG|BRG|root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tt"
		;
connectAttr "AUX_joint4_BDR.rp" "|RIG|BRG|root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].trp"
		;
connectAttr "AUX_joint4_BDR.rpt" "|RIG|BRG|root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].trt"
		;
connectAttr "AUX_joint4_BDR.r" "|RIG|BRG|root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tr"
		;
connectAttr "AUX_joint4_BDR.ro" "|RIG|BRG|root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tro"
		;
connectAttr "AUX_joint4_BDR.s" "|RIG|BRG|root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].ts"
		;
connectAttr "AUX_joint4_BDR.pm" "|RIG|BRG|root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint4|joint4_PRCST.w0" "|RIG|BRG|root|joint1|joint2|joint3|joint4|joint4_PRCST.tg[0].tw"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3.ro" "|RIG|BRG|root|joint1|joint2|joint3|joint3_PRCST.cro"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3.pim" "|RIG|BRG|root|joint1|joint2|joint3|joint3_PRCST.cpim"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3.rp" "|RIG|BRG|root|joint1|joint2|joint3|joint3_PRCST.crp"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3.rpt" "|RIG|BRG|root|joint1|joint2|joint3|joint3_PRCST.crt"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3.jo" "|RIG|BRG|root|joint1|joint2|joint3|joint3_PRCST.cjo"
		;
connectAttr "AUX_joint3_BDR.t" "|RIG|BRG|root|joint1|joint2|joint3|joint3_PRCST.tg[0].tt"
		;
connectAttr "AUX_joint3_BDR.rp" "|RIG|BRG|root|joint1|joint2|joint3|joint3_PRCST.tg[0].trp"
		;
connectAttr "AUX_joint3_BDR.rpt" "|RIG|BRG|root|joint1|joint2|joint3|joint3_PRCST.tg[0].trt"
		;
connectAttr "AUX_joint3_BDR.r" "|RIG|BRG|root|joint1|joint2|joint3|joint3_PRCST.tg[0].tr"
		;
connectAttr "AUX_joint3_BDR.ro" "|RIG|BRG|root|joint1|joint2|joint3|joint3_PRCST.tg[0].tro"
		;
connectAttr "AUX_joint3_BDR.s" "|RIG|BRG|root|joint1|joint2|joint3|joint3_PRCST.tg[0].ts"
		;
connectAttr "AUX_joint3_BDR.pm" "|RIG|BRG|root|joint1|joint2|joint3|joint3_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint3|joint3_PRCST.w0" "|RIG|BRG|root|joint1|joint2|joint3|joint3_PRCST.tg[0].tw"
		;
connectAttr "|RIG|BRG|root|joint1|joint2.ro" "|RIG|BRG|root|joint1|joint2|joint2_PRCST.cro"
		;
connectAttr "|RIG|BRG|root|joint1|joint2.pim" "|RIG|BRG|root|joint1|joint2|joint2_PRCST.cpim"
		;
connectAttr "|RIG|BRG|root|joint1|joint2.rp" "|RIG|BRG|root|joint1|joint2|joint2_PRCST.crp"
		;
connectAttr "|RIG|BRG|root|joint1|joint2.rpt" "|RIG|BRG|root|joint1|joint2|joint2_PRCST.crt"
		;
connectAttr "|RIG|BRG|root|joint1|joint2.jo" "|RIG|BRG|root|joint1|joint2|joint2_PRCST.cjo"
		;
connectAttr "AUX_joint2_BDR.t" "|RIG|BRG|root|joint1|joint2|joint2_PRCST.tg[0].tt"
		;
connectAttr "AUX_joint2_BDR.rp" "|RIG|BRG|root|joint1|joint2|joint2_PRCST.tg[0].trp"
		;
connectAttr "AUX_joint2_BDR.rpt" "|RIG|BRG|root|joint1|joint2|joint2_PRCST.tg[0].trt"
		;
connectAttr "AUX_joint2_BDR.r" "|RIG|BRG|root|joint1|joint2|joint2_PRCST.tg[0].tr"
		;
connectAttr "AUX_joint2_BDR.ro" "|RIG|BRG|root|joint1|joint2|joint2_PRCST.tg[0].tro"
		;
connectAttr "AUX_joint2_BDR.s" "|RIG|BRG|root|joint1|joint2|joint2_PRCST.tg[0].ts"
		;
connectAttr "AUX_joint2_BDR.pm" "|RIG|BRG|root|joint1|joint2|joint2_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint1|joint2|joint2_PRCST.w0" "|RIG|BRG|root|joint1|joint2|joint2_PRCST.tg[0].tw"
		;
connectAttr "|RIG|BRG|root|joint1.ro" "|RIG|BRG|root|joint1|joint1_PRCST.cro";
connectAttr "|RIG|BRG|root|joint1.pim" "|RIG|BRG|root|joint1|joint1_PRCST.cpim";
connectAttr "|RIG|BRG|root|joint1.rp" "|RIG|BRG|root|joint1|joint1_PRCST.crp";
connectAttr "|RIG|BRG|root|joint1.rpt" "|RIG|BRG|root|joint1|joint1_PRCST.crt";
connectAttr "|RIG|BRG|root|joint1.jo" "|RIG|BRG|root|joint1|joint1_PRCST.cjo";
connectAttr "AUX_joint1_BDR.t" "|RIG|BRG|root|joint1|joint1_PRCST.tg[0].tt";
connectAttr "AUX_joint1_BDR.rp" "|RIG|BRG|root|joint1|joint1_PRCST.tg[0].trp";
connectAttr "AUX_joint1_BDR.rpt" "|RIG|BRG|root|joint1|joint1_PRCST.tg[0].trt";
connectAttr "AUX_joint1_BDR.r" "|RIG|BRG|root|joint1|joint1_PRCST.tg[0].tr";
connectAttr "AUX_joint1_BDR.ro" "|RIG|BRG|root|joint1|joint1_PRCST.tg[0].tro";
connectAttr "AUX_joint1_BDR.s" "|RIG|BRG|root|joint1|joint1_PRCST.tg[0].ts";
connectAttr "AUX_joint1_BDR.pm" "|RIG|BRG|root|joint1|joint1_PRCST.tg[0].tpm";
connectAttr "|RIG|BRG|root|joint1|joint1_PRCST.w0" "|RIG|BRG|root|joint1|joint1_PRCST.tg[0].tw"
		;
connectAttr "|RIG|BRG|root.ro" "|RIG|BRG|root|root_PRCST.cro";
connectAttr "|RIG|BRG|root.pim" "|RIG|BRG|root|root_PRCST.cpim";
connectAttr "|RIG|BRG|root.rp" "|RIG|BRG|root|root_PRCST.crp";
connectAttr "|RIG|BRG|root.rpt" "|RIG|BRG|root|root_PRCST.crt";
connectAttr "|RIG|BRG|root.jo" "|RIG|BRG|root|root_PRCST.cjo";
connectAttr "AUX_Root_BDR.t" "|RIG|BRG|root|root_PRCST.tg[0].tt";
connectAttr "AUX_Root_BDR.rp" "|RIG|BRG|root|root_PRCST.tg[0].trp";
connectAttr "AUX_Root_BDR.rpt" "|RIG|BRG|root|root_PRCST.tg[0].trt";
connectAttr "AUX_Root_BDR.r" "|RIG|BRG|root|root_PRCST.tg[0].tr";
connectAttr "AUX_Root_BDR.ro" "|RIG|BRG|root|root_PRCST.tg[0].tro";
connectAttr "AUX_Root_BDR.s" "|RIG|BRG|root|root_PRCST.tg[0].ts";
connectAttr "AUX_Root_BDR.pm" "|RIG|BRG|root|root_PRCST.tg[0].tpm";
connectAttr "|RIG|BRG|root|root_PRCST.w0" "|RIG|BRG|root|root_PRCST.tg[0].tw";
connectAttr "CTL_joint1_IDT_PRCST.ctx" "CTL_joint1_IDT.tx" -l on;
connectAttr "CTL_joint1_IDT_PRCST.cty" "CTL_joint1_IDT.ty" -l on;
connectAttr "CTL_joint1_IDT_PRCST.ctz" "CTL_joint1_IDT.tz" -l on;
connectAttr "CTL_joint1_IDT_PRCST.crx" "CTL_joint1_IDT.rx" -l on;
connectAttr "CTL_joint1_IDT_PRCST.cry" "CTL_joint1_IDT.ry" -l on;
connectAttr "CTL_joint1_IDT_PRCST.crz" "CTL_joint1_IDT.rz" -l on;
connectAttr "CTL_joint1_Dynamics_ORCST.crx" "CTL_joint1.rx";
connectAttr "CTL_joint1_Dynamics_ORCST.cry" "CTL_joint1.ry";
connectAttr "CTL_joint1_Dynamics_ORCST.crz" "CTL_joint1.rz";
connectAttr "CTL_joint2_Dynamics_ORCST.crx" "CTL_joint2.rx";
connectAttr "CTL_joint2_Dynamics_ORCST.cry" "CTL_joint2.ry";
connectAttr "CTL_joint2_Dynamics_ORCST.crz" "CTL_joint2.rz";
connectAttr "CTL_joint3_Dynamics_ORCST.crx" "CTL_joint3.rx";
connectAttr "CTL_joint3_Dynamics_ORCST.cry" "CTL_joint3.ry";
connectAttr "CTL_joint3_Dynamics_ORCST.crz" "CTL_joint3.rz";
connectAttr "CTL_joint3.ro" "CTL_joint3_Dynamics_ORCST.cro";
connectAttr "CTL_joint3.pim" "CTL_joint3_Dynamics_ORCST.cpim";
connectAttr "CTL_joint3_Dynamics.r" "CTL_joint3_Dynamics_ORCST.tg[0].tr";
connectAttr "CTL_joint3_Dynamics.ro" "CTL_joint3_Dynamics_ORCST.tg[0].tro";
connectAttr "CTL_joint3_Dynamics.pm" "CTL_joint3_Dynamics_ORCST.tg[0].tpm";
connectAttr "CTL_joint3_Dynamics.jo" "CTL_joint3_Dynamics_ORCST.tg[0].tjo";
connectAttr "CTL_joint3_Dynamics_ORCST.w0" "CTL_joint3_Dynamics_ORCST.tg[0].tw";
connectAttr "CTL_joint2.ro" "CTL_joint2_Dynamics_ORCST.cro";
connectAttr "CTL_joint2.pim" "CTL_joint2_Dynamics_ORCST.cpim";
connectAttr "CTL_joint2_Dynamics.r" "CTL_joint2_Dynamics_ORCST.tg[0].tr";
connectAttr "CTL_joint2_Dynamics.ro" "CTL_joint2_Dynamics_ORCST.tg[0].tro";
connectAttr "CTL_joint2_Dynamics.pm" "CTL_joint2_Dynamics_ORCST.tg[0].tpm";
connectAttr "CTL_joint2_Dynamics.jo" "CTL_joint2_Dynamics_ORCST.tg[0].tjo";
connectAttr "CTL_joint2_Dynamics_ORCST.w0" "CTL_joint2_Dynamics_ORCST.tg[0].tw";
connectAttr "CTL_joint1.ro" "CTL_joint1_Dynamics_ORCST.cro";
connectAttr "CTL_joint1.pim" "CTL_joint1_Dynamics_ORCST.cpim";
connectAttr "CTL_joint1_Dynamics.r" "CTL_joint1_Dynamics_ORCST.tg[0].tr";
connectAttr "CTL_joint1_Dynamics.ro" "CTL_joint1_Dynamics_ORCST.tg[0].tro";
connectAttr "CTL_joint1_Dynamics.pm" "CTL_joint1_Dynamics_ORCST.tg[0].tpm";
connectAttr "CTL_joint1_Dynamics.jo" "CTL_joint1_Dynamics_ORCST.tg[0].tjo";
connectAttr "CTL_joint1_Dynamics_ORCST.w0" "CTL_joint1_Dynamics_ORCST.tg[0].tw";
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
connectAttr "transformGeometry1.og" "pCubeShape1.i";
connectAttr "transformGeometry2.og" "pTorusShape1.i";
connectAttr "CTL_joint1_IDT.msg" "CTL_joint1_Dynamics_SPC.bdnBindSource";
connectAttr "CTL_joint1_Dynamics_SPC_PRCST.ctx" "CTL_joint1_Dynamics_SPC.tx";
connectAttr "CTL_joint1_Dynamics_SPC_PRCST.cty" "CTL_joint1_Dynamics_SPC.ty";
connectAttr "CTL_joint1_Dynamics_SPC_PRCST.ctz" "CTL_joint1_Dynamics_SPC.tz";
connectAttr "CTL_joint1_Dynamics_SPC_PRCST.crx" "CTL_joint1_Dynamics_SPC.rx";
connectAttr "CTL_joint1_Dynamics_SPC_PRCST.cry" "CTL_joint1_Dynamics_SPC.ry";
connectAttr "CTL_joint1_Dynamics_SPC_PRCST.crz" "CTL_joint1_Dynamics_SPC.rz";
connectAttr "CTL_joint1_Dynamics_BDN.outr" "CTL_joint1_Dynamics.r";
connectAttr "CTL_joint1.msg" "CTL_joint1_Dynamics.bdnBindTarget";
connectAttr "CTL_joint2_Dynamics_BDN.outr" "CTL_joint2_Dynamics.r";
connectAttr "CTL_joint1_Dynamics.s" "CTL_joint2_Dynamics.is";
connectAttr "CTL_joint2.msg" "CTL_joint2_Dynamics.bdnBindTarget";
connectAttr "CTL_joint3_Dynamics_BDN.outr" "CTL_joint3_Dynamics.r";
connectAttr "CTL_joint2_Dynamics.s" "CTL_joint3_Dynamics.is";
connectAttr "CTL_joint3.msg" "CTL_joint3_Dynamics.bdnBindTarget";
connectAttr "CTL_joint3_Dynamics.s" "CTL_joint3_Dynamics_End.is";
connectAttr "CTL_joint3_Dynamics_BDN.r" "CTL_joint3_Dynamics_End_RadiusShape.rd"
		;
connectAttr "CTL_joint2_Dynamics_BDN.r" "CTL_joint3_Dynamics_RadiusShape.rd";
connectAttr "CTL_joint1_Dynamics_BDN.r" "CTL_joint2_Dynamics_RadiusShape.rd";
connectAttr "CTL_joint1_Dynamics_SPC.ro" "CTL_joint1_Dynamics_SPC_PRCST.cro";
connectAttr "CTL_joint1_Dynamics_SPC.pim" "CTL_joint1_Dynamics_SPC_PRCST.cpim";
connectAttr "CTL_joint1_Dynamics_SPC.rp" "CTL_joint1_Dynamics_SPC_PRCST.crp";
connectAttr "CTL_joint1_Dynamics_SPC.rpt" "CTL_joint1_Dynamics_SPC_PRCST.crt";
connectAttr "CTL_joint1_IDT.t" "CTL_joint1_Dynamics_SPC_PRCST.tg[0].tt";
connectAttr "CTL_joint1_IDT.rp" "CTL_joint1_Dynamics_SPC_PRCST.tg[0].trp";
connectAttr "CTL_joint1_IDT.rpt" "CTL_joint1_Dynamics_SPC_PRCST.tg[0].trt";
connectAttr "CTL_joint1_IDT.r" "CTL_joint1_Dynamics_SPC_PRCST.tg[0].tr";
connectAttr "CTL_joint1_IDT.ro" "CTL_joint1_Dynamics_SPC_PRCST.tg[0].tro";
connectAttr "CTL_joint1_IDT.s" "CTL_joint1_Dynamics_SPC_PRCST.tg[0].ts";
connectAttr "CTL_joint1_IDT.pm" "CTL_joint1_Dynamics_SPC_PRCST.tg[0].tpm";
connectAttr "CTL_joint1_Dynamics_SPC_PRCST.w0" "CTL_joint1_Dynamics_SPC_PRCST.tg[0].tw"
		;
connectAttr "CTL_joint1_IDT.msg" "CTL_joint1_Target_SPC.bdnBindSource";
connectAttr "CTL_joint1_Target_SPC_PRCST.ctx" "CTL_joint1_Target_SPC.tx";
connectAttr "CTL_joint1_Target_SPC_PRCST.cty" "CTL_joint1_Target_SPC.ty";
connectAttr "CTL_joint1_Target_SPC_PRCST.ctz" "CTL_joint1_Target_SPC.tz";
connectAttr "CTL_joint1_Target_SPC_PRCST.crx" "CTL_joint1_Target_SPC.rx";
connectAttr "CTL_joint1_Target_SPC_PRCST.cry" "CTL_joint1_Target_SPC.ry";
connectAttr "CTL_joint1_Target_SPC_PRCST.crz" "CTL_joint1_Target_SPC.rz";
connectAttr "CTL_joint1.msg" "CTL_joint1_Target.bdnSource";
connectAttr "CTL_joint1_Target.s" "CTL_joint2_Target.is";
connectAttr "CTL_joint2.msg" "CTL_joint2_Target.bdnSource";
connectAttr "CTL_joint2_Target.s" "CTL_joint3_Target.is";
connectAttr "CTL_joint3.msg" "CTL_joint3_Target.bdnSource";
connectAttr "CTL_joint1_Target_SPC.ro" "CTL_joint1_Target_SPC_PRCST.cro";
connectAttr "CTL_joint1_Target_SPC.pim" "CTL_joint1_Target_SPC_PRCST.cpim";
connectAttr "CTL_joint1_Target_SPC.rp" "CTL_joint1_Target_SPC_PRCST.crp";
connectAttr "CTL_joint1_Target_SPC.rpt" "CTL_joint1_Target_SPC_PRCST.crt";
connectAttr "CTL_joint1_IDT.t" "CTL_joint1_Target_SPC_PRCST.tg[0].tt";
connectAttr "CTL_joint1_IDT.rp" "CTL_joint1_Target_SPC_PRCST.tg[0].trp";
connectAttr "CTL_joint1_IDT.rpt" "CTL_joint1_Target_SPC_PRCST.tg[0].trt";
connectAttr "CTL_joint1_IDT.r" "CTL_joint1_Target_SPC_PRCST.tg[0].tr";
connectAttr "CTL_joint1_IDT.ro" "CTL_joint1_Target_SPC_PRCST.tg[0].tro";
connectAttr "CTL_joint1_IDT.s" "CTL_joint1_Target_SPC_PRCST.tg[0].ts";
connectAttr "CTL_joint1_IDT.pm" "CTL_joint1_Target_SPC_PRCST.tg[0].tpm";
connectAttr "CTL_joint1_Target_SPC_PRCST.w0" "CTL_joint1_Target_SPC_PRCST.tg[0].tw"
		;
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
connectAttr "makeNurbSphere1.msg" "CapsuleCollider.colliderAffectedBy[1]";
connectAttr "CapsuleCollider_SphereAShape.msg" "CapsuleCollider.colliderAffectedBy[2]"
		;
connectAttr "CapsuleCollider_SphereB.msg" "CapsuleCollider.colliderAffectedBy[3]"
		;
connectAttr "makeNurbSphere2.msg" "CapsuleCollider.colliderAffectedBy[4]";
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
connectAttr "makeNurbSphere1.os" "CapsuleCollider_SphereAShape.cr";
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
connectAttr "makeNurbSphere2.os" "CapsuleCollider_SphereBShape.cr";
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
connectAttr "makeNurbSphere3.msg" "SphereCollider.colliderAffectedBy[0]";
connectAttr "SphereColliderShape.msg" "SphereCollider.colliderAffectedBy[1]";
connectAttr "makeNurbSphere3.os" "SphereColliderShape.cr";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "transformGeometry1.ig";
connectAttr "polyTorus1.out" "transformGeometry2.ig";
connectAttr "CTL_joint1_Dynamics.t" "CTL_joint1_Dynamics_BDN.bt";
connectAttr "CTL_joint1_Dynamics.jo" "CTL_joint1_Dynamics_BDN.bjo";
connectAttr "CTL_joint1_Dynamics.pm" "CTL_joint1_Dynamics_BDN.bpmtx";
connectAttr "CTL_joint1_Dynamics.pim" "CTL_joint1_Dynamics_BDN.bpimtx";
connectAttr "CTL_joint2_Dynamics.t" "CTL_joint1_Dynamics_BDN.et";
connectAttr ":time1.o" "CTL_joint1_Dynamics_BDN.t";
connectAttr "CTL_joint1_Target.r" "CTL_joint1_Dynamics_BDN.ro";
connectAttr "CapsuleCollider.colliderMatrixA" "CTL_joint1_Dynamics_BDN.cc[0].ccmtxa"
		;
connectAttr "CapsuleCollider.colliderMatrixB" "CTL_joint1_Dynamics_BDN.cc[0].ccmtxb"
		;
connectAttr "CapsuleCollider.colliderRadiusA" "CTL_joint1_Dynamics_BDN.cc[0].ccrada"
		;
connectAttr "CapsuleCollider.colliderRadiusB" "CTL_joint1_Dynamics_BDN.cc[0].ccradb"
		;
connectAttr "InfinitePlaneCollider.wm" "CTL_joint1_Dynamics_BDN.pc[0].pcmtx";
connectAttr "SphereCollider.wm" "CTL_joint1_Dynamics_BDN.sc[0].scmtx";
connectAttr "SphereCollider.colliderRadius" "CTL_joint1_Dynamics_BDN.sc[0].scrad"
		;
connectAttr "pCubeShape1.o" "CTL_joint1_Dynamics_BDN.mc[0]";
connectAttr "pTorusShape1.o" "CTL_joint1_Dynamics_BDN.mc[1]";
connectAttr "nurbsCurve_forceVector.o" "CTL_joint1_Dynamics_BDN.af";
connectAttr "CTL_RootGlobal.wm" "CTL_joint1_Dynamics_BDN.ofmtx";
connectAttr "CTL_joint1_Dynamics_BDN_damping.o" "CTL_joint1_Dynamics_BDN.damp";
connectAttr "CTL_joint1_Dynamics_BDN_elasticity.o" "CTL_joint1_Dynamics_BDN.elas"
		;
connectAttr "CTL_joint2_Dynamics.t" "CTL_joint2_Dynamics_BDN.bt";
connectAttr "CTL_joint2_Dynamics.jo" "CTL_joint2_Dynamics_BDN.bjo";
connectAttr "CTL_joint2_Dynamics.pm" "CTL_joint2_Dynamics_BDN.bpmtx";
connectAttr "CTL_joint2_Dynamics.pim" "CTL_joint2_Dynamics_BDN.bpimtx";
connectAttr "CTL_joint3_Dynamics.t" "CTL_joint2_Dynamics_BDN.et";
connectAttr ":time1.o" "CTL_joint2_Dynamics_BDN.t";
connectAttr "CTL_joint2_Target.r" "CTL_joint2_Dynamics_BDN.ro";
connectAttr "nurbsCurve1_forceVector.o" "CTL_joint2_Dynamics_BDN.af";
connectAttr "CTL_joint3_Dynamics.t" "CTL_joint3_Dynamics_BDN.bt";
connectAttr "CTL_joint3_Dynamics.jo" "CTL_joint3_Dynamics_BDN.bjo";
connectAttr "CTL_joint3_Dynamics.pm" "CTL_joint3_Dynamics_BDN.bpmtx";
connectAttr "CTL_joint3_Dynamics.pim" "CTL_joint3_Dynamics_BDN.bpimtx";
connectAttr "CTL_joint3_Dynamics_End.t" "CTL_joint3_Dynamics_BDN.et";
connectAttr ":time1.o" "CTL_joint3_Dynamics_BDN.t";
connectAttr "CTL_joint3_Target.r" "CTL_joint3_Dynamics_BDN.ro";
connectAttr "CapsuleCollider.colliderRadiusA" "makeNurbSphere1.r";
connectAttr "CapsuleCollider_sweepAStartUc.o" "makeNurbSphere1.ssw";
connectAttr "CapsuleCollider_sweepAEndUc.o" "makeNurbSphere1.esw";
connectAttr "CapsuleCollider.colliderRadiusB" "makeNurbSphere2.r";
connectAttr "CapsuleCollider_sweepBStartUc.o" "makeNurbSphere2.ssw";
connectAttr "CapsuleCollider_sweepBEndUc.o" "makeNurbSphere2.esw";
connectAttr "CapsuleCollider.colliderRadiusA" "makeNurbCircle1.r";
connectAttr "CapsuleCollider_lengthDir.ocr" "makeNurbCircle1.nrx";
connectAttr "CapsuleCollider.colliderRadiusB" "makeNurbCircle2.r";
connectAttr "CapsuleCollider_lengthDir.ocr" "makeNurbCircle2.nrx";
connectAttr "CapsuleCollider_CircleBShape.ws" "loft1.ic[0]";
connectAttr "CapsuleCollider_CircleAShape.ws" "loft1.ic[1]";
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
connectAttr "InfinitePlaneCollider.colliderWidth" "makeNurbPlane1.w";
connectAttr "InfinitePlaneCollider_ratio.of" "makeNurbPlane1.lr";
connectAttr "InfinitePlaneCollider.colliderHeight" "InfinitePlaneCollider_ratio._fa"
		;
connectAttr "InfinitePlaneCollider.colliderWidth" "InfinitePlaneCollider_ratio._fb"
		;
connectAttr "SphereCollider.colliderRadius" "makeNurbSphere3.r";
connectAttr "nurbsCurve.wm" "nurbsCurve_forceVector.m";
connectAttr "nurbsCurve1.wm" "nurbsCurve1_forceVector.m";
connectAttr "CTL_joint3_Dynamics.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "CTL_joint2_Dynamics_BDN.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "CTL_joint3_Target.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "CTL_joint1_Dynamics_BDN.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "CTL_joint3_Dynamics_RadiusShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "CTL_joint1_Target.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "CTL_joint2_Dynamics.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "CTL_joint3_Dynamics_End.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "CTL_RootGlobal.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "InfinitePlaneCollider.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "CapsuleCollider.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "pCubeShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn";
connectAttr "CTL_joint1_Dynamics.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "CTL_joint3_Dynamics_BDN.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "CTL_joint3_Dynamics_End_RadiusShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "CTL_joint1_Dynamics_BDN_elasticity.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "SphereCollider.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn";
connectAttr ":time1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn";
connectAttr "pTorusShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn";
connectAttr "CTL_joint1_Dynamics_BDN_damping.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "CTL_joint2_Target.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "nurbsCurve_forceVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "CTL_joint2_Dynamics_RadiusShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "nurbsCurve1_forceVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "CapsuleCollider_SphereAShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "CapsuleCollider_SphereBShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "CapsuleCollider_LoftShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "InfinitePlaneColliderShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "SphereColliderShape.iog" ":initialShadingGroup.dsm" -na;
// End of node.ma
