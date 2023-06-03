//Maya ASCII 4.0 scene
//Name: hom_turn_45_CW.ma
//Last modified: Mon, Jun 17, 2002 10:34:07 AM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.3";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_turn_45_CWSource";
	setAttr ".ihi" 0;
	setAttr ".du" 20;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL83";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL84";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0.059994336157762687 1 0.064989668883530652 
		2 0.076579987922286721 3 0.089671774566209214 4 0.099171510107476421 5 0.099985675838266647 
		6 0.087315816816506422 7 0.06417338807610469 8 0.037179735873213236 9 0.012956206463983965 
		10 -0.0098077867808829752 11 -0.033618202318719342 12 -0.05364675163542118 
		13 -0.065065146216884612 14 -0.063760559404392708 15 -0.053249839344595429 
		16 -0.040149209731439026 17 -0.031074894258869779 18 -0.028916782923628176 
		19 -0.029995838591248977 20 -0.031074894258869779;
createNode animCurveTL -n "animCurveTL86";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 1 0.00010195498059925027 2 
		0.00044655362561547639 3 0.0010918964898763912 4 0.0020960841282097078 5 
		0.0035172170954431391 6 0.0058046867679939808 7 0.0089117916936361074 8 0.012152493184232099 
		9 0.014840752551644527 10 0.016679710557628343 11 0.018073226378253288 12 
		0.019386338946854147 13 0.020984087196765699 14 0.023164213380349047 15 0.025665230547317296 
		16 0.028013333827033252 17 0.029734718348859736 18 0.030290313987083151 19 
		0.030012516167971445 20 0.029734718348859736;
createNode animCurveTA -n "animCurveTA227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 -1.0847246326011926 
		8 -3.994954322242708 9 -8.2147727566814535 10 -13.228263623674332 11 -18.519510610978251 
		12 -23.572597406350123 13 -27.871607697546846 14 -31.661454355126661 15 -35.426283440350659 
		16 -39.009028427030074 17 -42.252622788976112 18 -45 19 -45.611728281708309 
		20 -45;
createNode animCurveTU -n "animCurveTU17";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "animCurveTU18";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "animCurveTU19";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "animCurveTU20";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "animCurveTU21";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 20 1;
createNode animCurveTU -n "animCurveTU22";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 20 1;
createNode animCurveTU -n "animCurveTU23";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "animCurveTU24";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTA -n "animCurveTA228";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTA -n "animCurveTA229";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTA -n "animCurveTA230";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTL -n "animCurveTL88";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTL -n "animCurveTL89";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTL -n "animCurveTL90";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTL -n "animCurveTL91";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.21594587158542247 5 -0.17216051291118575 
		9 -0.23054702712515202 13 -0.23054702712515202 17 -0.23054702712515202 20 
		-0.23054702712515202;
	setAttr -s 6 ".kit[1:5]"  9 3 3 1 9;
	setAttr -s 6 ".kot[0:5]"  1 9 3 3 9 9;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[0:5]"  1 0.20125900208950043 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 -0.97953808307647705 0 0 0 0;
createNode animCurveTL -n "animCurveTL92";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.1380615615975922 5 0.19294021910917628 
		9 0.14412517238174566 13 0.14412517238174566 17 0.14412517238174566 20 0.14412517238174566;
	setAttr -s 6 ".kit[1:5]"  9 3 3 1 9;
	setAttr -s 6 ".kot[0:5]"  1 9 3 3 9 9;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[0:5]"  1 0.44344857335090637 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0.89629983901977539 0 0 0 0;
createNode animCurveTL -n "animCurveTL93";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.00078430246903575811 5 -0.015452821534730965 
		9 -0.11441306730007397 13 -0.11441306730007397 17 -0.11441306730007397 20 
		-0.11441306730007397;
	setAttr -s 6 ".kit[1:5]"  9 3 3 1 9;
	setAttr -s 6 ".kot[0:5]"  1 9 3 3 9 9;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[0:5]"  1 0.026033435016870499 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 -0.99966108798980713 0 0 0 0;
createNode animCurveTA -n "animCurveTA231";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 9.815331343540727 9 0.083772019666315076 
		13 0.083772019666315076 17 0.083772019666315076 20 0.083772019666315076;
	setAttr -s 6 ".kit[1:5]"  9 3 3 1 9;
	setAttr -s 6 ".kot[0:5]"  1 9 3 3 9 9;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[0:5]"  1 0.9999881386756897 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0.0048736007884144783 0 0 0 0;
createNode animCurveTA -n "animCurveTA232";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 -9.3978216967302792 9 -42.513624983415021 
		13 -42.513624983415021 17 -42.513624983415021 20 -42.513624983415021;
	setAttr -s 6 ".kit[1:5]"  9 3 3 1 9;
	setAttr -s 6 ".kot[0:5]"  1 9 3 3 9 9;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[0:5]"  1 0.37483370304107666 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 -0.92709207534790039 0 0 0 0;
createNode animCurveTA -n "animCurveTA233";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 -8.9659790917083324 9 0.61622511026207105 
		13 0.61622511026207105 17 0.61622511026207105 20 0.61622511026207105;
	setAttr -s 6 ".kit[1:5]"  9 3 3 1 9;
	setAttr -s 6 ".kot[0:5]"  1 9 3 3 9 9;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[0:5]"  1 0.99935799837112427 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0.035827510058879852 0 0 0 0;
createNode animCurveTL -n "animCurveTL94";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.26454016861507795 5 0.26454016861507795 
		9 0.26454016861507795 13 0.16228438085086222 17 0.20672330007617123 20 0.20672330007617123;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 3 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 3 9;
	setAttr -s 6 ".kox[0:5]"  1 1 0.026069529354572296 0.046073660254478455 
		1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 -0.99966013431549072 -0.99893802404403687 
		0 0;
createNode animCurveTL -n "animCurveTL95";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.13806192026723146 5 0.13806192026723146 
		9 0.16631108155266133 13 0.30895533591001395 17 0.13834945602497864 20 0.13834945602497864;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 3 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 3 9;
	setAttr -s 6 ".kox[0:5]"  1 0.10560400784015656 0.015602368861436844 
		0.094938032329082489 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0.9944082498550415 0.99987828731536865 
		-0.9954831600189209 0 0;
createNode animCurveTL -n "animCurveTL96";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.064904406754016042 5 -0.064904406754016042 
		9 -0.064904406754016042 13 0.0048146405196638209 17 0.11806605302737441 20 
		0.11806605302737441;
	setAttr -s 6 ".kit[0:5]"  3 9 3 9 3 9;
	setAttr -s 6 ".kot[0:5]"  1 9 3 9 3 9;
	setAttr -s 6 ".kox[0:5]"  1 1 1 0.014572754502296448 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0.99989378452301025 0 0;
createNode animCurveTA -n "animCurveTA234";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 15.455066653965995 13 
		36.343290045270336 17 1.8499969101154974 20 1.8499969101154974;
	setAttr -s 6 ".kit[2:5]"  9 9 3 3;
	setAttr -s 6 ".kot[2:5]"  9 9 3 3;
createNode animCurveTA -n "animCurveTA235";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 25.948901905116401 5 25.948901905116401 
		9 25.948901905116411 13 8.2650356860888277 17 -1.7881289677315562 20 -1.7881289677315562;
	setAttr -s 6 ".kit[1:5]"  9 3 9 3 3;
	setAttr -s 6 ".kot[0:5]"  1 9 3 9 3 3;
	setAttr -s 6 ".kox[0:5]"  1 1 1 0.48248860239982605 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 -0.87590223550796509 0 0;
createNode animCurveTA -n "animCurveTA236";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 20.821186508405404 
		17 1.9108878804980092 20 1.9108878804980092;
	setAttr -s 6 ".kit[3:5]"  9 3 3;
	setAttr -s 6 ".kot[0:5]"  1 3 3 9 3 3;
	setAttr -s 6 ".kox[0:5]"  1 1 1 0.99226963520050049 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0.12410050630569458 0 0;
createNode animCurveTA -n "animCurveTA237";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA238";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA239";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA240";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA241";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA242";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL97";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 9 0 13 0 17 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL98";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 9 0 13 0 17 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL99";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 9 1 13 1 17 1 20 1;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 9 0 13 0 17 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 9 0 13 0 17 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 9 1 13 1 17 1 20 1;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 9;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.076472881617957691 5 0.12744857667504858 
		9 0.016514866345593595 13 -0.082936482720879556 17 -0.039610184263062641 
		20 -0.039610184263062641;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.93105416142265018 5 0.93105416142265018 
		9 0.93284241996066386 13 0.93390638925642033 17 0.93459845384035367 20 0.93495923487688803;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 1 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 1 3;
	setAttr -s 6 ".kix[4:5]"  0.91457998752593994 1;
	setAttr -s 6 ".kiy[4:5]"  0.40440499782562256 0;
	setAttr -s 6 ".kox[4:5]"  0.91458004713058472 1;
	setAttr -s 6 ".koy[4:5]"  0.40440487861633301 0;
createNode animCurveTL -n "animCurveTL105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0.0044832853197539352 9 0.018917037601998175 
		13 0.02674775185176427 17 0.037901904444048833 20 0.037901904444048833;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.62843630316474508 5 -0.62843630316474508 
		9 -0.63452367371929341 13 0.28830913411750425 17 -0.15241460158117637 20 
		-0.16267090200953793;
	setAttr -s 6 ".kit[0:5]"  3 9 9 1 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 1 9 3;
	setAttr -s 6 ".kix[3:5]"  0.99845379590988159 0.99943149089813232 
		1;
	setAttr -s 6 ".kiy[3:5]"  0.055588319897651672 -0.033714048564434052 
		0;
	setAttr -s 6 ".kox[3:5]"  0.99845379590988159 0.99943149089813232 
		1;
	setAttr -s 6 ".koy[3:5]"  0.055588353425264359 -0.033714048564434052 
		0;
createNode animCurveTA -n "animCurveTA244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 5.8284402688137158 5 8.8160682022097259 
		9 -9.0016841746005021 13 -30.330792905929506 17 -43.478439736627188 20 -47.165520892596774;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.2956360193097458 5 1.2956360193097458 
		9 1.4679065213487994 13 1.1968328520698048 17 0.082047213841748123 20 0.096463519366417824;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA246";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA247";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA248";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA249";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA250";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA251";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA252";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA253";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA254";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA255";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA256";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA257";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA258";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA259";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA260";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA261";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA262";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA263";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA264";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA265";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA266";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA267";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA268";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA269";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA270";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA271";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL106";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 20 -0.5198069948790518;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL107";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 20 -0.72394202659893114;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL108";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 20 0.36439499068905612;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA272";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965299 20 7.7976222737965299;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA273";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 20 30.409274105849079;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA274";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210878 20 64.859940280210878;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL109";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 20 0.43524234076486068;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL110";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 20 -0.82665738350180629;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL111";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 20 0.27773886459742925;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA275";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA276";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 20 -28.652637602052774;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA277";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 20 -64.676908227303443;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL112";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.61083301393139333 20 -0.61083301393139333;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL113";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.229336924066629 20 1.229336924066629;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL114";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.14314299916678522 20 0.14314299916678522;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA278";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 16.226511010665405 20 16.226511010665405;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA279";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.513966085499284 20 8.513966085499284;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA280";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 68.213989601412422 20 68.213989601412422;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL115";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.8448236677023373 20 0.8448236677023373;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL116";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.272818195449458 20 1.272818195449458;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL117";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.097994651149805143 20 -0.097994651149805143;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA281";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 5.4739599453216474 20 5.4739599453216474;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA282";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -8.5874521608419823 20 -8.5874521608419823;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA283";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -74.754744621954103 20 -74.754744621954103;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL118";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.10167917362943303 20 0.10167917362943303;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL119";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.40762644910266188 20 -0.40762644910266188;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL120";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.93129112588482243 20 -0.93129112588482243;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL121";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL122";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL123";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1 20 -1;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -17.051494564422068 5 2.7037711814638472 
		10 13.91293804023268 15 2.970490365506937 20 -17.051494564422068;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -64.871565293228713 5 -64.869102833291535 
		10 -60.754968376290904 15 -58.83556249150157 20 -64.871565293228713;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.715151442486146 5 17.868608512709745 
		10 -13.990063229594972 15 7.4100196773926781 20 23.715151442486146;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.8939651633042942 5 -15.353714477699311 
		10 22.975382335420051 15 6.4961369160503253 20 -4.8939651633042942;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -71.502723433017053 5 -61.754093468098084 
		10 -56.117282515350617 15 -64.309857356176764 20 -71.502723433017053;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA289";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.0542785583289813 5 6.3009066796230879 
		10 -28.146695659058871 15 -12.819191101218008 20 8.0542785583289813;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.9675669171594574 5 36.359771961425444 
		10 33.363749485314663 15 25.802359460742274 20 8.9675669171594574;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 14.743888036751072 5 13.116972786795994 
		10 43.140672272072486 15 23.635560538852598 20 14.743888036751072;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 6.3876354565306093 5 6.3876354565306093 
		10 6.3876354565306093 15 6.3876354565306093 20 6.3876354565306093;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.0258412992430621 5 2.0258412992430621 
		10 2.0258412992430621 15 2.0258412992430621 20 2.0258412992430621;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -6.6477254433837762 5 -6.6477254433837762 
		10 -6.6477254433837762 15 -6.6477254433837762 20 -6.6477254433837762;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA295";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 9.3291488420621747 5 9.3291488420621747 
		10 9.3291488420621747 15 9.3291488420621747 20 9.3291488420621747;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -6.6514077340403857 5 -6.6514077340403857 
		10 -6.6514077340403857 15 -6.6514077340403857 20 -6.6514077340403857;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.7727548353978072 5 -0.7727548353978072 
		10 -0.7727548353978072 15 -0.7727548353978072 20 -0.7727548353978072;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.2533422302317216 5 8.2533422302317216 
		10 8.2533422302317216 15 8.2533422302317216 20 8.2533422302317216;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.263402056531085 5 23.263402056531085 
		10 23.263402056531085 15 23.263402056531085 20 23.263402056531085;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.166277752815617 5 20.166277752815617 
		10 20.166277752815617 15 20.166277752815617 20 20.166277752815617;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.429092416277157 5 33.429092416277157 
		10 33.429092416277157 15 33.429092416277157 20 33.429092416277157;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA304";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA305";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA306";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA307";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA308";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA309";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 20 13.994403295754109;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA310";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA311";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA312";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 20 13.994403295754109;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA315";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.254116939558369 5 17.254116939558369 
		10 17.254116939558369 15 17.254116939558369 20 17.254116939558369;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.65073001024951671 5 4.7616230637930279 
		10 -5.5501506738970123 15 -0.9036778685205652 20 0.65073001024951671;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.2368721935960929 5 -1.5234337194722443 
		10 4.4061983740954869 15 4.4109208760485776 20 4.2368721935960929;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 1 3;
	setAttr -s 5 ".kix[3:4]"  0.9987378716468811 1;
	setAttr -s 5 ".kiy[3:4]"  -0.050225619226694107 0;
	setAttr -s 5 ".kox[3:4]"  0.9987378716468811 1;
	setAttr -s 5 ".koy[3:4]"  -0.050225615501403809 0;
createNode animCurveTA -n "animCurveTA321";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.7398866450636881 5 -0.53294059236192248 
		10 -0.033018694500312216 15 3.7048543692817062 20 8.7398866450636881;
	setAttr -s 5 ".kit[0:4]"  3 9 1 1 3;
	setAttr -s 5 ".kot[0:4]"  3 9 1 1 3;
	setAttr -s 5 ".kix[2:4]"  0.95075905323028564 0.89114296436309814 
		1;
	setAttr -s 5 ".kiy[2:4]"  0.30993092060089111 0.45372265577316284 
		0;
	setAttr -s 5 ".kox[2:4]"  0.95075905323028564 0.89114284515380859 
		1;
	setAttr -s 5 ".koy[2:4]"  0.30993092060089111 0.45372283458709717 
		0;
createNode animCurveTA -n "animCurveTA322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 -6.8318802729961208 
		15 -5.5667171846955004 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.8714700432790332 5 31.402804771815635 
		10 5.1841838092344688 15 -2.5181644382235864 20 -3.63117367008988;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -11.783606204137099 5 38.452646213827457 
		10 15.446088262180993 15 1.7616046083246086 20 0.16356207266577066;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 7.5423825101936588 5 34.817517686387895 
		10 14.846437945232971 15 9.1819157552967852 20 7.9442941959436482;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.8903601258661931 5 1.8903601258661931 
		10 1.8903601258661931 15 1.8903601258661931 20 1.8903601258661931;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.5597289571479034 5 -2.5597289571479034 
		10 -2.5597289571479034 15 -2.5597289571479034 20 -2.5597289571479034;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA330";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.016811087403604 5 2.016811087403604 
		10 2.016811087403604 15 2.016811087403604 20 2.016811087403604;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.080064458283051 5 27.080064458283051 
		10 27.080064458283051 15 27.080064458283051 20 27.080064458283051;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.423754966968488 5 10.423754966968488 
		10 10.423754966968488 15 10.423754966968488 20 10.423754966968488;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.722848255843903 5 27.722848255843903 
		10 27.722848255843903 15 27.722848255843903 20 27.722848255843903;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 21.576484776388227 5 21.576484776388227 
		10 21.576484776388227 15 21.576484776388227 20 21.576484776388227;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.911632519594587 5 27.911632519594587 
		10 27.911632519594587 15 27.911632519594587 20 27.911632519594587;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 162 ".cel[0].cev";
	setAttr ".cd[0].cm" -type "characterMapping" 162 "Extra_Attributes.translateX" 
		1 1 "Extra_Attributes.translateY" 1 2 "Motion_Root.translateX" 
		1 3 "Motion_Root.translateY" 1 4 "Motion_Root.translateZ" 
		1 5 "Motion_Root.rotateY" 2 1 "Hoop_Root.IK_FK_RFoot" 
		0 1 "Hoop_Root.IK_FK_LFoot" 0 2 "Hoop_Root.IK_Rev_IK_Sim_RFoot" 
		0 3 "Hoop_Root.IK_Rev_IK_Sim_LFoot" 0 4 "Hoop_Root.IK_FK_RArm" 
		0 5 "Hoop_Root.IK_FK_LArm" 0 6 "Hoop_Root.IK_Body_IK_World_RArm" 
		0 7 "Hoop_Root.IK_Body_IK_World_LArm" 0 8 "Hoop_Root.rotateX" 
		2 2 "Hoop_Root.rotateY" 2 3 "Hoop_Root.rotateZ" 2 
		4 "Hoop_Root.translateX" 1 6 "Hoop_Root.translateY" 1 
		7 "Hoop_Root.translateZ" 1 8 "Right_Foot_Hoop.translateX" 
		1 9 "Right_Foot_Hoop.translateY" 1 10 "Right_Foot_Hoop.translateZ" 
		1 11 "Right_Foot_Hoop.rotateX" 2 5 "Right_Foot_Hoop.rotateY" 
		2 6 "Right_Foot_Hoop.rotateZ" 2 7 "Left_Foot_Hoop.translateX" 
		1 12 "Left_Foot_Hoop.translateY" 1 13 "Left_Foot_Hoop.translateZ" 
		1 14 "Left_Foot_Hoop.rotateX" 2 8 "Left_Foot_Hoop.rotateY" 
		2 9 "Left_Foot_Hoop.rotateZ" 2 10 "Right_Ball_Hoop.rotateX" 
		2 11 "Right_Ball_Hoop.rotateY" 2 12 "Right_Ball_Hoop.rotateZ" 
		2 13 "Left_Ball_Hoop.rotateX" 2 14 "Left_Ball_Hoop.rotateY" 
		2 15 "Left_Ball_Hoop.rotateZ" 2 16 "Right_Knee_Hoop.translateX" 
		1 15 "Right_Knee_Hoop.translateY" 1 16 "Right_Knee_Hoop.translateZ" 
		1 17 "Left_Knee_Hoop.translateX" 1 18 "Left_Knee_Hoop.translateY" 
		1 19 "Left_Knee_Hoop.translateZ" 1 20 "Character_Hoop.translateX" 
		1 21 "Character_Hoop.translateY" 1 22 "Character_Hoop.translateZ" 
		1 23 "Character_Hoop.rotateX" 2 17 "Character_Hoop.rotateY" 
		2 18 "Character_Hoop.rotateZ" 2 19 "R_Hip_Fk.rotateX" 2 
		20 "R_Hip_Fk.rotateY" 2 21 "R_Hip_Fk.rotateZ" 2 22 "R_Knee_Fk.rotateZ" 
		2 23 "R_Ankle_Fk.rotateX" 2 24 "R_Ankle_Fk.rotateY" 2 
		25 "R_Ankle_Fk.rotateZ" 2 26 "R_Ball_Fk.rotateX" 2 27 "R_Ball_Fk.rotateY" 
		2 28 "R_Ball_Fk.rotateZ" 2 29 "L_Hip_Fk.rotateX" 2 
		30 "L_Hip_Fk.rotateY" 2 31 "L_Hip_Fk.rotateZ" 2 32 "L_Knee_Fk.rotateZ" 
		2 33 "L_Ankle_Fk.rotateX" 2 34 "L_Ankle_Fk.rotateY" 2 
		35 "L_Ankle_Fk.rotateZ" 2 36 "L_Ball_Fk.rotateX" 2 37 "L_Ball_Fk.rotateY" 
		2 38 "L_Ball_Fk.rotateZ" 2 39 "R_Ball_IK_Fk.rotateX" 2 
		40 "R_Ball_IK_Fk.rotateY" 2 41 "R_Ball_IK_Fk.rotateZ" 2 
		42 "L_Ball_IK_Fk.rotateX" 2 43 "L_Ball_IK_Fk.rotateY" 2 
		44 "L_Ball_IK_Fk.rotateZ" 2 45 "Right_Arm_Hoop.translateX" 1 
		24 "Right_Arm_Hoop.translateY" 1 25 "Right_Arm_Hoop.translateZ" 
		1 26 "Right_Arm_Hoop.rotateX" 2 46 "Right_Arm_Hoop.rotateY" 
		2 47 "Right_Arm_Hoop.rotateZ" 2 48 "Left_Arm_Hoop.translateX" 
		1 27 "Left_Arm_Hoop.translateY" 1 28 "Left_Arm_Hoop.translateZ" 
		1 29 "Left_Arm_Hoop.rotateX" 2 49 "Left_Arm_Hoop.rotateY" 
		2 50 "Left_Arm_Hoop.rotateZ" 2 51 "Right_Arm_World.translateX" 
		1 30 "Right_Arm_World.translateY" 1 31 "Right_Arm_World.translateZ" 
		1 32 "Right_Arm_World.rotateX" 2 52 "Right_Arm_World.rotateY" 
		2 53 "Right_Arm_World.rotateZ" 2 54 "Left_Arm_World.translateX" 
		1 33 "Left_Arm_World.translateY" 1 34 "Left_Arm_World.translateZ" 
		1 35 "Left_Arm_World.rotateX" 2 55 "Left_Arm_World.rotateY" 
		2 56 "Left_Arm_World.rotateZ" 2 57 "Left_Elbow_Hoop.translateX" 
		1 36 "Left_Elbow_Hoop.translateY" 1 37 "Left_Elbow_Hoop.translateZ" 
		1 38 "Right_Elbow_Hoop.translateX" 1 39 "Right_Elbow_Hoop.translateY" 
		1 40 "Right_Elbow_Hoop.translateZ" 1 41 "R_FK_Shoulder.rotateX" 
		2 58 "R_FK_Shoulder.rotateY" 2 59 "R_FK_Shoulder.rotateZ" 
		2 60 "L_FK_Shoulder.rotateX" 2 61 "L_FK_Shoulder.rotateY" 
		2 62 "L_FK_Shoulder.rotateZ" 2 63 "R_FK_Elbow.rotateZ" 
		2 64 "L_FK_Elbow.rotateZ" 2 65 "R_FK_Wrist.rotateX" 2 
		66 "R_FK_Wrist.rotateY" 2 67 "R_FK_Wrist.rotateZ" 2 68 "L_FK_Wrist.rotateX" 
		2 69 "L_FK_Wrist.rotateY" 2 70 "L_FK_Wrist.rotateZ" 2 
		71 "Thumb_Base_L.rotateX" 2 72 "Thumb_Base_L.rotateY" 2 
		73 "Thumb_Base_L.rotateZ" 2 74 "Middle_Base_L.rotateX" 2 
		75 "Middle_Base_L.rotateY" 2 76 "Middle_Base_L.rotateZ" 2 
		77 "Pelvis.rotateX" 2 78 "Pelvis.rotateY" 2 79 "Pelvis.rotateZ" 
		2 80 "Thumb_R.rotateX" 2 81 "Thumb_R.rotateY" 2 82 "Thumb_R.rotateZ" 
		2 83 "Thumb_L.rotateX" 2 84 "Thumb_L.rotateY" 2 85 "Thumb_L.rotateZ" 
		2 86 "Middle_R.rotateX" 2 87 "Middle_R.rotateY" 2 
		88 "Middle_R.rotateZ" 2 89 "Jaw.rotateX" 2 90 "Jaw.rotateY" 
		2 91 "Jaw.rotateZ" 2 92 "Spine_2.rotateX" 2 93 "Spine_2.rotateY" 
		2 94 "Spine_2.rotateZ" 2 95 "Neck.rotateX" 2 96 "Neck.rotateY" 
		2 97 "Neck.rotateZ" 2 98 "Head.rotateX" 2 99 "Head.rotateY" 
		2 100 "Head.rotateZ" 2 101 "Spine_1.rotateX" 2 102 "Spine_1.rotateY" 
		2 103 "Spine_1.rotateZ" 2 104 "Middle_Base_R.rotateX" 2 
		105 "Middle_Base_R.rotateY" 2 106 "Middle_Base_R.rotateZ" 2 
		107 "Thumb_Base_R.rotateX" 2 108 "Thumb_Base_R.rotateY" 2 
		109 "Thumb_Base_R.rotateZ" 2 110 "Middle_L.rotateX" 2 111 "Middle_L.rotateY" 
		2 112 "Middle_L.rotateZ" 2 113  ;
	setAttr ".cd[0].cim" -type "Int32Array" 162 0 1 2 3
		 4 5 6 7 8 9 10 11 12 13 14
		 15 16 17 18 19 20 21 22 23 24 25
		 26 27 28 29 30 31 32 33 34 35 36
		 37 38 39 40 41 42 43 44 45 46 47
		 48 49 50 51 52 53 54 55 56 57 58
		 59 60 61 62 63 64 65 66 67 68 69
		 70 71 72 73 74 75 76 77 78 79 80
		 81 82 83 84 85 86 87 88 89 90 91
		 92 93 94 95 96 97 98 99 100 101 102
		 103 104 105 106 107 108 109 110 111 112 113
		 114 115 116 117 118 119 120 121 122 123 124
		 125 126 127 128 129 130 131 132 133 134 135
		 136 137 138 139 140 141 142 143 144 145 146
		 147 148 149 150 151 152 153 154 155 156 157
		 158 159 160 161 ;
createNode lightLinker -n "lightLinker1";
select -ne :time1;
	setAttr ".o" 20;
select -ne :renderPartition;
	setAttr -s 21 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 21 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr -k on ".nds";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :characterPartition;
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "hom_turn_45_CWSource.st" "clipLibrary1.st[0]";
connectAttr "hom_turn_45_CWSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL83.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL84.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL86.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA227.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU17.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU18.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU19.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU20.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU21.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU22.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU23.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU24.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA228.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA229.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA230.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL88.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL89.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL90.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL91.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL92.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL93.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA231.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA232.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA233.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL94.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL95.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL96.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA234.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA235.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA236.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA237.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA238.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA239.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA240.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA241.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA242.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL97.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL98.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL99.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL100.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL101.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL102.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL103.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL104.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL105.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA243.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA244.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA245.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA246.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA247.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA248.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA249.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA250.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA251.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA252.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA253.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA254.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA255.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA256.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA257.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA258.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA259.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA260.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA261.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA262.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA263.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA264.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA265.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA266.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA267.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA268.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA269.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA270.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA271.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL106.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL107.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL108.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA272.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA273.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA274.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL109.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL110.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL111.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA275.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA276.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA277.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL112.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL113.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL114.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA278.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA279.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA280.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL115.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL116.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL117.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA281.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA282.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA283.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL118.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL119.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL120.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL121.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL122.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL123.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA284.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA285.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA286.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA287.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA288.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA289.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA290.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA291.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA292.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA293.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA294.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA295.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA296.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA297.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA298.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA299.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA300.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA301.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA302.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA303.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA304.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA305.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA306.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA307.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA308.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA309.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA310.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA311.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA312.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA313.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA314.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA315.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA316.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA317.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA318.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA319.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA320.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA321.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA322.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA323.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA324.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA325.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA326.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA327.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA328.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA329.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA330.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA331.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA332.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA333.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA334.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA335.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA336.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA337.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA338.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA339.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[4].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[5].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[5].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[6].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[7].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[8].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[9].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[10].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[11].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[12].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[13].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[14].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[15].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[16].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[17].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[18].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[19].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[20].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of hom_turn_45_CW.ma