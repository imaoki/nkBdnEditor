//Maya ASCII 2022 scene
//Name: rig_test.ma
//Last modified: Tue, Sep 24, 2024 07:39:43 AM
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
fileInfo "UUID" "A790E6EA-40E8-DBDA-EEDF-4B85274822FA";
createNode transform -s -n "persp";
	rename -uid "887BEFAE-4E8D-A848-532E-7FBB47527930";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 25.267582963303447 15.670260804316211 20.832477195290458 ;
	setAttr ".r" -type "double3" -27.938352729602379 44.999999999999972 -5.172681101354183e-14 ;
	setAttr ".rp" -type "double3" 1.7763568394002505e-15 1.3322676295501878e-15 0 ;
	setAttr ".rpt" -type "double3" -5.6631462156363648e-16 -2.0414866691352217e-16 -1.4810557365690008e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "BA97AAA9-4ED6-B96D-1C1B-1CBFFBE066EE";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 33.348234913732853;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 4.4351057680130008 0.045902907848358154 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "38089E7B-433E-2CF5-6C05-51A5EB2F17DF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "3C1C3AEA-4E46-0C7B-8ED5-CCBEEFBA2D62";
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
	rename -uid "742C0CA3-4109-BB22-0B6A-0ABC45F027EB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "51D27C3F-4512-6D4F-1321-92A2D1023F37";
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
	rename -uid "9766DA3D-4395-6927-494A-B0B329E1D3F3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "7E85577D-4FA3-4E69-09F3-3DA8ECBD3BBB";
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
	rename -uid "375E79EB-4F79-C245-4375-5C9C99082DEF";
createNode joint -n "root" -p "MDL_Test";
	rename -uid "608DD8C4-4E0D-5D37-99C9-F6A260B6B4B7";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "chainA1" -p "|MDL_Test|root";
	rename -uid "F403EBFF-4FB9-12B1-694F-F4AF1732AEFC";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "chainA2" -p "|MDL_Test|root|chainA1";
	rename -uid "F3985FE9-4C78-2094-F8F0-33A7053347B0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "chainA3" -p "|MDL_Test|root|chainA1|chainA2";
	rename -uid "D299B066-491D-053E-5EED-C78B8DD9F996";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "chainA4" -p "|MDL_Test|root|chainA1|chainA2|chainA3";
	rename -uid "7F1B3886-49D4-752F-0AEE-518C30C7B0BF";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "chainA5" -p "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4";
	rename -uid "C944D21C-4091-119A-32BC-159A9D52B41E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "chainA6" -p "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5";
	rename -uid "A4237E8F-4233-1DBB-15B3-4482B95C7387";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "chainA6_PRCST" -p "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6";
	rename -uid "CA854044-4484-F068-F823-C3A9C8350059";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chainA6W0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "chainA5_PRCST" -p "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5";
	rename -uid "58A2F126-48CD-6918-9756-DBB871D167F9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chainA5W0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "chainA4_PRCST" -p "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4";
	rename -uid "B0FF787F-4246-5AF2-371E-64BB42B38A0F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chainA4W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 5.3290705182007514e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "chainA3_PRCST" -p "|MDL_Test|root|chainA1|chainA2|chainA3";
	rename -uid "4BA7249F-482E-1018-422D-49A99AD53CCE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chainA3W0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "chainA2_PRCST" -p "|MDL_Test|root|chainA1|chainA2";
	rename -uid "676F3E32-4DBA-64C2-9C3F-7C81283DF43E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chainA2W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 1.7763568394002505e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "chainA1_PRCST" -p "|MDL_Test|root|chainA1";
	rename -uid "25A3E5E4-49F8-CFEC-2C8A-74BE4FBCF321";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chainA1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 1 0 -10 ;
	setAttr -k on ".w0";
createNode joint -n "chainB1" -p "|MDL_Test|root";
	rename -uid "ED8A5563-46C9-105F-971F-EEB1C1C75141";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "chainB2" -p "|MDL_Test|root|chainB1";
	rename -uid "144140A9-41CC-3B15-5701-A4B2FAFEDCBD";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "chainB3" -p "|MDL_Test|root|chainB1|chainB2";
	rename -uid "2C8634B7-46A9-760F-A587-F7B2F671A987";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "chainB4" -p "|MDL_Test|root|chainB1|chainB2|chainB3";
	rename -uid "7E964595-4A45-FAA1-0022-C7B9A2BD41CF";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "chainB5" -p "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4";
	rename -uid "11129236-4833-49E3-1223-D6BFBB8EAF10";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "chainB6" -p "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5";
	rename -uid "4D075407-4783-E368-9936-55A7BB38F5F9";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "chainB5_PRCST" -p "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5";
	rename -uid "14EB54BF-43F8-EF04-4279-DBB0C68BBA00";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chainB5W0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "chainB4_PRCST" -p "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4";
	rename -uid "0374CAFB-4CDF-34B9-EB36-E4A852319E7E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chainB4W0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "chainB3_PRCST" -p "|MDL_Test|root|chainB1|chainB2|chainB3";
	rename -uid "186E9010-40DC-D715-9382-C189B6274D45";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chainB3W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 1.7763568394002505e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "chainB2_PRCST" -p "|MDL_Test|root|chainB1|chainB2";
	rename -uid "ED3338BB-46AA-842D-9CD7-C091C359E6AB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chainB2W0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "chainB1_PRCST" -p "|MDL_Test|root|chainB1";
	rename -uid "033B8450-482F-F36B-E100-378936EF1555";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chainB1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 1 0 -7 ;
	setAttr -k on ".w0";
createNode joint -n "chainC1" -p "|MDL_Test|root";
	rename -uid "35808395-4183-93A9-1E22-349166F08063";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "chainC1_PRCST" -p "|MDL_Test|root|chainC1";
	rename -uid "FF861F14-4417-E362-2307-E381933CA773";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chainC1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 1 0 -4 ;
	setAttr -k on ".w0";
createNode joint -n "chainD1" -p "|MDL_Test|root";
	rename -uid "2C14F69F-4909-E0EB-AB15-D0B430FDED61";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "chainD2" -p "|MDL_Test|root|chainD1";
	rename -uid "648C0EA5-42A2-0425-DE2F-B0B56A4FC5EF";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "chainD3" -p "|MDL_Test|root|chainD1|chainD2";
	rename -uid "C7EC79F8-40A9-65ED-2C95-30A188BDF7C3";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "chainD4" -p "|MDL_Test|root|chainD1|chainD2|chainD3";
	rename -uid "DAD4060A-497E-692B-0781-69ABB7FE2B5D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "chainD5" -p "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4";
	rename -uid "DF8A77F0-4555-6658-140A-1BAB121FFF9D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "chainD5_PRCST" -p "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5";
	rename -uid "1B6047BC-4D34-E124-2F74-1F9802F88280";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chainD5W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 7.5495165674510645e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "chainD4_PRCST" -p "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4";
	rename -uid "E05B77B4-4BF1-D31E-D6E9-4F95544E7BEC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chainD4W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 -2.0000000000000107 ;
	setAttr -k on ".w0";
createNode joint -n "chainD6" -p "|MDL_Test|root|chainD1|chainD2|chainD3";
	rename -uid "D013D201-471C-5E6C-9019-558C410FD53F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "chainD7" -p "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6";
	rename -uid "E0626618-49E2-518A-773C-4C9332D18A06";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "chainD8" -p "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7";
	rename -uid "4EA8DC93-4A3A-81EC-E509-0D93E5A4D1E9";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "chainD8_PRCST" -p "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8";
	rename -uid "737BF3B1-4A85-EEF7-B314-9DAECAEA32F6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chainD8W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 1.8207657603852567e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "chainD7_PRCST" -p "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7";
	rename -uid "8620BDF8-44A8-4D23-BABE-0FA576A730D7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chainD7W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 6.2172489379008766e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "chainD6_PRCST" -p "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6";
	rename -uid "D88435EE-4BD6-CFD2-74FD-E1B22C517CA0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chainD6W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 1.9999999999999893 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "chainD3_PRCST" -p "|MDL_Test|root|chainD1|chainD2|chainD3";
	rename -uid "47A79D6B-48F6-2C4D-A150-BAA17FB20EB4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chainD3W0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "chainD2_PRCST" -p "|MDL_Test|root|chainD1|chainD2";
	rename -uid "FDECDCDC-4337-EEB7-D9F2-A785DD9FEDF7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chainD2W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 1.0658141036401503e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "chainD1_PRCST" -p "|MDL_Test|root|chainD1";
	rename -uid "FAA83421-4458-F3CD-7863-0787FD598B10";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chainD1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 1 0 1 ;
	setAttr -k on ".w0";
createNode joint -n "chainE1" -p "|MDL_Test|root";
	rename -uid "E5D868B4-4857-00F6-6BDD-F1824E38EC83";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "chainE2" -p "|MDL_Test|root|chainE1";
	rename -uid "C96C3B79-4163-B7F2-A97D-43AC3EE91245";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode joint -n "chainE3" -p "|MDL_Test|root|chainE1|chainE2";
	rename -uid "3E86C69A-458A-12B6-2634-84B7125A0216";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "chainE3_PRCST" -p "|MDL_Test|root|chainE1|chainE2|chainE3";
	rename -uid "FBD126AF-42E2-EABE-B4DD-8EABDB3A3BCD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chainE3W0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "chainE2_PRCST" -p "|MDL_Test|root|chainE1|chainE2";
	rename -uid "B59CC334-4ADA-2D72-8889-629D3E9282EA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chainE2W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 -2 ;
	setAttr -k on ".w0";
createNode joint -n "chainE4" -p "|MDL_Test|root|chainE1";
	rename -uid "6DBA9D73-4735-9C3C-D1C1-079FABD8FFB3";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "chainE4_PRCST" -p "|MDL_Test|root|chainE1|chainE4";
	rename -uid "A387C4A2-4623-33F0-F964-67B482112836";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chainE4W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 2 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "chainE1_PRCST" -p "|MDL_Test|root|chainE1";
	rename -uid "46070F8B-462F-CDC8-3431-D8975AFED87C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "chainE1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 1 0 8 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "root_PRCST" -p "|MDL_Test|root";
	rename -uid "D059E051-44FD-1271-B5F6-98A30E3655D2";
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
createNode transform -n "GID_Test";
	rename -uid "4390097F-4D21-E2F9-BB49-3BBA27848C3B";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".v" no;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";";
createNode transform -n "root" -p "GID_Test";
	rename -uid "90387F89-42A2-30F8-7644-7FAB1A3E8271";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root\";";
createNode transform -n "chainA1" -p "|GID_Test|root";
	rename -uid "58822D47-4516-4D08-36C8-51B59EBA5C5C";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 1 0 -10 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root|chainA1\";";
createNode transform -n "chainA2" -p "|GID_Test|root|chainA1";
	rename -uid "58B65A17-4743-E906-E54C-FF8BF465BE77";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 1.7763568394002505e-15 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root|chainA1|chainA2\";";
createNode transform -n "chainA3" -p "|GID_Test|root|chainA1|chainA2";
	rename -uid "513C0A63-4A95-9F11-E158-ADA3BFD534FF";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root|chainA1|chainA2|chainA3\";";
createNode transform -n "chainA4" -p "|GID_Test|root|chainA1|chainA2|chainA3";
	rename -uid "4CE46E07-42BD-86AE-2CDD-BFA2063FA4AE";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 5.3290705182007514e-15 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root|chainA1|chainA2|chainA3|chainA4\";";
createNode transform -n "chainA5" -p "|GID_Test|root|chainA1|chainA2|chainA3|chainA4";
	rename -uid "27A113E4-42FE-D6B0-3A84-BF9AFDD8C32C";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5\";";
createNode transform -n "chainA6" -p "|GID_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5";
	rename -uid "506706F8-4A29-E602-BA76-E5A182C9E17B";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6\";";
createNode transform -n "chainB1" -p "|GID_Test|root";
	rename -uid "00AECCA0-4CEF-AB7E-FB67-AF8CC96B3EFF";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 1 0 -7 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root|chainB1\";";
createNode transform -n "chainB2" -p "|GID_Test|root|chainB1";
	rename -uid "2B1FEF68-452A-48E6-AAB1-4CA57A08D0A3";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root|chainB1|chainB2\";";
createNode transform -n "chainB3" -p "|GID_Test|root|chainB1|chainB2";
	rename -uid "682D09A0-42F4-F2E7-3DAA-6C9A8123AAC3";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 1.7763568394002505e-15 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root|chainB1|chainB2|chainB3\";";
createNode transform -n "chainB4" -p "|GID_Test|root|chainB1|chainB2|chainB3";
	rename -uid "90B1D6A4-463B-12E7-B4EF-41AAC7080982";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root|chainB1|chainB2|chainB3|chainB4\";";
createNode transform -n "chainB5" -p "|GID_Test|root|chainB1|chainB2|chainB3|chainB4";
	rename -uid "8B793924-48E5-0846-17C4-5698AFE44DDE";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5\";";
createNode transform -n "chainC1" -p "|GID_Test|root";
	rename -uid "92F15A62-4ACC-5D59-DFBE-CC8185D21368";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 1 0 -4 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root|chainC1\";";
createNode transform -n "chainD1" -p "|GID_Test|root";
	rename -uid "8850F325-4CFD-BC67-EA9E-CFA58E2638C7";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 1 0 1 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root|chainD1\";";
createNode transform -n "chainD2" -p "|GID_Test|root|chainD1";
	rename -uid "50EB12CC-4B58-95BA-A136-1C89701A14C0";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 1.0658141036401503e-14 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root|chainD1|chainD2\";";
createNode transform -n "chainD3" -p "|GID_Test|root|chainD1|chainD2";
	rename -uid "A691A92C-4F9B-DA8B-48D3-B1B62C9EC234";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root|chainD1|chainD2|chainD3\";";
createNode transform -n "chainD4" -p "|GID_Test|root|chainD1|chainD2|chainD3";
	rename -uid "D864BDD2-42EF-3251-A688-CC9D1C5263E8";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 -2.0000000000000107 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root|chainD1|chainD2|chainD3|chainD4\";";
createNode transform -n "chainD5" -p "|GID_Test|root|chainD1|chainD2|chainD3|chainD4";
	rename -uid "1B386F5D-4468-3B76-6E32-9DB7E77381F9";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 7.5495165674510645e-15 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5\";";
createNode transform -n "chainD6" -p "|GID_Test|root|chainD1|chainD2|chainD3";
	rename -uid "F654E654-4E0A-4B46-20D8-6E9E4EB956C7";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 1.9999999999999893 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root|chainD1|chainD2|chainD3|chainD6\";";
createNode transform -n "chainD7" -p "|GID_Test|root|chainD1|chainD2|chainD3|chainD6";
	rename -uid "4001C859-45A4-CD38-B6B6-67B48F32AB76";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 6.2172489379008766e-15 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7\";";
createNode transform -n "chainD8" -p "|GID_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7";
	rename -uid "3AAAA765-4F01-D4DC-8603-B9A4E812F415";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 1.8207657603852567e-14 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8\";";
createNode transform -n "chainE1" -p "|GID_Test|root";
	rename -uid "06C47C85-419C-6461-B38C-EB92C2C30F87";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 1 0 8 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root|chainE1\";";
createNode transform -n "chainE2" -p "|GID_Test|root|chainE1";
	rename -uid "168E577E-40FE-727B-7F1D-9AAD140F4C40";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 -2 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root|chainE1|chainE2\";";
createNode transform -n "chainE3" -p "|GID_Test|root|chainE1|chainE2";
	rename -uid "71E91936-4251-D2DE-33A6-9A9853D00831";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root|chainE1|chainE2|chainE3\";";
createNode transform -n "chainE4" -p "|GID_Test|root|chainE1";
	rename -uid "017E1DB8-420A-D640-8103-8B998DEDF21F";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".t" -type "double3" 2 0 2 ;
	setAttr ".dh" yes;
	setAttr -l on ".mrsData" -type "string" "type=\"guide\";source=\"|MDL_Test|root|chainE1|chainE4\";";
createNode transform -n "RIG_Test";
	rename -uid "33E8207A-41C6-2E74-0D30-57B9F9900E1C";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr -l on ".mrsData" -type "string" "type=\"rig\";datetime=\"202409240731\";toolVersion=\"0.22.7\";";
createNode transform -n "BRG" -p "RIG_Test";
	rename -uid "D5414C4E-4AF3-011D-8998-5BB67E16DA66";
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
	rename -uid "112A17EC-41D9-5BC3-4461-10BE8D6F151A";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root\";";
createNode joint -n "chainA1" -p "|RIG_Test|BRG|root";
	rename -uid "1B8E35D0-4BA2-DEED-FC50-D199995B375A";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|chainA1\";";
createNode joint -n "chainA2" -p "|RIG_Test|BRG|root|chainA1";
	rename -uid "2BC2D89F-40B9-D749-0293-76AA1066256E";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|chainA1|chainA2\";";
createNode joint -n "chainA3" -p "|RIG_Test|BRG|root|chainA1|chainA2";
	rename -uid "5FE2F050-4D83-458F-7EE3-1BAEC2A86300";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|chainA1|chainA2|chainA3\";";
createNode joint -n "chainA4" -p "|RIG_Test|BRG|root|chainA1|chainA2|chainA3";
	rename -uid "6BEBAA0A-464D-41DB-1EA9-6BBB98213134";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|chainA1|chainA2|chainA3|chainA4\";";
createNode joint -n "chainA5" -p "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4";
	rename -uid "F73554B6-4636-BDA5-9C4A-D5B471E53553";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5\";";
createNode joint -n "chainA6" -p "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5";
	rename -uid "F9AFD9D3-4381-4488-3D4D-19830F6C5A19";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6\";";
createNode parentConstraint -n "chainA6_PRCST" -p "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6";
	rename -uid "6990B0FB-4D1C-B4B3-FC56-FDA60F277CD0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_chainA6_BDRW0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "chainA5_PRCST" -p "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5";
	rename -uid "9E1AC01E-4E6F-7872-D7EA-C881039F2E7E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_chainA5_BDRW0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "chainA4_PRCST" -p "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4";
	rename -uid "65E3FC41-45E0-24DF-A093-6599B17325F3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_chainA4_BDRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 5.3290705182007514e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "chainA3_PRCST" -p "|RIG_Test|BRG|root|chainA1|chainA2|chainA3";
	rename -uid "B5BBF280-4039-AA1B-FCD6-E695CC886F9B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_chainA3_BDRW0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "chainA2_PRCST" -p "|RIG_Test|BRG|root|chainA1|chainA2";
	rename -uid "8B5DD99B-4DCC-9C3F-92A5-5FB78317AC03";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_chainA2_BDRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 1.7763568394002505e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "chainA1_PRCST" -p "|RIG_Test|BRG|root|chainA1";
	rename -uid "B4F8E7C9-4CFB-37C5-9F83-CDB7AA1C83C7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_chainA1_BDRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 1 0 -10 ;
	setAttr -k on ".w0";
createNode joint -n "chainB1" -p "|RIG_Test|BRG|root";
	rename -uid "C4605AE9-4906-F204-2222-DD858BDA7655";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|chainB1\";";
createNode joint -n "chainB2" -p "|RIG_Test|BRG|root|chainB1";
	rename -uid "C5C058C3-4CE7-7822-EEA9-D29FF3A236F0";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|chainB1|chainB2\";";
createNode joint -n "chainB3" -p "|RIG_Test|BRG|root|chainB1|chainB2";
	rename -uid "C5F844ED-407C-AAA6-0FA6-B2BE10032709";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|chainB1|chainB2|chainB3\";";
createNode joint -n "chainB4" -p "|RIG_Test|BRG|root|chainB1|chainB2|chainB3";
	rename -uid "17F224C7-49C9-CDE1-EF01-ECA1E7A946DF";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|chainB1|chainB2|chainB3|chainB4\";";
createNode joint -n "chainB5" -p "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4";
	rename -uid "FC3DA6F7-426A-D08F-54DD-67B7040A7311";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5\";";
createNode parentConstraint -n "chainB5_PRCST" -p "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5";
	rename -uid "9C9616F8-4AFF-8158-3C3D-0395D862B27D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_chainB5_BDRW0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "chainB4_PRCST" -p "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4";
	rename -uid "9CAB3DE5-41C3-48E2-ACCD-4FB78443C756";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_chainB4_BDRW0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "chainB3_PRCST" -p "|RIG_Test|BRG|root|chainB1|chainB2|chainB3";
	rename -uid "F945D7BD-4CBF-2CB4-16EC-B49FDC20EB40";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_chainB3_BDRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 1.7763568394002505e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "chainB2_PRCST" -p "|RIG_Test|BRG|root|chainB1|chainB2";
	rename -uid "A3A3315D-46BF-394A-56CA-A491A0323466";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_chainB2_BDRW0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "chainB1_PRCST" -p "|RIG_Test|BRG|root|chainB1";
	rename -uid "029B0641-45A2-3B88-9499-BB83E23F1409";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_chainB1_BDRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 1 0 -7 ;
	setAttr -k on ".w0";
createNode joint -n "chainC1" -p "|RIG_Test|BRG|root";
	rename -uid "B411A7BC-4DC9-DB09-CDC3-69A25142C074";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|chainC1\";";
createNode parentConstraint -n "chainC1_PRCST" -p "|RIG_Test|BRG|root|chainC1";
	rename -uid "59E0DFE9-4956-3C66-0F22-729324A94CC0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_chainC1_BDRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 1 0 -4 ;
	setAttr -k on ".w0";
createNode joint -n "chainD1" -p "|RIG_Test|BRG|root";
	rename -uid "8994203E-487C-800B-E33B-699E2F779F95";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|chainD1\";";
createNode joint -n "chainD2" -p "|RIG_Test|BRG|root|chainD1";
	rename -uid "5138653E-4395-3ED9-33DA-45B34376E9A8";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|chainD1|chainD2\";";
createNode joint -n "chainD3" -p "|RIG_Test|BRG|root|chainD1|chainD2";
	rename -uid "2467643B-4826-FB49-AEAF-3A93D1EDEE2E";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|chainD1|chainD2|chainD3\";";
createNode joint -n "chainD4" -p "|RIG_Test|BRG|root|chainD1|chainD2|chainD3";
	rename -uid "0FB28758-4583-AE82-60BC-61A5A8718F91";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|chainD1|chainD2|chainD3|chainD4\";";
createNode joint -n "chainD5" -p "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4";
	rename -uid "EA4F8ADE-4565-98C1-8A9A-52B54E7ACD9A";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5\";";
createNode parentConstraint -n "chainD5_PRCST" -p "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5";
	rename -uid "CB5E5636-4ED1-3E09-F732-AFA150FEF8CE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_chainD5_BDRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 7.5495165674510645e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "chainD4_PRCST" -p "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4";
	rename -uid "C03E565C-40D6-D287-20E6-24A0F6ACB8DB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_chainD4_BDRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 -2.0000000000000107 ;
	setAttr -k on ".w0";
createNode joint -n "chainD6" -p "|RIG_Test|BRG|root|chainD1|chainD2|chainD3";
	rename -uid "4C4D4F57-46D3-3CFF-49FC-159AAC0CFA49";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|chainD1|chainD2|chainD3|chainD6\";";
createNode joint -n "chainD7" -p "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6";
	rename -uid "665ECBAE-4205-723A-77B2-B2861FBF36A4";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7\";";
createNode joint -n "chainD8" -p "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7";
	rename -uid "7007207E-4C27-E405-1DC0-76991B52088D";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8\";";
createNode parentConstraint -n "chainD8_PRCST" -p "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8";
	rename -uid "2C3AEF03-4F4E-9775-40CB-B5801BDDB9AD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_chainD8_BDRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 1.8207657603852567e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "chainD7_PRCST" -p "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7";
	rename -uid "00DE4F5A-4238-430E-1704-2FAA63821AC3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_chainD7_BDRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 6.2172489379008766e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "chainD6_PRCST" -p "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6";
	rename -uid "F2248B89-4718-2635-65F7-BA8930CE6825";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_chainD6_BDRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 1.9999999999999893 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "chainD3_PRCST" -p "|RIG_Test|BRG|root|chainD1|chainD2|chainD3";
	rename -uid "264842C1-4493-ABE3-DF08-689FD5E921F8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_chainD3_BDRW0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "chainD2_PRCST" -p "|RIG_Test|BRG|root|chainD1|chainD2";
	rename -uid "29D2672A-4073-EE15-3DC0-D98C97C7267A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_chainD2_BDRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 1.0658141036401503e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "chainD1_PRCST" -p "|RIG_Test|BRG|root|chainD1";
	rename -uid "D011F946-4A96-00BE-49BC-A0AC3F20FD7A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_chainD1_BDRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 1 0 1 ;
	setAttr -k on ".w0";
createNode joint -n "chainE1" -p "|RIG_Test|BRG|root";
	rename -uid "174114D2-4AA4-21AC-0864-E39DBE52E32D";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|chainE1\";";
createNode joint -n "chainE2" -p "|RIG_Test|BRG|root|chainE1";
	rename -uid "158B85F0-4F12-F994-7127-3CBB27385D7E";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|chainE1|chainE2\";";
createNode joint -n "chainE3" -p "|RIG_Test|BRG|root|chainE1|chainE2";
	rename -uid "DDF8B744-4DEB-2A5B-82ED-C9BD72EBA103";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|chainE1|chainE2|chainE3\";";
createNode parentConstraint -n "chainE3_PRCST" -p "|RIG_Test|BRG|root|chainE1|chainE2|chainE3";
	rename -uid "67B2EB3E-41CA-6E42-AA27-68B86C68411C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_chainE3_BDRW0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "chainE2_PRCST" -p "|RIG_Test|BRG|root|chainE1|chainE2";
	rename -uid "A3C57954-49C4-B8BE-B510-F0A5B5C69383";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_chainE2_BDRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 -2 ;
	setAttr -k on ".w0";
createNode joint -n "chainE4" -p "|RIG_Test|BRG|root|chainE1";
	rename -uid "DE642518-4C25-EF4D-85FF-D78716A96B60";
	addAttr -ci true -sn "mrsData" -ln "mrsData" -dt "string";
	setAttr ".ssc" no;
	setAttr ".radi" 0.5;
	setAttr -l on ".mrsData" -type "string" "type=\"bridge\";bind=\"|MDL_Test|root|chainE1|chainE4\";";
createNode parentConstraint -n "chainE4_PRCST" -p "|RIG_Test|BRG|root|chainE1|chainE4";
	rename -uid "86837687-4AAB-6843-0CF1-558753D6E39D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_chainE4_BDRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2 0 2 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "chainE1_PRCST" -p "|RIG_Test|BRG|root|chainE1";
	rename -uid "C6FB7404-461E-F75E-4928-B985E2560DC6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AUX_chainE1_BDRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 1 0 8 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "root_PRCST" -p "|RIG_Test|BRG|root";
	rename -uid "06B104E6-4A9F-A78A-CD99-09831F4626E1";
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
	rename -uid "D6849D7C-4A0F-2373-016F-C9A859A89849";
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
	rename -uid "29FF44C5-44C8-6023-0E6F-6E9D77B0A5DE";
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
	rename -uid "D6CAE38C-4978-25ED-B38A-06A29A967D66";
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
	rename -uid "5A985B3C-4F77-93B5-B172-F38B67E307C7";
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
createNode transform -n "AUX_Root_BDR" -p "CTL_RootGlobal";
	rename -uid "01BC9D84-419F-D87C-90D8-12A8AB65CA06";
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
	rename -uid "39267D82-4116-352E-226C-3E92D9721B60";
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
	rename -uid "7127C49E-4F1E-40DC-E41D-ADBE96089D97";
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
	setAttr ".ss" -type "double3" 1 1 1 ;
	setAttr -l on ".ssx";
	setAttr -l on ".ssy";
	setAttr -l on ".ssz";
	setAttr -l on ".cn" -type "string" "Circle(Directional)";
createNode nurbsCurve -n "CTL_RootLocalShape1" -p "CTL_RootLocal";
	rename -uid "BBED3F7F-408A-103C-70D6-BFBE4853076A";
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
	rename -uid "CF4E1355-41FB-3A1C-60DB-28B14E6BFFA6";
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
createNode transform -n "MOD_ChainA" -p "RIG_Test";
	rename -uid "19AA51FD-4204-8FF2-20A0-74BBA451DBFB";
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
createNode transform -n "CTL_ChainA_GRP" -p "MOD_ChainA";
	rename -uid "6F0AD056-406F-CFE4-9B16-3C8CC8E9F91E";
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
createNode transform -n "CTL_chainA1_IDT" -p "CTL_ChainA_GRP";
	rename -uid "78091A02-476A-E9D0-AA2D-49BD38BF46E6";
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
createNode transform -n "CTL_chainA1" -p "CTL_chainA1_IDT";
	rename -uid "10BE6506-48AA-ED80-1598-82B6AF86B7F5";
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
createNode transform -n "AUX_chainA1_BDR" -p "CTL_chainA1";
	rename -uid "8DDB76F2-4470-FFDB-7475-C1A8A7E34C31";
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
createNode transform -n "CTL_chainA2_IDT" -p "CTL_chainA1";
	rename -uid "65AB5003-4E07-E8D5-BD34-0CB0DDAAEBEC";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 2 0 1.7763568394002505e-15 ;
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
createNode transform -n "CTL_chainA2" -p "CTL_chainA2_IDT";
	rename -uid "290513FA-4FC1-20EF-7FE2-E6BF8A71F830";
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
createNode transform -n "AUX_chainA2_BDR" -p "CTL_chainA2";
	rename -uid "3BC9F1DF-4B3C-D61F-D684-6182B4EBE71D";
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
createNode transform -n "CTL_chainA3_IDT" -p "CTL_chainA2";
	rename -uid "30B8C83B-4DDE-AD80-C03E-6B88FFDCC0B8";
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
createNode transform -n "CTL_chainA3" -p "CTL_chainA3_IDT";
	rename -uid "400F343D-4C7C-7064-DB13-33BEECA808B8";
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
createNode transform -n "AUX_chainA3_BDR" -p "CTL_chainA3";
	rename -uid "8E0B1A83-49DA-E753-2904-E1B8DB066316";
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
createNode transform -n "CTL_chainA4_IDT" -p "CTL_chainA3";
	rename -uid "1E3A3894-43DB-FD2F-4645-24966B86BB0A";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 2 0 5.3290705182007514e-15 ;
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
createNode transform -n "CTL_chainA4" -p "CTL_chainA4_IDT";
	rename -uid "63DD04EF-41E0-6179-2F44-74B7FCC14D3A";
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
createNode transform -n "AUX_chainA4_BDR" -p "CTL_chainA4";
	rename -uid "89BA3442-4E86-28BB-B24C-4E887D5AB8B1";
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
createNode transform -n "CTL_chainA5_IDT" -p "CTL_chainA4";
	rename -uid "B0D4A3F2-4398-C33A-624C-7E8A424F1E09";
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
createNode transform -n "CTL_chainA5" -p "CTL_chainA5_IDT";
	rename -uid "38FDF156-4BF9-74A0-4F73-169B5A870CA2";
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
createNode transform -n "AUX_chainA5_BDR" -p "CTL_chainA5";
	rename -uid "BAE54591-4179-28DC-681C-509553572F5C";
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
createNode transform -n "CTL_chainA6_IDT" -p "CTL_chainA5";
	rename -uid "A9FA112F-45DB-B45C-9969-C5A360984D1C";
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
createNode transform -n "CTL_chainA6" -p "CTL_chainA6_IDT";
	rename -uid "2EC7D272-4A9C-44BE-8A71-6B92789B62C7";
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
createNode transform -n "AUX_chainA6_BDR" -p "CTL_chainA6";
	rename -uid "9A86099E-460A-21B2-7372-94895855C10B";
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
createNode nurbsCurve -n "CTL_chainA6Shape1" -p "CTL_chainA6";
	rename -uid "1E3AE896-4624-DBFA-5646-55A0F8D453B4";
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
createNode nurbsCurve -n "CTL_chainA5Shape1" -p "CTL_chainA5";
	rename -uid "5C54E17F-489D-87E2-D717-C1BCA2BA3B03";
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
createNode nurbsCurve -n "CTL_chainA4Shape1" -p "CTL_chainA4";
	rename -uid "EEC5BA72-472D-C975-E3CA-C4B8BA4A7C9B";
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
createNode nurbsCurve -n "CTL_chainA3Shape1" -p "CTL_chainA3";
	rename -uid "7A486C27-4CB6-1FE4-374B-1AA20EA40008";
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
createNode nurbsCurve -n "CTL_chainA2Shape1" -p "CTL_chainA2";
	rename -uid "7BD673C0-4055-F91C-49C5-7C9585026CBD";
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
createNode nurbsCurve -n "CTL_chainA1Shape1" -p "CTL_chainA1";
	rename -uid "6EBAB3C2-4240-CDA1-36C0-6B927C35A686";
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
createNode parentConstraint -n "CTL_chainA1_IDT_PRCST" -p "CTL_chainA1_IDT";
	rename -uid "D95F4F63-4062-F24A-A0AC-97A2259D3245";
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
	setAttr ".tg[0].tot" -type "double3" 1 0 -10 ;
	setAttr ".rst" -type "double3" 1 0 -10 ;
	setAttr -k on ".w0";
createNode transform -n "MOD_ChainB" -p "RIG_Test";
	rename -uid "D0651FEF-4025-A11A-D512-29A426575D78";
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
createNode transform -n "CTL_ChainB_GRP" -p "MOD_ChainB";
	rename -uid "798FF75B-44C7-4934-2232-5ABD9FE5E35A";
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
createNode transform -n "CTL_chainB1_IDT" -p "CTL_ChainB_GRP";
	rename -uid "B7180D53-4BD4-005E-D3BA-5C8BBDBAE320";
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
createNode transform -n "CTL_chainB1" -p "CTL_chainB1_IDT";
	rename -uid "EDD12334-4B29-C4F2-249C-97819E453B2C";
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
createNode transform -n "AUX_chainB1_BDR" -p "CTL_chainB1";
	rename -uid "E969FCBA-43FC-A272-865F-CDA22216C853";
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
createNode transform -n "CTL_chainB2_IDT" -p "CTL_chainB1";
	rename -uid "C441F40B-4776-636B-5997-92BB3E03B0A0";
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
createNode transform -n "CTL_chainB2" -p "CTL_chainB2_IDT";
	rename -uid "9810AD51-4877-146F-6452-F297041FB2AB";
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
createNode transform -n "AUX_chainB2_BDR" -p "CTL_chainB2";
	rename -uid "A126E308-49DE-CFEE-A415-CD90D6E94E7F";
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
createNode transform -n "CTL_chainB3_IDT" -p "CTL_chainB2";
	rename -uid "01772340-4A58-2342-4F88-C5945D0DA596";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 2 0 1.7763568394002505e-15 ;
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
createNode transform -n "CTL_chainB3" -p "CTL_chainB3_IDT";
	rename -uid "0911B3BE-4CE1-110D-C3D8-DBB2B4653EA8";
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
createNode transform -n "AUX_chainB3_BDR" -p "CTL_chainB3";
	rename -uid "D0893EC7-4356-1E27-1A8A-3792BC6DB797";
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
createNode transform -n "CTL_chainB4_IDT" -p "CTL_chainB3";
	rename -uid "CB032BC4-442A-914B-C28B-B48249BED157";
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
createNode transform -n "CTL_chainB4" -p "CTL_chainB4_IDT";
	rename -uid "7807DEC5-41B1-E4F7-3F0F-208F896F6ADE";
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
createNode transform -n "AUX_chainB4_BDR" -p "CTL_chainB4";
	rename -uid "08184409-4096-624A-3C6C-96A0F1EB7EC1";
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
createNode transform -n "CTL_chainB5_IDT" -p "CTL_chainB4";
	rename -uid "549B00CD-4937-C00F-11B7-BFA98C985A2E";
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
createNode transform -n "CTL_chainB5" -p "CTL_chainB5_IDT";
	rename -uid "3F43BA34-4B26-52B8-D950-938228F11FF0";
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
createNode transform -n "AUX_chainB5_BDR" -p "CTL_chainB5";
	rename -uid "9DD9D5AF-4FDC-4217-6865-12A6E30E1E9C";
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
createNode nurbsCurve -n "CTL_chainB5Shape1" -p "CTL_chainB5";
	rename -uid "647AB052-4729-96F2-63AC-E5975B69D0AD";
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
createNode nurbsCurve -n "CTL_chainB4Shape1" -p "CTL_chainB4";
	rename -uid "CC816C94-44D5-FE85-FC81-B288196A3FF4";
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
createNode nurbsCurve -n "CTL_chainB3Shape1" -p "CTL_chainB3";
	rename -uid "FEE38557-49FC-E913-82A7-B28933F1D638";
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
createNode nurbsCurve -n "CTL_chainB2Shape1" -p "CTL_chainB2";
	rename -uid "5F36388F-482C-57DB-676F-5D9DB4C99921";
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
createNode nurbsCurve -n "CTL_chainB1Shape1" -p "CTL_chainB1";
	rename -uid "5E76805D-4FDA-53F7-8F05-EDADBA0AA9E2";
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
createNode parentConstraint -n "CTL_chainB1_IDT_PRCST" -p "CTL_chainB1_IDT";
	rename -uid "A88C7750-4C7D-B6CF-B9B4-5E88C0DD1FA1";
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
	setAttr ".tg[0].tot" -type "double3" 1 0 -7 ;
	setAttr ".rst" -type "double3" 1 0 -7 ;
	setAttr -k on ".w0";
createNode transform -n "MOD_ChainC" -p "RIG_Test";
	rename -uid "96994BC2-45FD-E71B-712E-28A45257DD7D";
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
createNode transform -n "CTL_ChainC_GRP" -p "MOD_ChainC";
	rename -uid "E840EC21-470F-B1EE-E27B-3BBBB30615D6";
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
createNode transform -n "CTL_chainC1_IDT" -p "CTL_ChainC_GRP";
	rename -uid "F9689ED9-4F83-8845-713C-2A893ADD784E";
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
createNode transform -n "CTL_chainC1" -p "CTL_chainC1_IDT";
	rename -uid "5265A333-47DA-4EB8-D3E2-AFA1022F419B";
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
createNode transform -n "AUX_chainC1_BDR" -p "CTL_chainC1";
	rename -uid "FD3D07F4-4882-D391-0AD4-4D843F07A489";
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
createNode nurbsCurve -n "CTL_chainC1Shape1" -p "CTL_chainC1";
	rename -uid "A45D60C4-4C3B-7330-5100-2A8D0F1BBC0D";
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
createNode parentConstraint -n "CTL_chainC1_IDT_PRCST" -p "CTL_chainC1_IDT";
	rename -uid "D1499EDF-4EF3-FE1D-ED78-4DA3E2A513E8";
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
	setAttr ".tg[0].tot" -type "double3" 1 0 -4 ;
	setAttr ".rst" -type "double3" 1 0 -4 ;
	setAttr -k on ".w0";
createNode transform -n "MOD_ChainD" -p "RIG_Test";
	rename -uid "C77BA6A3-42F0-277B-2807-A6AF8F8F9FEA";
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
createNode transform -n "CTL_ChainD_GRP" -p "MOD_ChainD";
	rename -uid "A45A2179-4494-12DB-8283-8D838CCE5D3B";
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
createNode transform -n "CTL_chainD1_IDT" -p "CTL_ChainD_GRP";
	rename -uid "75162732-4AEC-3578-FFD2-289854D40630";
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
createNode transform -n "CTL_chainD1" -p "CTL_chainD1_IDT";
	rename -uid "BB4DF628-4B96-4849-E354-51835A8D76E3";
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
createNode transform -n "AUX_chainD1_BDR" -p "CTL_chainD1";
	rename -uid "E0150E57-411E-92D3-5088-599ED2B407D5";
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
createNode transform -n "CTL_chainD2_IDT" -p "CTL_chainD1";
	rename -uid "8F540C1E-4007-4C0C-7EB8-A4AE676D5412";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 2 0 1.0658141036401503e-14 ;
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
createNode transform -n "CTL_chainD2" -p "CTL_chainD2_IDT";
	rename -uid "B004ABC3-4BB0-6853-3407-FEB678B9346E";
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
createNode transform -n "AUX_chainD2_BDR" -p "CTL_chainD2";
	rename -uid "A4003258-4C13-8ACE-2592-E2BE74BABD66";
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
createNode transform -n "CTL_chainD3_IDT" -p "CTL_chainD2";
	rename -uid "141DBE7C-4AD8-4993-A005-FA937B4D65CE";
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
createNode transform -n "CTL_chainD3" -p "CTL_chainD3_IDT";
	rename -uid "2D4D758F-4D0C-BC0E-4773-DA92A1DA208B";
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
createNode transform -n "AUX_chainD3_BDR" -p "CTL_chainD3";
	rename -uid "2C5B2389-4AF5-1D59-9601-FB95A1587365";
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
createNode transform -n "CTL_chainD4_IDT" -p "CTL_chainD3";
	rename -uid "2DB03AC9-4F70-6F50-2CD4-5F83AE3E62F7";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 2 0 -2.0000000000000107 ;
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
createNode transform -n "CTL_chainD4" -p "CTL_chainD4_IDT";
	rename -uid "F2B4DD3D-44C3-FCBA-E44A-8EA83FE2C3DC";
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
createNode transform -n "AUX_chainD4_BDR" -p "CTL_chainD4";
	rename -uid "87C3DBAD-42F7-8AA6-A1FD-04BE31F9C944";
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
createNode transform -n "CTL_chainD5_IDT" -p "CTL_chainD4";
	rename -uid "70EC9D4C-4078-4266-3BD9-9F984E47D3C5";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 2 0 7.5495165674510645e-15 ;
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
createNode transform -n "CTL_chainD5" -p "CTL_chainD5_IDT";
	rename -uid "7E5DE2EF-47CF-9A5B-C60A-C2A8895016FF";
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
createNode transform -n "AUX_chainD5_BDR" -p "CTL_chainD5";
	rename -uid "EF69E34B-4AA0-9418-BD68-68B050EB68A4";
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
createNode nurbsCurve -n "CTL_chainD5Shape1" -p "CTL_chainD5";
	rename -uid "CD92B35D-4790-5303-AE3F-139893131CBC";
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
createNode nurbsCurve -n "CTL_chainD4Shape1" -p "CTL_chainD4";
	rename -uid "490B009D-47A4-01CC-D2C7-25A04F6BD06B";
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
createNode transform -n "CTL_chainD6_IDT" -p "CTL_chainD3";
	rename -uid "92186297-4239-95DE-311C-F493CB54BC73";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 2 0 1.9999999999999893 ;
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
createNode transform -n "CTL_chainD6" -p "CTL_chainD6_IDT";
	rename -uid "3FA3D304-4879-70D8-6CB6-DCA964C7C69C";
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
createNode transform -n "AUX_chainD6_BDR" -p "CTL_chainD6";
	rename -uid "F2A35515-48C2-C9EA-2A64-DDBDB3CCBCC9";
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
createNode transform -n "CTL_chainD7_IDT" -p "CTL_chainD6";
	rename -uid "77773B6E-4F9B-744E-1DA2-36B55F7A10D1";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 2 0 6.2172489379008766e-15 ;
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
createNode transform -n "CTL_chainD7" -p "CTL_chainD7_IDT";
	rename -uid "70492747-4A2C-95D7-98E2-E39CFB0984E5";
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
createNode transform -n "AUX_chainD7_BDR" -p "CTL_chainD7";
	rename -uid "072B15DF-47AC-F8A4-B5FD-B89B70047858";
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
createNode transform -n "CTL_chainD8_IDT" -p "CTL_chainD7";
	rename -uid "9C8FCB8D-4787-BF76-4A1A-8BB7626C1040";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 2 0 1.8207657603852567e-14 ;
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
createNode transform -n "CTL_chainD8" -p "CTL_chainD8_IDT";
	rename -uid "19CB71C7-4F7A-8BF0-67D9-27BAEAE1F86C";
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
createNode transform -n "AUX_chainD8_BDR" -p "CTL_chainD8";
	rename -uid "E100B15E-4B10-FB06-033B-0FB5D33AE8CE";
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
createNode nurbsCurve -n "CTL_chainD8Shape1" -p "CTL_chainD8";
	rename -uid "EA2BB47F-43F1-7BB6-425D-2CB6AF59551F";
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
createNode nurbsCurve -n "CTL_chainD7Shape1" -p "CTL_chainD7";
	rename -uid "5B0C653C-4A13-4085-7146-9FB3C126159B";
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
createNode nurbsCurve -n "CTL_chainD6Shape1" -p "CTL_chainD6";
	rename -uid "5527AD32-42AC-2210-20E4-D2BFC57BA248";
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
createNode nurbsCurve -n "CTL_chainD3Shape1" -p "CTL_chainD3";
	rename -uid "25F3EF80-4D6A-824C-E580-9F9E27A1EAAC";
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
createNode nurbsCurve -n "CTL_chainD2Shape1" -p "CTL_chainD2";
	rename -uid "7AA03C81-4B18-AEF9-A67F-789C1F872CAD";
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
createNode nurbsCurve -n "CTL_chainD1Shape1" -p "CTL_chainD1";
	rename -uid "74775445-475E-6FB7-B1E0-DEA16770FD7D";
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
createNode parentConstraint -n "CTL_chainD1_IDT_PRCST" -p "CTL_chainD1_IDT";
	rename -uid "5B95A85D-4448-91F4-4030-03AEB4F8237C";
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
	setAttr ".tg[0].tot" -type "double3" 1 0 1 ;
	setAttr ".rst" -type "double3" 1 0 1 ;
	setAttr -k on ".w0";
createNode transform -n "MOD_ChainE" -p "RIG_Test";
	rename -uid "6E403427-43D4-3752-45AC-62A1ED150003";
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
createNode transform -n "CTL_ChainE_GRP" -p "MOD_ChainE";
	rename -uid "153BDD14-4214-87F1-9AE7-E9B15F621AE0";
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
createNode transform -n "CTL_chainE1_IDT" -p "CTL_ChainE_GRP";
	rename -uid "32DD76B0-46EB-6BA7-5533-F0A72D44680F";
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
createNode transform -n "CTL_chainE1" -p "CTL_chainE1_IDT";
	rename -uid "0C427996-4415-FEFD-5142-7DBBD37ABECD";
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
createNode transform -n "AUX_chainE1_BDR" -p "CTL_chainE1";
	rename -uid "0AEDA481-428C-F083-AC5F-06AD4A1EFFEB";
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
createNode transform -n "CTL_chainE2_IDT" -p "CTL_chainE1";
	rename -uid "7C5888BF-4161-0670-EF58-72B57DF41C4E";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 2 0 -2 ;
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
createNode transform -n "CTL_chainE2" -p "CTL_chainE2_IDT";
	rename -uid "FF7F6CA5-4875-5852-F71E-299FDA1CD58A";
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
createNode transform -n "AUX_chainE2_BDR" -p "CTL_chainE2";
	rename -uid "03809D02-4B70-B58D-6597-8CA23F95F7AB";
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
createNode transform -n "CTL_chainE3_IDT" -p "CTL_chainE2";
	rename -uid "80F4E464-4CE3-B593-C139-7CA93BEFF916";
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
createNode transform -n "CTL_chainE3" -p "CTL_chainE3_IDT";
	rename -uid "71808B19-4C1F-0D36-C1F7-4FB91B8E3B59";
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
createNode transform -n "AUX_chainE3_BDR" -p "CTL_chainE3";
	rename -uid "70387B31-4245-B86A-B160-62B9A30C507A";
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
createNode nurbsCurve -n "CTL_chainE3Shape1" -p "CTL_chainE3";
	rename -uid "47B25899-4902-5830-698D-D2A73E124821";
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
createNode nurbsCurve -n "CTL_chainE2Shape1" -p "CTL_chainE2";
	rename -uid "FE5DEE8E-4D05-624A-4613-2AB0DC890B47";
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
createNode transform -n "CTL_chainE4_IDT" -p "CTL_chainE1";
	rename -uid "48A655A1-4662-2DFA-7208-A7B3CAD14AE5";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 2 0 2 ;
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
createNode transform -n "CTL_chainE4" -p "CTL_chainE4_IDT";
	rename -uid "49647275-4BA3-0344-6CBC-5093013F6730";
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
createNode transform -n "AUX_chainE4_BDR" -p "CTL_chainE4";
	rename -uid "70B3255B-468D-8512-888C-4BB49F4FDDED";
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
createNode nurbsCurve -n "CTL_chainE4Shape1" -p "CTL_chainE4";
	rename -uid "AC3BDCE8-4F61-D4F8-4B35-39A6FA53BB4E";
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
createNode nurbsCurve -n "CTL_chainE1Shape1" -p "CTL_chainE1";
	rename -uid "934665F4-4863-2EC8-E334-CAB917B2FD16";
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
createNode parentConstraint -n "CTL_chainE1_IDT_PRCST" -p "CTL_chainE1_IDT";
	rename -uid "E19D2807-485A-0702-ACDA-0BACB783162E";
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
	setAttr ".tg[0].tot" -type "double3" 1 0 8 ;
	setAttr ".rst" -type "double3" 1 0 8 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "619E999A-4AAA-078D-FB75-BC95074E82A8";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "61DA36FD-4075-E55C-4DD2-B48B75EAB659";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "510C7D0A-4657-F441-9AB5-768236BFFC06";
createNode displayLayerManager -n "layerManager";
	rename -uid "96C3857E-4220-3259-E17D-3386D6C119DA";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "4693208F-4732-EEFE-9568-38BCBFA4B9FD";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A178A54A-4603-4E42-F833-69B1B6839046";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "E82551C5-4F35-9351-0CA4-E5AD51787781";
	setAttr ".g" yes;
createNode displayLayer -n "mdl_joint";
	rename -uid "750665A4-4F27-2957-4F2F-86B19D5492C5";
	setAttr ".c" 9;
	setAttr ".do" 1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "0C033CA5-4E75-9788-2EB7-E5840EF75326";
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
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1125\n            -height 1092\n            -sceneRenderFilter 0\n            -activeShadingGraph \"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\" \n            -activeCustomGeometry \"meshShaderball\" \n            -activeCustomLighSet \"defaultAreaLightSet\" \n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1125\\n    -height 1092\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"updateModelPanelBar\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1125\\n    -height 1092\\n    -sceneRenderFilter 0\\n    -activeShadingGraph \\\"ballora_animatronic_shadow_rig:rsMaterial1SG,ballora_animatronic_shadow_rig:MAT_ballora,ballora_animatronic_shadow_rig:MAT_ballora\\\" \\n    -activeCustomGeometry \\\"meshShaderball\\\" \\n    -activeCustomLighSet \\\"defaultAreaLightSet\\\" \\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D9CD8E41-499F-16D4-59AA-B48D1BB98015";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "mdl_joint.di" "|MDL_Test|root.do";
connectAttr "|MDL_Test|root|root_PRCST.ctx" "|MDL_Test|root.tx";
connectAttr "|MDL_Test|root|root_PRCST.cty" "|MDL_Test|root.ty";
connectAttr "|MDL_Test|root|root_PRCST.ctz" "|MDL_Test|root.tz";
connectAttr "|MDL_Test|root|root_PRCST.crx" "|MDL_Test|root.rx";
connectAttr "|MDL_Test|root|root_PRCST.cry" "|MDL_Test|root.ry";
connectAttr "|MDL_Test|root|root_PRCST.crz" "|MDL_Test|root.rz";
connectAttr "|MDL_Test|root.s" "|MDL_Test|root|chainA1.is";
connectAttr "|MDL_Test|root|chainA1|chainA1_PRCST.ctx" "|MDL_Test|root|chainA1.tx"
		;
connectAttr "|MDL_Test|root|chainA1|chainA1_PRCST.cty" "|MDL_Test|root|chainA1.ty"
		;
connectAttr "|MDL_Test|root|chainA1|chainA1_PRCST.ctz" "|MDL_Test|root|chainA1.tz"
		;
connectAttr "|MDL_Test|root|chainA1|chainA1_PRCST.crx" "|MDL_Test|root|chainA1.rx"
		;
connectAttr "|MDL_Test|root|chainA1|chainA1_PRCST.cry" "|MDL_Test|root|chainA1.ry"
		;
connectAttr "|MDL_Test|root|chainA1|chainA1_PRCST.crz" "|MDL_Test|root|chainA1.rz"
		;
connectAttr "|MDL_Test|root|chainA1.s" "|MDL_Test|root|chainA1|chainA2.is";
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA2_PRCST.ctx" "|MDL_Test|root|chainA1|chainA2.tx"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA2_PRCST.cty" "|MDL_Test|root|chainA1|chainA2.ty"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA2_PRCST.ctz" "|MDL_Test|root|chainA1|chainA2.tz"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA2_PRCST.crx" "|MDL_Test|root|chainA1|chainA2.rx"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA2_PRCST.cry" "|MDL_Test|root|chainA1|chainA2.ry"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA2_PRCST.crz" "|MDL_Test|root|chainA1|chainA2.rz"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2.s" "|MDL_Test|root|chainA1|chainA2|chainA3.is"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA3_PRCST.ctx" "|MDL_Test|root|chainA1|chainA2|chainA3.tx"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA3_PRCST.cty" "|MDL_Test|root|chainA1|chainA2|chainA3.ty"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA3_PRCST.ctz" "|MDL_Test|root|chainA1|chainA2|chainA3.tz"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA3_PRCST.crx" "|MDL_Test|root|chainA1|chainA2|chainA3.rx"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA3_PRCST.cry" "|MDL_Test|root|chainA1|chainA2|chainA3.ry"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA3_PRCST.crz" "|MDL_Test|root|chainA1|chainA2|chainA3.rz"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3.s" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4.is"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.ctx" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4.tx"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.cty" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4.ty"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.ctz" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4.tz"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.crx" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4.rx"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.cry" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4.ry"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.crz" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4.rz"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4.s" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5.is"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.ctx" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5.tx"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.cty" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5.ty"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.ctz" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5.tz"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.crx" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5.rx"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.cry" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5.ry"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.crz" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5.rz"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5.s" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.is"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.ctx" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.tx"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.cty" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.ty"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.ctz" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.tz"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.crx" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.rx"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.cry" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.ry"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.crz" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.rz"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.ro" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.cro"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.pim" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.cpim"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.rp" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.crp"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.rpt" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.crt"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.jo" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.t" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.rp" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.rpt" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.r" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.ro" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.s" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.pm" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.jo" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.ssc" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.is" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.w0" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5.ro" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.cro"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5.pim" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.cpim"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5.rp" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.crp"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5.rpt" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.crt"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5.jo" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5.t" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5.rp" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5.rpt" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5.r" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5.ro" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5.s" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5.pm" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5.jo" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5.ssc" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5.is" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.w0" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4.ro" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.cro"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4.pim" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.cpim"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4.rp" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.crp"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4.rpt" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.crt"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4.jo" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4.t" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4.rp" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4.rpt" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4.r" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4.ro" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4.s" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4.pm" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4.jo" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4.ssc" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4.is" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.w0" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3.ro" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA3_PRCST.cro"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3.pim" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA3_PRCST.cpim"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3.rp" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA3_PRCST.crp"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3.rpt" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA3_PRCST.crt"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3.jo" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA3_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3.t" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA3_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3.rp" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA3_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3.rpt" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA3_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3.r" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA3_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3.ro" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA3_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3.s" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA3_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3.pm" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA3_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3.jo" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA3_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3.ssc" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA3_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3.is" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA3_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA3|chainA3_PRCST.w0" "|MDL_Test|root|chainA1|chainA2|chainA3|chainA3_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2.ro" "|MDL_Test|root|chainA1|chainA2|chainA2_PRCST.cro"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2.pim" "|MDL_Test|root|chainA1|chainA2|chainA2_PRCST.cpim"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2.rp" "|MDL_Test|root|chainA1|chainA2|chainA2_PRCST.crp"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2.rpt" "|MDL_Test|root|chainA1|chainA2|chainA2_PRCST.crt"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2.jo" "|MDL_Test|root|chainA1|chainA2|chainA2_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2.t" "|MDL_Test|root|chainA1|chainA2|chainA2_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2.rp" "|MDL_Test|root|chainA1|chainA2|chainA2_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2.rpt" "|MDL_Test|root|chainA1|chainA2|chainA2_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2.r" "|MDL_Test|root|chainA1|chainA2|chainA2_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2.ro" "|MDL_Test|root|chainA1|chainA2|chainA2_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2.s" "|MDL_Test|root|chainA1|chainA2|chainA2_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2.pm" "|MDL_Test|root|chainA1|chainA2|chainA2_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2.jo" "|MDL_Test|root|chainA1|chainA2|chainA2_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2.ssc" "|MDL_Test|root|chainA1|chainA2|chainA2_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2.is" "|MDL_Test|root|chainA1|chainA2|chainA2_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|root|chainA1|chainA2|chainA2_PRCST.w0" "|MDL_Test|root|chainA1|chainA2|chainA2_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|root|chainA1.ro" "|MDL_Test|root|chainA1|chainA1_PRCST.cro"
		;
connectAttr "|MDL_Test|root|chainA1.pim" "|MDL_Test|root|chainA1|chainA1_PRCST.cpim"
		;
connectAttr "|MDL_Test|root|chainA1.rp" "|MDL_Test|root|chainA1|chainA1_PRCST.crp"
		;
connectAttr "|MDL_Test|root|chainA1.rpt" "|MDL_Test|root|chainA1|chainA1_PRCST.crt"
		;
connectAttr "|MDL_Test|root|chainA1.jo" "|MDL_Test|root|chainA1|chainA1_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|root|chainA1.t" "|MDL_Test|root|chainA1|chainA1_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|root|chainA1.rp" "|MDL_Test|root|chainA1|chainA1_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|root|chainA1.rpt" "|MDL_Test|root|chainA1|chainA1_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|root|chainA1.r" "|MDL_Test|root|chainA1|chainA1_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|root|chainA1.ro" "|MDL_Test|root|chainA1|chainA1_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|root|chainA1.s" "|MDL_Test|root|chainA1|chainA1_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|root|chainA1.pm" "|MDL_Test|root|chainA1|chainA1_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainA1.jo" "|MDL_Test|root|chainA1|chainA1_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|root|chainA1.ssc" "|MDL_Test|root|chainA1|chainA1_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|root|chainA1.is" "|MDL_Test|root|chainA1|chainA1_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|root|chainA1|chainA1_PRCST.w0" "|MDL_Test|root|chainA1|chainA1_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|root.s" "|MDL_Test|root|chainB1.is";
connectAttr "|MDL_Test|root|chainB1|chainB1_PRCST.ctx" "|MDL_Test|root|chainB1.tx"
		;
connectAttr "|MDL_Test|root|chainB1|chainB1_PRCST.cty" "|MDL_Test|root|chainB1.ty"
		;
connectAttr "|MDL_Test|root|chainB1|chainB1_PRCST.ctz" "|MDL_Test|root|chainB1.tz"
		;
connectAttr "|MDL_Test|root|chainB1|chainB1_PRCST.crx" "|MDL_Test|root|chainB1.rx"
		;
connectAttr "|MDL_Test|root|chainB1|chainB1_PRCST.cry" "|MDL_Test|root|chainB1.ry"
		;
connectAttr "|MDL_Test|root|chainB1|chainB1_PRCST.crz" "|MDL_Test|root|chainB1.rz"
		;
connectAttr "|MDL_Test|root|chainB1.s" "|MDL_Test|root|chainB1|chainB2.is";
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB2_PRCST.ctx" "|MDL_Test|root|chainB1|chainB2.tx"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB2_PRCST.cty" "|MDL_Test|root|chainB1|chainB2.ty"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB2_PRCST.ctz" "|MDL_Test|root|chainB1|chainB2.tz"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB2_PRCST.crx" "|MDL_Test|root|chainB1|chainB2.rx"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB2_PRCST.cry" "|MDL_Test|root|chainB1|chainB2.ry"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB2_PRCST.crz" "|MDL_Test|root|chainB1|chainB2.rz"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2.s" "|MDL_Test|root|chainB1|chainB2|chainB3.is"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB3_PRCST.ctx" "|MDL_Test|root|chainB1|chainB2|chainB3.tx"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB3_PRCST.cty" "|MDL_Test|root|chainB1|chainB2|chainB3.ty"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB3_PRCST.ctz" "|MDL_Test|root|chainB1|chainB2|chainB3.tz"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB3_PRCST.crx" "|MDL_Test|root|chainB1|chainB2|chainB3.rx"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB3_PRCST.cry" "|MDL_Test|root|chainB1|chainB2|chainB3.ry"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB3_PRCST.crz" "|MDL_Test|root|chainB1|chainB2|chainB3.rz"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3.s" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4.is"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.ctx" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4.tx"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.cty" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4.ty"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.ctz" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4.tz"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.crx" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4.rx"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.cry" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4.ry"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.crz" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4.rz"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4.s" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5.is"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.ctx" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5.tx"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.cty" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5.ty"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.ctz" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5.tz"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.crx" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5.rx"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.cry" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5.ry"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.crz" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5.rz"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5.s" "chainB6.is"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5.ro" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.cro"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5.pim" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.cpim"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5.rp" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.crp"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5.rpt" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.crt"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5.jo" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5.t" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5.rp" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5.rpt" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5.r" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5.ro" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5.s" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5.pm" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5.jo" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5.ssc" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5.is" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.w0" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4.ro" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.cro"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4.pim" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.cpim"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4.rp" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.crp"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4.rpt" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.crt"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4.jo" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4.t" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4.rp" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4.rpt" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4.r" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4.ro" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4.s" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4.pm" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4.jo" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4.ssc" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4.is" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.w0" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3.ro" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB3_PRCST.cro"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3.pim" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB3_PRCST.cpim"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3.rp" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB3_PRCST.crp"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3.rpt" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB3_PRCST.crt"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3.jo" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB3_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3.t" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB3_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3.rp" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB3_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3.rpt" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB3_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3.r" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB3_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3.ro" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB3_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3.s" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB3_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3.pm" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB3_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3.jo" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB3_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3.ssc" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB3_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3.is" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB3_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB3|chainB3_PRCST.w0" "|MDL_Test|root|chainB1|chainB2|chainB3|chainB3_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2.ro" "|MDL_Test|root|chainB1|chainB2|chainB2_PRCST.cro"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2.pim" "|MDL_Test|root|chainB1|chainB2|chainB2_PRCST.cpim"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2.rp" "|MDL_Test|root|chainB1|chainB2|chainB2_PRCST.crp"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2.rpt" "|MDL_Test|root|chainB1|chainB2|chainB2_PRCST.crt"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2.jo" "|MDL_Test|root|chainB1|chainB2|chainB2_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2.t" "|MDL_Test|root|chainB1|chainB2|chainB2_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2.rp" "|MDL_Test|root|chainB1|chainB2|chainB2_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2.rpt" "|MDL_Test|root|chainB1|chainB2|chainB2_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2.r" "|MDL_Test|root|chainB1|chainB2|chainB2_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2.ro" "|MDL_Test|root|chainB1|chainB2|chainB2_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2.s" "|MDL_Test|root|chainB1|chainB2|chainB2_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2.pm" "|MDL_Test|root|chainB1|chainB2|chainB2_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2.jo" "|MDL_Test|root|chainB1|chainB2|chainB2_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2.ssc" "|MDL_Test|root|chainB1|chainB2|chainB2_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2.is" "|MDL_Test|root|chainB1|chainB2|chainB2_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|root|chainB1|chainB2|chainB2_PRCST.w0" "|MDL_Test|root|chainB1|chainB2|chainB2_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|root|chainB1.ro" "|MDL_Test|root|chainB1|chainB1_PRCST.cro"
		;
connectAttr "|MDL_Test|root|chainB1.pim" "|MDL_Test|root|chainB1|chainB1_PRCST.cpim"
		;
connectAttr "|MDL_Test|root|chainB1.rp" "|MDL_Test|root|chainB1|chainB1_PRCST.crp"
		;
connectAttr "|MDL_Test|root|chainB1.rpt" "|MDL_Test|root|chainB1|chainB1_PRCST.crt"
		;
connectAttr "|MDL_Test|root|chainB1.jo" "|MDL_Test|root|chainB1|chainB1_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|root|chainB1.t" "|MDL_Test|root|chainB1|chainB1_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|root|chainB1.rp" "|MDL_Test|root|chainB1|chainB1_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|root|chainB1.rpt" "|MDL_Test|root|chainB1|chainB1_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|root|chainB1.r" "|MDL_Test|root|chainB1|chainB1_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|root|chainB1.ro" "|MDL_Test|root|chainB1|chainB1_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|root|chainB1.s" "|MDL_Test|root|chainB1|chainB1_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|root|chainB1.pm" "|MDL_Test|root|chainB1|chainB1_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainB1.jo" "|MDL_Test|root|chainB1|chainB1_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|root|chainB1.ssc" "|MDL_Test|root|chainB1|chainB1_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|root|chainB1.is" "|MDL_Test|root|chainB1|chainB1_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|root|chainB1|chainB1_PRCST.w0" "|MDL_Test|root|chainB1|chainB1_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|root.s" "|MDL_Test|root|chainC1.is";
connectAttr "|MDL_Test|root|chainC1|chainC1_PRCST.ctx" "|MDL_Test|root|chainC1.tx"
		;
connectAttr "|MDL_Test|root|chainC1|chainC1_PRCST.cty" "|MDL_Test|root|chainC1.ty"
		;
connectAttr "|MDL_Test|root|chainC1|chainC1_PRCST.ctz" "|MDL_Test|root|chainC1.tz"
		;
connectAttr "|MDL_Test|root|chainC1|chainC1_PRCST.crx" "|MDL_Test|root|chainC1.rx"
		;
connectAttr "|MDL_Test|root|chainC1|chainC1_PRCST.cry" "|MDL_Test|root|chainC1.ry"
		;
connectAttr "|MDL_Test|root|chainC1|chainC1_PRCST.crz" "|MDL_Test|root|chainC1.rz"
		;
connectAttr "|MDL_Test|root|chainC1.ro" "|MDL_Test|root|chainC1|chainC1_PRCST.cro"
		;
connectAttr "|MDL_Test|root|chainC1.pim" "|MDL_Test|root|chainC1|chainC1_PRCST.cpim"
		;
connectAttr "|MDL_Test|root|chainC1.rp" "|MDL_Test|root|chainC1|chainC1_PRCST.crp"
		;
connectAttr "|MDL_Test|root|chainC1.rpt" "|MDL_Test|root|chainC1|chainC1_PRCST.crt"
		;
connectAttr "|MDL_Test|root|chainC1.jo" "|MDL_Test|root|chainC1|chainC1_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|root|chainC1.t" "|MDL_Test|root|chainC1|chainC1_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|root|chainC1.rp" "|MDL_Test|root|chainC1|chainC1_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|root|chainC1.rpt" "|MDL_Test|root|chainC1|chainC1_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|root|chainC1.r" "|MDL_Test|root|chainC1|chainC1_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|root|chainC1.ro" "|MDL_Test|root|chainC1|chainC1_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|root|chainC1.s" "|MDL_Test|root|chainC1|chainC1_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|root|chainC1.pm" "|MDL_Test|root|chainC1|chainC1_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainC1.jo" "|MDL_Test|root|chainC1|chainC1_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|root|chainC1.ssc" "|MDL_Test|root|chainC1|chainC1_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|root|chainC1.is" "|MDL_Test|root|chainC1|chainC1_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|root|chainC1|chainC1_PRCST.w0" "|MDL_Test|root|chainC1|chainC1_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|root.s" "|MDL_Test|root|chainD1.is";
connectAttr "|MDL_Test|root|chainD1|chainD1_PRCST.ctx" "|MDL_Test|root|chainD1.tx"
		;
connectAttr "|MDL_Test|root|chainD1|chainD1_PRCST.cty" "|MDL_Test|root|chainD1.ty"
		;
connectAttr "|MDL_Test|root|chainD1|chainD1_PRCST.ctz" "|MDL_Test|root|chainD1.tz"
		;
connectAttr "|MDL_Test|root|chainD1|chainD1_PRCST.crx" "|MDL_Test|root|chainD1.rx"
		;
connectAttr "|MDL_Test|root|chainD1|chainD1_PRCST.cry" "|MDL_Test|root|chainD1.ry"
		;
connectAttr "|MDL_Test|root|chainD1|chainD1_PRCST.crz" "|MDL_Test|root|chainD1.rz"
		;
connectAttr "|MDL_Test|root|chainD1.s" "|MDL_Test|root|chainD1|chainD2.is";
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD2_PRCST.ctx" "|MDL_Test|root|chainD1|chainD2.tx"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD2_PRCST.cty" "|MDL_Test|root|chainD1|chainD2.ty"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD2_PRCST.ctz" "|MDL_Test|root|chainD1|chainD2.tz"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD2_PRCST.crx" "|MDL_Test|root|chainD1|chainD2.rx"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD2_PRCST.cry" "|MDL_Test|root|chainD1|chainD2.ry"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD2_PRCST.crz" "|MDL_Test|root|chainD1|chainD2.rz"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2.s" "|MDL_Test|root|chainD1|chainD2|chainD3.is"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD3_PRCST.ctx" "|MDL_Test|root|chainD1|chainD2|chainD3.tx"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD3_PRCST.cty" "|MDL_Test|root|chainD1|chainD2|chainD3.ty"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD3_PRCST.ctz" "|MDL_Test|root|chainD1|chainD2|chainD3.tz"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD3_PRCST.crx" "|MDL_Test|root|chainD1|chainD2|chainD3.rx"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD3_PRCST.cry" "|MDL_Test|root|chainD1|chainD2|chainD3.ry"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD3_PRCST.crz" "|MDL_Test|root|chainD1|chainD2|chainD3.rz"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3.s" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4.is"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.ctx" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4.tx"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.cty" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4.ty"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.ctz" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4.tz"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.crx" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4.rx"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.cry" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4.ry"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.crz" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4.rz"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4.s" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5.is"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.ctx" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5.tx"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.cty" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5.ty"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.ctz" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5.tz"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.crx" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5.rx"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.cry" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5.ry"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.crz" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5.rz"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5.ro" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.cro"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5.pim" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.cpim"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5.rp" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.crp"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5.rpt" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.crt"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5.jo" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5.t" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5.rp" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5.rpt" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5.r" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5.ro" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5.s" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5.pm" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5.jo" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5.ssc" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5.is" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.w0" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4.ro" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.cro"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4.pim" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.cpim"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4.rp" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.crp"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4.rpt" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.crt"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4.jo" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4.t" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4.rp" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4.rpt" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4.r" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4.ro" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4.s" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4.pm" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4.jo" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4.ssc" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4.is" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.w0" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3.s" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6.is"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.ctx" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6.tx"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.cty" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6.ty"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.ctz" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6.tz"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.crx" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6.rx"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.cry" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6.ry"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.crz" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6.rz"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6.s" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7.is"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.ctx" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7.tx"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.cty" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7.ty"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.ctz" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7.tz"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.crx" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7.rx"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.cry" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7.ry"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.crz" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7.rz"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7.s" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.is"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.ctx" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.tx"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.cty" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.ty"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.ctz" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.tz"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.crx" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.rx"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.cry" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.ry"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.crz" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.rz"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.ro" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.cro"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.pim" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.cpim"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.rp" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.crp"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.rpt" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.crt"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.jo" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.t" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.rp" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.rpt" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.r" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.ro" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.s" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.pm" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.jo" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.ssc" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.is" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.w0" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7.ro" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.cro"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7.pim" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.cpim"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7.rp" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.crp"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7.rpt" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.crt"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7.jo" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7.t" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7.rp" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7.rpt" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7.r" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7.ro" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7.s" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7.pm" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7.jo" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7.ssc" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7.is" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.w0" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6.ro" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.cro"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6.pim" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.cpim"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6.rp" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.crp"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6.rpt" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.crt"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6.jo" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6.t" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6.rp" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6.rpt" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6.r" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6.ro" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6.s" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6.pm" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6.jo" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6.ssc" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6.is" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.w0" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3.ro" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD3_PRCST.cro"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3.pim" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD3_PRCST.cpim"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3.rp" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD3_PRCST.crp"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3.rpt" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD3_PRCST.crt"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3.jo" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD3_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3.t" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD3_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3.rp" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD3_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3.rpt" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD3_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3.r" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD3_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3.ro" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD3_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3.s" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD3_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3.pm" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD3_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3.jo" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD3_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3.ssc" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD3_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3.is" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD3_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD3|chainD3_PRCST.w0" "|MDL_Test|root|chainD1|chainD2|chainD3|chainD3_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2.ro" "|MDL_Test|root|chainD1|chainD2|chainD2_PRCST.cro"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2.pim" "|MDL_Test|root|chainD1|chainD2|chainD2_PRCST.cpim"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2.rp" "|MDL_Test|root|chainD1|chainD2|chainD2_PRCST.crp"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2.rpt" "|MDL_Test|root|chainD1|chainD2|chainD2_PRCST.crt"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2.jo" "|MDL_Test|root|chainD1|chainD2|chainD2_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2.t" "|MDL_Test|root|chainD1|chainD2|chainD2_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2.rp" "|MDL_Test|root|chainD1|chainD2|chainD2_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2.rpt" "|MDL_Test|root|chainD1|chainD2|chainD2_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2.r" "|MDL_Test|root|chainD1|chainD2|chainD2_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2.ro" "|MDL_Test|root|chainD1|chainD2|chainD2_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2.s" "|MDL_Test|root|chainD1|chainD2|chainD2_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2.pm" "|MDL_Test|root|chainD1|chainD2|chainD2_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2.jo" "|MDL_Test|root|chainD1|chainD2|chainD2_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2.ssc" "|MDL_Test|root|chainD1|chainD2|chainD2_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2.is" "|MDL_Test|root|chainD1|chainD2|chainD2_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|root|chainD1|chainD2|chainD2_PRCST.w0" "|MDL_Test|root|chainD1|chainD2|chainD2_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|root|chainD1.ro" "|MDL_Test|root|chainD1|chainD1_PRCST.cro"
		;
connectAttr "|MDL_Test|root|chainD1.pim" "|MDL_Test|root|chainD1|chainD1_PRCST.cpim"
		;
connectAttr "|MDL_Test|root|chainD1.rp" "|MDL_Test|root|chainD1|chainD1_PRCST.crp"
		;
connectAttr "|MDL_Test|root|chainD1.rpt" "|MDL_Test|root|chainD1|chainD1_PRCST.crt"
		;
connectAttr "|MDL_Test|root|chainD1.jo" "|MDL_Test|root|chainD1|chainD1_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|root|chainD1.t" "|MDL_Test|root|chainD1|chainD1_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|root|chainD1.rp" "|MDL_Test|root|chainD1|chainD1_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|root|chainD1.rpt" "|MDL_Test|root|chainD1|chainD1_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|root|chainD1.r" "|MDL_Test|root|chainD1|chainD1_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|root|chainD1.ro" "|MDL_Test|root|chainD1|chainD1_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|root|chainD1.s" "|MDL_Test|root|chainD1|chainD1_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|root|chainD1.pm" "|MDL_Test|root|chainD1|chainD1_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainD1.jo" "|MDL_Test|root|chainD1|chainD1_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|root|chainD1.ssc" "|MDL_Test|root|chainD1|chainD1_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|root|chainD1.is" "|MDL_Test|root|chainD1|chainD1_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|root|chainD1|chainD1_PRCST.w0" "|MDL_Test|root|chainD1|chainD1_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|root.s" "|MDL_Test|root|chainE1.is";
connectAttr "|MDL_Test|root|chainE1|chainE1_PRCST.ctx" "|MDL_Test|root|chainE1.tx"
		;
connectAttr "|MDL_Test|root|chainE1|chainE1_PRCST.cty" "|MDL_Test|root|chainE1.ty"
		;
connectAttr "|MDL_Test|root|chainE1|chainE1_PRCST.ctz" "|MDL_Test|root|chainE1.tz"
		;
connectAttr "|MDL_Test|root|chainE1|chainE1_PRCST.crx" "|MDL_Test|root|chainE1.rx"
		;
connectAttr "|MDL_Test|root|chainE1|chainE1_PRCST.cry" "|MDL_Test|root|chainE1.ry"
		;
connectAttr "|MDL_Test|root|chainE1|chainE1_PRCST.crz" "|MDL_Test|root|chainE1.rz"
		;
connectAttr "|MDL_Test|root|chainE1.s" "|MDL_Test|root|chainE1|chainE2.is";
connectAttr "|MDL_Test|root|chainE1|chainE2|chainE2_PRCST.ctx" "|MDL_Test|root|chainE1|chainE2.tx"
		;
connectAttr "|MDL_Test|root|chainE1|chainE2|chainE2_PRCST.cty" "|MDL_Test|root|chainE1|chainE2.ty"
		;
connectAttr "|MDL_Test|root|chainE1|chainE2|chainE2_PRCST.ctz" "|MDL_Test|root|chainE1|chainE2.tz"
		;
connectAttr "|MDL_Test|root|chainE1|chainE2|chainE2_PRCST.crx" "|MDL_Test|root|chainE1|chainE2.rx"
		;
connectAttr "|MDL_Test|root|chainE1|chainE2|chainE2_PRCST.cry" "|MDL_Test|root|chainE1|chainE2.ry"
		;
connectAttr "|MDL_Test|root|chainE1|chainE2|chainE2_PRCST.crz" "|MDL_Test|root|chainE1|chainE2.rz"
		;
connectAttr "|MDL_Test|root|chainE1|chainE2.s" "|MDL_Test|root|chainE1|chainE2|chainE3.is"
		;
connectAttr "|MDL_Test|root|chainE1|chainE2|chainE3|chainE3_PRCST.ctx" "|MDL_Test|root|chainE1|chainE2|chainE3.tx"
		;
connectAttr "|MDL_Test|root|chainE1|chainE2|chainE3|chainE3_PRCST.cty" "|MDL_Test|root|chainE1|chainE2|chainE3.ty"
		;
connectAttr "|MDL_Test|root|chainE1|chainE2|chainE3|chainE3_PRCST.ctz" "|MDL_Test|root|chainE1|chainE2|chainE3.tz"
		;
connectAttr "|MDL_Test|root|chainE1|chainE2|chainE3|chainE3_PRCST.crx" "|MDL_Test|root|chainE1|chainE2|chainE3.rx"
		;
connectAttr "|MDL_Test|root|chainE1|chainE2|chainE3|chainE3_PRCST.cry" "|MDL_Test|root|chainE1|chainE2|chainE3.ry"
		;
connectAttr "|MDL_Test|root|chainE1|chainE2|chainE3|chainE3_PRCST.crz" "|MDL_Test|root|chainE1|chainE2|chainE3.rz"
		;
connectAttr "|MDL_Test|root|chainE1|chainE2|chainE3.ro" "|MDL_Test|root|chainE1|chainE2|chainE3|chainE3_PRCST.cro"
		;
connectAttr "|MDL_Test|root|chainE1|chainE2|chainE3.pim" "|MDL_Test|root|chainE1|chainE2|chainE3|chainE3_PRCST.cpim"
		;
connectAttr "|MDL_Test|root|chainE1|chainE2|chainE3.rp" "|MDL_Test|root|chainE1|chainE2|chainE3|chainE3_PRCST.crp"
		;
connectAttr "|MDL_Test|root|chainE1|chainE2|chainE3.rpt" "|MDL_Test|root|chainE1|chainE2|chainE3|chainE3_PRCST.crt"
		;
connectAttr "|MDL_Test|root|chainE1|chainE2|chainE3.jo" "|MDL_Test|root|chainE1|chainE2|chainE3|chainE3_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE3.t" "|MDL_Test|root|chainE1|chainE2|chainE3|chainE3_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE3.rp" "|MDL_Test|root|chainE1|chainE2|chainE3|chainE3_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE3.rpt" "|MDL_Test|root|chainE1|chainE2|chainE3|chainE3_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE3.r" "|MDL_Test|root|chainE1|chainE2|chainE3|chainE3_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE3.ro" "|MDL_Test|root|chainE1|chainE2|chainE3|chainE3_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE3.s" "|MDL_Test|root|chainE1|chainE2|chainE3|chainE3_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE3.pm" "|MDL_Test|root|chainE1|chainE2|chainE3|chainE3_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE3.jo" "|MDL_Test|root|chainE1|chainE2|chainE3|chainE3_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE3.ssc" "|MDL_Test|root|chainE1|chainE2|chainE3|chainE3_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE3.is" "|MDL_Test|root|chainE1|chainE2|chainE3|chainE3_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|root|chainE1|chainE2|chainE3|chainE3_PRCST.w0" "|MDL_Test|root|chainE1|chainE2|chainE3|chainE3_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|root|chainE1|chainE2.ro" "|MDL_Test|root|chainE1|chainE2|chainE2_PRCST.cro"
		;
connectAttr "|MDL_Test|root|chainE1|chainE2.pim" "|MDL_Test|root|chainE1|chainE2|chainE2_PRCST.cpim"
		;
connectAttr "|MDL_Test|root|chainE1|chainE2.rp" "|MDL_Test|root|chainE1|chainE2|chainE2_PRCST.crp"
		;
connectAttr "|MDL_Test|root|chainE1|chainE2.rpt" "|MDL_Test|root|chainE1|chainE2|chainE2_PRCST.crt"
		;
connectAttr "|MDL_Test|root|chainE1|chainE2.jo" "|MDL_Test|root|chainE1|chainE2|chainE2_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2.t" "|MDL_Test|root|chainE1|chainE2|chainE2_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2.rp" "|MDL_Test|root|chainE1|chainE2|chainE2_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2.rpt" "|MDL_Test|root|chainE1|chainE2|chainE2_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2.r" "|MDL_Test|root|chainE1|chainE2|chainE2_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2.ro" "|MDL_Test|root|chainE1|chainE2|chainE2_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2.s" "|MDL_Test|root|chainE1|chainE2|chainE2_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2.pm" "|MDL_Test|root|chainE1|chainE2|chainE2_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2.jo" "|MDL_Test|root|chainE1|chainE2|chainE2_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2.ssc" "|MDL_Test|root|chainE1|chainE2|chainE2_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2.is" "|MDL_Test|root|chainE1|chainE2|chainE2_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|root|chainE1|chainE2|chainE2_PRCST.w0" "|MDL_Test|root|chainE1|chainE2|chainE2_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|root|chainE1.s" "|MDL_Test|root|chainE1|chainE4.is";
connectAttr "|MDL_Test|root|chainE1|chainE4|chainE4_PRCST.ctx" "|MDL_Test|root|chainE1|chainE4.tx"
		;
connectAttr "|MDL_Test|root|chainE1|chainE4|chainE4_PRCST.cty" "|MDL_Test|root|chainE1|chainE4.ty"
		;
connectAttr "|MDL_Test|root|chainE1|chainE4|chainE4_PRCST.ctz" "|MDL_Test|root|chainE1|chainE4.tz"
		;
connectAttr "|MDL_Test|root|chainE1|chainE4|chainE4_PRCST.crx" "|MDL_Test|root|chainE1|chainE4.rx"
		;
connectAttr "|MDL_Test|root|chainE1|chainE4|chainE4_PRCST.cry" "|MDL_Test|root|chainE1|chainE4.ry"
		;
connectAttr "|MDL_Test|root|chainE1|chainE4|chainE4_PRCST.crz" "|MDL_Test|root|chainE1|chainE4.rz"
		;
connectAttr "|MDL_Test|root|chainE1|chainE4.ro" "|MDL_Test|root|chainE1|chainE4|chainE4_PRCST.cro"
		;
connectAttr "|MDL_Test|root|chainE1|chainE4.pim" "|MDL_Test|root|chainE1|chainE4|chainE4_PRCST.cpim"
		;
connectAttr "|MDL_Test|root|chainE1|chainE4.rp" "|MDL_Test|root|chainE1|chainE4|chainE4_PRCST.crp"
		;
connectAttr "|MDL_Test|root|chainE1|chainE4.rpt" "|MDL_Test|root|chainE1|chainE4|chainE4_PRCST.crt"
		;
connectAttr "|MDL_Test|root|chainE1|chainE4.jo" "|MDL_Test|root|chainE1|chainE4|chainE4_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE4.t" "|MDL_Test|root|chainE1|chainE4|chainE4_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE4.rp" "|MDL_Test|root|chainE1|chainE4|chainE4_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE4.rpt" "|MDL_Test|root|chainE1|chainE4|chainE4_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE4.r" "|MDL_Test|root|chainE1|chainE4|chainE4_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE4.ro" "|MDL_Test|root|chainE1|chainE4|chainE4_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE4.s" "|MDL_Test|root|chainE1|chainE4|chainE4_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE4.pm" "|MDL_Test|root|chainE1|chainE4|chainE4_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE4.jo" "|MDL_Test|root|chainE1|chainE4|chainE4_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE4.ssc" "|MDL_Test|root|chainE1|chainE4|chainE4_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE4.is" "|MDL_Test|root|chainE1|chainE4|chainE4_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|root|chainE1|chainE4|chainE4_PRCST.w0" "|MDL_Test|root|chainE1|chainE4|chainE4_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|root|chainE1.ro" "|MDL_Test|root|chainE1|chainE1_PRCST.cro"
		;
connectAttr "|MDL_Test|root|chainE1.pim" "|MDL_Test|root|chainE1|chainE1_PRCST.cpim"
		;
connectAttr "|MDL_Test|root|chainE1.rp" "|MDL_Test|root|chainE1|chainE1_PRCST.crp"
		;
connectAttr "|MDL_Test|root|chainE1.rpt" "|MDL_Test|root|chainE1|chainE1_PRCST.crt"
		;
connectAttr "|MDL_Test|root|chainE1.jo" "|MDL_Test|root|chainE1|chainE1_PRCST.cjo"
		;
connectAttr "|RIG_Test|BRG|root|chainE1.t" "|MDL_Test|root|chainE1|chainE1_PRCST.tg[0].tt"
		;
connectAttr "|RIG_Test|BRG|root|chainE1.rp" "|MDL_Test|root|chainE1|chainE1_PRCST.tg[0].trp"
		;
connectAttr "|RIG_Test|BRG|root|chainE1.rpt" "|MDL_Test|root|chainE1|chainE1_PRCST.tg[0].trt"
		;
connectAttr "|RIG_Test|BRG|root|chainE1.r" "|MDL_Test|root|chainE1|chainE1_PRCST.tg[0].tr"
		;
connectAttr "|RIG_Test|BRG|root|chainE1.ro" "|MDL_Test|root|chainE1|chainE1_PRCST.tg[0].tro"
		;
connectAttr "|RIG_Test|BRG|root|chainE1.s" "|MDL_Test|root|chainE1|chainE1_PRCST.tg[0].ts"
		;
connectAttr "|RIG_Test|BRG|root|chainE1.pm" "|MDL_Test|root|chainE1|chainE1_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainE1.jo" "|MDL_Test|root|chainE1|chainE1_PRCST.tg[0].tjo"
		;
connectAttr "|RIG_Test|BRG|root|chainE1.ssc" "|MDL_Test|root|chainE1|chainE1_PRCST.tg[0].tsc"
		;
connectAttr "|RIG_Test|BRG|root|chainE1.is" "|MDL_Test|root|chainE1|chainE1_PRCST.tg[0].tis"
		;
connectAttr "|MDL_Test|root|chainE1|chainE1_PRCST.w0" "|MDL_Test|root|chainE1|chainE1_PRCST.tg[0].tw"
		;
connectAttr "|MDL_Test|root.ro" "|MDL_Test|root|root_PRCST.cro";
connectAttr "|MDL_Test|root.pim" "|MDL_Test|root|root_PRCST.cpim";
connectAttr "|MDL_Test|root.rp" "|MDL_Test|root|root_PRCST.crp";
connectAttr "|MDL_Test|root.rpt" "|MDL_Test|root|root_PRCST.crt";
connectAttr "|MDL_Test|root.jo" "|MDL_Test|root|root_PRCST.cjo";
connectAttr "|RIG_Test|BRG|root.t" "|MDL_Test|root|root_PRCST.tg[0].tt";
connectAttr "|RIG_Test|BRG|root.rp" "|MDL_Test|root|root_PRCST.tg[0].trp";
connectAttr "|RIG_Test|BRG|root.rpt" "|MDL_Test|root|root_PRCST.tg[0].trt";
connectAttr "|RIG_Test|BRG|root.r" "|MDL_Test|root|root_PRCST.tg[0].tr";
connectAttr "|RIG_Test|BRG|root.ro" "|MDL_Test|root|root_PRCST.tg[0].tro";
connectAttr "|RIG_Test|BRG|root.s" "|MDL_Test|root|root_PRCST.tg[0].ts";
connectAttr "|RIG_Test|BRG|root.pm" "|MDL_Test|root|root_PRCST.tg[0].tpm";
connectAttr "|RIG_Test|BRG|root.jo" "|MDL_Test|root|root_PRCST.tg[0].tjo";
connectAttr "|RIG_Test|BRG|root.ssc" "|MDL_Test|root|root_PRCST.tg[0].tsc";
connectAttr "|RIG_Test|BRG|root.is" "|MDL_Test|root|root_PRCST.tg[0].tis";
connectAttr "|MDL_Test|root|root_PRCST.w0" "|MDL_Test|root|root_PRCST.tg[0].tw";
connectAttr "|RIG_Test|BRG|root|root_PRCST.ctx" "|RIG_Test|BRG|root.tx";
connectAttr "|RIG_Test|BRG|root|root_PRCST.cty" "|RIG_Test|BRG|root.ty";
connectAttr "|RIG_Test|BRG|root|root_PRCST.ctz" "|RIG_Test|BRG|root.tz";
connectAttr "|RIG_Test|BRG|root|root_PRCST.crx" "|RIG_Test|BRG|root.rx";
connectAttr "|RIG_Test|BRG|root|root_PRCST.cry" "|RIG_Test|BRG|root.ry";
connectAttr "|RIG_Test|BRG|root|root_PRCST.crz" "|RIG_Test|BRG|root.rz";
connectAttr "|RIG_Test|BRG|root.s" "|RIG_Test|BRG|root|chainA1.is";
connectAttr "|RIG_Test|BRG|root|chainA1|chainA1_PRCST.ctx" "|RIG_Test|BRG|root|chainA1.tx"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA1_PRCST.cty" "|RIG_Test|BRG|root|chainA1.ty"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA1_PRCST.ctz" "|RIG_Test|BRG|root|chainA1.tz"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA1_PRCST.crx" "|RIG_Test|BRG|root|chainA1.rx"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA1_PRCST.cry" "|RIG_Test|BRG|root|chainA1.ry"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA1_PRCST.crz" "|RIG_Test|BRG|root|chainA1.rz"
		;
connectAttr "|RIG_Test|BRG|root|chainA1.s" "|RIG_Test|BRG|root|chainA1|chainA2.is"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA2_PRCST.ctx" "|RIG_Test|BRG|root|chainA1|chainA2.tx"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA2_PRCST.cty" "|RIG_Test|BRG|root|chainA1|chainA2.ty"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA2_PRCST.ctz" "|RIG_Test|BRG|root|chainA1|chainA2.tz"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA2_PRCST.crx" "|RIG_Test|BRG|root|chainA1|chainA2.rx"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA2_PRCST.cry" "|RIG_Test|BRG|root|chainA1|chainA2.ry"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA2_PRCST.crz" "|RIG_Test|BRG|root|chainA1|chainA2.rz"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2.s" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3.is"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA3_PRCST.ctx" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3.tx"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA3_PRCST.cty" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3.ty"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA3_PRCST.ctz" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3.tz"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA3_PRCST.crx" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3.rx"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA3_PRCST.cry" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3.ry"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA3_PRCST.crz" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3.rz"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3.s" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4.is"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.ctx" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4.tx"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.cty" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4.ty"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.ctz" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4.tz"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.crx" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4.rx"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.cry" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4.ry"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.crz" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4.rz"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4.s" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5.is"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.ctx" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5.tx"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.cty" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5.ty"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.ctz" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5.tz"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.crx" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5.rx"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.cry" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5.ry"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.crz" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5.rz"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5.s" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.is"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.ctx" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.tx"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.cty" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.ty"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.ctz" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.tz"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.crx" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.rx"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.cry" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.ry"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.crz" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.rz"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.ro" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.pim" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.rp" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.rpt" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6.jo" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.cjo"
		;
connectAttr "AUX_chainA6_BDR.t" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.tg[0].tt"
		;
connectAttr "AUX_chainA6_BDR.rp" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.tg[0].trp"
		;
connectAttr "AUX_chainA6_BDR.rpt" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.tg[0].trt"
		;
connectAttr "AUX_chainA6_BDR.r" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.tg[0].tr"
		;
connectAttr "AUX_chainA6_BDR.ro" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.tg[0].tro"
		;
connectAttr "AUX_chainA6_BDR.s" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.tg[0].ts"
		;
connectAttr "AUX_chainA6_BDR.pm" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.w0" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA6|chainA6_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5.ro" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5.pim" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5.rp" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5.rpt" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5.jo" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.cjo"
		;
connectAttr "AUX_chainA5_BDR.t" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.tg[0].tt"
		;
connectAttr "AUX_chainA5_BDR.rp" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.tg[0].trp"
		;
connectAttr "AUX_chainA5_BDR.rpt" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.tg[0].trt"
		;
connectAttr "AUX_chainA5_BDR.r" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.tg[0].tr"
		;
connectAttr "AUX_chainA5_BDR.ro" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.tg[0].tro"
		;
connectAttr "AUX_chainA5_BDR.s" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.tg[0].ts"
		;
connectAttr "AUX_chainA5_BDR.pm" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.w0" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA5|chainA5_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4.ro" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4.pim" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4.rp" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4.rpt" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4.jo" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.cjo"
		;
connectAttr "AUX_chainA4_BDR.t" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.tg[0].tt"
		;
connectAttr "AUX_chainA4_BDR.rp" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.tg[0].trp"
		;
connectAttr "AUX_chainA4_BDR.rpt" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.tg[0].trt"
		;
connectAttr "AUX_chainA4_BDR.r" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.tg[0].tr"
		;
connectAttr "AUX_chainA4_BDR.ro" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.tg[0].tro"
		;
connectAttr "AUX_chainA4_BDR.s" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.tg[0].ts"
		;
connectAttr "AUX_chainA4_BDR.pm" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.w0" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA4|chainA4_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3.ro" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA3_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3.pim" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA3_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3.rp" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA3_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3.rpt" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA3_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3.jo" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA3_PRCST.cjo"
		;
connectAttr "AUX_chainA3_BDR.t" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA3_PRCST.tg[0].tt"
		;
connectAttr "AUX_chainA3_BDR.rp" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA3_PRCST.tg[0].trp"
		;
connectAttr "AUX_chainA3_BDR.rpt" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA3_PRCST.tg[0].trt"
		;
connectAttr "AUX_chainA3_BDR.r" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA3_PRCST.tg[0].tr"
		;
connectAttr "AUX_chainA3_BDR.ro" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA3_PRCST.tg[0].tro"
		;
connectAttr "AUX_chainA3_BDR.s" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA3_PRCST.tg[0].ts"
		;
connectAttr "AUX_chainA3_BDR.pm" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA3_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA3_PRCST.w0" "|RIG_Test|BRG|root|chainA1|chainA2|chainA3|chainA3_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2.ro" "|RIG_Test|BRG|root|chainA1|chainA2|chainA2_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2.pim" "|RIG_Test|BRG|root|chainA1|chainA2|chainA2_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2.rp" "|RIG_Test|BRG|root|chainA1|chainA2|chainA2_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2.rpt" "|RIG_Test|BRG|root|chainA1|chainA2|chainA2_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2.jo" "|RIG_Test|BRG|root|chainA1|chainA2|chainA2_PRCST.cjo"
		;
connectAttr "AUX_chainA2_BDR.t" "|RIG_Test|BRG|root|chainA1|chainA2|chainA2_PRCST.tg[0].tt"
		;
connectAttr "AUX_chainA2_BDR.rp" "|RIG_Test|BRG|root|chainA1|chainA2|chainA2_PRCST.tg[0].trp"
		;
connectAttr "AUX_chainA2_BDR.rpt" "|RIG_Test|BRG|root|chainA1|chainA2|chainA2_PRCST.tg[0].trt"
		;
connectAttr "AUX_chainA2_BDR.r" "|RIG_Test|BRG|root|chainA1|chainA2|chainA2_PRCST.tg[0].tr"
		;
connectAttr "AUX_chainA2_BDR.ro" "|RIG_Test|BRG|root|chainA1|chainA2|chainA2_PRCST.tg[0].tro"
		;
connectAttr "AUX_chainA2_BDR.s" "|RIG_Test|BRG|root|chainA1|chainA2|chainA2_PRCST.tg[0].ts"
		;
connectAttr "AUX_chainA2_BDR.pm" "|RIG_Test|BRG|root|chainA1|chainA2|chainA2_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA2|chainA2_PRCST.w0" "|RIG_Test|BRG|root|chainA1|chainA2|chainA2_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|root|chainA1.ro" "|RIG_Test|BRG|root|chainA1|chainA1_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|root|chainA1.pim" "|RIG_Test|BRG|root|chainA1|chainA1_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|root|chainA1.rp" "|RIG_Test|BRG|root|chainA1|chainA1_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|root|chainA1.rpt" "|RIG_Test|BRG|root|chainA1|chainA1_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|root|chainA1.jo" "|RIG_Test|BRG|root|chainA1|chainA1_PRCST.cjo"
		;
connectAttr "AUX_chainA1_BDR.t" "|RIG_Test|BRG|root|chainA1|chainA1_PRCST.tg[0].tt"
		;
connectAttr "AUX_chainA1_BDR.rp" "|RIG_Test|BRG|root|chainA1|chainA1_PRCST.tg[0].trp"
		;
connectAttr "AUX_chainA1_BDR.rpt" "|RIG_Test|BRG|root|chainA1|chainA1_PRCST.tg[0].trt"
		;
connectAttr "AUX_chainA1_BDR.r" "|RIG_Test|BRG|root|chainA1|chainA1_PRCST.tg[0].tr"
		;
connectAttr "AUX_chainA1_BDR.ro" "|RIG_Test|BRG|root|chainA1|chainA1_PRCST.tg[0].tro"
		;
connectAttr "AUX_chainA1_BDR.s" "|RIG_Test|BRG|root|chainA1|chainA1_PRCST.tg[0].ts"
		;
connectAttr "AUX_chainA1_BDR.pm" "|RIG_Test|BRG|root|chainA1|chainA1_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainA1|chainA1_PRCST.w0" "|RIG_Test|BRG|root|chainA1|chainA1_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|root.s" "|RIG_Test|BRG|root|chainB1.is";
connectAttr "|RIG_Test|BRG|root|chainB1|chainB1_PRCST.ctx" "|RIG_Test|BRG|root|chainB1.tx"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB1_PRCST.cty" "|RIG_Test|BRG|root|chainB1.ty"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB1_PRCST.ctz" "|RIG_Test|BRG|root|chainB1.tz"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB1_PRCST.crx" "|RIG_Test|BRG|root|chainB1.rx"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB1_PRCST.cry" "|RIG_Test|BRG|root|chainB1.ry"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB1_PRCST.crz" "|RIG_Test|BRG|root|chainB1.rz"
		;
connectAttr "|RIG_Test|BRG|root|chainB1.s" "|RIG_Test|BRG|root|chainB1|chainB2.is"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB2_PRCST.ctx" "|RIG_Test|BRG|root|chainB1|chainB2.tx"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB2_PRCST.cty" "|RIG_Test|BRG|root|chainB1|chainB2.ty"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB2_PRCST.ctz" "|RIG_Test|BRG|root|chainB1|chainB2.tz"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB2_PRCST.crx" "|RIG_Test|BRG|root|chainB1|chainB2.rx"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB2_PRCST.cry" "|RIG_Test|BRG|root|chainB1|chainB2.ry"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB2_PRCST.crz" "|RIG_Test|BRG|root|chainB1|chainB2.rz"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2.s" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3.is"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB3_PRCST.ctx" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3.tx"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB3_PRCST.cty" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3.ty"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB3_PRCST.ctz" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3.tz"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB3_PRCST.crx" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3.rx"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB3_PRCST.cry" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3.ry"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB3_PRCST.crz" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3.rz"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3.s" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4.is"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.ctx" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4.tx"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.cty" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4.ty"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.ctz" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4.tz"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.crx" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4.rx"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.cry" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4.ry"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.crz" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4.rz"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4.s" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5.is"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.ctx" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5.tx"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.cty" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5.ty"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.ctz" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5.tz"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.crx" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5.rx"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.cry" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5.ry"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.crz" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5.rz"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5.ro" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5.pim" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5.rp" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5.rpt" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5.jo" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.cjo"
		;
connectAttr "AUX_chainB5_BDR.t" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.tg[0].tt"
		;
connectAttr "AUX_chainB5_BDR.rp" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.tg[0].trp"
		;
connectAttr "AUX_chainB5_BDR.rpt" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.tg[0].trt"
		;
connectAttr "AUX_chainB5_BDR.r" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.tg[0].tr"
		;
connectAttr "AUX_chainB5_BDR.ro" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.tg[0].tro"
		;
connectAttr "AUX_chainB5_BDR.s" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.tg[0].ts"
		;
connectAttr "AUX_chainB5_BDR.pm" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.w0" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB5|chainB5_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4.ro" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4.pim" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4.rp" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4.rpt" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4.jo" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.cjo"
		;
connectAttr "AUX_chainB4_BDR.t" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.tg[0].tt"
		;
connectAttr "AUX_chainB4_BDR.rp" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.tg[0].trp"
		;
connectAttr "AUX_chainB4_BDR.rpt" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.tg[0].trt"
		;
connectAttr "AUX_chainB4_BDR.r" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.tg[0].tr"
		;
connectAttr "AUX_chainB4_BDR.ro" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.tg[0].tro"
		;
connectAttr "AUX_chainB4_BDR.s" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.tg[0].ts"
		;
connectAttr "AUX_chainB4_BDR.pm" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.w0" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB4|chainB4_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3.ro" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB3_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3.pim" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB3_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3.rp" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB3_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3.rpt" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB3_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3.jo" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB3_PRCST.cjo"
		;
connectAttr "AUX_chainB3_BDR.t" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB3_PRCST.tg[0].tt"
		;
connectAttr "AUX_chainB3_BDR.rp" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB3_PRCST.tg[0].trp"
		;
connectAttr "AUX_chainB3_BDR.rpt" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB3_PRCST.tg[0].trt"
		;
connectAttr "AUX_chainB3_BDR.r" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB3_PRCST.tg[0].tr"
		;
connectAttr "AUX_chainB3_BDR.ro" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB3_PRCST.tg[0].tro"
		;
connectAttr "AUX_chainB3_BDR.s" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB3_PRCST.tg[0].ts"
		;
connectAttr "AUX_chainB3_BDR.pm" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB3_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB3_PRCST.w0" "|RIG_Test|BRG|root|chainB1|chainB2|chainB3|chainB3_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2.ro" "|RIG_Test|BRG|root|chainB1|chainB2|chainB2_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2.pim" "|RIG_Test|BRG|root|chainB1|chainB2|chainB2_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2.rp" "|RIG_Test|BRG|root|chainB1|chainB2|chainB2_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2.rpt" "|RIG_Test|BRG|root|chainB1|chainB2|chainB2_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2.jo" "|RIG_Test|BRG|root|chainB1|chainB2|chainB2_PRCST.cjo"
		;
connectAttr "AUX_chainB2_BDR.t" "|RIG_Test|BRG|root|chainB1|chainB2|chainB2_PRCST.tg[0].tt"
		;
connectAttr "AUX_chainB2_BDR.rp" "|RIG_Test|BRG|root|chainB1|chainB2|chainB2_PRCST.tg[0].trp"
		;
connectAttr "AUX_chainB2_BDR.rpt" "|RIG_Test|BRG|root|chainB1|chainB2|chainB2_PRCST.tg[0].trt"
		;
connectAttr "AUX_chainB2_BDR.r" "|RIG_Test|BRG|root|chainB1|chainB2|chainB2_PRCST.tg[0].tr"
		;
connectAttr "AUX_chainB2_BDR.ro" "|RIG_Test|BRG|root|chainB1|chainB2|chainB2_PRCST.tg[0].tro"
		;
connectAttr "AUX_chainB2_BDR.s" "|RIG_Test|BRG|root|chainB1|chainB2|chainB2_PRCST.tg[0].ts"
		;
connectAttr "AUX_chainB2_BDR.pm" "|RIG_Test|BRG|root|chainB1|chainB2|chainB2_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB2|chainB2_PRCST.w0" "|RIG_Test|BRG|root|chainB1|chainB2|chainB2_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|root|chainB1.ro" "|RIG_Test|BRG|root|chainB1|chainB1_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|root|chainB1.pim" "|RIG_Test|BRG|root|chainB1|chainB1_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|root|chainB1.rp" "|RIG_Test|BRG|root|chainB1|chainB1_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|root|chainB1.rpt" "|RIG_Test|BRG|root|chainB1|chainB1_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|root|chainB1.jo" "|RIG_Test|BRG|root|chainB1|chainB1_PRCST.cjo"
		;
connectAttr "AUX_chainB1_BDR.t" "|RIG_Test|BRG|root|chainB1|chainB1_PRCST.tg[0].tt"
		;
connectAttr "AUX_chainB1_BDR.rp" "|RIG_Test|BRG|root|chainB1|chainB1_PRCST.tg[0].trp"
		;
connectAttr "AUX_chainB1_BDR.rpt" "|RIG_Test|BRG|root|chainB1|chainB1_PRCST.tg[0].trt"
		;
connectAttr "AUX_chainB1_BDR.r" "|RIG_Test|BRG|root|chainB1|chainB1_PRCST.tg[0].tr"
		;
connectAttr "AUX_chainB1_BDR.ro" "|RIG_Test|BRG|root|chainB1|chainB1_PRCST.tg[0].tro"
		;
connectAttr "AUX_chainB1_BDR.s" "|RIG_Test|BRG|root|chainB1|chainB1_PRCST.tg[0].ts"
		;
connectAttr "AUX_chainB1_BDR.pm" "|RIG_Test|BRG|root|chainB1|chainB1_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainB1|chainB1_PRCST.w0" "|RIG_Test|BRG|root|chainB1|chainB1_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|root.s" "|RIG_Test|BRG|root|chainC1.is";
connectAttr "|RIG_Test|BRG|root|chainC1|chainC1_PRCST.ctx" "|RIG_Test|BRG|root|chainC1.tx"
		;
connectAttr "|RIG_Test|BRG|root|chainC1|chainC1_PRCST.cty" "|RIG_Test|BRG|root|chainC1.ty"
		;
connectAttr "|RIG_Test|BRG|root|chainC1|chainC1_PRCST.ctz" "|RIG_Test|BRG|root|chainC1.tz"
		;
connectAttr "|RIG_Test|BRG|root|chainC1|chainC1_PRCST.crx" "|RIG_Test|BRG|root|chainC1.rx"
		;
connectAttr "|RIG_Test|BRG|root|chainC1|chainC1_PRCST.cry" "|RIG_Test|BRG|root|chainC1.ry"
		;
connectAttr "|RIG_Test|BRG|root|chainC1|chainC1_PRCST.crz" "|RIG_Test|BRG|root|chainC1.rz"
		;
connectAttr "|RIG_Test|BRG|root|chainC1.ro" "|RIG_Test|BRG|root|chainC1|chainC1_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|root|chainC1.pim" "|RIG_Test|BRG|root|chainC1|chainC1_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|root|chainC1.rp" "|RIG_Test|BRG|root|chainC1|chainC1_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|root|chainC1.rpt" "|RIG_Test|BRG|root|chainC1|chainC1_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|root|chainC1.jo" "|RIG_Test|BRG|root|chainC1|chainC1_PRCST.cjo"
		;
connectAttr "AUX_chainC1_BDR.t" "|RIG_Test|BRG|root|chainC1|chainC1_PRCST.tg[0].tt"
		;
connectAttr "AUX_chainC1_BDR.rp" "|RIG_Test|BRG|root|chainC1|chainC1_PRCST.tg[0].trp"
		;
connectAttr "AUX_chainC1_BDR.rpt" "|RIG_Test|BRG|root|chainC1|chainC1_PRCST.tg[0].trt"
		;
connectAttr "AUX_chainC1_BDR.r" "|RIG_Test|BRG|root|chainC1|chainC1_PRCST.tg[0].tr"
		;
connectAttr "AUX_chainC1_BDR.ro" "|RIG_Test|BRG|root|chainC1|chainC1_PRCST.tg[0].tro"
		;
connectAttr "AUX_chainC1_BDR.s" "|RIG_Test|BRG|root|chainC1|chainC1_PRCST.tg[0].ts"
		;
connectAttr "AUX_chainC1_BDR.pm" "|RIG_Test|BRG|root|chainC1|chainC1_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainC1|chainC1_PRCST.w0" "|RIG_Test|BRG|root|chainC1|chainC1_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|root.s" "|RIG_Test|BRG|root|chainD1.is";
connectAttr "|RIG_Test|BRG|root|chainD1|chainD1_PRCST.ctx" "|RIG_Test|BRG|root|chainD1.tx"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD1_PRCST.cty" "|RIG_Test|BRG|root|chainD1.ty"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD1_PRCST.ctz" "|RIG_Test|BRG|root|chainD1.tz"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD1_PRCST.crx" "|RIG_Test|BRG|root|chainD1.rx"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD1_PRCST.cry" "|RIG_Test|BRG|root|chainD1.ry"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD1_PRCST.crz" "|RIG_Test|BRG|root|chainD1.rz"
		;
connectAttr "|RIG_Test|BRG|root|chainD1.s" "|RIG_Test|BRG|root|chainD1|chainD2.is"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD2_PRCST.ctx" "|RIG_Test|BRG|root|chainD1|chainD2.tx"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD2_PRCST.cty" "|RIG_Test|BRG|root|chainD1|chainD2.ty"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD2_PRCST.ctz" "|RIG_Test|BRG|root|chainD1|chainD2.tz"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD2_PRCST.crx" "|RIG_Test|BRG|root|chainD1|chainD2.rx"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD2_PRCST.cry" "|RIG_Test|BRG|root|chainD1|chainD2.ry"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD2_PRCST.crz" "|RIG_Test|BRG|root|chainD1|chainD2.rz"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2.s" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3.is"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD3_PRCST.ctx" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3.tx"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD3_PRCST.cty" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3.ty"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD3_PRCST.ctz" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3.tz"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD3_PRCST.crx" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3.rx"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD3_PRCST.cry" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3.ry"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD3_PRCST.crz" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3.rz"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3.s" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4.is"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.ctx" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4.tx"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.cty" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4.ty"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.ctz" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4.tz"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.crx" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4.rx"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.cry" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4.ry"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.crz" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4.rz"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4.s" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5.is"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.ctx" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5.tx"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.cty" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5.ty"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.ctz" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5.tz"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.crx" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5.rx"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.cry" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5.ry"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.crz" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5.rz"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5.ro" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5.pim" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5.rp" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5.rpt" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5.jo" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.cjo"
		;
connectAttr "AUX_chainD5_BDR.t" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.tg[0].tt"
		;
connectAttr "AUX_chainD5_BDR.rp" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.tg[0].trp"
		;
connectAttr "AUX_chainD5_BDR.rpt" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.tg[0].trt"
		;
connectAttr "AUX_chainD5_BDR.r" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.tg[0].tr"
		;
connectAttr "AUX_chainD5_BDR.ro" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.tg[0].tro"
		;
connectAttr "AUX_chainD5_BDR.s" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.tg[0].ts"
		;
connectAttr "AUX_chainD5_BDR.pm" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.w0" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD5|chainD5_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4.ro" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4.pim" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4.rp" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4.rpt" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4.jo" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.cjo"
		;
connectAttr "AUX_chainD4_BDR.t" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.tg[0].tt"
		;
connectAttr "AUX_chainD4_BDR.rp" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.tg[0].trp"
		;
connectAttr "AUX_chainD4_BDR.rpt" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.tg[0].trt"
		;
connectAttr "AUX_chainD4_BDR.r" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.tg[0].tr"
		;
connectAttr "AUX_chainD4_BDR.ro" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.tg[0].tro"
		;
connectAttr "AUX_chainD4_BDR.s" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.tg[0].ts"
		;
connectAttr "AUX_chainD4_BDR.pm" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.w0" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD4|chainD4_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3.s" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6.is"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.ctx" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6.tx"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.cty" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6.ty"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.ctz" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6.tz"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.crx" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6.rx"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.cry" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6.ry"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.crz" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6.rz"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6.s" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7.is"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.ctx" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7.tx"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.cty" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7.ty"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.ctz" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7.tz"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.crx" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7.rx"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.cry" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7.ry"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.crz" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7.rz"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7.s" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.is"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.ctx" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.tx"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.cty" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.ty"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.ctz" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.tz"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.crx" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.rx"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.cry" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.ry"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.crz" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.rz"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.ro" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.pim" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.rp" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.rpt" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8.jo" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.cjo"
		;
connectAttr "AUX_chainD8_BDR.t" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.tg[0].tt"
		;
connectAttr "AUX_chainD8_BDR.rp" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.tg[0].trp"
		;
connectAttr "AUX_chainD8_BDR.rpt" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.tg[0].trt"
		;
connectAttr "AUX_chainD8_BDR.r" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.tg[0].tr"
		;
connectAttr "AUX_chainD8_BDR.ro" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.tg[0].tro"
		;
connectAttr "AUX_chainD8_BDR.s" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.tg[0].ts"
		;
connectAttr "AUX_chainD8_BDR.pm" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.w0" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD8|chainD8_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7.ro" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7.pim" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7.rp" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7.rpt" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7.jo" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.cjo"
		;
connectAttr "AUX_chainD7_BDR.t" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.tg[0].tt"
		;
connectAttr "AUX_chainD7_BDR.rp" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.tg[0].trp"
		;
connectAttr "AUX_chainD7_BDR.rpt" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.tg[0].trt"
		;
connectAttr "AUX_chainD7_BDR.r" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.tg[0].tr"
		;
connectAttr "AUX_chainD7_BDR.ro" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.tg[0].tro"
		;
connectAttr "AUX_chainD7_BDR.s" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.tg[0].ts"
		;
connectAttr "AUX_chainD7_BDR.pm" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.w0" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD7|chainD7_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6.ro" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6.pim" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6.rp" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6.rpt" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6.jo" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.cjo"
		;
connectAttr "AUX_chainD6_BDR.t" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.tg[0].tt"
		;
connectAttr "AUX_chainD6_BDR.rp" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.tg[0].trp"
		;
connectAttr "AUX_chainD6_BDR.rpt" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.tg[0].trt"
		;
connectAttr "AUX_chainD6_BDR.r" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.tg[0].tr"
		;
connectAttr "AUX_chainD6_BDR.ro" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.tg[0].tro"
		;
connectAttr "AUX_chainD6_BDR.s" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.tg[0].ts"
		;
connectAttr "AUX_chainD6_BDR.pm" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.w0" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD6|chainD6_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3.ro" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD3_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3.pim" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD3_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3.rp" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD3_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3.rpt" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD3_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3.jo" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD3_PRCST.cjo"
		;
connectAttr "AUX_chainD3_BDR.t" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD3_PRCST.tg[0].tt"
		;
connectAttr "AUX_chainD3_BDR.rp" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD3_PRCST.tg[0].trp"
		;
connectAttr "AUX_chainD3_BDR.rpt" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD3_PRCST.tg[0].trt"
		;
connectAttr "AUX_chainD3_BDR.r" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD3_PRCST.tg[0].tr"
		;
connectAttr "AUX_chainD3_BDR.ro" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD3_PRCST.tg[0].tro"
		;
connectAttr "AUX_chainD3_BDR.s" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD3_PRCST.tg[0].ts"
		;
connectAttr "AUX_chainD3_BDR.pm" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD3_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD3_PRCST.w0" "|RIG_Test|BRG|root|chainD1|chainD2|chainD3|chainD3_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2.ro" "|RIG_Test|BRG|root|chainD1|chainD2|chainD2_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2.pim" "|RIG_Test|BRG|root|chainD1|chainD2|chainD2_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2.rp" "|RIG_Test|BRG|root|chainD1|chainD2|chainD2_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2.rpt" "|RIG_Test|BRG|root|chainD1|chainD2|chainD2_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2.jo" "|RIG_Test|BRG|root|chainD1|chainD2|chainD2_PRCST.cjo"
		;
connectAttr "AUX_chainD2_BDR.t" "|RIG_Test|BRG|root|chainD1|chainD2|chainD2_PRCST.tg[0].tt"
		;
connectAttr "AUX_chainD2_BDR.rp" "|RIG_Test|BRG|root|chainD1|chainD2|chainD2_PRCST.tg[0].trp"
		;
connectAttr "AUX_chainD2_BDR.rpt" "|RIG_Test|BRG|root|chainD1|chainD2|chainD2_PRCST.tg[0].trt"
		;
connectAttr "AUX_chainD2_BDR.r" "|RIG_Test|BRG|root|chainD1|chainD2|chainD2_PRCST.tg[0].tr"
		;
connectAttr "AUX_chainD2_BDR.ro" "|RIG_Test|BRG|root|chainD1|chainD2|chainD2_PRCST.tg[0].tro"
		;
connectAttr "AUX_chainD2_BDR.s" "|RIG_Test|BRG|root|chainD1|chainD2|chainD2_PRCST.tg[0].ts"
		;
connectAttr "AUX_chainD2_BDR.pm" "|RIG_Test|BRG|root|chainD1|chainD2|chainD2_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD2|chainD2_PRCST.w0" "|RIG_Test|BRG|root|chainD1|chainD2|chainD2_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|root|chainD1.ro" "|RIG_Test|BRG|root|chainD1|chainD1_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|root|chainD1.pim" "|RIG_Test|BRG|root|chainD1|chainD1_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|root|chainD1.rp" "|RIG_Test|BRG|root|chainD1|chainD1_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|root|chainD1.rpt" "|RIG_Test|BRG|root|chainD1|chainD1_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|root|chainD1.jo" "|RIG_Test|BRG|root|chainD1|chainD1_PRCST.cjo"
		;
connectAttr "AUX_chainD1_BDR.t" "|RIG_Test|BRG|root|chainD1|chainD1_PRCST.tg[0].tt"
		;
connectAttr "AUX_chainD1_BDR.rp" "|RIG_Test|BRG|root|chainD1|chainD1_PRCST.tg[0].trp"
		;
connectAttr "AUX_chainD1_BDR.rpt" "|RIG_Test|BRG|root|chainD1|chainD1_PRCST.tg[0].trt"
		;
connectAttr "AUX_chainD1_BDR.r" "|RIG_Test|BRG|root|chainD1|chainD1_PRCST.tg[0].tr"
		;
connectAttr "AUX_chainD1_BDR.ro" "|RIG_Test|BRG|root|chainD1|chainD1_PRCST.tg[0].tro"
		;
connectAttr "AUX_chainD1_BDR.s" "|RIG_Test|BRG|root|chainD1|chainD1_PRCST.tg[0].ts"
		;
connectAttr "AUX_chainD1_BDR.pm" "|RIG_Test|BRG|root|chainD1|chainD1_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainD1|chainD1_PRCST.w0" "|RIG_Test|BRG|root|chainD1|chainD1_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|root.s" "|RIG_Test|BRG|root|chainE1.is";
connectAttr "|RIG_Test|BRG|root|chainE1|chainE1_PRCST.ctx" "|RIG_Test|BRG|root|chainE1.tx"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE1_PRCST.cty" "|RIG_Test|BRG|root|chainE1.ty"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE1_PRCST.ctz" "|RIG_Test|BRG|root|chainE1.tz"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE1_PRCST.crx" "|RIG_Test|BRG|root|chainE1.rx"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE1_PRCST.cry" "|RIG_Test|BRG|root|chainE1.ry"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE1_PRCST.crz" "|RIG_Test|BRG|root|chainE1.rz"
		;
connectAttr "|RIG_Test|BRG|root|chainE1.s" "|RIG_Test|BRG|root|chainE1|chainE2.is"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE2_PRCST.ctx" "|RIG_Test|BRG|root|chainE1|chainE2.tx"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE2_PRCST.cty" "|RIG_Test|BRG|root|chainE1|chainE2.ty"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE2_PRCST.ctz" "|RIG_Test|BRG|root|chainE1|chainE2.tz"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE2_PRCST.crx" "|RIG_Test|BRG|root|chainE1|chainE2.rx"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE2_PRCST.cry" "|RIG_Test|BRG|root|chainE1|chainE2.ry"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE2_PRCST.crz" "|RIG_Test|BRG|root|chainE1|chainE2.rz"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2.s" "|RIG_Test|BRG|root|chainE1|chainE2|chainE3.is"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE3|chainE3_PRCST.ctx" "|RIG_Test|BRG|root|chainE1|chainE2|chainE3.tx"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE3|chainE3_PRCST.cty" "|RIG_Test|BRG|root|chainE1|chainE2|chainE3.ty"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE3|chainE3_PRCST.ctz" "|RIG_Test|BRG|root|chainE1|chainE2|chainE3.tz"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE3|chainE3_PRCST.crx" "|RIG_Test|BRG|root|chainE1|chainE2|chainE3.rx"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE3|chainE3_PRCST.cry" "|RIG_Test|BRG|root|chainE1|chainE2|chainE3.ry"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE3|chainE3_PRCST.crz" "|RIG_Test|BRG|root|chainE1|chainE2|chainE3.rz"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE3.ro" "|RIG_Test|BRG|root|chainE1|chainE2|chainE3|chainE3_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE3.pim" "|RIG_Test|BRG|root|chainE1|chainE2|chainE3|chainE3_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE3.rp" "|RIG_Test|BRG|root|chainE1|chainE2|chainE3|chainE3_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE3.rpt" "|RIG_Test|BRG|root|chainE1|chainE2|chainE3|chainE3_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE3.jo" "|RIG_Test|BRG|root|chainE1|chainE2|chainE3|chainE3_PRCST.cjo"
		;
connectAttr "AUX_chainE3_BDR.t" "|RIG_Test|BRG|root|chainE1|chainE2|chainE3|chainE3_PRCST.tg[0].tt"
		;
connectAttr "AUX_chainE3_BDR.rp" "|RIG_Test|BRG|root|chainE1|chainE2|chainE3|chainE3_PRCST.tg[0].trp"
		;
connectAttr "AUX_chainE3_BDR.rpt" "|RIG_Test|BRG|root|chainE1|chainE2|chainE3|chainE3_PRCST.tg[0].trt"
		;
connectAttr "AUX_chainE3_BDR.r" "|RIG_Test|BRG|root|chainE1|chainE2|chainE3|chainE3_PRCST.tg[0].tr"
		;
connectAttr "AUX_chainE3_BDR.ro" "|RIG_Test|BRG|root|chainE1|chainE2|chainE3|chainE3_PRCST.tg[0].tro"
		;
connectAttr "AUX_chainE3_BDR.s" "|RIG_Test|BRG|root|chainE1|chainE2|chainE3|chainE3_PRCST.tg[0].ts"
		;
connectAttr "AUX_chainE3_BDR.pm" "|RIG_Test|BRG|root|chainE1|chainE2|chainE3|chainE3_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE3|chainE3_PRCST.w0" "|RIG_Test|BRG|root|chainE1|chainE2|chainE3|chainE3_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2.ro" "|RIG_Test|BRG|root|chainE1|chainE2|chainE2_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2.pim" "|RIG_Test|BRG|root|chainE1|chainE2|chainE2_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2.rp" "|RIG_Test|BRG|root|chainE1|chainE2|chainE2_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2.rpt" "|RIG_Test|BRG|root|chainE1|chainE2|chainE2_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2.jo" "|RIG_Test|BRG|root|chainE1|chainE2|chainE2_PRCST.cjo"
		;
connectAttr "AUX_chainE2_BDR.t" "|RIG_Test|BRG|root|chainE1|chainE2|chainE2_PRCST.tg[0].tt"
		;
connectAttr "AUX_chainE2_BDR.rp" "|RIG_Test|BRG|root|chainE1|chainE2|chainE2_PRCST.tg[0].trp"
		;
connectAttr "AUX_chainE2_BDR.rpt" "|RIG_Test|BRG|root|chainE1|chainE2|chainE2_PRCST.tg[0].trt"
		;
connectAttr "AUX_chainE2_BDR.r" "|RIG_Test|BRG|root|chainE1|chainE2|chainE2_PRCST.tg[0].tr"
		;
connectAttr "AUX_chainE2_BDR.ro" "|RIG_Test|BRG|root|chainE1|chainE2|chainE2_PRCST.tg[0].tro"
		;
connectAttr "AUX_chainE2_BDR.s" "|RIG_Test|BRG|root|chainE1|chainE2|chainE2_PRCST.tg[0].ts"
		;
connectAttr "AUX_chainE2_BDR.pm" "|RIG_Test|BRG|root|chainE1|chainE2|chainE2_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE2|chainE2_PRCST.w0" "|RIG_Test|BRG|root|chainE1|chainE2|chainE2_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|root|chainE1.s" "|RIG_Test|BRG|root|chainE1|chainE4.is"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE4|chainE4_PRCST.ctx" "|RIG_Test|BRG|root|chainE1|chainE4.tx"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE4|chainE4_PRCST.cty" "|RIG_Test|BRG|root|chainE1|chainE4.ty"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE4|chainE4_PRCST.ctz" "|RIG_Test|BRG|root|chainE1|chainE4.tz"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE4|chainE4_PRCST.crx" "|RIG_Test|BRG|root|chainE1|chainE4.rx"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE4|chainE4_PRCST.cry" "|RIG_Test|BRG|root|chainE1|chainE4.ry"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE4|chainE4_PRCST.crz" "|RIG_Test|BRG|root|chainE1|chainE4.rz"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE4.ro" "|RIG_Test|BRG|root|chainE1|chainE4|chainE4_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE4.pim" "|RIG_Test|BRG|root|chainE1|chainE4|chainE4_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE4.rp" "|RIG_Test|BRG|root|chainE1|chainE4|chainE4_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE4.rpt" "|RIG_Test|BRG|root|chainE1|chainE4|chainE4_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE4.jo" "|RIG_Test|BRG|root|chainE1|chainE4|chainE4_PRCST.cjo"
		;
connectAttr "AUX_chainE4_BDR.t" "|RIG_Test|BRG|root|chainE1|chainE4|chainE4_PRCST.tg[0].tt"
		;
connectAttr "AUX_chainE4_BDR.rp" "|RIG_Test|BRG|root|chainE1|chainE4|chainE4_PRCST.tg[0].trp"
		;
connectAttr "AUX_chainE4_BDR.rpt" "|RIG_Test|BRG|root|chainE1|chainE4|chainE4_PRCST.tg[0].trt"
		;
connectAttr "AUX_chainE4_BDR.r" "|RIG_Test|BRG|root|chainE1|chainE4|chainE4_PRCST.tg[0].tr"
		;
connectAttr "AUX_chainE4_BDR.ro" "|RIG_Test|BRG|root|chainE1|chainE4|chainE4_PRCST.tg[0].tro"
		;
connectAttr "AUX_chainE4_BDR.s" "|RIG_Test|BRG|root|chainE1|chainE4|chainE4_PRCST.tg[0].ts"
		;
connectAttr "AUX_chainE4_BDR.pm" "|RIG_Test|BRG|root|chainE1|chainE4|chainE4_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE4|chainE4_PRCST.w0" "|RIG_Test|BRG|root|chainE1|chainE4|chainE4_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|root|chainE1.ro" "|RIG_Test|BRG|root|chainE1|chainE1_PRCST.cro"
		;
connectAttr "|RIG_Test|BRG|root|chainE1.pim" "|RIG_Test|BRG|root|chainE1|chainE1_PRCST.cpim"
		;
connectAttr "|RIG_Test|BRG|root|chainE1.rp" "|RIG_Test|BRG|root|chainE1|chainE1_PRCST.crp"
		;
connectAttr "|RIG_Test|BRG|root|chainE1.rpt" "|RIG_Test|BRG|root|chainE1|chainE1_PRCST.crt"
		;
connectAttr "|RIG_Test|BRG|root|chainE1.jo" "|RIG_Test|BRG|root|chainE1|chainE1_PRCST.cjo"
		;
connectAttr "AUX_chainE1_BDR.t" "|RIG_Test|BRG|root|chainE1|chainE1_PRCST.tg[0].tt"
		;
connectAttr "AUX_chainE1_BDR.rp" "|RIG_Test|BRG|root|chainE1|chainE1_PRCST.tg[0].trp"
		;
connectAttr "AUX_chainE1_BDR.rpt" "|RIG_Test|BRG|root|chainE1|chainE1_PRCST.tg[0].trt"
		;
connectAttr "AUX_chainE1_BDR.r" "|RIG_Test|BRG|root|chainE1|chainE1_PRCST.tg[0].tr"
		;
connectAttr "AUX_chainE1_BDR.ro" "|RIG_Test|BRG|root|chainE1|chainE1_PRCST.tg[0].tro"
		;
connectAttr "AUX_chainE1_BDR.s" "|RIG_Test|BRG|root|chainE1|chainE1_PRCST.tg[0].ts"
		;
connectAttr "AUX_chainE1_BDR.pm" "|RIG_Test|BRG|root|chainE1|chainE1_PRCST.tg[0].tpm"
		;
connectAttr "|RIG_Test|BRG|root|chainE1|chainE1_PRCST.w0" "|RIG_Test|BRG|root|chainE1|chainE1_PRCST.tg[0].tw"
		;
connectAttr "|RIG_Test|BRG|root.ro" "|RIG_Test|BRG|root|root_PRCST.cro";
connectAttr "|RIG_Test|BRG|root.pim" "|RIG_Test|BRG|root|root_PRCST.cpim";
connectAttr "|RIG_Test|BRG|root.rp" "|RIG_Test|BRG|root|root_PRCST.crp";
connectAttr "|RIG_Test|BRG|root.rpt" "|RIG_Test|BRG|root|root_PRCST.crt";
connectAttr "|RIG_Test|BRG|root.jo" "|RIG_Test|BRG|root|root_PRCST.cjo";
connectAttr "AUX_Root_BDR.t" "|RIG_Test|BRG|root|root_PRCST.tg[0].tt";
connectAttr "AUX_Root_BDR.rp" "|RIG_Test|BRG|root|root_PRCST.tg[0].trp";
connectAttr "AUX_Root_BDR.rpt" "|RIG_Test|BRG|root|root_PRCST.tg[0].trt";
connectAttr "AUX_Root_BDR.r" "|RIG_Test|BRG|root|root_PRCST.tg[0].tr";
connectAttr "AUX_Root_BDR.ro" "|RIG_Test|BRG|root|root_PRCST.tg[0].tro";
connectAttr "AUX_Root_BDR.s" "|RIG_Test|BRG|root|root_PRCST.tg[0].ts";
connectAttr "AUX_Root_BDR.pm" "|RIG_Test|BRG|root|root_PRCST.tg[0].tpm";
connectAttr "|RIG_Test|BRG|root|root_PRCST.w0" "|RIG_Test|BRG|root|root_PRCST.tg[0].tw"
		;
connectAttr "CTL_chainA1_IDT_PRCST.ctx" "CTL_chainA1_IDT.tx" -l on;
connectAttr "CTL_chainA1_IDT_PRCST.cty" "CTL_chainA1_IDT.ty" -l on;
connectAttr "CTL_chainA1_IDT_PRCST.ctz" "CTL_chainA1_IDT.tz" -l on;
connectAttr "CTL_chainA1_IDT_PRCST.crx" "CTL_chainA1_IDT.rx" -l on;
connectAttr "CTL_chainA1_IDT_PRCST.cry" "CTL_chainA1_IDT.ry" -l on;
connectAttr "CTL_chainA1_IDT_PRCST.crz" "CTL_chainA1_IDT.rz" -l on;
connectAttr "CTL_chainA1_IDT.ro" "CTL_chainA1_IDT_PRCST.cro";
connectAttr "CTL_chainA1_IDT.pim" "CTL_chainA1_IDT_PRCST.cpim";
connectAttr "CTL_chainA1_IDT.rp" "CTL_chainA1_IDT_PRCST.crp";
connectAttr "CTL_chainA1_IDT.rpt" "CTL_chainA1_IDT_PRCST.crt";
connectAttr "CTL_RootLocal.t" "CTL_chainA1_IDT_PRCST.tg[0].tt";
connectAttr "CTL_RootLocal.rp" "CTL_chainA1_IDT_PRCST.tg[0].trp";
connectAttr "CTL_RootLocal.rpt" "CTL_chainA1_IDT_PRCST.tg[0].trt";
connectAttr "CTL_RootLocal.r" "CTL_chainA1_IDT_PRCST.tg[0].tr";
connectAttr "CTL_RootLocal.ro" "CTL_chainA1_IDT_PRCST.tg[0].tro";
connectAttr "CTL_RootLocal.s" "CTL_chainA1_IDT_PRCST.tg[0].ts";
connectAttr "CTL_RootLocal.pm" "CTL_chainA1_IDT_PRCST.tg[0].tpm";
connectAttr "CTL_chainA1_IDT_PRCST.w0" "CTL_chainA1_IDT_PRCST.tg[0].tw";
connectAttr "CTL_chainB1_IDT_PRCST.ctx" "CTL_chainB1_IDT.tx" -l on;
connectAttr "CTL_chainB1_IDT_PRCST.cty" "CTL_chainB1_IDT.ty" -l on;
connectAttr "CTL_chainB1_IDT_PRCST.ctz" "CTL_chainB1_IDT.tz" -l on;
connectAttr "CTL_chainB1_IDT_PRCST.crx" "CTL_chainB1_IDT.rx" -l on;
connectAttr "CTL_chainB1_IDT_PRCST.cry" "CTL_chainB1_IDT.ry" -l on;
connectAttr "CTL_chainB1_IDT_PRCST.crz" "CTL_chainB1_IDT.rz" -l on;
connectAttr "CTL_chainB1_IDT.ro" "CTL_chainB1_IDT_PRCST.cro";
connectAttr "CTL_chainB1_IDT.pim" "CTL_chainB1_IDT_PRCST.cpim";
connectAttr "CTL_chainB1_IDT.rp" "CTL_chainB1_IDT_PRCST.crp";
connectAttr "CTL_chainB1_IDT.rpt" "CTL_chainB1_IDT_PRCST.crt";
connectAttr "CTL_RootLocal.t" "CTL_chainB1_IDT_PRCST.tg[0].tt";
connectAttr "CTL_RootLocal.rp" "CTL_chainB1_IDT_PRCST.tg[0].trp";
connectAttr "CTL_RootLocal.rpt" "CTL_chainB1_IDT_PRCST.tg[0].trt";
connectAttr "CTL_RootLocal.r" "CTL_chainB1_IDT_PRCST.tg[0].tr";
connectAttr "CTL_RootLocal.ro" "CTL_chainB1_IDT_PRCST.tg[0].tro";
connectAttr "CTL_RootLocal.s" "CTL_chainB1_IDT_PRCST.tg[0].ts";
connectAttr "CTL_RootLocal.pm" "CTL_chainB1_IDT_PRCST.tg[0].tpm";
connectAttr "CTL_chainB1_IDT_PRCST.w0" "CTL_chainB1_IDT_PRCST.tg[0].tw";
connectAttr "CTL_chainC1_IDT_PRCST.ctx" "CTL_chainC1_IDT.tx" -l on;
connectAttr "CTL_chainC1_IDT_PRCST.cty" "CTL_chainC1_IDT.ty" -l on;
connectAttr "CTL_chainC1_IDT_PRCST.ctz" "CTL_chainC1_IDT.tz" -l on;
connectAttr "CTL_chainC1_IDT_PRCST.crx" "CTL_chainC1_IDT.rx" -l on;
connectAttr "CTL_chainC1_IDT_PRCST.cry" "CTL_chainC1_IDT.ry" -l on;
connectAttr "CTL_chainC1_IDT_PRCST.crz" "CTL_chainC1_IDT.rz" -l on;
connectAttr "CTL_chainC1_IDT.ro" "CTL_chainC1_IDT_PRCST.cro";
connectAttr "CTL_chainC1_IDT.pim" "CTL_chainC1_IDT_PRCST.cpim";
connectAttr "CTL_chainC1_IDT.rp" "CTL_chainC1_IDT_PRCST.crp";
connectAttr "CTL_chainC1_IDT.rpt" "CTL_chainC1_IDT_PRCST.crt";
connectAttr "CTL_RootLocal.t" "CTL_chainC1_IDT_PRCST.tg[0].tt";
connectAttr "CTL_RootLocal.rp" "CTL_chainC1_IDT_PRCST.tg[0].trp";
connectAttr "CTL_RootLocal.rpt" "CTL_chainC1_IDT_PRCST.tg[0].trt";
connectAttr "CTL_RootLocal.r" "CTL_chainC1_IDT_PRCST.tg[0].tr";
connectAttr "CTL_RootLocal.ro" "CTL_chainC1_IDT_PRCST.tg[0].tro";
connectAttr "CTL_RootLocal.s" "CTL_chainC1_IDT_PRCST.tg[0].ts";
connectAttr "CTL_RootLocal.pm" "CTL_chainC1_IDT_PRCST.tg[0].tpm";
connectAttr "CTL_chainC1_IDT_PRCST.w0" "CTL_chainC1_IDT_PRCST.tg[0].tw";
connectAttr "CTL_chainD1_IDT_PRCST.ctx" "CTL_chainD1_IDT.tx" -l on;
connectAttr "CTL_chainD1_IDT_PRCST.cty" "CTL_chainD1_IDT.ty" -l on;
connectAttr "CTL_chainD1_IDT_PRCST.ctz" "CTL_chainD1_IDT.tz" -l on;
connectAttr "CTL_chainD1_IDT_PRCST.crx" "CTL_chainD1_IDT.rx" -l on;
connectAttr "CTL_chainD1_IDT_PRCST.cry" "CTL_chainD1_IDT.ry" -l on;
connectAttr "CTL_chainD1_IDT_PRCST.crz" "CTL_chainD1_IDT.rz" -l on;
connectAttr "CTL_chainD1_IDT.ro" "CTL_chainD1_IDT_PRCST.cro";
connectAttr "CTL_chainD1_IDT.pim" "CTL_chainD1_IDT_PRCST.cpim";
connectAttr "CTL_chainD1_IDT.rp" "CTL_chainD1_IDT_PRCST.crp";
connectAttr "CTL_chainD1_IDT.rpt" "CTL_chainD1_IDT_PRCST.crt";
connectAttr "CTL_RootLocal.t" "CTL_chainD1_IDT_PRCST.tg[0].tt";
connectAttr "CTL_RootLocal.rp" "CTL_chainD1_IDT_PRCST.tg[0].trp";
connectAttr "CTL_RootLocal.rpt" "CTL_chainD1_IDT_PRCST.tg[0].trt";
connectAttr "CTL_RootLocal.r" "CTL_chainD1_IDT_PRCST.tg[0].tr";
connectAttr "CTL_RootLocal.ro" "CTL_chainD1_IDT_PRCST.tg[0].tro";
connectAttr "CTL_RootLocal.s" "CTL_chainD1_IDT_PRCST.tg[0].ts";
connectAttr "CTL_RootLocal.pm" "CTL_chainD1_IDT_PRCST.tg[0].tpm";
connectAttr "CTL_chainD1_IDT_PRCST.w0" "CTL_chainD1_IDT_PRCST.tg[0].tw";
connectAttr "CTL_chainE1_IDT_PRCST.ctx" "CTL_chainE1_IDT.tx" -l on;
connectAttr "CTL_chainE1_IDT_PRCST.cty" "CTL_chainE1_IDT.ty" -l on;
connectAttr "CTL_chainE1_IDT_PRCST.ctz" "CTL_chainE1_IDT.tz" -l on;
connectAttr "CTL_chainE1_IDT_PRCST.crx" "CTL_chainE1_IDT.rx" -l on;
connectAttr "CTL_chainE1_IDT_PRCST.cry" "CTL_chainE1_IDT.ry" -l on;
connectAttr "CTL_chainE1_IDT_PRCST.crz" "CTL_chainE1_IDT.rz" -l on;
connectAttr "CTL_chainE1_IDT.ro" "CTL_chainE1_IDT_PRCST.cro";
connectAttr "CTL_chainE1_IDT.pim" "CTL_chainE1_IDT_PRCST.cpim";
connectAttr "CTL_chainE1_IDT.rp" "CTL_chainE1_IDT_PRCST.crp";
connectAttr "CTL_chainE1_IDT.rpt" "CTL_chainE1_IDT_PRCST.crt";
connectAttr "CTL_RootLocal.t" "CTL_chainE1_IDT_PRCST.tg[0].tt";
connectAttr "CTL_RootLocal.rp" "CTL_chainE1_IDT_PRCST.tg[0].trp";
connectAttr "CTL_RootLocal.rpt" "CTL_chainE1_IDT_PRCST.tg[0].trt";
connectAttr "CTL_RootLocal.r" "CTL_chainE1_IDT_PRCST.tg[0].tr";
connectAttr "CTL_RootLocal.ro" "CTL_chainE1_IDT_PRCST.tg[0].tro";
connectAttr "CTL_RootLocal.s" "CTL_chainE1_IDT_PRCST.tg[0].ts";
connectAttr "CTL_RootLocal.pm" "CTL_chainE1_IDT_PRCST.tg[0].tpm";
connectAttr "CTL_chainE1_IDT_PRCST.w0" "CTL_chainE1_IDT_PRCST.tg[0].tw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "mdl_joint.id";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of rig_test.ma
