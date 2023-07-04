close all
clear
%% %% Import data
male_dat{1} = readmatrix('/Users/kitty/Desktop/4970/for_results/man_data/1001/1001_01_Jan11_2023.csv');
male_dat{2} = readmatrix('/Users/kitty/Desktop/4970/for_results/man_data/1001/1001_02_01302023.csv');
male_dat{3} = readmatrix('/Users/kitty/Desktop/4970/for_results/man_data/1372/1372_01_012023.csv');
male_dat{4} = readmatrix('/Users/kitty/Desktop/4970/for_results/man_data/1372/1372_02_01262023.csv');
%%
% Import male data
male_dat{1} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1006/1006_01_Dec22022.csv');
male_dat{2} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1006/1006_02_Dec162022.csv');
male_dat{3} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1008/1008_01_01022023.csv');
male_dat{4} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1008/1008_02_15022023.csv');
male_dat{5} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1012/1012_01_Nov182022.csv');
male_dat{6} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1012/1012_02_Dec22022.csv');
male_dat{7} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1052/1052_01_March2_2022.csv');
male_dat{8} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1052/1052_02_March17_2022.csv');
male_dat{9} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1125/1125_01_01202023.csv');
male_dat{10} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1125/1125_02_03022023.csv');
male_dat{11} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1156/1156_01_06152022.csv');
male_dat{12} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1156/1156_02_07062022.csv');
male_dat{13} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1173/1173_01_24102022.csv');
male_dat{14} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1173/1173_02_07112022.csv');
male_dat{15} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1219/1219_01_01102023.csv');
male_dat{16} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1219/1219_02_01242023.csv');
male_dat{17} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1245/1245_01_01202023.csv');
male_dat{18} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1245/1245_02_09022023.csv');
male_dat{19} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1252/1252_01_March29_2022.csv');
male_dat{20} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1252/1252_02_May05_2022.csv');
male_dat{21} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1397/1397_01_March16_2022.csv');
male_dat{22} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1397/1397_02_April27_2022.csv');
male_dat{23} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1426/1426_01_07112022.csv');
male_dat{24} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1426/1426_02_21112022.csv');
male_dat{25} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1439/1439_01_06152022.csv');
male_dat{26} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1439/1439_02_06292022.csv');
male_dat{27} = readmatrix('/Users/kitty/Desktop/4970/wt_mlzc/final_man/1388/1388_01_02082023.csv');
male_dat{28} = readmatrix('/Users/kitty/Desktop/4970/wt_mlzc/final_man/1388/13888_02_02282023.csv');

male_dat{29} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1521/1521_01_01272023.csv');
male_dat{30} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1521/1521_02_02092023.csv');
male_dat{31} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1570/1570_01_02102023.csv');
male_dat{32} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1578/1578_01_25102022.csv');
male_dat{33} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1578/1578_02_18112022.csv');
male_dat{34} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1598/1598_01_11242022.csv');
male_dat{35} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1598/1598_02_Dec82022.csv');
male_dat{36} = readmatrix('/Users/kitty/Desktop/4970/wt_mlzc/final_man/1444/1444_01_08022023.csv');

male_dat{37} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1625/1625_01_01192023.csv');
male_dat{38} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1625/1625_02_02022023.csv');
male_dat{39} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1633/1633_01_11102022.csv');
male_dat{40} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1633/1633_02_11252022.csv');
male_dat{41} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1664/1664_01_11282022.csv');
male_dat{42} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1664/1664_02_12152022.csv');
male_dat{43} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1711/1711_01_01122023.csv');
male_dat{44} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1711/1711_02_01262023.csv');
male_dat{45} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1774/1774_01_04112022.csv');
male_dat{46} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1774/1774_02_16112022.csv');
male_dat{47} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1787/1787_01_22112022.csv');
male_dat{48} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1787/1787_02_Dec62022.csv');
male_dat{49} = readmatrix('/Users/kitty/Desktop/4970/wt_mlzc/final_man/1444/1444_02_03062023.csv');

male_dat{50} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1817/1817_01_11112022.csv');
male_dat{51} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1817/1817_02_25112022.csv');
male_dat{52} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1837/1837_01_01122023.csv');
male_dat{53} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1837/1837_02_01262023.csv');
male_dat{54} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1907/1907_01_17112022.csv');
male_dat{55} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1907/1907_02_Dec92022.csv');
male_dat{56} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1921/1921_01_20_10_2022.csv');
male_dat{57} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1921/1921_02_11102022.csv');
male_dat{58} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1970/1970_01_01202023.csv');
male_dat{59} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1970/1970_02_01302023.csv');
male_dat{60} = readmatrix('/Users/kitty/Desktop/4970/wt_mlzc/final_man/1454/1454_01_02142023.csv');
male_dat{61} = readmatrix('/Users/kitty/Desktop/4970/wt_mlzc/final_man/1454/1454_02_03032023.csv');

male_dat{62} = readmatrix('/Users/kitty/Desktop/4970/wt_mlzc/final_man/1604/1604_01_02062023.csv');
male_dat{63} = readmatrix('/Users/kitty/Desktop/4970/wt_mlzc/final_man/1604/1604_02_02272023.csv');
male_dat{64} = readmatrix('/Users/kitty/Desktop/4970/wt_mlzc/final_man/1804/1804_01_02172023.csv');
male_dat{65} = readmatrix('/Users/kitty/Desktop/4970/wt_mlzc/final_man/1804/1804_02_03102023.csv');
male_dat{66} = readmatrix('/Users/kitty/Desktop/4970/wt_mlzc/Man_Feb21/1570/1570_02_02282023.csv');
%% male first session
male_dat{1} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1006/1006_01_Dec22022.csv');
male_dat{2} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1008/1008_01_01022023.csv');
male_dat{3} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1012/1012_01_Nov182022.csv');
male_dat{4} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1052/1052_01_March2_2022.csv');
male_dat{5} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1125/1125_01_01202023.csv');
male_dat{6} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1156/1156_01_06152022.csv');
male_dat{7} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1173/1173_01_24102022.csv');
male_dat{8} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1219/1219_01_01102023.csv');
male_dat{9} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1245/1245_01_01202023.csv');
male_dat{10} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1252/1252_01_March29_2022.csv');
male_dat{11} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1397/1397_01_March16_2022.csv');
male_dat{12} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1426/1426_01_07112022.csv');
male_dat{13} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1439/1439_01_06152022.csv');
male_dat{14} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1521/1521_01_01272023.csv');
male_dat{15} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1570/1570_01_02102023.csv');
male_dat{16} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1578/1578_01_25102022.csv');
male_dat{17} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1598/1598_01_11242022.csv');
male_dat{18} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1625/1625_01_01192023.csv');
male_dat{19} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1633/1633_01_11102022.csv');
male_dat{20} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1664/1664_01_11282022.csv');
male_dat{21} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1711/1711_01_01122023.csv');
male_dat{22} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1774/1774_01_04112022.csv');
male_dat{23} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1787/1787_01_22112022.csv');
male_dat{24} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1817/1817_01_11112022.csv');
male_dat{25} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1837/1837_01_01122023.csv');
male_dat{26} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1907/1907_01_17112022.csv');
male_dat{27} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1921/1921_01_20_10_2022.csv');
male_dat{28} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1970/1970_01_01202023.csv');
male_dat{39} = readmatrix('/Users/kitty/Desktop/4970/wt_mlzc/final_man/1388/1388_01_02082023.csv');
male_dat{30} = readmatrix('/Users/kitty/Desktop/4970/wt_mlzc/final_man/1444/1444_01_08022023.csv');
male_dat{31} = readmatrix('/Users/kitty/Desktop/4970/wt_mlzc/final_man/1454/1454_01_02142023.csv');
male_dat{32} = readmatrix('/Users/kitty/Desktop/4970/wt_mlzc/final_man/1604/1604_01_02062023.csv');
male_dat{33} = readmatrix('/Users/kitty/Desktop/4970/wt_mlzc/final_man/1804/1804_01_02172023.csv');

%% male second session


male_dat{1} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1006/1006_02_Dec162022.csv');
male_dat{2} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1008/1008_02_15022023.csv');
male_dat{3} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1012/1012_02_Dec22022.csv');
male_dat{4} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1052/1052_02_March17_2022.csv');
male_dat{5} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1125/1125_02_03022023.csv');
male_dat{6} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1156/1156_02_07062022.csv');
male_dat{7} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1173/1173_02_07112022.csv');
male_dat{8} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1219/1219_02_01242023.csv');
male_dat{9} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1245/1245_02_09022023.csv');
male_dat{10} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1252/1252_02_May05_2022.csv');
male_dat{11} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1397/1397_02_April27_2022.csv');
male_dat{12} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1426/1426_02_21112022.csv');
male_dat{13} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1439/1439_02_06292022.csv');
male_dat{14} = readmatrix('/Users/kitty/Desktop/4970/wt_mlzc/final_man/1388/13888_02_02282023.csv');
male_dat{15} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1521/1521_02_02092023.csv');
male_dat{16} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1578/1578_02_18112022.csv');
male_dat{17} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1598/1598_02_Dec82022.csv');
male_dat{18} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1625/1625_02_02022023.csv');
male_dat{19} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1633/1633_02_11252022.csv');
male_dat{20} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1664/1664_02_12152022.csv');
male_dat{21} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1711/1711_02_01262023.csv');
male_dat{22} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1774/1774_02_16112022.csv');
male_dat{23} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1787/1787_02_Dec62022.csv');
male_dat{24} = readmatrix('/Users/kitty/Desktop/4970/wt_mlzc/final_man/1444/1444_02_03062023.csv');
male_dat{25} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1817/1817_02_25112022.csv');
male_dat{26} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1837/1837_02_01262023.csv');
male_dat{27} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1907/1907_02_Dec92022.csv');
male_dat{28} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1921/1921_02_11102022.csv');
male_dat{29} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Man_Feb21/1970/1970_02_01302023.csv');
male_dat{30} = readmatrix('/Users/kitty/Desktop/4970/wt_mlzc/final_man/1454/1454_02_03032023.csv');
male_dat{31} = readmatrix('/Users/kitty/Desktop/4970/wt_mlzc/final_man/1604/1604_02_02272023.csv');
male_dat{32} = readmatrix('/Users/kitty/Desktop/4970/wt_mlzc/final_man/1804/1804_02_03102023.csv');
male_dat{33} = readmatrix('/Users/kitty/Desktop/4970/wt_mlzc/Man_Feb21/1570/1570_02_02282023.csv');
%% Imoirt female data
female_dat{1} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2002/2002_01_03022023.csv');
female_dat{2} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2002/2002_02_13022023.csv');
female_dat{3} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2030/2030_01_10022023.csv');
female_dat{4} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2042/2042_01_11182022.csv');
female_dat{5} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2042/2042_02_Nov292022.csv');
female_dat{6} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2083/2083_01_11152022.csv');
female_dat{7} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2083/2083_02_Nov292022.csv');
female_dat{8} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2095/2095_01_25102022.csv');
female_dat{9} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2095/2095_02_08112022.csv');
female_dat{10} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2124/2124_01_11242022.csv');
female_dat{11} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2124/2124_02_Dec82022.csv');
female_dat{12} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2182/2182_01_01112023.csv');
female_dat{13} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2182/2182_02_01252023.csv');
female_dat{14} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2190/2190_01_Oct292022.csv');
female_dat{15} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2190/2190_02_Nov142022.csv');
female_dat{16} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2221/2221_01_05122022.csv');
female_dat{17} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2221/2221_02_05_262022.csv');
female_dat{18} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2233/2233_01_13022023.csv');
female_dat{19} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2253/2253_01_11152022.csv');
female_dat{20} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2253/2253_02_Nov292022.csv');
female_dat{21} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2301/2301_01_01162023.csv');
female_dat{22} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2301/2301_02_01312023.csv');
female_dat{23} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2355/2355_01_21102022.csv');
female_dat{24} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2355/2355_02_11112022.csv');
female_dat{25} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2441/2441_01_102023.csv');
female_dat{26} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2441/2441_02_01242023.csv');
female_dat{27} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2480/2480_01_11092022.csv');
female_dat{28} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2480/2480_02_Dec52022.csv');
female_dat{29} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2531/2531_01_10182022.csv');
female_dat{30} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2531/2531_02_09112022.csv');
female_dat{31} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2532/2532_01_01132023.csv');
female_dat{32} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2532/2532_02_01022023.csv');
female_dat{33} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2577/2577_01_01172023.csv');
female_dat{34} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2577/2577_02_01312023.csv');
female_dat{35} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2604/2604_01_02072023.csv');
female_dat{36} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2641/2641_01_01162023.csv');
female_dat{37} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2641/2641_02_01312023.csv');
female_dat{38} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2675/2675_01_11242022.csv');
female_dat{39} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2675/2675_02_12072022.csv');
female_dat{40} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2682/2682_01_11012022.csv');
female_dat{41} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2682/2682_02_1172022.csv');
female_dat{42} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2739/2739_01_11222022.csv');
female_dat{43} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2739/2739_02_Dec62022.csv');
female_dat{44} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2760/2760_01_10182022.csv');
female_dat{45} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2760/2760_02_08112022.csv');
female_dat{46} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2811/2811_01_Nov142022.csv');
female_dat{47} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2811/2811_02_Nov282022.csv');
female_dat{48} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2822/2822_01_08022023.csv');
female_dat{49} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2853/2853_01_01132023.csv');
female_dat{50} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2853/2853_02_01272023.csv');
female_dat{51} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2905/2905_01_01252023.csv');
female_dat{52} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2905/2905_02_15022023.csv');
female_dat{53} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2914/2914_01_02022023.csv');
female_dat{54} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2914/2914_02_16022023.csv');
female_dat{55} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2930/2930_01_March10_2022.csv');
female_dat{56} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2930/2930_02_March25_2022.csv');
female_dat{57} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2998/2998_01_20102022.csv');
female_dat{58} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2998/2998_02_09112022.csv');


female_dat{59} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2030/2030_02_03032023.csv');
female_dat{60} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2233/2233_02_06032023.csv');
female_dat{61} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2371/2371_01_02142023.csv');
female_dat{62} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2371/2371_02_02272023.csv');
female_dat{63} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2408/2408_01_02212023.csv');
female_dat{64} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2408/2408_02_03092023.csv');
female_dat{65} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2604/2604_02_03092023.csv');
female_dat{66} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2822/2822_02_01032023.csv');
female_dat{67} = readmatrix('//Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2322/2322_01_Oct272022.csv');
female_dat{68} = readmatrix('/Users/kitty/Desktop/4970/Feb_21(FINISHED)/Woman_Feb21/2322/2322_02_Dec22022.csv');

%% Use plots of raw data to determine good regions to sample data

%CHOOSE LENGTH/POSITION OF CHOSEN SAMPLE
len = 36000-1; %Amount of time sampled
%Specify the LAST BOUNDARY of the 2 interested samples in each dataset
range = [47849 121928 ; ... 
    47849 121928; ...
    47849 121928; ...
    47849 121928; ...
    47849 121928; ...
    47849 121928; ...
    47849 121928; ...
    47849 121928; ...
    47849 121928; ...
    47849 121928];
range = range - len;
%rows: datasets (4)
%columns: temperature (low/high) - note: same range for all locations


%% Convert to minutes

%To not convert to minutes:
%factor = 1;

%To convert to minutes:

tf = 1/(60*40);

%% Convert Index to Time (minutes)
% for male data
for i = 1:size(male_dat,2)
    male_dat{i}(:,1) = male_dat{i}(:,1)*tf;
end
%% for female data
for i = 1:size(female_dat,2)
    female_dat{i}(:,1) = female_dat{i}(:,1)*tf;
end


%% Check sections of good steady state data based on visual observation

%CREATE PLOTS TO CHECK REGIONS 
% for male
for i = 1:size(male_dat,2) %For all 3 datasets
    plot_rawdat(male_dat{i}, 0)
     
    %Forearm subplot
    subplot(2,1,1) 
    %low temp
    rectangle('Position',[range(i,1)*tf -10 (len+1)*tf 800],'FaceColor',[0 .5 .5 0.1])
    %high temp
    rectangle('Position',[range(i,2)*tf -10 (len+1)*tf 800],'FaceColor',[0 .5 .5 0.1])
    
    %Forehead subplot
    subplot(2,1,2)
    %low temp
    rectangle('Position',[range(i,1)*tf -10 (len+1)*tf 800],'FaceColor',[0 .5 .5 0.1])
    %high temp
    rectangle('Position',[range(i,2)*tf -10 (len+1)*tf 800],'FaceColor',[0 .5 .5 0.1])    
end


%% SPECIFY GOOD DATA REGIONS BASED ON PLOTS
for i = 1:size(male_dat,2) %For each dataset, give same data range (for consistency)
    m_lowtemp_arm{:,i} = male_dat{i}(range(1,1):range(1,1)+len,1:3);
    m_hightemp_arm{:,i} = male_dat{i}(range(1,2):range(1,2)+len,1:3);
    m_lowtemp_head{:,i} = male_dat{i}(range(1,1):range(1,1)+len,[1 4 5]);
    m_hightemp_head{:,i} = male_dat{i}(range(1,2):range(1,2)+len,[1 4 5]);
end

%Format: 
% - Row: same type of data (location/temp)
% - Column: one dataset

%% for female
for i = 1:size(female_dat,2) %For all 3 datasets
    plot_rawdat(female_dat{i}, 0)
     
    %Forearm subplot
    subplot(2,1,1) 
    %low temp
    rectangle('Position',[range(i,1)*tf -10 (len+1)*tf 800],'FaceColor',[0 .5 .5 0.1])
    %high temp
    rectangle('Position',[range(i,2)*tf -10 (len+1)*tf 800],'FaceColor',[0 .5 .5 0.1])
    
    %Forehead subplot
    subplot(2,1,2)
    %low temp
    rectangle('Position',[range(i,1)*tf -10 (len+1)*tf 800],'FaceColor',[0 .5 .5 0.1])
    %high temp
    rectangle('Position',[range(i,2)*tf -10 (len+1)*tf 800],'FaceColor',[0 .5 .5 0.1])    
end


%% SPECIFY GOOD DATA REGIONS BASED ON PLOTS
for i = 1:size(female_dat,2) %For each dataset, give same data range (for consistency)
    fm_lowtemp_arm{:,i} = female_dat{i}(range(1,1):range(1,1)+len,1:3);
    fm_hightemp_arm{:,i} = female_dat{i}(range(1,2):range(1,2)+len,1:3);
    fm_lowtemp_head{:,i} = female_dat{i}(range(1,1):range(1,1)+len,[1 4 5]);
    fm_hightemp_head{:,i} = female_dat{i}(range(1,2):range(1,2)+len,[1 4 5]);
end
%%
% low_arm = [m_lowtemp_arm fm_lowtemp_arm];
% high_arm = [ m_hightemp_arm fm_hightemp_arm]
%%
low_arm = m_lowtemp_arm ;
high_arm = m_hightemp_arm;

%% Store them all in one test variable
% select different pair test you want to minimalzie run time
%low_arm
% test1 = m_lowtemp_arm; 
% test2 = fm_lowtemp_arm; 

% low_head
% test1 = m_lowtemp_head; 
% test2 = fm_lowtemp_head;

% high_arm
% test1 = m_hightemp_arm;
% test2 = fm_hightemp_arm;

% high_head
% test1 = m_hightemp_head; 
% % test2 = fm_hightemp_head;

% test1 = fm_hightemp_head; 
% test2 =  fm_hightemp_arm;
% test1 = fm_lowtemp_head; 
% test2 =  fm_lowtemp_arm;

test1 = m_lowtemp_head;
test2 = m_hightemp_head;

    
  
%Format: 
% - Row: same type of data (location/gender)
% - Column: one dataset(people)

%% Add filter (optional)

%Add filter:
% Step 1: type filterDesigner
%Step 2: Export as variable - Rectangular, Kaiser, Hamming
Rectangular = filter_rectangular;
%Hamming = filter_hamming;
%Kaiser = filter_kaiser; %Applied Kaiser, order 16, beta 0.5

%Step 3: apply the filter
%Full data: (all of time, not split into high vs low temp)
% testfull(:,1) = filter(Rectangular, dat.Flux1);
% testfull(:,2) = filter(Rectangular, dat.Flux2);

%Sectioned data: (based on what you put in the test variable)
for i = 1:size(test1,2)
    testfilt = filter(Rectangular, test1{i}(:,2));
    test1{i}(:,2) = testfilt;
end
for i = 1:size(test2,2)
    testfilt = filter(Rectangular, test2{i}(:,2));
    test2{i}(:,2) = testfilt;
end

%% Aquiring the wavelet transform values

Fs = 40;
for i = 1:size(test1,2)
    [wt1{i},f1{i},~] = cwt(test1{i}(:,2),'amor',Fs);
end

for i = 1:size(test2,2)
    [wt2{i},f2{i},~] = cwt(test2{i}(:,2),'amor',Fs);
end
%wt variable format:
%first dimension: wavelet transform values
%second dimension: time
%% Calculating average energy content
% 
% %Define the frequency bands of physiological systems (as defined by
% %BracicStefanoska 1998 paper)
flim = [0.6 1.6; ...%Heart activity
    0.16 0.4;...%Respiratory activity
    0.06 0.16;...%Myogenic activity
    0.02 0.06;...%Neurogenic activity
    0.0095 0.02;...%Metabolic activity
    0.0095 1.6];%Total activity

for j = 1:size(f1,2)
    %Create logic matrices
    for i = 1:size(flim,1)
        flogic{j}(:,i) = f1{j}>flim(i,1) & f1{j}<flim(i,2); 
    end

    %Create a scale matrix
    clear s
    s(:,1) = 1./(2*pi*f1{j});

    %Calculate the average energy content of each interested band
    wttemp1{j} = ((abs(wt1{j})).^2)./s.^2;
    wttemp2{j} = ((abs(wt2{j})).^2)./s.^2;
    
end

%% Calculating average amplitude

%Calculate the average amplitude of each interested band
for j = 1:size(test1,2)%For each dataset
    for i = 1:size(flim,1) %For each frequency band
        avgAmp1(j,i) = sum((1./(flim(i,2)-flim(i,1))).*(sum(wttemp1{j}(flogic{j}(:,i),:),1))) ./ size(wt1{j},2); %run calculation
    end
    %Calculate average amplitude
    relAmp1(j,:) = avgAmp1(j,:)./avgAmp1(j,end);
end
%Calculate the average amplitude of each interested band
for j = 1:size(test2,2)%For each dataset
    for i = 1:size(flim,1) %For each frequency band
        avgAmp2(j,i) = sum((1./(flim(i,2)-flim(i,1))).*(sum(wttemp2{j}(flogic{j}(:,i),:),1))) ./ size(wt2{j},2); %run calculation
    end
    %Calculate average amplitude
    relAmp2(j,:) = avgAmp2(j,:)./avgAmp2(j,end);
end


%% Plot relative Amp
figure
hold on
subplot(1,2,1)
boxplot(relAmp1(:,:),{'Heart','Respiratory','Myogenic','Neurogenic','Metabolic','Total'})
title('Male')
ylabel('Relative Amplitude (au)')
set(gca, 'YScale', 'log')


%Plot relative Amp
hold on
subplot(1,2,2)
boxplot(relAmp2(:,:),{'Heart','Respiratory','Myogenic','Neurogenic','Metabolic','Total'})
title('Female')
ylabel('Relative Amplitude (au)')
set(gca, 'YScale', 'log')

%sgtitle('Relative Amplitude Low Temp Forearm')
%sgtitle('Relative Amplitude Low Temp Forhead')
%sgtitle('Relative Amplitude High Temp Forearm')
sgtitle('Relative Amplitude High Temp Forhead')