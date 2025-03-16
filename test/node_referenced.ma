//Maya ASCII 2022 scene
//Name: node_referenced.ma
//Last modified: Mon, Mar 17, 2025 02:44:36 AM
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
fileInfo "UUID" "2F49C1FA-400D-CDE4-FDC8-2EA3D50F2950";
createNode transform -s -n "persp";
	rename -uid "347D49AD-41AE-7D45-9720-76BE579D0AB5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.2344880746921874 27.937375078184669 10.146848559199594 ;
	setAttr ".r" -type "double3" -56.138352729621552 8.2000000000024666 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "03C2F228-4574-247B-FA4E-DA94C7D3DF49";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 29.290166700390127;
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
	setAttr ".radi" 0.1;
createNode joint -n "joint_A1" -p "|MDL|root";
	rename -uid "4CD27429-4C6F-C7C0-9951-11A4ADBD7AA5";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".radi" 0.1;
createNode joint -n "joint_A2" -p "|MDL|root|joint_A1";
	rename -uid "2C6E990B-4BDD-4EBD-8AB0-85A2B938868E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".radi" 0.1;
createNode joint -n "joint_A3" -p "|MDL|root|joint_A1|joint_A2";
	rename -uid "DA3F3A8F-4CAE-EA29-4882-4CB2C0F31A11";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".radi" 0.1;
createNode joint -n "joint_A4" -p "|MDL|root|joint_A1|joint_A2|joint_A3";
	rename -uid "9B147006-407B-DF93-853F-11BA5458161D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".radi" 0.1;
createNode parentConstraint -n "joint_A4_PRCST" -p "|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4";
	rename -uid "0C2D05AC-4A73-69A1-A868-FCB6E9E762C4";
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
	setAttr ".rst" -type "double3" 2 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_A3_PRCST" -p "|MDL|root|joint_A1|joint_A2|joint_A3";
	rename -uid "DD3C96D7-4374-397E-BF20-3FA0DC4469B0";
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
	setAttr ".rst" -type "double3" 2 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_A2_PRCST" -p "|MDL|root|joint_A1|joint_A2";
	rename -uid "EA99AF56-49D3-0739-98D7-50AA4B2788F9";
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
	setAttr ".rst" -type "double3" 2 0 1.8873791418627661e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_A1_PRCST" -p "|MDL|root|joint_A1";
	rename -uid "64515590-4BC7-5411-4C7C-6EA62C7E135B";
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
	setAttr ".rst" -type "double3" 2 0 0 ;
	setAttr -k on ".w0";
createNode joint -n "joint_B1" -p "|MDL|root";
	rename -uid "A2199544-4EC4-D16C-23BD-D2BEB2E56AB8";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".radi" 0.1;
createNode joint -n "joint_B2" -p "|MDL|root|joint_B1";
	rename -uid "DBDC3ECE-4BCC-923E-B14D-579C5212A00A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".radi" 0.1;
createNode joint -n "joint_B3" -p "|MDL|root|joint_B1|joint_B2";
	rename -uid "99C5E546-4CB3-E984-13DA-40863939329B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".radi" 0.1;
createNode joint -n "joint_B4" -p "|MDL|root|joint_B1|joint_B2|joint_B3";
	rename -uid "9FBB6854-4884-5B36-CAB8-3492DE5E704A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".radi" 0.1;
createNode parentConstraint -n "joint_B4_PRCST" -p "|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4";
	rename -uid "E0ADBDDA-450D-1B66-539F-B1BC0B5132A3";
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
	setAttr ".rst" -type "double3" 2 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_B3_PRCST" -p "|MDL|root|joint_B1|joint_B2|joint_B3";
	rename -uid "76EB3D85-4576-DAEF-F706-5F8C5FA2A3F9";
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
	setAttr ".rst" -type "double3" 2 0 -1 ;
	setAttr -k on ".w0";
createNode joint -n "joint_B5" -p "|MDL|root|joint_B1|joint_B2";
	rename -uid "B8A181A8-477E-E0EE-790E-F29F70CE61DF";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".radi" 0.1;
createNode joint -n "joint_B6" -p "|MDL|root|joint_B1|joint_B2|joint_B5";
	rename -uid "ECD10A8C-47C6-D649-09DD-D78A10C9552B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".radi" 0.1;
createNode parentConstraint -n "joint_B6_PRCST" -p "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6";
	rename -uid "65CABBF6-4503-33A1-7772-58BDCAE6C827";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint_B6W0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "joint_B5_PRCST" -p "|MDL|root|joint_B1|joint_B2|joint_B5";
	rename -uid "E85543B5-4116-90D2-56DB-08B98C0E4FDE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint_B5W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 1 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_B2_PRCST" -p "|MDL|root|joint_B1|joint_B2";
	rename -uid "DD6749F3-461D-1344-3C25-199F7CA105AA";
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
	setAttr ".rst" -type "double3" 2 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_B1_PRCST" -p "|MDL|root|joint_B1";
	rename -uid "BF84D608-4A5C-CAFF-A0D0-CFA975D30BED";
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
	setAttr ".rst" -type "double3" 2 0 3 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "root_PRCST" -p "|MDL|root";
	rename -uid "4060E054-4E6D-1945-37EA-A8995AF78A37";
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
	rename -uid "7E15CF2C-4BF3-F5E1-7500-F882F06FF0FB";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".v" no;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";";
createNode transform -n "root" -p "GID";
	rename -uid "94EF92E2-4282-C5A3-F730-318BF40AD771";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root\";";
createNode transform -n "joint_A1" -p "|GID|root";
	rename -uid "1A3FF975-4981-F61C-4C43-5986324EFCAE";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root|joint_A1\";";
createNode transform -n "joint_A2" -p "|GID|root|joint_A1";
	rename -uid "5F769229-407A-E0A1-EDCF-A8809DADB897";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 1.8873791418627661e-15 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root|joint_A1|joint_A2\";";
createNode transform -n "joint_A3" -p "|GID|root|joint_A1|joint_A2";
	rename -uid "0B39684F-4507-A729-AB7C-4FA3D295FB8B";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root|joint_A1|joint_A2|joint_A3\";";
createNode transform -n "joint_A4" -p "|GID|root|joint_A1|joint_A2|joint_A3";
	rename -uid "CC3BBBF8-4FE1-C120-7D30-309840811AE3";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4\";";
createNode transform -n "joint_B1" -p "|GID|root";
	rename -uid "7BE663BE-4FB5-2F06-F92D-3DAC587236EE";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 3 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root|joint_B1\";";
createNode transform -n "joint_B2" -p "|GID|root|joint_B1";
	rename -uid "BCD38B48-4F64-7D8B-CDD2-73BF1CACAD81";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root|joint_B1|joint_B2\";";
createNode transform -n "joint_B3" -p "|GID|root|joint_B1|joint_B2";
	rename -uid "9F65F3DE-4F75-8B8B-E42F-1CA1B8004AFC";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 -1 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root|joint_B1|joint_B2|joint_B3\";";
createNode transform -n "joint_B4" -p "|GID|root|joint_B1|joint_B2|joint_B3";
	rename -uid "9A408BA3-4E7C-C89A-2811-CB8C1C42F8FC";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4\";";
createNode transform -n "joint_B5" -p "|GID|root|joint_B1|joint_B2";
	rename -uid "FFD260FE-4B09-609B-5AB7-E6ABE35CC671";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 1 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root|joint_B1|joint_B2|joint_B5\";";
createNode transform -n "joint_B6" -p "|GID|root|joint_B1|joint_B2|joint_B5";
	rename -uid "AC0F06A3-4721-D72F-FC98-82A480BDDB8F";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6\";";
createNode transform -n "RIG";
	rename -uid "EA9DD351-4151-2AD2-87CE-F29491637E1D";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr -l on ".mrsData" -type "string" "type=\"rig\";datetime=\"202501252311\";toolVersion=\"0.22.9\";";
createNode transform -n "BRG" -p "RIG";
	rename -uid "42AF5BA5-4266-BD02-A96A-57B4DF681F1A";
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
	rename -uid "3481A879-4FFA-7E35-CA64-D9B3503F8AB5";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root\";";
createNode joint -n "joint_A1" -p "|RIG|BRG|root";
	rename -uid "95765665-43CE-7DC7-A3A4-B181956705C4";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root|joint_A1\";";
createNode joint -n "joint_A2" -p "|RIG|BRG|root|joint_A1";
	rename -uid "2B782440-43F2-FE53-3918-D9B08685D524";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root|joint_A1|joint_A2\";";
createNode joint -n "joint_A3" -p "|RIG|BRG|root|joint_A1|joint_A2";
	rename -uid "015ECB36-4D80-5136-0ABC-CE9960CCB71B";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root|joint_A1|joint_A2|joint_A3\";";
createNode joint -n "joint_A4" -p "|RIG|BRG|root|joint_A1|joint_A2|joint_A3";
	rename -uid "BD695998-4C12-052B-BC7C-E3969CADDAB4";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root|joint_A1|joint_A2|joint_A3|joint_A4\";";
createNode parentConstraint -n "joint_A4_PRCST" -p "|RIG|BRG|root|joint_A1|joint_A2|joint_A3|joint_A4";
	rename -uid "580F9B00-44CB-DE08-61B4-C4A57CAAA12B";
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
	setAttr ".rst" -type "double3" 2 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_A3_PRCST" -p "|RIG|BRG|root|joint_A1|joint_A2|joint_A3";
	rename -uid "C11EDA8F-4226-0C92-8AA0-06B1AB81B2D6";
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
	setAttr ".rst" -type "double3" 2 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_A2_PRCST" -p "|RIG|BRG|root|joint_A1|joint_A2";
	rename -uid "6570BF96-49D1-DB5F-0CB9-28A0F4FCA090";
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
	setAttr ".rst" -type "double3" 2 0 1.8873791418627661e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_A1_PRCST" -p "|RIG|BRG|root|joint_A1";
	rename -uid "613BF84E-4865-87EA-1A17-A2B363EFDFDE";
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
	setAttr ".rst" -type "double3" 2 0 0 ;
	setAttr -k on ".w0";
createNode joint -n "joint_B1" -p "|RIG|BRG|root";
	rename -uid "AE394EF4-4C8D-3DB0-8D93-9B9A3A1FD2A2";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root|joint_B1\";";
createNode joint -n "joint_B2" -p "|RIG|BRG|root|joint_B1";
	rename -uid "8C72EB6C-45EE-1C1E-D975-E1BC7C106731";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root|joint_B1|joint_B2\";";
createNode joint -n "joint_B3" -p "|RIG|BRG|root|joint_B1|joint_B2";
	rename -uid "4F92E4CA-4132-080E-825C-C5B5895D54C5";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root|joint_B1|joint_B2|joint_B3\";";
createNode joint -n "joint_B4" -p "|RIG|BRG|root|joint_B1|joint_B2|joint_B3";
	rename -uid "A2F881C7-42A4-4621-48F4-B0847DE61194";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root|joint_B1|joint_B2|joint_B3|joint_B4\";";
createNode parentConstraint -n "joint_B4_PRCST" -p "|RIG|BRG|root|joint_B1|joint_B2|joint_B3|joint_B4";
	rename -uid "0152E2AB-4773-D349-2C85-818FF5D2C8F8";
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
	setAttr ".rst" -type "double3" 2 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_B3_PRCST" -p "|RIG|BRG|root|joint_B1|joint_B2|joint_B3";
	rename -uid "0F0609BC-4FBC-45DD-9C85-E4BCF60434B1";
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
	setAttr ".rst" -type "double3" 2 0 -1 ;
	setAttr -k on ".w0";
createNode joint -n "joint_B5" -p "|RIG|BRG|root|joint_B1|joint_B2";
	rename -uid "F2970DC5-458D-394C-47EA-C3BD19B04906";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root|joint_B1|joint_B2|joint_B5\";";
createNode joint -n "joint_B6" -p "|RIG|BRG|root|joint_B1|joint_B2|joint_B5";
	rename -uid "0F1E2AC9-424A-48F5-FFCA-B3A166E3C9D6";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6\";";
createNode parentConstraint -n "joint_B6_PRCST" -p "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6";
	rename -uid "CEE5BDB4-4487-6B2E-31F7-708D0DA7F797";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_joint_B6_BDRW0" -dv 1 -min 0 
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
	setAttr ".rst" -type "double3" 2 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_B5_PRCST" -p "|RIG|BRG|root|joint_B1|joint_B2|joint_B5";
	rename -uid "A71E0D91-4579-F386-39AB-F58EC3BD19DD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_joint_B5_BDRW0" -dv 1 -min 0 
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
	setAttr ".rst" -type "double3" 2 0 1 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_B2_PRCST" -p "|RIG|BRG|root|joint_B1|joint_B2";
	rename -uid "E8090E6D-41F5-0165-C346-1FADD5BA7DB9";
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
	setAttr ".rst" -type "double3" 2 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint_B1_PRCST" -p "|RIG|BRG|root|joint_B1";
	rename -uid "3596E0DE-4259-C2F6-0FD5-11A3757699EE";
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
	setAttr ".rst" -type "double3" 2 0 3 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "root_PRCST" -p "|RIG|BRG|root";
	rename -uid "5B2646F0-466F-6C3D-50DD-E9A489336BFC";
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
	rename -uid "A2958533-413A-3548-C038-258752142840";
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
	setAttr -l on ".mrsData" -type "string" "type=\"module\";moduleType=\"Root\";";
createNode transform -n "CTL_Root_GRP" -p "MOD_Root";
	rename -uid "02F020F7-4704-F93F-B1C8-B8BB4406A527";
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
	rename -uid "8C550995-4EF3-2C85-5E88-2E91B014D7BB";
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
	rename -uid "2F60C96E-4CA3-0DE8-51AB-568DC784948F";
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
createNode transform -n "AUX_Root_BDR" -p "CTL_RootGlobal";
	rename -uid "00A1420E-4EB0-1CBD-1D0C-E9936134C466";
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
	rename -uid "34D46F5B-4234-97D6-C2B1-EAB5E5703B33";
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
	rename -uid "6C757FB7-42CB-8123-EDC0-C5AB47DEE934";
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
	setAttr ".ss" -type "double3" 1 1 1 ;
	setAttr -l on ".ssx";
	setAttr -l on ".ssy";
	setAttr -l on ".ssz";
	setAttr -l on ".cn" -type "string" "Circle(Directional)";
createNode nurbsCurve -n "CTL_RootLocalShape1" -p "CTL_RootLocal";
	rename -uid "BCB21D76-417B-A461-99A8-37899A0F89FB";
	addAttr -ci true -sn "sc" -ln "sourceCurve" -dt "nurbsCurve";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 14 0 no 3
		19 4.2226777970000002 4.2226777970000002 4.2226777970000002 5 6 7 8 9 10 11
		 11.777322310000001 11.777322310000001 11.777322310000001 12.777322310000001 12.777322310000001
		 12.777322310000001 13.777322310000001 13.777322310000001 13.777322310000001
		17
		0.1736481785774231 0 0.98425531387329102
		0.37373894453048706 0 0.94802159070968628
		0.80770409107208252 0 0.72544729709625244
		1.1081942319869995 0 -1.1033708668950482e-14
		0.78361159563064575 0 -0.78361159563064575
		1.0979672032673804e-13 0 -1.1081942319869995
		-0.78361159563064575 0 -0.78361159563064575
		-1.1081942319869995 0 -2.3486711707432217e-12
		-0.80770403146743774 0 0.72544735670089722
		-0.37373891472816467 0 0.94802159070968628
		-0.17364808917045593 0 0.98425537347793579
		-0.1157655343413353 0 1.0565383434295654
		-0.057882767170667648 0 1.1282691955566406
		0 0 1.2000000476837158
		0.05788266658782959 0 1.1282691955566406
		0.11576533317565918 0 1.0565383434295654
		0.17364799976348877 0 0.98480755090713501
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
	rename -uid "EDFB02D9-4775-711F-0526-9E83E84CD107";
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
createNode transform -n "MOD_joint_A" -p "RIG";
	rename -uid "43F88F19-42DF-E606-7AC0-7C913221B0AB";
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
	setAttr -l on ".mrsData" -type "string" "type=\"module\";moduleType=\"FK\";";
createNode transform -n "CTL_joint_A_GRP" -p "MOD_joint_A";
	rename -uid "C1B577B7-4664-EB5E-DD4F-36BA25E309C5";
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
createNode transform -n "CTL_joint_A1_IDT" -p "CTL_joint_A_GRP";
	rename -uid "E8E92E88-456A-3BF8-AD7D-AF9249BE143D";
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
createNode transform -n "CTL_joint_A1" -p "CTL_joint_A1_IDT";
	rename -uid "CEF433D1-4A9D-2296-133B-27AC5B1E9995";
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
createNode transform -n "AUX_joint_A1_BDR" -p "CTL_joint_A1";
	rename -uid "DAD9D9A4-4E24-BBCA-F5B1-1E9DB59F1319";
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
createNode transform -n "CTL_joint_A2_IDT" -p "CTL_joint_A1";
	rename -uid "E986B12E-4F3F-DA85-142B-779B7E5CECF8";
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
createNode transform -n "CTL_joint_A2" -p "CTL_joint_A2_IDT";
	rename -uid "8C5CFDDC-4451-3E56-2A6F-B4AD7123F25B";
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
createNode transform -n "AUX_joint_A2_BDR" -p "CTL_joint_A2";
	rename -uid "9797CAF8-4757-C302-4A1A-238C0FE82E25";
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
createNode transform -n "CTL_joint_A3_IDT" -p "CTL_joint_A2";
	rename -uid "99D5D924-45C3-DB9D-0029-E1AD736A8697";
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
createNode transform -n "CTL_joint_A3" -p "CTL_joint_A3_IDT";
	rename -uid "A9F88B1B-4B8D-37A6-EB30-02A74D89FC5F";
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
createNode transform -n "AUX_joint_A3_BDR" -p "CTL_joint_A3";
	rename -uid "B413FA89-4E35-64DD-3D6D-3D8114A3BEBC";
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
createNode transform -n "CTL_joint_A4_IDT" -p "CTL_joint_A3";
	rename -uid "08299F69-475D-69BF-954C-D0A834AD45CB";
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
createNode transform -n "CTL_joint_A4" -p "CTL_joint_A4_IDT";
	rename -uid "A83AE263-4AF2-C1F3-FBFC-189A041920EE";
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
createNode transform -n "AUX_joint_A4_BDR" -p "CTL_joint_A4";
	rename -uid "EA0ED52B-4F48-84F1-02B4-E39391C47A8C";
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
createNode nurbsCurve -n "CTL_joint_A4Shape1" -p "CTL_joint_A4";
	rename -uid "677EAD30-4BC3-A9DB-1BB6-F7B82BD96C7B";
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
createNode nurbsCurve -n "CTL_joint_A3Shape1" -p "CTL_joint_A3";
	rename -uid "0E39407B-4EF4-2B0D-2CA5-35912A069CD3";
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
createNode orientConstraint -n "CTL_joint_A3_Dynamics_ORCST" -p "CTL_joint_A3";
	rename -uid "273D14D5-4816-9CFC-2A06-208AB22F2C4D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTL_joint_A3_DynamicsW0" -dv 1 -min 
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
createNode nurbsCurve -n "CTL_joint_A2Shape1" -p "CTL_joint_A2";
	rename -uid "C5811844-417C-70AB-C358-8382BF132865";
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
createNode orientConstraint -n "CTL_joint_A2_Dynamics_ORCST" -p "CTL_joint_A2";
	rename -uid "06AA7265-416E-3B70-D419-50BEE74E47CB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTL_joint_A2_DynamicsW0" -dv 1 -min 
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
createNode nurbsCurve -n "CTL_joint_A1Shape1" -p "CTL_joint_A1";
	rename -uid "2C998251-424A-3549-E7E5-43AE86B1189C";
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
createNode orientConstraint -n "CTL_joint_A1_Dynamics_ORCST" -p "CTL_joint_A1";
	rename -uid "AC438AA7-4075-4210-B8E3-AE8F761B5E6D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTL_joint_A1_DynamicsW0" -dv 1 -min 
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
createNode parentConstraint -n "CTL_joint_A1_IDT_PRCST" -p "CTL_joint_A1_IDT";
	rename -uid "57C7C113-4A43-BB84-4A1D-5BA96D862945";
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
	setAttr ".tg[0].tot" -type "double3" 2 0 0 ;
	setAttr ".rst" -type "double3" 2 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "MOD_joint_B" -p "RIG";
	rename -uid "F3A5F75B-4EAA-A374-69F9-CE9DF3EAEEE0";
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
	setAttr -l on ".mrsData" -type "string" "type=\"module\";moduleType=\"FK\";";
createNode transform -n "CTL_joint_B_GRP" -p "MOD_joint_B";
	rename -uid "FC95CCAF-4278-5A00-CC04-9A9EB63F2620";
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
createNode transform -n "CTL_joint_B1_IDT" -p "CTL_joint_B_GRP";
	rename -uid "909C7982-4EE3-AAE2-8676-559708B041E9";
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
createNode transform -n "CTL_joint_B1" -p "CTL_joint_B1_IDT";
	rename -uid "EEB67F06-473A-B8E8-DB7A-D3A5A9B4654F";
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
createNode transform -n "AUX_joint_B1_BDR" -p "CTL_joint_B1";
	rename -uid "A7535710-409D-0B7A-1BFC-76944C4805A8";
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
createNode transform -n "CTL_joint_B2_IDT" -p "CTL_joint_B1";
	rename -uid "149B3F7D-49DC-BBCE-0462-45B1A2DD9048";
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
createNode transform -n "CTL_joint_B2" -p "CTL_joint_B2_IDT";
	rename -uid "231F2889-4F44-20FC-71B3-49832D70994C";
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
createNode transform -n "AUX_joint_B2_BDR" -p "CTL_joint_B2";
	rename -uid "657C0852-48D4-7A62-9D90-9E8A7E6787FB";
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
createNode transform -n "CTL_joint_B3_IDT" -p "CTL_joint_B2";
	rename -uid "147ADF18-4668-6109-C944-6CBCE6113DA4";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 2 0 -1 ;
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
createNode transform -n "CTL_joint_B3" -p "CTL_joint_B3_IDT";
	rename -uid "983D6294-4C27-7D2A-BEFC-62A1CEA4D30C";
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
createNode transform -n "AUX_joint_B3_BDR" -p "CTL_joint_B3";
	rename -uid "FA4D55AA-45AC-E809-B09A-F3A22E8BFDF0";
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
createNode transform -n "CTL_joint_B4_IDT" -p "CTL_joint_B3";
	rename -uid "81827F1D-48AE-C7A4-FAE8-F0B1E278C92F";
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
createNode transform -n "CTL_joint_B4" -p "CTL_joint_B4_IDT";
	rename -uid "4D7022F1-4C88-9ACB-11D4-9A9876720F1A";
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
createNode transform -n "AUX_joint_B4_BDR" -p "CTL_joint_B4";
	rename -uid "58267A92-499E-0E32-1D72-1C9F606BFB61";
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
createNode nurbsCurve -n "CTL_joint_B4Shape1" -p "CTL_joint_B4";
	rename -uid "41AF072E-4BB1-96CC-CFC1-85BA1E4C31D2";
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
createNode nurbsCurve -n "CTL_joint_B3Shape1" -p "CTL_joint_B3";
	rename -uid "49C3C7C4-4FF9-6768-07A4-03BBEF4FEA80";
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
createNode parentConstraint -n "CTL_joint_B3_Dynamics_PRCST" -p "CTL_joint_B3";
	rename -uid "E7BE9A7E-4B3E-43E5-EEEE-35A8B9E5DEA7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTL_joint_B3_DynamicsW0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" 0 0 -4.4408920985006262e-16 ;
	setAttr -k on ".w0";
createNode transform -n "CTL_joint_B5_IDT" -p "CTL_joint_B2";
	rename -uid "0474EBE9-4597-D138-1991-9FA9018C0151";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 2 0 1 ;
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
createNode transform -n "CTL_joint_B5" -p "CTL_joint_B5_IDT";
	rename -uid "C98CF33E-4A1A-7370-7BC8-2A8D81C86D0F";
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
createNode transform -n "AUX_joint_B5_BDR" -p "CTL_joint_B5";
	rename -uid "5FFD495B-434D-14DB-1B46-96BA1DA80506";
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
createNode transform -n "CTL_joint_B6_IDT" -p "CTL_joint_B5";
	rename -uid "2888C91A-4687-FDD5-0FE5-0F9C547F6405";
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
createNode transform -n "CTL_joint_B6" -p "CTL_joint_B6_IDT";
	rename -uid "DDEBF3BD-4433-B06B-9A98-EA8D8986E381";
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
createNode transform -n "AUX_joint_B6_BDR" -p "CTL_joint_B6";
	rename -uid "B2AF2539-4277-E50A-08F8-6F8584BBF144";
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
createNode nurbsCurve -n "CTL_joint_B6Shape1" -p "CTL_joint_B6";
	rename -uid "62629873-4AF4-DF37-4B20-FBABC03258D3";
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
createNode nurbsCurve -n "CTL_joint_B5Shape1" -p "CTL_joint_B5";
	rename -uid "F9167E4B-4031-1882-F5AC-DE8BBCD29290";
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
createNode parentConstraint -n "CTL_joint_B5_Dynamics_PRCST" -p "CTL_joint_B5";
	rename -uid "43E2CF14-4B6F-5D7D-C91F-0C8F08103E0A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTL_joint_B5_DynamicsW0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" 8.8817841970012523e-16 0 0 ;
	setAttr -k on ".w0";
createNode nurbsCurve -n "CTL_joint_B2Shape1" -p "CTL_joint_B2";
	rename -uid "D75C66CB-4412-F0A7-CC1D-489395BB5779";
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
createNode orientConstraint -n "CTL_joint_B2_Dynamics_ORCST" -p "CTL_joint_B2";
	rename -uid "7390CCBF-4F44-141F-D211-28BBB2502922";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTL_joint_B2_DynamicsW0" -dv 1 -min 
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
createNode nurbsCurve -n "CTL_joint_B1Shape1" -p "CTL_joint_B1";
	rename -uid "6B9F1398-41F9-C18A-0D2F-56B6A9CE65C5";
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
createNode orientConstraint -n "CTL_joint_B1_Dynamics_ORCST" -p "CTL_joint_B1";
	rename -uid "96A236D2-44CA-7229-C634-5594B089DBBA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTL_joint_B1_DynamicsW0" -dv 1 -min 
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
createNode parentConstraint -n "CTL_joint_B1_IDT_PRCST" -p "CTL_joint_B1_IDT";
	rename -uid "B27D3DCD-411B-06C2-FC34-C995D03BEC35";
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
	setAttr ".tg[0].tot" -type "double3" 2 0 3 ;
	setAttr ".rst" -type "double3" 2 0 3 ;
	setAttr -k on ".w0";
createNode transform -n "BDN_GRP";
	rename -uid "7694E064-4389-1033-6F7F-5F8C778A1A8C";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr -l on ".bdnData" -type "string" "type=\"group\";groupType=\"bdn\";toolVersion=\"1.3.0\";";
createNode transform -n "Collider_GRP" -p "BDN_GRP";
	rename -uid "1375B2DA-4619-A727-E8A7-14BBAA4AE33C";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr -l on ".bdnData" -type "string" "type=\"group\";groupType=\"collider\";";
createNode transform -n "CapsuleCollider_SPC" -p "Collider_GRP";
	rename -uid "EA3BB754-420A-3E42-0C16-C98407CD23C3";
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
	setAttr ".t" -type "double3" -4 0 -4 ;
	setAttr -l on ".bdnData" -type "string" "type=\"space\";spaceType=\"collider\";";
	setAttr -l on ".colliderSource";
	setAttr -l on ".colliderAimTarget";
	setAttr -k on ".colliderRadiusA";
	setAttr -k on ".colliderRadiusB";
	setAttr -k on ".colliderLength";
	setAttr -k on ".colliderOffset";
	setAttr -k on ".colliderPivot";
createNode transform -n "CapsuleCollider" -p "CapsuleCollider_SPC";
	rename -uid "EC48BAD2-4D7E-1617-1B6E-E2955C7DCF97";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
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
	rename -uid "8A2FE64B-4150-7B3C-3E5B-6C80FDDC9F39";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"colliderComponent\";";
	setAttr -k on ".colliderRadiusA";
	setAttr -k on ".colliderRadiusB";
	setAttr -k on ".colliderLength";
	setAttr -k on ".colliderOffset";
	setAttr -k on ".colliderPivot";
createNode nurbsSurface -n "CapsuleCollider_SphereAShape" -p "CapsuleCollider_SphereA";
	rename -uid "D34D76FC-4826-4877-9553-39BD01AD46D3";
	setAttr -k off ".v";
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
	rename -uid "0524BFAF-489B-0E7E-C383-F2A731207237";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"colliderComponent\";";
	setAttr -k on ".colliderRadiusA";
	setAttr -k on ".colliderRadiusB";
	setAttr -k on ".colliderLength";
	setAttr -k on ".colliderOffset";
	setAttr -k on ".colliderPivot";
createNode nurbsSurface -n "CapsuleCollider_SphereBShape" -p "CapsuleCollider_SphereB";
	rename -uid "AF1B12AE-43E6-AA00-BE1D-A1A339B55F89";
	setAttr -k off ".v";
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
	rename -uid "C2AE846E-49A0-269B-E462-3B9F32797FF8";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"colliderComponent\";";
	setAttr -k on ".colliderRadiusA";
	setAttr -k on ".colliderRadiusB";
	setAttr -k on ".colliderLength";
	setAttr -k on ".colliderOffset";
	setAttr -k on ".colliderPivot";
createNode nurbsCurve -n "CapsuleCollider_CircleAShape" -p "CapsuleCollider_CircleA";
	rename -uid "4BE3231D-43CB-437A-D58F-C49C52D2306E";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "CapsuleCollider_CircleB" -p "CapsuleCollider";
	rename -uid "C15B395A-423A-AE49-AA61-418AF26721B7";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"colliderComponent\";";
	setAttr -k on ".colliderRadiusA";
	setAttr -k on ".colliderRadiusB";
	setAttr -k on ".colliderLength";
	setAttr -k on ".colliderOffset";
	setAttr -k on ".colliderPivot";
createNode nurbsCurve -n "CapsuleCollider_CircleBShape" -p "CapsuleCollider_CircleB";
	rename -uid "2BF85A04-49EB-E71F-3801-4F9D8DEDE648";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "CapsuleCollider_Loft" -p "CapsuleCollider";
	rename -uid "A56441AE-4821-C14D-8543-7BA735211F74";
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
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"colliderComponent\";";
	setAttr -k on ".colliderRadiusA";
	setAttr -k on ".colliderRadiusB";
	setAttr -k on ".colliderLength";
	setAttr -k on ".colliderOffset";
	setAttr -k on ".colliderPivot";
createNode nurbsSurface -n "CapsuleCollider_LoftShape" -p "CapsuleCollider_Loft";
	rename -uid "6672F987-43FD-0447-AF81-0091CDF361F6";
	setAttr -k off ".v";
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
	rename -uid "20478860-4429-81A7-6DA5-06ABC03B5E3E";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -ci true -sn "colliderSource" -ln "colliderSource" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderWidth" -ln "colliderWidth" -dv 1 -min 
		0.001 -at "double";
	addAttr -uap -ci true -k true -sn "colliderHeight" -ln "colliderHeight" -dv 1 -min 
		0.001 -at "double";
	setAttr ".t" -type "double3" -4 0 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"space\";spaceType=\"collider\";";
	setAttr -l on ".colliderSource";
	setAttr -k on ".colliderWidth";
	setAttr -k on ".colliderHeight";
createNode transform -n "InfinitePlaneCollider" -p "InfinitePlaneCollider_SPC";
	rename -uid "8FB96506-4151-FAF2-9E92-9B956A59D675";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -m -sn "colliderAffectedBy" -ln "colliderAffectedBy" -at "message";
	addAttr -ci true -k true -sn "colliderWidth" -ln "colliderWidth" -dv 1 -min 0.001 
		-at "double";
	addAttr -ci true -k true -sn "colliderHeight" -ln "colliderHeight" -dv 1 -min 0.001 
		-at "double";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".r" -type "double3" 0 0 -45 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"collider\";colliderType=\"infinitePlane\";";
	setAttr -s 3 ".colliderAffectedBy";
	setAttr -k on ".colliderWidth" 2;
	setAttr -k on ".colliderHeight" 2;
createNode nurbsSurface -n "InfinitePlaneColliderShape" -p "InfinitePlaneCollider";
	rename -uid "8ECD19CF-482F-3E32-5E47-2E914E30EC65";
	setAttr -k off ".v";
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
	rename -uid "7CB3C029-49E2-A2CE-DAB9-DF872956CCC6";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -ci true -sn "colliderSource" -ln "colliderSource" -dt "string";
	addAttr -uap -ci true -k true -sn "colliderRadius" -ln "colliderRadius" -dv 0.5 
		-min 0.001 -at "double";
	setAttr ".t" -type "double3" -4 0 4 ;
	setAttr -l on ".bdnData" -type "string" "type=\"space\";spaceType=\"collider\";";
	setAttr -l on ".colliderSource";
	setAttr -k on ".colliderRadius";
createNode transform -n "SphereCollider" -p "SphereCollider_SPC";
	rename -uid "081A0B47-4D31-98F7-CDB6-5AABB2EC2E04";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -m -sn "colliderAffectedBy" -ln "colliderAffectedBy" -at "message";
	addAttr -ci true -k true -sn "colliderRadius" -ln "colliderRadius" -dv 0.5 -min 
		0.001 -at "double";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"collider\";colliderType=\"sphere\";";
	setAttr -s 2 ".colliderAffectedBy";
	setAttr -k on ".colliderRadius" 2;
createNode nurbsSurface -n "SphereColliderShape" -p "SphereCollider";
	rename -uid "F6D77283-4CF0-8EC3-A4CC-E692AA8D8F34";
	setAttr -k off ".v";
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
createNode transform -n "Dynamics_GRP" -p "BDN_GRP";
	rename -uid "082ADF1E-42A4-D1F7-884D-F6B069CF899F";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr -l on ".bdnData" -type "string" "type=\"group\";groupType=\"dynamics\";";
createNode transform -n "CTL_joint_A1_SPC" -p "Dynamics_GRP";
	rename -uid "BA0D0443-4476-4E80-AD98-FCB00A5661D9";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindSource" -ln "bdnBindSource" -at "message";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".bdnData" -type "string" "type=\"space\";spaceType=\"dynamics\";";
createNode joint -n "CTL_joint_A1_Dynamics" -p "CTL_joint_A1_SPC";
	rename -uid "CAD4C826-42F0-79DF-19AD-BF819628C4E5";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindTarget" -ln "bdnBindTarget" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".radi" 0.5;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"dynamics\";jointType=\"normal\";";
createNode joint -n "CTL_joint_A2_Dynamics" -p "CTL_joint_A1_Dynamics";
	rename -uid "CA6C0C64-4EC3-4E2C-2E1D-0780F53CD39E";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindTarget" -ln "bdnBindTarget" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".t" -type "double3" 2 0 1.8873791418627661e-15 ;
	setAttr ".radi" 0.5;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"dynamics\";jointType=\"normal\";";
createNode joint -n "CTL_joint_A3_Dynamics" -p "CTL_joint_A2_Dynamics";
	rename -uid "2E0F57CA-4B3B-2F40-AD61-96820536915A";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindTarget" -ln "bdnBindTarget" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".radi" 0.5;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"dynamics\";jointType=\"normal\";";
createNode joint -n "CTL_joint_A3_Dynamics_End" -p "CTL_joint_A3_Dynamics";
	rename -uid "8B5EF2B7-44D0-734D-A28D-7DAD9D2DD4C1";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindTarget" -ln "bdnBindTarget" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".radi" 0.5;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"dynamics\";jointType=\"end\";";
createNode transform -n "CTL_joint_A3_Dynamics_End_Radius" -p "CTL_joint_A3_Dynamics_End";
	rename -uid "2A160A32-4A97-4879-F24D-8894A16C1A26";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on ".bdnData" -type "string" "type=\"radius\";";
createNode implicitSphere -n "CTL_joint_A3_Dynamics_End_RadiusShape" -p "CTL_joint_A3_Dynamics_End_Radius";
	rename -uid "E991ADCC-434B-5342-ED27-5AB2FD6C857A";
	setAttr -k off ".v";
createNode transform -n "CTL_joint_A3_Dynamics_Radius" -p "CTL_joint_A3_Dynamics";
	rename -uid "77F2551C-4803-128A-14E9-68B053D681AC";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on ".bdnData" -type "string" "type=\"radius\";";
createNode implicitSphere -n "CTL_joint_A3_Dynamics_RadiusShape" -p "CTL_joint_A3_Dynamics_Radius";
	rename -uid "48D67509-4657-BEDE-B617-30904FE10B31";
	setAttr -k off ".v";
createNode transform -n "CTL_joint_A2_Dynamics_Radius" -p "CTL_joint_A2_Dynamics";
	rename -uid "3C9D348E-4BF8-C5C7-F392-FD96E041CE63";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on ".bdnData" -type "string" "type=\"radius\";";
createNode implicitSphere -n "CTL_joint_A2_Dynamics_RadiusShape" -p "CTL_joint_A2_Dynamics_Radius";
	rename -uid "E1BBDF26-4E0E-54FA-E4F8-F8A941643C44";
	setAttr -k off ".v";
createNode parentConstraint -n "CTL_joint_A1_SPC_PRCST" -p "CTL_joint_A1_SPC";
	rename -uid "41ACD41C-49C7-CBEF-E24F-A4B0D1C73D3E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTL_joint_A1_IDTW0" -dv 1 -min 0 
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
	setAttr ".rst" -type "double3" 2 0 0 ;
	setAttr -k on ".w0";
createNode joint -n "CTL_joint_A1_Target" -p "CTL_joint_A1_SPC";
	rename -uid "C14BEBD2-43B6-8D9D-973E-5897E272F02D";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnSource" -ln "bdnSource" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 0 1 ;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"target\";jointType=\"normal\";";
createNode joint -n "CTL_joint_A2_Target" -p "CTL_joint_A1_Target";
	rename -uid "280FA2E0-4343-D0F1-293B-74B0E0857EB3";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnSource" -ln "bdnSource" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".t" -type "double3" 2 0 1.8873791418627661e-15 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 0 1 ;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"target\";jointType=\"normal\";";
createNode joint -n "CTL_joint_A3_Target" -p "CTL_joint_A2_Target";
	rename -uid "6BA881B1-4A13-91A3-7569-A78A9882AF22";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnSource" -ln "bdnSource" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 0 1 ;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"target\";jointType=\"normal\";";
createNode transform -n "CTL_joint_B1_SPC" -p "Dynamics_GRP";
	rename -uid "3A79B7D2-48AA-C8F2-5724-0FAC9B32ABE1";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindSource" -ln "bdnBindSource" -at "message";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".bdnData" -type "string" "type=\"space\";spaceType=\"dynamics\";";
createNode joint -n "CTL_joint_B1_Dynamics" -p "CTL_joint_B1_SPC";
	rename -uid "4499F2F6-40C5-B4E0-F660-D2A57D31183C";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindTarget" -ln "bdnBindTarget" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".radi" 0.5;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"dynamics\";jointType=\"normal\";";
createNode joint -n "CTL_joint_B2_Dynamics" -p "CTL_joint_B1_Dynamics";
	rename -uid "85481DD0-44B2-314F-A07B-3D8778DE548C";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindTarget" -ln "bdnBindTarget" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".radi" 0.5;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"dynamics\";jointType=\"normal\";";
createNode transform -n "CTL_joint_B3_Dynamics_Branch_SPC" -p "CTL_joint_B2_Dynamics";
	rename -uid "37A40D2D-4554-DD4D-CE10-DFB71890A3C6";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindSource" -ln "bdnBindSource" -at "message";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 26.565051177078022 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".bdnData" -type "string" "type=\"space\";spaceType=\"branch\";";
createNode joint -n "CTL_joint_B3_Dynamics_Branch" -p "CTL_joint_B3_Dynamics_Branch_SPC";
	rename -uid "D47FBBDF-4C33-8806-38F3-7FB966576CEC";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindTarget" -ln "bdnBindTarget" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".radi" 0.5;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"dynamics\";jointType=\"normal\";";
createNode joint -n "CTL_joint_B3_Dynamics" -p "CTL_joint_B3_Dynamics_Branch";
	rename -uid "47CB6D79-45A0-BD82-D8FA-E9AA67EA32D2";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindTarget" -ln "bdnBindTarget" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".t" -type "double3" 2.2360679774997898 0 8.8817841970012523e-16 ;
	setAttr ".jo" -type "double3" 0 -26.565051177078026 0 ;
	setAttr ".radi" 0.5;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"dynamics\";jointType=\"branch\";";
createNode joint -n "CTL_joint_B3_Dynamics_End" -p "CTL_joint_B3_Dynamics";
	rename -uid "DFEAB33F-4E28-D8C3-AC09-3C8A96258468";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindTarget" -ln "bdnBindTarget" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".r" -type "double3" 0 3.1805546814635168e-15 0 ;
	setAttr ".jo" -type "double3" 0 -3.1805546814635168e-15 0 ;
	setAttr ".radi" 0.5;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"dynamics\";jointType=\"end\";";
createNode transform -n "CTL_joint_B3_Dynamics_End_Radius" -p "CTL_joint_B3_Dynamics_End";
	rename -uid "3F88087A-494B-2BF0-87CA-8A8703C216BD";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on ".bdnData" -type "string" "type=\"radius\";";
createNode implicitSphere -n "CTL_joint_B3_Dynamics_End_RadiusShape" -p "CTL_joint_B3_Dynamics_End_Radius";
	rename -uid "EC267035-4468-5650-5DC8-1DBA5D290BFA";
	setAttr -k off ".v";
createNode transform -n "CTL_joint_B3_Dynamics_Radius" -p "CTL_joint_B3_Dynamics";
	rename -uid "E58A5681-4CA3-CE81-B3F7-08B824224FD6";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on ".bdnData" -type "string" "type=\"radius\";";
createNode implicitSphere -n "CTL_joint_B3_Dynamics_RadiusShape" -p "CTL_joint_B3_Dynamics_Radius";
	rename -uid "1A46734F-4C64-3789-7800-7D8F8E449DD4";
	setAttr -k off ".v";
createNode transform -n "CTL_joint_B3_Dynamics_Branch_Radius" -p "CTL_joint_B3_Dynamics_Branch";
	rename -uid "EB9716B8-486F-5C75-9F0A-FDBAB73B93E1";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on ".bdnData" -type "string" "type=\"radius\";";
createNode implicitSphere -n "CTL_joint_B3_Dynamics_Branch_RadiusShape" -p "CTL_joint_B3_Dynamics_Branch_Radius";
	rename -uid "6F2DAAFD-4DF2-74E5-5B86-51945497C9ED";
	setAttr -k off ".v";
createNode transform -n "CTL_joint_B5_Dynamics_Branch_SPC" -p "CTL_joint_B2_Dynamics";
	rename -uid "A8D89269-4510-CD36-BA48-3DB3E1925D4B";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindSource" -ln "bdnBindSource" -at "message";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 -26.56505117707799 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".bdnData" -type "string" "type=\"space\";spaceType=\"branch\";";
createNode joint -n "CTL_joint_B5_Dynamics_Branch" -p "CTL_joint_B5_Dynamics_Branch_SPC";
	rename -uid "EA53E4E3-4B7E-61C3-8472-07AA73419DB9";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindTarget" -ln "bdnBindTarget" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 -2.2204460492503131e-16 ;
	setAttr ".radi" 0.5;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"dynamics\";jointType=\"normal\";";
createNode joint -n "CTL_joint_B5_Dynamics" -p "CTL_joint_B5_Dynamics_Branch";
	rename -uid "4CE22B9E-4FCA-37CB-02C1-F1BBAF6E3D8D";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindTarget" -ln "bdnBindTarget" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".t" -type "double3" 2.2360679774997925 0 2.2204460492503131e-16 ;
	setAttr ".jo" -type "double3" 0 26.56505117707799 0 ;
	setAttr ".radi" 0.5;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"dynamics\";jointType=\"branch\";";
createNode joint -n "CTL_joint_B5_Dynamics_End" -p "CTL_joint_B5_Dynamics";
	rename -uid "E1AD4C47-425E-E3A5-6FE3-DDB4F6643B32";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindTarget" -ln "bdnBindTarget" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".radi" 0.5;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 0 0 ;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"dynamics\";jointType=\"end\";";
createNode transform -n "CTL_joint_B5_Dynamics_End_Radius" -p "CTL_joint_B5_Dynamics_End";
	rename -uid "0FA1292F-4A85-24D0-209A-C68D26601138";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr -l on ".bdnData" -type "string" "type=\"radius\";";
createNode implicitSphere -n "CTL_joint_B5_Dynamics_End_RadiusShape" -p "CTL_joint_B5_Dynamics_End_Radius";
	rename -uid "110D1E61-4814-99AB-2C32-9E95762CCF56";
	setAttr -k off ".v";
createNode transform -n "CTL_joint_B5_Dynamics_Radius" -p "CTL_joint_B5_Dynamics";
	rename -uid "4A228729-4A3A-9594-D9B9-F6B444B1F95F";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr -l on ".bdnData" -type "string" "type=\"radius\";";
createNode implicitSphere -n "CTL_joint_B5_Dynamics_RadiusShape" -p "CTL_joint_B5_Dynamics_Radius";
	rename -uid "DD2D8977-4D7A-6FA9-FCAC-FCB98018BBF8";
	setAttr -k off ".v";
createNode transform -n "CTL_joint_B2_Dynamics_Radius" -p "CTL_joint_B2_Dynamics";
	rename -uid "7D9F3AA6-413C-1A45-4928-C7BC4AAB65D3";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on ".bdnData" -type "string" "type=\"radius\";";
createNode implicitSphere -n "CTL_joint_B2_Dynamics_RadiusShape" -p "CTL_joint_B2_Dynamics_Radius";
	rename -uid "9249DF65-4AAB-94F4-9305-B9A45B7D8083";
	setAttr -k off ".v";
createNode parentConstraint -n "CTL_joint_B1_SPC_PRCST" -p "CTL_joint_B1_SPC";
	rename -uid "7D00A842-48C0-50E8-A480-3280685C0B89";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CTL_joint_B1_IDTW0" -dv 1 -min 0 
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
	setAttr ".rst" -type "double3" 2 0 3 ;
	setAttr -k on ".w0";
createNode joint -n "CTL_joint_B1_Target" -p "CTL_joint_B1_SPC";
	rename -uid "912981EA-45DF-E33A-5D97-38A9BDE5DC7B";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnSource" -ln "bdnSource" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 0 1 ;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"target\";jointType=\"normal\";";
createNode joint -n "CTL_joint_B2_Target" -p "CTL_joint_B1_Target";
	rename -uid "CB0250B7-4ED0-2D14-8556-3893E3A08F3B";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnSource" -ln "bdnSource" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 0 1 ;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"target\";jointType=\"normal\";";
createNode transform -n "CTL_joint_B3_Target_Branch_SPC" -p "CTL_joint_B2_Target";
	rename -uid "787FEA31-4353-2619-6184-1F86A2804DD5";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindSource" -ln "bdnBindSource" -at "message";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 26.565051177077994 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".bdnData" -type "string" "type=\"space\";spaceType=\"branch\";";
createNode joint -n "CTL_joint_B3_Target_Branch" -p "CTL_joint_B3_Target_Branch_SPC";
	rename -uid "F4FC01DF-4196-E405-4FDC-12A9B139CC67";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindTarget" -ln "bdnBindTarget" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 0 1 ;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"target\";jointType=\"normal\";";
createNode joint -n "CTL_joint_B3_Target" -p "CTL_joint_B3_Target_Branch";
	rename -uid "3DFE576D-4147-0386-38EA-DB846B1EAB2A";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnSource" -ln "bdnSource" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".t" -type "double3" 2.2360679774997902 0 0 ;
	setAttr ".jo" -type "double3" 0 -26.565051177077994 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 0 1 ;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"target\";jointType=\"branch\";";
createNode transform -n "CTL_joint_B5_Target_Branch_SPC" -p "CTL_joint_B2_Target";
	rename -uid "856DCB5D-4539-469D-D507-4E9CB10B2FB7";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindSource" -ln "bdnBindSource" -at "message";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 -26.56505117707799 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".bdnData" -type "string" "type=\"space\";spaceType=\"branch\";";
createNode joint -n "CTL_joint_B5_Target_Branch" -p "CTL_joint_B5_Target_Branch_SPC";
	rename -uid "3A75E8E2-41FD-AC05-9421-A7B2811BFE03";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnBindTarget" -ln "bdnBindTarget" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 -2.2204460492503131e-16 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 0 1 ;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"target\";jointType=\"normal\";";
createNode joint -n "CTL_joint_B5_Target" -p "CTL_joint_B5_Target_Branch";
	rename -uid "B926ED43-4DD6-9F2A-AB80-E88BB6D860B7";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	addAttr -s false -ci true -sn "bdnSource" -ln "bdnSource" -at "message";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".t" -type "double3" 2.2360679774997925 0 2.2204460492503131e-16 ;
	setAttr ".jo" -type "double3" 0 26.56505117707799 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 0 1 ;
	setAttr -l on ".bdnData" -type "string" "type=\"joint\";jointKind=\"target\";jointType=\"branch\";";
createNode transform -n "meshCollider1";
	rename -uid "8A312C50-4B7A-B623-A9BF-BAB4BF74DD52";
createNode mesh -n "meshColliderShape1" -p "meshCollider1";
	rename -uid "9C3BE00A-45B8-17EE-EA87-B79548BDC2BB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "force_A";
	rename -uid "62BE4A61-415E-C034-25DB-0D8540DD62ED";
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
	setAttr ".t" -type "double3" 10 0 0 ;
	setAttr -l on ".stx";
	setAttr -l on ".sty";
	setAttr -l on ".stz";
	setAttr -l on ".srx";
	setAttr -l on ".sry";
	setAttr -l on ".srz";
	setAttr ".ss" -type "double3" 0.5 2 0.5 ;
	setAttr -l on ".ssx";
	setAttr -l on ".ssy";
	setAttr -l on ".ssz";
	setAttr -l on ".cn" -type "string" "Pyramid(Diamond)";
createNode nurbsCurve -n "force_AShape" -p "force_A";
	rename -uid "318BA254-4E22-C8D3-0B1E-0CB732183C78";
	addAttr -ci true -sn "sc" -ln "sourceCurve" -dt "nurbsCurve";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		0 0 0.5
		0.5 0 0
		0 2 0
		0 0 0.5
		-0.5 0 0
		0 2 0
		0 0 -0.5
		-0.5 0 0
		0 0 -0.5
		0.5 0 0
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
createNode transform -n "force_B";
	rename -uid "1F38FCAB-43DB-6DB3-C7AE-AB866287433E";
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
	setAttr ".t" -type "double3" 10 0 3 ;
	setAttr -l on ".stx";
	setAttr -l on ".sty";
	setAttr -l on ".stz";
	setAttr -l on ".srx";
	setAttr -l on ".sry";
	setAttr -l on ".srz";
	setAttr ".ss" -type "double3" 0.5 2 0.5 ;
	setAttr -l on ".ssx";
	setAttr -l on ".ssy";
	setAttr -l on ".ssz";
	setAttr -l on ".cn" -type "string" "Pyramid(Diamond)";
createNode nurbsCurve -n "force_BShape" -p "force_B";
	rename -uid "3AA8408B-4A27-D9DC-A0B0-C29F69F8FD28";
	addAttr -ci true -sn "sc" -ln "sourceCurve" -dt "nurbsCurve";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		0 0 0.5
		0.5 0 0
		0 2 0
		0 0 0.5
		-0.5 0 0
		0 2 0
		0 0 -0.5
		-0.5 0 0
		0 0 -0.5
		0.5 0 0
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
createNode transform -n "meshCollider2";
	rename -uid "057754D9-4AB5-78A1-AE84-EE9958D9CA51";
createNode mesh -n "meshColliderShape2" -p "meshCollider2";
	rename -uid "CFC405FA-448E-F69C-CDB6-459B401F10BF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "91053A1F-4F63-8AC6-9CD1-DBAD058EBFA8";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "190693D6-4044-0EDA-1A7A-169D96D54A41";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "148287F3-426F-4FF0-D177-199DC8210BF9";
createNode displayLayerManager -n "layerManager";
	rename -uid "28051801-4933-7C38-21D2-4E8BB99DABF7";
createNode displayLayer -n "defaultLayer";
	rename -uid "F8B6C60E-4A73-3712-7C8E-7490F59A09DD";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "20C8B753-4BBC-A62E-257A-A39C95089F66";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "71B6D7E0-4309-884E-8CED-24AB1EDAD685";
	setAttr ".g" yes;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C444A304-4C43-C7D9-BC58-2AB88E9CFFAA";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 30 ";
	setAttr ".st" 6;
createNode makeNurbSphere -n "makeNurbSphere1";
	rename -uid "C0C04776-47D2-07B6-BDCA-64BDEC92886B";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".s" 4;
createNode makeNurbSphere -n "makeNurbSphere2";
	rename -uid "5D57D992-486F-F943-08F7-CEA455E14984";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".s" 4;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "BA373F22-4526-0280-BA62-6FAB26CEB72D";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "BBC2534C-4100-E3BE-7CAF-DE91748A78C2";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode loft -n "loft1";
	rename -uid "D0831FE1-4BDF-73C9-87E7-C5811CA69280";
	setAttr -s 2 ".ic";
createNode floatMath -n "CapsuleCollider_halfLength";
	rename -uid "FCF1BE1E-4316-D7FE-2BA0-848F52AAD26D";
	setAttr -l on "._fb" -0.5;
	setAttr "._cnd" 2;
createNode floatMath -n "CapsuleCollider_pivot";
	rename -uid "5AE3360B-4763-3386-5B52-2A9AEF24733D";
	setAttr "._cnd" 2;
createNode floatMath -n "CapsuleCollider_offsetA";
	rename -uid "BD824F8E-4737-6D0A-E3BE-56A75A9E446C";
createNode floatMath -n "CapsuleCollider_offsetB";
	rename -uid "35499FD8-4EED-F5D2-AED2-28BECDCE25D9";
createNode condition -n "CapsuleCollider_lengthDir";
	rename -uid "16EE6CB5-4813-E467-3125-41AEE66B125A";
	setAttr ".op" 4;
	setAttr ".ct" -type "float3" -1 0 0 ;
createNode setRange -n "CapsuleCollider_sweepRangeA";
	rename -uid "16126561-4EEF-71C5-E2E4-658FF3787BB8";
	setAttr ".n" -type "float3" -90 90 0 ;
	setAttr ".m" -type "float3" 90 270 0 ;
	setAttr ".on" -type "float3" -1 -1 0 ;
	setAttr ".om" -type "float3" 1 1 0 ;
createNode setRange -n "CapsuleCollider_sweepRangeB";
	rename -uid "CEE3F1C8-420F-F4D7-712F-01BC4CD1A1BE";
	setAttr ".n" -type "float3" 90 270 0 ;
	setAttr ".m" -type "float3" -90 90 0 ;
	setAttr ".on" -type "float3" -1 -1 0 ;
	setAttr ".om" -type "float3" 1 1 0 ;
createNode unitConversion -n "CapsuleCollider_sweepAStartUc";
	rename -uid "0CEEC4F0-42F1-B7E1-7256-C49D6DFF1190";
	setAttr ".cf" 0.01745329;
createNode unitConversion -n "CapsuleCollider_sweepAEndUc";
	rename -uid "3F25FE57-42B1-B042-C468-B7AA41C9E790";
	setAttr ".cf" 0.01745329;
createNode unitConversion -n "CapsuleCollider_sweepBStartUc";
	rename -uid "E25FFE16-457D-F64D-57C3-598F65ED85FC";
	setAttr ".cf" 0.01745329;
createNode unitConversion -n "CapsuleCollider_sweepBEndUc";
	rename -uid "FD64DF42-460A-9DBA-85C7-96AD0F05734F";
	setAttr ".cf" 0.01745329;
createNode makeNurbPlane -n "makeNurbPlane1";
	rename -uid "697E9094-42B1-3321-93A0-9E8D778C3EE5";
	setAttr ".ax" -type "double3" 0 1 0 ;
createNode floatMath -n "InfinitePlaneCollider_ratio";
	rename -uid "D8ACC261-46BF-76FE-F3E7-FA89955A44A0";
	setAttr "._cnd" 3;
createNode makeNurbSphere -n "makeNurbSphere3";
	rename -uid "84FB714E-4128-CFE9-1C63-9D99AE1A4EC0";
	setAttr ".ax" -type "double3" 0 1 0 ;
createNode polyTorus -n "polyTorus1";
	rename -uid "78F5C002-4072-4D59-572E-EE998496A970";
	setAttr ".r" 3;
	setAttr ".sr" 1.5;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "8A30ABFE-450D-37D1-0D19-AB97D81AE025";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6 -3.5527136788005009e-15 -6 1;
createNode polyTorus -n "polyTorus2";
	rename -uid "07FAFB7B-404D-B311-46CB-0EAE5E7E160E";
	setAttr ".r" 3;
	setAttr ".sr" 2;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "24CCC9BE-4E6C-FDF5-B8EF-C882084CE62A";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3 0 -10 1;
createNode boneDynamicsNode -n "CTL_joint_A1_Dynamics_BDN";
	rename -uid "0955CBE5-42AE-3084-E89B-8BB7429972E3";
	setAttr ".gm" 0.1;
	setAttr ".r" 0.6;
	setAttr -s 2 ".mc";
createNode boneDynamicsNode -n "CTL_joint_A2_Dynamics_BDN";
	rename -uid "CFE9902A-4A37-5F94-CD01-5DA7331D1B57";
	setAttr ".gm" 0.1;
	setAttr ".r" 0.6;
	setAttr -s 2 ".mc";
createNode boneDynamicsNode -n "CTL_joint_A3_Dynamics_BDN";
	rename -uid "5A7CE347-425C-B30D-7428-3E92C1A48E22";
	setAttr ".gm" 0.1;
	setAttr ".r" 0.6;
	setAttr -s 2 ".mc";
createNode boneDynamicsNode -n "CTL_joint_B1_Dynamics_BDN";
	rename -uid "2549D14C-4D65-15E0-27D1-54A8F0F53DCB";
	setAttr ".gm" 0.1;
	setAttr ".r" 0.6;
	setAttr -s 2 ".mc";
createNode boneDynamicsNode -n "CTL_joint_B2_Dynamics_BDN";
	rename -uid "75AE4463-4D77-3924-0176-AD8551315A6F";
	setAttr ".gm" 0.1;
	setAttr ".r" 0.6;
	setAttr -s 2 ".mc";
createNode boneDynamicsNode -n "CTL_joint_B3_Dynamics_Branch_BDN";
	rename -uid "3C7897CD-4304-67F4-B3B1-7DA344810F0D";
	setAttr ".gm" 0.1;
	setAttr ".r" 0.6;
	setAttr -s 2 ".mc";
createNode boneDynamicsNode -n "CTL_joint_B3_Dynamics_BDN";
	rename -uid "B64798D0-41C8-53B7-99A7-8F97B1D48060";
	setAttr ".gm" 0.1;
	setAttr ".r" 0.6;
	setAttr -s 2 ".mc";
createNode boneDynamicsNode -n "CTL_joint_B5_Dynamics_Branch_BDN";
	rename -uid "CBE6B1BC-48EB-76E9-D816-0D991DAAD6C7";
	setAttr ".gm" 0.1;
	setAttr ".r" 0.6;
	setAttr -s 2 ".mc";
createNode boneDynamicsNode -n "CTL_joint_B5_Dynamics_BDN";
	rename -uid "B502067F-47D3-C6C8-A859-318A0C00185F";
	setAttr ".gm" 0.1;
	setAttr ".r" 0.6;
	setAttr -s 2 ".mc";
createNode vectorProduct -n "force_A_forceVector";
	rename -uid "E5E6785B-402B-D84A-678E-3983BDBAAAA4";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 0 1 0 ;
	setAttr ".no" yes;
	setAttr -l on ".bdnData" -type "string" "type=\"force\";";
createNode vectorProduct -n "force_B_forceVector";
	rename -uid "8B42D819-445F-7004-0B60-ED8C265602A0";
	addAttr -ci true -sn "bdnData" -ln "bdnData" -dt "string";
	setAttr ".op" 3;
	setAttr ".i1" -type "float3" 0 1 0 ;
	setAttr ".no" yes;
	setAttr -l on ".bdnData" -type "string" "type=\"force\";";
createNode animCurveTU -n "CTL_joint_A1_Dynamics_BDN_damping";
	rename -uid "6216D6F0-49A4-92B2-373D-E895A586D350";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.1;
createNode animCurveTU -n "CTL_joint_A1_Dynamics_BDN_elasticity";
	rename -uid "4124E8C1-43D0-9146-3A2B-EE8884BE42C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 30;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "9AE2BA46-4A24-E4FC-48EA-FC9F6B2D5BA3";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -3639.2873654387017 -2264.4787090563109 ;
	setAttr ".tgi[0].vh" -type "double2" 1576.5777463894588 917.13306901838928 ;
	setAttr -s 16 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -874.28570556640625;
	setAttr ".tgi[0].ni[0].y" 217.14285278320312;
	setAttr ".tgi[0].ni[0].nvs" 18313;
	setAttr ".tgi[0].ni[1].x" -1645.7142333984375;
	setAttr ".tgi[0].ni[1].y" -1840;
	setAttr ".tgi[0].ni[1].nvs" 18313;
	setAttr ".tgi[0].ni[2].x" -1645.7142333984375;
	setAttr ".tgi[0].ni[2].y" -40;
	setAttr ".tgi[0].ni[2].nvs" 18313;
	setAttr ".tgi[0].ni[3].x" -1645.7142333984375;
	setAttr ".tgi[0].ni[3].y" -168.57142639160156;
	setAttr ".tgi[0].ni[3].nvs" 18313;
	setAttr ".tgi[0].ni[4].x" -1645.7142333984375;
	setAttr ".tgi[0].ni[4].y" -982.85711669921875;
	setAttr ".tgi[0].ni[4].nvs" 18313;
	setAttr ".tgi[0].ni[5].x" -1645.7142333984375;
	setAttr ".tgi[0].ni[5].y" -682.85711669921875;
	setAttr ".tgi[0].ni[5].nvs" 18313;
	setAttr ".tgi[0].ni[6].x" -1645.7142333984375;
	setAttr ".tgi[0].ni[6].y" -2097.142822265625;
	setAttr ".tgi[0].ni[6].nvs" 18313;
	setAttr ".tgi[0].ni[7].x" -1645.7142333984375;
	setAttr ".tgi[0].ni[7].y" -1197.142822265625;
	setAttr ".tgi[0].ni[7].nvs" 18313;
	setAttr ".tgi[0].ni[8].x" -1645.7142333984375;
	setAttr ".tgi[0].ni[8].y" 688.5714111328125;
	setAttr ".tgi[0].ni[8].nvs" 18313;
	setAttr ".tgi[0].ni[9].x" -617.14288330078125;
	setAttr ".tgi[0].ni[9].y" 217.14285278320312;
	setAttr ".tgi[0].ni[9].nvs" 18313;
	setAttr ".tgi[0].ni[10].x" -1388.5714111328125;
	setAttr ".tgi[0].ni[10].y" -340;
	setAttr ".tgi[0].ni[10].nvs" 18313;
	setAttr ".tgi[0].ni[11].x" -1645.7142333984375;
	setAttr ".tgi[0].ni[11].y" -1625.7142333984375;
	setAttr ".tgi[0].ni[11].nvs" 18313;
	setAttr ".tgi[0].ni[12].x" -1645.7142333984375;
	setAttr ".tgi[0].ni[12].y" -1411.4285888671875;
	setAttr ".tgi[0].ni[12].nvs" 18313;
	setAttr ".tgi[0].ni[13].x" -1645.7142333984375;
	setAttr ".tgi[0].ni[13].y" -340;
	setAttr ".tgi[0].ni[13].nvs" 18313;
	setAttr ".tgi[0].ni[14].x" -1645.7142333984375;
	setAttr ".tgi[0].ni[14].y" 860;
	setAttr ".tgi[0].ni[14].nvs" 18313;
	setAttr ".tgi[0].ni[15].x" -1645.7142333984375;
	setAttr ".tgi[0].ni[15].y" 345.71429443359375;
	setAttr ".tgi[0].ni[15].nvs" 18313;
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
connectAttr "|MDL|root|joint_B1|joint_B2.s" "|MDL|root|joint_B1|joint_B2|joint_B5.is"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.ctx" "|MDL|root|joint_B1|joint_B2|joint_B5.tx"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.cty" "|MDL|root|joint_B1|joint_B2|joint_B5.ty"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.ctz" "|MDL|root|joint_B1|joint_B2|joint_B5.tz"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.crx" "|MDL|root|joint_B1|joint_B2|joint_B5.rx"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.cry" "|MDL|root|joint_B1|joint_B2|joint_B5.ry"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.crz" "|MDL|root|joint_B1|joint_B2|joint_B5.rz"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5.s" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6.is"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.ctx" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6.tx"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.cty" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6.ty"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.ctz" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6.tz"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.crx" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6.rx"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.cry" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6.ry"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.crz" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6.rz"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6.ro" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.cro"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6.pim" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.cpim"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6.rp" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.crp"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6.rpt" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.crt"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6.jo" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.cjo"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6.t" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.tg[0].tt"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6.rp" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.tg[0].trp"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6.rpt" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.tg[0].trt"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6.r" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.tg[0].tr"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6.ro" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.tg[0].tro"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6.s" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.tg[0].ts"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6.pm" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6.jo" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.tg[0].tjo"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6.ssc" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.tg[0].tsc"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6.is" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.tg[0].tis"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.w0" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.tg[0].tw"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5.ro" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.cro"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5.pim" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.cpim"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5.rp" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.crp"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5.rpt" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.crt"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5.jo" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.cjo"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5.t" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.tg[0].tt"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5.rp" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.tg[0].trp"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5.rpt" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.tg[0].trt"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5.r" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.tg[0].tr"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5.ro" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.tg[0].tro"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5.s" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.tg[0].ts"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5.pm" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5.jo" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.tg[0].tjo"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5.ssc" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.tg[0].tsc"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5.is" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.tg[0].tis"
		;
connectAttr "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.w0" "|MDL|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.tg[0].tw"
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
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.ctx" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5.tx"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.cty" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5.ty"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.ctz" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5.tz"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.crx" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5.rx"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.cry" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5.ry"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.crz" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5.rz"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2.s" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5.is"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.ctx" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6.tx"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.cty" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6.ty"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.ctz" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6.tz"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.crx" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6.rx"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.cry" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6.ry"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.crz" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6.rz"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5.s" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6.is"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6.ro" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.cro"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6.pim" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.cpim"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6.rp" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.crp"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6.rpt" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.crt"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6.jo" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.cjo"
		;
connectAttr "AUX_joint_B6_BDR.t" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.tg[0].tt"
		;
connectAttr "AUX_joint_B6_BDR.rp" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.tg[0].trp"
		;
connectAttr "AUX_joint_B6_BDR.rpt" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.tg[0].trt"
		;
connectAttr "AUX_joint_B6_BDR.r" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.tg[0].tr"
		;
connectAttr "AUX_joint_B6_BDR.ro" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.tg[0].tro"
		;
connectAttr "AUX_joint_B6_BDR.s" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.tg[0].ts"
		;
connectAttr "AUX_joint_B6_BDR.pm" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.w0" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B6|joint_B6_PRCST.tg[0].tw"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5.ro" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.cro"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5.pim" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.cpim"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5.rp" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.crp"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5.rpt" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.crt"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5.jo" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.cjo"
		;
connectAttr "AUX_joint_B5_BDR.t" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.tg[0].tt"
		;
connectAttr "AUX_joint_B5_BDR.rp" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.tg[0].trp"
		;
connectAttr "AUX_joint_B5_BDR.rpt" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.tg[0].trt"
		;
connectAttr "AUX_joint_B5_BDR.r" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.tg[0].tr"
		;
connectAttr "AUX_joint_B5_BDR.ro" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.tg[0].tro"
		;
connectAttr "AUX_joint_B5_BDR.s" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.tg[0].ts"
		;
connectAttr "AUX_joint_B5_BDR.pm" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.tg[0].tpm"
		;
connectAttr "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.w0" "|RIG|BRG|root|joint_B1|joint_B2|joint_B5|joint_B5_PRCST.tg[0].tw"
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
connectAttr "AUX_Root_BDR.t" "|RIG|BRG|root|root_PRCST.tg[0].tt";
connectAttr "AUX_Root_BDR.rp" "|RIG|BRG|root|root_PRCST.tg[0].trp";
connectAttr "AUX_Root_BDR.rpt" "|RIG|BRG|root|root_PRCST.tg[0].trt";
connectAttr "AUX_Root_BDR.r" "|RIG|BRG|root|root_PRCST.tg[0].tr";
connectAttr "AUX_Root_BDR.ro" "|RIG|BRG|root|root_PRCST.tg[0].tro";
connectAttr "AUX_Root_BDR.s" "|RIG|BRG|root|root_PRCST.tg[0].ts";
connectAttr "AUX_Root_BDR.pm" "|RIG|BRG|root|root_PRCST.tg[0].tpm";
connectAttr "|RIG|BRG|root|root_PRCST.w0" "|RIG|BRG|root|root_PRCST.tg[0].tw";
connectAttr "CTL_joint_A1_IDT_PRCST.ctx" "CTL_joint_A1_IDT.tx" -l on;
connectAttr "CTL_joint_A1_IDT_PRCST.cty" "CTL_joint_A1_IDT.ty" -l on;
connectAttr "CTL_joint_A1_IDT_PRCST.ctz" "CTL_joint_A1_IDT.tz" -l on;
connectAttr "CTL_joint_A1_IDT_PRCST.crx" "CTL_joint_A1_IDT.rx" -l on;
connectAttr "CTL_joint_A1_IDT_PRCST.cry" "CTL_joint_A1_IDT.ry" -l on;
connectAttr "CTL_joint_A1_IDT_PRCST.crz" "CTL_joint_A1_IDT.rz" -l on;
connectAttr "CTL_joint_A1_Dynamics_ORCST.crx" "CTL_joint_A1.rx";
connectAttr "CTL_joint_A1_Dynamics_ORCST.cry" "CTL_joint_A1.ry";
connectAttr "CTL_joint_A1_Dynamics_ORCST.crz" "CTL_joint_A1.rz";
connectAttr "CTL_joint_A2_Dynamics_ORCST.crx" "CTL_joint_A2.rx";
connectAttr "CTL_joint_A2_Dynamics_ORCST.cry" "CTL_joint_A2.ry";
connectAttr "CTL_joint_A2_Dynamics_ORCST.crz" "CTL_joint_A2.rz";
connectAttr "CTL_joint_A3_Dynamics_ORCST.crx" "CTL_joint_A3.rx";
connectAttr "CTL_joint_A3_Dynamics_ORCST.cry" "CTL_joint_A3.ry";
connectAttr "CTL_joint_A3_Dynamics_ORCST.crz" "CTL_joint_A3.rz";
connectAttr "CTL_joint_A3.ro" "CTL_joint_A3_Dynamics_ORCST.cro";
connectAttr "CTL_joint_A3.pim" "CTL_joint_A3_Dynamics_ORCST.cpim";
connectAttr "CTL_joint_A3_Dynamics.r" "CTL_joint_A3_Dynamics_ORCST.tg[0].tr";
connectAttr "CTL_joint_A3_Dynamics.ro" "CTL_joint_A3_Dynamics_ORCST.tg[0].tro";
connectAttr "CTL_joint_A3_Dynamics.pm" "CTL_joint_A3_Dynamics_ORCST.tg[0].tpm";
connectAttr "CTL_joint_A3_Dynamics.jo" "CTL_joint_A3_Dynamics_ORCST.tg[0].tjo";
connectAttr "CTL_joint_A3_Dynamics_ORCST.w0" "CTL_joint_A3_Dynamics_ORCST.tg[0].tw"
		;
connectAttr "CTL_joint_A2.ro" "CTL_joint_A2_Dynamics_ORCST.cro";
connectAttr "CTL_joint_A2.pim" "CTL_joint_A2_Dynamics_ORCST.cpim";
connectAttr "CTL_joint_A2_Dynamics.r" "CTL_joint_A2_Dynamics_ORCST.tg[0].tr";
connectAttr "CTL_joint_A2_Dynamics.ro" "CTL_joint_A2_Dynamics_ORCST.tg[0].tro";
connectAttr "CTL_joint_A2_Dynamics.pm" "CTL_joint_A2_Dynamics_ORCST.tg[0].tpm";
connectAttr "CTL_joint_A2_Dynamics.jo" "CTL_joint_A2_Dynamics_ORCST.tg[0].tjo";
connectAttr "CTL_joint_A2_Dynamics_ORCST.w0" "CTL_joint_A2_Dynamics_ORCST.tg[0].tw"
		;
connectAttr "CTL_joint_A1.ro" "CTL_joint_A1_Dynamics_ORCST.cro";
connectAttr "CTL_joint_A1.pim" "CTL_joint_A1_Dynamics_ORCST.cpim";
connectAttr "CTL_joint_A1_Dynamics.r" "CTL_joint_A1_Dynamics_ORCST.tg[0].tr";
connectAttr "CTL_joint_A1_Dynamics.ro" "CTL_joint_A1_Dynamics_ORCST.tg[0].tro";
connectAttr "CTL_joint_A1_Dynamics.pm" "CTL_joint_A1_Dynamics_ORCST.tg[0].tpm";
connectAttr "CTL_joint_A1_Dynamics.jo" "CTL_joint_A1_Dynamics_ORCST.tg[0].tjo";
connectAttr "CTL_joint_A1_Dynamics_ORCST.w0" "CTL_joint_A1_Dynamics_ORCST.tg[0].tw"
		;
connectAttr "CTL_joint_A1_IDT.ro" "CTL_joint_A1_IDT_PRCST.cro";
connectAttr "CTL_joint_A1_IDT.pim" "CTL_joint_A1_IDT_PRCST.cpim";
connectAttr "CTL_joint_A1_IDT.rp" "CTL_joint_A1_IDT_PRCST.crp";
connectAttr "CTL_joint_A1_IDT.rpt" "CTL_joint_A1_IDT_PRCST.crt";
connectAttr "CTL_RootLocal.t" "CTL_joint_A1_IDT_PRCST.tg[0].tt";
connectAttr "CTL_RootLocal.rp" "CTL_joint_A1_IDT_PRCST.tg[0].trp";
connectAttr "CTL_RootLocal.rpt" "CTL_joint_A1_IDT_PRCST.tg[0].trt";
connectAttr "CTL_RootLocal.r" "CTL_joint_A1_IDT_PRCST.tg[0].tr";
connectAttr "CTL_RootLocal.ro" "CTL_joint_A1_IDT_PRCST.tg[0].tro";
connectAttr "CTL_RootLocal.s" "CTL_joint_A1_IDT_PRCST.tg[0].ts";
connectAttr "CTL_RootLocal.pm" "CTL_joint_A1_IDT_PRCST.tg[0].tpm";
connectAttr "CTL_joint_A1_IDT_PRCST.w0" "CTL_joint_A1_IDT_PRCST.tg[0].tw";
connectAttr "CTL_joint_B1_IDT_PRCST.ctx" "CTL_joint_B1_IDT.tx" -l on;
connectAttr "CTL_joint_B1_IDT_PRCST.cty" "CTL_joint_B1_IDT.ty" -l on;
connectAttr "CTL_joint_B1_IDT_PRCST.ctz" "CTL_joint_B1_IDT.tz" -l on;
connectAttr "CTL_joint_B1_IDT_PRCST.crx" "CTL_joint_B1_IDT.rx" -l on;
connectAttr "CTL_joint_B1_IDT_PRCST.cry" "CTL_joint_B1_IDT.ry" -l on;
connectAttr "CTL_joint_B1_IDT_PRCST.crz" "CTL_joint_B1_IDT.rz" -l on;
connectAttr "CTL_joint_B1_Dynamics_ORCST.crx" "CTL_joint_B1.rx";
connectAttr "CTL_joint_B1_Dynamics_ORCST.cry" "CTL_joint_B1.ry";
connectAttr "CTL_joint_B1_Dynamics_ORCST.crz" "CTL_joint_B1.rz";
connectAttr "CTL_joint_B2_Dynamics_ORCST.crx" "CTL_joint_B2.rx";
connectAttr "CTL_joint_B2_Dynamics_ORCST.cry" "CTL_joint_B2.ry";
connectAttr "CTL_joint_B2_Dynamics_ORCST.crz" "CTL_joint_B2.rz";
connectAttr "CTL_joint_B3_Dynamics_PRCST.ctx" "CTL_joint_B3.tx";
connectAttr "CTL_joint_B3_Dynamics_PRCST.cty" "CTL_joint_B3.ty";
connectAttr "CTL_joint_B3_Dynamics_PRCST.ctz" "CTL_joint_B3.tz";
connectAttr "CTL_joint_B3_Dynamics_PRCST.crx" "CTL_joint_B3.rx";
connectAttr "CTL_joint_B3_Dynamics_PRCST.cry" "CTL_joint_B3.ry";
connectAttr "CTL_joint_B3_Dynamics_PRCST.crz" "CTL_joint_B3.rz";
connectAttr "CTL_joint_B3.ro" "CTL_joint_B3_Dynamics_PRCST.cro";
connectAttr "CTL_joint_B3.pim" "CTL_joint_B3_Dynamics_PRCST.cpim";
connectAttr "CTL_joint_B3.rp" "CTL_joint_B3_Dynamics_PRCST.crp";
connectAttr "CTL_joint_B3.rpt" "CTL_joint_B3_Dynamics_PRCST.crt";
connectAttr "CTL_joint_B3_Dynamics.t" "CTL_joint_B3_Dynamics_PRCST.tg[0].tt";
connectAttr "CTL_joint_B3_Dynamics.rp" "CTL_joint_B3_Dynamics_PRCST.tg[0].trp";
connectAttr "CTL_joint_B3_Dynamics.rpt" "CTL_joint_B3_Dynamics_PRCST.tg[0].trt";
connectAttr "CTL_joint_B3_Dynamics.r" "CTL_joint_B3_Dynamics_PRCST.tg[0].tr";
connectAttr "CTL_joint_B3_Dynamics.ro" "CTL_joint_B3_Dynamics_PRCST.tg[0].tro";
connectAttr "CTL_joint_B3_Dynamics.s" "CTL_joint_B3_Dynamics_PRCST.tg[0].ts";
connectAttr "CTL_joint_B3_Dynamics.pm" "CTL_joint_B3_Dynamics_PRCST.tg[0].tpm";
connectAttr "CTL_joint_B3_Dynamics.jo" "CTL_joint_B3_Dynamics_PRCST.tg[0].tjo";
connectAttr "CTL_joint_B3_Dynamics.ssc" "CTL_joint_B3_Dynamics_PRCST.tg[0].tsc";
connectAttr "CTL_joint_B3_Dynamics.is" "CTL_joint_B3_Dynamics_PRCST.tg[0].tis";
connectAttr "CTL_joint_B3_Dynamics_PRCST.w0" "CTL_joint_B3_Dynamics_PRCST.tg[0].tw"
		;
connectAttr "CTL_joint_B5_Dynamics_PRCST.ctx" "CTL_joint_B5.tx";
connectAttr "CTL_joint_B5_Dynamics_PRCST.cty" "CTL_joint_B5.ty";
connectAttr "CTL_joint_B5_Dynamics_PRCST.ctz" "CTL_joint_B5.tz";
connectAttr "CTL_joint_B5_Dynamics_PRCST.crx" "CTL_joint_B5.rx";
connectAttr "CTL_joint_B5_Dynamics_PRCST.cry" "CTL_joint_B5.ry";
connectAttr "CTL_joint_B5_Dynamics_PRCST.crz" "CTL_joint_B5.rz";
connectAttr "CTL_joint_B5.ro" "CTL_joint_B5_Dynamics_PRCST.cro";
connectAttr "CTL_joint_B5.pim" "CTL_joint_B5_Dynamics_PRCST.cpim";
connectAttr "CTL_joint_B5.rp" "CTL_joint_B5_Dynamics_PRCST.crp";
connectAttr "CTL_joint_B5.rpt" "CTL_joint_B5_Dynamics_PRCST.crt";
connectAttr "CTL_joint_B5_Dynamics.t" "CTL_joint_B5_Dynamics_PRCST.tg[0].tt";
connectAttr "CTL_joint_B5_Dynamics.rp" "CTL_joint_B5_Dynamics_PRCST.tg[0].trp";
connectAttr "CTL_joint_B5_Dynamics.rpt" "CTL_joint_B5_Dynamics_PRCST.tg[0].trt";
connectAttr "CTL_joint_B5_Dynamics.r" "CTL_joint_B5_Dynamics_PRCST.tg[0].tr";
connectAttr "CTL_joint_B5_Dynamics.ro" "CTL_joint_B5_Dynamics_PRCST.tg[0].tro";
connectAttr "CTL_joint_B5_Dynamics.s" "CTL_joint_B5_Dynamics_PRCST.tg[0].ts";
connectAttr "CTL_joint_B5_Dynamics.pm" "CTL_joint_B5_Dynamics_PRCST.tg[0].tpm";
connectAttr "CTL_joint_B5_Dynamics.jo" "CTL_joint_B5_Dynamics_PRCST.tg[0].tjo";
connectAttr "CTL_joint_B5_Dynamics.ssc" "CTL_joint_B5_Dynamics_PRCST.tg[0].tsc";
connectAttr "CTL_joint_B5_Dynamics.is" "CTL_joint_B5_Dynamics_PRCST.tg[0].tis";
connectAttr "CTL_joint_B5_Dynamics_PRCST.w0" "CTL_joint_B5_Dynamics_PRCST.tg[0].tw"
		;
connectAttr "CTL_joint_B2.ro" "CTL_joint_B2_Dynamics_ORCST.cro";
connectAttr "CTL_joint_B2.pim" "CTL_joint_B2_Dynamics_ORCST.cpim";
connectAttr "CTL_joint_B2_Dynamics.r" "CTL_joint_B2_Dynamics_ORCST.tg[0].tr";
connectAttr "CTL_joint_B2_Dynamics.ro" "CTL_joint_B2_Dynamics_ORCST.tg[0].tro";
connectAttr "CTL_joint_B2_Dynamics.pm" "CTL_joint_B2_Dynamics_ORCST.tg[0].tpm";
connectAttr "CTL_joint_B2_Dynamics.jo" "CTL_joint_B2_Dynamics_ORCST.tg[0].tjo";
connectAttr "CTL_joint_B2_Dynamics_ORCST.w0" "CTL_joint_B2_Dynamics_ORCST.tg[0].tw"
		;
connectAttr "CTL_joint_B1.ro" "CTL_joint_B1_Dynamics_ORCST.cro";
connectAttr "CTL_joint_B1.pim" "CTL_joint_B1_Dynamics_ORCST.cpim";
connectAttr "CTL_joint_B1_Dynamics.r" "CTL_joint_B1_Dynamics_ORCST.tg[0].tr";
connectAttr "CTL_joint_B1_Dynamics.ro" "CTL_joint_B1_Dynamics_ORCST.tg[0].tro";
connectAttr "CTL_joint_B1_Dynamics.pm" "CTL_joint_B1_Dynamics_ORCST.tg[0].tpm";
connectAttr "CTL_joint_B1_Dynamics.jo" "CTL_joint_B1_Dynamics_ORCST.tg[0].tjo";
connectAttr "CTL_joint_B1_Dynamics_ORCST.w0" "CTL_joint_B1_Dynamics_ORCST.tg[0].tw"
		;
connectAttr "CTL_joint_B1_IDT.ro" "CTL_joint_B1_IDT_PRCST.cro";
connectAttr "CTL_joint_B1_IDT.pim" "CTL_joint_B1_IDT_PRCST.cpim";
connectAttr "CTL_joint_B1_IDT.rp" "CTL_joint_B1_IDT_PRCST.crp";
connectAttr "CTL_joint_B1_IDT.rpt" "CTL_joint_B1_IDT_PRCST.crt";
connectAttr "CTL_RootLocal.t" "CTL_joint_B1_IDT_PRCST.tg[0].tt";
connectAttr "CTL_RootLocal.rp" "CTL_joint_B1_IDT_PRCST.tg[0].trp";
connectAttr "CTL_RootLocal.rpt" "CTL_joint_B1_IDT_PRCST.tg[0].trt";
connectAttr "CTL_RootLocal.r" "CTL_joint_B1_IDT_PRCST.tg[0].tr";
connectAttr "CTL_RootLocal.ro" "CTL_joint_B1_IDT_PRCST.tg[0].tro";
connectAttr "CTL_RootLocal.s" "CTL_joint_B1_IDT_PRCST.tg[0].ts";
connectAttr "CTL_RootLocal.pm" "CTL_joint_B1_IDT_PRCST.tg[0].tpm";
connectAttr "CTL_joint_B1_IDT_PRCST.w0" "CTL_joint_B1_IDT_PRCST.tg[0].tw";
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
connectAttr "CTL_joint_A1_IDT.msg" "CTL_joint_A1_SPC.bdnBindSource";
connectAttr "CTL_joint_A1_SPC_PRCST.ctx" "CTL_joint_A1_SPC.tx" -l on;
connectAttr "CTL_joint_A1_SPC_PRCST.cty" "CTL_joint_A1_SPC.ty" -l on;
connectAttr "CTL_joint_A1_SPC_PRCST.ctz" "CTL_joint_A1_SPC.tz" -l on;
connectAttr "CTL_joint_A1_SPC_PRCST.crx" "CTL_joint_A1_SPC.rx" -l on;
connectAttr "CTL_joint_A1_SPC_PRCST.cry" "CTL_joint_A1_SPC.ry" -l on;
connectAttr "CTL_joint_A1_SPC_PRCST.crz" "CTL_joint_A1_SPC.rz" -l on;
connectAttr "CTL_joint_A1.msg" "CTL_joint_A1_Dynamics.bdnBindTarget";
connectAttr "CTL_joint_A1_Target.s" "CTL_joint_A1_Dynamics.s";
connectAttr "CTL_joint_A1_Dynamics_BDN.outr" "CTL_joint_A1_Dynamics.r";
connectAttr "CTL_joint_A1_Dynamics.s" "CTL_joint_A2_Dynamics.is";
connectAttr "CTL_joint_A2.msg" "CTL_joint_A2_Dynamics.bdnBindTarget";
connectAttr "CTL_joint_A2_Target.s" "CTL_joint_A2_Dynamics.s";
connectAttr "CTL_joint_A2_Dynamics_BDN.outr" "CTL_joint_A2_Dynamics.r";
connectAttr "CTL_joint_A2_Dynamics.s" "CTL_joint_A3_Dynamics.is";
connectAttr "CTL_joint_A3.msg" "CTL_joint_A3_Dynamics.bdnBindTarget";
connectAttr "CTL_joint_A3_Target.s" "CTL_joint_A3_Dynamics.s";
connectAttr "CTL_joint_A3_Dynamics_BDN.outr" "CTL_joint_A3_Dynamics.r";
connectAttr "CTL_joint_A3_Dynamics.s" "CTL_joint_A3_Dynamics_End.is";
connectAttr "CTL_joint_A3_Dynamics.s" "CTL_joint_A3_Dynamics_End.s";
connectAttr "CTL_joint_A3_Dynamics_BDN.r" "CTL_joint_A3_Dynamics_End_RadiusShape.rd"
		;
connectAttr "CTL_joint_A2_Dynamics_BDN.r" "CTL_joint_A3_Dynamics_RadiusShape.rd"
		;
connectAttr "CTL_joint_A1_Dynamics_BDN.r" "CTL_joint_A2_Dynamics_RadiusShape.rd"
		;
connectAttr "CTL_joint_A1_SPC.ro" "CTL_joint_A1_SPC_PRCST.cro";
connectAttr "CTL_joint_A1_SPC.pim" "CTL_joint_A1_SPC_PRCST.cpim";
connectAttr "CTL_joint_A1_SPC.rp" "CTL_joint_A1_SPC_PRCST.crp";
connectAttr "CTL_joint_A1_SPC.rpt" "CTL_joint_A1_SPC_PRCST.crt";
connectAttr "CTL_joint_A1_IDT.t" "CTL_joint_A1_SPC_PRCST.tg[0].tt";
connectAttr "CTL_joint_A1_IDT.rp" "CTL_joint_A1_SPC_PRCST.tg[0].trp";
connectAttr "CTL_joint_A1_IDT.rpt" "CTL_joint_A1_SPC_PRCST.tg[0].trt";
connectAttr "CTL_joint_A1_IDT.r" "CTL_joint_A1_SPC_PRCST.tg[0].tr";
connectAttr "CTL_joint_A1_IDT.ro" "CTL_joint_A1_SPC_PRCST.tg[0].tro";
connectAttr "CTL_joint_A1_IDT.s" "CTL_joint_A1_SPC_PRCST.tg[0].ts";
connectAttr "CTL_joint_A1_IDT.pm" "CTL_joint_A1_SPC_PRCST.tg[0].tpm";
connectAttr "CTL_joint_A1_SPC_PRCST.w0" "CTL_joint_A1_SPC_PRCST.tg[0].tw";
connectAttr "CTL_joint_A1.msg" "CTL_joint_A1_Target.bdnSource";
connectAttr "CTL_joint_A1_Target.s" "CTL_joint_A2_Target.is";
connectAttr "CTL_joint_A2.msg" "CTL_joint_A2_Target.bdnSource";
connectAttr "CTL_joint_A2_Target.s" "CTL_joint_A3_Target.is";
connectAttr "CTL_joint_A3.msg" "CTL_joint_A3_Target.bdnSource";
connectAttr "CTL_joint_B1_IDT.msg" "CTL_joint_B1_SPC.bdnBindSource";
connectAttr "CTL_joint_B1_SPC_PRCST.ctx" "CTL_joint_B1_SPC.tx" -l on;
connectAttr "CTL_joint_B1_SPC_PRCST.cty" "CTL_joint_B1_SPC.ty" -l on;
connectAttr "CTL_joint_B1_SPC_PRCST.ctz" "CTL_joint_B1_SPC.tz" -l on;
connectAttr "CTL_joint_B1_SPC_PRCST.crx" "CTL_joint_B1_SPC.rx" -l on;
connectAttr "CTL_joint_B1_SPC_PRCST.cry" "CTL_joint_B1_SPC.ry" -l on;
connectAttr "CTL_joint_B1_SPC_PRCST.crz" "CTL_joint_B1_SPC.rz" -l on;
connectAttr "CTL_joint_B1.msg" "CTL_joint_B1_Dynamics.bdnBindTarget";
connectAttr "CTL_joint_B1_Target.s" "CTL_joint_B1_Dynamics.s";
connectAttr "CTL_joint_B1_Dynamics_BDN.outr" "CTL_joint_B1_Dynamics.r";
connectAttr "CTL_joint_B1_Dynamics.s" "CTL_joint_B2_Dynamics.is";
connectAttr "CTL_joint_B2.msg" "CTL_joint_B2_Dynamics.bdnBindTarget";
connectAttr "CTL_joint_B2_Target.s" "CTL_joint_B2_Dynamics.s";
connectAttr "CTL_joint_B2_Dynamics_BDN.outr" "CTL_joint_B2_Dynamics.r";
connectAttr "CTL_joint_B2_Dynamics.msg" "CTL_joint_B3_Dynamics_Branch_SPC.bdnBindSource"
		;
connectAttr "CTL_joint_B3_Dynamics_Branch_BDN.outr" "CTL_joint_B3_Dynamics_Branch.r"
		;
connectAttr "CTL_joint_B3_Dynamics_Branch.s" "CTL_joint_B3_Dynamics.is";
connectAttr "CTL_joint_B3.msg" "CTL_joint_B3_Dynamics.bdnBindTarget";
connectAttr "CTL_joint_B3_Target.s" "CTL_joint_B3_Dynamics.s";
connectAttr "CTL_joint_B3_Dynamics_BDN.outr" "CTL_joint_B3_Dynamics.r";
connectAttr "CTL_joint_B3_Dynamics.s" "CTL_joint_B3_Dynamics_End.is";
connectAttr "CTL_joint_B3_Dynamics.s" "CTL_joint_B3_Dynamics_End.s";
connectAttr "CTL_joint_B3_Dynamics_BDN.r" "CTL_joint_B3_Dynamics_End_RadiusShape.rd"
		;
connectAttr "CTL_joint_B3_Dynamics_Branch_BDN.r" "CTL_joint_B3_Dynamics_RadiusShape.rd"
		;
connectAttr "CTL_joint_B2_Dynamics_BDN.r" "CTL_joint_B3_Dynamics_Branch_RadiusShape.rd"
		;
connectAttr "CTL_joint_B2_Dynamics.msg" "CTL_joint_B5_Dynamics_Branch_SPC.bdnBindSource"
		;
connectAttr "CTL_joint_B5_Dynamics_Branch_BDN.outr" "CTL_joint_B5_Dynamics_Branch.r"
		;
connectAttr "CTL_joint_B5_Dynamics_Branch.s" "CTL_joint_B5_Dynamics.is";
connectAttr "CTL_joint_B5.msg" "CTL_joint_B5_Dynamics.bdnBindTarget";
connectAttr "CTL_joint_B5_Target.s" "CTL_joint_B5_Dynamics.s";
connectAttr "CTL_joint_B5_Dynamics_BDN.outr" "CTL_joint_B5_Dynamics.r";
connectAttr "CTL_joint_B5_Dynamics.s" "CTL_joint_B5_Dynamics_End.is";
connectAttr "CTL_joint_B5_Dynamics.s" "CTL_joint_B5_Dynamics_End.s";
connectAttr "CTL_joint_B5_Dynamics_BDN.r" "CTL_joint_B5_Dynamics_End_RadiusShape.rd"
		;
connectAttr "CTL_joint_B5_Dynamics_Branch_BDN.r" "CTL_joint_B5_Dynamics_RadiusShape.rd"
		;
connectAttr "CTL_joint_B1_Dynamics_BDN.r" "CTL_joint_B2_Dynamics_RadiusShape.rd"
		;
connectAttr "CTL_joint_B1_SPC.ro" "CTL_joint_B1_SPC_PRCST.cro";
connectAttr "CTL_joint_B1_SPC.pim" "CTL_joint_B1_SPC_PRCST.cpim";
connectAttr "CTL_joint_B1_SPC.rp" "CTL_joint_B1_SPC_PRCST.crp";
connectAttr "CTL_joint_B1_SPC.rpt" "CTL_joint_B1_SPC_PRCST.crt";
connectAttr "CTL_joint_B1_IDT.t" "CTL_joint_B1_SPC_PRCST.tg[0].tt";
connectAttr "CTL_joint_B1_IDT.rp" "CTL_joint_B1_SPC_PRCST.tg[0].trp";
connectAttr "CTL_joint_B1_IDT.rpt" "CTL_joint_B1_SPC_PRCST.tg[0].trt";
connectAttr "CTL_joint_B1_IDT.r" "CTL_joint_B1_SPC_PRCST.tg[0].tr";
connectAttr "CTL_joint_B1_IDT.ro" "CTL_joint_B1_SPC_PRCST.tg[0].tro";
connectAttr "CTL_joint_B1_IDT.s" "CTL_joint_B1_SPC_PRCST.tg[0].ts";
connectAttr "CTL_joint_B1_IDT.pm" "CTL_joint_B1_SPC_PRCST.tg[0].tpm";
connectAttr "CTL_joint_B1_SPC_PRCST.w0" "CTL_joint_B1_SPC_PRCST.tg[0].tw";
connectAttr "CTL_joint_B1.msg" "CTL_joint_B1_Target.bdnSource";
connectAttr "CTL_joint_B1_Target.s" "CTL_joint_B2_Target.is";
connectAttr "CTL_joint_B2.msg" "CTL_joint_B2_Target.bdnSource";
connectAttr "CTL_joint_B2_Target.msg" "CTL_joint_B3_Target_Branch_SPC.bdnBindSource"
		;
connectAttr "CTL_joint_B3_Target_Branch.s" "CTL_joint_B3_Target.is";
connectAttr "CTL_joint_B3.msg" "CTL_joint_B3_Target.bdnSource";
connectAttr "CTL_joint_B2_Target.msg" "CTL_joint_B5_Target_Branch_SPC.bdnBindSource"
		;
connectAttr "CTL_joint_B5_Target_Branch.s" "CTL_joint_B5_Target.is";
connectAttr "CTL_joint_B5.msg" "CTL_joint_B5_Target.bdnSource";
connectAttr "transformGeometry1.og" "meshColliderShape1.i";
connectAttr "transformGeometry2.og" "meshColliderShape2.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
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
connectAttr "polyTorus1.out" "transformGeometry1.ig";
connectAttr "polyTorus2.out" "transformGeometry2.ig";
connectAttr "CTL_joint_A1_Dynamics.t" "CTL_joint_A1_Dynamics_BDN.bt";
connectAttr "CTL_joint_A1_Dynamics.jo" "CTL_joint_A1_Dynamics_BDN.bjo";
connectAttr "CTL_joint_A1_Dynamics.pm" "CTL_joint_A1_Dynamics_BDN.bpmtx";
connectAttr "CTL_joint_A1_Dynamics.pim" "CTL_joint_A1_Dynamics_BDN.bpimtx";
connectAttr "CTL_joint_A2_Dynamics.t" "CTL_joint_A1_Dynamics_BDN.et";
connectAttr "CTL_joint_A1_Dynamics.s" "CTL_joint_A1_Dynamics_BDN.bs";
connectAttr "CTL_joint_A1_Dynamics.is" "CTL_joint_A1_Dynamics_BDN.bis";
connectAttr "CTL_joint_A2_Dynamics.s" "CTL_joint_A1_Dynamics_BDN.es";
connectAttr ":time1.o" "CTL_joint_A1_Dynamics_BDN.t";
connectAttr "CTL_joint_A1_Target.r" "CTL_joint_A1_Dynamics_BDN.ro";
connectAttr "CapsuleCollider.colliderMatrixA" "CTL_joint_A1_Dynamics_BDN.cc[0].ccmtxa"
		;
connectAttr "CapsuleCollider.colliderMatrixB" "CTL_joint_A1_Dynamics_BDN.cc[0].ccmtxb"
		;
connectAttr "CapsuleCollider.colliderRadiusA" "CTL_joint_A1_Dynamics_BDN.cc[0].ccrada"
		;
connectAttr "CapsuleCollider.colliderRadiusB" "CTL_joint_A1_Dynamics_BDN.cc[0].ccradb"
		;
connectAttr "InfinitePlaneCollider.wm" "CTL_joint_A1_Dynamics_BDN.pc[0].pcmtx";
connectAttr "SphereCollider.wm" "CTL_joint_A1_Dynamics_BDN.sc[0].scmtx";
connectAttr "SphereCollider.colliderRadius" "CTL_joint_A1_Dynamics_BDN.sc[0].scrad"
		;
connectAttr "meshColliderShape1.o" "CTL_joint_A1_Dynamics_BDN.mc[0]";
connectAttr "meshColliderShape2.o" "CTL_joint_A1_Dynamics_BDN.mc[1]";
connectAttr "force_A_forceVector.o" "CTL_joint_A1_Dynamics_BDN.af";
connectAttr "CTL_RootGlobal.wm" "CTL_joint_A1_Dynamics_BDN.ofmtx";
connectAttr "CTL_joint_A1_Dynamics_BDN_damping.o" "CTL_joint_A1_Dynamics_BDN.damp"
		;
connectAttr "CTL_joint_A1_Dynamics_BDN_elasticity.o" "CTL_joint_A1_Dynamics_BDN.elas"
		;
connectAttr "CTL_joint_A2_Dynamics.t" "CTL_joint_A2_Dynamics_BDN.bt";
connectAttr "CTL_joint_A2_Dynamics.jo" "CTL_joint_A2_Dynamics_BDN.bjo";
connectAttr "CTL_joint_A2_Dynamics.pm" "CTL_joint_A2_Dynamics_BDN.bpmtx";
connectAttr "CTL_joint_A2_Dynamics.pim" "CTL_joint_A2_Dynamics_BDN.bpimtx";
connectAttr "CTL_joint_A3_Dynamics.t" "CTL_joint_A2_Dynamics_BDN.et";
connectAttr "CTL_joint_A2_Dynamics.s" "CTL_joint_A2_Dynamics_BDN.bs";
connectAttr "CTL_joint_A2_Dynamics.is" "CTL_joint_A2_Dynamics_BDN.bis";
connectAttr "CTL_joint_A3_Dynamics.s" "CTL_joint_A2_Dynamics_BDN.es";
connectAttr ":time1.o" "CTL_joint_A2_Dynamics_BDN.t";
connectAttr "CTL_joint_A2_Target.r" "CTL_joint_A2_Dynamics_BDN.ro";
connectAttr "CapsuleCollider.colliderMatrixA" "CTL_joint_A2_Dynamics_BDN.cc[0].ccmtxa"
		;
connectAttr "CapsuleCollider.colliderMatrixB" "CTL_joint_A2_Dynamics_BDN.cc[0].ccmtxb"
		;
connectAttr "CapsuleCollider.colliderRadiusA" "CTL_joint_A2_Dynamics_BDN.cc[0].ccrada"
		;
connectAttr "CapsuleCollider.colliderRadiusB" "CTL_joint_A2_Dynamics_BDN.cc[0].ccradb"
		;
connectAttr "InfinitePlaneCollider.wm" "CTL_joint_A2_Dynamics_BDN.pc[0].pcmtx";
connectAttr "SphereCollider.wm" "CTL_joint_A2_Dynamics_BDN.sc[0].scmtx";
connectAttr "SphereCollider.colliderRadius" "CTL_joint_A2_Dynamics_BDN.sc[0].scrad"
		;
connectAttr "meshColliderShape1.o" "CTL_joint_A2_Dynamics_BDN.mc[0]";
connectAttr "meshColliderShape2.o" "CTL_joint_A2_Dynamics_BDN.mc[1]";
connectAttr "force_A_forceVector.o" "CTL_joint_A2_Dynamics_BDN.af";
connectAttr "CTL_RootGlobal.wm" "CTL_joint_A2_Dynamics_BDN.ofmtx";
connectAttr "CTL_joint_A3_Dynamics.t" "CTL_joint_A3_Dynamics_BDN.bt";
connectAttr "CTL_joint_A3_Dynamics.jo" "CTL_joint_A3_Dynamics_BDN.bjo";
connectAttr "CTL_joint_A3_Dynamics.pm" "CTL_joint_A3_Dynamics_BDN.bpmtx";
connectAttr "CTL_joint_A3_Dynamics.pim" "CTL_joint_A3_Dynamics_BDN.bpimtx";
connectAttr "CTL_joint_A3_Dynamics_End.t" "CTL_joint_A3_Dynamics_BDN.et";
connectAttr "CTL_joint_A3_Dynamics.s" "CTL_joint_A3_Dynamics_BDN.bs";
connectAttr "CTL_joint_A3_Dynamics.is" "CTL_joint_A3_Dynamics_BDN.bis";
connectAttr "CTL_joint_A3_Dynamics_End.s" "CTL_joint_A3_Dynamics_BDN.es";
connectAttr ":time1.o" "CTL_joint_A3_Dynamics_BDN.t";
connectAttr "CTL_joint_A3_Target.r" "CTL_joint_A3_Dynamics_BDN.ro";
connectAttr "CapsuleCollider.colliderMatrixA" "CTL_joint_A3_Dynamics_BDN.cc[0].ccmtxa"
		;
connectAttr "CapsuleCollider.colliderMatrixB" "CTL_joint_A3_Dynamics_BDN.cc[0].ccmtxb"
		;
connectAttr "CapsuleCollider.colliderRadiusA" "CTL_joint_A3_Dynamics_BDN.cc[0].ccrada"
		;
connectAttr "CapsuleCollider.colliderRadiusB" "CTL_joint_A3_Dynamics_BDN.cc[0].ccradb"
		;
connectAttr "InfinitePlaneCollider.wm" "CTL_joint_A3_Dynamics_BDN.pc[0].pcmtx";
connectAttr "SphereCollider.wm" "CTL_joint_A3_Dynamics_BDN.sc[0].scmtx";
connectAttr "SphereCollider.colliderRadius" "CTL_joint_A3_Dynamics_BDN.sc[0].scrad"
		;
connectAttr "meshColliderShape1.o" "CTL_joint_A3_Dynamics_BDN.mc[0]";
connectAttr "meshColliderShape2.o" "CTL_joint_A3_Dynamics_BDN.mc[1]";
connectAttr "force_A_forceVector.o" "CTL_joint_A3_Dynamics_BDN.af";
connectAttr "CTL_RootGlobal.wm" "CTL_joint_A3_Dynamics_BDN.ofmtx";
connectAttr "CTL_joint_B1_Dynamics.t" "CTL_joint_B1_Dynamics_BDN.bt";
connectAttr "CTL_joint_B1_Dynamics.jo" "CTL_joint_B1_Dynamics_BDN.bjo";
connectAttr "CTL_joint_B1_Dynamics.pm" "CTL_joint_B1_Dynamics_BDN.bpmtx";
connectAttr "CTL_joint_B1_Dynamics.pim" "CTL_joint_B1_Dynamics_BDN.bpimtx";
connectAttr "CTL_joint_B2_Dynamics.t" "CTL_joint_B1_Dynamics_BDN.et";
connectAttr "CTL_joint_B1_Dynamics.s" "CTL_joint_B1_Dynamics_BDN.bs";
connectAttr "CTL_joint_B1_Dynamics.is" "CTL_joint_B1_Dynamics_BDN.bis";
connectAttr "CTL_joint_B2_Dynamics.s" "CTL_joint_B1_Dynamics_BDN.es";
connectAttr ":time1.o" "CTL_joint_B1_Dynamics_BDN.t";
connectAttr "CTL_joint_B1_Target.r" "CTL_joint_B1_Dynamics_BDN.ro";
connectAttr "CapsuleCollider.colliderMatrixA" "CTL_joint_B1_Dynamics_BDN.cc[0].ccmtxa"
		;
connectAttr "CapsuleCollider.colliderMatrixB" "CTL_joint_B1_Dynamics_BDN.cc[0].ccmtxb"
		;
connectAttr "CapsuleCollider.colliderRadiusA" "CTL_joint_B1_Dynamics_BDN.cc[0].ccrada"
		;
connectAttr "CapsuleCollider.colliderRadiusB" "CTL_joint_B1_Dynamics_BDN.cc[0].ccradb"
		;
connectAttr "InfinitePlaneCollider.wm" "CTL_joint_B1_Dynamics_BDN.pc[0].pcmtx";
connectAttr "SphereCollider.wm" "CTL_joint_B1_Dynamics_BDN.sc[0].scmtx";
connectAttr "SphereCollider.colliderRadius" "CTL_joint_B1_Dynamics_BDN.sc[0].scrad"
		;
connectAttr "meshColliderShape1.o" "CTL_joint_B1_Dynamics_BDN.mc[0]";
connectAttr "meshColliderShape2.o" "CTL_joint_B1_Dynamics_BDN.mc[1]";
connectAttr "force_B_forceVector.o" "CTL_joint_B1_Dynamics_BDN.af";
connectAttr "CTL_joint_B2_Dynamics.t" "CTL_joint_B2_Dynamics_BDN.bt";
connectAttr "CTL_joint_B2_Dynamics.jo" "CTL_joint_B2_Dynamics_BDN.bjo";
connectAttr "CTL_joint_B2_Dynamics.pm" "CTL_joint_B2_Dynamics_BDN.bpmtx";
connectAttr "CTL_joint_B2_Dynamics.pim" "CTL_joint_B2_Dynamics_BDN.bpimtx";
connectAttr "CTL_joint_B3_Dynamics_Branch.t" "CTL_joint_B2_Dynamics_BDN.et";
connectAttr "CTL_joint_B2_Dynamics.s" "CTL_joint_B2_Dynamics_BDN.bs";
connectAttr "CTL_joint_B2_Dynamics.is" "CTL_joint_B2_Dynamics_BDN.bis";
connectAttr "CTL_joint_B3_Dynamics_Branch.s" "CTL_joint_B2_Dynamics_BDN.es";
connectAttr ":time1.o" "CTL_joint_B2_Dynamics_BDN.t";
connectAttr "CTL_joint_B2_Target.r" "CTL_joint_B2_Dynamics_BDN.ro";
connectAttr "CapsuleCollider.colliderMatrixA" "CTL_joint_B2_Dynamics_BDN.cc[0].ccmtxa"
		;
connectAttr "CapsuleCollider.colliderMatrixB" "CTL_joint_B2_Dynamics_BDN.cc[0].ccmtxb"
		;
connectAttr "CapsuleCollider.colliderRadiusA" "CTL_joint_B2_Dynamics_BDN.cc[0].ccrada"
		;
connectAttr "CapsuleCollider.colliderRadiusB" "CTL_joint_B2_Dynamics_BDN.cc[0].ccradb"
		;
connectAttr "InfinitePlaneCollider.wm" "CTL_joint_B2_Dynamics_BDN.pc[0].pcmtx";
connectAttr "SphereCollider.wm" "CTL_joint_B2_Dynamics_BDN.sc[0].scmtx";
connectAttr "SphereCollider.colliderRadius" "CTL_joint_B2_Dynamics_BDN.sc[0].scrad"
		;
connectAttr "meshColliderShape1.o" "CTL_joint_B2_Dynamics_BDN.mc[0]";
connectAttr "meshColliderShape2.o" "CTL_joint_B2_Dynamics_BDN.mc[1]";
connectAttr "force_B_forceVector.o" "CTL_joint_B2_Dynamics_BDN.af";
connectAttr "CTL_joint_B3_Dynamics_Branch.t" "CTL_joint_B3_Dynamics_Branch_BDN.bt"
		;
connectAttr "CTL_joint_B3_Dynamics_Branch.jo" "CTL_joint_B3_Dynamics_Branch_BDN.bjo"
		;
connectAttr "CTL_joint_B3_Dynamics_Branch.pm" "CTL_joint_B3_Dynamics_Branch_BDN.bpmtx"
		;
connectAttr "CTL_joint_B3_Dynamics_Branch.pim" "CTL_joint_B3_Dynamics_Branch_BDN.bpimtx"
		;
connectAttr "CTL_joint_B3_Dynamics.t" "CTL_joint_B3_Dynamics_Branch_BDN.et";
connectAttr "CTL_joint_B3_Dynamics_Branch.s" "CTL_joint_B3_Dynamics_Branch_BDN.bs"
		;
connectAttr "CTL_joint_B3_Dynamics_Branch.is" "CTL_joint_B3_Dynamics_Branch_BDN.bis"
		;
connectAttr "CTL_joint_B3_Dynamics.s" "CTL_joint_B3_Dynamics_Branch_BDN.es";
connectAttr ":time1.o" "CTL_joint_B3_Dynamics_Branch_BDN.t";
connectAttr "CapsuleCollider.colliderMatrixA" "CTL_joint_B3_Dynamics_Branch_BDN.cc[0].ccmtxa"
		;
connectAttr "CapsuleCollider.colliderMatrixB" "CTL_joint_B3_Dynamics_Branch_BDN.cc[0].ccmtxb"
		;
connectAttr "CapsuleCollider.colliderRadiusA" "CTL_joint_B3_Dynamics_Branch_BDN.cc[0].ccrada"
		;
connectAttr "CapsuleCollider.colliderRadiusB" "CTL_joint_B3_Dynamics_Branch_BDN.cc[0].ccradb"
		;
connectAttr "InfinitePlaneCollider.wm" "CTL_joint_B3_Dynamics_Branch_BDN.pc[0].pcmtx"
		;
connectAttr "SphereCollider.wm" "CTL_joint_B3_Dynamics_Branch_BDN.sc[0].scmtx";
connectAttr "SphereCollider.colliderRadius" "CTL_joint_B3_Dynamics_Branch_BDN.sc[0].scrad"
		;
connectAttr "meshColliderShape1.o" "CTL_joint_B3_Dynamics_Branch_BDN.mc[0]";
connectAttr "meshColliderShape2.o" "CTL_joint_B3_Dynamics_Branch_BDN.mc[1]";
connectAttr "force_B_forceVector.o" "CTL_joint_B3_Dynamics_Branch_BDN.af";
connectAttr "CTL_joint_B3_Dynamics.t" "CTL_joint_B3_Dynamics_BDN.bt";
connectAttr "CTL_joint_B3_Dynamics.jo" "CTL_joint_B3_Dynamics_BDN.bjo";
connectAttr "CTL_joint_B3_Dynamics.pm" "CTL_joint_B3_Dynamics_BDN.bpmtx";
connectAttr "CTL_joint_B3_Dynamics.pim" "CTL_joint_B3_Dynamics_BDN.bpimtx";
connectAttr "CTL_joint_B3_Dynamics_End.t" "CTL_joint_B3_Dynamics_BDN.et";
connectAttr "CTL_joint_B3_Dynamics.s" "CTL_joint_B3_Dynamics_BDN.bs";
connectAttr "CTL_joint_B3_Dynamics.is" "CTL_joint_B3_Dynamics_BDN.bis";
connectAttr "CTL_joint_B3_Dynamics_End.s" "CTL_joint_B3_Dynamics_BDN.es";
connectAttr ":time1.o" "CTL_joint_B3_Dynamics_BDN.t";
connectAttr "CTL_joint_B3_Target.r" "CTL_joint_B3_Dynamics_BDN.ro";
connectAttr "CapsuleCollider.colliderMatrixA" "CTL_joint_B3_Dynamics_BDN.cc[0].ccmtxa"
		;
connectAttr "CapsuleCollider.colliderMatrixB" "CTL_joint_B3_Dynamics_BDN.cc[0].ccmtxb"
		;
connectAttr "CapsuleCollider.colliderRadiusA" "CTL_joint_B3_Dynamics_BDN.cc[0].ccrada"
		;
connectAttr "CapsuleCollider.colliderRadiusB" "CTL_joint_B3_Dynamics_BDN.cc[0].ccradb"
		;
connectAttr "InfinitePlaneCollider.wm" "CTL_joint_B3_Dynamics_BDN.pc[0].pcmtx";
connectAttr "SphereCollider.wm" "CTL_joint_B3_Dynamics_BDN.sc[0].scmtx";
connectAttr "SphereCollider.colliderRadius" "CTL_joint_B3_Dynamics_BDN.sc[0].scrad"
		;
connectAttr "meshColliderShape1.o" "CTL_joint_B3_Dynamics_BDN.mc[0]";
connectAttr "meshColliderShape2.o" "CTL_joint_B3_Dynamics_BDN.mc[1]";
connectAttr "force_B_forceVector.o" "CTL_joint_B3_Dynamics_BDN.af";
connectAttr "CTL_joint_B5_Dynamics_Branch.t" "CTL_joint_B5_Dynamics_Branch_BDN.bt"
		;
connectAttr "CTL_joint_B5_Dynamics_Branch.jo" "CTL_joint_B5_Dynamics_Branch_BDN.bjo"
		;
connectAttr "CTL_joint_B5_Dynamics_Branch.pm" "CTL_joint_B5_Dynamics_Branch_BDN.bpmtx"
		;
connectAttr "CTL_joint_B5_Dynamics_Branch.pim" "CTL_joint_B5_Dynamics_Branch_BDN.bpimtx"
		;
connectAttr "CTL_joint_B5_Dynamics.t" "CTL_joint_B5_Dynamics_Branch_BDN.et";
connectAttr "CTL_joint_B5_Dynamics_Branch.s" "CTL_joint_B5_Dynamics_Branch_BDN.bs"
		;
connectAttr "CTL_joint_B5_Dynamics_Branch.is" "CTL_joint_B5_Dynamics_Branch_BDN.bis"
		;
connectAttr "CTL_joint_B5_Dynamics.s" "CTL_joint_B5_Dynamics_Branch_BDN.es";
connectAttr ":time1.o" "CTL_joint_B5_Dynamics_Branch_BDN.t";
connectAttr "CapsuleCollider.colliderMatrixA" "CTL_joint_B5_Dynamics_Branch_BDN.cc[0].ccmtxa"
		;
connectAttr "CapsuleCollider.colliderMatrixB" "CTL_joint_B5_Dynamics_Branch_BDN.cc[0].ccmtxb"
		;
connectAttr "CapsuleCollider.colliderRadiusA" "CTL_joint_B5_Dynamics_Branch_BDN.cc[0].ccrada"
		;
connectAttr "CapsuleCollider.colliderRadiusB" "CTL_joint_B5_Dynamics_Branch_BDN.cc[0].ccradb"
		;
connectAttr "InfinitePlaneCollider.wm" "CTL_joint_B5_Dynamics_Branch_BDN.pc[0].pcmtx"
		;
connectAttr "SphereCollider.wm" "CTL_joint_B5_Dynamics_Branch_BDN.sc[0].scmtx";
connectAttr "SphereCollider.colliderRadius" "CTL_joint_B5_Dynamics_Branch_BDN.sc[0].scrad"
		;
connectAttr "meshColliderShape1.o" "CTL_joint_B5_Dynamics_Branch_BDN.mc[0]";
connectAttr "meshColliderShape2.o" "CTL_joint_B5_Dynamics_Branch_BDN.mc[1]";
connectAttr "force_B_forceVector.o" "CTL_joint_B5_Dynamics_Branch_BDN.af";
connectAttr "CTL_joint_B5_Dynamics.t" "CTL_joint_B5_Dynamics_BDN.bt";
connectAttr "CTL_joint_B5_Dynamics.jo" "CTL_joint_B5_Dynamics_BDN.bjo";
connectAttr "CTL_joint_B5_Dynamics.pm" "CTL_joint_B5_Dynamics_BDN.bpmtx";
connectAttr "CTL_joint_B5_Dynamics.pim" "CTL_joint_B5_Dynamics_BDN.bpimtx";
connectAttr "CTL_joint_B5_Dynamics_End.t" "CTL_joint_B5_Dynamics_BDN.et";
connectAttr "CTL_joint_B5_Dynamics.s" "CTL_joint_B5_Dynamics_BDN.bs";
connectAttr "CTL_joint_B5_Dynamics.is" "CTL_joint_B5_Dynamics_BDN.bis";
connectAttr "CTL_joint_B5_Dynamics_End.s" "CTL_joint_B5_Dynamics_BDN.es";
connectAttr ":time1.o" "CTL_joint_B5_Dynamics_BDN.t";
connectAttr "CTL_joint_B5_Target.r" "CTL_joint_B5_Dynamics_BDN.ro";
connectAttr "CapsuleCollider.colliderMatrixA" "CTL_joint_B5_Dynamics_BDN.cc[0].ccmtxa"
		;
connectAttr "CapsuleCollider.colliderMatrixB" "CTL_joint_B5_Dynamics_BDN.cc[0].ccmtxb"
		;
connectAttr "CapsuleCollider.colliderRadiusA" "CTL_joint_B5_Dynamics_BDN.cc[0].ccrada"
		;
connectAttr "CapsuleCollider.colliderRadiusB" "CTL_joint_B5_Dynamics_BDN.cc[0].ccradb"
		;
connectAttr "InfinitePlaneCollider.wm" "CTL_joint_B5_Dynamics_BDN.pc[0].pcmtx";
connectAttr "SphereCollider.wm" "CTL_joint_B5_Dynamics_BDN.sc[0].scmtx";
connectAttr "SphereCollider.colliderRadius" "CTL_joint_B5_Dynamics_BDN.sc[0].scrad"
		;
connectAttr "meshColliderShape1.o" "CTL_joint_B5_Dynamics_BDN.mc[0]";
connectAttr "meshColliderShape2.o" "CTL_joint_B5_Dynamics_BDN.mc[1]";
connectAttr "force_B_forceVector.o" "CTL_joint_B5_Dynamics_BDN.af";
connectAttr "force_A.wm" "force_A_forceVector.m";
connectAttr "force_B.wm" "force_B_forceVector.m";
connectAttr "CTL_joint_A1_Dynamics_BDN.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "SphereCollider.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "CTL_joint_A1_Dynamics_BDN_damping.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "CTL_joint_A1_Dynamics_BDN_elasticity.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "meshColliderShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "InfinitePlaneCollider.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr ":time1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "meshColliderShape2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "CTL_joint_A1_Dynamics.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "CTL_joint_A2_Dynamics_RadiusShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "CTL_joint_A2_Dynamics.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "CTL_joint_A1_Target.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "CTL_RootGlobal.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn";
connectAttr "CTL_joint_A2_Target.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "force_A_forceVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "CapsuleCollider.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "CapsuleCollider_SphereAShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "CapsuleCollider_SphereBShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "CapsuleCollider_LoftShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "InfinitePlaneColliderShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "SphereColliderShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "meshColliderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "meshColliderShape2.iog" ":initialShadingGroup.dsm" -na;
// End of node_referenced.ma
