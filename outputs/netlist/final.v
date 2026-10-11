module txn_risk_engine (clk,
    rst_n,
    valid_in,
    valid_out,
    amount,
    anomaly_thr,
    category,
    count_limit,
    decision,
    risk_score,
    spend_limit,
    time_delta,
    window_size);
 input clk;
 input rst_n;
 input valid_in;
 output valid_out;
 input [15:0] amount;
 input [15:0] anomaly_thr;
 input [7:0] category;
 input [7:0] count_limit;
 output [1:0] decision;
 output [7:0] risk_score;
 input [23:0] spend_limit;
 input [11:0] time_delta;
 input [11:0] window_size;

 wire _0000_;
 wire _0001_;
 wire _0002_;
 wire _0003_;
 wire _0004_;
 wire _0005_;
 wire _0006_;
 wire _0007_;
 wire _0008_;
 wire _0009_;
 wire _0010_;
 wire _0011_;
 wire _0012_;
 wire _0013_;
 wire _0014_;
 wire _0015_;
 wire _0016_;
 wire _0017_;
 wire _0018_;
 wire _0019_;
 wire _0020_;
 wire _0021_;
 wire _0022_;
 wire _0023_;
 wire _0024_;
 wire _0025_;
 wire _0026_;
 wire _0027_;
 wire _0028_;
 wire _0029_;
 wire _0030_;
 wire _0031_;
 wire _0032_;
 wire _0033_;
 wire _0034_;
 wire _0035_;
 wire _0036_;
 wire _0037_;
 wire _0038_;
 wire _0039_;
 wire _0040_;
 wire _0041_;
 wire _0042_;
 wire _0043_;
 wire _0044_;
 wire _0045_;
 wire _0046_;
 wire _0047_;
 wire _0048_;
 wire _0049_;
 wire _0050_;
 wire _0051_;
 wire _0052_;
 wire _0053_;
 wire _0054_;
 wire _0055_;
 wire _0056_;
 wire _0057_;
 wire _0058_;
 wire _0059_;
 wire _0060_;
 wire _0061_;
 wire _0062_;
 wire _0063_;
 wire _0064_;
 wire _0065_;
 wire _0066_;
 wire _0067_;
 wire _0068_;
 wire _0069_;
 wire _0070_;
 wire _0071_;
 wire _0072_;
 wire _0073_;
 wire _0074_;
 wire _0075_;
 wire _0076_;
 wire _0077_;
 wire _0078_;
 wire _0079_;
 wire _0080_;
 wire _0081_;
 wire _0082_;
 wire _0083_;
 wire _0084_;
 wire _0085_;
 wire _0086_;
 wire _0087_;
 wire _0088_;
 wire _0089_;
 wire _0090_;
 wire _0091_;
 wire _0092_;
 wire _0093_;
 wire _0094_;
 wire _0095_;
 wire _0096_;
 wire _0097_;
 wire _0098_;
 wire _0099_;
 wire _0100_;
 wire _0101_;
 wire _0102_;
 wire _0103_;
 wire _0104_;
 wire _0105_;
 wire _0106_;
 wire _0107_;
 wire _0108_;
 wire _0109_;
 wire _0110_;
 wire _0111_;
 wire _0112_;
 wire _0113_;
 wire _0114_;
 wire _0115_;
 wire _0116_;
 wire _0117_;
 wire _0118_;
 wire _0119_;
 wire _0120_;
 wire _0121_;
 wire _0122_;
 wire _0123_;
 wire _0124_;
 wire _0125_;
 wire _0126_;
 wire _0127_;
 wire _0128_;
 wire _0129_;
 wire _0130_;
 wire _0131_;
 wire _0132_;
 wire _0133_;
 wire _0134_;
 wire _0135_;
 wire _0136_;
 wire _0137_;
 wire _0138_;
 wire _0139_;
 wire _0140_;
 wire _0141_;
 wire _0142_;
 wire _0143_;
 wire _0144_;
 wire _0145_;
 wire _0146_;
 wire _0147_;
 wire _0148_;
 wire _0149_;
 wire _0150_;
 wire _0151_;
 wire _0152_;
 wire _0153_;
 wire _0154_;
 wire _0155_;
 wire _0156_;
 wire _0157_;
 wire _0158_;
 wire _0159_;
 wire _0160_;
 wire _0161_;
 wire _0162_;
 wire _0163_;
 wire _0164_;
 wire _0165_;
 wire _0166_;
 wire _0167_;
 wire _0168_;
 wire _0169_;
 wire _0170_;
 wire _0171_;
 wire _0172_;
 wire _0173_;
 wire _0174_;
 wire _0175_;
 wire _0176_;
 wire _0177_;
 wire _0178_;
 wire _0179_;
 wire _0180_;
 wire _0181_;
 wire _0182_;
 wire _0183_;
 wire _0184_;
 wire _0185_;
 wire _0186_;
 wire _0187_;
 wire _0188_;
 wire _0189_;
 wire _0190_;
 wire _0191_;
 wire _0192_;
 wire _0193_;
 wire _0194_;
 wire _0195_;
 wire _0196_;
 wire _0197_;
 wire _0198_;
 wire _0199_;
 wire _0201_;
 wire _0202_;
 wire _0203_;
 wire _0204_;
 wire _0205_;
 wire _0206_;
 wire _0207_;
 wire _0208_;
 wire _0209_;
 wire _0210_;
 wire _0211_;
 wire _0213_;
 wire _0215_;
 wire _0216_;
 wire _0217_;
 wire _0218_;
 wire _0219_;
 wire _0220_;
 wire _0221_;
 wire _0222_;
 wire _0224_;
 wire _0225_;
 wire _0226_;
 wire _0227_;
 wire _0228_;
 wire _0229_;
 wire _0230_;
 wire _0231_;
 wire _0232_;
 wire _0233_;
 wire _0234_;
 wire _0236_;
 wire _0238_;
 wire _0239_;
 wire _0240_;
 wire _0241_;
 wire _0242_;
 wire _0243_;
 wire _0244_;
 wire _0245_;
 wire _0247_;
 wire _0248_;
 wire _0249_;
 wire _0250_;
 wire _0251_;
 wire _0252_;
 wire _0253_;
 wire _0254_;
 wire _0255_;
 wire _0256_;
 wire _0257_;
 wire _0259_;
 wire _0261_;
 wire _0262_;
 wire _0263_;
 wire _0264_;
 wire _0265_;
 wire _0266_;
 wire _0267_;
 wire _0268_;
 wire _0270_;
 wire _0271_;
 wire _0272_;
 wire _0273_;
 wire _0274_;
 wire _0275_;
 wire _0276_;
 wire _0277_;
 wire _0278_;
 wire _0279_;
 wire _0280_;
 wire _0282_;
 wire _0284_;
 wire _0285_;
 wire _0286_;
 wire _0287_;
 wire _0288_;
 wire _0289_;
 wire _0290_;
 wire _0291_;
 wire _0293_;
 wire _0294_;
 wire _0295_;
 wire _0296_;
 wire _0297_;
 wire _0298_;
 wire _0299_;
 wire _0300_;
 wire _0301_;
 wire _0302_;
 wire _0303_;
 wire _0305_;
 wire _0307_;
 wire _0308_;
 wire _0309_;
 wire _0310_;
 wire _0311_;
 wire _0312_;
 wire _0313_;
 wire _0314_;
 wire _0316_;
 wire _0317_;
 wire _0318_;
 wire _0319_;
 wire _0320_;
 wire _0321_;
 wire _0322_;
 wire _0323_;
 wire _0324_;
 wire _0325_;
 wire _0326_;
 wire _0328_;
 wire _0330_;
 wire _0331_;
 wire _0332_;
 wire _0333_;
 wire _0334_;
 wire _0335_;
 wire _0336_;
 wire _0337_;
 wire _0339_;
 wire _0340_;
 wire _0341_;
 wire _0342_;
 wire _0343_;
 wire _0344_;
 wire _0345_;
 wire _0346_;
 wire _0347_;
 wire _0348_;
 wire _0349_;
 wire _0351_;
 wire _0353_;
 wire _0354_;
 wire _0355_;
 wire _0356_;
 wire _0359_;
 wire _0360_;
 wire _0361_;
 wire _0362_;
 wire _0364_;
 wire _0365_;
 wire _0366_;
 wire _0367_;
 wire _0368_;
 wire _0369_;
 wire _0370_;
 wire _0371_;
 wire _0372_;
 wire _0373_;
 wire _0374_;
 wire _0375_;
 wire _0376_;
 wire _0377_;
 wire _0378_;
 wire _0379_;
 wire _0380_;
 wire _0381_;
 wire _0382_;
 wire _0383_;
 wire _0384_;
 wire _0385_;
 wire _0386_;
 wire _0387_;
 wire _0388_;
 wire _0389_;
 wire _0390_;
 wire _0392_;
 wire _0393_;
 wire _0394_;
 wire _0396_;
 wire _0399_;
 wire _0400_;
 wire _0401_;
 wire _0403_;
 wire _0406_;
 wire _0408_;
 wire _0409_;
 wire _0410_;
 wire _0411_;
 wire _0412_;
 wire _0413_;
 wire _0414_;
 wire _0416_;
 wire _0417_;
 wire _0419_;
 wire _0420_;
 wire _0421_;
 wire _0422_;
 wire _0423_;
 wire _0426_;
 wire _0427_;
 wire _0428_;
 wire _0429_;
 wire _0430_;
 wire _0432_;
 wire _0433_;
 wire _0434_;
 wire _0435_;
 wire _0436_;
 wire _0437_;
 wire _0438_;
 wire _0439_;
 wire _0440_;
 wire _0442_;
 wire _0443_;
 wire _0445_;
 wire _0446_;
 wire _0448_;
 wire _0449_;
 wire _0450_;
 wire _0451_;
 wire _0452_;
 wire _0453_;
 wire _0454_;
 wire _0456_;
 wire _0457_;
 wire _0458_;
 wire _0459_;
 wire _0462_;
 wire _0463_;
 wire _0464_;
 wire _0466_;
 wire _0468_;
 wire _0469_;
 wire _0470_;
 wire _0471_;
 wire _0472_;
 wire _0474_;
 wire _0475_;
 wire _0476_;
 wire _0477_;
 wire _0478_;
 wire _0479_;
 wire _0480_;
 wire _0481_;
 wire _0482_;
 wire _0483_;
 wire _0484_;
 wire _0485_;
 wire _0486_;
 wire _0487_;
 wire _0488_;
 wire _0491_;
 wire _0494_;
 wire _0496_;
 wire _0498_;
 wire _0500_;
 wire _0501_;
 wire _0502_;
 wire _0503_;
 wire _0506_;
 wire _0508_;
 wire _0509_;
 wire _0510_;
 wire _0512_;
 wire _0513_;
 wire _0514_;
 wire _0515_;
 wire _0516_;
 wire _0517_;
 wire _0518_;
 wire _0519_;
 wire _0520_;
 wire _0521_;
 wire _0522_;
 wire _0526_;
 wire _0527_;
 wire _0528_;
 wire _0529_;
 wire _0533_;
 wire _0534_;
 wire _0535_;
 wire _0536_;
 wire _0537_;
 wire _0538_;
 wire _0539_;
 wire _0540_;
 wire _0541_;
 wire _0543_;
 wire _0544_;
 wire _0545_;
 wire _0546_;
 wire _0547_;
 wire _0548_;
 wire _0549_;
 wire _0550_;
 wire _0551_;
 wire _0554_;
 wire _0555_;
 wire _0557_;
 wire _0558_;
 wire _0559_;
 wire _0560_;
 wire _0561_;
 wire _0562_;
 wire _0563_;
 wire _0564_;
 wire _0565_;
 wire _0567_;
 wire _0568_;
 wire _0569_;
 wire _0570_;
 wire _0571_;
 wire _0572_;
 wire _0574_;
 wire _0575_;
 wire _0576_;
 wire _0577_;
 wire _0578_;
 wire _0579_;
 wire _0580_;
 wire _0581_;
 wire _0582_;
 wire _0583_;
 wire _0584_;
 wire _0585_;
 wire _0586_;
 wire _0587_;
 wire _0588_;
 wire _0589_;
 wire _0590_;
 wire _0591_;
 wire _0592_;
 wire _0593_;
 wire _0594_;
 wire _0595_;
 wire _0596_;
 wire _0597_;
 wire _0598_;
 wire _0599_;
 wire _0600_;
 wire _0601_;
 wire _0602_;
 wire _0604_;
 wire _0605_;
 wire _0606_;
 wire _0607_;
 wire _0608_;
 wire _0609_;
 wire _0610_;
 wire _0612_;
 wire _0613_;
 wire _0615_;
 wire _0616_;
 wire _0617_;
 wire _0618_;
 wire _0619_;
 wire _0620_;
 wire _0621_;
 wire _0624_;
 wire _0625_;
 wire _0626_;
 wire _0627_;
 wire _0628_;
 wire _0629_;
 wire _0631_;
 wire _0632_;
 wire _0633_;
 wire _0635_;
 wire _0636_;
 wire _0637_;
 wire _0638_;
 wire _0639_;
 wire _0640_;
 wire _0642_;
 wire _0643_;
 wire _0644_;
 wire _0645_;
 wire _0646_;
 wire _0647_;
 wire _0648_;
 wire _0649_;
 wire _0650_;
 wire _0651_;
 wire _0652_;
 wire _0653_;
 wire _0654_;
 wire _0655_;
 wire _0656_;
 wire _0657_;
 wire _0658_;
 wire _0659_;
 wire _0660_;
 wire _0661_;
 wire _0662_;
 wire _0663_;
 wire _0665_;
 wire _0666_;
 wire _0667_;
 wire _0668_;
 wire _0669_;
 wire _0670_;
 wire _0671_;
 wire _0672_;
 wire _0673_;
 wire _0674_;
 wire _0676_;
 wire _0677_;
 wire _0678_;
 wire _0679_;
 wire _0680_;
 wire _0681_;
 wire _0682_;
 wire _0683_;
 wire _0684_;
 wire _0685_;
 wire _0686_;
 wire _0687_;
 wire _0688_;
 wire _0689_;
 wire _0690_;
 wire _0691_;
 wire _0693_;
 wire _0694_;
 wire _0695_;
 wire _0696_;
 wire _0697_;
 wire _0698_;
 wire _0699_;
 wire _0700_;
 wire _0701_;
 wire _0702_;
 wire _0703_;
 wire _0705_;
 wire _0706_;
 wire _0707_;
 wire _0708_;
 wire _0709_;
 wire _0710_;
 wire _0711_;
 wire _0712_;
 wire _0713_;
 wire _0714_;
 wire _0715_;
 wire _0716_;
 wire _0718_;
 wire _0719_;
 wire _0720_;
 wire _0721_;
 wire _0722_;
 wire _0724_;
 wire _0725_;
 wire _0726_;
 wire _0727_;
 wire _0728_;
 wire _0729_;
 wire _0730_;
 wire _0731_;
 wire _0732_;
 wire _0733_;
 wire _0734_;
 wire _0735_;
 wire _0736_;
 wire _0737_;
 wire _0738_;
 wire _0739_;
 wire _0740_;
 wire _0741_;
 wire _0742_;
 wire _0743_;
 wire _0744_;
 wire _0745_;
 wire _0746_;
 wire _0747_;
 wire _0749_;
 wire _0750_;
 wire _0751_;
 wire _0752_;
 wire _0753_;
 wire _0754_;
 wire _0755_;
 wire _0756_;
 wire _0757_;
 wire _0759_;
 wire _0760_;
 wire _0761_;
 wire _0762_;
 wire _0763_;
 wire _0765_;
 wire _0771_;
 wire _0772_;
 wire _0773_;
 wire _0774_;
 wire _0775_;
 wire _0776_;
 wire _0777_;
 wire _0779_;
 wire _0780_;
 wire _0781_;
 wire _0782_;
 wire _0783_;
 wire _0784_;
 wire _0785_;
 wire _0786_;
 wire _0787_;
 wire _0788_;
 wire _0789_;
 wire _0790_;
 wire _0791_;
 wire _0792_;
 wire _0793_;
 wire _0794_;
 wire _0795_;
 wire _0796_;
 wire _0797_;
 wire _0798_;
 wire _0799_;
 wire _0800_;
 wire _0801_;
 wire _0802_;
 wire _0803_;
 wire _0804_;
 wire _0805_;
 wire _0807_;
 wire _0809_;
 wire _0810_;
 wire _0811_;
 wire _0812_;
 wire _0813_;
 wire _0814_;
 wire _0815_;
 wire _0816_;
 wire _0817_;
 wire _0818_;
 wire _0819_;
 wire _0820_;
 wire _0821_;
 wire _0822_;
 wire _0823_;
 wire _0824_;
 wire _0825_;
 wire _0826_;
 wire _0827_;
 wire _0828_;
 wire _0829_;
 wire _0830_;
 wire _0831_;
 wire _0832_;
 wire _0833_;
 wire _0834_;
 wire _0835_;
 wire _0836_;
 wire _0837_;
 wire _0838_;
 wire _0839_;
 wire _0840_;
 wire _0841_;
 wire _0842_;
 wire _0843_;
 wire _0844_;
 wire _0845_;
 wire _0846_;
 wire _0847_;
 wire _0848_;
 wire _0849_;
 wire _0850_;
 wire _0851_;
 wire _0852_;
 wire _0853_;
 wire _0854_;
 wire _0855_;
 wire _0856_;
 wire _0857_;
 wire _0858_;
 wire _0859_;
 wire _0860_;
 wire _0861_;
 wire _0862_;
 wire _0863_;
 wire _0864_;
 wire _0865_;
 wire _0866_;
 wire _0867_;
 wire _0868_;
 wire _0869_;
 wire _0870_;
 wire _0871_;
 wire _0872_;
 wire _0873_;
 wire _0874_;
 wire _0875_;
 wire _0876_;
 wire _0877_;
 wire _0878_;
 wire _0879_;
 wire _0880_;
 wire _0881_;
 wire _0882_;
 wire _0883_;
 wire _0884_;
 wire _0885_;
 wire _0886_;
 wire _0887_;
 wire _0888_;
 wire _0889_;
 wire _0890_;
 wire _0891_;
 wire _0892_;
 wire _0893_;
 wire _0894_;
 wire _0895_;
 wire _0896_;
 wire _0897_;
 wire _0898_;
 wire _0899_;
 wire _0900_;
 wire _0901_;
 wire _0902_;
 wire _0903_;
 wire _0904_;
 wire _0905_;
 wire _0906_;
 wire _0907_;
 wire _0908_;
 wire _0909_;
 wire _0910_;
 wire _0911_;
 wire _0912_;
 wire _0913_;
 wire _0914_;
 wire _0915_;
 wire _0916_;
 wire _0917_;
 wire _0918_;
 wire _0919_;
 wire _0920_;
 wire _0921_;
 wire _0922_;
 wire _0923_;
 wire _0924_;
 wire _0925_;
 wire _0926_;
 wire _0927_;
 wire _0928_;
 wire _0929_;
 wire _0930_;
 wire _0931_;
 wire _0932_;
 wire _0933_;
 wire _0934_;
 wire _0935_;
 wire _0936_;
 wire _0937_;
 wire _0938_;
 wire _0939_;
 wire _0940_;
 wire _0941_;
 wire _0942_;
 wire _0943_;
 wire _0944_;
 wire _0945_;
 wire _0946_;
 wire _0947_;
 wire _0948_;
 wire _0949_;
 wire _0950_;
 wire _0951_;
 wire _0952_;
 wire _0953_;
 wire _0954_;
 wire _0955_;
 wire _0956_;
 wire _0957_;
 wire _0958_;
 wire _0959_;
 wire _0960_;
 wire _0961_;
 wire _0962_;
 wire _0963_;
 wire _0964_;
 wire _0965_;
 wire _0966_;
 wire _0967_;
 wire _0968_;
 wire _0969_;
 wire _0970_;
 wire _0971_;
 wire _0972_;
 wire _0973_;
 wire _0974_;
 wire _0975_;
 wire _0976_;
 wire _0977_;
 wire _0978_;
 wire _0979_;
 wire _0980_;
 wire _0981_;
 wire _0982_;
 wire _0983_;
 wire _0984_;
 wire _0985_;
 wire _0986_;
 wire _0987_;
 wire _0988_;
 wire _0989_;
 wire _0990_;
 wire _0991_;
 wire _0992_;
 wire _0993_;
 wire _0994_;
 wire _0995_;
 wire _0996_;
 wire _0997_;
 wire _0998_;
 wire _0999_;
 wire _1000_;
 wire _1001_;
 wire _1002_;
 wire _1003_;
 wire _1004_;
 wire _1005_;
 wire _1006_;
 wire _1007_;
 wire _1008_;
 wire _1009_;
 wire _1010_;
 wire _1011_;
 wire _1012_;
 wire _1013_;
 wire _1014_;
 wire _1015_;
 wire _1016_;
 wire _1017_;
 wire _1018_;
 wire _1019_;
 wire _1020_;
 wire _1021_;
 wire _1022_;
 wire _1023_;
 wire _1024_;
 wire _1025_;
 wire _1026_;
 wire _1027_;
 wire _1028_;
 wire _1029_;
 wire _1030_;
 wire _1031_;
 wire _1032_;
 wire _1033_;
 wire _1034_;
 wire _1035_;
 wire _1036_;
 wire _1037_;
 wire _1038_;
 wire _1039_;
 wire _1040_;
 wire _1041_;
 wire _1042_;
 wire _1043_;
 wire _1044_;
 wire _1045_;
 wire _1046_;
 wire _1047_;
 wire _1048_;
 wire _1049_;
 wire _1050_;
 wire _1051_;
 wire _1052_;
 wire _1053_;
 wire _1054_;
 wire _1055_;
 wire _1056_;
 wire _1057_;
 wire _1058_;
 wire _1061_;
 wire _1062_;
 wire _1063_;
 wire _1064_;
 wire _1065_;
 wire _1066_;
 wire _1067_;
 wire _1068_;
 wire _1069_;
 wire _1070_;
 wire _1071_;
 wire _1072_;
 wire _1073_;
 wire _1074_;
 wire _1075_;
 wire _1076_;
 wire _1077_;
 wire _1078_;
 wire _1079_;
 wire _1080_;
 wire _1081_;
 wire _1082_;
 wire _1083_;
 wire _1084_;
 wire _1085_;
 wire _1086_;
 wire _1087_;
 wire _1088_;
 wire _1089_;
 wire _1090_;
 wire _1091_;
 wire _1092_;
 wire _1093_;
 wire _1094_;
 wire _1095_;
 wire _1096_;
 wire _1097_;
 wire _1098_;
 wire _1099_;
 wire _1100_;
 wire _1101_;
 wire _1102_;
 wire _1104_;
 wire _1106_;
 wire _1107_;
 wire _1108_;
 wire _1109_;
 wire _1110_;
 wire _1111_;
 wire _1112_;
 wire _1113_;
 wire _1114_;
 wire _1115_;
 wire _1116_;
 wire _1117_;
 wire _1118_;
 wire _1119_;
 wire _1120_;
 wire _1121_;
 wire _1122_;
 wire _1123_;
 wire _1124_;
 wire _1125_;
 wire _1126_;
 wire _1127_;
 wire _1128_;
 wire _1129_;
 wire _1130_;
 wire _1131_;
 wire _1132_;
 wire _1133_;
 wire _1134_;
 wire _1135_;
 wire _1136_;
 wire _1137_;
 wire _1139_;
 wire _1140_;
 wire _1141_;
 wire _1142_;
 wire _1143_;
 wire _1144_;
 wire _1145_;
 wire _1146_;
 wire _1147_;
 wire _1148_;
 wire _1149_;
 wire _1150_;
 wire _1152_;
 wire _1153_;
 wire _1154_;
 wire _1155_;
 wire _1156_;
 wire _1157_;
 wire _1158_;
 wire _1159_;
 wire _1160_;
 wire _1161_;
 wire _1162_;
 wire _1163_;
 wire _1164_;
 wire _1165_;
 wire _1166_;
 wire _1167_;
 wire _1168_;
 wire _1169_;
 wire _1171_;
 wire _1172_;
 wire _1173_;
 wire _1174_;
 wire _1175_;
 wire _1176_;
 wire _1177_;
 wire _1178_;
 wire _1179_;
 wire _1180_;
 wire _1181_;
 wire _1182_;
 wire _1183_;
 wire _1184_;
 wire _1185_;
 wire _1186_;
 wire _1187_;
 wire _1188_;
 wire _1189_;
 wire _1190_;
 wire _1191_;
 wire _1192_;
 wire _1193_;
 wire _1194_;
 wire _1195_;
 wire _1196_;
 wire _1197_;
 wire _1198_;
 wire _1199_;
 wire _1200_;
 wire _1201_;
 wire _1202_;
 wire _1203_;
 wire _1204_;
 wire _1205_;
 wire _1206_;
 wire _1207_;
 wire _1208_;
 wire _1209_;
 wire _1210_;
 wire _1211_;
 wire _1212_;
 wire _1213_;
 wire _1214_;
 wire _1215_;
 wire _1216_;
 wire _1217_;
 wire _1218_;
 wire _1220_;
 wire _1221_;
 wire _1222_;
 wire _1223_;
 wire _1224_;
 wire _1225_;
 wire _1226_;
 wire _1227_;
 wire _1228_;
 wire _1229_;
 wire _1230_;
 wire _1231_;
 wire _1232_;
 wire _1233_;
 wire _1234_;
 wire _1235_;
 wire _1236_;
 wire _1237_;
 wire _1238_;
 wire _1239_;
 wire _1240_;
 wire _1241_;
 wire _1242_;
 wire _1243_;
 wire _1244_;
 wire _1245_;
 wire _1246_;
 wire _1247_;
 wire _1248_;
 wire _1249_;
 wire _1250_;
 wire _1251_;
 wire _1252_;
 wire _1253_;
 wire _1254_;
 wire _1255_;
 wire _1256_;
 wire _1257_;
 wire _1258_;
 wire _1259_;
 wire _1260_;
 wire _1261_;
 wire _1262_;
 wire _1263_;
 wire net709;
 wire net754;
 wire _1266_;
 wire net708;
 wire net753;
 wire _1269_;
 wire net707;
 wire _1271_;
 wire net752;
 wire _1273_;
 wire net749;
 wire _1275_;
 wire _1276_;
 wire net706;
 wire _1278_;
 wire _1279_;
 wire net750;
 wire net705;
 wire _1282_;
 wire net704;
 wire net751;
 wire _1285_;
 wire net703;
 wire _1287_;
 wire _1288_;
 wire clknet_4_12_0_clk;
 wire _1290_;
 wire _1291_;
 wire net702;
 wire _1293_;
 wire _1294_;
 wire clknet_5_1__leaf_clk;
 wire _1296_;
 wire _1297_;
 wire net701;
 wire _1299_;
 wire net700;
 wire _1301_;
 wire clknet_5_7__leaf_clk;
 wire _1303_;
 wire _1304_;
 wire net699;
 wire _1306_;
 wire _1307_;
 wire _1309_;
 wire _1310_;
 wire clknet_5_26__leaf_clk;
 wire _1312_;
 wire _1313_;
 wire clknet_5_25__leaf_clk;
 wire net698;
 wire _1316_;
 wire clknet_5_24__leaf_clk;
 wire _1318_;
 wire clknet_5_12__leaf_clk;
 wire _1320_;
 wire _1321_;
 wire clknet_5_11__leaf_clk;
 wire _1323_;
 wire _1324_;
 wire clknet_5_6__leaf_clk;
 wire _1326_;
 wire _1327_;
 wire clknet_5_2__leaf_clk;
 wire _1329_;
 wire _1330_;
 wire clknet_5_10__leaf_clk;
 wire clknet_5_8__leaf_clk;
 wire _1333_;
 wire net747;
 wire _1335_;
 wire net744;
 wire net746;
 wire _1338_;
 wire _1339_;
 wire clknet_5_9__leaf_clk;
 wire net745;
 wire _1342_;
 wire _1343_;
 wire _1346_;
 wire _1347_;
 wire clknet_5_27__leaf_clk;
 wire _1350_;
 wire _1351_;
 wire clknet_5_31__leaf_clk;
 wire clknet_5_30__leaf_clk;
 wire _1355_;
 wire clknet_5_29__leaf_clk;
 wire clknet_5_28__leaf_clk;
 wire _1358_;
 wire net731;
 wire net711;
 wire _1361_;
 wire _1362_;
 wire net735;
 wire net678;
 wire _1365_;
 wire _1366_;
 wire net677;
 wire _1368_;
 wire _1369_;
 wire net675;
 wire net674;
 wire _1372_;
 wire _1373_;
 wire net673;
 wire net730;
 wire _1376_;
 wire _1377_;
 wire net729;
 wire net672;
 wire _1380_;
 wire _1381_;
 wire _1384_;
 wire _1385_;
 wire _1388_;
 wire _1389_;
 wire net727;
 wire _1391_;
 wire net719;
 wire _1393_;
 wire net676;
 wire net671;
 wire _1397_;
 wire net737;
 wire net726;
 wire net720;
 wire net725;
 wire _1402_;
 wire net724;
 wire _1404_;
 wire _1405_;
 wire _1406_;
 wire _1407_;
 wire net723;
 wire _1409_;
 wire net721;
 wire _1411_;
 wire _1412_;
 wire _1413_;
 wire _1414_;
 wire _1415_;
 wire _1416_;
 wire _1417_;
 wire _1418_;
 wire _1419_;
 wire _1420_;
 wire net697;
 wire _1422_;
 wire net736;
 wire _1424_;
 wire net734;
 wire _1426_;
 wire _1427_;
 wire _1428_;
 wire _1429_;
 wire _1430_;
 wire net728;
 wire _1432_;
 wire net722;
 wire _1434_;
 wire net733;
 wire _1436_;
 wire _1437_;
 wire net732;
 wire _1439_;
 wire _1441_;
 wire _1442_;
 wire _1443_;
 wire _1444_;
 wire _1445_;
 wire _1446_;
 wire _1448_;
 wire _1449_;
 wire _1452_;
 wire _1453_;
 wire _1454_;
 wire _1455_;
 wire _1456_;
 wire _1458_;
 wire _1459_;
 wire _1460_;
 wire _1461_;
 wire _1464_;
 wire _1465_;
 wire _1466_;
 wire _1467_;
 wire _1468_;
 wire _1469_;
 wire _1470_;
 wire _1471_;
 wire _1472_;
 wire _1473_;
 wire _1474_;
 wire _1475_;
 wire _1476_;
 wire _1477_;
 wire net669;
 wire _1479_;
 wire _1480_;
 wire _1481_;
 wire _1482_;
 wire _1483_;
 wire _1484_;
 wire net681;
 wire _1486_;
 wire _1487_;
 wire _1488_;
 wire _1489_;
 wire _1490_;
 wire _1491_;
 wire _1492_;
 wire _1493_;
 wire _1494_;
 wire net645;
 wire _1496_;
 wire net680;
 wire _1498_;
 wire _1499_;
 wire _1500_;
 wire _1501_;
 wire _1502_;
 wire _1503_;
 wire _1504_;
 wire net679;
 wire _1506_;
 wire net670;
 wire _1508_;
 wire _1509_;
 wire _1510_;
 wire _1511_;
 wire _1512_;
 wire _1513_;
 wire net644;
 wire _1515_;
 wire _1516_;
 wire _1517_;
 wire _1518_;
 wire _1519_;
 wire _1520_;
 wire _1521_;
 wire _1522_;
 wire _1523_;
 wire _1524_;
 wire _1525_;
 wire clknet_5_13__leaf_clk;
 wire _1527_;
 wire _1528_;
 wire _1529_;
 wire _1530_;
 wire _1531_;
 wire _1532_;
 wire _1533_;
 wire _1534_;
 wire _1535_;
 wire _1536_;
 wire _1537_;
 wire _1538_;
 wire _1539_;
 wire _1540_;
 wire _1541_;
 wire _1542_;
 wire _1543_;
 wire _1544_;
 wire _1545_;
 wire _1546_;
 wire net647;
 wire _1548_;
 wire _1549_;
 wire _1550_;
 wire net646;
 wire _1552_;
 wire _1553_;
 wire _1554_;
 wire net643;
 wire _1556_;
 wire _1557_;
 wire _1558_;
 wire _1559_;
 wire _1560_;
 wire _1561_;
 wire _1562_;
 wire _1563_;
 wire _1564_;
 wire _1565_;
 wire _1566_;
 wire _1567_;
 wire _1568_;
 wire _1569_;
 wire _1570_;
 wire _1571_;
 wire net641;
 wire _1573_;
 wire _1574_;
 wire _1575_;
 wire _1576_;
 wire _1577_;
 wire _1578_;
 wire _1579_;
 wire _1580_;
 wire _1581_;
 wire _1582_;
 wire _1583_;
 wire _1584_;
 wire net688;
 wire _1586_;
 wire _1587_;
 wire _1588_;
 wire _1589_;
 wire _1590_;
 wire net636;
 wire _1592_;
 wire net687;
 wire _1594_;
 wire _1595_;
 wire _1596_;
 wire _1597_;
 wire _1598_;
 wire _1599_;
 wire _1600_;
 wire _1601_;
 wire _1602_;
 wire net682;
 wire _1604_;
 wire _1605_;
 wire _1606_;
 wire _1607_;
 wire _1608_;
 wire _1609_;
 wire _1610_;
 wire _1611_;
 wire _1612_;
 wire _1613_;
 wire _1614_;
 wire _1615_;
 wire _1616_;
 wire _1617_;
 wire _1618_;
 wire _1619_;
 wire _1620_;
 wire _1621_;
 wire _1622_;
 wire _1623_;
 wire _1624_;
 wire _1625_;
 wire _1626_;
 wire _1627_;
 wire _1628_;
 wire _1629_;
 wire _1630_;
 wire _1631_;
 wire _1632_;
 wire _1633_;
 wire _1634_;
 wire _1635_;
 wire _1636_;
 wire _1637_;
 wire _1638_;
 wire _1639_;
 wire _1640_;
 wire _1641_;
 wire _1642_;
 wire _1643_;
 wire _1644_;
 wire _1645_;
 wire _1646_;
 wire _1647_;
 wire _1648_;
 wire _1649_;
 wire _1650_;
 wire _1651_;
 wire _1652_;
 wire _1653_;
 wire net642;
 wire _1655_;
 wire _1656_;
 wire net640;
 wire net637;
 wire _1659_;
 wire net648;
 wire net639;
 wire _1662_;
 wire _1663_;
 wire _1664_;
 wire net635;
 wire net632;
 wire _1667_;
 wire net631;
 wire _1669_;
 wire net638;
 wire net630;
 wire _1672_;
 wire _1673_;
 wire net628;
 wire _1676_;
 wire _1677_;
 wire _1678_;
 wire _1679_;
 wire _1680_;
 wire _1681_;
 wire _1682_;
 wire _1683_;
 wire _1684_;
 wire _1685_;
 wire _1687_;
 wire _1690_;
 wire _1691_;
 wire _1692_;
 wire _1693_;
 wire _1694_;
 wire _1695_;
 wire _1696_;
 wire _1697_;
 wire _1699_;
 wire _1700_;
 wire _1701_;
 wire _1702_;
 wire _1703_;
 wire _1704_;
 wire _1705_;
 wire _1706_;
 wire _1707_;
 wire _1708_;
 wire _1709_;
 wire _1711_;
 wire _1713_;
 wire _1714_;
 wire _1715_;
 wire _1716_;
 wire _1717_;
 wire net197;
 wire net198;
 wire net199;
 wire net200;
 wire net201;
 wire net202;
 wire net203;
 wire net204;
 wire net205;
 wire net206;
 wire net207;
 wire net208;
 wire net209;
 wire net210;
 wire net211;
 wire net212;
 wire \amount_q[0] ;
 wire \amount_q[10] ;
 wire \amount_q[11] ;
 wire \amount_q[12] ;
 wire \amount_q[13] ;
 wire \amount_q[14] ;
 wire \amount_q[15] ;
 wire \amount_q[1] ;
 wire \amount_q[2] ;
 wire \amount_q[3] ;
 wire \amount_q[4] ;
 wire \amount_q[5] ;
 wire \amount_q[6] ;
 wire \amount_q[7] ;
 wire \amount_q[8] ;
 wire \amount_q[9] ;
 wire net213;
 wire net214;
 wire net215;
 wire net216;
 wire net217;
 wire net218;
 wire net219;
 wire net220;
 wire net221;
 wire net222;
 wire net223;
 wire net224;
 wire net225;
 wire net226;
 wire net227;
 wire net228;
 wire \cat_q[0] ;
 wire \cat_q[1] ;
 wire \cat_q[2] ;
 wire \cat_q[3] ;
 wire \cat_q[4] ;
 wire \cat_q[5] ;
 wire \cat_q[6] ;
 wire \cat_q[7] ;
 wire net229;
 wire net230;
 wire net231;
 wire net232;
 wire net233;
 wire net234;
 wire net235;
 wire net236;
 wire net237;
 wire net238;
 wire net239;
 wire net240;
 wire net241;
 wire net242;
 wire net243;
 wire net244;
 wire net295;
 wire net296;
 wire \dt_q[0] ;
 wire \dt_q[10] ;
 wire \dt_q[11] ;
 wire \dt_q[1] ;
 wire \dt_q[2] ;
 wire \dt_q[3] ;
 wire \dt_q[4] ;
 wire \dt_q[5] ;
 wire \dt_q[6] ;
 wire \dt_q[7] ;
 wire \dt_q[8] ;
 wire \dt_q[9] ;
 wire net297;
 wire net298;
 wire net299;
 wire net300;
 wire net301;
 wire net302;
 wire net303;
 wire net304;
 wire net245;
 wire net246;
 wire net247;
 wire net248;
 wire net249;
 wire net250;
 wire net251;
 wire net252;
 wire net253;
 wire net254;
 wire net255;
 wire net256;
 wire net257;
 wire net258;
 wire net259;
 wire net260;
 wire net261;
 wire net262;
 wire net263;
 wire net264;
 wire net265;
 wire net266;
 wire net267;
 wire net268;
 wire net269;
 wire net270;
 wire net271;
 wire net272;
 wire net273;
 wire net274;
 wire net275;
 wire net276;
 wire net277;
 wire net278;
 wire net279;
 wire net280;
 wire net281;
 wire \u_cnt.count[0] ;
 wire \u_cnt.count[1] ;
 wire \u_cnt.count[2] ;
 wire \u_cnt.count[3] ;
 wire \u_cnt.count[4] ;
 wire \u_cnt.count[5] ;
 wire \u_cnt.count[6] ;
 wire \u_cnt.count[7] ;
 wire \u_cnt.v ;
 wire \u_rule.a_v ;
 wire \u_rule.f_anom ;
 wire \u_rule.f_over ;
 wire \u_rule.f_rapid ;
 wire \u_rule.f_vel ;
 wire \u_spend.spend[0] ;
 wire \u_spend.spend[10] ;
 wire \u_spend.spend[11] ;
 wire \u_spend.spend[12] ;
 wire \u_spend.spend[13] ;
 wire \u_spend.spend[14] ;
 wire \u_spend.spend[15] ;
 wire \u_spend.spend[16] ;
 wire \u_spend.spend[17] ;
 wire \u_spend.spend[18] ;
 wire \u_spend.spend[19] ;
 wire \u_spend.spend[1] ;
 wire \u_spend.spend[20] ;
 wire \u_spend.spend[21] ;
 wire \u_spend.spend[22] ;
 wire \u_spend.spend[23] ;
 wire \u_spend.spend[2] ;
 wire \u_spend.spend[3] ;
 wire \u_spend.spend[4] ;
 wire \u_spend.spend[5] ;
 wire \u_spend.spend[6] ;
 wire \u_spend.spend[7] ;
 wire \u_spend.spend[8] ;
 wire \u_spend.spend[9] ;
 wire \u_win.elapsed[0] ;
 wire \u_win.elapsed[10] ;
 wire \u_win.elapsed[11] ;
 wire \u_win.elapsed[1] ;
 wire \u_win.elapsed[2] ;
 wire \u_win.elapsed[3] ;
 wire \u_win.elapsed[4] ;
 wire \u_win.elapsed[5] ;
 wire \u_win.elapsed[6] ;
 wire \u_win.elapsed[7] ;
 wire \u_win.elapsed[8] ;
 wire \u_win.elapsed[9] ;
 wire \u_win.h_amt0[0] ;
 wire \u_win.h_amt0[10] ;
 wire \u_win.h_amt0[11] ;
 wire \u_win.h_amt0[12] ;
 wire \u_win.h_amt0[13] ;
 wire \u_win.h_amt0[14] ;
 wire \u_win.h_amt0[15] ;
 wire \u_win.h_amt0[1] ;
 wire \u_win.h_amt0[2] ;
 wire \u_win.h_amt0[3] ;
 wire \u_win.h_amt0[4] ;
 wire \u_win.h_amt0[5] ;
 wire \u_win.h_amt0[6] ;
 wire \u_win.h_amt0[7] ;
 wire \u_win.h_amt0[8] ;
 wire \u_win.h_amt0[9] ;
 wire \u_win.h_amt1[0] ;
 wire \u_win.h_amt1[10] ;
 wire \u_win.h_amt1[11] ;
 wire \u_win.h_amt1[12] ;
 wire \u_win.h_amt1[13] ;
 wire \u_win.h_amt1[14] ;
 wire \u_win.h_amt1[15] ;
 wire \u_win.h_amt1[1] ;
 wire \u_win.h_amt1[2] ;
 wire \u_win.h_amt1[3] ;
 wire \u_win.h_amt1[4] ;
 wire \u_win.h_amt1[5] ;
 wire \u_win.h_amt1[6] ;
 wire \u_win.h_amt1[7] ;
 wire \u_win.h_amt1[8] ;
 wire \u_win.h_amt1[9] ;
 wire \u_win.h_amt2[0] ;
 wire \u_win.h_amt2[10] ;
 wire \u_win.h_amt2[11] ;
 wire \u_win.h_amt2[12] ;
 wire \u_win.h_amt2[13] ;
 wire \u_win.h_amt2[14] ;
 wire \u_win.h_amt2[15] ;
 wire \u_win.h_amt2[1] ;
 wire \u_win.h_amt2[2] ;
 wire \u_win.h_amt2[3] ;
 wire \u_win.h_amt2[4] ;
 wire \u_win.h_amt2[5] ;
 wire \u_win.h_amt2[6] ;
 wire \u_win.h_amt2[7] ;
 wire \u_win.h_amt2[8] ;
 wire \u_win.h_amt2[9] ;
 wire \u_win.h_amt3[0] ;
 wire \u_win.h_amt3[10] ;
 wire \u_win.h_amt3[11] ;
 wire \u_win.h_amt3[12] ;
 wire \u_win.h_amt3[13] ;
 wire \u_win.h_amt3[14] ;
 wire \u_win.h_amt3[15] ;
 wire \u_win.h_amt3[1] ;
 wire \u_win.h_amt3[2] ;
 wire \u_win.h_amt3[3] ;
 wire \u_win.h_amt3[4] ;
 wire \u_win.h_amt3[5] ;
 wire \u_win.h_amt3[6] ;
 wire \u_win.h_amt3[7] ;
 wire \u_win.h_amt3[8] ;
 wire \u_win.h_amt3[9] ;
 wire \u_win.h_cat0[0] ;
 wire \u_win.h_cat0[1] ;
 wire \u_win.h_cat0[2] ;
 wire \u_win.h_cat0[3] ;
 wire \u_win.h_cat0[4] ;
 wire \u_win.h_cat0[5] ;
 wire \u_win.h_cat0[6] ;
 wire \u_win.h_cat0[7] ;
 wire \u_win.h_cat1[0] ;
 wire \u_win.h_cat1[1] ;
 wire \u_win.h_cat1[2] ;
 wire \u_win.h_cat1[3] ;
 wire \u_win.h_cat1[4] ;
 wire \u_win.h_cat1[5] ;
 wire \u_win.h_cat1[6] ;
 wire \u_win.h_cat1[7] ;
 wire \u_win.h_cat2[0] ;
 wire \u_win.h_cat2[1] ;
 wire \u_win.h_cat2[2] ;
 wire \u_win.h_cat2[3] ;
 wire \u_win.h_cat2[4] ;
 wire \u_win.h_cat2[5] ;
 wire \u_win.h_cat2[6] ;
 wire \u_win.h_cat2[7] ;
 wire \u_win.h_cat3[0] ;
 wire \u_win.h_cat3[1] ;
 wire \u_win.h_cat3[2] ;
 wire \u_win.h_cat3[3] ;
 wire \u_win.h_cat3[4] ;
 wire \u_win.h_cat3[5] ;
 wire \u_win.h_cat3[6] ;
 wire \u_win.h_cat3[7] ;
 wire \u_win.h_val[0] ;
 wire \u_win.h_val[1] ;
 wire \u_win.h_val[2] ;
 wire \u_win.h_val[3] ;
 wire net282;
 wire net305;
 wire net283;
 wire net284;
 wire net285;
 wire net286;
 wire net287;
 wire net288;
 wire net289;
 wire net290;
 wire net291;
 wire net292;
 wire net293;
 wire net294;
 wire net;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
 wire net67;
 wire net68;
 wire net69;
 wire net70;
 wire net71;
 wire net72;
 wire net73;
 wire net74;
 wire net75;
 wire net76;
 wire net77;
 wire net78;
 wire net79;
 wire net80;
 wire net81;
 wire net82;
 wire net83;
 wire net84;
 wire net85;
 wire net86;
 wire net87;
 wire net88;
 wire net89;
 wire net90;
 wire net91;
 wire net92;
 wire net93;
 wire net94;
 wire net95;
 wire net96;
 wire net97;
 wire net98;
 wire net99;
 wire net100;
 wire net101;
 wire net102;
 wire net103;
 wire net104;
 wire net105;
 wire net106;
 wire net107;
 wire net108;
 wire net109;
 wire net110;
 wire net111;
 wire net112;
 wire net113;
 wire net114;
 wire net115;
 wire net116;
 wire net117;
 wire net118;
 wire net119;
 wire net120;
 wire net121;
 wire net122;
 wire net123;
 wire net124;
 wire net125;
 wire net126;
 wire net127;
 wire net128;
 wire net129;
 wire net130;
 wire net131;
 wire net132;
 wire net133;
 wire net134;
 wire net135;
 wire net136;
 wire net137;
 wire net138;
 wire net139;
 wire net140;
 wire net141;
 wire net142;
 wire net143;
 wire net144;
 wire net145;
 wire net146;
 wire net147;
 wire net148;
 wire net149;
 wire net150;
 wire net151;
 wire net152;
 wire net153;
 wire net154;
 wire net155;
 wire net156;
 wire net157;
 wire net158;
 wire net159;
 wire net160;
 wire net161;
 wire net162;
 wire net163;
 wire net164;
 wire net165;
 wire net166;
 wire net167;
 wire net168;
 wire net169;
 wire net170;
 wire net171;
 wire net172;
 wire net173;
 wire net174;
 wire net175;
 wire net176;
 wire net177;
 wire net178;
 wire net179;
 wire net180;
 wire net181;
 wire net182;
 wire net183;
 wire net184;
 wire net185;
 wire net186;
 wire net187;
 wire net188;
 wire net189;
 wire net190;
 wire net191;
 wire net192;
 wire net193;
 wire net194;
 wire net195;
 wire net196;
 wire net748;
 wire clknet_4_11_0_clk;
 wire net710;
 wire net713;
 wire net712;
 wire net718;
 wire net714;
 wire clknet_5_0__leaf_clk;
 wire clknet_4_14_0_clk;
 wire net715;
 wire clknet_4_15_0_clk;
 wire net716;
 wire clknet_4_13_0_clk;
 wire clknet_5_3__leaf_clk;
 wire net717;
 wire clknet_5_5__leaf_clk;
 wire clknet_5_4__leaf_clk;
 wire clknet_4_8_0_clk;
 wire clknet_4_6_0_clk;
 wire clknet_5_22__leaf_clk;
 wire clknet_4_4_0_clk;
 wire clknet_4_2_0_clk;
 wire clknet_5_21__leaf_clk;
 wire clknet_4_7_0_clk;
 wire clknet_4_3_0_clk;
 wire clknet_4_5_0_clk;
 wire clknet_4_10_0_clk;
 wire net755;
 wire clknet_4_9_0_clk;
 wire net757;
 wire clknet_4_1_0_clk;
 wire net658;
 wire net666;
 wire net659;
 wire net660;
 wire net665;
 wire net661;
 wire net662;
 wire net663;
 wire net664;
 wire clknet_5_16__leaf_clk;
 wire net667;
 wire net668;
 wire clknet_5_14__leaf_clk;
 wire clknet_5_15__leaf_clk;
 wire clknet_5_20__leaf_clk;
 wire clknet_5_18__leaf_clk;
 wire clknet_5_17__leaf_clk;
 wire clknet_5_19__leaf_clk;
 wire clknet_5_23__leaf_clk;
 wire clknet_4_0_0_clk;
 wire net756;
 wire net656;
 wire net633;
 wire net655;
 wire net650;
 wire net649;
 wire net634;
 wire net654;
 wire net651;
 wire net652;
 wire net653;
 wire net657;
 wire clknet_0_clk;
 wire net625;
 wire net626;
 wire net627;
 wire net629;
 wire net684;
 wire net683;
 wire net685;
 wire net686;
 wire net738;
 wire net696;
 wire net689;
 wire net694;
 wire net690;
 wire net692;
 wire net691;
 wire net693;
 wire net695;
 wire net741;
 wire net739;
 wire net740;
 wire net742;
 wire net743;

 sg13g2_nand2_1 _1721_ (.Y(_1266_),
    .A(net750),
    .B(net271));
 sg13g2_nand2b_1 _1724_ (.Y(_1269_),
    .B(\dt_q[10] ),
    .A_N(net749));
 sg13g2_inv_1 _1726_ (.Y(_1271_),
    .A(net245));
 sg13g2_a21oi_1 _1728_ (.A1(_1266_),
    .A2(_1269_),
    .Y(_0000_),
    .B1(net738));
 sg13g2_nand2_1 _1729_ (.Y(_1273_),
    .A(net750),
    .B(net281));
 sg13g2_nand2b_1 _1731_ (.Y(_1275_),
    .B(\dt_q[9] ),
    .A_N(net749));
 sg13g2_a21oi_1 _1732_ (.A1(_1273_),
    .A2(_1275_),
    .Y(_0001_),
    .B1(net738));
 sg13g2_nand2_1 _1733_ (.Y(_1276_),
    .A(net750),
    .B(net280));
 sg13g2_nand2b_1 _1735_ (.Y(_1278_),
    .B(\dt_q[8] ),
    .A_N(net750));
 sg13g2_a21oi_1 _1736_ (.A1(_1276_),
    .A2(_1278_),
    .Y(_0002_),
    .B1(net738));
 sg13g2_nand2_1 _1737_ (.Y(_1279_),
    .A(net748),
    .B(net279));
 sg13g2_nand2b_1 _1740_ (.Y(_1282_),
    .B(\dt_q[7] ),
    .A_N(net748));
 sg13g2_a21oi_1 _1743_ (.A1(_1279_),
    .A2(_1282_),
    .Y(_0003_),
    .B1(net739));
 sg13g2_nand2_1 _1744_ (.Y(_1285_),
    .A(net748),
    .B(net278));
 sg13g2_nand2b_1 _1746_ (.Y(_1287_),
    .B(\dt_q[6] ),
    .A_N(net748));
 sg13g2_a21oi_1 _1747_ (.A1(_1285_),
    .A2(_1287_),
    .Y(_0004_),
    .B1(net739));
 sg13g2_nand2_1 _1748_ (.Y(_1288_),
    .A(net750),
    .B(net277));
 sg13g2_nand2b_1 _1750_ (.Y(_1290_),
    .B(\dt_q[5] ),
    .A_N(net749));
 sg13g2_a21oi_1 _1751_ (.A1(_1288_),
    .A2(_1290_),
    .Y(_0005_),
    .B1(net738));
 sg13g2_nand2_1 _1752_ (.Y(_1291_),
    .A(net750),
    .B(net276));
 sg13g2_nand2b_1 _1754_ (.Y(_1293_),
    .B(\dt_q[4] ),
    .A_N(net754));
 sg13g2_a21oi_1 _1755_ (.A1(_1291_),
    .A2(_1293_),
    .Y(_0006_),
    .B1(net738));
 sg13g2_nand2_1 _1756_ (.Y(_1294_),
    .A(net282),
    .B(net275));
 sg13g2_nand2b_1 _1758_ (.Y(_1296_),
    .B(\dt_q[3] ),
    .A_N(net754));
 sg13g2_a21oi_1 _1759_ (.A1(_1294_),
    .A2(_1296_),
    .Y(_0007_),
    .B1(net741));
 sg13g2_nand2_1 _1760_ (.Y(_1297_),
    .A(net282),
    .B(net274));
 sg13g2_nand2b_1 _1762_ (.Y(_1299_),
    .B(\dt_q[2] ),
    .A_N(net748));
 sg13g2_a21oi_1 _1763_ (.A1(_1297_),
    .A2(_1299_),
    .Y(_0008_),
    .B1(net741));
 sg13g2_nand2_1 _1765_ (.Y(_1301_),
    .A(net747),
    .B(net273));
 sg13g2_nand2b_1 _1767_ (.Y(_1303_),
    .B(\dt_q[1] ),
    .A_N(net748));
 sg13g2_a21oi_1 _1768_ (.A1(_1301_),
    .A2(_1303_),
    .Y(_0009_),
    .B1(net741));
 sg13g2_nand2_1 _1769_ (.Y(_1304_),
    .A(net747),
    .B(net270));
 sg13g2_nand2b_1 _1771_ (.Y(_1306_),
    .B(\dt_q[0] ),
    .A_N(net748));
 sg13g2_a21oi_1 _1772_ (.A1(_1304_),
    .A2(_1306_),
    .Y(_0010_),
    .B1(net741));
 sg13g2_nand2_1 _1773_ (.Y(_1307_),
    .A(net744),
    .B(net235));
 sg13g2_nand2b_1 _1775_ (.Y(_1309_),
    .B(\cat_q[6] ),
    .A_N(net745));
 sg13g2_a21oi_1 _1776_ (.A1(_1307_),
    .A2(_1309_),
    .Y(_0011_),
    .B1(net740));
 sg13g2_nand2_1 _1777_ (.Y(_1310_),
    .A(net744),
    .B(net234));
 sg13g2_nand2b_1 _1779_ (.Y(_1312_),
    .B(\cat_q[5] ),
    .A_N(net745));
 sg13g2_a21oi_1 _1780_ (.A1(_1310_),
    .A2(_1312_),
    .Y(_0012_),
    .B1(net740));
 sg13g2_nand2_1 _1781_ (.Y(_1313_),
    .A(net744),
    .B(net233));
 sg13g2_nand2b_1 _1784_ (.Y(_1316_),
    .B(\cat_q[4] ),
    .A_N(net745));
 sg13g2_a21oi_1 _1786_ (.A1(_1313_),
    .A2(_1316_),
    .Y(_0013_),
    .B1(net740));
 sg13g2_nand2_1 _1787_ (.Y(_1318_),
    .A(net746),
    .B(net232));
 sg13g2_nand2b_1 _1789_ (.Y(_1320_),
    .B(\cat_q[3] ),
    .A_N(net746));
 sg13g2_a21oi_1 _1790_ (.A1(_1318_),
    .A2(_1320_),
    .Y(_0014_),
    .B1(net740));
 sg13g2_nand2_1 _1791_ (.Y(_1321_),
    .A(net744),
    .B(net231));
 sg13g2_nand2b_1 _1793_ (.Y(_1323_),
    .B(\cat_q[2] ),
    .A_N(net745));
 sg13g2_a21oi_1 _1794_ (.A1(_1321_),
    .A2(_1323_),
    .Y(_0015_),
    .B1(net740));
 sg13g2_nand2_1 _1795_ (.Y(_1324_),
    .A(net744),
    .B(net230));
 sg13g2_nand2b_1 _1797_ (.Y(_1326_),
    .B(\cat_q[1] ),
    .A_N(net745));
 sg13g2_a21oi_1 _1798_ (.A1(_1324_),
    .A2(_1326_),
    .Y(_0016_),
    .B1(net740));
 sg13g2_nand2_1 _1799_ (.Y(_1327_),
    .A(net744),
    .B(net229));
 sg13g2_nand2b_1 _1801_ (.Y(_1329_),
    .B(\cat_q[0] ),
    .A_N(net745));
 sg13g2_a21oi_1 _1802_ (.A1(_1327_),
    .A2(_1329_),
    .Y(_0017_),
    .B1(net740));
 sg13g2_nand2_1 _1803_ (.Y(_1330_),
    .A(net747),
    .B(net202));
 sg13g2_nand2b_1 _1806_ (.Y(_1333_),
    .B(net709),
    .A_N(net754));
 sg13g2_a21oi_1 _1807_ (.A1(_1330_),
    .A2(_1333_),
    .Y(_0018_),
    .B1(net731));
 sg13g2_nand2_1 _1809_ (.Y(_1335_),
    .A(net747),
    .B(net201));
 sg13g2_nand2b_1 _1812_ (.Y(_1338_),
    .B(net710),
    .A_N(net754));
 sg13g2_a21oi_1 _1813_ (.A1(_1335_),
    .A2(_1338_),
    .Y(_0019_),
    .B1(net731));
 sg13g2_nand2_1 _1814_ (.Y(_1339_),
    .A(net746),
    .B(net200));
 sg13g2_nand2b_1 _1817_ (.Y(_1342_),
    .B(\amount_q[12] ),
    .A_N(net746));
 sg13g2_a21oi_1 _1818_ (.A1(_1339_),
    .A2(_1342_),
    .Y(_0020_),
    .B1(net742));
 sg13g2_nand2_1 _1819_ (.Y(_1343_),
    .A(net746),
    .B(net199));
 sg13g2_nand2b_1 _1822_ (.Y(_1346_),
    .B(net714),
    .A_N(net754));
 sg13g2_a21oi_1 _1823_ (.A1(_1343_),
    .A2(_1346_),
    .Y(_0021_),
    .B1(net733));
 sg13g2_nand2_1 _1824_ (.Y(_1347_),
    .A(net745),
    .B(net198));
 sg13g2_nand2b_1 _1827_ (.Y(_1350_),
    .B(\amount_q[10] ),
    .A_N(net754));
 sg13g2_a21oi_1 _1828_ (.A1(_1347_),
    .A2(_1350_),
    .Y(_0022_),
    .B1(net733));
 sg13g2_nand2_1 _1829_ (.Y(_1351_),
    .A(net752),
    .B(net212));
 sg13g2_nand2b_1 _1833_ (.Y(_1355_),
    .B(net699),
    .A_N(net752));
 sg13g2_a21oi_1 _1836_ (.A1(_1351_),
    .A2(_1355_),
    .Y(_0023_),
    .B1(net734));
 sg13g2_nand2_1 _1837_ (.Y(_1358_),
    .A(net752),
    .B(net211));
 sg13g2_nand2b_1 _1840_ (.Y(_1361_),
    .B(net700),
    .A_N(net752));
 sg13g2_a21oi_1 _1841_ (.A1(_1358_),
    .A2(_1361_),
    .Y(_0024_),
    .B1(net734));
 sg13g2_nand2_1 _1842_ (.Y(_1362_),
    .A(net752),
    .B(net210));
 sg13g2_nand2b_1 _1845_ (.Y(_1365_),
    .B(\amount_q[7] ),
    .A_N(net752));
 sg13g2_a21oi_1 _1846_ (.A1(_1362_),
    .A2(_1365_),
    .Y(_0025_),
    .B1(net734));
 sg13g2_nand2_1 _1847_ (.Y(_1366_),
    .A(net752),
    .B(net209));
 sg13g2_nand2b_1 _1849_ (.Y(_1368_),
    .B(\amount_q[6] ),
    .A_N(net753));
 sg13g2_a21oi_1 _1850_ (.A1(_1366_),
    .A2(_1368_),
    .Y(_0026_),
    .B1(net734));
 sg13g2_nand2_1 _1851_ (.Y(_1369_),
    .A(net752),
    .B(net208));
 sg13g2_nand2b_1 _1854_ (.Y(_1372_),
    .B(net703),
    .A_N(net753));
 sg13g2_a21oi_1 _1855_ (.A1(_1369_),
    .A2(_1372_),
    .Y(_0027_),
    .B1(net734));
 sg13g2_nand2_1 _1856_ (.Y(_1373_),
    .A(net751),
    .B(net207));
 sg13g2_nand2b_1 _1859_ (.Y(_1376_),
    .B(net704),
    .A_N(net753));
 sg13g2_a21oi_1 _1860_ (.A1(_1373_),
    .A2(_1376_),
    .Y(_0028_),
    .B1(net718));
 sg13g2_nand2_1 _1861_ (.Y(_1377_),
    .A(net751),
    .B(net206));
 sg13g2_nand2b_1 _1864_ (.Y(_1380_),
    .B(net705),
    .A_N(net753));
 sg13g2_a21oi_1 _1865_ (.A1(_1377_),
    .A2(_1380_),
    .Y(_0029_),
    .B1(net718));
 sg13g2_nand2_1 _1866_ (.Y(_1381_),
    .A(net751),
    .B(net205));
 sg13g2_nand2b_1 _1869_ (.Y(_1384_),
    .B(net706),
    .A_N(net753));
 sg13g2_a21oi_1 _1870_ (.A1(_1381_),
    .A2(_1384_),
    .Y(_0030_),
    .B1(net718));
 sg13g2_nand2_1 _1871_ (.Y(_1385_),
    .A(net751),
    .B(net204));
 sg13g2_nand2b_1 _1874_ (.Y(_1388_),
    .B(net707),
    .A_N(net753));
 sg13g2_a21oi_1 _1875_ (.A1(_1385_),
    .A2(_1388_),
    .Y(_0031_),
    .B1(net718));
 sg13g2_nand2_1 _1876_ (.Y(_1389_),
    .A(net751),
    .B(net197));
 sg13g2_nand2b_1 _1878_ (.Y(_1391_),
    .B(net716),
    .A_N(net751));
 sg13g2_a21oi_1 _1879_ (.A1(_1389_),
    .A2(_1391_),
    .Y(_0032_),
    .B1(net718));
 sg13g2_inv_1 _1881_ (.Y(_1393_),
    .A(\u_cnt.v ));
 sg13g2_nand2_1 _1885_ (.Y(_1397_),
    .A(net652),
    .B(\u_win.h_val[2] ));
 sg13g2_nor2_1 _1890_ (.A(\u_win.elapsed[9] ),
    .B(\dt_q[9] ),
    .Y(_1402_));
 sg13g2_nand2_1 _1892_ (.Y(_1404_),
    .A(\u_win.elapsed[8] ),
    .B(\dt_q[8] ));
 sg13g2_nand2_1 _1893_ (.Y(_1405_),
    .A(\u_win.elapsed[9] ),
    .B(\dt_q[9] ));
 sg13g2_o21ai_1 _1894_ (.B1(_1405_),
    .Y(_1406_),
    .A1(_1402_),
    .A2(_1404_));
 sg13g2_inv_1 _1895_ (.Y(_1407_),
    .A(_1406_));
 sg13g2_nor2_1 _1897_ (.A(\u_win.elapsed[7] ),
    .B(\dt_q[7] ),
    .Y(_1409_));
 sg13g2_nor2_1 _1899_ (.A(\u_win.elapsed[6] ),
    .B(\dt_q[6] ),
    .Y(_1411_));
 sg13g2_nand2_1 _1900_ (.Y(_1412_),
    .A(\u_win.elapsed[7] ),
    .B(\dt_q[7] ));
 sg13g2_o21ai_1 _1901_ (.B1(_1412_),
    .Y(_1413_),
    .A1(_1409_),
    .A2(_1411_));
 sg13g2_nand2b_1 _1902_ (.Y(_1414_),
    .B(\u_win.elapsed[8] ),
    .A_N(\dt_q[8] ));
 sg13g2_nand2b_1 _1903_ (.Y(_1415_),
    .B(\dt_q[8] ),
    .A_N(\u_win.elapsed[8] ));
 sg13g2_nand2_1 _1904_ (.Y(_1416_),
    .A(_1414_),
    .B(_1415_));
 sg13g2_xor2_1 _1905_ (.B(\dt_q[9] ),
    .A(\u_win.elapsed[9] ),
    .X(_1417_));
 sg13g2_nand3_1 _1906_ (.B(_1416_),
    .C(_1417_),
    .A(_1413_),
    .Y(_1418_));
 sg13g2_nand2_1 _1907_ (.Y(_1419_),
    .A(\u_win.elapsed[6] ),
    .B(\dt_q[6] ));
 sg13g2_nor2_1 _1908_ (.A(_1409_),
    .B(_1419_),
    .Y(_1420_));
 sg13g2_nor2_2 _1910_ (.A(\u_win.elapsed[4] ),
    .B(\dt_q[4] ),
    .Y(_1422_));
 sg13g2_a22oi_1 _1912_ (.Y(_1424_),
    .B1(\dt_q[4] ),
    .B2(\u_win.elapsed[4] ),
    .A2(net697),
    .A1(\u_win.elapsed[3] ));
 sg13g2_nor2_2 _1914_ (.A(\u_win.elapsed[5] ),
    .B(\dt_q[5] ),
    .Y(_1426_));
 sg13g2_nor3_1 _1915_ (.A(_1422_),
    .B(_1424_),
    .C(_1426_),
    .Y(_1427_));
 sg13g2_nand2_1 _1916_ (.Y(_1428_),
    .A(\u_win.elapsed[5] ),
    .B(\dt_q[5] ));
 sg13g2_nand2_1 _1917_ (.Y(_1429_),
    .A(_1412_),
    .B(_1428_));
 sg13g2_nor4_1 _1918_ (.A(_1406_),
    .B(_1420_),
    .C(_1427_),
    .D(_1429_),
    .Y(_1430_));
 sg13g2_nor2_2 _1920_ (.A(\u_win.elapsed[1] ),
    .B(\dt_q[1] ),
    .Y(_1432_));
 sg13g2_a22oi_1 _1922_ (.Y(_1434_),
    .B1(\dt_q[1] ),
    .B2(\u_win.elapsed[1] ),
    .A2(\dt_q[0] ),
    .A1(\u_win.elapsed[0] ));
 sg13g2_nand2_1 _1924_ (.Y(_1436_),
    .A(\u_win.elapsed[2] ),
    .B(\dt_q[2] ));
 sg13g2_o21ai_1 _1925_ (.B1(_1436_),
    .Y(_1437_),
    .A1(_1432_),
    .A2(_1434_));
 sg13g2_or2_1 _1927_ (.X(_1439_),
    .B(\dt_q[2] ),
    .A(\u_win.elapsed[2] ));
 sg13g2_xnor2_1 _1929_ (.Y(_1441_),
    .A(\u_win.elapsed[5] ),
    .B(\dt_q[5] ));
 sg13g2_xnor2_1 _1930_ (.Y(_1442_),
    .A(\u_win.elapsed[4] ),
    .B(\dt_q[4] ));
 sg13g2_nor2_1 _1931_ (.A(net669),
    .B(net697),
    .Y(_1443_));
 sg13g2_nor3_1 _1932_ (.A(_1441_),
    .B(_1442_),
    .C(_1443_),
    .Y(_1444_));
 sg13g2_nand3_1 _1933_ (.B(net644),
    .C(_1444_),
    .A(_1437_),
    .Y(_1445_));
 sg13g2_a22oi_1 _1934_ (.Y(_1446_),
    .B1(_1430_),
    .B2(_1445_),
    .A2(_1418_),
    .A1(_1407_));
 sg13g2_a21o_1 _1936_ (.A2(_1446_),
    .A1(\u_win.elapsed[10] ),
    .B1(\dt_q[10] ),
    .X(_1448_));
 sg13g2_or2_1 _1937_ (.X(_1449_),
    .B(_1446_),
    .A(\u_win.elapsed[10] ));
 sg13g2_nand3b_1 _1940_ (.B(\u_win.h_val[0] ),
    .C(net285),
    .Y(_1452_),
    .A_N(\dt_q[11] ));
 sg13g2_nand3b_1 _1941_ (.B(\u_win.h_val[0] ),
    .C(net285),
    .Y(_1453_),
    .A_N(\u_win.elapsed[11] ));
 sg13g2_a22oi_1 _1942_ (.Y(_1454_),
    .B1(_1452_),
    .B2(_1453_),
    .A2(_1449_),
    .A1(_1448_));
 sg13g2_nand2_1 _1943_ (.Y(_1455_),
    .A(\dt_q[10] ),
    .B(_1446_));
 sg13g2_o21ai_1 _1944_ (.B1(\u_win.elapsed[10] ),
    .Y(_1456_),
    .A1(\dt_q[10] ),
    .A2(_1446_));
 sg13g2_nor2_1 _1946_ (.A(\u_win.elapsed[11] ),
    .B(\dt_q[11] ),
    .Y(_1458_));
 sg13g2_and4_1 _1947_ (.A(\u_win.h_val[0] ),
    .B(_1455_),
    .C(_1456_),
    .D(_1458_),
    .X(_1459_));
 sg13g2_and3_1 _1948_ (.X(_1460_),
    .A(\u_win.h_val[0] ),
    .B(net285),
    .C(_1458_));
 sg13g2_or3_1 _1949_ (.A(_1454_),
    .B(_1459_),
    .C(_1460_),
    .X(_1461_));
 sg13g2_nand2b_1 _1952_ (.Y(_1464_),
    .B(net669),
    .A_N(net697));
 sg13g2_nand2b_1 _1953_ (.Y(_1465_),
    .B(net697),
    .A_N(net669));
 sg13g2_a21oi_1 _1954_ (.A1(_1464_),
    .A2(_1465_),
    .Y(_1466_),
    .B1(_1442_));
 sg13g2_xnor2_1 _1955_ (.Y(_1467_),
    .A(\u_win.elapsed[6] ),
    .B(\dt_q[6] ));
 sg13g2_nor2_1 _1956_ (.A(_1441_),
    .B(_1467_),
    .Y(_1468_));
 sg13g2_nand4_1 _1957_ (.B(net644),
    .C(_1466_),
    .A(net643),
    .Y(_1469_),
    .D(_1468_));
 sg13g2_nor2_1 _1958_ (.A(_1422_),
    .B(_1424_),
    .Y(_1470_));
 sg13g2_o21ai_1 _1959_ (.B1(_1419_),
    .Y(_1471_),
    .A1(_1411_),
    .A2(_1428_));
 sg13g2_a21oi_1 _1960_ (.A1(_1470_),
    .A2(_1468_),
    .Y(_1472_),
    .B1(_1471_));
 sg13g2_nand2_1 _1961_ (.Y(_1473_),
    .A(_1469_),
    .B(_1472_));
 sg13g2_xnor2_1 _1962_ (.Y(_1474_),
    .A(\dt_q[7] ),
    .B(_1473_));
 sg13g2_xnor2_1 _1963_ (.Y(_1475_),
    .A(\u_win.elapsed[7] ),
    .B(net292));
 sg13g2_xnor2_1 _1964_ (.Y(_1476_),
    .A(_1474_),
    .B(_1475_));
 sg13g2_and2_1 _1965_ (.A(\dt_q[3] ),
    .B(net644),
    .X(_1477_));
 sg13g2_and2_1 _1967_ (.A(net670),
    .B(net644),
    .X(_1479_));
 sg13g2_nor2_1 _1968_ (.A(_1432_),
    .B(_1434_),
    .Y(_1480_));
 sg13g2_nand2_1 _1969_ (.Y(_1481_),
    .A(net669),
    .B(net697));
 sg13g2_nand3_1 _1970_ (.B(net670),
    .C(\dt_q[2] ),
    .A(\u_win.elapsed[2] ),
    .Y(_1482_));
 sg13g2_nand2_1 _1971_ (.Y(_1483_),
    .A(_1481_),
    .B(_1482_));
 sg13g2_a221oi_1 _1972_ (.B2(_1480_),
    .C1(_1483_),
    .B1(_1479_),
    .A1(_1437_),
    .Y(_1484_),
    .A2(_1477_));
 sg13g2_o21ai_1 _1974_ (.B1(_1412_),
    .Y(_1486_),
    .A1(_1409_),
    .A2(_1419_));
 sg13g2_a22oi_1 _1975_ (.Y(_1487_),
    .B1(\dt_q[5] ),
    .B2(\u_win.elapsed[5] ),
    .A2(\dt_q[4] ),
    .A1(\u_win.elapsed[4] ));
 sg13g2_nor2_1 _1976_ (.A(_1426_),
    .B(_1487_),
    .Y(_1488_));
 sg13g2_nor2_2 _1977_ (.A(_1486_),
    .B(_1488_),
    .Y(_1489_));
 sg13g2_nand2_1 _1978_ (.Y(_1490_),
    .A(_1412_),
    .B(_1419_));
 sg13g2_inv_1 _1979_ (.Y(_1491_),
    .A(\u_win.elapsed[6] ));
 sg13g2_inv_1 _1980_ (.Y(_1492_),
    .A(\dt_q[6] ));
 sg13g2_a221oi_1 _1981_ (.B2(_1428_),
    .C1(_1426_),
    .B1(_1422_),
    .A1(_1491_),
    .Y(_1493_),
    .A2(_1492_));
 sg13g2_or2_1 _1982_ (.X(_1494_),
    .B(\dt_q[7] ),
    .A(\u_win.elapsed[7] ));
 sg13g2_o21ai_1 _1984_ (.B1(_1494_),
    .Y(_1496_),
    .A1(_1490_),
    .A2(_1493_));
 sg13g2_a21oi_2 _1986_ (.B1(_1496_),
    .Y(_1498_),
    .A2(_1489_),
    .A1(_1484_));
 sg13g2_nor2_1 _1987_ (.A(_1490_),
    .B(_1493_),
    .Y(_1499_));
 sg13g2_and2_1 _1988_ (.A(\u_win.elapsed[8] ),
    .B(_1494_),
    .X(_1500_));
 sg13g2_nor2b_1 _1989_ (.A(_1499_),
    .B_N(_1500_),
    .Y(_1501_));
 sg13g2_nand2_1 _1990_ (.Y(_1502_),
    .A(net643),
    .B(_1477_));
 sg13g2_o21ai_1 _1991_ (.B1(net670),
    .Y(_1503_),
    .A1(\u_win.elapsed[2] ),
    .A2(\dt_q[2] ));
 sg13g2_or3_1 _1992_ (.A(_1432_),
    .B(_1434_),
    .C(_1503_),
    .X(_1504_));
 sg13g2_and2_1 _1994_ (.A(_1481_),
    .B(_1482_),
    .X(_1506_));
 sg13g2_nand3_1 _1996_ (.B(_1504_),
    .C(_1506_),
    .A(_1502_),
    .Y(_1508_));
 sg13g2_o21ai_1 _1997_ (.B1(_1500_),
    .Y(_1509_),
    .A1(_1486_),
    .A2(_1488_));
 sg13g2_o21ai_1 _1998_ (.B1(_1404_),
    .Y(_1510_),
    .A1(_1499_),
    .A2(_1509_));
 sg13g2_a221oi_1 _1999_ (.B2(_1508_),
    .C1(_1510_),
    .B1(_1501_),
    .A1(\dt_q[8] ),
    .Y(_1511_),
    .A2(_1498_));
 sg13g2_xnor2_1 _2000_ (.Y(_1512_),
    .A(net294),
    .B(_1417_));
 sg13g2_xnor2_1 _2001_ (.Y(_1513_),
    .A(_1511_),
    .B(_1512_));
 sg13g2_xnor2_1 _2003_ (.Y(_1515_),
    .A(\u_win.elapsed[10] ),
    .B(\dt_q[10] ));
 sg13g2_nor2_1 _2004_ (.A(net284),
    .B(_1515_),
    .Y(_1516_));
 sg13g2_inv_1 _2005_ (.Y(_1517_),
    .A(net284));
 sg13g2_nor2_1 _2006_ (.A(_1517_),
    .B(_1515_),
    .Y(_1518_));
 sg13g2_mux2_1 _2007_ (.A0(_1516_),
    .A1(_1518_),
    .S(_1446_),
    .X(_1519_));
 sg13g2_xor2_1 _2008_ (.B(\dt_q[10] ),
    .A(\u_win.elapsed[10] ),
    .X(_1520_));
 sg13g2_nor2_1 _2009_ (.A(_1517_),
    .B(_1520_),
    .Y(_1521_));
 sg13g2_nor2_1 _2010_ (.A(net284),
    .B(_1520_),
    .Y(_1522_));
 sg13g2_mux2_1 _2011_ (.A0(_1521_),
    .A1(_1522_),
    .S(_1446_),
    .X(_1523_));
 sg13g2_inv_1 _2012_ (.Y(_1524_),
    .A(net293));
 sg13g2_and2_1 _2013_ (.A(_1414_),
    .B(_1415_),
    .X(_1525_));
 sg13g2_xnor2_1 _2015_ (.Y(_1527_),
    .A(_1524_),
    .B(_1525_));
 sg13g2_xnor2_1 _2016_ (.Y(_1528_),
    .A(_1498_),
    .B(_1527_));
 sg13g2_nor3_1 _2017_ (.A(_1519_),
    .B(_1523_),
    .C(_1528_),
    .Y(_1529_));
 sg13g2_o21ai_1 _2018_ (.B1(_1428_),
    .Y(_1530_),
    .A1(_1422_),
    .A2(_1426_));
 sg13g2_nand2b_1 _2019_ (.Y(_1531_),
    .B(_1492_),
    .A_N(_1530_));
 sg13g2_nand2_1 _2020_ (.Y(_1532_),
    .A(\dt_q[6] ),
    .B(_1488_));
 sg13g2_nor3_1 _2021_ (.A(_1492_),
    .B(_1441_),
    .C(_1442_),
    .Y(_1533_));
 sg13g2_nand3_1 _2022_ (.B(_1477_),
    .C(_1533_),
    .A(net643),
    .Y(_1534_));
 sg13g2_nand3_1 _2023_ (.B(_1532_),
    .C(_1534_),
    .A(_1531_),
    .Y(_1535_));
 sg13g2_o21ai_1 _2024_ (.B1(_1492_),
    .Y(_1536_),
    .A1(_1426_),
    .A2(_1487_));
 sg13g2_a21oi_1 _2025_ (.A1(net643),
    .A2(_1477_),
    .Y(_1537_),
    .B1(_1536_));
 sg13g2_nand2_1 _2026_ (.Y(_1538_),
    .A(_1504_),
    .B(_1506_));
 sg13g2_mux2_1 _2027_ (.A0(_1537_),
    .A1(_1533_),
    .S(_1538_),
    .X(_1539_));
 sg13g2_o21ai_1 _2028_ (.B1(\u_win.elapsed[6] ),
    .Y(_1540_),
    .A1(_1535_),
    .A2(_1539_));
 sg13g2_or3_1 _2029_ (.A(\u_win.elapsed[6] ),
    .B(_1535_),
    .C(_1539_),
    .X(_1541_));
 sg13g2_nand3_1 _2030_ (.B(_1540_),
    .C(_1541_),
    .A(net291),
    .Y(_1542_));
 sg13g2_nand4_1 _2031_ (.B(_1513_),
    .C(_1529_),
    .A(_1476_),
    .Y(_1543_),
    .D(_1542_));
 sg13g2_inv_1 _2032_ (.Y(_1544_),
    .A(net290));
 sg13g2_a21oi_1 _2033_ (.A1(_1540_),
    .A2(_1541_),
    .Y(_1545_),
    .B1(net291));
 sg13g2_and2_1 _2034_ (.A(net643),
    .B(net644),
    .X(_1546_));
 sg13g2_a21o_1 _2036_ (.A2(_1466_),
    .A1(_1546_),
    .B1(_1470_),
    .X(_1548_));
 sg13g2_xnor2_1 _2037_ (.Y(_1549_),
    .A(_1441_),
    .B(_1548_));
 sg13g2_nor3_1 _2038_ (.A(_1544_),
    .B(_1545_),
    .C(_1549_),
    .Y(_1550_));
 sg13g2_xor2_1 _2040_ (.B(\dt_q[2] ),
    .A(\u_win.elapsed[2] ),
    .X(_1552_));
 sg13g2_xor2_1 _2041_ (.B(_1552_),
    .A(net287),
    .X(_1553_));
 sg13g2_xnor2_1 _2042_ (.Y(_1554_),
    .A(_1480_),
    .B(_1553_));
 sg13g2_nand2b_1 _2044_ (.Y(_1556_),
    .B(net698),
    .A_N(net283));
 sg13g2_nor2b_1 _2045_ (.A(net286),
    .B_N(_1556_),
    .Y(_1557_));
 sg13g2_nor2_1 _2046_ (.A(\u_win.elapsed[0] ),
    .B(net286),
    .Y(_1558_));
 sg13g2_xor2_1 _2047_ (.B(\dt_q[1] ),
    .A(\u_win.elapsed[1] ),
    .X(_1559_));
 sg13g2_o21ai_1 _2048_ (.B1(_1559_),
    .Y(_1560_),
    .A1(_1557_),
    .A2(_1558_));
 sg13g2_nand4_1 _2049_ (.B(net698),
    .C(net286),
    .A(\u_win.elapsed[0] ),
    .Y(_1561_),
    .D(_1559_));
 sg13g2_xnor2_1 _2050_ (.Y(_1562_),
    .A(\u_win.elapsed[1] ),
    .B(\dt_q[1] ));
 sg13g2_nand3_1 _2051_ (.B(_1556_),
    .C(_1562_),
    .A(net286),
    .Y(_1563_));
 sg13g2_and2_1 _2052_ (.A(_1561_),
    .B(_1563_),
    .X(_1564_));
 sg13g2_nand3b_1 _2053_ (.B(net698),
    .C(\u_win.elapsed[0] ),
    .Y(_1565_),
    .A_N(net286));
 sg13g2_nand2b_1 _2054_ (.Y(_1566_),
    .B(net286),
    .A_N(\u_win.elapsed[0] ));
 sg13g2_a21oi_1 _2055_ (.A1(_1565_),
    .A2(_1566_),
    .Y(_1567_),
    .B1(_1559_));
 sg13g2_inv_1 _2056_ (.Y(_1568_),
    .A(net283));
 sg13g2_nor3_1 _2057_ (.A(net671),
    .B(net698),
    .C(_1568_),
    .Y(_1569_));
 sg13g2_nor2_1 _2058_ (.A(_1567_),
    .B(_1569_),
    .Y(_1570_));
 sg13g2_nand4_1 _2059_ (.B(_1560_),
    .C(_1564_),
    .A(_1554_),
    .Y(_1571_),
    .D(_1570_));
 sg13g2_xnor2_1 _2061_ (.Y(_1573_),
    .A(_1442_),
    .B(_1484_));
 sg13g2_nand2_1 _2062_ (.Y(_1574_),
    .A(\u_win.elapsed[0] ),
    .B(net698));
 sg13g2_a21o_1 _2063_ (.A2(_1574_),
    .A1(net286),
    .B1(net287),
    .X(_1575_));
 sg13g2_nand2_1 _2064_ (.Y(_1576_),
    .A(\u_win.elapsed[1] ),
    .B(\dt_q[1] ));
 sg13g2_a221oi_1 _2065_ (.B2(_1576_),
    .C1(_1552_),
    .B1(_1575_),
    .A1(_1432_),
    .Y(_1577_),
    .A2(_1565_));
 sg13g2_nand2b_1 _2066_ (.Y(_1578_),
    .B(_1559_),
    .A_N(_1574_));
 sg13g2_and2_1 _2067_ (.A(\u_win.elapsed[1] ),
    .B(\dt_q[1] ),
    .X(_1579_));
 sg13g2_o21ai_1 _2068_ (.B1(_1579_),
    .Y(_1580_),
    .A1(net287),
    .A2(_1565_));
 sg13g2_and3_1 _2069_ (.X(_1581_),
    .A(_1552_),
    .B(_1578_),
    .C(_1580_));
 sg13g2_a21oi_1 _2070_ (.A1(_1574_),
    .A2(_1562_),
    .Y(_1582_),
    .B1(net286));
 sg13g2_nand2b_1 _2071_ (.Y(_1583_),
    .B(net287),
    .A_N(_1582_));
 sg13g2_o21ai_1 _2072_ (.B1(_1583_),
    .Y(_1584_),
    .A1(_1577_),
    .A2(_1581_));
 sg13g2_inv_1 _2074_ (.Y(_1586_),
    .A(_1481_));
 sg13g2_a21o_1 _2075_ (.A2(net644),
    .A1(net643),
    .B1(net697),
    .X(_1587_));
 sg13g2_a21oi_1 _2076_ (.A1(net643),
    .A2(_1477_),
    .Y(_1588_),
    .B1(net669));
 sg13g2_a21oi_1 _2077_ (.A1(net643),
    .A2(net644),
    .Y(_1589_),
    .B1(_1464_));
 sg13g2_a221oi_1 _2078_ (.B2(_1588_),
    .C1(_1589_),
    .B1(_1587_),
    .A1(_1586_),
    .Y(_1590_),
    .A2(_1546_));
 sg13g2_nand4_1 _2080_ (.B(_1573_),
    .C(_1584_),
    .A(_1571_),
    .Y(_1592_),
    .D(_1590_));
 sg13g2_nand4_1 _2082_ (.B(_1571_),
    .C(_1573_),
    .A(net288),
    .Y(_1594_),
    .D(_1584_));
 sg13g2_nand3_1 _2083_ (.B(_1573_),
    .C(_1590_),
    .A(net288),
    .Y(_1595_));
 sg13g2_nand4_1 _2084_ (.B(_1571_),
    .C(_1584_),
    .A(net289),
    .Y(_1596_),
    .D(_1590_));
 sg13g2_and4_1 _2085_ (.A(_1592_),
    .B(_1594_),
    .C(_1595_),
    .D(_1596_),
    .X(_1597_));
 sg13g2_and2_1 _2086_ (.A(net289),
    .B(net288),
    .X(_1598_));
 sg13g2_and3_1 _2087_ (.X(_1599_),
    .A(_1571_),
    .B(_1584_),
    .C(_1598_));
 sg13g2_a221oi_1 _2088_ (.B2(_1598_),
    .C1(_1599_),
    .B1(_1590_),
    .A1(net289),
    .Y(_1600_),
    .A2(_1573_));
 sg13g2_a221oi_1 _2089_ (.B2(_1600_),
    .C1(_1545_),
    .B1(_1597_),
    .A1(_1544_),
    .Y(_1601_),
    .A2(_1549_));
 sg13g2_or3_1 _2090_ (.A(_1543_),
    .B(_1550_),
    .C(_1601_),
    .X(_1602_));
 sg13g2_xnor2_1 _2092_ (.Y(_1604_),
    .A(_1446_),
    .B(_1515_));
 sg13g2_nand2b_1 _2093_ (.Y(_1605_),
    .B(_1604_),
    .A_N(net294));
 sg13g2_or2_1 _2094_ (.X(_1606_),
    .B(net294),
    .A(net284));
 sg13g2_xor2_1 _2095_ (.B(_1511_),
    .A(_1417_),
    .X(_1607_));
 sg13g2_a21oi_1 _2096_ (.A1(_1605_),
    .A2(_1606_),
    .Y(_1608_),
    .B1(_1607_));
 sg13g2_and2_1 _2097_ (.A(_1525_),
    .B(_1496_),
    .X(_1609_));
 sg13g2_and3_1 _2098_ (.X(_1610_),
    .A(_1525_),
    .B(_1484_),
    .C(_1489_));
 sg13g2_a221oi_1 _2099_ (.B2(_1489_),
    .C1(_1496_),
    .B1(_1484_),
    .A1(_1414_),
    .Y(_1611_),
    .A2(_1415_));
 sg13g2_nor4_1 _2100_ (.A(net293),
    .B(_1609_),
    .C(_1610_),
    .D(_1611_),
    .Y(_1612_));
 sg13g2_and2_1 _2101_ (.A(_1412_),
    .B(_1494_),
    .X(_1613_));
 sg13g2_a21o_1 _2102_ (.A2(_1472_),
    .A1(_1469_),
    .B1(_1613_),
    .X(_1614_));
 sg13g2_nand3_1 _2103_ (.B(_1472_),
    .C(_1613_),
    .A(_1469_),
    .Y(_1615_));
 sg13g2_a21oi_1 _2104_ (.A1(_1614_),
    .A2(_1615_),
    .Y(_1616_),
    .B1(net292));
 sg13g2_nor2_1 _2105_ (.A(_1524_),
    .B(_1525_),
    .Y(_1617_));
 sg13g2_nor2_1 _2106_ (.A(_1524_),
    .B(_1416_),
    .Y(_1618_));
 sg13g2_and3_1 _2107_ (.X(_1619_),
    .A(_1484_),
    .B(_1489_),
    .C(_1618_));
 sg13g2_a221oi_1 _2108_ (.B2(_1496_),
    .C1(_1619_),
    .B1(_1618_),
    .A1(_1498_),
    .Y(_1620_),
    .A2(_1617_));
 sg13g2_o21ai_1 _2109_ (.B1(_1620_),
    .Y(_1621_),
    .A1(_1612_),
    .A2(_1616_));
 sg13g2_nand2_1 _2110_ (.Y(_1622_),
    .A(_1517_),
    .B(_1604_));
 sg13g2_o21ai_1 _2111_ (.B1(_1622_),
    .Y(_1623_),
    .A1(_1621_),
    .A2(_1605_));
 sg13g2_xnor2_1 _2112_ (.Y(_1624_),
    .A(_1446_),
    .B(_1520_));
 sg13g2_a221oi_1 _2113_ (.B2(_1606_),
    .C1(_1621_),
    .B1(_1607_),
    .A1(net284),
    .Y(_1625_),
    .A2(_1624_));
 sg13g2_nor3_1 _2114_ (.A(_1608_),
    .B(_1623_),
    .C(_1625_),
    .Y(_1626_));
 sg13g2_xnor2_1 _2115_ (.Y(_1627_),
    .A(net290),
    .B(_1441_));
 sg13g2_xnor2_1 _2116_ (.Y(_1628_),
    .A(_1548_),
    .B(_1627_));
 sg13g2_xnor2_1 _2117_ (.Y(_1629_),
    .A(net289),
    .B(_1442_));
 sg13g2_nand4_1 _2118_ (.B(_1504_),
    .C(_1506_),
    .A(_1502_),
    .Y(_1630_),
    .D(_1629_));
 sg13g2_nor2b_1 _2119_ (.A(_1443_),
    .B_N(_1546_),
    .Y(_1631_));
 sg13g2_nor2b_1 _2120_ (.A(net670),
    .B_N(net288),
    .Y(_1632_));
 sg13g2_nand2b_1 _2121_ (.Y(_1633_),
    .B(_1629_),
    .A_N(_1632_));
 sg13g2_xor2_1 _2122_ (.B(net698),
    .A(net671),
    .X(_1634_));
 sg13g2_a221oi_1 _2123_ (.B2(_1568_),
    .C1(_1571_),
    .B1(_1634_),
    .A1(_1631_),
    .Y(_1635_),
    .A2(_1633_));
 sg13g2_nand3_1 _2124_ (.B(_1630_),
    .C(_1635_),
    .A(_1628_),
    .Y(_1636_));
 sg13g2_inv_1 _2125_ (.Y(_1637_),
    .A(_1629_));
 sg13g2_a21oi_1 _2126_ (.A1(_1437_),
    .A2(_1439_),
    .Y(_1638_),
    .B1(net288));
 sg13g2_and3_1 _2127_ (.X(_1639_),
    .A(net288),
    .B(_1437_),
    .C(_1439_));
 sg13g2_a21oi_1 _2128_ (.A1(net670),
    .A2(_1638_),
    .Y(_1640_),
    .B1(_1639_));
 sg13g2_or2_1 _2129_ (.X(_1641_),
    .B(_1638_),
    .A(net670));
 sg13g2_o21ai_1 _2130_ (.B1(_1641_),
    .Y(_1642_),
    .A1(_1637_),
    .A2(_1640_));
 sg13g2_inv_1 _2131_ (.Y(_1643_),
    .A(\dt_q[3] ));
 sg13g2_o21ai_1 _2132_ (.B1(net670),
    .Y(_1644_),
    .A1(_1638_),
    .A2(_1639_));
 sg13g2_and3_1 _2133_ (.X(_1645_),
    .A(_1643_),
    .B(_1641_),
    .C(_1644_));
 sg13g2_a221oi_1 _2134_ (.B2(net697),
    .C1(_1645_),
    .B1(_1642_),
    .A1(_1546_),
    .Y(_1646_),
    .A2(_1632_));
 sg13g2_or3_1 _2135_ (.A(_1545_),
    .B(_1636_),
    .C(_1646_),
    .X(_1647_));
 sg13g2_xor2_1 _2136_ (.B(\dt_q[11] ),
    .A(\u_win.elapsed[11] ),
    .X(_1648_));
 sg13g2_inv_1 _2137_ (.Y(_1649_),
    .A(_1648_));
 sg13g2_and3_1 _2138_ (.X(_1650_),
    .A(_1455_),
    .B(_1456_),
    .C(_1649_));
 sg13g2_a21oi_1 _2139_ (.A1(_1455_),
    .A2(_1456_),
    .Y(_1651_),
    .B1(_1649_));
 sg13g2_o21ai_1 _2140_ (.B1(net285),
    .Y(_1652_),
    .A1(_1650_),
    .A2(_1651_));
 sg13g2_o21ai_1 _2141_ (.B1(_1652_),
    .Y(_1653_),
    .A1(_1543_),
    .A2(_1647_));
 sg13g2_a21o_1 _2143_ (.A2(_1626_),
    .A1(_1602_),
    .B1(_1653_),
    .X(_1655_));
 sg13g2_and2_1 _2144_ (.A(_1461_),
    .B(_1655_),
    .X(_1656_));
 sg13g2_nand3_1 _2147_ (.B(\u_win.h_val[1] ),
    .C(_1656_),
    .A(net679),
    .Y(_1659_));
 sg13g2_a21oi_1 _2149_ (.A1(_1397_),
    .A2(_1659_),
    .Y(_0033_),
    .B1(net728));
 sg13g2_nor3_2 _2151_ (.A(_1454_),
    .B(_1459_),
    .C(_1460_),
    .Y(_1662_));
 sg13g2_nor4_2 _2152_ (.A(_1662_),
    .B(_1608_),
    .C(_1623_),
    .Y(_1663_),
    .D(_1625_));
 sg13g2_a22oi_1 _2153_ (.Y(_1664_),
    .B1(_1602_),
    .B2(_1663_),
    .A2(_1653_),
    .A1(_1461_));
 sg13g2_nor2_1 _2156_ (.A(_1393_),
    .B(net635),
    .Y(_1667_));
 sg13g2_a21oi_1 _2158_ (.A1(net652),
    .A2(\u_win.h_val[1] ),
    .Y(_1669_),
    .B1(net627));
 sg13g2_nor2_1 _2159_ (.A(net728),
    .B(_1669_),
    .Y(_0034_));
 sg13g2_o21ai_1 _2162_ (.B1(net756),
    .Y(_1672_),
    .A1(net695),
    .A2(\u_win.h_val[0] ));
 sg13g2_inv_1 _2163_ (.Y(_0035_),
    .A(_1672_));
 sg13g2_nand2_1 _2164_ (.Y(_1673_),
    .A(net684),
    .B(\u_win.h_cat2[6] ));
 sg13g2_nand2_1 _2167_ (.Y(_1676_),
    .A(net657),
    .B(\u_win.h_cat3[6] ));
 sg13g2_a21oi_1 _2168_ (.A1(_1673_),
    .A2(_1676_),
    .Y(_0036_),
    .B1(net732));
 sg13g2_nand2_1 _2169_ (.Y(_1677_),
    .A(net684),
    .B(\u_win.h_cat2[5] ));
 sg13g2_nand2_1 _2170_ (.Y(_1678_),
    .A(net657),
    .B(\u_win.h_cat3[5] ));
 sg13g2_a21oi_1 _2171_ (.A1(_1677_),
    .A2(_1678_),
    .Y(_0037_),
    .B1(net732));
 sg13g2_nand2_1 _2172_ (.Y(_1679_),
    .A(net683),
    .B(\u_win.h_cat2[4] ));
 sg13g2_nand2_1 _2173_ (.Y(_1680_),
    .A(net654),
    .B(\u_win.h_cat3[4] ));
 sg13g2_a21oi_1 _2174_ (.A1(_1679_),
    .A2(_1680_),
    .Y(_0038_),
    .B1(net733));
 sg13g2_nand2_1 _2175_ (.Y(_1681_),
    .A(net683),
    .B(\u_win.h_cat2[3] ));
 sg13g2_nand2_1 _2176_ (.Y(_1682_),
    .A(net658),
    .B(\u_win.h_cat3[3] ));
 sg13g2_a21oi_1 _2177_ (.A1(_1681_),
    .A2(_1682_),
    .Y(_0039_),
    .B1(net730));
 sg13g2_nand2_1 _2178_ (.Y(_1683_),
    .A(net684),
    .B(\u_win.h_cat2[2] ));
 sg13g2_nand2_1 _2179_ (.Y(_1684_),
    .A(net657),
    .B(\u_win.h_cat3[2] ));
 sg13g2_a21oi_1 _2180_ (.A1(_1683_),
    .A2(_1684_),
    .Y(_0040_),
    .B1(net732));
 sg13g2_nand2_1 _2181_ (.Y(_1685_),
    .A(net683),
    .B(\u_win.h_cat2[1] ));
 sg13g2_nand2_1 _2183_ (.Y(_1687_),
    .A(net654),
    .B(\u_win.h_cat3[1] ));
 sg13g2_a21oi_1 _2184_ (.A1(_1685_),
    .A2(_1687_),
    .Y(_0041_),
    .B1(net725));
 sg13g2_nand2_1 _2187_ (.Y(_1690_),
    .A(net683),
    .B(\u_win.h_cat2[0] ));
 sg13g2_nand2_1 _2188_ (.Y(_1691_),
    .A(net654),
    .B(\u_win.h_cat3[0] ));
 sg13g2_a21oi_1 _2189_ (.A1(_1690_),
    .A2(_1691_),
    .Y(_0042_),
    .B1(net730));
 sg13g2_nand2_1 _2190_ (.Y(_1692_),
    .A(net684),
    .B(\u_win.h_cat1[6] ));
 sg13g2_nand2_1 _2191_ (.Y(_1693_),
    .A(net657),
    .B(\u_win.h_cat2[6] ));
 sg13g2_a21oi_1 _2192_ (.A1(_1692_),
    .A2(_1693_),
    .Y(_0043_),
    .B1(net732));
 sg13g2_nand2_1 _2193_ (.Y(_1694_),
    .A(net684),
    .B(\u_win.h_cat1[5] ));
 sg13g2_nand2_1 _2194_ (.Y(_1695_),
    .A(net657),
    .B(\u_win.h_cat2[5] ));
 sg13g2_a21oi_1 _2195_ (.A1(_1694_),
    .A2(_1695_),
    .Y(_0044_),
    .B1(net732));
 sg13g2_nand2_1 _2196_ (.Y(_1696_),
    .A(net682),
    .B(\u_win.h_cat1[4] ));
 sg13g2_nand2_1 _2197_ (.Y(_1697_),
    .A(net654),
    .B(\u_win.h_cat2[4] ));
 sg13g2_a21oi_1 _2199_ (.A1(_1696_),
    .A2(_1697_),
    .Y(_0045_),
    .B1(net724));
 sg13g2_nand2_1 _2200_ (.Y(_1699_),
    .A(net681),
    .B(\u_win.h_cat1[3] ));
 sg13g2_nand2_1 _2201_ (.Y(_1700_),
    .A(net655),
    .B(\u_win.h_cat2[3] ));
 sg13g2_a21oi_1 _2202_ (.A1(_1699_),
    .A2(_1700_),
    .Y(_0046_),
    .B1(net725));
 sg13g2_nand2_1 _2203_ (.Y(_1701_),
    .A(net684),
    .B(\u_win.h_cat1[2] ));
 sg13g2_nand2_1 _2204_ (.Y(_1702_),
    .A(net657),
    .B(\u_win.h_cat2[2] ));
 sg13g2_a21oi_1 _2205_ (.A1(_1701_),
    .A2(_1702_),
    .Y(_0047_),
    .B1(net732));
 sg13g2_nand2_1 _2206_ (.Y(_1703_),
    .A(net681),
    .B(\u_win.h_cat1[1] ));
 sg13g2_nand2_1 _2207_ (.Y(_1704_),
    .A(net655),
    .B(\u_win.h_cat2[1] ));
 sg13g2_a21oi_1 _2208_ (.A1(_1703_),
    .A2(_1704_),
    .Y(_0048_),
    .B1(net723));
 sg13g2_nand2_1 _2209_ (.Y(_1705_),
    .A(net683),
    .B(\u_win.h_cat1[0] ));
 sg13g2_nand2_1 _2210_ (.Y(_1706_),
    .A(net654),
    .B(\u_win.h_cat2[0] ));
 sg13g2_a21oi_1 _2211_ (.A1(_1705_),
    .A2(_1706_),
    .Y(_0049_),
    .B1(net725));
 sg13g2_nand2_1 _2212_ (.Y(_1707_),
    .A(net684),
    .B(\u_win.h_cat0[6] ));
 sg13g2_nand2_1 _2213_ (.Y(_1708_),
    .A(net653),
    .B(\u_win.h_cat1[6] ));
 sg13g2_a21oi_1 _2214_ (.A1(_1707_),
    .A2(_1708_),
    .Y(_0050_),
    .B1(net732));
 sg13g2_nand2_1 _2215_ (.Y(_1709_),
    .A(net682),
    .B(\u_win.h_cat0[5] ));
 sg13g2_nand2_1 _2217_ (.Y(_1711_),
    .A(net653),
    .B(\u_win.h_cat1[5] ));
 sg13g2_a21oi_1 _2218_ (.A1(_1709_),
    .A2(_1711_),
    .Y(_0051_),
    .B1(net724));
 sg13g2_nand2_1 _2220_ (.Y(_1713_),
    .A(net682),
    .B(\u_win.h_cat0[4] ));
 sg13g2_nand2_1 _2221_ (.Y(_1714_),
    .A(net653),
    .B(\u_win.h_cat1[4] ));
 sg13g2_a21oi_1 _2222_ (.A1(_1713_),
    .A2(_1714_),
    .Y(_0052_),
    .B1(net724));
 sg13g2_nand2_1 _2223_ (.Y(_1715_),
    .A(net681),
    .B(\u_win.h_cat0[3] ));
 sg13g2_nand2_1 _2224_ (.Y(_1716_),
    .A(net655),
    .B(\u_win.h_cat1[3] ));
 sg13g2_a21oi_1 _2225_ (.A1(_1715_),
    .A2(_1716_),
    .Y(_0053_),
    .B1(net723));
 sg13g2_nand2_1 _2226_ (.Y(_1717_),
    .A(net682),
    .B(\u_win.h_cat0[2] ));
 sg13g2_nand2_1 _2227_ (.Y(_0197_),
    .A(net653),
    .B(\u_win.h_cat1[2] ));
 sg13g2_a21oi_1 _2228_ (.A1(_1717_),
    .A2(_0197_),
    .Y(_0054_),
    .B1(net724));
 sg13g2_nand2_1 _2229_ (.Y(_0198_),
    .A(net681),
    .B(\u_win.h_cat0[1] ));
 sg13g2_nand2_1 _2230_ (.Y(_0199_),
    .A(net655),
    .B(\u_win.h_cat1[1] ));
 sg13g2_a21oi_1 _2232_ (.A1(_0198_),
    .A2(_0199_),
    .Y(_0055_),
    .B1(net723));
 sg13g2_nand2_1 _2233_ (.Y(_0201_),
    .A(net681),
    .B(\u_win.h_cat0[0] ));
 sg13g2_nand2_1 _2234_ (.Y(_0202_),
    .A(net654),
    .B(\u_win.h_cat1[0] ));
 sg13g2_a21oi_1 _2235_ (.A1(_0201_),
    .A2(_0202_),
    .Y(_0056_),
    .B1(net725));
 sg13g2_nand2_1 _2236_ (.Y(_0203_),
    .A(net682),
    .B(\cat_q[6] ));
 sg13g2_nand2_1 _2237_ (.Y(_0204_),
    .A(net653),
    .B(\u_win.h_cat0[6] ));
 sg13g2_a21oi_1 _2238_ (.A1(_0203_),
    .A2(_0204_),
    .Y(_0057_),
    .B1(net724));
 sg13g2_nand2_1 _2239_ (.Y(_0205_),
    .A(net682),
    .B(\cat_q[5] ));
 sg13g2_nand2_1 _2240_ (.Y(_0206_),
    .A(net653),
    .B(\u_win.h_cat0[5] ));
 sg13g2_a21oi_1 _2241_ (.A1(_0205_),
    .A2(_0206_),
    .Y(_0058_),
    .B1(net724));
 sg13g2_nand2_1 _2242_ (.Y(_0207_),
    .A(net682),
    .B(\cat_q[4] ));
 sg13g2_nand2_1 _2243_ (.Y(_0208_),
    .A(net653),
    .B(\u_win.h_cat0[4] ));
 sg13g2_a21oi_1 _2244_ (.A1(_0207_),
    .A2(_0208_),
    .Y(_0059_),
    .B1(net724));
 sg13g2_nand2_1 _2245_ (.Y(_0209_),
    .A(net681),
    .B(\cat_q[3] ));
 sg13g2_nand2_1 _2246_ (.Y(_0210_),
    .A(net655),
    .B(\u_win.h_cat0[3] ));
 sg13g2_a21oi_1 _2247_ (.A1(_0209_),
    .A2(_0210_),
    .Y(_0060_),
    .B1(net723));
 sg13g2_nand2_1 _2248_ (.Y(_0211_),
    .A(net682),
    .B(\cat_q[2] ));
 sg13g2_nand2_1 _2250_ (.Y(_0213_),
    .A(net653),
    .B(\u_win.h_cat0[2] ));
 sg13g2_a21oi_1 _2251_ (.A1(_0211_),
    .A2(_0213_),
    .Y(_0061_),
    .B1(net724));
 sg13g2_nand2_1 _2253_ (.Y(_0215_),
    .A(net681),
    .B(\cat_q[1] ));
 sg13g2_nand2_1 _2254_ (.Y(_0216_),
    .A(net655),
    .B(\u_win.h_cat0[1] ));
 sg13g2_a21oi_1 _2255_ (.A1(_0215_),
    .A2(_0216_),
    .Y(_0062_),
    .B1(net723));
 sg13g2_nand2_1 _2256_ (.Y(_0217_),
    .A(net681),
    .B(\cat_q[0] ));
 sg13g2_nand2_1 _2257_ (.Y(_0218_),
    .A(net655),
    .B(\u_win.h_cat0[0] ));
 sg13g2_a21oi_1 _2258_ (.A1(_0217_),
    .A2(_0218_),
    .Y(_0063_),
    .B1(net723));
 sg13g2_nand2_1 _2259_ (.Y(_0219_),
    .A(net678),
    .B(\u_win.h_amt2[14] ));
 sg13g2_nand2_1 _2260_ (.Y(_0220_),
    .A(net651),
    .B(\u_win.h_amt3[14] ));
 sg13g2_a21oi_1 _2261_ (.A1(_0219_),
    .A2(_0220_),
    .Y(_0064_),
    .B1(net729));
 sg13g2_nand2_1 _2262_ (.Y(_0221_),
    .A(net678),
    .B(\u_win.h_amt2[13] ));
 sg13g2_nand2_1 _2263_ (.Y(_0222_),
    .A(net651),
    .B(\u_win.h_amt3[13] ));
 sg13g2_a21oi_1 _2265_ (.A1(_0221_),
    .A2(_0222_),
    .Y(_0065_),
    .B1(net729));
 sg13g2_nand2_1 _2266_ (.Y(_0224_),
    .A(net678),
    .B(\u_win.h_amt2[12] ));
 sg13g2_nand2_1 _2267_ (.Y(_0225_),
    .A(net651),
    .B(\u_win.h_amt3[12] ));
 sg13g2_a21oi_1 _2268_ (.A1(_0224_),
    .A2(_0225_),
    .Y(_0066_),
    .B1(net729));
 sg13g2_nand2_1 _2269_ (.Y(_0226_),
    .A(net685),
    .B(\u_win.h_amt2[11] ));
 sg13g2_nand2_1 _2270_ (.Y(_0227_),
    .A(net651),
    .B(\u_win.h_amt3[11] ));
 sg13g2_a21oi_1 _2271_ (.A1(_0226_),
    .A2(_0227_),
    .Y(_0067_),
    .B1(net729));
 sg13g2_nand2_1 _2272_ (.Y(_0228_),
    .A(net680),
    .B(\u_win.h_amt2[10] ));
 sg13g2_nand2_1 _2273_ (.Y(_0229_),
    .A(net658),
    .B(\u_win.h_amt3[10] ));
 sg13g2_a21oi_1 _2274_ (.A1(_0228_),
    .A2(_0229_),
    .Y(_0068_),
    .B1(net731));
 sg13g2_nand2_1 _2275_ (.Y(_0230_),
    .A(net690),
    .B(\u_win.h_amt2[9] ));
 sg13g2_nand2_1 _2276_ (.Y(_0231_),
    .A(net660),
    .B(\u_win.h_amt3[9] ));
 sg13g2_a21oi_1 _2277_ (.A1(_0230_),
    .A2(_0231_),
    .Y(_0069_),
    .B1(net717));
 sg13g2_nand2_1 _2278_ (.Y(_0232_),
    .A(net691),
    .B(\u_win.h_amt2[8] ));
 sg13g2_nand2_1 _2279_ (.Y(_0233_),
    .A(net663),
    .B(\u_win.h_amt3[8] ));
 sg13g2_a21oi_1 _2280_ (.A1(_0232_),
    .A2(_0233_),
    .Y(_0070_),
    .B1(net719));
 sg13g2_nand2_1 _2281_ (.Y(_0234_),
    .A(net692),
    .B(\u_win.h_amt2[7] ));
 sg13g2_nand2_1 _2283_ (.Y(_0236_),
    .A(net660),
    .B(\u_win.h_amt3[7] ));
 sg13g2_a21oi_1 _2284_ (.A1(_0234_),
    .A2(_0236_),
    .Y(_0071_),
    .B1(net717));
 sg13g2_nand2_1 _2286_ (.Y(_0238_),
    .A(net692),
    .B(\u_win.h_amt2[6] ));
 sg13g2_nand2_1 _2287_ (.Y(_0239_),
    .A(net660),
    .B(\u_win.h_amt3[6] ));
 sg13g2_a21oi_1 _2288_ (.A1(_0238_),
    .A2(_0239_),
    .Y(_0072_),
    .B1(net717));
 sg13g2_nand2_1 _2289_ (.Y(_0240_),
    .A(net692),
    .B(\u_win.h_amt2[5] ));
 sg13g2_nand2_1 _2290_ (.Y(_0241_),
    .A(net660),
    .B(\u_win.h_amt3[5] ));
 sg13g2_a21oi_1 _2291_ (.A1(_0240_),
    .A2(_0241_),
    .Y(_0073_),
    .B1(net717));
 sg13g2_nand2_1 _2292_ (.Y(_0242_),
    .A(net679),
    .B(\u_win.h_amt2[4] ));
 sg13g2_nand2_1 _2293_ (.Y(_0243_),
    .A(net652),
    .B(\u_win.h_amt3[4] ));
 sg13g2_a21oi_1 _2294_ (.A1(_0242_),
    .A2(_0243_),
    .Y(_0074_),
    .B1(net728));
 sg13g2_nand2_1 _2295_ (.Y(_0244_),
    .A(net693),
    .B(\u_win.h_amt2[3] ));
 sg13g2_nand2_1 _2296_ (.Y(_0245_),
    .A(net659),
    .B(\u_win.h_amt3[3] ));
 sg13g2_a21oi_1 _2298_ (.A1(_0244_),
    .A2(_0245_),
    .Y(_0075_),
    .B1(net728));
 sg13g2_nand2_1 _2299_ (.Y(_0247_),
    .A(net687),
    .B(\u_win.h_amt2[2] ));
 sg13g2_nand2_1 _2300_ (.Y(_0248_),
    .A(net662),
    .B(\u_win.h_amt3[2] ));
 sg13g2_a21oi_1 _2301_ (.A1(_0247_),
    .A2(_0248_),
    .Y(_0076_),
    .B1(net720));
 sg13g2_nand2_1 _2302_ (.Y(_0249_),
    .A(net687),
    .B(\u_win.h_amt2[1] ));
 sg13g2_nand2_1 _2303_ (.Y(_0250_),
    .A(net662),
    .B(\u_win.h_amt3[1] ));
 sg13g2_a21oi_1 _2304_ (.A1(_0249_),
    .A2(_0250_),
    .Y(_0077_),
    .B1(net720));
 sg13g2_nand2_1 _2305_ (.Y(_0251_),
    .A(net690),
    .B(\u_win.h_amt2[0] ));
 sg13g2_nand2_1 _2306_ (.Y(_0252_),
    .A(net660),
    .B(\u_win.h_amt3[0] ));
 sg13g2_a21oi_1 _2307_ (.A1(_0251_),
    .A2(_0252_),
    .Y(_0078_),
    .B1(net727));
 sg13g2_nand2_1 _2308_ (.Y(_0253_),
    .A(net678),
    .B(\u_win.h_amt1[14] ));
 sg13g2_nand2_1 _2309_ (.Y(_0254_),
    .A(net651),
    .B(\u_win.h_amt2[14] ));
 sg13g2_a21oi_1 _2310_ (.A1(_0253_),
    .A2(_0254_),
    .Y(_0079_),
    .B1(net729));
 sg13g2_nand2_1 _2311_ (.Y(_0255_),
    .A(net678),
    .B(\u_win.h_amt1[13] ));
 sg13g2_nand2_1 _2312_ (.Y(_0256_),
    .A(net651),
    .B(\u_win.h_amt2[13] ));
 sg13g2_a21oi_1 _2313_ (.A1(_0255_),
    .A2(_0256_),
    .Y(_0080_),
    .B1(net729));
 sg13g2_nand2_1 _2314_ (.Y(_0257_),
    .A(net686),
    .B(\u_win.h_amt1[12] ));
 sg13g2_nand2_1 _2316_ (.Y(_0259_),
    .A(net652),
    .B(\u_win.h_amt2[12] ));
 sg13g2_a21oi_1 _2317_ (.A1(_0257_),
    .A2(_0259_),
    .Y(_0081_),
    .B1(net730));
 sg13g2_nand2_1 _2319_ (.Y(_0261_),
    .A(net680),
    .B(\u_win.h_amt1[11] ));
 sg13g2_nand2_1 _2320_ (.Y(_0262_),
    .A(net658),
    .B(\u_win.h_amt2[11] ));
 sg13g2_a21oi_1 _2321_ (.A1(_0261_),
    .A2(_0262_),
    .Y(_0082_),
    .B1(net730));
 sg13g2_nand2_1 _2322_ (.Y(_0263_),
    .A(net680),
    .B(\u_win.h_amt1[10] ));
 sg13g2_nand2_1 _2323_ (.Y(_0264_),
    .A(net656),
    .B(\u_win.h_amt2[10] ));
 sg13g2_a21oi_1 _2324_ (.A1(_0263_),
    .A2(_0264_),
    .Y(_0083_),
    .B1(net726));
 sg13g2_nand2_1 _2325_ (.Y(_0265_),
    .A(net690),
    .B(\u_win.h_amt1[9] ));
 sg13g2_nand2_1 _2326_ (.Y(_0266_),
    .A(net666),
    .B(\u_win.h_amt2[9] ));
 sg13g2_a21oi_1 _2327_ (.A1(_0265_),
    .A2(_0266_),
    .Y(_0084_),
    .B1(net727));
 sg13g2_nand2_1 _2328_ (.Y(_0267_),
    .A(net691),
    .B(\u_win.h_amt1[8] ));
 sg13g2_nand2_1 _2329_ (.Y(_0268_),
    .A(net663),
    .B(\u_win.h_amt2[8] ));
 sg13g2_a21oi_1 _2331_ (.A1(_0267_),
    .A2(_0268_),
    .Y(_0085_),
    .B1(net719));
 sg13g2_nand2_1 _2332_ (.Y(_0270_),
    .A(net692),
    .B(\u_win.h_amt1[7] ));
 sg13g2_nand2_1 _2333_ (.Y(_0271_),
    .A(net661),
    .B(\u_win.h_amt2[7] ));
 sg13g2_a21oi_1 _2334_ (.A1(_0270_),
    .A2(_0271_),
    .Y(_0086_),
    .B1(net717));
 sg13g2_nand2_1 _2335_ (.Y(_0272_),
    .A(net692),
    .B(\u_win.h_amt1[6] ));
 sg13g2_nand2_1 _2336_ (.Y(_0273_),
    .A(net664),
    .B(\u_win.h_amt2[6] ));
 sg13g2_a21oi_1 _2337_ (.A1(_0272_),
    .A2(_0273_),
    .Y(_0087_),
    .B1(net717));
 sg13g2_nand2_1 _2338_ (.Y(_0274_),
    .A(net692),
    .B(\u_win.h_amt1[5] ));
 sg13g2_nand2_1 _2339_ (.Y(_0275_),
    .A(net664),
    .B(\u_win.h_amt2[5] ));
 sg13g2_a21oi_1 _2340_ (.A1(_0274_),
    .A2(_0275_),
    .Y(_0088_),
    .B1(net727));
 sg13g2_nand2_1 _2341_ (.Y(_0276_),
    .A(net693),
    .B(\u_win.h_amt1[4] ));
 sg13g2_nand2_1 _2342_ (.Y(_0277_),
    .A(net652),
    .B(\u_win.h_amt2[4] ));
 sg13g2_a21oi_1 _2343_ (.A1(_0276_),
    .A2(_0277_),
    .Y(_0089_),
    .B1(net728));
 sg13g2_nand2_1 _2344_ (.Y(_0278_),
    .A(net690),
    .B(\u_win.h_amt1[3] ));
 sg13g2_nand2_1 _2345_ (.Y(_0279_),
    .A(net656),
    .B(\u_win.h_amt2[3] ));
 sg13g2_a21oi_1 _2346_ (.A1(_0278_),
    .A2(_0279_),
    .Y(_0090_),
    .B1(net726));
 sg13g2_nand2_1 _2347_ (.Y(_0280_),
    .A(net688),
    .B(\u_win.h_amt1[2] ));
 sg13g2_nand2_1 _2349_ (.Y(_0282_),
    .A(net662),
    .B(\u_win.h_amt2[2] ));
 sg13g2_a21oi_1 _2350_ (.A1(_0280_),
    .A2(_0282_),
    .Y(_0091_),
    .B1(net720));
 sg13g2_nand2_1 _2352_ (.Y(_0284_),
    .A(net687),
    .B(\u_win.h_amt1[1] ));
 sg13g2_nand2_1 _2353_ (.Y(_0285_),
    .A(net662),
    .B(\u_win.h_amt2[1] ));
 sg13g2_a21oi_1 _2354_ (.A1(_0284_),
    .A2(_0285_),
    .Y(_0092_),
    .B1(net720));
 sg13g2_nand2_1 _2355_ (.Y(_0286_),
    .A(net689),
    .B(\u_win.h_amt1[0] ));
 sg13g2_nand2_1 _2356_ (.Y(_0287_),
    .A(net666),
    .B(\u_win.h_amt2[0] ));
 sg13g2_a21oi_1 _2357_ (.A1(_0286_),
    .A2(_0287_),
    .Y(_0093_),
    .B1(net722));
 sg13g2_nand2_1 _2358_ (.Y(_0288_),
    .A(net678),
    .B(\u_win.h_amt0[14] ));
 sg13g2_nand2_1 _2359_ (.Y(_0289_),
    .A(net652),
    .B(\u_win.h_amt1[14] ));
 sg13g2_a21oi_1 _2360_ (.A1(_0288_),
    .A2(_0289_),
    .Y(_0094_),
    .B1(net730));
 sg13g2_nand2_1 _2361_ (.Y(_0290_),
    .A(net679),
    .B(\u_win.h_amt0[13] ));
 sg13g2_nand2_1 _2362_ (.Y(_0291_),
    .A(net651),
    .B(\u_win.h_amt1[13] ));
 sg13g2_a21oi_1 _2364_ (.A1(_0290_),
    .A2(_0291_),
    .Y(_0095_),
    .B1(net729));
 sg13g2_nand2_1 _2365_ (.Y(_0293_),
    .A(net686),
    .B(\u_win.h_amt0[12] ));
 sg13g2_nand2_1 _2366_ (.Y(_0294_),
    .A(net659),
    .B(\u_win.h_amt1[12] ));
 sg13g2_a21oi_1 _2367_ (.A1(_0293_),
    .A2(_0294_),
    .Y(_0096_),
    .B1(net730));
 sg13g2_nand2_1 _2368_ (.Y(_0295_),
    .A(net680),
    .B(\u_win.h_amt0[11] ));
 sg13g2_nand2_1 _2369_ (.Y(_0296_),
    .A(net656),
    .B(\u_win.h_amt1[11] ));
 sg13g2_a21oi_1 _2370_ (.A1(_0295_),
    .A2(_0296_),
    .Y(_0097_),
    .B1(net726));
 sg13g2_nand2_1 _2371_ (.Y(_0297_),
    .A(net680),
    .B(\u_win.h_amt0[10] ));
 sg13g2_nand2_1 _2372_ (.Y(_0298_),
    .A(net656),
    .B(\u_win.h_amt1[10] ));
 sg13g2_a21oi_1 _2373_ (.A1(_0297_),
    .A2(_0298_),
    .Y(_0098_),
    .B1(net726));
 sg13g2_nand2_1 _2374_ (.Y(_0299_),
    .A(net690),
    .B(\u_win.h_amt0[9] ));
 sg13g2_nand2_1 _2375_ (.Y(_0300_),
    .A(net666),
    .B(\u_win.h_amt1[9] ));
 sg13g2_a21oi_1 _2376_ (.A1(_0299_),
    .A2(_0300_),
    .Y(_0099_),
    .B1(net722));
 sg13g2_nand2_1 _2377_ (.Y(_0301_),
    .A(net691),
    .B(\u_win.h_amt0[8] ));
 sg13g2_nand2_1 _2378_ (.Y(_0302_),
    .A(net663),
    .B(\u_win.h_amt1[8] ));
 sg13g2_a21oi_1 _2379_ (.A1(_0301_),
    .A2(_0302_),
    .Y(_0100_),
    .B1(net719));
 sg13g2_nand2_1 _2380_ (.Y(_0303_),
    .A(net690),
    .B(\u_win.h_amt0[7] ));
 sg13g2_nand2_1 _2382_ (.Y(_0305_),
    .A(net661),
    .B(\u_win.h_amt1[7] ));
 sg13g2_a21oi_1 _2383_ (.A1(_0303_),
    .A2(_0305_),
    .Y(_0101_),
    .B1(net717));
 sg13g2_nand2_1 _2385_ (.Y(_0307_),
    .A(net691),
    .B(\u_win.h_amt0[6] ));
 sg13g2_nand2_1 _2386_ (.Y(_0308_),
    .A(net663),
    .B(\u_win.h_amt1[6] ));
 sg13g2_a21oi_1 _2387_ (.A1(_0307_),
    .A2(_0308_),
    .Y(_0102_),
    .B1(net719));
 sg13g2_nand2_1 _2388_ (.Y(_0309_),
    .A(net691),
    .B(\u_win.h_amt0[5] ));
 sg13g2_nand2_1 _2389_ (.Y(_0310_),
    .A(net663),
    .B(\u_win.h_amt1[5] ));
 sg13g2_a21oi_1 _2390_ (.A1(_0309_),
    .A2(_0310_),
    .Y(_0103_),
    .B1(net719));
 sg13g2_nand2_1 _2391_ (.Y(_0311_),
    .A(net690),
    .B(\u_win.h_amt0[4] ));
 sg13g2_nand2_1 _2392_ (.Y(_0312_),
    .A(net666),
    .B(\u_win.h_amt1[4] ));
 sg13g2_a21oi_1 _2393_ (.A1(_0311_),
    .A2(_0312_),
    .Y(_0104_),
    .B1(net727));
 sg13g2_nand2_1 _2394_ (.Y(_0313_),
    .A(net687),
    .B(\u_win.h_amt0[3] ));
 sg13g2_nand2_1 _2395_ (.Y(_0314_),
    .A(net665),
    .B(\u_win.h_amt1[3] ));
 sg13g2_a21oi_1 _2397_ (.A1(_0313_),
    .A2(_0314_),
    .Y(_0105_),
    .B1(net721));
 sg13g2_nand2_1 _2398_ (.Y(_0316_),
    .A(net688),
    .B(\u_win.h_amt0[2] ));
 sg13g2_nand2_1 _2399_ (.Y(_0317_),
    .A(net665),
    .B(\u_win.h_amt1[2] ));
 sg13g2_a21oi_1 _2400_ (.A1(_0316_),
    .A2(_0317_),
    .Y(_0106_),
    .B1(net721));
 sg13g2_nand2_1 _2401_ (.Y(_0318_),
    .A(net687),
    .B(\u_win.h_amt0[1] ));
 sg13g2_nand2_1 _2402_ (.Y(_0319_),
    .A(net662),
    .B(\u_win.h_amt1[1] ));
 sg13g2_a21oi_1 _2403_ (.A1(_0318_),
    .A2(_0319_),
    .Y(_0107_),
    .B1(net720));
 sg13g2_nand2_1 _2404_ (.Y(_0320_),
    .A(net689),
    .B(\u_win.h_amt0[0] ));
 sg13g2_nand2_1 _2405_ (.Y(_0321_),
    .A(net661),
    .B(\u_win.h_amt1[0] ));
 sg13g2_a21oi_1 _2406_ (.A1(_0320_),
    .A2(_0321_),
    .Y(_0108_),
    .B1(net722));
 sg13g2_nand2_1 _2407_ (.Y(_0322_),
    .A(net693),
    .B(net709));
 sg13g2_nand2_1 _2408_ (.Y(_0323_),
    .A(net652),
    .B(\u_win.h_amt0[14] ));
 sg13g2_a21oi_1 _2409_ (.A1(_0322_),
    .A2(_0323_),
    .Y(_0109_),
    .B1(net728));
 sg13g2_nand2_1 _2410_ (.Y(_0324_),
    .A(net678),
    .B(net710));
 sg13g2_nand2_1 _2411_ (.Y(_0325_),
    .A(net651),
    .B(\u_win.h_amt0[13] ));
 sg13g2_a21oi_1 _2412_ (.A1(_0324_),
    .A2(_0325_),
    .Y(_0110_),
    .B1(net729));
 sg13g2_nand2_1 _2413_ (.Y(_0326_),
    .A(net686),
    .B(\amount_q[12] ));
 sg13g2_nand2_1 _2415_ (.Y(_0328_),
    .A(net659),
    .B(\u_win.h_amt0[12] ));
 sg13g2_a21oi_1 _2416_ (.A1(_0326_),
    .A2(_0328_),
    .Y(_0111_),
    .B1(net730));
 sg13g2_nand2_1 _2418_ (.Y(_0330_),
    .A(net680),
    .B(net714));
 sg13g2_nand2_1 _2419_ (.Y(_0331_),
    .A(net656),
    .B(\u_win.h_amt0[11] ));
 sg13g2_a21oi_1 _2420_ (.A1(_0330_),
    .A2(_0331_),
    .Y(_0112_),
    .B1(net726));
 sg13g2_nand2_1 _2421_ (.Y(_0332_),
    .A(net680),
    .B(net715));
 sg13g2_nand2_1 _2422_ (.Y(_0333_),
    .A(net656),
    .B(\u_win.h_amt0[10] ));
 sg13g2_a21oi_1 _2423_ (.A1(_0332_),
    .A2(_0333_),
    .Y(_0113_),
    .B1(net726));
 sg13g2_nand2_1 _2424_ (.Y(_0334_),
    .A(net689),
    .B(net699));
 sg13g2_nand2_1 _2425_ (.Y(_0335_),
    .A(net665),
    .B(\u_win.h_amt0[9] ));
 sg13g2_a21oi_1 _2426_ (.A1(_0334_),
    .A2(_0335_),
    .Y(_0114_),
    .B1(net721));
 sg13g2_nand2_1 _2427_ (.Y(_0336_),
    .A(net691),
    .B(net700));
 sg13g2_nand2_1 _2428_ (.Y(_0337_),
    .A(net663),
    .B(\u_win.h_amt0[8] ));
 sg13g2_a21oi_1 _2430_ (.A1(_0336_),
    .A2(_0337_),
    .Y(_0115_),
    .B1(net719));
 sg13g2_nand2_1 _2431_ (.Y(_0339_),
    .A(net692),
    .B(net701));
 sg13g2_nand2_1 _2432_ (.Y(_0340_),
    .A(net661),
    .B(\u_win.h_amt0[7] ));
 sg13g2_a21oi_1 _2433_ (.A1(_0339_),
    .A2(_0340_),
    .Y(_0116_),
    .B1(net717));
 sg13g2_nand2_1 _2434_ (.Y(_0341_),
    .A(net691),
    .B(net702));
 sg13g2_nand2_1 _2435_ (.Y(_0342_),
    .A(net663),
    .B(\u_win.h_amt0[6] ));
 sg13g2_a21oi_1 _2436_ (.A1(_0341_),
    .A2(_0342_),
    .Y(_0117_),
    .B1(net719));
 sg13g2_nand2_1 _2437_ (.Y(_0343_),
    .A(net691),
    .B(net703));
 sg13g2_nand2_1 _2438_ (.Y(_0344_),
    .A(net663),
    .B(\u_win.h_amt0[5] ));
 sg13g2_a21oi_1 _2439_ (.A1(_0343_),
    .A2(_0344_),
    .Y(_0118_),
    .B1(net718));
 sg13g2_nand2_1 _2440_ (.Y(_0345_),
    .A(net689),
    .B(net704));
 sg13g2_nand2_1 _2441_ (.Y(_0346_),
    .A(net661),
    .B(\u_win.h_amt0[4] ));
 sg13g2_a21oi_1 _2442_ (.A1(_0345_),
    .A2(_0346_),
    .Y(_0119_),
    .B1(net722));
 sg13g2_nand2_1 _2443_ (.Y(_0347_),
    .A(net687),
    .B(net705));
 sg13g2_nand2_1 _2444_ (.Y(_0348_),
    .A(net662),
    .B(\u_win.h_amt0[3] ));
 sg13g2_a21oi_1 _2445_ (.A1(_0347_),
    .A2(_0348_),
    .Y(_0120_),
    .B1(net720));
 sg13g2_nand2_1 _2446_ (.Y(_0349_),
    .A(net688),
    .B(net706));
 sg13g2_nand2_1 _2448_ (.Y(_0351_),
    .A(net665),
    .B(\u_win.h_amt0[2] ));
 sg13g2_a21oi_1 _2449_ (.A1(_0349_),
    .A2(_0351_),
    .Y(_0121_),
    .B1(net721));
 sg13g2_nand2_1 _2451_ (.Y(_0353_),
    .A(net687),
    .B(net707));
 sg13g2_nand2_1 _2452_ (.Y(_0354_),
    .A(net662),
    .B(\u_win.h_amt0[1] ));
 sg13g2_a21oi_1 _2453_ (.A1(_0353_),
    .A2(_0354_),
    .Y(_0122_),
    .B1(net720));
 sg13g2_nand2_1 _2454_ (.Y(_0355_),
    .A(net689),
    .B(net716));
 sg13g2_nand2_1 _2455_ (.Y(_0356_),
    .A(net661),
    .B(\u_win.h_amt0[0] ));
 sg13g2_a21oi_1 _2456_ (.A1(_0355_),
    .A2(_0356_),
    .Y(_0123_),
    .B1(net720));
 sg13g2_nor2_1 _2459_ (.A(net668),
    .B(_1624_),
    .Y(_0359_));
 sg13g2_a22oi_1 _2460_ (.Y(_0360_),
    .B1(_1656_),
    .B2(_0359_),
    .A2(\u_win.elapsed[10] ),
    .A1(net668));
 sg13g2_nor2_1 _2461_ (.A(net742),
    .B(_0360_),
    .Y(_0124_));
 sg13g2_nor3_1 _2462_ (.A(net668),
    .B(_1607_),
    .C(net635),
    .Y(_0361_));
 sg13g2_a21oi_1 _2463_ (.A1(net668),
    .A2(\u_win.elapsed[9] ),
    .Y(_0362_),
    .B1(_0361_));
 sg13g2_nor2_1 _2464_ (.A(net739),
    .B(_0362_),
    .Y(_0125_));
 sg13g2_xnor2_1 _2466_ (.Y(_0364_),
    .A(\dt_q[8] ),
    .B(_1498_));
 sg13g2_a21o_1 _2467_ (.A2(_0364_),
    .A1(net628),
    .B1(net668),
    .X(_0365_));
 sg13g2_nor2_1 _2468_ (.A(\u_win.elapsed[8] ),
    .B(_0364_),
    .Y(_0366_));
 sg13g2_a22oi_1 _2469_ (.Y(_0367_),
    .B1(_0366_),
    .B2(net627),
    .A2(_0365_),
    .A1(\u_win.elapsed[8] ));
 sg13g2_nor2_1 _2470_ (.A(net739),
    .B(_0367_),
    .Y(_0126_));
 sg13g2_nor2_1 _2471_ (.A(\u_win.elapsed[7] ),
    .B(_1474_),
    .Y(_0368_));
 sg13g2_a21o_1 _2472_ (.A2(net628),
    .A1(_1474_),
    .B1(net667),
    .X(_0369_));
 sg13g2_a22oi_1 _2473_ (.Y(_0370_),
    .B1(_0369_),
    .B2(\u_win.elapsed[7] ),
    .A2(net627),
    .A1(_0368_));
 sg13g2_nor2_1 _2474_ (.A(net739),
    .B(_0370_),
    .Y(_0127_));
 sg13g2_or2_1 _2475_ (.X(_0371_),
    .B(_1539_),
    .A(_1535_));
 sg13g2_nor2_1 _2476_ (.A(\u_win.elapsed[6] ),
    .B(_0371_),
    .Y(_0372_));
 sg13g2_a21o_1 _2477_ (.A2(net628),
    .A1(_0371_),
    .B1(net667),
    .X(_0373_));
 sg13g2_a22oi_1 _2478_ (.Y(_0374_),
    .B1(_0373_),
    .B2(\u_win.elapsed[6] ),
    .A2(net627),
    .A1(_0372_));
 sg13g2_nor2_1 _2479_ (.A(net739),
    .B(_0374_),
    .Y(_0128_));
 sg13g2_nand2_1 _2480_ (.Y(_0375_),
    .A(net667),
    .B(\u_win.elapsed[5] ));
 sg13g2_nand3_1 _2481_ (.B(_1549_),
    .C(net628),
    .A(net679),
    .Y(_0376_));
 sg13g2_a21oi_1 _2482_ (.A1(_0375_),
    .A2(_0376_),
    .Y(_0129_),
    .B1(net739));
 sg13g2_nor2_1 _2483_ (.A(net667),
    .B(_1573_),
    .Y(_0377_));
 sg13g2_a22oi_1 _2484_ (.Y(_0378_),
    .B1(net628),
    .B2(_0377_),
    .A2(\u_win.elapsed[4] ),
    .A1(net667));
 sg13g2_nor2_1 _2485_ (.A(net739),
    .B(_0378_),
    .Y(_0130_));
 sg13g2_nand2_1 _2486_ (.Y(_0379_),
    .A(_1587_),
    .B(_1502_));
 sg13g2_nor2_1 _2487_ (.A(\u_win.elapsed[3] ),
    .B(_0379_),
    .Y(_0380_));
 sg13g2_a21o_1 _2488_ (.A2(net628),
    .A1(_0379_),
    .B1(net667),
    .X(_0381_));
 sg13g2_a22oi_1 _2489_ (.Y(_0382_),
    .B1(_0381_),
    .B2(\u_win.elapsed[3] ),
    .A2(net627),
    .A1(_0380_));
 sg13g2_nor2_1 _2490_ (.A(net742),
    .B(_0382_),
    .Y(_0131_));
 sg13g2_xnor2_1 _2491_ (.Y(_0383_),
    .A(\dt_q[2] ),
    .B(_1480_));
 sg13g2_a21o_1 _2492_ (.A2(_0383_),
    .A1(net628),
    .B1(net667),
    .X(_0384_));
 sg13g2_nor2_1 _2493_ (.A(\u_win.elapsed[2] ),
    .B(_0383_),
    .Y(_0385_));
 sg13g2_a22oi_1 _2494_ (.Y(_0386_),
    .B1(_0385_),
    .B2(net627),
    .A2(_0384_),
    .A1(\u_win.elapsed[2] ));
 sg13g2_nor2_1 _2495_ (.A(net741),
    .B(_0386_),
    .Y(_0132_));
 sg13g2_xor2_1 _2496_ (.B(_1574_),
    .A(\dt_q[1] ),
    .X(_0387_));
 sg13g2_a21o_1 _2497_ (.A2(_0387_),
    .A1(net628),
    .B1(net667),
    .X(_0388_));
 sg13g2_nor2_1 _2498_ (.A(\u_win.elapsed[1] ),
    .B(_0387_),
    .Y(_0389_));
 sg13g2_a22oi_1 _2499_ (.Y(_0390_),
    .B1(_0389_),
    .B2(net627),
    .A2(_0388_),
    .A1(\u_win.elapsed[1] ));
 sg13g2_nor2_1 _2500_ (.A(net741),
    .B(_0390_),
    .Y(_0133_));
 sg13g2_nor2b_1 _2502_ (.A(net671),
    .B_N(net698),
    .Y(_0392_));
 sg13g2_o21ai_1 _2503_ (.B1(net679),
    .Y(_0393_),
    .A1(net698),
    .A2(net635));
 sg13g2_a22oi_1 _2504_ (.Y(_0394_),
    .B1(_0393_),
    .B2(net671),
    .A2(net627),
    .A1(_0392_));
 sg13g2_nor2_1 _2505_ (.A(net741),
    .B(_0394_),
    .Y(_0134_));
 sg13g2_inv_1 _2507_ (.Y(_0396_),
    .A(\u_cnt.count[3] ));
 sg13g2_nand3_1 _2510_ (.B(\u_cnt.count[1] ),
    .C(\u_cnt.count[2] ),
    .A(\u_cnt.count[0] ),
    .Y(_0399_));
 sg13g2_nor2_1 _2511_ (.A(_0396_),
    .B(_0399_),
    .Y(_0400_));
 sg13g2_and2_1 _2512_ (.A(\u_cnt.count[4] ),
    .B(_0400_),
    .X(_0401_));
 sg13g2_and2_1 _2514_ (.A(\u_cnt.count[5] ),
    .B(_0401_),
    .X(_0403_));
 sg13g2_a21oi_1 _2517_ (.A1(net677),
    .A2(_0403_),
    .Y(_0406_),
    .B1(\u_cnt.count[6] ));
 sg13g2_inv_1 _2519_ (.Y(_0408_),
    .A(\u_cnt.count[7] ));
 sg13g2_and3_1 _2520_ (.X(_0409_),
    .A(_0408_),
    .B(\u_cnt.count[6] ),
    .C(_0403_));
 sg13g2_o21ai_1 _2521_ (.B1(net677),
    .Y(_0410_),
    .A1(net635),
    .A2(_0409_));
 sg13g2_inv_1 _2522_ (.Y(_0411_),
    .A(_0410_));
 sg13g2_nor3_1 _2523_ (.A(net738),
    .B(_0406_),
    .C(_0411_),
    .Y(_0135_));
 sg13g2_nand2_1 _2524_ (.Y(_0412_),
    .A(net650),
    .B(\u_cnt.count[5] ));
 sg13g2_nor2_1 _2525_ (.A(\u_cnt.count[5] ),
    .B(_0401_),
    .Y(_0413_));
 sg13g2_nand3_1 _2526_ (.B(\u_cnt.count[6] ),
    .C(_0403_),
    .A(\u_cnt.count[7] ),
    .Y(_0414_));
 sg13g2_o21ai_1 _2528_ (.B1(_0414_),
    .Y(_0416_),
    .A1(_0403_),
    .A2(_0413_));
 sg13g2_nand3_1 _2529_ (.B(_1656_),
    .C(_0416_),
    .A(net677),
    .Y(_0417_));
 sg13g2_a21oi_1 _2531_ (.A1(_0412_),
    .A2(_0417_),
    .Y(_0136_),
    .B1(net738));
 sg13g2_a21oi_1 _2532_ (.A1(net677),
    .A2(_0400_),
    .Y(_0419_),
    .B1(\u_cnt.count[4] ));
 sg13g2_and2_1 _2533_ (.A(_0401_),
    .B(_0414_),
    .X(_0420_));
 sg13g2_o21ai_1 _2534_ (.B1(net677),
    .Y(_0421_),
    .A1(net635),
    .A2(_0420_));
 sg13g2_inv_1 _2535_ (.Y(_0422_),
    .A(_0421_));
 sg13g2_nor3_1 _2536_ (.A(net743),
    .B(_0419_),
    .C(_0422_),
    .Y(_0137_));
 sg13g2_nand2_1 _2537_ (.Y(_0423_),
    .A(\u_cnt.v ),
    .B(_1664_));
 sg13g2_and2_1 _2540_ (.A(_0396_),
    .B(_0399_),
    .X(_0426_));
 sg13g2_a21oi_1 _2541_ (.A1(_0400_),
    .A2(_0414_),
    .Y(_0427_),
    .B1(_0426_));
 sg13g2_nand3_1 _2542_ (.B(net625),
    .C(_0427_),
    .A(net677),
    .Y(_0428_));
 sg13g2_nand2_1 _2543_ (.Y(_0429_),
    .A(net650),
    .B(\u_cnt.count[3] ));
 sg13g2_a21oi_1 _2544_ (.A1(_0428_),
    .A2(_0429_),
    .Y(_0138_),
    .B1(net743));
 sg13g2_and2_1 _2545_ (.A(\u_cnt.count[0] ),
    .B(_0414_),
    .X(_0430_));
 sg13g2_nand2_1 _2547_ (.Y(_0432_),
    .A(\u_cnt.count[1] ),
    .B(_0430_));
 sg13g2_a21o_1 _2548_ (.A2(_0432_),
    .A1(net629),
    .B1(net650),
    .X(_0433_));
 sg13g2_nor2_1 _2549_ (.A(\u_cnt.count[2] ),
    .B(_0432_),
    .Y(_0434_));
 sg13g2_a22oi_1 _2550_ (.Y(_0435_),
    .B1(_0434_),
    .B2(_1667_),
    .A2(_0433_),
    .A1(\u_cnt.count[2] ));
 sg13g2_nor2_1 _2551_ (.A(net743),
    .B(_0435_),
    .Y(_0139_));
 sg13g2_o21ai_1 _2552_ (.B1(net695),
    .Y(_0436_),
    .A1(net635),
    .A2(_0430_));
 sg13g2_nand2_1 _2553_ (.Y(_0437_),
    .A(\u_cnt.count[0] ),
    .B(_0414_));
 sg13g2_nor2_1 _2554_ (.A(\u_cnt.count[1] ),
    .B(_0437_),
    .Y(_0438_));
 sg13g2_a22oi_1 _2555_ (.Y(_0439_),
    .B1(_0438_),
    .B2(_1667_),
    .A2(_0436_),
    .A1(\u_cnt.count[1] ));
 sg13g2_nor2_1 _2556_ (.A(net743),
    .B(_0439_),
    .Y(_0140_));
 sg13g2_o21ai_1 _2557_ (.B1(net756),
    .Y(_0440_),
    .A1(net677),
    .A2(\u_cnt.count[0] ));
 sg13g2_a21oi_1 _2558_ (.A1(_1667_),
    .A2(_0430_),
    .Y(_0141_),
    .B1(_0440_));
 sg13g2_and2_1 _2560_ (.A(\u_spend.spend[21] ),
    .B(\u_spend.spend[22] ),
    .X(_0442_));
 sg13g2_nand2_1 _2561_ (.Y(_0443_),
    .A(\u_spend.spend[23] ),
    .B(_0442_));
 sg13g2_nor2_1 _2563_ (.A(\u_spend.spend[1] ),
    .B(\amount_q[1] ),
    .Y(_0445_));
 sg13g2_nand2_1 _2564_ (.Y(_0446_),
    .A(\u_spend.spend[0] ),
    .B(\amount_q[0] ));
 sg13g2_a22oi_1 _2566_ (.Y(_0448_),
    .B1(\amount_q[2] ),
    .B2(\u_spend.spend[2] ),
    .A2(\amount_q[1] ),
    .A1(\u_spend.spend[1] ));
 sg13g2_o21ai_1 _2567_ (.B1(_0448_),
    .Y(_0449_),
    .A1(_0445_),
    .A2(_0446_));
 sg13g2_or2_1 _2568_ (.X(_0450_),
    .B(\amount_q[2] ),
    .A(\u_spend.spend[2] ));
 sg13g2_a21oi_1 _2569_ (.A1(_0449_),
    .A2(_0450_),
    .Y(_0451_),
    .B1(\amount_q[3] ));
 sg13g2_o21ai_1 _2570_ (.B1(\amount_q[3] ),
    .Y(_0452_),
    .A1(\u_spend.spend[2] ),
    .A2(\amount_q[2] ));
 sg13g2_inv_1 _2571_ (.Y(_0453_),
    .A(_0452_));
 sg13g2_a21oi_1 _2572_ (.A1(_0449_),
    .A2(_0453_),
    .Y(_0454_),
    .B1(\u_spend.spend[3] ));
 sg13g2_inv_1 _2574_ (.Y(_0456_),
    .A(\u_spend.spend[7] ));
 sg13g2_inv_1 _2575_ (.Y(_0457_),
    .A(net701));
 sg13g2_nor2_1 _2576_ (.A(_0456_),
    .B(_0457_),
    .Y(_0458_));
 sg13g2_inv_1 _2577_ (.Y(_0459_),
    .A(\amount_q[9] ));
 sg13g2_nand3_1 _2580_ (.B(\u_spend.spend[9] ),
    .C(\amount_q[8] ),
    .A(\u_spend.spend[8] ),
    .Y(_0462_));
 sg13g2_a21oi_1 _2581_ (.A1(\u_spend.spend[8] ),
    .A2(\amount_q[8] ),
    .Y(_0463_),
    .B1(\u_spend.spend[9] ));
 sg13g2_a21oi_1 _2582_ (.A1(_0459_),
    .A2(_0462_),
    .Y(_0464_),
    .B1(_0463_));
 sg13g2_nor2_1 _2584_ (.A(\u_spend.spend[5] ),
    .B(\amount_q[5] ),
    .Y(_0466_));
 sg13g2_a22oi_1 _2586_ (.Y(_0468_),
    .B1(\amount_q[5] ),
    .B2(\u_spend.spend[5] ),
    .A2(\amount_q[4] ),
    .A1(\u_spend.spend[4] ));
 sg13g2_nand2_1 _2587_ (.Y(_0469_),
    .A(\u_spend.spend[6] ),
    .B(\amount_q[6] ));
 sg13g2_o21ai_1 _2588_ (.B1(_0469_),
    .Y(_0470_),
    .A1(_0466_),
    .A2(_0468_));
 sg13g2_nor3_1 _2589_ (.A(_0458_),
    .B(_0464_),
    .C(_0470_),
    .Y(_0471_));
 sg13g2_o21ai_1 _2590_ (.B1(_0471_),
    .Y(_0472_),
    .A1(_0451_),
    .A2(_0454_));
 sg13g2_nand2_1 _2592_ (.Y(_0474_),
    .A(\u_spend.spend[8] ),
    .B(\amount_q[8] ));
 sg13g2_nor2_1 _2593_ (.A(\u_spend.spend[7] ),
    .B(\amount_q[7] ),
    .Y(_0475_));
 sg13g2_nor2_1 _2594_ (.A(\u_spend.spend[8] ),
    .B(\amount_q[8] ),
    .Y(_0476_));
 sg13g2_a21oi_1 _2595_ (.A1(_0474_),
    .A2(_0475_),
    .Y(_0477_),
    .B1(_0476_));
 sg13g2_nand2_1 _2596_ (.Y(_0478_),
    .A(\amount_q[9] ),
    .B(_0477_));
 sg13g2_o21ai_1 _2597_ (.B1(\u_spend.spend[9] ),
    .Y(_0479_),
    .A1(\amount_q[9] ),
    .A2(_0477_));
 sg13g2_nor2_1 _2598_ (.A(_0458_),
    .B(_0464_),
    .Y(_0480_));
 sg13g2_inv_1 _2599_ (.Y(_0481_),
    .A(\u_spend.spend[6] ));
 sg13g2_inv_1 _2600_ (.Y(_0482_),
    .A(\amount_q[6] ));
 sg13g2_nor2_1 _2601_ (.A(_0481_),
    .B(_0482_),
    .Y(_0483_));
 sg13g2_nand2_1 _2602_ (.Y(_0484_),
    .A(\u_spend.spend[5] ),
    .B(\amount_q[5] ));
 sg13g2_nor2_1 _2603_ (.A(\u_spend.spend[4] ),
    .B(\amount_q[4] ),
    .Y(_0485_));
 sg13g2_a221oi_1 _2604_ (.B2(_0485_),
    .C1(_0466_),
    .B1(_0484_),
    .A1(_0481_),
    .Y(_0486_),
    .A2(_0482_));
 sg13g2_nor2_1 _2605_ (.A(_0483_),
    .B(_0486_),
    .Y(_0487_));
 sg13g2_a22oi_1 _2606_ (.Y(_0488_),
    .B1(_0480_),
    .B2(_0487_),
    .A2(_0479_),
    .A1(_0478_));
 sg13g2_xnor2_1 _2609_ (.Y(_0491_),
    .A(\u_spend.spend[12] ),
    .B(net713));
 sg13g2_xnor2_1 _2612_ (.Y(_0494_),
    .A(\amount_q[15] ),
    .B(\u_spend.spend[15] ));
 sg13g2_and2_1 _2614_ (.A(\u_spend.spend[14] ),
    .B(\amount_q[14] ),
    .X(_0496_));
 sg13g2_nor2_1 _2616_ (.A(\u_spend.spend[14] ),
    .B(\amount_q[14] ),
    .Y(_0498_));
 sg13g2_and2_1 _2618_ (.A(\u_spend.spend[13] ),
    .B(net711),
    .X(_0500_));
 sg13g2_nor2_1 _2619_ (.A(\u_spend.spend[13] ),
    .B(\amount_q[13] ),
    .Y(_0501_));
 sg13g2_or4_1 _2620_ (.A(_0496_),
    .B(_0498_),
    .C(_0500_),
    .D(_0501_),
    .X(_0502_));
 sg13g2_nor3_1 _2621_ (.A(_0491_),
    .B(_0494_),
    .C(_0502_),
    .Y(_0503_));
 sg13g2_or2_1 _2624_ (.X(_0506_),
    .B(\amount_q[11] ),
    .A(\u_spend.spend[11] ));
 sg13g2_o21ai_1 _2626_ (.B1(_0506_),
    .Y(_0508_),
    .A1(\u_spend.spend[10] ),
    .A2(\amount_q[10] ));
 sg13g2_inv_1 _2627_ (.Y(_0509_),
    .A(_0508_));
 sg13g2_nand4_1 _2628_ (.B(_0488_),
    .C(_0503_),
    .A(_0472_),
    .Y(_0510_),
    .D(_0509_));
 sg13g2_nor2_1 _2630_ (.A(\u_spend.spend[11] ),
    .B(\amount_q[11] ),
    .Y(_0512_));
 sg13g2_nand2_1 _2631_ (.Y(_0513_),
    .A(\u_spend.spend[10] ),
    .B(\amount_q[10] ));
 sg13g2_nand2_1 _2632_ (.Y(_0514_),
    .A(\u_spend.spend[11] ),
    .B(\amount_q[11] ));
 sg13g2_o21ai_1 _2633_ (.B1(_0514_),
    .Y(_0515_),
    .A1(_0512_),
    .A2(_0513_));
 sg13g2_inv_1 _2634_ (.Y(_0516_),
    .A(\amount_q[15] ));
 sg13g2_a22oi_1 _2635_ (.Y(_0517_),
    .B1(net710),
    .B2(\u_spend.spend[13] ),
    .A2(net713),
    .A1(\u_spend.spend[12] ));
 sg13g2_nor3_1 _2636_ (.A(_0498_),
    .B(_0501_),
    .C(_0517_),
    .Y(_0518_));
 sg13g2_o21ai_1 _2637_ (.B1(\u_spend.spend[15] ),
    .Y(_0519_),
    .A1(_0496_),
    .A2(_0518_));
 sg13g2_nor3_1 _2638_ (.A(\u_spend.spend[15] ),
    .B(_0496_),
    .C(_0518_),
    .Y(_0520_));
 sg13g2_a21oi_1 _2639_ (.A1(_0516_),
    .A2(_0519_),
    .Y(_0521_),
    .B1(_0520_));
 sg13g2_a21oi_1 _2640_ (.A1(_0503_),
    .A2(_0515_),
    .Y(_0522_),
    .B1(_0521_));
 sg13g2_and2_1 _2644_ (.A(\u_spend.spend[19] ),
    .B(\u_spend.spend[20] ),
    .X(_0526_));
 sg13g2_nand4_1 _2645_ (.B(\u_spend.spend[17] ),
    .C(\u_spend.spend[18] ),
    .A(\u_spend.spend[16] ),
    .Y(_0527_),
    .D(_0526_));
 sg13g2_a21oi_1 _2646_ (.A1(_0510_),
    .A2(_0522_),
    .Y(_0528_),
    .B1(_0527_));
 sg13g2_nand2b_1 _2647_ (.Y(_0529_),
    .B(_0528_),
    .A_N(_0443_));
 sg13g2_nand2_1 _2651_ (.Y(_0533_),
    .A(\u_spend.spend[21] ),
    .B(_0528_));
 sg13g2_xor2_1 _2652_ (.B(_0533_),
    .A(\u_spend.spend[22] ),
    .X(_0534_));
 sg13g2_nand2_1 _2653_ (.Y(_0535_),
    .A(_0529_),
    .B(_0534_));
 sg13g2_a22oi_1 _2654_ (.Y(_0536_),
    .B1(_1667_),
    .B2(_0535_),
    .A2(\u_spend.spend[22] ),
    .A1(net650));
 sg13g2_nor2_1 _2655_ (.A(_1271_),
    .B(_0536_),
    .Y(_0142_));
 sg13g2_nand2_1 _2656_ (.Y(_0537_),
    .A(net649),
    .B(\u_spend.spend[21] ));
 sg13g2_and2_1 _2657_ (.A(_0443_),
    .B(_0528_),
    .X(_0538_));
 sg13g2_nor2_1 _2658_ (.A(\u_spend.spend[21] ),
    .B(_0528_),
    .Y(_0539_));
 sg13g2_a21oi_1 _2659_ (.A1(\u_spend.spend[21] ),
    .A2(_0538_),
    .Y(_0540_),
    .B1(_0539_));
 sg13g2_nand3_1 _2660_ (.B(net629),
    .C(_0540_),
    .A(net694),
    .Y(_0541_));
 sg13g2_a21oi_1 _2661_ (.A1(_0537_),
    .A2(_0541_),
    .Y(_0143_),
    .B1(_1271_));
 sg13g2_inv_1 _2663_ (.Y(_0543_),
    .A(\u_spend.spend[20] ));
 sg13g2_inv_1 _2664_ (.Y(_0544_),
    .A(\u_spend.spend[16] ));
 sg13g2_a21oi_1 _2665_ (.A1(_0510_),
    .A2(_0522_),
    .Y(_0545_),
    .B1(_0544_));
 sg13g2_nand4_1 _2666_ (.B(\u_spend.spend[18] ),
    .C(\u_spend.spend[19] ),
    .A(\u_spend.spend[17] ),
    .Y(_0546_),
    .D(_0545_));
 sg13g2_a21oi_1 _2667_ (.A1(_0543_),
    .A2(_0546_),
    .Y(_0547_),
    .B1(_0538_));
 sg13g2_nand2_1 _2668_ (.Y(_0548_),
    .A(net629),
    .B(_0547_));
 sg13g2_nand2_1 _2669_ (.Y(_0549_),
    .A(net649),
    .B(\u_spend.spend[20] ));
 sg13g2_o21ai_1 _2670_ (.B1(_0549_),
    .Y(_0550_),
    .A1(net649),
    .A2(_0548_));
 sg13g2_and2_1 _2671_ (.A(net757),
    .B(_0550_),
    .X(_0144_));
 sg13g2_nor2b_1 _2672_ (.A(_0443_),
    .B_N(_0528_),
    .Y(_0551_));
 sg13g2_o21ai_1 _2675_ (.B1(net629),
    .Y(_0554_),
    .A1(_0546_),
    .A2(_0551_));
 sg13g2_and2_1 _2676_ (.A(\u_spend.spend[17] ),
    .B(_0545_),
    .X(_0555_));
 sg13g2_nand2_1 _2678_ (.Y(_0557_),
    .A(\u_spend.spend[18] ),
    .B(_0555_));
 sg13g2_nor2_1 _2679_ (.A(net648),
    .B(_0557_),
    .Y(_0558_));
 sg13g2_o21ai_1 _2680_ (.B1(net757),
    .Y(_0559_),
    .A1(\u_spend.spend[19] ),
    .A2(_0558_));
 sg13g2_a21oi_1 _2681_ (.A1(net694),
    .A2(_0554_),
    .Y(_0145_),
    .B1(_0559_));
 sg13g2_a21oi_1 _2682_ (.A1(net694),
    .A2(_0555_),
    .Y(_0560_),
    .B1(\u_spend.spend[18] ));
 sg13g2_nand3_1 _2683_ (.B(_0555_),
    .C(_0529_),
    .A(\u_spend.spend[18] ),
    .Y(_0561_));
 sg13g2_a21oi_1 _2684_ (.A1(net629),
    .A2(_0561_),
    .Y(_0562_),
    .B1(net648));
 sg13g2_nor3_1 _2685_ (.A(net736),
    .B(_0560_),
    .C(_0562_),
    .Y(_0146_));
 sg13g2_nand2_1 _2686_ (.Y(_0563_),
    .A(\u_spend.spend[17] ),
    .B(_0545_));
 sg13g2_or2_1 _2687_ (.X(_0564_),
    .B(_0545_),
    .A(\u_spend.spend[17] ));
 sg13g2_o21ai_1 _2688_ (.B1(_0564_),
    .Y(_0565_),
    .A1(_0563_),
    .A2(_0551_));
 sg13g2_nor2_1 _2690_ (.A(net648),
    .B(_0565_),
    .Y(_0567_));
 sg13g2_a22oi_1 _2691_ (.Y(_0568_),
    .B1(net629),
    .B2(_0567_),
    .A2(\u_spend.spend[17] ),
    .A1(net648));
 sg13g2_nor2_1 _2692_ (.A(net736),
    .B(_0568_),
    .Y(_0147_));
 sg13g2_and3_1 _2693_ (.X(_0569_),
    .A(_0544_),
    .B(_0510_),
    .C(_0522_));
 sg13g2_a21o_1 _2694_ (.A2(_0529_),
    .A1(_0545_),
    .B1(_0569_),
    .X(_0570_));
 sg13g2_nor2_1 _2695_ (.A(net648),
    .B(_0570_),
    .Y(_0571_));
 sg13g2_a22oi_1 _2696_ (.Y(_0572_),
    .B1(net629),
    .B2(_0571_),
    .A2(\u_spend.spend[16] ),
    .A1(net648));
 sg13g2_nor2_1 _2697_ (.A(net737),
    .B(_0572_),
    .Y(_0148_));
 sg13g2_nor2_1 _2699_ (.A(net708),
    .B(_1656_),
    .Y(_0574_));
 sg13g2_nand2_1 _2700_ (.Y(_0575_),
    .A(net708),
    .B(_0423_));
 sg13g2_nand2_1 _2701_ (.Y(_0576_),
    .A(\u_spend.spend[14] ),
    .B(net709));
 sg13g2_inv_1 _2702_ (.Y(_0577_),
    .A(\u_spend.spend[12] ));
 sg13g2_inv_1 _2703_ (.Y(_0578_),
    .A(\amount_q[10] ));
 sg13g2_inv_1 _2704_ (.Y(_0579_),
    .A(net713));
 sg13g2_nor2_1 _2705_ (.A(_0578_),
    .B(_0579_),
    .Y(_0580_));
 sg13g2_nand4_1 _2706_ (.B(_0488_),
    .C(_0506_),
    .A(_0472_),
    .Y(_0581_),
    .D(_0580_));
 sg13g2_and2_1 _2707_ (.A(\u_spend.spend[10] ),
    .B(net713),
    .X(_0582_));
 sg13g2_nand4_1 _2708_ (.B(_0488_),
    .C(_0506_),
    .A(_0472_),
    .Y(_0583_),
    .D(_0582_));
 sg13g2_and2_1 _2709_ (.A(\u_spend.spend[11] ),
    .B(\amount_q[11] ),
    .X(_0584_));
 sg13g2_nor2_1 _2710_ (.A(_0512_),
    .B(_0513_),
    .Y(_0585_));
 sg13g2_o21ai_1 _2711_ (.B1(net713),
    .Y(_0586_),
    .A1(_0584_),
    .A2(_0585_));
 sg13g2_nand4_1 _2712_ (.B(_0581_),
    .C(_0583_),
    .A(_0577_),
    .Y(_0587_),
    .D(_0586_));
 sg13g2_nand3_1 _2713_ (.B(_0579_),
    .C(_0514_),
    .A(_0578_),
    .Y(_0588_));
 sg13g2_nand3b_1 _2714_ (.B(_0579_),
    .C(_0514_),
    .Y(_0589_),
    .A_N(net672));
 sg13g2_a22oi_1 _2715_ (.Y(_0590_),
    .B1(_0588_),
    .B2(_0589_),
    .A2(_0488_),
    .A1(_0472_));
 sg13g2_nand3b_1 _2716_ (.B(_0578_),
    .C(_0514_),
    .Y(_0591_),
    .A_N(net672));
 sg13g2_a21oi_1 _2717_ (.A1(_0506_),
    .A2(_0591_),
    .Y(_0592_),
    .B1(net713));
 sg13g2_nor3_1 _2718_ (.A(_0501_),
    .B(_0590_),
    .C(_0592_),
    .Y(_0593_));
 sg13g2_a21oi_1 _2719_ (.A1(_0587_),
    .A2(_0593_),
    .Y(_0594_),
    .B1(_0500_));
 sg13g2_a21oi_1 _2720_ (.A1(_0576_),
    .A2(_0594_),
    .Y(_0595_),
    .B1(_0498_));
 sg13g2_mux2_1 _2721_ (.A0(net708),
    .A1(_0575_),
    .S(_0595_),
    .X(_0596_));
 sg13g2_nor2_1 _2722_ (.A(_0595_),
    .B(_0575_),
    .Y(_0597_));
 sg13g2_a21oi_1 _2723_ (.A1(_0516_),
    .A2(_0595_),
    .Y(_0598_),
    .B1(_0597_));
 sg13g2_nand3b_1 _2724_ (.B(\u_spend.spend[15] ),
    .C(net694),
    .Y(_0599_),
    .A_N(_0598_));
 sg13g2_o21ai_1 _2725_ (.B1(_0599_),
    .Y(_0600_),
    .A1(\u_spend.spend[15] ),
    .A2(_0596_));
 sg13g2_o21ai_1 _2726_ (.B1(net756),
    .Y(_0601_),
    .A1(net694),
    .A2(\u_spend.spend[15] ));
 sg13g2_a221oi_1 _2727_ (.B2(net641),
    .C1(_0601_),
    .B1(_0600_),
    .A1(net679),
    .Y(_0149_),
    .A2(_0574_));
 sg13g2_a221oi_1 _2728_ (.B2(_1663_),
    .C1(_1393_),
    .B1(_1602_),
    .A1(_1461_),
    .Y(_0602_),
    .A2(_1653_));
 sg13g2_nand2b_2 _2730_ (.Y(_0604_),
    .B(net640),
    .A_N(_0602_));
 sg13g2_xnor2_1 _2731_ (.Y(_0605_),
    .A(\u_spend.spend[14] ),
    .B(_0594_));
 sg13g2_nand2_1 _2732_ (.Y(_0606_),
    .A(\amount_q[14] ),
    .B(_0605_));
 sg13g2_nor2_1 _2733_ (.A(net638),
    .B(_0605_),
    .Y(_0607_));
 sg13g2_inv_1 _2734_ (.Y(_0608_),
    .A(\amount_q[14] ));
 sg13g2_o21ai_1 _2735_ (.B1(_0608_),
    .Y(_0609_),
    .A1(net634),
    .A2(_0607_));
 sg13g2_o21ai_1 _2736_ (.B1(_0609_),
    .Y(_0610_),
    .A1(_0604_),
    .A2(_0606_));
 sg13g2_nor2_1 _2738_ (.A(net646),
    .B(_0610_),
    .Y(_0612_));
 sg13g2_a21oi_1 _2739_ (.A1(net647),
    .A2(\u_spend.spend[14] ),
    .Y(_0613_),
    .B1(_0612_));
 sg13g2_nor2_1 _2740_ (.A(net737),
    .B(_0613_),
    .Y(_0150_));
 sg13g2_nor2_1 _2742_ (.A(_0590_),
    .B(_0592_),
    .Y(_0615_));
 sg13g2_a221oi_1 _2743_ (.B2(_0488_),
    .C1(_0584_),
    .B1(_0472_),
    .A1(net672),
    .Y(_0616_),
    .A2(\amount_q[10] ));
 sg13g2_nand2_1 _2744_ (.Y(_0617_),
    .A(_0506_),
    .B(_0591_));
 sg13g2_nor3_1 _2745_ (.A(_0579_),
    .B(_0616_),
    .C(_0617_),
    .Y(_0618_));
 sg13g2_a21oi_1 _2746_ (.A1(\u_spend.spend[12] ),
    .A2(_0615_),
    .Y(_0619_),
    .B1(_0618_));
 sg13g2_xnor2_1 _2747_ (.Y(_0620_),
    .A(\u_spend.spend[13] ),
    .B(_0619_));
 sg13g2_nand3_1 _2748_ (.B(net642),
    .C(_0620_),
    .A(net711),
    .Y(_0621_));
 sg13g2_nor2_1 _2751_ (.A(net639),
    .B(_0620_),
    .Y(_0624_));
 sg13g2_inv_1 _2752_ (.Y(_0625_),
    .A(net711));
 sg13g2_o21ai_1 _2753_ (.B1(_0625_),
    .Y(_0626_),
    .A1(net632),
    .A2(_0624_));
 sg13g2_o21ai_1 _2754_ (.B1(_0626_),
    .Y(_0627_),
    .A1(net632),
    .A2(_0621_));
 sg13g2_nor2_1 _2755_ (.A(net648),
    .B(_0627_),
    .Y(_0628_));
 sg13g2_a21oi_1 _2756_ (.A1(net650),
    .A2(\u_spend.spend[13] ),
    .Y(_0629_),
    .B1(_0628_));
 sg13g2_nor2_1 _2757_ (.A(net737),
    .B(_0629_),
    .Y(_0151_));
 sg13g2_nand2_1 _2759_ (.Y(_0631_),
    .A(_0423_),
    .B(_0618_));
 sg13g2_and2_1 _2760_ (.A(_0615_),
    .B(_0631_),
    .X(_0632_));
 sg13g2_or2_1 _2761_ (.X(_0633_),
    .B(_0617_),
    .A(_0616_));
 sg13g2_nand3_1 _2763_ (.B(_1656_),
    .C(_0633_),
    .A(net712),
    .Y(_0635_));
 sg13g2_o21ai_1 _2764_ (.B1(_0635_),
    .Y(_0636_),
    .A1(net712),
    .A2(_0633_));
 sg13g2_nand3_1 _2765_ (.B(\u_spend.spend[12] ),
    .C(_0636_),
    .A(net694),
    .Y(_0637_));
 sg13g2_o21ai_1 _2766_ (.B1(_0637_),
    .Y(_0638_),
    .A1(\u_spend.spend[12] ),
    .A2(_0632_));
 sg13g2_o21ai_1 _2767_ (.B1(net756),
    .Y(_0639_),
    .A1(net694),
    .A2(\u_spend.spend[12] ));
 sg13g2_a221oi_1 _2768_ (.B2(_0638_),
    .C1(_0639_),
    .B1(net641),
    .A1(_0579_),
    .Y(_0152_),
    .A2(net631));
 sg13g2_and2_1 _2769_ (.A(_0472_),
    .B(_0488_),
    .X(_0640_));
 sg13g2_a21o_1 _2771_ (.A2(_0640_),
    .A1(net715),
    .B1(net672),
    .X(_0642_));
 sg13g2_o21ai_1 _2772_ (.B1(_0642_),
    .Y(_0643_),
    .A1(net715),
    .A2(_0640_));
 sg13g2_xor2_1 _2773_ (.B(_0643_),
    .A(\u_spend.spend[11] ),
    .X(_0644_));
 sg13g2_a21oi_1 _2774_ (.A1(net641),
    .A2(_0644_),
    .Y(_0645_),
    .B1(_0602_));
 sg13g2_inv_1 _2775_ (.Y(_0646_),
    .A(\amount_q[11] ));
 sg13g2_or4_1 _2776_ (.A(_0646_),
    .B(_0602_),
    .C(net636),
    .D(_0644_),
    .X(_0647_));
 sg13g2_o21ai_1 _2777_ (.B1(_0647_),
    .Y(_0648_),
    .A1(\amount_q[11] ),
    .A2(_0645_));
 sg13g2_nand2_1 _2778_ (.Y(_0649_),
    .A(net650),
    .B(\u_spend.spend[11] ));
 sg13g2_o21ai_1 _2779_ (.B1(_0649_),
    .Y(_0650_),
    .A1(net650),
    .A2(_0648_));
 sg13g2_and2_1 _2780_ (.A(net756),
    .B(_0650_),
    .X(_0153_));
 sg13g2_xor2_1 _2781_ (.B(_0640_),
    .A(net672),
    .X(_0651_));
 sg13g2_nand2_1 _2782_ (.Y(_0652_),
    .A(net715),
    .B(_0651_));
 sg13g2_nor2_1 _2783_ (.A(net638),
    .B(_0651_),
    .Y(_0653_));
 sg13g2_o21ai_1 _2784_ (.B1(_0578_),
    .Y(_0654_),
    .A1(net632),
    .A2(_0653_));
 sg13g2_o21ai_1 _2785_ (.B1(_0654_),
    .Y(_0655_),
    .A1(_0604_),
    .A2(_0652_));
 sg13g2_inv_1 _2786_ (.Y(_0656_),
    .A(_0655_));
 sg13g2_nand2_1 _2787_ (.Y(_0657_),
    .A(net696),
    .B(_0656_));
 sg13g2_nand2_1 _2788_ (.Y(_0658_),
    .A(net647),
    .B(net672));
 sg13g2_a21oi_1 _2789_ (.A1(_0657_),
    .A2(_0658_),
    .Y(_0154_),
    .B1(net737));
 sg13g2_inv_1 _2790_ (.Y(_0659_),
    .A(net700));
 sg13g2_inv_1 _2791_ (.Y(_0660_),
    .A(\u_spend.spend[8] ));
 sg13g2_nor2_1 _2792_ (.A(_0451_),
    .B(_0454_),
    .Y(_0661_));
 sg13g2_or2_1 _2793_ (.X(_0662_),
    .B(_0486_),
    .A(_0483_));
 sg13g2_o21ai_1 _2794_ (.B1(_0662_),
    .Y(_0663_),
    .A1(_0661_),
    .A2(_0470_));
 sg13g2_a221oi_1 _2796_ (.B2(_0660_),
    .C1(_0663_),
    .B1(_0659_),
    .A1(_0456_),
    .Y(_0665_),
    .A2(_0457_));
 sg13g2_nand2_1 _2797_ (.Y(_0666_),
    .A(\amount_q[8] ),
    .B(_0458_));
 sg13g2_nand3_1 _2798_ (.B(\u_spend.spend[8] ),
    .C(\amount_q[7] ),
    .A(\u_spend.spend[7] ),
    .Y(_0667_));
 sg13g2_nand3_1 _2799_ (.B(_0666_),
    .C(_0667_),
    .A(_0474_),
    .Y(_0668_));
 sg13g2_nor2_1 _2800_ (.A(_0665_),
    .B(_0668_),
    .Y(_0669_));
 sg13g2_xor2_1 _2801_ (.B(_0669_),
    .A(\u_spend.spend[9] ),
    .X(_0670_));
 sg13g2_nand2b_1 _2802_ (.Y(_0671_),
    .B(\amount_q[9] ),
    .A_N(_0670_));
 sg13g2_and2_1 _2803_ (.A(net640),
    .B(_0670_),
    .X(_0672_));
 sg13g2_o21ai_1 _2804_ (.B1(_0459_),
    .Y(_0673_),
    .A1(net634),
    .A2(_0672_));
 sg13g2_o21ai_1 _2805_ (.B1(_0673_),
    .Y(_0674_),
    .A1(_0604_),
    .A2(_0671_));
 sg13g2_nor2_1 _2807_ (.A(net646),
    .B(_0674_),
    .Y(_0676_));
 sg13g2_a21oi_1 _2808_ (.A1(net645),
    .A2(\u_spend.spend[9] ),
    .Y(_0677_),
    .B1(_0676_));
 sg13g2_nor2_1 _2809_ (.A(net735),
    .B(_0677_),
    .Y(_0155_));
 sg13g2_nand2_1 _2810_ (.Y(_0678_),
    .A(_0457_),
    .B(_0663_));
 sg13g2_o21ai_1 _2811_ (.B1(_0456_),
    .Y(_0679_),
    .A1(_0457_),
    .A2(_0663_));
 sg13g2_nand2_1 _2812_ (.Y(_0680_),
    .A(_0678_),
    .B(_0679_));
 sg13g2_xnor2_1 _2813_ (.Y(_0681_),
    .A(\u_spend.spend[8] ),
    .B(_0680_));
 sg13g2_nor2_1 _2814_ (.A(net638),
    .B(_0681_),
    .Y(_0682_));
 sg13g2_o21ai_1 _2815_ (.B1(_0659_),
    .Y(_0683_),
    .A1(net633),
    .A2(_0682_));
 sg13g2_and2_1 _2816_ (.A(\amount_q[8] ),
    .B(_0681_),
    .X(_0684_));
 sg13g2_nand3b_1 _2817_ (.B(net640),
    .C(_0684_),
    .Y(_0685_),
    .A_N(net633));
 sg13g2_nand3_1 _2818_ (.B(_0683_),
    .C(_0685_),
    .A(net696),
    .Y(_0686_));
 sg13g2_nand2_1 _2819_ (.Y(_0687_),
    .A(net645),
    .B(\u_spend.spend[8] ));
 sg13g2_a21oi_1 _2820_ (.A1(_0686_),
    .A2(_0687_),
    .Y(_0156_),
    .B1(net735));
 sg13g2_xnor2_1 _2821_ (.Y(_0688_),
    .A(_0456_),
    .B(_0663_));
 sg13g2_a21oi_1 _2822_ (.A1(net640),
    .A2(_0688_),
    .Y(_0689_),
    .B1(net633));
 sg13g2_or4_1 _2823_ (.A(_0457_),
    .B(net633),
    .C(net638),
    .D(_0688_),
    .X(_0690_));
 sg13g2_o21ai_1 _2824_ (.B1(_0690_),
    .Y(_0691_),
    .A1(\amount_q[7] ),
    .A2(_0689_));
 sg13g2_nor2_1 _2826_ (.A(net645),
    .B(_0691_),
    .Y(_0693_));
 sg13g2_a21oi_1 _2827_ (.A1(net645),
    .A2(\u_spend.spend[7] ),
    .Y(_0694_),
    .B1(_0693_));
 sg13g2_nor2_1 _2828_ (.A(net735),
    .B(_0694_),
    .Y(_0157_));
 sg13g2_a21oi_1 _2829_ (.A1(\amount_q[4] ),
    .A2(_0661_),
    .Y(_0695_),
    .B1(\u_spend.spend[4] ));
 sg13g2_nor2_1 _2830_ (.A(\amount_q[4] ),
    .B(_0661_),
    .Y(_0696_));
 sg13g2_o21ai_1 _2831_ (.B1(_0484_),
    .Y(_0697_),
    .A1(_0695_),
    .A2(_0696_));
 sg13g2_nor2b_1 _2832_ (.A(_0466_),
    .B_N(_0697_),
    .Y(_0698_));
 sg13g2_xnor2_1 _2833_ (.Y(_0699_),
    .A(_0481_),
    .B(_0698_));
 sg13g2_nand2_1 _2834_ (.Y(_0700_),
    .A(\amount_q[6] ),
    .B(_0699_));
 sg13g2_nor2_1 _2835_ (.A(net638),
    .B(_0699_),
    .Y(_0701_));
 sg13g2_o21ai_1 _2836_ (.B1(_0482_),
    .Y(_0702_),
    .A1(net634),
    .A2(_0701_));
 sg13g2_o21ai_1 _2837_ (.B1(_0702_),
    .Y(_0703_),
    .A1(_0604_),
    .A2(_0700_));
 sg13g2_nor2_1 _2839_ (.A(net646),
    .B(_0703_),
    .Y(_0705_));
 sg13g2_a21oi_1 _2840_ (.A1(net645),
    .A2(\u_spend.spend[6] ),
    .Y(_0706_),
    .B1(_0705_));
 sg13g2_nor2_1 _2841_ (.A(net735),
    .B(_0706_),
    .Y(_0158_));
 sg13g2_nor2_1 _2842_ (.A(_0695_),
    .B(_0696_),
    .Y(_0707_));
 sg13g2_xnor2_1 _2843_ (.Y(_0708_),
    .A(\u_spend.spend[5] ),
    .B(_0707_));
 sg13g2_a22oi_1 _2844_ (.Y(_0709_),
    .B1(net642),
    .B2(_0708_),
    .A2(_1662_),
    .A1(net696));
 sg13g2_nor2_1 _2845_ (.A(\amount_q[5] ),
    .B(_0709_),
    .Y(_0710_));
 sg13g2_inv_1 _2846_ (.Y(_0711_),
    .A(net703));
 sg13g2_nor4_1 _2847_ (.A(net696),
    .B(_0711_),
    .C(net638),
    .D(_0708_),
    .Y(_0712_));
 sg13g2_nor2_1 _2848_ (.A(net647),
    .B(\amount_q[5] ),
    .Y(_0713_));
 sg13g2_nor4_1 _2849_ (.A(_0711_),
    .B(_1662_),
    .C(net639),
    .D(_0708_),
    .Y(_0714_));
 sg13g2_mux2_1 _2850_ (.A0(_0713_),
    .A1(_0714_),
    .S(_1655_),
    .X(_0715_));
 sg13g2_or3_1 _2851_ (.A(_0710_),
    .B(_0712_),
    .C(_0715_),
    .X(_0716_));
 sg13g2_nand2_1 _2853_ (.Y(_0718_),
    .A(net646),
    .B(\u_spend.spend[5] ));
 sg13g2_o21ai_1 _2854_ (.B1(_0718_),
    .Y(_0719_),
    .A1(net647),
    .A2(_0716_));
 sg13g2_and2_1 _2855_ (.A(net757),
    .B(_0719_),
    .X(_0159_));
 sg13g2_inv_1 _2856_ (.Y(_0720_),
    .A(\amount_q[4] ));
 sg13g2_xnor2_1 _2857_ (.Y(_0721_),
    .A(\u_spend.spend[4] ),
    .B(_0661_));
 sg13g2_or4_1 _2858_ (.A(_0720_),
    .B(_1664_),
    .C(net636),
    .D(_0721_),
    .X(_0722_));
 sg13g2_nor3_1 _2860_ (.A(\u_cnt.v ),
    .B(_0720_),
    .C(_0721_),
    .Y(_0724_));
 sg13g2_nor3_1 _2861_ (.A(_1393_),
    .B(\amount_q[4] ),
    .C(_1653_),
    .Y(_0725_));
 sg13g2_nand2_1 _2862_ (.Y(_0726_),
    .A(_1602_),
    .B(_1626_));
 sg13g2_a22oi_1 _2863_ (.Y(_0727_),
    .B1(net641),
    .B2(_0721_),
    .A2(_1662_),
    .A1(\u_cnt.v ));
 sg13g2_nor2_1 _2864_ (.A(\amount_q[4] ),
    .B(_0727_),
    .Y(_0728_));
 sg13g2_a221oi_1 _2865_ (.B2(_0726_),
    .C1(_0728_),
    .B1(_0725_),
    .A1(net641),
    .Y(_0729_),
    .A2(_0724_));
 sg13g2_nand3_1 _2866_ (.B(_0722_),
    .C(_0729_),
    .A(\u_cnt.v ),
    .Y(_0730_));
 sg13g2_nand2_1 _2867_ (.Y(_0731_),
    .A(net647),
    .B(\u_spend.spend[4] ));
 sg13g2_a21oi_1 _2868_ (.A1(_0730_),
    .A2(_0731_),
    .Y(_0160_),
    .B1(net737));
 sg13g2_nand2_1 _2869_ (.Y(_0732_),
    .A(_0449_),
    .B(_0450_));
 sg13g2_xor2_1 _2870_ (.B(_0732_),
    .A(\u_spend.spend[3] ),
    .X(_0733_));
 sg13g2_a21oi_1 _2871_ (.A1(net640),
    .A2(_0733_),
    .Y(_0734_),
    .B1(net633));
 sg13g2_inv_1 _2872_ (.Y(_0735_),
    .A(\amount_q[3] ));
 sg13g2_or4_1 _2873_ (.A(_0735_),
    .B(net633),
    .C(net637),
    .D(_0733_),
    .X(_0736_));
 sg13g2_o21ai_1 _2874_ (.B1(_0736_),
    .Y(_0737_),
    .A1(\amount_q[3] ),
    .A2(_0734_));
 sg13g2_nor2_1 _2875_ (.A(net646),
    .B(_0737_),
    .Y(_0738_));
 sg13g2_a21oi_1 _2876_ (.A1(net645),
    .A2(\u_spend.spend[3] ),
    .Y(_0739_),
    .B1(_0738_));
 sg13g2_nor2_1 _2877_ (.A(net734),
    .B(_0739_),
    .Y(_0161_));
 sg13g2_nand2_1 _2878_ (.Y(_0740_),
    .A(\u_spend.spend[1] ),
    .B(\amount_q[1] ));
 sg13g2_a21oi_1 _2879_ (.A1(_0446_),
    .A2(_0740_),
    .Y(_0741_),
    .B1(_0445_));
 sg13g2_xor2_1 _2880_ (.B(_0741_),
    .A(\u_spend.spend[2] ),
    .X(_0742_));
 sg13g2_nor2_1 _2881_ (.A(net638),
    .B(_0742_),
    .Y(_0743_));
 sg13g2_inv_1 _2882_ (.Y(_0744_),
    .A(net706));
 sg13g2_o21ai_1 _2883_ (.B1(_0744_),
    .Y(_0745_),
    .A1(net634),
    .A2(_0743_));
 sg13g2_nand2_1 _2884_ (.Y(_0746_),
    .A(\amount_q[2] ),
    .B(_0742_));
 sg13g2_or3_1 _2885_ (.A(net633),
    .B(net637),
    .C(_0746_),
    .X(_0747_));
 sg13g2_and2_1 _2887_ (.A(_0745_),
    .B(_0747_),
    .X(_0749_));
 sg13g2_nand2_1 _2888_ (.Y(_0750_),
    .A(net696),
    .B(_0749_));
 sg13g2_nand2_1 _2889_ (.Y(_0751_),
    .A(net645),
    .B(\u_spend.spend[2] ));
 sg13g2_a21oi_1 _2890_ (.A1(_0750_),
    .A2(_0751_),
    .Y(_0162_),
    .B1(net734));
 sg13g2_xnor2_1 _2891_ (.Y(_0752_),
    .A(\u_spend.spend[1] ),
    .B(_0446_));
 sg13g2_nand2_1 _2892_ (.Y(_0753_),
    .A(\amount_q[1] ),
    .B(_0752_));
 sg13g2_or2_1 _2893_ (.X(_0754_),
    .B(_0752_),
    .A(\amount_q[1] ));
 sg13g2_o21ai_1 _2894_ (.B1(_0754_),
    .Y(_0755_),
    .A1(net634),
    .A2(_0753_));
 sg13g2_nor2b_1 _2895_ (.A(\amount_q[1] ),
    .B_N(net633),
    .Y(_0756_));
 sg13g2_a21o_1 _2896_ (.A2(_0755_),
    .A1(net640),
    .B1(_0756_),
    .X(_0757_));
 sg13g2_nor2_1 _2898_ (.A(net646),
    .B(_0757_),
    .Y(_0759_));
 sg13g2_a21oi_1 _2899_ (.A1(net645),
    .A2(\u_spend.spend[1] ),
    .Y(_0760_),
    .B1(_0759_));
 sg13g2_nor2_1 _2900_ (.A(net734),
    .B(_0760_),
    .Y(_0163_));
 sg13g2_inv_1 _2901_ (.Y(_0761_),
    .A(\u_spend.spend[0] ));
 sg13g2_o21ai_1 _2902_ (.B1(net696),
    .Y(_0762_),
    .A1(\amount_q[0] ),
    .A2(net637));
 sg13g2_or3_1 _2903_ (.A(net634),
    .B(_0446_),
    .C(net637),
    .X(_0763_));
 sg13g2_o21ai_1 _2905_ (.B1(_0763_),
    .Y(_0765_),
    .A1(\amount_q[0] ),
    .A2(_0423_));
 sg13g2_a221oi_1 _2906_ (.B2(net696),
    .C1(net735),
    .B1(_0765_),
    .A1(_0761_),
    .Y(_0164_),
    .A2(_0762_));
 sg13g2_inv_1 _2912_ (.Y(_0771_),
    .A(\u_rule.f_over ));
 sg13g2_nor3_1 _2913_ (.A(_0771_),
    .B(net674),
    .C(net673),
    .Y(_0772_));
 sg13g2_a21oi_1 _2914_ (.A1(net674),
    .A2(net673),
    .Y(_0773_),
    .B1(_0772_));
 sg13g2_nand2_1 _2915_ (.Y(_0774_),
    .A(_0771_),
    .B(net674));
 sg13g2_xnor2_1 _2916_ (.Y(_0775_),
    .A(net673),
    .B(_0774_));
 sg13g2_nand2_1 _2917_ (.Y(_0776_),
    .A(\u_rule.f_anom ),
    .B(_0775_));
 sg13g2_o21ai_1 _2918_ (.B1(_0776_),
    .Y(_0777_),
    .A1(\u_rule.f_anom ),
    .A2(_0773_));
 sg13g2_nor2b_1 _2920_ (.A(net676),
    .B_N(net303),
    .Y(_0779_));
 sg13g2_a21oi_1 _2921_ (.A1(net676),
    .A2(_0777_),
    .Y(_0780_),
    .B1(_0779_));
 sg13g2_nor2_1 _2922_ (.A(net736),
    .B(_0780_),
    .Y(_0165_));
 sg13g2_nand2b_1 _2923_ (.Y(_0781_),
    .B(net302),
    .A_N(net675));
 sg13g2_nor3_1 _2924_ (.A(\u_rule.f_over ),
    .B(\u_rule.f_rapid ),
    .C(\u_rule.f_vel ),
    .Y(_0782_));
 sg13g2_and2_1 _2925_ (.A(\u_rule.f_over ),
    .B(net674),
    .X(_0783_));
 sg13g2_nor3_1 _2926_ (.A(\u_rule.f_anom ),
    .B(_0782_),
    .C(_0783_),
    .Y(_0784_));
 sg13g2_nand2b_1 _2927_ (.Y(_0785_),
    .B(\u_rule.f_over ),
    .A_N(net674));
 sg13g2_and3_1 _2928_ (.X(_0786_),
    .A(\u_rule.f_anom ),
    .B(_0774_),
    .C(_0785_));
 sg13g2_o21ai_1 _2929_ (.B1(net676),
    .Y(_0787_),
    .A1(_0784_),
    .A2(_0786_));
 sg13g2_a21oi_1 _2930_ (.A1(_0781_),
    .A2(_0787_),
    .Y(_0166_),
    .B1(net736));
 sg13g2_inv_1 _2931_ (.Y(_0788_),
    .A(\u_rule.f_anom ));
 sg13g2_nor2b_1 _2932_ (.A(\u_rule.f_over ),
    .B_N(net673),
    .Y(_0789_));
 sg13g2_nand2b_1 _2933_ (.Y(_0790_),
    .B(_0789_),
    .A_N(net674));
 sg13g2_xnor2_1 _2934_ (.Y(_0791_),
    .A(_0788_),
    .B(_0790_));
 sg13g2_nand2_1 _2935_ (.Y(_0792_),
    .A(net675),
    .B(_0791_));
 sg13g2_o21ai_1 _2936_ (.B1(_0792_),
    .Y(_0793_),
    .A1(net675),
    .A2(net301));
 sg13g2_nor2_1 _2937_ (.A(net736),
    .B(_0793_),
    .Y(_0167_));
 sg13g2_xnor2_1 _2938_ (.Y(_0794_),
    .A(\u_rule.f_rapid ),
    .B(_0789_));
 sg13g2_o21ai_1 _2939_ (.B1(net245),
    .Y(_0795_),
    .A1(net675),
    .A2(net300));
 sg13g2_a21oi_1 _2940_ (.A1(net676),
    .A2(_0794_),
    .Y(_0168_),
    .B1(_0795_));
 sg13g2_xnor2_1 _2941_ (.Y(_0796_),
    .A(\u_rule.f_over ),
    .B(\u_rule.f_vel ));
 sg13g2_o21ai_1 _2942_ (.B1(net245),
    .Y(_0797_),
    .A1(net675),
    .A2(net299));
 sg13g2_a21oi_1 _2943_ (.A1(\u_rule.a_v ),
    .A2(_0796_),
    .Y(_0169_),
    .B1(_0797_));
 sg13g2_nand2_1 _2944_ (.Y(_0798_),
    .A(net675),
    .B(\u_rule.f_anom ));
 sg13g2_nand2b_1 _2945_ (.Y(_0799_),
    .B(net298),
    .A_N(net675));
 sg13g2_a21oi_1 _2946_ (.A1(_0798_),
    .A2(_0799_),
    .Y(_0170_),
    .B1(net736));
 sg13g2_inv_1 _2947_ (.Y(_0800_),
    .A(net297));
 sg13g2_nor3_1 _2948_ (.A(\u_rule.a_v ),
    .B(_0800_),
    .C(net736),
    .Y(_0171_));
 sg13g2_nor2b_1 _2949_ (.A(\u_rule.f_anom ),
    .B_N(net676),
    .Y(_0801_));
 sg13g2_o21ai_1 _2950_ (.B1(net245),
    .Y(_0802_),
    .A1(\u_rule.a_v ),
    .A2(net295));
 sg13g2_a21oi_1 _2951_ (.A1(_0782_),
    .A2(_0801_),
    .Y(_0172_),
    .B1(_0802_));
 sg13g2_nand2_1 _2952_ (.Y(_0803_),
    .A(net750),
    .B(net272));
 sg13g2_nand2b_1 _2953_ (.Y(_0804_),
    .B(\dt_q[11] ),
    .A_N(net749));
 sg13g2_a21oi_1 _2954_ (.A1(_0803_),
    .A2(_0804_),
    .Y(_0173_),
    .B1(net738));
 sg13g2_nand2_1 _2955_ (.Y(_0805_),
    .A(net751),
    .B(net236));
 sg13g2_nand2b_1 _2957_ (.Y(_0807_),
    .B(\cat_q[7] ),
    .A_N(net751));
 sg13g2_a21oi_1 _2959_ (.A1(_0805_),
    .A2(_0807_),
    .Y(_0174_),
    .B1(net718));
 sg13g2_nand2_1 _2960_ (.Y(_0809_),
    .A(net203),
    .B(net747));
 sg13g2_nand2b_1 _2961_ (.Y(_0810_),
    .B(\amount_q[15] ),
    .A_N(net746));
 sg13g2_a21oi_1 _2962_ (.A1(_0809_),
    .A2(_0810_),
    .Y(_0175_),
    .B1(net740));
 sg13g2_and2_1 _2963_ (.A(net749),
    .B(net756),
    .X(_0176_));
 sg13g2_nand2_1 _2964_ (.Y(_0811_),
    .A(_1393_),
    .B(\u_win.h_val[3] ));
 sg13g2_nand3_1 _2965_ (.B(\u_win.h_val[2] ),
    .C(_1656_),
    .A(net679),
    .Y(_0812_));
 sg13g2_a21oi_1 _2966_ (.A1(_0811_),
    .A2(_0812_),
    .Y(_0177_),
    .B1(net728));
 sg13g2_nand2_1 _2967_ (.Y(_0813_),
    .A(net688),
    .B(\u_win.h_cat2[7] ));
 sg13g2_nand2_1 _2968_ (.Y(_0814_),
    .A(net665),
    .B(\u_win.h_cat3[7] ));
 sg13g2_a21oi_1 _2969_ (.A1(_0813_),
    .A2(_0814_),
    .Y(_0178_),
    .B1(net721));
 sg13g2_nand2_1 _2970_ (.Y(_0815_),
    .A(net688),
    .B(\u_win.h_cat1[7] ));
 sg13g2_nand2_1 _2971_ (.Y(_0816_),
    .A(net665),
    .B(\u_win.h_cat2[7] ));
 sg13g2_a21oi_1 _2972_ (.A1(_0815_),
    .A2(_0816_),
    .Y(_0179_),
    .B1(net721));
 sg13g2_nand2_1 _2973_ (.Y(_0817_),
    .A(net688),
    .B(\u_win.h_cat0[7] ));
 sg13g2_nand2_1 _2974_ (.Y(_0818_),
    .A(net665),
    .B(\u_win.h_cat1[7] ));
 sg13g2_a21oi_1 _2975_ (.A1(_0817_),
    .A2(_0818_),
    .Y(_0180_),
    .B1(net721));
 sg13g2_nand2_1 _2976_ (.Y(_0819_),
    .A(net688),
    .B(\cat_q[7] ));
 sg13g2_nand2_1 _2977_ (.Y(_0820_),
    .A(net665),
    .B(\u_win.h_cat0[7] ));
 sg13g2_a21oi_1 _2978_ (.A1(_0819_),
    .A2(_0820_),
    .Y(_0181_),
    .B1(net721));
 sg13g2_nand2_1 _2979_ (.Y(_0821_),
    .A(net685),
    .B(\u_win.h_amt2[15] ));
 sg13g2_nand2_1 _2980_ (.Y(_0822_),
    .A(net658),
    .B(\u_win.h_amt3[15] ));
 sg13g2_a21oi_1 _2981_ (.A1(_0821_),
    .A2(_0822_),
    .Y(_0182_),
    .B1(net731));
 sg13g2_nand2_1 _2982_ (.Y(_0823_),
    .A(net684),
    .B(\u_win.h_amt1[15] ));
 sg13g2_nand2_1 _2983_ (.Y(_0824_),
    .A(net657),
    .B(\u_win.h_amt2[15] ));
 sg13g2_a21oi_1 _2984_ (.A1(_0823_),
    .A2(_0824_),
    .Y(_0183_),
    .B1(net732));
 sg13g2_nand2_1 _2985_ (.Y(_0825_),
    .A(net685),
    .B(\u_win.h_amt0[15] ));
 sg13g2_nand2_1 _2986_ (.Y(_0826_),
    .A(net657),
    .B(\u_win.h_amt1[15] ));
 sg13g2_a21oi_1 _2987_ (.A1(_0825_),
    .A2(_0826_),
    .Y(_0184_),
    .B1(net731));
 sg13g2_nand2_1 _2988_ (.Y(_0827_),
    .A(net685),
    .B(net708));
 sg13g2_nand2_1 _2989_ (.Y(_0828_),
    .A(net658),
    .B(\u_win.h_amt0[15] ));
 sg13g2_a21oi_1 _2990_ (.A1(_0827_),
    .A2(_0828_),
    .Y(_0185_),
    .B1(net731));
 sg13g2_nand2_1 _2991_ (.Y(_0829_),
    .A(net757),
    .B(net626));
 sg13g2_nand2_1 _2992_ (.Y(_0830_),
    .A(_1455_),
    .B(_1456_));
 sg13g2_xor2_1 _2993_ (.B(_0830_),
    .A(\dt_q[11] ),
    .X(_0831_));
 sg13g2_a21oi_1 _2994_ (.A1(net695),
    .A2(_0831_),
    .Y(_0832_),
    .B1(\u_win.elapsed[11] ));
 sg13g2_nor2_1 _2995_ (.A(_0829_),
    .B(_0832_),
    .Y(_0186_));
 sg13g2_nand3_1 _2996_ (.B(\u_cnt.count[6] ),
    .C(_0403_),
    .A(net677),
    .Y(_0833_));
 sg13g2_a21oi_1 _2997_ (.A1(_0408_),
    .A2(_0833_),
    .Y(_0187_),
    .B1(_0829_));
 sg13g2_a21oi_1 _2998_ (.A1(_0442_),
    .A2(_0528_),
    .Y(_0834_),
    .B1(\u_spend.spend[23] ));
 sg13g2_nor2_1 _2999_ (.A(net649),
    .B(_0834_),
    .Y(_0835_));
 sg13g2_a22oi_1 _3000_ (.Y(_0836_),
    .B1(net629),
    .B2(_0835_),
    .A2(net649),
    .A1(\u_spend.spend[23] ));
 sg13g2_nor2_1 _3001_ (.A(_1271_),
    .B(_0836_),
    .Y(_0188_));
 sg13g2_xor2_1 _3002_ (.B(net227),
    .A(net700),
    .X(_0837_));
 sg13g2_nand2b_1 _3003_ (.Y(_0838_),
    .B(net711),
    .A_N(net217));
 sg13g2_nand2b_1 _3004_ (.Y(_0839_),
    .B(net699),
    .A_N(net228));
 sg13g2_xnor2_1 _3005_ (.Y(_0840_),
    .A(net713),
    .B(net216));
 sg13g2_nand3_1 _3006_ (.B(_0839_),
    .C(_0840_),
    .A(_0838_),
    .Y(_0841_));
 sg13g2_xnor2_1 _3007_ (.Y(_0842_),
    .A(net708),
    .B(net219));
 sg13g2_nand2_1 _3008_ (.Y(_0843_),
    .A(_0625_),
    .B(net217));
 sg13g2_nand2b_1 _3009_ (.Y(_0844_),
    .B(\amount_q[14] ),
    .A_N(net218));
 sg13g2_nand2_1 _3010_ (.Y(_0845_),
    .A(_0608_),
    .B(net218));
 sg13g2_nand4_1 _3011_ (.B(_0843_),
    .C(_0844_),
    .A(_0842_),
    .Y(_0846_),
    .D(_0845_));
 sg13g2_nor2b_1 _3012_ (.A(net715),
    .B_N(net214),
    .Y(_0847_));
 sg13g2_nor2_1 _3013_ (.A(_0578_),
    .B(net214),
    .Y(_0848_));
 sg13g2_nor2b_1 _3014_ (.A(net215),
    .B_N(net714),
    .Y(_0849_));
 sg13g2_nand2b_1 _3015_ (.Y(_0850_),
    .B(net215),
    .A_N(net714));
 sg13g2_nand2b_1 _3016_ (.Y(_0851_),
    .B(_0850_),
    .A_N(_0849_));
 sg13g2_nor2b_1 _3017_ (.A(net699),
    .B_N(net228),
    .Y(_0852_));
 sg13g2_nor4_1 _3018_ (.A(_0847_),
    .B(_0848_),
    .C(_0851_),
    .D(_0852_),
    .Y(_0853_));
 sg13g2_nand2b_1 _3019_ (.Y(_0854_),
    .B(_0853_),
    .A_N(_0846_));
 sg13g2_nor3_1 _3020_ (.A(_0837_),
    .B(_0841_),
    .C(_0854_),
    .Y(_0855_));
 sg13g2_xor2_1 _3021_ (.B(net222),
    .A(net705),
    .X(_0856_));
 sg13g2_inv_1 _3022_ (.Y(_0857_),
    .A(net220));
 sg13g2_inv_1 _3023_ (.Y(_0858_),
    .A(\amount_q[0] ));
 sg13g2_nand2_1 _3024_ (.Y(_0859_),
    .A(_0858_),
    .B(net213));
 sg13g2_o21ai_1 _3025_ (.B1(_0859_),
    .Y(_0860_),
    .A1(net707),
    .A2(_0857_));
 sg13g2_xor2_1 _3026_ (.B(net221),
    .A(net706),
    .X(_0861_));
 sg13g2_nor2b_1 _3027_ (.A(net704),
    .B_N(net223),
    .Y(_0862_));
 sg13g2_nor2_1 _3028_ (.A(_0720_),
    .B(net223),
    .Y(_0863_));
 sg13g2_or4_1 _3029_ (.A(_0860_),
    .B(_0861_),
    .C(_0862_),
    .D(_0863_),
    .X(_0864_));
 sg13g2_inv_1 _3030_ (.Y(_0865_),
    .A(net225));
 sg13g2_nand2_1 _3031_ (.Y(_0866_),
    .A(\amount_q[6] ),
    .B(_0865_));
 sg13g2_a22oi_1 _3032_ (.Y(_0867_),
    .B1(net224),
    .B2(_0711_),
    .A2(net226),
    .A1(_0457_));
 sg13g2_inv_1 _3033_ (.Y(_0868_),
    .A(net226));
 sg13g2_a22oi_1 _3034_ (.Y(_0869_),
    .B1(net225),
    .B2(_0482_),
    .A2(_0868_),
    .A1(net701));
 sg13g2_nand3_1 _3035_ (.B(_0867_),
    .C(_0869_),
    .A(_0866_),
    .Y(_0870_));
 sg13g2_nand2b_1 _3036_ (.Y(_0871_),
    .B(\amount_q[0] ),
    .A_N(net213));
 sg13g2_nand2b_1 _3037_ (.Y(_0872_),
    .B(net703),
    .A_N(net224));
 sg13g2_nand2_1 _3038_ (.Y(_0873_),
    .A(net707),
    .B(_0857_));
 sg13g2_nand3_1 _3039_ (.B(_0872_),
    .C(_0873_),
    .A(_0871_),
    .Y(_0874_));
 sg13g2_nor4_1 _3040_ (.A(_0856_),
    .B(_0864_),
    .C(_0870_),
    .D(_0874_),
    .Y(_0875_));
 sg13g2_o21ai_1 _3041_ (.B1(_0516_),
    .Y(_0876_),
    .A1(net219),
    .A2(_0844_));
 sg13g2_nand2_1 _3042_ (.Y(_0877_),
    .A(net219),
    .B(_0844_));
 sg13g2_o21ai_1 _3043_ (.B1(_0839_),
    .Y(_0878_),
    .A1(_0659_),
    .A2(net227));
 sg13g2_a221oi_1 _3044_ (.B2(_0878_),
    .C1(_0849_),
    .B1(_0853_),
    .A1(_0848_),
    .Y(_0879_),
    .A2(_0850_));
 sg13g2_o21ai_1 _3045_ (.B1(_0579_),
    .Y(_0880_),
    .A1(net216),
    .A2(_0879_));
 sg13g2_nand2_1 _3046_ (.Y(_0881_),
    .A(net216),
    .B(_0879_));
 sg13g2_nand2_1 _3047_ (.Y(_0882_),
    .A(_0880_),
    .B(_0881_));
 sg13g2_a21oi_1 _3048_ (.A1(_0838_),
    .A2(_0882_),
    .Y(_0883_),
    .B1(_0846_));
 sg13g2_a21oi_1 _3049_ (.A1(_0876_),
    .A2(_0877_),
    .Y(_0884_),
    .B1(_0883_));
 sg13g2_inv_1 _3050_ (.Y(_0885_),
    .A(net221));
 sg13g2_a22oi_1 _3051_ (.Y(_0886_),
    .B1(_0860_),
    .B2(_0873_),
    .A2(net221),
    .A1(_0744_));
 sg13g2_a21oi_1 _3052_ (.A1(net706),
    .A2(_0885_),
    .Y(_0887_),
    .B1(_0886_));
 sg13g2_nor2_1 _3053_ (.A(net222),
    .B(_0887_),
    .Y(_0888_));
 sg13g2_nor2_1 _3054_ (.A(net705),
    .B(_0888_),
    .Y(_0889_));
 sg13g2_a21oi_1 _3055_ (.A1(net222),
    .A2(_0887_),
    .Y(_0890_),
    .B1(_0889_));
 sg13g2_nand2_1 _3056_ (.Y(_0891_),
    .A(_0720_),
    .B(net223));
 sg13g2_o21ai_1 _3057_ (.B1(_0891_),
    .Y(_0892_),
    .A1(_0863_),
    .A2(_0890_));
 sg13g2_a21oi_1 _3058_ (.A1(_0872_),
    .A2(_0892_),
    .Y(_0893_),
    .B1(_0870_));
 sg13g2_a22oi_1 _3059_ (.Y(_0894_),
    .B1(_0865_),
    .B2(\amount_q[6] ),
    .A2(_0868_),
    .A1(net701));
 sg13g2_a21oi_1 _3060_ (.A1(_0457_),
    .A2(net226),
    .Y(_0895_),
    .B1(_0894_));
 sg13g2_o21ai_1 _3061_ (.B1(_0855_),
    .Y(_0896_),
    .A1(_0893_),
    .A2(_0895_));
 sg13g2_nand2_1 _3062_ (.Y(_0897_),
    .A(net695),
    .B(net245));
 sg13g2_a221oi_1 _3063_ (.B2(_0896_),
    .C1(_0897_),
    .B1(_0884_),
    .A1(_0855_),
    .Y(_0189_),
    .A2(_0875_));
 sg13g2_nor2_1 _3064_ (.A(\dt_q[11] ),
    .B(net697),
    .Y(_0898_));
 sg13g2_nor4_1 _3065_ (.A(\dt_q[4] ),
    .B(\dt_q[5] ),
    .C(\dt_q[6] ),
    .D(\dt_q[7] ),
    .Y(_0899_));
 sg13g2_nor4_1 _3066_ (.A(\dt_q[8] ),
    .B(\dt_q[9] ),
    .C(\dt_q[10] ),
    .D(_1271_),
    .Y(_0900_));
 sg13g2_xnor2_1 _3067_ (.Y(_0901_),
    .A(net714),
    .B(\u_win.h_amt2[11] ));
 sg13g2_xnor2_1 _3068_ (.Y(_0902_),
    .A(net705),
    .B(\u_win.h_amt2[3] ));
 sg13g2_xnor2_1 _3069_ (.Y(_0903_),
    .A(net710),
    .B(\u_win.h_amt2[13] ));
 sg13g2_xnor2_1 _3070_ (.Y(_0904_),
    .A(\amount_q[12] ),
    .B(\u_win.h_amt2[12] ));
 sg13g2_nand4_1 _3071_ (.B(_0902_),
    .C(_0903_),
    .A(_0901_),
    .Y(_0905_),
    .D(_0904_));
 sg13g2_xnor2_1 _3072_ (.Y(_0906_),
    .A(\cat_q[6] ),
    .B(\u_win.h_cat2[6] ));
 sg13g2_xnor2_1 _3073_ (.Y(_0907_),
    .A(\cat_q[5] ),
    .B(\u_win.h_cat2[5] ));
 sg13g2_xnor2_1 _3074_ (.Y(_0908_),
    .A(\cat_q[2] ),
    .B(\u_win.h_cat2[2] ));
 sg13g2_xnor2_1 _3075_ (.Y(_0909_),
    .A(\amount_q[15] ),
    .B(\u_win.h_amt2[15] ));
 sg13g2_nand4_1 _3076_ (.B(_0907_),
    .C(_0908_),
    .A(_0906_),
    .Y(_0910_),
    .D(_0909_));
 sg13g2_xor2_1 _3077_ (.B(\u_win.h_cat2[3] ),
    .A(\cat_q[3] ),
    .X(_0911_));
 sg13g2_xor2_1 _3078_ (.B(\u_win.h_amt2[10] ),
    .A(net715),
    .X(_0912_));
 sg13g2_xor2_1 _3079_ (.B(\u_win.h_amt2[4] ),
    .A(net704),
    .X(_0913_));
 sg13g2_xor2_1 _3080_ (.B(\u_win.h_amt2[0] ),
    .A(net716),
    .X(_0914_));
 sg13g2_nor4_1 _3081_ (.A(_0911_),
    .B(_0912_),
    .C(_0913_),
    .D(_0914_),
    .Y(_0915_));
 sg13g2_xnor2_1 _3082_ (.Y(_0916_),
    .A(net699),
    .B(\u_win.h_amt2[9] ));
 sg13g2_nand3_1 _3083_ (.B(_0915_),
    .C(_0916_),
    .A(\u_win.h_val[2] ),
    .Y(_0917_));
 sg13g2_nor3_1 _3084_ (.A(_0905_),
    .B(_0910_),
    .C(_0917_),
    .Y(_0918_));
 sg13g2_xor2_1 _3085_ (.B(\u_win.h_cat2[4] ),
    .A(\cat_q[4] ),
    .X(_0919_));
 sg13g2_xor2_1 _3086_ (.B(\u_win.h_cat2[0] ),
    .A(\cat_q[0] ),
    .X(_0920_));
 sg13g2_xor2_1 _3087_ (.B(\u_win.h_amt2[6] ),
    .A(net702),
    .X(_0921_));
 sg13g2_nor3_1 _3088_ (.A(_0919_),
    .B(_0920_),
    .C(_0921_),
    .Y(_0922_));
 sg13g2_xor2_1 _3089_ (.B(\u_win.h_amt2[14] ),
    .A(net709),
    .X(_0923_));
 sg13g2_xor2_1 _3090_ (.B(\u_win.h_cat2[7] ),
    .A(\cat_q[7] ),
    .X(_0924_));
 sg13g2_xor2_1 _3091_ (.B(\u_win.h_cat2[1] ),
    .A(\cat_q[1] ),
    .X(_0925_));
 sg13g2_xor2_1 _3092_ (.B(\u_win.h_amt2[7] ),
    .A(net701),
    .X(_0926_));
 sg13g2_nor4_1 _3093_ (.A(_0923_),
    .B(_0924_),
    .C(_0925_),
    .D(_0926_),
    .Y(_0927_));
 sg13g2_xor2_1 _3094_ (.B(\u_win.h_amt2[5] ),
    .A(net703),
    .X(_0928_));
 sg13g2_xor2_1 _3095_ (.B(\u_win.h_amt2[2] ),
    .A(net706),
    .X(_0929_));
 sg13g2_xor2_1 _3096_ (.B(\u_win.h_amt2[8] ),
    .A(net700),
    .X(_0930_));
 sg13g2_xor2_1 _3097_ (.B(\u_win.h_amt2[1] ),
    .A(net707),
    .X(_0931_));
 sg13g2_nor4_1 _3098_ (.A(_0928_),
    .B(_0929_),
    .C(_0930_),
    .D(_0931_),
    .Y(_0932_));
 sg13g2_nand4_1 _3099_ (.B(_0922_),
    .C(_0927_),
    .A(_0918_),
    .Y(_0933_),
    .D(_0932_));
 sg13g2_xnor2_1 _3100_ (.Y(_0934_),
    .A(\u_win.h_amt0[10] ),
    .B(net715));
 sg13g2_xnor2_1 _3101_ (.Y(_0935_),
    .A(\u_win.h_amt0[2] ),
    .B(net706));
 sg13g2_xnor2_1 _3102_ (.Y(_0936_),
    .A(\u_win.h_cat0[5] ),
    .B(\cat_q[5] ));
 sg13g2_xnor2_1 _3103_ (.Y(_0937_),
    .A(\u_win.h_cat0[1] ),
    .B(\cat_q[1] ));
 sg13g2_nand4_1 _3104_ (.B(_0935_),
    .C(_0936_),
    .A(_0934_),
    .Y(_0938_),
    .D(_0937_));
 sg13g2_xnor2_1 _3105_ (.Y(_0939_),
    .A(\u_win.h_cat0[6] ),
    .B(\cat_q[6] ));
 sg13g2_xnor2_1 _3106_ (.Y(_0940_),
    .A(\u_win.h_cat0[4] ),
    .B(\cat_q[4] ));
 sg13g2_xnor2_1 _3107_ (.Y(_0941_),
    .A(\u_win.h_amt0[13] ),
    .B(net710));
 sg13g2_xnor2_1 _3108_ (.Y(_0942_),
    .A(\u_win.h_amt0[15] ),
    .B(net708));
 sg13g2_nand4_1 _3109_ (.B(_0940_),
    .C(_0941_),
    .A(_0939_),
    .Y(_0943_),
    .D(_0942_));
 sg13g2_xor2_1 _3110_ (.B(\cat_q[0] ),
    .A(\u_win.h_cat0[0] ),
    .X(_0944_));
 sg13g2_xor2_1 _3111_ (.B(net714),
    .A(\u_win.h_amt0[11] ),
    .X(_0945_));
 sg13g2_xor2_1 _3112_ (.B(\amount_q[12] ),
    .A(\u_win.h_amt0[12] ),
    .X(_0946_));
 sg13g2_xor2_1 _3113_ (.B(net716),
    .A(\u_win.h_amt0[0] ),
    .X(_0947_));
 sg13g2_nor4_1 _3114_ (.A(_0944_),
    .B(_0945_),
    .C(_0946_),
    .D(_0947_),
    .Y(_0948_));
 sg13g2_xnor2_1 _3115_ (.Y(_0949_),
    .A(\u_win.h_amt0[9] ),
    .B(net699));
 sg13g2_nand3_1 _3116_ (.B(_0948_),
    .C(_0949_),
    .A(\u_win.h_val[0] ),
    .Y(_0950_));
 sg13g2_nor3_1 _3117_ (.A(_0938_),
    .B(_0943_),
    .C(_0950_),
    .Y(_0951_));
 sg13g2_xor2_1 _3118_ (.B(\cat_q[3] ),
    .A(\u_win.h_cat0[3] ),
    .X(_0952_));
 sg13g2_xor2_1 _3119_ (.B(\cat_q[2] ),
    .A(\u_win.h_cat0[2] ),
    .X(_0953_));
 sg13g2_xor2_1 _3120_ (.B(net701),
    .A(\u_win.h_amt0[7] ),
    .X(_0954_));
 sg13g2_nor3_1 _3121_ (.A(_0952_),
    .B(_0953_),
    .C(_0954_),
    .Y(_0955_));
 sg13g2_xor2_1 _3122_ (.B(net703),
    .A(\u_win.h_amt0[5] ),
    .X(_0956_));
 sg13g2_xor2_1 _3123_ (.B(net705),
    .A(\u_win.h_amt0[3] ),
    .X(_0957_));
 sg13g2_xor2_1 _3124_ (.B(net704),
    .A(\u_win.h_amt0[4] ),
    .X(_0958_));
 sg13g2_xor2_1 _3125_ (.B(net707),
    .A(\u_win.h_amt0[1] ),
    .X(_0959_));
 sg13g2_nor4_1 _3126_ (.A(_0956_),
    .B(_0957_),
    .C(_0958_),
    .D(_0959_),
    .Y(_0960_));
 sg13g2_xor2_1 _3127_ (.B(net702),
    .A(\u_win.h_amt0[6] ),
    .X(_0961_));
 sg13g2_xor2_1 _3128_ (.B(\cat_q[7] ),
    .A(\u_win.h_cat0[7] ),
    .X(_0962_));
 sg13g2_xor2_1 _3129_ (.B(net709),
    .A(\u_win.h_amt0[14] ),
    .X(_0963_));
 sg13g2_xor2_1 _3130_ (.B(net700),
    .A(\u_win.h_amt0[8] ),
    .X(_0964_));
 sg13g2_nor4_1 _3131_ (.A(_0961_),
    .B(_0962_),
    .C(_0963_),
    .D(_0964_),
    .Y(_0965_));
 sg13g2_nand4_1 _3132_ (.B(_0955_),
    .C(_0960_),
    .A(_0951_),
    .Y(_0966_),
    .D(_0965_));
 sg13g2_xnor2_1 _3133_ (.Y(_0967_),
    .A(net710),
    .B(\u_win.h_amt1[13] ));
 sg13g2_xnor2_1 _3134_ (.Y(_0968_),
    .A(net705),
    .B(\u_win.h_amt1[3] ));
 sg13g2_xnor2_1 _3135_ (.Y(_0969_),
    .A(\cat_q[3] ),
    .B(\u_win.h_cat1[3] ));
 sg13g2_xnor2_1 _3136_ (.Y(_0970_),
    .A(net714),
    .B(\u_win.h_amt1[11] ));
 sg13g2_nand4_1 _3137_ (.B(_0968_),
    .C(_0969_),
    .A(_0967_),
    .Y(_0971_),
    .D(_0970_));
 sg13g2_xnor2_1 _3138_ (.Y(_0972_),
    .A(\cat_q[6] ),
    .B(\u_win.h_cat1[6] ));
 sg13g2_xnor2_1 _3139_ (.Y(_0973_),
    .A(\cat_q[5] ),
    .B(\u_win.h_cat1[5] ));
 sg13g2_xnor2_1 _3140_ (.Y(_0974_),
    .A(\cat_q[2] ),
    .B(\u_win.h_cat1[2] ));
 sg13g2_xnor2_1 _3141_ (.Y(_0975_),
    .A(\amount_q[15] ),
    .B(\u_win.h_amt1[15] ));
 sg13g2_nand4_1 _3142_ (.B(_0973_),
    .C(_0974_),
    .A(_0972_),
    .Y(_0976_),
    .D(_0975_));
 sg13g2_xor2_1 _3143_ (.B(\u_win.h_amt1[6] ),
    .A(net702),
    .X(_0977_));
 sg13g2_xor2_1 _3144_ (.B(\u_win.h_amt1[5] ),
    .A(net703),
    .X(_0978_));
 sg13g2_xor2_1 _3145_ (.B(\u_win.h_amt1[8] ),
    .A(net700),
    .X(_0979_));
 sg13g2_xor2_1 _3146_ (.B(\u_win.h_amt1[0] ),
    .A(net716),
    .X(_0980_));
 sg13g2_nor4_1 _3147_ (.A(_0977_),
    .B(_0978_),
    .C(_0979_),
    .D(_0980_),
    .Y(_0981_));
 sg13g2_xnor2_1 _3148_ (.Y(_0982_),
    .A(net701),
    .B(\u_win.h_amt1[7] ));
 sg13g2_nand3_1 _3149_ (.B(_0981_),
    .C(_0982_),
    .A(\u_win.h_val[1] ),
    .Y(_0983_));
 sg13g2_nor3_1 _3150_ (.A(_0971_),
    .B(_0976_),
    .C(_0983_),
    .Y(_0984_));
 sg13g2_xor2_1 _3151_ (.B(\u_win.h_cat1[0] ),
    .A(\cat_q[0] ),
    .X(_0985_));
 sg13g2_xor2_1 _3152_ (.B(\u_win.h_amt1[14] ),
    .A(net709),
    .X(_0986_));
 sg13g2_xor2_1 _3153_ (.B(\u_win.h_amt1[4] ),
    .A(net704),
    .X(_0987_));
 sg13g2_nor3_1 _3154_ (.A(_0985_),
    .B(_0986_),
    .C(_0987_),
    .Y(_0988_));
 sg13g2_xor2_1 _3155_ (.B(\u_win.h_amt1[2] ),
    .A(net706),
    .X(_0989_));
 sg13g2_xor2_1 _3156_ (.B(\u_win.h_cat1[7] ),
    .A(\cat_q[7] ),
    .X(_0990_));
 sg13g2_xor2_1 _3157_ (.B(\u_win.h_cat1[1] ),
    .A(\cat_q[1] ),
    .X(_0991_));
 sg13g2_xor2_1 _3158_ (.B(\u_win.h_amt1[12] ),
    .A(\amount_q[12] ),
    .X(_0992_));
 sg13g2_nor4_1 _3159_ (.A(_0989_),
    .B(_0990_),
    .C(_0991_),
    .D(_0992_),
    .Y(_0993_));
 sg13g2_xor2_1 _3160_ (.B(\u_win.h_amt1[9] ),
    .A(net699),
    .X(_0994_));
 sg13g2_xor2_1 _3161_ (.B(\u_win.h_amt1[1] ),
    .A(net707),
    .X(_0995_));
 sg13g2_xor2_1 _3162_ (.B(\u_win.h_cat1[4] ),
    .A(\cat_q[4] ),
    .X(_0996_));
 sg13g2_xor2_1 _3163_ (.B(\u_win.h_amt1[10] ),
    .A(net715),
    .X(_0997_));
 sg13g2_nor4_1 _3164_ (.A(_0994_),
    .B(_0995_),
    .C(_0996_),
    .D(_0997_),
    .Y(_0998_));
 sg13g2_nand4_1 _3165_ (.B(_0988_),
    .C(_0993_),
    .A(_0984_),
    .Y(_0999_),
    .D(_0998_));
 sg13g2_xnor2_1 _3166_ (.Y(_1000_),
    .A(\cat_q[2] ),
    .B(\u_win.h_cat3[2] ));
 sg13g2_xnor2_1 _3167_ (.Y(_1001_),
    .A(net708),
    .B(\u_win.h_amt3[15] ));
 sg13g2_xnor2_1 _3168_ (.Y(_1002_),
    .A(\cat_q[1] ),
    .B(\u_win.h_cat3[1] ));
 sg13g2_xnor2_1 _3169_ (.Y(_1003_),
    .A(net709),
    .B(\u_win.h_amt3[14] ));
 sg13g2_nand4_1 _3170_ (.B(_1001_),
    .C(_1002_),
    .A(_1000_),
    .Y(_1004_),
    .D(_1003_));
 sg13g2_xnor2_1 _3171_ (.Y(_1005_),
    .A(\cat_q[4] ),
    .B(\u_win.h_cat3[4] ));
 sg13g2_xnor2_1 _3172_ (.Y(_1006_),
    .A(\amount_q[10] ),
    .B(\u_win.h_amt3[10] ));
 sg13g2_xnor2_1 _3173_ (.Y(_1007_),
    .A(\cat_q[5] ),
    .B(\u_win.h_cat3[5] ));
 sg13g2_xnor2_1 _3174_ (.Y(_1008_),
    .A(net704),
    .B(\u_win.h_amt3[4] ));
 sg13g2_nand4_1 _3175_ (.B(_1006_),
    .C(_1007_),
    .A(_1005_),
    .Y(_1009_),
    .D(_1008_));
 sg13g2_xor2_1 _3176_ (.B(\u_win.h_amt3[8] ),
    .A(net700),
    .X(_1010_));
 sg13g2_xor2_1 _3177_ (.B(\u_win.h_amt3[2] ),
    .A(\amount_q[2] ),
    .X(_1011_));
 sg13g2_xor2_1 _3178_ (.B(\u_win.h_amt3[1] ),
    .A(net707),
    .X(_1012_));
 sg13g2_xor2_1 _3179_ (.B(\u_win.h_cat3[7] ),
    .A(\cat_q[7] ),
    .X(_1013_));
 sg13g2_nor4_1 _3180_ (.A(_1010_),
    .B(_1011_),
    .C(_1012_),
    .D(_1013_),
    .Y(_1014_));
 sg13g2_xnor2_1 _3181_ (.Y(_1015_),
    .A(net703),
    .B(\u_win.h_amt3[5] ));
 sg13g2_nand3_1 _3182_ (.B(_1014_),
    .C(_1015_),
    .A(\u_win.h_val[3] ),
    .Y(_1016_));
 sg13g2_nor3_1 _3183_ (.A(_1004_),
    .B(_1009_),
    .C(_1016_),
    .Y(_1017_));
 sg13g2_xor2_1 _3184_ (.B(\u_win.h_amt3[11] ),
    .A(net714),
    .X(_1018_));
 sg13g2_xor2_1 _3185_ (.B(\u_win.h_amt3[12] ),
    .A(\amount_q[12] ),
    .X(_1019_));
 sg13g2_xor2_1 _3186_ (.B(\u_win.h_cat3[6] ),
    .A(\cat_q[6] ),
    .X(_1020_));
 sg13g2_nor3_1 _3187_ (.A(_1018_),
    .B(_1019_),
    .C(_1020_),
    .Y(_1021_));
 sg13g2_xor2_1 _3188_ (.B(\u_win.h_amt3[13] ),
    .A(net710),
    .X(_1022_));
 sg13g2_xor2_1 _3189_ (.B(\u_win.h_amt3[3] ),
    .A(net705),
    .X(_1023_));
 sg13g2_xor2_1 _3190_ (.B(\u_win.h_cat3[3] ),
    .A(\cat_q[3] ),
    .X(_1024_));
 sg13g2_xor2_1 _3191_ (.B(\u_win.h_cat3[0] ),
    .A(\cat_q[0] ),
    .X(_1025_));
 sg13g2_nor4_1 _3192_ (.A(_1022_),
    .B(_1023_),
    .C(_1024_),
    .D(_1025_),
    .Y(_1026_));
 sg13g2_xor2_1 _3193_ (.B(\u_win.h_amt3[9] ),
    .A(net699),
    .X(_1027_));
 sg13g2_xor2_1 _3194_ (.B(\u_win.h_amt3[7] ),
    .A(net701),
    .X(_1028_));
 sg13g2_xor2_1 _3195_ (.B(\u_win.h_amt3[6] ),
    .A(net702),
    .X(_1029_));
 sg13g2_xor2_1 _3196_ (.B(\u_win.h_amt3[0] ),
    .A(net716),
    .X(_1030_));
 sg13g2_nor4_1 _3197_ (.A(_1027_),
    .B(_1028_),
    .C(_1029_),
    .D(_1030_),
    .Y(_1031_));
 sg13g2_nand4_1 _3198_ (.B(_1021_),
    .C(_1026_),
    .A(_1017_),
    .Y(_1032_),
    .D(_1031_));
 sg13g2_nand4_1 _3199_ (.B(_0966_),
    .C(_0999_),
    .A(_0933_),
    .Y(_1033_),
    .D(_1032_));
 sg13g2_nand4_1 _3200_ (.B(_0899_),
    .C(_0900_),
    .A(_0898_),
    .Y(_1034_),
    .D(_1033_));
 sg13g2_nor3_1 _3201_ (.A(net668),
    .B(net635),
    .C(_1034_),
    .Y(_0190_));
 sg13g2_inv_1 _3202_ (.Y(_1035_),
    .A(_0427_));
 sg13g2_inv_1 _3203_ (.Y(_1036_),
    .A(net242));
 sg13g2_inv_1 _3204_ (.Y(_1037_),
    .A(net241));
 sg13g2_nor2_1 _3205_ (.A(\u_cnt.count[4] ),
    .B(_0400_),
    .Y(_1038_));
 sg13g2_o21ai_1 _3206_ (.B1(_0414_),
    .Y(_1039_),
    .A1(_0401_),
    .A2(_1038_));
 sg13g2_and2_1 _3207_ (.A(_1037_),
    .B(_1039_),
    .X(_1040_));
 sg13g2_a21oi_1 _3208_ (.A1(_1036_),
    .A2(_0416_),
    .Y(_1041_),
    .B1(_1040_));
 sg13g2_o21ai_1 _3209_ (.B1(_1041_),
    .Y(_1042_),
    .A1(net240),
    .A2(_1035_));
 sg13g2_inv_1 _3210_ (.Y(_1043_),
    .A(net237));
 sg13g2_nand3_1 _3211_ (.B(net239),
    .C(_0430_),
    .A(\u_cnt.count[2] ),
    .Y(_1044_));
 sg13g2_o21ai_1 _3212_ (.B1(_1044_),
    .Y(_1045_),
    .A1(net631),
    .A2(_0430_));
 sg13g2_nand2b_1 _3213_ (.Y(_1046_),
    .B(_0430_),
    .A_N(net631));
 sg13g2_nand2_1 _3214_ (.Y(_1047_),
    .A(net625),
    .B(_0437_));
 sg13g2_mux4_1 _3215_ (.S0(\u_cnt.count[1] ),
    .A0(_1043_),
    .A1(_1045_),
    .A2(_1046_),
    .A3(_1047_),
    .S1(net238),
    .X(_1048_));
 sg13g2_inv_1 _3216_ (.Y(_1049_),
    .A(_1048_));
 sg13g2_a21oi_1 _3217_ (.A1(\u_cnt.count[1] ),
    .A2(_0430_),
    .Y(_1050_),
    .B1(\u_cnt.count[2] ));
 sg13g2_o21ai_1 _3218_ (.B1(net239),
    .Y(_1051_),
    .A1(net630),
    .A2(_1050_));
 sg13g2_inv_1 _3219_ (.Y(_1052_),
    .A(_0416_));
 sg13g2_o21ai_1 _3220_ (.B1(net242),
    .Y(_1053_),
    .A1(_1052_),
    .A2(net630));
 sg13g2_nand2_1 _3221_ (.Y(_1054_),
    .A(_1051_),
    .B(_1053_));
 sg13g2_xnor2_1 _3222_ (.Y(_1055_),
    .A(_1043_),
    .B(_1046_));
 sg13g2_nor2b_1 _3223_ (.A(net630),
    .B_N(_1039_),
    .Y(_1056_));
 sg13g2_o21ai_1 _3224_ (.B1(net240),
    .Y(_1057_),
    .A1(net630),
    .A2(_1035_));
 sg13g2_o21ai_1 _3225_ (.B1(_1057_),
    .Y(_1058_),
    .A1(_1037_),
    .A2(_1056_));
 sg13g2_nor2_1 _3228_ (.A(net243),
    .B(net244),
    .Y(_1061_));
 sg13g2_nor2_1 _3229_ (.A(\u_cnt.count[6] ),
    .B(_0403_),
    .Y(_1062_));
 sg13g2_a21o_1 _3230_ (.A2(_1062_),
    .A1(_0408_),
    .B1(net630),
    .X(_1063_));
 sg13g2_nand2_1 _3231_ (.Y(_1064_),
    .A(\u_cnt.count[7] ),
    .B(net244));
 sg13g2_nand2_1 _3232_ (.Y(_1065_),
    .A(\u_cnt.count[5] ),
    .B(_0401_));
 sg13g2_nor2_1 _3233_ (.A(\u_cnt.count[7] ),
    .B(net244),
    .Y(_1066_));
 sg13g2_nand3_1 _3234_ (.B(_1065_),
    .C(_1066_),
    .A(\u_cnt.count[6] ),
    .Y(_1067_));
 sg13g2_o21ai_1 _3235_ (.B1(_1067_),
    .Y(_1068_),
    .A1(_1062_),
    .A2(_1064_));
 sg13g2_nor2b_1 _3236_ (.A(net243),
    .B_N(net244),
    .Y(_1069_));
 sg13g2_nand3_1 _3237_ (.B(_0403_),
    .C(_1066_),
    .A(net243),
    .Y(_1070_));
 sg13g2_nand3_1 _3238_ (.B(_1065_),
    .C(_1069_),
    .A(\u_cnt.count[7] ),
    .Y(_1071_));
 sg13g2_a21oi_1 _3239_ (.A1(_1070_),
    .A2(_1071_),
    .Y(_1072_),
    .B1(\u_cnt.count[6] ));
 sg13g2_a221oi_1 _3240_ (.B2(_0409_),
    .C1(_1072_),
    .B1(_1069_),
    .A1(net243),
    .Y(_1073_),
    .A2(_1068_));
 sg13g2_nor2_1 _3241_ (.A(net630),
    .B(_1073_),
    .Y(_1074_));
 sg13g2_a21oi_1 _3242_ (.A1(_1061_),
    .A2(_1063_),
    .Y(_1075_),
    .B1(_1074_));
 sg13g2_nor4_2 _3243_ (.A(_1054_),
    .B(_1055_),
    .C(_1058_),
    .Y(_1076_),
    .D(_1075_));
 sg13g2_nand2_1 _3244_ (.Y(_1077_),
    .A(_1049_),
    .B(_1076_));
 sg13g2_and2_1 _3245_ (.A(\u_cnt.count[2] ),
    .B(_0432_),
    .X(_1078_));
 sg13g2_o21ai_1 _3246_ (.B1(net625),
    .Y(_1079_),
    .A1(_0434_),
    .A2(_1078_));
 sg13g2_a21oi_1 _3247_ (.A1(net237),
    .A2(net625),
    .Y(_1080_),
    .B1(net238));
 sg13g2_o21ai_1 _3248_ (.B1(net238),
    .Y(_1081_),
    .A1(net237),
    .A2(_1046_));
 sg13g2_o21ai_1 _3249_ (.B1(\u_cnt.count[1] ),
    .Y(_1082_),
    .A1(net631),
    .A2(_0430_));
 sg13g2_o21ai_1 _3250_ (.B1(_1082_),
    .Y(_1083_),
    .A1(\u_cnt.count[1] ),
    .A2(_1081_));
 sg13g2_nor2b_1 _3251_ (.A(_1080_),
    .B_N(_1083_),
    .Y(_1084_));
 sg13g2_nor2_1 _3252_ (.A(net243),
    .B(_1065_),
    .Y(_1085_));
 sg13g2_a21oi_1 _3253_ (.A1(net243),
    .A2(_1065_),
    .Y(_1086_),
    .B1(net244));
 sg13g2_o21ai_1 _3254_ (.B1(_1086_),
    .Y(_1087_),
    .A1(\u_cnt.count[6] ),
    .A2(_1085_));
 sg13g2_nand2_1 _3255_ (.Y(_1088_),
    .A(_0408_),
    .B(_1087_));
 sg13g2_o21ai_1 _3256_ (.B1(net244),
    .Y(_1089_),
    .A1(net243),
    .A2(_1062_));
 sg13g2_nand3_1 _3257_ (.B(_1088_),
    .C(_1089_),
    .A(net625),
    .Y(_1090_));
 sg13g2_o21ai_1 _3258_ (.B1(_1090_),
    .Y(_1091_),
    .A1(_1079_),
    .A2(_1084_));
 sg13g2_a22oi_1 _3259_ (.Y(_1092_),
    .B1(_1077_),
    .B2(_1091_),
    .A2(_1042_),
    .A1(net625));
 sg13g2_a21o_1 _3260_ (.A2(_1076_),
    .A1(_1049_),
    .B1(_1084_),
    .X(_1093_));
 sg13g2_a21o_1 _3261_ (.A2(_1093_),
    .A1(_1079_),
    .B1(net239),
    .X(_1094_));
 sg13g2_nor2b_1 _3262_ (.A(_1040_),
    .B_N(_1058_),
    .Y(_1095_));
 sg13g2_o21ai_1 _3263_ (.B1(_1052_),
    .Y(_1096_),
    .A1(net242),
    .A2(_1095_));
 sg13g2_a21oi_1 _3264_ (.A1(net630),
    .A2(_1058_),
    .Y(_1097_),
    .B1(_1075_));
 sg13g2_o21ai_1 _3265_ (.B1(net242),
    .Y(_1098_),
    .A1(net630),
    .A2(_1095_));
 sg13g2_nand3_1 _3266_ (.B(_1097_),
    .C(_1098_),
    .A(_1096_),
    .Y(_1099_));
 sg13g2_a221oi_1 _3267_ (.B2(_1090_),
    .C1(_0897_),
    .B1(_1099_),
    .A1(_1092_),
    .Y(_0191_),
    .A2(_1094_));
 sg13g2_nand3b_1 _3268_ (.B(_0722_),
    .C(_0729_),
    .Y(_1100_),
    .A_N(net264));
 sg13g2_o21ai_1 _3269_ (.B1(net265),
    .Y(_1101_),
    .A1(_0716_),
    .A2(_1100_));
 sg13g2_nand2_1 _3270_ (.Y(_1102_),
    .A(_0716_),
    .B(_1100_));
 sg13g2_o21ai_1 _3272_ (.B1(_0691_),
    .Y(_1104_),
    .A1(net266),
    .A2(_0703_));
 sg13g2_o21ai_1 _3274_ (.B1(net267),
    .Y(_1106_),
    .A1(net266),
    .A2(_0703_));
 sg13g2_a22oi_1 _3275_ (.Y(_1107_),
    .B1(_1104_),
    .B2(_1106_),
    .A2(_1102_),
    .A1(_1101_));
 sg13g2_nand2_1 _3276_ (.Y(_1108_),
    .A(net267),
    .B(_0691_));
 sg13g2_nand3_1 _3277_ (.B(_0691_),
    .C(_0703_),
    .A(net266),
    .Y(_1109_));
 sg13g2_nand3_1 _3278_ (.B(net266),
    .C(_0703_),
    .A(net267),
    .Y(_1110_));
 sg13g2_nand3_1 _3279_ (.B(_1109_),
    .C(_1110_),
    .A(_1108_),
    .Y(_1111_));
 sg13g2_nor2_1 _3280_ (.A(_1107_),
    .B(_1111_),
    .Y(_1112_));
 sg13g2_nand2_1 _3281_ (.Y(_1113_),
    .A(_0722_),
    .B(_0729_));
 sg13g2_xnor2_1 _3282_ (.Y(_1114_),
    .A(net264),
    .B(_1113_));
 sg13g2_nand2_1 _3283_ (.Y(_1115_),
    .A(net263),
    .B(_0737_));
 sg13g2_xor2_1 _3284_ (.B(_0716_),
    .A(net265),
    .X(_1116_));
 sg13g2_xor2_1 _3285_ (.B(_0703_),
    .A(net266),
    .X(_1117_));
 sg13g2_xor2_1 _3286_ (.B(_0691_),
    .A(net267),
    .X(_1118_));
 sg13g2_nand4_1 _3287_ (.B(_1116_),
    .C(_1117_),
    .A(_1115_),
    .Y(_1119_),
    .D(_1118_));
 sg13g2_inv_1 _3288_ (.Y(_1120_),
    .A(net262));
 sg13g2_nand3_1 _3289_ (.B(_0745_),
    .C(_0747_),
    .A(_1120_),
    .Y(_1121_));
 sg13g2_o21ai_1 _3290_ (.B1(_1121_),
    .Y(_1122_),
    .A1(net263),
    .A2(_0737_));
 sg13g2_nand2_1 _3291_ (.Y(_1123_),
    .A(_0745_),
    .B(_0747_));
 sg13g2_nor2_1 _3292_ (.A(\u_spend.spend[0] ),
    .B(net637),
    .Y(_1124_));
 sg13g2_o21ai_1 _3293_ (.B1(_0858_),
    .Y(_1125_),
    .A1(net634),
    .A2(_1124_));
 sg13g2_inv_1 _3294_ (.Y(_1126_),
    .A(net246));
 sg13g2_a21oi_1 _3295_ (.A1(_0763_),
    .A2(_1125_),
    .Y(_1127_),
    .B1(_1126_));
 sg13g2_a221oi_1 _3296_ (.B2(_1127_),
    .C1(net257),
    .B1(_0757_),
    .A1(net262),
    .Y(_1128_),
    .A2(_1123_));
 sg13g2_nand2_1 _3297_ (.Y(_1129_),
    .A(_0763_),
    .B(_1125_));
 sg13g2_a221oi_1 _3298_ (.B2(net246),
    .C1(_0757_),
    .B1(_1129_),
    .A1(net262),
    .Y(_1130_),
    .A2(_1123_));
 sg13g2_nor3_1 _3299_ (.A(_1122_),
    .B(_1128_),
    .C(_1130_),
    .Y(_1131_));
 sg13g2_nor3_2 _3300_ (.A(_1114_),
    .B(_1119_),
    .C(_1131_),
    .Y(_1132_));
 sg13g2_xnor2_1 _3301_ (.Y(_1133_),
    .A(\u_spend.spend[15] ),
    .B(_0595_));
 sg13g2_a21o_1 _3302_ (.A2(_1133_),
    .A1(net642),
    .B1(net632),
    .X(_1134_));
 sg13g2_nor3_1 _3303_ (.A(net632),
    .B(net639),
    .C(_1133_),
    .Y(_1135_));
 sg13g2_mux2_1 _3304_ (.A0(_1134_),
    .A1(_1135_),
    .S(net708),
    .X(_1136_));
 sg13g2_xnor2_1 _3305_ (.Y(_1137_),
    .A(net252),
    .B(_1136_));
 sg13g2_xnor2_1 _3307_ (.Y(_1139_),
    .A(net251),
    .B(_0610_));
 sg13g2_nor2_1 _3308_ (.A(_1137_),
    .B(_1139_),
    .Y(_1140_));
 sg13g2_xnor2_1 _3309_ (.Y(_1141_),
    .A(\u_spend.spend[12] ),
    .B(_0633_));
 sg13g2_nand3_1 _3310_ (.B(net641),
    .C(_1141_),
    .A(net712),
    .Y(_1142_));
 sg13g2_nand2_1 _3311_ (.Y(_1143_),
    .A(\u_cnt.v ),
    .B(_0579_));
 sg13g2_mux2_1 _3312_ (.A0(_1142_),
    .A1(_1143_),
    .S(_1664_),
    .X(_1144_));
 sg13g2_and4_1 _3313_ (.A(net647),
    .B(net712),
    .C(net640),
    .D(_1141_),
    .X(_1145_));
 sg13g2_nor3_1 _3314_ (.A(net712),
    .B(net636),
    .C(_1141_),
    .Y(_1146_));
 sg13g2_nor3_1 _3315_ (.A(net249),
    .B(_1145_),
    .C(_1146_),
    .Y(_1147_));
 sg13g2_nand3_1 _3316_ (.B(net712),
    .C(_1141_),
    .A(net647),
    .Y(_1148_));
 sg13g2_o21ai_1 _3317_ (.B1(_1148_),
    .Y(_1149_),
    .A1(net712),
    .A2(_1141_));
 sg13g2_nand3_1 _3318_ (.B(net640),
    .C(_1149_),
    .A(net249),
    .Y(_1150_));
 sg13g2_a21oi_1 _3320_ (.A1(_0625_),
    .A2(_0620_),
    .Y(_1152_),
    .B1(net639));
 sg13g2_or3_1 _3321_ (.A(net696),
    .B(net755),
    .C(_1152_),
    .X(_1153_));
 sg13g2_and4_1 _3322_ (.A(net649),
    .B(net250),
    .C(net642),
    .D(_0620_),
    .X(_1154_));
 sg13g2_nor2_1 _3323_ (.A(net250),
    .B(_0620_),
    .Y(_1155_));
 sg13g2_o21ai_1 _3324_ (.B1(net711),
    .Y(_1156_),
    .A1(_1154_),
    .A2(_1155_));
 sg13g2_nand3_1 _3325_ (.B(net755),
    .C(_0624_),
    .A(_0625_),
    .Y(_1157_));
 sg13g2_nand4_1 _3326_ (.B(_1153_),
    .C(_1156_),
    .A(_1150_),
    .Y(_1158_),
    .D(_1157_));
 sg13g2_xnor2_1 _3327_ (.Y(_1159_),
    .A(net711),
    .B(net755));
 sg13g2_nand2b_1 _3328_ (.Y(_1160_),
    .B(net636),
    .A_N(net250));
 sg13g2_and3_1 _3329_ (.X(_1161_),
    .A(net711),
    .B(net250),
    .C(net642));
 sg13g2_nor2_1 _3330_ (.A(net711),
    .B(net250),
    .Y(_1162_));
 sg13g2_o21ai_1 _3331_ (.B1(_0620_),
    .Y(_1163_),
    .A1(_1161_),
    .A2(_1162_));
 sg13g2_a21o_1 _3332_ (.A2(_1163_),
    .A1(_1160_),
    .B1(_1664_),
    .X(_1164_));
 sg13g2_o21ai_1 _3333_ (.B1(_1164_),
    .Y(_1165_),
    .A1(_0423_),
    .A2(_1159_));
 sg13g2_nor2b_1 _3334_ (.A(_1144_),
    .B_N(net249),
    .Y(_1166_));
 sg13g2_xnor2_1 _3335_ (.Y(_1167_),
    .A(\u_spend.spend[18] ),
    .B(_0555_));
 sg13g2_nand3_1 _3336_ (.B(_0529_),
    .C(_1167_),
    .A(net255),
    .Y(_1168_));
 sg13g2_or2_1 _3337_ (.X(_1169_),
    .B(_0570_),
    .A(net253));
 sg13g2_nand2_1 _3339_ (.Y(_1171_),
    .A(net253),
    .B(_0570_));
 sg13g2_xor2_1 _3340_ (.B(_0565_),
    .A(net254),
    .X(_1172_));
 sg13g2_nand4_1 _3341_ (.B(_1169_),
    .C(_1171_),
    .A(_1168_),
    .Y(_1173_),
    .D(_1172_));
 sg13g2_or3_1 _3342_ (.A(net255),
    .B(net254),
    .C(net253),
    .X(_1174_));
 sg13g2_mux2_1 _3343_ (.A0(_1173_),
    .A1(_1174_),
    .S(net632),
    .X(_1175_));
 sg13g2_or4_1 _3344_ (.A(_1158_),
    .B(_1165_),
    .C(_1166_),
    .D(_1175_),
    .X(_1176_));
 sg13g2_a221oi_1 _3345_ (.B2(_1147_),
    .C1(_1176_),
    .B1(_1144_),
    .A1(net248),
    .Y(_1177_),
    .A2(_0648_));
 sg13g2_nor2_2 _3346_ (.A(net248),
    .B(_0648_),
    .Y(_1178_));
 sg13g2_inv_1 _3347_ (.Y(_1179_),
    .A(net256));
 sg13g2_inv_1 _3348_ (.Y(_1180_),
    .A(net255));
 sg13g2_a22oi_1 _3349_ (.Y(_1181_),
    .B1(_1180_),
    .B2(_0555_),
    .A2(_1179_),
    .A1(\u_spend.spend[19] ));
 sg13g2_nor2_1 _3350_ (.A(net255),
    .B(_0555_),
    .Y(_1182_));
 sg13g2_nor3_1 _3351_ (.A(\u_spend.spend[19] ),
    .B(net256),
    .C(_0563_),
    .Y(_1183_));
 sg13g2_o21ai_1 _3352_ (.B1(\u_spend.spend[18] ),
    .Y(_1184_),
    .A1(_1182_),
    .A2(_1183_));
 sg13g2_o21ai_1 _3353_ (.B1(_1184_),
    .Y(_1185_),
    .A1(\u_spend.spend[18] ),
    .A2(_1181_));
 sg13g2_a21oi_1 _3354_ (.A1(\u_spend.spend[19] ),
    .A2(_0563_),
    .Y(_1186_),
    .B1(_0551_));
 sg13g2_nand2_1 _3355_ (.Y(_1187_),
    .A(_1180_),
    .B(_0551_));
 sg13g2_o21ai_1 _3356_ (.B1(_1187_),
    .Y(_1188_),
    .A1(net256),
    .A2(_1186_));
 sg13g2_o21ai_1 _3357_ (.B1(_0423_),
    .Y(_1189_),
    .A1(_1185_),
    .A2(_1188_));
 sg13g2_inv_1 _3358_ (.Y(_1190_),
    .A(net268));
 sg13g2_nand3_1 _3359_ (.B(_0683_),
    .C(_0685_),
    .A(_1190_),
    .Y(_1191_));
 sg13g2_a21o_1 _3360_ (.A2(_0685_),
    .A1(_0683_),
    .B1(_1190_),
    .X(_1192_));
 sg13g2_nand3_1 _3361_ (.B(_1191_),
    .C(_1192_),
    .A(_1189_),
    .Y(_1193_));
 sg13g2_xnor2_1 _3362_ (.Y(_1194_),
    .A(net247),
    .B(_0655_));
 sg13g2_xnor2_1 _3363_ (.Y(_1195_),
    .A(net269),
    .B(_0674_));
 sg13g2_nor4_1 _3364_ (.A(_1178_),
    .B(_1193_),
    .C(_1194_),
    .D(_1195_),
    .Y(_1196_));
 sg13g2_and3_1 _3365_ (.X(_1197_),
    .A(_1140_),
    .B(_1177_),
    .C(_1196_));
 sg13g2_o21ai_1 _3366_ (.B1(_1197_),
    .Y(_1198_),
    .A1(_1112_),
    .A2(_1132_));
 sg13g2_nand2_1 _3367_ (.Y(_1199_),
    .A(_1144_),
    .B(_1147_));
 sg13g2_o21ai_1 _3368_ (.B1(_1199_),
    .Y(_1200_),
    .A1(net755),
    .A2(_0627_));
 sg13g2_a22oi_1 _3369_ (.Y(_1201_),
    .B1(_0627_),
    .B2(net755),
    .A2(_0610_),
    .A1(net251));
 sg13g2_o21ai_1 _3370_ (.B1(_1136_),
    .Y(_1202_),
    .A1(net251),
    .A2(_0610_));
 sg13g2_a21o_1 _3371_ (.A2(_1201_),
    .A1(_1200_),
    .B1(_1202_),
    .X(_1203_));
 sg13g2_nor2_1 _3372_ (.A(net252),
    .B(_1175_),
    .Y(_1204_));
 sg13g2_nor2_1 _3373_ (.A(_1136_),
    .B(_1175_),
    .Y(_1205_));
 sg13g2_nor2_1 _3374_ (.A(net251),
    .B(_0610_),
    .Y(_1206_));
 sg13g2_a21o_1 _3375_ (.A2(_1201_),
    .A1(_1200_),
    .B1(_1206_),
    .X(_1207_));
 sg13g2_a22oi_1 _3376_ (.Y(_1208_),
    .B1(_1205_),
    .B2(_1207_),
    .A2(_1204_),
    .A1(_1203_));
 sg13g2_inv_1 _3377_ (.Y(_1209_),
    .A(net247));
 sg13g2_o21ai_1 _3378_ (.B1(_1191_),
    .Y(_1210_),
    .A1(net269),
    .A2(_0674_));
 sg13g2_a22oi_1 _3379_ (.Y(_1211_),
    .B1(_0674_),
    .B2(net269),
    .A2(_0655_),
    .A1(net247));
 sg13g2_a221oi_1 _3380_ (.B2(_1211_),
    .C1(_1178_),
    .B1(_1210_),
    .A1(_1209_),
    .Y(_1212_),
    .A2(_0656_));
 sg13g2_nand3b_1 _3381_ (.B(_1177_),
    .C(_1140_),
    .Y(_1213_),
    .A_N(_1212_));
 sg13g2_nor2_1 _3382_ (.A(_1185_),
    .B(_1188_),
    .Y(_1214_));
 sg13g2_a21oi_1 _3383_ (.A1(_0565_),
    .A2(_1169_),
    .Y(_1215_),
    .B1(net254));
 sg13g2_nor2_1 _3384_ (.A(_0565_),
    .B(_1169_),
    .Y(_1216_));
 sg13g2_o21ai_1 _3385_ (.B1(_1168_),
    .Y(_1217_),
    .A1(_1215_),
    .A2(_1216_));
 sg13g2_a21o_1 _3386_ (.A2(_1217_),
    .A1(_1214_),
    .B1(net632),
    .X(_1218_));
 sg13g2_nor2b_1 _3388_ (.A(net258),
    .B_N(_0547_),
    .Y(_1220_));
 sg13g2_nor2_1 _3389_ (.A(_0540_),
    .B(_1220_),
    .Y(_1221_));
 sg13g2_nand2_1 _3390_ (.Y(_1222_),
    .A(_0540_),
    .B(_1220_));
 sg13g2_o21ai_1 _3391_ (.B1(_1222_),
    .Y(_1223_),
    .A1(net259),
    .A2(_1221_));
 sg13g2_inv_1 _3392_ (.Y(_1224_),
    .A(net260));
 sg13g2_o21ai_1 _3393_ (.B1(_1224_),
    .Y(_1225_),
    .A1(_0535_),
    .A2(_1223_));
 sg13g2_nand2_1 _3394_ (.Y(_1226_),
    .A(_0535_),
    .B(_1223_));
 sg13g2_a22oi_1 _3395_ (.Y(_1227_),
    .B1(_1225_),
    .B2(_1226_),
    .A2(_0834_),
    .A1(net261));
 sg13g2_nor2_1 _3396_ (.A(net261),
    .B(_0834_),
    .Y(_1228_));
 sg13g2_o21ai_1 _3397_ (.B1(net626),
    .Y(_1229_),
    .A1(_1227_),
    .A2(_1228_));
 sg13g2_and4_1 _3398_ (.A(_1208_),
    .B(_1213_),
    .C(_1218_),
    .D(_1229_),
    .X(_1230_));
 sg13g2_nand3b_1 _3399_ (.B(net258),
    .C(_0547_),
    .Y(_1231_),
    .A_N(net259));
 sg13g2_xnor2_1 _3400_ (.Y(_1232_),
    .A(net258),
    .B(_0547_));
 sg13g2_nand3_1 _3401_ (.B(_0540_),
    .C(_1232_),
    .A(net259),
    .Y(_1233_));
 sg13g2_o21ai_1 _3402_ (.B1(_1233_),
    .Y(_1234_),
    .A1(_0540_),
    .A2(_1231_));
 sg13g2_nor2_1 _3403_ (.A(net259),
    .B(net258),
    .Y(_1235_));
 sg13g2_o21ai_1 _3404_ (.B1(net626),
    .Y(_1236_),
    .A1(_0540_),
    .A2(_0547_));
 sg13g2_a22oi_1 _3405_ (.Y(_1237_),
    .B1(_1235_),
    .B2(_1236_),
    .A2(_1234_),
    .A1(net626));
 sg13g2_inv_1 _3406_ (.Y(_1238_),
    .A(net261));
 sg13g2_inv_1 _3407_ (.Y(_1239_),
    .A(_0834_));
 sg13g2_o21ai_1 _3408_ (.B1(net626),
    .Y(_1240_),
    .A1(_0535_),
    .A2(_1239_));
 sg13g2_nand3_1 _3409_ (.B(_1238_),
    .C(_1240_),
    .A(_1224_),
    .Y(_1241_));
 sg13g2_nor4_1 _3410_ (.A(net260),
    .B(_1238_),
    .C(_0535_),
    .D(_0834_),
    .Y(_1242_));
 sg13g2_xnor2_1 _3411_ (.Y(_1243_),
    .A(_1238_),
    .B(_0834_));
 sg13g2_and3_1 _3412_ (.X(_1244_),
    .A(net260),
    .B(_0535_),
    .C(_1243_));
 sg13g2_o21ai_1 _3413_ (.B1(net626),
    .Y(_1245_),
    .A1(_1242_),
    .A2(_1244_));
 sg13g2_xnor2_1 _3414_ (.Y(_1246_),
    .A(\u_spend.spend[19] ),
    .B(_0557_));
 sg13g2_o21ai_1 _3415_ (.B1(net626),
    .Y(_1247_),
    .A1(_0551_),
    .A2(_1246_));
 sg13g2_a22oi_1 _3416_ (.Y(_1248_),
    .B1(_1247_),
    .B2(net256),
    .A2(_1245_),
    .A1(_1241_));
 sg13g2_nand2b_1 _3417_ (.Y(_1249_),
    .B(_1248_),
    .A_N(_1237_));
 sg13g2_xnor2_1 _3418_ (.Y(_1250_),
    .A(_1126_),
    .B(_1129_));
 sg13g2_o21ai_1 _3419_ (.B1(_1250_),
    .Y(_1251_),
    .A1(_1120_),
    .A2(_0749_));
 sg13g2_xnor2_1 _3420_ (.Y(_1252_),
    .A(net257),
    .B(_0757_));
 sg13g2_or3_1 _3421_ (.A(_1114_),
    .B(_1119_),
    .C(_1252_),
    .X(_1253_));
 sg13g2_nor4_2 _3422_ (.A(_1122_),
    .B(_1249_),
    .C(_1251_),
    .Y(_1254_),
    .D(_1253_));
 sg13g2_a21o_1 _3423_ (.A2(_1249_),
    .A1(_1229_),
    .B1(_0897_),
    .X(_1255_));
 sg13g2_a221oi_1 _3424_ (.B2(_1197_),
    .C1(_1255_),
    .B1(_1254_),
    .A1(_1198_),
    .Y(_0192_),
    .A2(_1230_));
 sg13g2_inv_1 _3425_ (.Y(_0193_),
    .A(_0897_));
 sg13g2_and2_1 _3426_ (.A(\u_rule.a_v ),
    .B(net245),
    .X(_0194_));
 sg13g2_nand2_1 _3427_ (.Y(_1256_),
    .A(net674),
    .B(net673));
 sg13g2_o21ai_1 _3428_ (.B1(\u_rule.f_over ),
    .Y(_1257_),
    .A1(net674),
    .A2(net673));
 sg13g2_a22oi_1 _3429_ (.Y(_1258_),
    .B1(_1257_),
    .B2(_0788_),
    .A2(_1256_),
    .A1(_0771_));
 sg13g2_nor2b_1 _3430_ (.A(net676),
    .B_N(net304),
    .Y(_1259_));
 sg13g2_a21oi_1 _3431_ (.A1(net676),
    .A2(_1258_),
    .Y(_1260_),
    .B1(_1259_));
 sg13g2_nor2_1 _3432_ (.A(net736),
    .B(_1260_),
    .Y(_0195_));
 sg13g2_o21ai_1 _3433_ (.B1(\u_rule.f_vel ),
    .Y(_1261_),
    .A1(\u_rule.f_rapid ),
    .A2(\u_rule.f_anom ));
 sg13g2_nor2b_1 _3434_ (.A(\u_rule.f_over ),
    .B_N(net676),
    .Y(_1262_));
 sg13g2_o21ai_1 _3435_ (.B1(net245),
    .Y(_1263_),
    .A1(net296),
    .A2(\u_rule.a_v ));
 sg13g2_a21oi_1 _3436_ (.A1(_1261_),
    .A2(_1262_),
    .Y(_0196_),
    .B1(_1263_));
 sg13g2_buf_16 clkbuf_0_clk (.X(clknet_0_clk),
    .A(clk));
 sg13g2_buf_16 clkbuf_4_0_0_clk (.X(clknet_4_0_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_10_0_clk (.X(clknet_4_10_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_11_0_clk (.X(clknet_4_11_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_12_0_clk (.X(clknet_4_12_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_13_0_clk (.X(clknet_4_13_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_14_0_clk (.X(clknet_4_14_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_15_0_clk (.X(clknet_4_15_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_1_0_clk (.X(clknet_4_1_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_2_0_clk (.X(clknet_4_2_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_3_0_clk (.X(clknet_4_3_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_4_0_clk (.X(clknet_4_4_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_5_0_clk (.X(clknet_4_5_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_6_0_clk (.X(clknet_4_6_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_7_0_clk (.X(clknet_4_7_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_8_0_clk (.X(clknet_4_8_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_4_9_0_clk (.X(clknet_4_9_0_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_5_0__f_clk (.X(clknet_5_0__leaf_clk),
    .A(clknet_4_0_0_clk));
 sg13g2_buf_16 clkbuf_5_10__f_clk (.X(clknet_5_10__leaf_clk),
    .A(clknet_4_5_0_clk));
 sg13g2_buf_16 clkbuf_5_11__f_clk (.X(clknet_5_11__leaf_clk),
    .A(clknet_4_5_0_clk));
 sg13g2_buf_16 clkbuf_5_12__f_clk (.X(clknet_5_12__leaf_clk),
    .A(clknet_4_6_0_clk));
 sg13g2_buf_16 clkbuf_5_13__f_clk (.X(clknet_5_13__leaf_clk),
    .A(clknet_4_6_0_clk));
 sg13g2_buf_16 clkbuf_5_14__f_clk (.X(clknet_5_14__leaf_clk),
    .A(clknet_4_7_0_clk));
 sg13g2_buf_16 clkbuf_5_15__f_clk (.X(clknet_5_15__leaf_clk),
    .A(clknet_4_7_0_clk));
 sg13g2_buf_16 clkbuf_5_16__f_clk (.X(clknet_5_16__leaf_clk),
    .A(clknet_4_8_0_clk));
 sg13g2_buf_16 clkbuf_5_17__f_clk (.X(clknet_5_17__leaf_clk),
    .A(clknet_4_8_0_clk));
 sg13g2_buf_16 clkbuf_5_18__f_clk (.X(clknet_5_18__leaf_clk),
    .A(clknet_4_9_0_clk));
 sg13g2_buf_16 clkbuf_5_19__f_clk (.X(clknet_5_19__leaf_clk),
    .A(clknet_4_9_0_clk));
 sg13g2_buf_16 clkbuf_5_1__f_clk (.X(clknet_5_1__leaf_clk),
    .A(clknet_4_0_0_clk));
 sg13g2_buf_16 clkbuf_5_20__f_clk (.X(clknet_5_20__leaf_clk),
    .A(clknet_4_10_0_clk));
 sg13g2_buf_16 clkbuf_5_21__f_clk (.X(clknet_5_21__leaf_clk),
    .A(clknet_4_10_0_clk));
 sg13g2_buf_16 clkbuf_5_22__f_clk (.X(clknet_5_22__leaf_clk),
    .A(clknet_4_11_0_clk));
 sg13g2_buf_16 clkbuf_5_23__f_clk (.X(clknet_5_23__leaf_clk),
    .A(clknet_4_11_0_clk));
 sg13g2_buf_16 clkbuf_5_24__f_clk (.X(clknet_5_24__leaf_clk),
    .A(clknet_4_12_0_clk));
 sg13g2_buf_16 clkbuf_5_25__f_clk (.X(clknet_5_25__leaf_clk),
    .A(clknet_4_12_0_clk));
 sg13g2_buf_16 clkbuf_5_26__f_clk (.X(clknet_5_26__leaf_clk),
    .A(clknet_4_13_0_clk));
 sg13g2_buf_16 clkbuf_5_27__f_clk (.X(clknet_5_27__leaf_clk),
    .A(clknet_4_13_0_clk));
 sg13g2_buf_16 clkbuf_5_28__f_clk (.X(clknet_5_28__leaf_clk),
    .A(clknet_4_14_0_clk));
 sg13g2_buf_16 clkbuf_5_29__f_clk (.X(clknet_5_29__leaf_clk),
    .A(clknet_4_14_0_clk));
 sg13g2_buf_16 clkbuf_5_2__f_clk (.X(clknet_5_2__leaf_clk),
    .A(clknet_4_1_0_clk));
 sg13g2_buf_16 clkbuf_5_30__f_clk (.X(clknet_5_30__leaf_clk),
    .A(clknet_4_15_0_clk));
 sg13g2_buf_16 clkbuf_5_31__f_clk (.X(clknet_5_31__leaf_clk),
    .A(clknet_4_15_0_clk));
 sg13g2_buf_16 clkbuf_5_3__f_clk (.X(clknet_5_3__leaf_clk),
    .A(clknet_4_1_0_clk));
 sg13g2_buf_16 clkbuf_5_4__f_clk (.X(clknet_5_4__leaf_clk),
    .A(clknet_4_2_0_clk));
 sg13g2_buf_16 clkbuf_5_5__f_clk (.X(clknet_5_5__leaf_clk),
    .A(clknet_4_2_0_clk));
 sg13g2_buf_16 clkbuf_5_6__f_clk (.X(clknet_5_6__leaf_clk),
    .A(clknet_4_3_0_clk));
 sg13g2_buf_16 clkbuf_5_7__f_clk (.X(clknet_5_7__leaf_clk),
    .A(clknet_4_3_0_clk));
 sg13g2_buf_16 clkbuf_5_8__f_clk (.X(clknet_5_8__leaf_clk),
    .A(clknet_4_4_0_clk));
 sg13g2_buf_16 clkbuf_5_9__f_clk (.X(clknet_5_9__leaf_clk),
    .A(clknet_4_4_0_clk));
 sg13g2_inv_1 clkload0 (.A(clknet_5_1__leaf_clk));
 sg13g2_inv_1 clkload1 (.A(clknet_5_5__leaf_clk));
 sg13g2_inv_1 clkload2 (.A(clknet_5_9__leaf_clk));
 sg13g2_inv_1 clkload3 (.A(clknet_5_17__leaf_clk));
 sg13g2_inv_1 clkload4 (.A(clknet_5_25__leaf_clk));
 sg13g2_buf_1 input198 (.A(amount[0]),
    .X(net197));
 sg13g2_buf_1 input199 (.A(amount[10]),
    .X(net198));
 sg13g2_buf_1 input200 (.A(amount[11]),
    .X(net199));
 sg13g2_buf_1 input201 (.A(amount[12]),
    .X(net200));
 sg13g2_buf_1 input202 (.A(amount[13]),
    .X(net201));
 sg13g2_buf_1 input203 (.A(amount[14]),
    .X(net202));
 sg13g2_buf_1 input204 (.A(amount[15]),
    .X(net203));
 sg13g2_buf_1 input205 (.A(amount[1]),
    .X(net204));
 sg13g2_buf_1 input206 (.A(amount[2]),
    .X(net205));
 sg13g2_buf_1 input207 (.A(amount[3]),
    .X(net206));
 sg13g2_buf_1 input208 (.A(amount[4]),
    .X(net207));
 sg13g2_buf_1 input209 (.A(amount[5]),
    .X(net208));
 sg13g2_buf_1 input210 (.A(amount[6]),
    .X(net209));
 sg13g2_buf_1 input211 (.A(amount[7]),
    .X(net210));
 sg13g2_buf_1 input212 (.A(amount[8]),
    .X(net211));
 sg13g2_buf_1 input213 (.A(amount[9]),
    .X(net212));
 sg13g2_buf_1 input214 (.A(anomaly_thr[0]),
    .X(net213));
 sg13g2_buf_1 input215 (.A(anomaly_thr[10]),
    .X(net214));
 sg13g2_buf_1 input216 (.A(anomaly_thr[11]),
    .X(net215));
 sg13g2_buf_1 input217 (.A(anomaly_thr[12]),
    .X(net216));
 sg13g2_buf_1 input218 (.A(anomaly_thr[13]),
    .X(net217));
 sg13g2_buf_1 input219 (.A(anomaly_thr[14]),
    .X(net218));
 sg13g2_buf_1 input220 (.A(anomaly_thr[15]),
    .X(net219));
 sg13g2_buf_1 input221 (.A(anomaly_thr[1]),
    .X(net220));
 sg13g2_buf_1 input222 (.A(anomaly_thr[2]),
    .X(net221));
 sg13g2_buf_1 input223 (.A(anomaly_thr[3]),
    .X(net222));
 sg13g2_buf_1 input224 (.A(anomaly_thr[4]),
    .X(net223));
 sg13g2_buf_1 input225 (.A(anomaly_thr[5]),
    .X(net224));
 sg13g2_buf_1 input226 (.A(anomaly_thr[6]),
    .X(net225));
 sg13g2_buf_1 input227 (.A(anomaly_thr[7]),
    .X(net226));
 sg13g2_buf_1 input228 (.A(anomaly_thr[8]),
    .X(net227));
 sg13g2_buf_1 input229 (.A(anomaly_thr[9]),
    .X(net228));
 sg13g2_buf_1 input230 (.A(category[0]),
    .X(net229));
 sg13g2_buf_1 input231 (.A(category[1]),
    .X(net230));
 sg13g2_buf_1 input232 (.A(category[2]),
    .X(net231));
 sg13g2_buf_1 input233 (.A(category[3]),
    .X(net232));
 sg13g2_buf_1 input234 (.A(category[4]),
    .X(net233));
 sg13g2_buf_1 input235 (.A(category[5]),
    .X(net234));
 sg13g2_buf_1 input236 (.A(category[6]),
    .X(net235));
 sg13g2_buf_1 input237 (.A(category[7]),
    .X(net236));
 sg13g2_buf_1 input238 (.A(count_limit[0]),
    .X(net237));
 sg13g2_buf_1 input239 (.A(count_limit[1]),
    .X(net238));
 sg13g2_buf_1 input240 (.A(count_limit[2]),
    .X(net239));
 sg13g2_buf_1 input241 (.A(count_limit[3]),
    .X(net240));
 sg13g2_buf_1 input242 (.A(count_limit[4]),
    .X(net241));
 sg13g2_buf_1 input243 (.A(count_limit[5]),
    .X(net242));
 sg13g2_buf_1 input244 (.A(count_limit[6]),
    .X(net243));
 sg13g2_buf_1 input245 (.A(count_limit[7]),
    .X(net244));
 sg13g2_buf_1 input246 (.A(rst_n),
    .X(net245));
 sg13g2_buf_1 input247 (.A(spend_limit[0]),
    .X(net246));
 sg13g2_buf_1 input248 (.A(spend_limit[10]),
    .X(net247));
 sg13g2_buf_1 input249 (.A(spend_limit[11]),
    .X(net248));
 sg13g2_buf_1 input250 (.A(spend_limit[12]),
    .X(net249));
 sg13g2_buf_1 input251 (.A(spend_limit[13]),
    .X(net250));
 sg13g2_buf_1 input252 (.A(spend_limit[14]),
    .X(net251));
 sg13g2_buf_1 input253 (.A(spend_limit[15]),
    .X(net252));
 sg13g2_buf_1 input254 (.A(spend_limit[16]),
    .X(net253));
 sg13g2_buf_1 input255 (.A(spend_limit[17]),
    .X(net254));
 sg13g2_buf_1 input256 (.A(spend_limit[18]),
    .X(net255));
 sg13g2_buf_1 input257 (.A(spend_limit[19]),
    .X(net256));
 sg13g2_buf_1 input258 (.A(spend_limit[1]),
    .X(net257));
 sg13g2_buf_1 input259 (.A(spend_limit[20]),
    .X(net258));
 sg13g2_buf_1 input260 (.A(spend_limit[21]),
    .X(net259));
 sg13g2_buf_1 input261 (.A(spend_limit[22]),
    .X(net260));
 sg13g2_buf_1 input262 (.A(spend_limit[23]),
    .X(net261));
 sg13g2_buf_1 input263 (.A(spend_limit[2]),
    .X(net262));
 sg13g2_buf_1 input264 (.A(spend_limit[3]),
    .X(net263));
 sg13g2_buf_1 input265 (.A(spend_limit[4]),
    .X(net264));
 sg13g2_buf_1 input266 (.A(spend_limit[5]),
    .X(net265));
 sg13g2_buf_1 input267 (.A(spend_limit[6]),
    .X(net266));
 sg13g2_buf_1 input268 (.A(spend_limit[7]),
    .X(net267));
 sg13g2_buf_1 input269 (.A(spend_limit[8]),
    .X(net268));
 sg13g2_buf_1 input270 (.A(spend_limit[9]),
    .X(net269));
 sg13g2_buf_1 input271 (.A(time_delta[0]),
    .X(net270));
 sg13g2_buf_1 input272 (.A(time_delta[10]),
    .X(net271));
 sg13g2_buf_1 input273 (.A(time_delta[11]),
    .X(net272));
 sg13g2_buf_1 input274 (.A(time_delta[1]),
    .X(net273));
 sg13g2_buf_1 input275 (.A(time_delta[2]),
    .X(net274));
 sg13g2_buf_1 input276 (.A(time_delta[3]),
    .X(net275));
 sg13g2_buf_1 input277 (.A(time_delta[4]),
    .X(net276));
 sg13g2_buf_1 input278 (.A(time_delta[5]),
    .X(net277));
 sg13g2_buf_1 input279 (.A(time_delta[6]),
    .X(net278));
 sg13g2_buf_1 input280 (.A(time_delta[7]),
    .X(net279));
 sg13g2_buf_1 input281 (.A(time_delta[8]),
    .X(net280));
 sg13g2_buf_1 input282 (.A(time_delta[9]),
    .X(net281));
 sg13g2_buf_1 input283 (.A(valid_in),
    .X(net282));
 sg13g2_buf_1 input284 (.A(window_size[0]),
    .X(net283));
 sg13g2_buf_1 input285 (.A(window_size[10]),
    .X(net284));
 sg13g2_buf_1 input286 (.A(window_size[11]),
    .X(net285));
 sg13g2_buf_1 input287 (.A(window_size[1]),
    .X(net286));
 sg13g2_buf_1 input288 (.A(window_size[2]),
    .X(net287));
 sg13g2_buf_1 input289 (.A(window_size[3]),
    .X(net288));
 sg13g2_buf_1 input290 (.A(window_size[4]),
    .X(net289));
 sg13g2_buf_1 input291 (.A(window_size[5]),
    .X(net290));
 sg13g2_buf_1 input292 (.A(window_size[6]),
    .X(net291));
 sg13g2_buf_1 input293 (.A(window_size[7]),
    .X(net292));
 sg13g2_buf_1 input294 (.A(window_size[8]),
    .X(net293));
 sg13g2_buf_1 input295 (.A(window_size[9]),
    .X(net294));
 sg13g2_buf_1 output296 (.A(net295),
    .X(decision[0]));
 sg13g2_buf_1 output297 (.A(net296),
    .X(decision[1]));
 sg13g2_buf_1 output298 (.A(net297),
    .X(risk_score[0]));
 sg13g2_buf_1 output299 (.A(net298),
    .X(risk_score[1]));
 sg13g2_buf_1 output300 (.A(net299),
    .X(risk_score[2]));
 sg13g2_buf_1 output301 (.A(net300),
    .X(risk_score[3]));
 sg13g2_buf_1 output302 (.A(net301),
    .X(risk_score[4]));
 sg13g2_buf_1 output303 (.A(net302),
    .X(risk_score[5]));
 sg13g2_buf_1 output304 (.A(net303),
    .X(risk_score[6]));
 sg13g2_buf_1 output305 (.A(net304),
    .X(risk_score[7]));
 sg13g2_buf_1 output306 (.A(net305),
    .X(valid_out));
 sg13g2_buf_1 place626 (.A(net626),
    .X(net625));
 sg13g2_buf_1 place627 (.A(_0423_),
    .X(net626));
 sg13g2_buf_1 place628 (.A(_1667_),
    .X(net627));
 sg13g2_buf_1 place629 (.A(_1656_),
    .X(net628));
 sg13g2_buf_1 place630 (.A(_1656_),
    .X(net629));
 sg13g2_buf_1 place631 (.A(net631),
    .X(net630));
 sg13g2_buf_1 place632 (.A(_0602_),
    .X(net631));
 sg13g2_buf_1 place633 (.A(_0602_),
    .X(net632));
 sg13g2_buf_1 place634 (.A(net634),
    .X(net633));
 sg13g2_buf_1 place635 (.A(_0602_),
    .X(net634));
 sg13g2_buf_1 place636 (.A(_1664_),
    .X(net635));
 sg13g2_buf_1 place637 (.A(net639),
    .X(net636));
 sg13g2_buf_1 place638 (.A(net638),
    .X(net637));
 sg13g2_buf_1 place639 (.A(net639),
    .X(net638));
 sg13g2_buf_1 place640 (.A(_0551_),
    .X(net639));
 sg13g2_buf_1 place641 (.A(net642),
    .X(net640));
 sg13g2_buf_1 place642 (.A(net642),
    .X(net641));
 sg13g2_buf_1 place643 (.A(_0529_),
    .X(net642));
 sg13g2_buf_1 place644 (.A(_1437_),
    .X(net643));
 sg13g2_buf_1 place645 (.A(_1439_),
    .X(net644));
 sg13g2_buf_1 place646 (.A(net646),
    .X(net645));
 sg13g2_buf_1 place647 (.A(net647),
    .X(net646));
 sg13g2_buf_1 place648 (.A(net649),
    .X(net647));
 sg13g2_buf_1 place649 (.A(net649),
    .X(net648));
 sg13g2_buf_1 place650 (.A(net650),
    .X(net649));
 sg13g2_buf_1 place651 (.A(_1393_),
    .X(net650));
 sg13g2_buf_1 place652 (.A(net652),
    .X(net651));
 sg13g2_buf_1 place653 (.A(net666),
    .X(net652));
 sg13g2_buf_1 place654 (.A(net654),
    .X(net653));
 sg13g2_buf_1 place655 (.A(net655),
    .X(net654));
 sg13g2_buf_1 place656 (.A(net656),
    .X(net655));
 sg13g2_buf_1 place657 (.A(net659),
    .X(net656));
 sg13g2_buf_1 place658 (.A(net658),
    .X(net657));
 sg13g2_buf_1 place659 (.A(net659),
    .X(net658));
 sg13g2_buf_1 place660 (.A(net666),
    .X(net659));
 sg13g2_buf_1 place661 (.A(net664),
    .X(net660));
 sg13g2_buf_1 place662 (.A(net662),
    .X(net661));
 sg13g2_buf_1 place663 (.A(net664),
    .X(net662));
 sg13g2_buf_1 place664 (.A(net664),
    .X(net663));
 sg13g2_buf_1 place665 (.A(net666),
    .X(net664));
 sg13g2_buf_1 place666 (.A(net666),
    .X(net665));
 sg13g2_buf_1 place667 (.A(net668),
    .X(net666));
 sg13g2_buf_1 place668 (.A(net668),
    .X(net667));
 sg13g2_buf_1 place669 (.A(_1393_),
    .X(net668));
 sg13g2_buf_1 place670 (.A(net670),
    .X(net669));
 sg13g2_buf_1 place671 (.A(\u_win.elapsed[3] ),
    .X(net670));
 sg13g2_buf_1 place672 (.A(\u_win.elapsed[0] ),
    .X(net671));
 sg13g2_buf_1 place673 (.A(\u_spend.spend[10] ),
    .X(net672));
 sg13g2_buf_1 place674 (.A(\u_rule.f_vel ),
    .X(net673));
 sg13g2_buf_1 place675 (.A(\u_rule.f_rapid ),
    .X(net674));
 sg13g2_buf_1 place676 (.A(\u_rule.a_v ),
    .X(net675));
 sg13g2_buf_1 place677 (.A(\u_rule.a_v ),
    .X(net676));
 sg13g2_buf_1 place678 (.A(net695),
    .X(net677));
 sg13g2_buf_1 place679 (.A(net679),
    .X(net678));
 sg13g2_buf_1 place680 (.A(net693),
    .X(net679));
 sg13g2_buf_1 place681 (.A(net686),
    .X(net680));
 sg13g2_buf_1 place682 (.A(net683),
    .X(net681));
 sg13g2_buf_1 place683 (.A(net683),
    .X(net682));
 sg13g2_buf_1 place684 (.A(net686),
    .X(net683));
 sg13g2_buf_1 place685 (.A(net685),
    .X(net684));
 sg13g2_buf_1 place686 (.A(net686),
    .X(net685));
 sg13g2_buf_1 place687 (.A(net693),
    .X(net686));
 sg13g2_buf_1 place688 (.A(net689),
    .X(net687));
 sg13g2_buf_1 place689 (.A(net689),
    .X(net688));
 sg13g2_buf_1 place690 (.A(net690),
    .X(net689));
 sg13g2_buf_1 place691 (.A(net693),
    .X(net690));
 sg13g2_buf_1 place692 (.A(net692),
    .X(net691));
 sg13g2_buf_1 place693 (.A(net693),
    .X(net692));
 sg13g2_buf_1 place694 (.A(net694),
    .X(net693));
 sg13g2_buf_1 place695 (.A(net695),
    .X(net694));
 sg13g2_buf_1 place696 (.A(\u_cnt.v ),
    .X(net695));
 sg13g2_buf_1 place697 (.A(\u_cnt.v ),
    .X(net696));
 sg13g2_buf_1 place698 (.A(\dt_q[3] ),
    .X(net697));
 sg13g2_buf_1 place699 (.A(\dt_q[0] ),
    .X(net698));
 sg13g2_buf_1 place700 (.A(\amount_q[9] ),
    .X(net699));
 sg13g2_buf_1 place701 (.A(\amount_q[8] ),
    .X(net700));
 sg13g2_buf_1 place702 (.A(\amount_q[7] ),
    .X(net701));
 sg13g2_buf_1 place703 (.A(\amount_q[6] ),
    .X(net702));
 sg13g2_buf_1 place704 (.A(\amount_q[5] ),
    .X(net703));
 sg13g2_buf_1 place705 (.A(\amount_q[4] ),
    .X(net704));
 sg13g2_buf_1 place706 (.A(\amount_q[3] ),
    .X(net705));
 sg13g2_buf_1 place707 (.A(\amount_q[2] ),
    .X(net706));
 sg13g2_buf_1 place708 (.A(\amount_q[1] ),
    .X(net707));
 sg13g2_buf_1 place709 (.A(\amount_q[15] ),
    .X(net708));
 sg13g2_buf_1 place710 (.A(\amount_q[14] ),
    .X(net709));
 sg13g2_buf_1 place711 (.A(\amount_q[13] ),
    .X(net710));
 sg13g2_buf_1 place712 (.A(\amount_q[13] ),
    .X(net711));
 sg13g2_buf_1 place713 (.A(net713),
    .X(net712));
 sg13g2_buf_1 place714 (.A(\amount_q[12] ),
    .X(net713));
 sg13g2_buf_1 place715 (.A(\amount_q[11] ),
    .X(net714));
 sg13g2_buf_1 place716 (.A(\amount_q[10] ),
    .X(net715));
 sg13g2_buf_1 place717 (.A(\amount_q[0] ),
    .X(net716));
 sg13g2_buf_1 place718 (.A(net727),
    .X(net717));
 sg13g2_buf_1 place719 (.A(net719),
    .X(net718));
 sg13g2_buf_1 place720 (.A(net727),
    .X(net719));
 sg13g2_buf_1 place721 (.A(net722),
    .X(net720));
 sg13g2_buf_1 place722 (.A(net722),
    .X(net721));
 sg13g2_buf_1 place723 (.A(net727),
    .X(net722));
 sg13g2_buf_1 place724 (.A(net725),
    .X(net723));
 sg13g2_buf_1 place725 (.A(net725),
    .X(net724));
 sg13g2_buf_1 place726 (.A(net726),
    .X(net725));
 sg13g2_buf_1 place727 (.A(net727),
    .X(net726));
 sg13g2_buf_1 place728 (.A(net728),
    .X(net727));
 sg13g2_buf_1 place729 (.A(net733),
    .X(net728));
 sg13g2_buf_1 place730 (.A(net730),
    .X(net729));
 sg13g2_buf_1 place731 (.A(net733),
    .X(net730));
 sg13g2_buf_1 place732 (.A(net733),
    .X(net731));
 sg13g2_buf_1 place733 (.A(net733),
    .X(net732));
 sg13g2_buf_1 place734 (.A(net737),
    .X(net733));
 sg13g2_buf_1 place735 (.A(net735),
    .X(net734));
 sg13g2_buf_1 place736 (.A(net737),
    .X(net735));
 sg13g2_buf_1 place737 (.A(net737),
    .X(net736));
 sg13g2_buf_1 place738 (.A(_1271_),
    .X(net737));
 sg13g2_buf_1 place739 (.A(net743),
    .X(net738));
 sg13g2_buf_1 place740 (.A(net742),
    .X(net739));
 sg13g2_buf_1 place741 (.A(net741),
    .X(net740));
 sg13g2_buf_1 place742 (.A(net742),
    .X(net741));
 sg13g2_buf_1 place743 (.A(net743),
    .X(net742));
 sg13g2_buf_1 place744 (.A(_1271_),
    .X(net743));
 sg13g2_buf_1 place745 (.A(net745),
    .X(net744));
 sg13g2_buf_1 place746 (.A(net746),
    .X(net745));
 sg13g2_buf_1 place747 (.A(net747),
    .X(net746));
 sg13g2_buf_1 place748 (.A(net282),
    .X(net747));
 sg13g2_buf_1 place749 (.A(net282),
    .X(net748));
 sg13g2_buf_1 place750 (.A(net750),
    .X(net749));
 sg13g2_buf_1 place751 (.A(net754),
    .X(net750));
 sg13g2_buf_1 place752 (.A(net753),
    .X(net751));
 sg13g2_buf_1 place753 (.A(net753),
    .X(net752));
 sg13g2_buf_1 place754 (.A(net754),
    .X(net753));
 sg13g2_buf_1 place755 (.A(net282),
    .X(net754));
 sg13g2_buf_1 place756 (.A(net250),
    .X(net755));
 sg13g2_buf_1 place757 (.A(net757),
    .X(net756));
 sg13g2_buf_1 place758 (.A(net245),
    .X(net757));
 sg13g2_dfrbpq_1 \u_cnt.count[0]$_SDFFE_PN0P_  (.RESET_B(net),
    .D(_0141_),
    .Q(\u_cnt.count[0] ),
    .CLK(clknet_5_26__leaf_clk));
 sg13g2_tiehi \u_cnt.count[0]$_SDFFE_PN0P__1  (.L_HI(net));
 sg13g2_dfrbpq_1 \u_cnt.count[1]$_SDFFE_PN0P_  (.RESET_B(net1),
    .D(_0140_),
    .Q(\u_cnt.count[1] ),
    .CLK(clknet_5_27__leaf_clk));
 sg13g2_tiehi \u_cnt.count[1]$_SDFFE_PN0P__2  (.L_HI(net1));
 sg13g2_dfrbpq_1 \u_cnt.count[2]$_SDFFE_PN0P_  (.RESET_B(net2),
    .D(_0139_),
    .Q(\u_cnt.count[2] ),
    .CLK(clknet_5_26__leaf_clk));
 sg13g2_tiehi \u_cnt.count[2]$_SDFFE_PN0P__3  (.L_HI(net2));
 sg13g2_dfrbpq_1 \u_cnt.count[3]$_SDFFE_PN0P_  (.RESET_B(net3),
    .D(_0138_),
    .Q(\u_cnt.count[3] ),
    .CLK(clknet_5_26__leaf_clk));
 sg13g2_tiehi \u_cnt.count[3]$_SDFFE_PN0P__4  (.L_HI(net3));
 sg13g2_dfrbpq_1 \u_cnt.count[4]$_SDFFE_PN0P_  (.RESET_B(net4),
    .D(_0137_),
    .Q(\u_cnt.count[4] ),
    .CLK(clknet_5_26__leaf_clk));
 sg13g2_tiehi \u_cnt.count[4]$_SDFFE_PN0P__5  (.L_HI(net4));
 sg13g2_dfrbpq_1 \u_cnt.count[5]$_SDFFE_PN0P_  (.RESET_B(net5),
    .D(_0136_),
    .Q(\u_cnt.count[5] ),
    .CLK(clknet_5_15__leaf_clk));
 sg13g2_tiehi \u_cnt.count[5]$_SDFFE_PN0P__6  (.L_HI(net5));
 sg13g2_dfrbpq_1 \u_cnt.count[6]$_SDFFE_PN0P_  (.RESET_B(net6),
    .D(_0135_),
    .Q(\u_cnt.count[6] ),
    .CLK(clknet_5_14__leaf_clk));
 sg13g2_tiehi \u_cnt.count[6]$_SDFFE_PN0P__7  (.L_HI(net6));
 sg13g2_dfrbpq_1 \u_cnt.count[7]$_SDFFE_PN0P_  (.RESET_B(net7),
    .D(_0187_),
    .Q(\u_cnt.count[7] ),
    .CLK(clknet_5_15__leaf_clk));
 sg13g2_tiehi \u_cnt.count[7]$_SDFFE_PN0P__8  (.L_HI(net7));
 sg13g2_dfrbpq_1 \u_if.amount_q[0]$_SDFFE_PN0P_  (.RESET_B(net8),
    .D(_0032_),
    .Q(\amount_q[0] ),
    .CLK(clknet_5_21__leaf_clk));
 sg13g2_tiehi \u_if.amount_q[0]$_SDFFE_PN0P__9  (.L_HI(net8));
 sg13g2_dfrbpq_1 \u_if.amount_q[10]$_SDFFE_PN0P_  (.RESET_B(net9),
    .D(_0022_),
    .Q(\amount_q[10] ),
    .CLK(clknet_5_11__leaf_clk));
 sg13g2_tiehi \u_if.amount_q[10]$_SDFFE_PN0P__10  (.L_HI(net9));
 sg13g2_dfrbpq_1 \u_if.amount_q[11]$_SDFFE_PN0P_  (.RESET_B(net10),
    .D(_0021_),
    .Q(\amount_q[11] ),
    .CLK(clknet_5_19__leaf_clk));
 sg13g2_tiehi \u_if.amount_q[11]$_SDFFE_PN0P__11  (.L_HI(net10));
 sg13g2_dfrbpq_1 \u_if.amount_q[12]$_SDFFE_PN0P_  (.RESET_B(net11),
    .D(_0020_),
    .Q(\amount_q[12] ),
    .CLK(clknet_5_18__leaf_clk));
 sg13g2_tiehi \u_if.amount_q[12]$_SDFFE_PN0P__12  (.L_HI(net11));
 sg13g2_dfrbpq_1 \u_if.amount_q[13]$_SDFFE_PN0P_  (.RESET_B(net12),
    .D(_0019_),
    .Q(\amount_q[13] ),
    .CLK(clknet_5_11__leaf_clk));
 sg13g2_tiehi \u_if.amount_q[13]$_SDFFE_PN0P__13  (.L_HI(net12));
 sg13g2_dfrbpq_1 \u_if.amount_q[14]$_SDFFE_PN0P_  (.RESET_B(net13),
    .D(_0018_),
    .Q(\amount_q[14] ),
    .CLK(clknet_5_11__leaf_clk));
 sg13g2_tiehi \u_if.amount_q[14]$_SDFFE_PN0P__14  (.L_HI(net13));
 sg13g2_dfrbpq_1 \u_if.amount_q[15]$_SDFFE_PN0P_  (.RESET_B(net14),
    .D(_0175_),
    .Q(\amount_q[15] ),
    .CLK(clknet_5_8__leaf_clk));
 sg13g2_tiehi \u_if.amount_q[15]$_SDFFE_PN0P__15  (.L_HI(net14));
 sg13g2_dfrbpq_1 \u_if.amount_q[1]$_SDFFE_PN0P_  (.RESET_B(net15),
    .D(_0031_),
    .Q(\amount_q[1] ),
    .CLK(clknet_5_21__leaf_clk));
 sg13g2_tiehi \u_if.amount_q[1]$_SDFFE_PN0P__16  (.L_HI(net15));
 sg13g2_dfrbpq_1 \u_if.amount_q[2]$_SDFFE_PN0P_  (.RESET_B(net16),
    .D(_0030_),
    .Q(\amount_q[2] ),
    .CLK(clknet_5_21__leaf_clk));
 sg13g2_tiehi \u_if.amount_q[2]$_SDFFE_PN0P__17  (.L_HI(net16));
 sg13g2_dfrbpq_1 \u_if.amount_q[3]$_SDFFE_PN0P_  (.RESET_B(net17),
    .D(_0029_),
    .Q(\amount_q[3] ),
    .CLK(clknet_5_22__leaf_clk));
 sg13g2_tiehi \u_if.amount_q[3]$_SDFFE_PN0P__18  (.L_HI(net17));
 sg13g2_dfrbpq_1 \u_if.amount_q[4]$_SDFFE_PN0P_  (.RESET_B(net18),
    .D(_0028_),
    .Q(\amount_q[4] ),
    .CLK(clknet_5_21__leaf_clk));
 sg13g2_tiehi \u_if.amount_q[4]$_SDFFE_PN0P__19  (.L_HI(net18));
 sg13g2_dfrbpq_1 \u_if.amount_q[5]$_SDFFE_PN0P_  (.RESET_B(net19),
    .D(_0027_),
    .Q(\amount_q[5] ),
    .CLK(clknet_5_22__leaf_clk));
 sg13g2_tiehi \u_if.amount_q[5]$_SDFFE_PN0P__20  (.L_HI(net19));
 sg13g2_dfrbpq_1 \u_if.amount_q[6]$_SDFFE_PN0P_  (.RESET_B(net20),
    .D(_0026_),
    .Q(\amount_q[6] ),
    .CLK(clknet_5_22__leaf_clk));
 sg13g2_tiehi \u_if.amount_q[6]$_SDFFE_PN0P__21  (.L_HI(net20));
 sg13g2_dfrbpq_1 \u_if.amount_q[7]$_SDFFE_PN0P_  (.RESET_B(net21),
    .D(_0025_),
    .Q(\amount_q[7] ),
    .CLK(clknet_5_23__leaf_clk));
 sg13g2_tiehi \u_if.amount_q[7]$_SDFFE_PN0P__22  (.L_HI(net21));
 sg13g2_dfrbpq_1 \u_if.amount_q[8]$_SDFFE_PN0P_  (.RESET_B(net22),
    .D(_0024_),
    .Q(\amount_q[8] ),
    .CLK(clknet_5_23__leaf_clk));
 sg13g2_tiehi \u_if.amount_q[8]$_SDFFE_PN0P__23  (.L_HI(net22));
 sg13g2_dfrbpq_1 \u_if.amount_q[9]$_SDFFE_PN0P_  (.RESET_B(net23),
    .D(_0023_),
    .Q(\amount_q[9] ),
    .CLK(clknet_5_22__leaf_clk));
 sg13g2_tiehi \u_if.amount_q[9]$_SDFFE_PN0P__24  (.L_HI(net23));
 sg13g2_dfrbpq_1 \u_if.cat_q[0]$_SDFFE_PN0P_  (.RESET_B(net24),
    .D(_0017_),
    .Q(\cat_q[0] ),
    .CLK(clknet_5_3__leaf_clk));
 sg13g2_tiehi \u_if.cat_q[0]$_SDFFE_PN0P__25  (.L_HI(net24));
 sg13g2_dfrbpq_1 \u_if.cat_q[1]$_SDFFE_PN0P_  (.RESET_B(net25),
    .D(_0016_),
    .Q(\cat_q[1] ),
    .CLK(clknet_5_3__leaf_clk));
 sg13g2_tiehi \u_if.cat_q[1]$_SDFFE_PN0P__26  (.L_HI(net25));
 sg13g2_dfrbpq_1 \u_if.cat_q[2]$_SDFFE_PN0P_  (.RESET_B(net26),
    .D(_0015_),
    .Q(\cat_q[2] ),
    .CLK(clknet_5_2__leaf_clk));
 sg13g2_tiehi \u_if.cat_q[2]$_SDFFE_PN0P__27  (.L_HI(net26));
 sg13g2_dfrbpq_1 \u_if.cat_q[3]$_SDFFE_PN0P_  (.RESET_B(net27),
    .D(_0014_),
    .Q(\cat_q[3] ),
    .CLK(clknet_5_2__leaf_clk));
 sg13g2_tiehi \u_if.cat_q[3]$_SDFFE_PN0P__28  (.L_HI(net27));
 sg13g2_dfrbpq_1 \u_if.cat_q[4]$_SDFFE_PN0P_  (.RESET_B(net28),
    .D(_0013_),
    .Q(\cat_q[4] ),
    .CLK(clknet_5_3__leaf_clk));
 sg13g2_tiehi \u_if.cat_q[4]$_SDFFE_PN0P__29  (.L_HI(net28));
 sg13g2_dfrbpq_1 \u_if.cat_q[5]$_SDFFE_PN0P_  (.RESET_B(net29),
    .D(_0012_),
    .Q(\cat_q[5] ),
    .CLK(clknet_5_2__leaf_clk));
 sg13g2_tiehi \u_if.cat_q[5]$_SDFFE_PN0P__30  (.L_HI(net29));
 sg13g2_dfrbpq_1 \u_if.cat_q[6]$_SDFFE_PN0P_  (.RESET_B(net30),
    .D(_0011_),
    .Q(\cat_q[6] ),
    .CLK(clknet_5_2__leaf_clk));
 sg13g2_tiehi \u_if.cat_q[6]$_SDFFE_PN0P__31  (.L_HI(net30));
 sg13g2_dfrbpq_1 \u_if.cat_q[7]$_SDFFE_PN0P_  (.RESET_B(net31),
    .D(_0174_),
    .Q(\cat_q[7] ),
    .CLK(clknet_5_20__leaf_clk));
 sg13g2_tiehi \u_if.cat_q[7]$_SDFFE_PN0P__32  (.L_HI(net31));
 sg13g2_dfrbpq_1 \u_if.dt_q[0]$_SDFFE_PN0P_  (.RESET_B(net32),
    .D(_0010_),
    .Q(\dt_q[0] ),
    .CLK(clknet_5_8__leaf_clk));
 sg13g2_tiehi \u_if.dt_q[0]$_SDFFE_PN0P__33  (.L_HI(net32));
 sg13g2_dfrbpq_1 \u_if.dt_q[10]$_SDFFE_PN0P_  (.RESET_B(net33),
    .D(_0000_),
    .Q(\dt_q[10] ),
    .CLK(clknet_5_14__leaf_clk));
 sg13g2_tiehi \u_if.dt_q[10]$_SDFFE_PN0P__34  (.L_HI(net33));
 sg13g2_dfrbpq_1 \u_if.dt_q[11]$_SDFFE_PN0P_  (.RESET_B(net34),
    .D(_0173_),
    .Q(\dt_q[11] ),
    .CLK(clknet_5_15__leaf_clk));
 sg13g2_tiehi \u_if.dt_q[11]$_SDFFE_PN0P__35  (.L_HI(net34));
 sg13g2_dfrbpq_1 \u_if.dt_q[1]$_SDFFE_PN0P_  (.RESET_B(net35),
    .D(_0009_),
    .Q(\dt_q[1] ),
    .CLK(clknet_5_8__leaf_clk));
 sg13g2_tiehi \u_if.dt_q[1]$_SDFFE_PN0P__36  (.L_HI(net35));
 sg13g2_dfrbpq_1 \u_if.dt_q[2]$_SDFFE_PN0P_  (.RESET_B(net36),
    .D(_0008_),
    .Q(\dt_q[2] ),
    .CLK(clknet_5_8__leaf_clk));
 sg13g2_tiehi \u_if.dt_q[2]$_SDFFE_PN0P__37  (.L_HI(net36));
 sg13g2_dfrbpq_1 \u_if.dt_q[3]$_SDFFE_PN0P_  (.RESET_B(net37),
    .D(_0007_),
    .Q(\dt_q[3] ),
    .CLK(clknet_5_8__leaf_clk));
 sg13g2_tiehi \u_if.dt_q[3]$_SDFFE_PN0P__38  (.L_HI(net37));
 sg13g2_dfrbpq_1 \u_if.dt_q[4]$_SDFFE_PN0P_  (.RESET_B(net38),
    .D(_0006_),
    .Q(\dt_q[4] ),
    .CLK(clknet_5_14__leaf_clk));
 sg13g2_tiehi \u_if.dt_q[4]$_SDFFE_PN0P__39  (.L_HI(net38));
 sg13g2_dfrbpq_1 \u_if.dt_q[5]$_SDFFE_PN0P_  (.RESET_B(net39),
    .D(_0005_),
    .Q(\dt_q[5] ),
    .CLK(clknet_5_14__leaf_clk));
 sg13g2_tiehi \u_if.dt_q[5]$_SDFFE_PN0P__40  (.L_HI(net39));
 sg13g2_dfrbpq_1 \u_if.dt_q[6]$_SDFFE_PN0P_  (.RESET_B(net40),
    .D(_0004_),
    .Q(\dt_q[6] ),
    .CLK(clknet_5_10__leaf_clk));
 sg13g2_tiehi \u_if.dt_q[6]$_SDFFE_PN0P__41  (.L_HI(net40));
 sg13g2_dfrbpq_1 \u_if.dt_q[7]$_SDFFE_PN0P_  (.RESET_B(net41),
    .D(_0003_),
    .Q(\dt_q[7] ),
    .CLK(clknet_5_10__leaf_clk));
 sg13g2_tiehi \u_if.dt_q[7]$_SDFFE_PN0P__42  (.L_HI(net41));
 sg13g2_dfrbpq_1 \u_if.dt_q[8]$_SDFFE_PN0P_  (.RESET_B(net42),
    .D(_0002_),
    .Q(\dt_q[8] ),
    .CLK(clknet_5_14__leaf_clk));
 sg13g2_tiehi \u_if.dt_q[8]$_SDFFE_PN0P__43  (.L_HI(net42));
 sg13g2_dfrbpq_1 \u_if.dt_q[9]$_SDFFE_PN0P_  (.RESET_B(net43),
    .D(_0001_),
    .Q(\dt_q[9] ),
    .CLK(clknet_5_14__leaf_clk));
 sg13g2_tiehi \u_if.dt_q[9]$_SDFFE_PN0P__44  (.L_HI(net43));
 sg13g2_dfrbpq_1 \u_if.v_q$_SDFF_PN0_  (.RESET_B(net44),
    .D(_0176_),
    .Q(\u_cnt.v ),
    .CLK(clknet_5_26__leaf_clk));
 sg13g2_tiehi \u_if.v_q$_SDFF_PN0__45  (.L_HI(net44));
 sg13g2_dfrbpq_1 \u_rule.a_v$_SDFF_PN0_  (.RESET_B(net45),
    .D(_0193_),
    .Q(\u_rule.a_v ),
    .CLK(clknet_5_30__leaf_clk));
 sg13g2_tiehi \u_rule.a_v$_SDFF_PN0__46  (.L_HI(net45));
 sg13g2_dfrbpq_1 \u_rule.decision[0]$_SDFFE_PN0P_  (.RESET_B(net46),
    .D(_0172_),
    .Q(net295),
    .CLK(clknet_5_30__leaf_clk));
 sg13g2_tiehi \u_rule.decision[0]$_SDFFE_PN0P__47  (.L_HI(net46));
 sg13g2_dfrbpq_1 \u_rule.decision[1]$_SDFFE_PN0P_  (.RESET_B(net47),
    .D(_0196_),
    .Q(net296),
    .CLK(clknet_5_30__leaf_clk));
 sg13g2_tiehi \u_rule.decision[1]$_SDFFE_PN0P__48  (.L_HI(net47));
 sg13g2_dfrbpq_1 \u_rule.f_anom$_SDFF_PN0_  (.RESET_B(net48),
    .D(_0189_),
    .Q(\u_rule.f_anom ),
    .CLK(clknet_5_28__leaf_clk));
 sg13g2_tiehi \u_rule.f_anom$_SDFF_PN0__49  (.L_HI(net48));
 sg13g2_dfrbpq_1 \u_rule.f_over$_SDFF_PN0_  (.RESET_B(net49),
    .D(_0192_),
    .Q(\u_rule.f_over ),
    .CLK(clknet_5_29__leaf_clk));
 sg13g2_tiehi \u_rule.f_over$_SDFF_PN0__50  (.L_HI(net49));
 sg13g2_dfrbpq_1 \u_rule.f_rapid$_SDFF_PN0_  (.RESET_B(net50),
    .D(_0190_),
    .Q(\u_rule.f_rapid ),
    .CLK(clknet_5_27__leaf_clk));
 sg13g2_tiehi \u_rule.f_rapid$_SDFF_PN0__51  (.L_HI(net50));
 sg13g2_dfrbpq_1 \u_rule.f_vel$_SDFF_PN0_  (.RESET_B(net51),
    .D(_0191_),
    .Q(\u_rule.f_vel ),
    .CLK(clknet_5_27__leaf_clk));
 sg13g2_tiehi \u_rule.f_vel$_SDFF_PN0__52  (.L_HI(net51));
 sg13g2_dfrbpq_1 \u_rule.risk_score[0]$_SDFFE_PN0P_  (.RESET_B(net52),
    .D(_0171_),
    .Q(net297),
    .CLK(clknet_5_30__leaf_clk));
 sg13g2_tiehi \u_rule.risk_score[0]$_SDFFE_PN0P__53  (.L_HI(net52));
 sg13g2_dfrbpq_1 \u_rule.risk_score[1]$_SDFFE_PN0P_  (.RESET_B(net53),
    .D(_0170_),
    .Q(net298),
    .CLK(clknet_5_31__leaf_clk));
 sg13g2_tiehi \u_rule.risk_score[1]$_SDFFE_PN0P__54  (.L_HI(net53));
 sg13g2_dfrbpq_1 \u_rule.risk_score[2]$_SDFFE_PN0P_  (.RESET_B(net54),
    .D(_0169_),
    .Q(net299),
    .CLK(clknet_5_31__leaf_clk));
 sg13g2_tiehi \u_rule.risk_score[2]$_SDFFE_PN0P__55  (.L_HI(net54));
 sg13g2_dfrbpq_1 \u_rule.risk_score[3]$_SDFFE_PN0P_  (.RESET_B(net55),
    .D(_0168_),
    .Q(net300),
    .CLK(clknet_5_31__leaf_clk));
 sg13g2_tiehi \u_rule.risk_score[3]$_SDFFE_PN0P__56  (.L_HI(net55));
 sg13g2_dfrbpq_1 \u_rule.risk_score[4]$_SDFFE_PN0P_  (.RESET_B(net56),
    .D(_0167_),
    .Q(net301),
    .CLK(clknet_5_31__leaf_clk));
 sg13g2_tiehi \u_rule.risk_score[4]$_SDFFE_PN0P__57  (.L_HI(net56));
 sg13g2_dfrbpq_1 \u_rule.risk_score[5]$_SDFFE_PN0P_  (.RESET_B(net57),
    .D(_0166_),
    .Q(net302),
    .CLK(clknet_5_31__leaf_clk));
 sg13g2_tiehi \u_rule.risk_score[5]$_SDFFE_PN0P__58  (.L_HI(net57));
 sg13g2_dfrbpq_1 \u_rule.risk_score[6]$_SDFFE_PN0P_  (.RESET_B(net58),
    .D(_0165_),
    .Q(net303),
    .CLK(clknet_5_29__leaf_clk));
 sg13g2_tiehi \u_rule.risk_score[6]$_SDFFE_PN0P__59  (.L_HI(net58));
 sg13g2_dfrbpq_1 \u_rule.risk_score[7]$_SDFFE_PN0P_  (.RESET_B(net59),
    .D(_0195_),
    .Q(net304),
    .CLK(clknet_5_29__leaf_clk));
 sg13g2_tiehi \u_rule.risk_score[7]$_SDFFE_PN0P__60  (.L_HI(net59));
 sg13g2_dfrbpq_1 \u_rule.valid_out$_SDFF_PN0_  (.RESET_B(net60),
    .D(_0194_),
    .Q(net305),
    .CLK(clknet_5_31__leaf_clk));
 sg13g2_tiehi \u_rule.valid_out$_SDFF_PN0__61  (.L_HI(net60));
 sg13g2_dfrbpq_1 \u_spend.spend[0]$_SDFFE_PN0P_  (.RESET_B(net61),
    .D(_0164_),
    .Q(\u_spend.spend[0] ),
    .CLK(clknet_5_29__leaf_clk));
 sg13g2_tiehi \u_spend.spend[0]$_SDFFE_PN0P__62  (.L_HI(net61));
 sg13g2_dfrbpq_1 \u_spend.spend[10]$_SDFFE_PN0P_  (.RESET_B(net62),
    .D(_0154_),
    .Q(\u_spend.spend[10] ),
    .CLK(clknet_5_25__leaf_clk));
 sg13g2_tiehi \u_spend.spend[10]$_SDFFE_PN0P__63  (.L_HI(net62));
 sg13g2_dfrbpq_1 \u_spend.spend[11]$_SDFFE_PN0P_  (.RESET_B(net63),
    .D(_0153_),
    .Q(\u_spend.spend[11] ),
    .CLK(clknet_5_27__leaf_clk));
 sg13g2_tiehi \u_spend.spend[11]$_SDFFE_PN0P__64  (.L_HI(net63));
 sg13g2_dfrbpq_1 \u_spend.spend[12]$_SDFFE_PN0P_  (.RESET_B(net64),
    .D(_0152_),
    .Q(\u_spend.spend[12] ),
    .CLK(clknet_5_24__leaf_clk));
 sg13g2_tiehi \u_spend.spend[12]$_SDFFE_PN0P__65  (.L_HI(net64));
 sg13g2_dfrbpq_1 \u_spend.spend[13]$_SDFFE_PN0P_  (.RESET_B(net65),
    .D(_0151_),
    .Q(\u_spend.spend[13] ),
    .CLK(clknet_5_25__leaf_clk));
 sg13g2_tiehi \u_spend.spend[13]$_SDFFE_PN0P__66  (.L_HI(net65));
 sg13g2_dfrbpq_1 \u_spend.spend[14]$_SDFFE_PN0P_  (.RESET_B(net66),
    .D(_0150_),
    .Q(\u_spend.spend[14] ),
    .CLK(clknet_5_25__leaf_clk));
 sg13g2_tiehi \u_spend.spend[14]$_SDFFE_PN0P__67  (.L_HI(net66));
 sg13g2_dfrbpq_1 \u_spend.spend[15]$_SDFFE_PN0P_  (.RESET_B(net67),
    .D(_0149_),
    .Q(\u_spend.spend[15] ),
    .CLK(clknet_5_25__leaf_clk));
 sg13g2_tiehi \u_spend.spend[15]$_SDFFE_PN0P__68  (.L_HI(net67));
 sg13g2_dfrbpq_1 \u_spend.spend[16]$_SDFFE_PN0P_  (.RESET_B(net68),
    .D(_0148_),
    .Q(\u_spend.spend[16] ),
    .CLK(clknet_5_28__leaf_clk));
 sg13g2_tiehi \u_spend.spend[16]$_SDFFE_PN0P__69  (.L_HI(net68));
 sg13g2_dfrbpq_1 \u_spend.spend[17]$_SDFFE_PN0P_  (.RESET_B(net69),
    .D(_0147_),
    .Q(\u_spend.spend[17] ),
    .CLK(clknet_5_28__leaf_clk));
 sg13g2_tiehi \u_spend.spend[17]$_SDFFE_PN0P__70  (.L_HI(net69));
 sg13g2_dfrbpq_1 \u_spend.spend[18]$_SDFFE_PN0P_  (.RESET_B(net70),
    .D(_0146_),
    .Q(\u_spend.spend[18] ),
    .CLK(clknet_5_28__leaf_clk));
 sg13g2_tiehi \u_spend.spend[18]$_SDFFE_PN0P__71  (.L_HI(net70));
 sg13g2_dfrbpq_1 \u_spend.spend[19]$_SDFFE_PN0P_  (.RESET_B(net71),
    .D(_0145_),
    .Q(\u_spend.spend[19] ),
    .CLK(clknet_5_30__leaf_clk));
 sg13g2_tiehi \u_spend.spend[19]$_SDFFE_PN0P__72  (.L_HI(net71));
 sg13g2_dfrbpq_1 \u_spend.spend[1]$_SDFFE_PN0P_  (.RESET_B(net72),
    .D(_0163_),
    .Q(\u_spend.spend[1] ),
    .CLK(clknet_5_23__leaf_clk));
 sg13g2_tiehi \u_spend.spend[1]$_SDFFE_PN0P__73  (.L_HI(net72));
 sg13g2_dfrbpq_1 \u_spend.spend[20]$_SDFFE_PN0P_  (.RESET_B(net73),
    .D(_0144_),
    .Q(\u_spend.spend[20] ),
    .CLK(clknet_5_30__leaf_clk));
 sg13g2_tiehi \u_spend.spend[20]$_SDFFE_PN0P__74  (.L_HI(net73));
 sg13g2_dfrbpq_1 \u_spend.spend[21]$_SDFFE_PN0P_  (.RESET_B(net74),
    .D(_0143_),
    .Q(\u_spend.spend[21] ),
    .CLK(clknet_5_28__leaf_clk));
 sg13g2_tiehi \u_spend.spend[21]$_SDFFE_PN0P__75  (.L_HI(net74));
 sg13g2_dfrbpq_1 \u_spend.spend[22]$_SDFFE_PN0P_  (.RESET_B(net75),
    .D(_0142_),
    .Q(\u_spend.spend[22] ),
    .CLK(clknet_5_27__leaf_clk));
 sg13g2_tiehi \u_spend.spend[22]$_SDFFE_PN0P__76  (.L_HI(net75));
 sg13g2_dfrbpq_1 \u_spend.spend[23]$_SDFFE_PN0P_  (.RESET_B(net76),
    .D(_0188_),
    .Q(\u_spend.spend[23] ),
    .CLK(clknet_5_27__leaf_clk));
 sg13g2_tiehi \u_spend.spend[23]$_SDFFE_PN0P__77  (.L_HI(net76));
 sg13g2_dfrbpq_1 \u_spend.spend[2]$_SDFFE_PN0P_  (.RESET_B(net77),
    .D(_0162_),
    .Q(\u_spend.spend[2] ),
    .CLK(clknet_5_22__leaf_clk));
 sg13g2_tiehi \u_spend.spend[2]$_SDFFE_PN0P__78  (.L_HI(net77));
 sg13g2_dfrbpq_1 \u_spend.spend[3]$_SDFFE_PN0P_  (.RESET_B(net78),
    .D(_0161_),
    .Q(\u_spend.spend[3] ),
    .CLK(clknet_5_23__leaf_clk));
 sg13g2_tiehi \u_spend.spend[3]$_SDFFE_PN0P__79  (.L_HI(net78));
 sg13g2_dfrbpq_1 \u_spend.spend[4]$_SDFFE_PN0P_  (.RESET_B(net79),
    .D(_0160_),
    .Q(\u_spend.spend[4] ),
    .CLK(clknet_5_25__leaf_clk));
 sg13g2_tiehi \u_spend.spend[4]$_SDFFE_PN0P__80  (.L_HI(net79));
 sg13g2_dfrbpq_1 \u_spend.spend[5]$_SDFFE_PN0P_  (.RESET_B(net80),
    .D(_0159_),
    .Q(\u_spend.spend[5] ),
    .CLK(clknet_5_28__leaf_clk));
 sg13g2_tiehi \u_spend.spend[5]$_SDFFE_PN0P__81  (.L_HI(net80));
 sg13g2_dfrbpq_1 \u_spend.spend[6]$_SDFFE_PN0P_  (.RESET_B(net81),
    .D(_0158_),
    .Q(\u_spend.spend[6] ),
    .CLK(clknet_5_23__leaf_clk));
 sg13g2_tiehi \u_spend.spend[6]$_SDFFE_PN0P__82  (.L_HI(net81));
 sg13g2_dfrbpq_1 \u_spend.spend[7]$_SDFFE_PN0P_  (.RESET_B(net82),
    .D(_0157_),
    .Q(\u_spend.spend[7] ),
    .CLK(clknet_5_23__leaf_clk));
 sg13g2_tiehi \u_spend.spend[7]$_SDFFE_PN0P__83  (.L_HI(net82));
 sg13g2_dfrbpq_1 \u_spend.spend[8]$_SDFFE_PN0P_  (.RESET_B(net83),
    .D(_0156_),
    .Q(\u_spend.spend[8] ),
    .CLK(clknet_5_29__leaf_clk));
 sg13g2_tiehi \u_spend.spend[8]$_SDFFE_PN0P__84  (.L_HI(net83));
 sg13g2_dfrbpq_1 \u_spend.spend[9]$_SDFFE_PN0P_  (.RESET_B(net84),
    .D(_0155_),
    .Q(\u_spend.spend[9] ),
    .CLK(clknet_5_29__leaf_clk));
 sg13g2_tiehi \u_spend.spend[9]$_SDFFE_PN0P__85  (.L_HI(net84));
 sg13g2_dfrbpq_1 \u_win.elapsed[0]$_SDFFE_PN0P_  (.RESET_B(net85),
    .D(_0134_),
    .Q(\u_win.elapsed[0] ),
    .CLK(clknet_5_10__leaf_clk));
 sg13g2_tiehi \u_win.elapsed[0]$_SDFFE_PN0P__86  (.L_HI(net85));
 sg13g2_dfrbpq_1 \u_win.elapsed[10]$_SDFFE_PN0P_  (.RESET_B(net86),
    .D(_0124_),
    .Q(\u_win.elapsed[10] ),
    .CLK(clknet_5_15__leaf_clk));
 sg13g2_tiehi \u_win.elapsed[10]$_SDFFE_PN0P__87  (.L_HI(net86));
 sg13g2_dfrbpq_1 \u_win.elapsed[11]$_SDFFE_PN0P_  (.RESET_B(net87),
    .D(_0186_),
    .Q(\u_win.elapsed[11] ),
    .CLK(clknet_5_26__leaf_clk));
 sg13g2_tiehi \u_win.elapsed[11]$_SDFFE_PN0P__88  (.L_HI(net87));
 sg13g2_dfrbpq_1 \u_win.elapsed[1]$_SDFFE_PN0P_  (.RESET_B(net88),
    .D(_0133_),
    .Q(\u_win.elapsed[1] ),
    .CLK(clknet_5_11__leaf_clk));
 sg13g2_tiehi \u_win.elapsed[1]$_SDFFE_PN0P__89  (.L_HI(net88));
 sg13g2_dfrbpq_1 \u_win.elapsed[2]$_SDFFE_PN0P_  (.RESET_B(net89),
    .D(_0132_),
    .Q(\u_win.elapsed[2] ),
    .CLK(clknet_5_10__leaf_clk));
 sg13g2_tiehi \u_win.elapsed[2]$_SDFFE_PN0P__90  (.L_HI(net89));
 sg13g2_dfrbpq_1 \u_win.elapsed[3]$_SDFFE_PN0P_  (.RESET_B(net90),
    .D(_0131_),
    .Q(\u_win.elapsed[3] ),
    .CLK(clknet_5_11__leaf_clk));
 sg13g2_tiehi \u_win.elapsed[3]$_SDFFE_PN0P__91  (.L_HI(net90));
 sg13g2_dfrbpq_1 \u_win.elapsed[4]$_SDFFE_PN0P_  (.RESET_B(net91),
    .D(_0130_),
    .Q(\u_win.elapsed[4] ),
    .CLK(clknet_5_10__leaf_clk));
 sg13g2_tiehi \u_win.elapsed[4]$_SDFFE_PN0P__92  (.L_HI(net91));
 sg13g2_dfrbpq_1 \u_win.elapsed[5]$_SDFFE_PN0P_  (.RESET_B(net92),
    .D(_0129_),
    .Q(\u_win.elapsed[5] ),
    .CLK(clknet_5_10__leaf_clk));
 sg13g2_tiehi \u_win.elapsed[5]$_SDFFE_PN0P__93  (.L_HI(net92));
 sg13g2_dfrbpq_1 \u_win.elapsed[6]$_SDFFE_PN0P_  (.RESET_B(net93),
    .D(_0128_),
    .Q(\u_win.elapsed[6] ),
    .CLK(clknet_5_12__leaf_clk));
 sg13g2_tiehi \u_win.elapsed[6]$_SDFFE_PN0P__94  (.L_HI(net93));
 sg13g2_dfrbpq_1 \u_win.elapsed[7]$_SDFFE_PN0P_  (.RESET_B(net94),
    .D(_0127_),
    .Q(\u_win.elapsed[7] ),
    .CLK(clknet_5_12__leaf_clk));
 sg13g2_tiehi \u_win.elapsed[7]$_SDFFE_PN0P__95  (.L_HI(net94));
 sg13g2_dfrbpq_1 \u_win.elapsed[8]$_SDFFE_PN0P_  (.RESET_B(net95),
    .D(_0126_),
    .Q(\u_win.elapsed[8] ),
    .CLK(clknet_5_12__leaf_clk));
 sg13g2_tiehi \u_win.elapsed[8]$_SDFFE_PN0P__96  (.L_HI(net95));
 sg13g2_dfrbpq_1 \u_win.elapsed[9]$_SDFFE_PN0P_  (.RESET_B(net96),
    .D(_0125_),
    .Q(\u_win.elapsed[9] ),
    .CLK(clknet_5_15__leaf_clk));
 sg13g2_tiehi \u_win.elapsed[9]$_SDFFE_PN0P__97  (.L_HI(net96));
 sg13g2_dfrbpq_1 \u_win.h_amt0[0]$_SDFFE_PN0P_  (.RESET_B(net97),
    .D(_0123_),
    .Q(\u_win.h_amt0[0] ),
    .CLK(clknet_5_7__leaf_clk));
 sg13g2_tiehi \u_win.h_amt0[0]$_SDFFE_PN0P__98  (.L_HI(net97));
 sg13g2_dfrbpq_1 \u_win.h_amt0[10]$_SDFFE_PN0P_  (.RESET_B(net98),
    .D(_0113_),
    .Q(\u_win.h_amt0[10] ),
    .CLK(clknet_5_7__leaf_clk));
 sg13g2_tiehi \u_win.h_amt0[10]$_SDFFE_PN0P__99  (.L_HI(net98));
 sg13g2_dfrbpq_1 \u_win.h_amt0[11]$_SDFFE_PN0P_  (.RESET_B(net99),
    .D(_0112_),
    .Q(\u_win.h_amt0[11] ),
    .CLK(clknet_5_1__leaf_clk));
 sg13g2_tiehi \u_win.h_amt0[11]$_SDFFE_PN0P__100  (.L_HI(net99));
 sg13g2_dfrbpq_1 \u_win.h_amt0[12]$_SDFFE_PN0P_  (.RESET_B(net100),
    .D(_0111_),
    .Q(\u_win.h_amt0[12] ),
    .CLK(clknet_5_13__leaf_clk));
 sg13g2_tiehi \u_win.h_amt0[12]$_SDFFE_PN0P__101  (.L_HI(net100));
 sg13g2_dfrbpq_1 \u_win.h_amt0[13]$_SDFFE_PN0P_  (.RESET_B(net101),
    .D(_0110_),
    .Q(\u_win.h_amt0[13] ),
    .CLK(clknet_5_12__leaf_clk));
 sg13g2_tiehi \u_win.h_amt0[13]$_SDFFE_PN0P__102  (.L_HI(net101));
 sg13g2_dfrbpq_1 \u_win.h_amt0[14]$_SDFFE_PN0P_  (.RESET_B(net102),
    .D(_0109_),
    .Q(\u_win.h_amt0[14] ),
    .CLK(clknet_5_24__leaf_clk));
 sg13g2_tiehi \u_win.h_amt0[14]$_SDFFE_PN0P__103  (.L_HI(net102));
 sg13g2_dfrbpq_1 \u_win.h_amt0[15]$_SDFFE_PN0P_  (.RESET_B(net103),
    .D(_0185_),
    .Q(\u_win.h_amt0[15] ),
    .CLK(clknet_5_9__leaf_clk));
 sg13g2_tiehi \u_win.h_amt0[15]$_SDFFE_PN0P__104  (.L_HI(net103));
 sg13g2_dfrbpq_1 \u_win.h_amt0[1]$_SDFFE_PN0P_  (.RESET_B(net104),
    .D(_0122_),
    .Q(\u_win.h_amt0[1] ),
    .CLK(clknet_5_16__leaf_clk));
 sg13g2_tiehi \u_win.h_amt0[1]$_SDFFE_PN0P__105  (.L_HI(net104));
 sg13g2_dfrbpq_1 \u_win.h_amt0[2]$_SDFFE_PN0P_  (.RESET_B(net105),
    .D(_0121_),
    .Q(\u_win.h_amt0[2] ),
    .CLK(clknet_5_5__leaf_clk));
 sg13g2_tiehi \u_win.h_amt0[2]$_SDFFE_PN0P__106  (.L_HI(net105));
 sg13g2_dfrbpq_1 \u_win.h_amt0[3]$_SDFFE_PN0P_  (.RESET_B(net106),
    .D(_0120_),
    .Q(\u_win.h_amt0[3] ),
    .CLK(clknet_5_5__leaf_clk));
 sg13g2_tiehi \u_win.h_amt0[3]$_SDFFE_PN0P__107  (.L_HI(net106));
 sg13g2_dfrbpq_1 \u_win.h_amt0[4]$_SDFFE_PN0P_  (.RESET_B(net107),
    .D(_0119_),
    .Q(\u_win.h_amt0[4] ),
    .CLK(clknet_5_7__leaf_clk));
 sg13g2_tiehi \u_win.h_amt0[4]$_SDFFE_PN0P__108  (.L_HI(net107));
 sg13g2_dfrbpq_1 \u_win.h_amt0[5]$_SDFFE_PN0P_  (.RESET_B(net108),
    .D(_0118_),
    .Q(\u_win.h_amt0[5] ),
    .CLK(clknet_5_20__leaf_clk));
 sg13g2_tiehi \u_win.h_amt0[5]$_SDFFE_PN0P__109  (.L_HI(net108));
 sg13g2_dfrbpq_1 \u_win.h_amt0[6]$_SDFFE_PN0P_  (.RESET_B(net109),
    .D(_0117_),
    .Q(\u_win.h_amt0[6] ),
    .CLK(clknet_5_20__leaf_clk));
 sg13g2_tiehi \u_win.h_amt0[6]$_SDFFE_PN0P__110  (.L_HI(net109));
 sg13g2_dfrbpq_1 \u_win.h_amt0[7]$_SDFFE_PN0P_  (.RESET_B(net110),
    .D(_0116_),
    .Q(\u_win.h_amt0[7] ),
    .CLK(clknet_5_16__leaf_clk));
 sg13g2_tiehi \u_win.h_amt0[7]$_SDFFE_PN0P__111  (.L_HI(net110));
 sg13g2_dfrbpq_1 \u_win.h_amt0[8]$_SDFFE_PN0P_  (.RESET_B(net111),
    .D(_0115_),
    .Q(\u_win.h_amt0[8] ),
    .CLK(clknet_5_21__leaf_clk));
 sg13g2_tiehi \u_win.h_amt0[8]$_SDFFE_PN0P__112  (.L_HI(net111));
 sg13g2_dfrbpq_1 \u_win.h_amt0[9]$_SDFFE_PN0P_  (.RESET_B(net112),
    .D(_0114_),
    .Q(\u_win.h_amt0[9] ),
    .CLK(clknet_5_7__leaf_clk));
 sg13g2_tiehi \u_win.h_amt0[9]$_SDFFE_PN0P__113  (.L_HI(net112));
 sg13g2_dfrbpq_1 \u_win.h_amt1[0]$_SDFFE_PN0P_  (.RESET_B(net113),
    .D(_0108_),
    .Q(\u_win.h_amt1[0] ),
    .CLK(clknet_5_17__leaf_clk));
 sg13g2_tiehi \u_win.h_amt1[0]$_SDFFE_PN0P__114  (.L_HI(net113));
 sg13g2_dfrbpq_1 \u_win.h_amt1[10]$_SDFFE_PN0P_  (.RESET_B(net114),
    .D(_0098_),
    .Q(\u_win.h_amt1[10] ),
    .CLK(clknet_5_7__leaf_clk));
 sg13g2_tiehi \u_win.h_amt1[10]$_SDFFE_PN0P__115  (.L_HI(net114));
 sg13g2_dfrbpq_1 \u_win.h_amt1[11]$_SDFFE_PN0P_  (.RESET_B(net115),
    .D(_0097_),
    .Q(\u_win.h_amt1[11] ),
    .CLK(clknet_5_6__leaf_clk));
 sg13g2_tiehi \u_win.h_amt1[11]$_SDFFE_PN0P__116  (.L_HI(net115));
 sg13g2_dfrbpq_1 \u_win.h_amt1[12]$_SDFFE_PN0P_  (.RESET_B(net116),
    .D(_0096_),
    .Q(\u_win.h_amt1[12] ),
    .CLK(clknet_5_19__leaf_clk));
 sg13g2_tiehi \u_win.h_amt1[12]$_SDFFE_PN0P__117  (.L_HI(net116));
 sg13g2_dfrbpq_1 \u_win.h_amt1[13]$_SDFFE_PN0P_  (.RESET_B(net117),
    .D(_0095_),
    .Q(\u_win.h_amt1[13] ),
    .CLK(clknet_5_12__leaf_clk));
 sg13g2_tiehi \u_win.h_amt1[13]$_SDFFE_PN0P__118  (.L_HI(net117));
 sg13g2_dfrbpq_1 \u_win.h_amt1[14]$_SDFFE_PN0P_  (.RESET_B(net118),
    .D(_0094_),
    .Q(\u_win.h_amt1[14] ),
    .CLK(clknet_5_24__leaf_clk));
 sg13g2_tiehi \u_win.h_amt1[14]$_SDFFE_PN0P__119  (.L_HI(net118));
 sg13g2_dfrbpq_1 \u_win.h_amt1[15]$_SDFFE_PN0P_  (.RESET_B(net119),
    .D(_0184_),
    .Q(\u_win.h_amt1[15] ),
    .CLK(clknet_5_9__leaf_clk));
 sg13g2_tiehi \u_win.h_amt1[15]$_SDFFE_PN0P__120  (.L_HI(net119));
 sg13g2_dfrbpq_1 \u_win.h_amt1[1]$_SDFFE_PN0P_  (.RESET_B(net120),
    .D(_0107_),
    .Q(\u_win.h_amt1[1] ),
    .CLK(clknet_5_16__leaf_clk));
 sg13g2_tiehi \u_win.h_amt1[1]$_SDFFE_PN0P__121  (.L_HI(net120));
 sg13g2_dfrbpq_1 \u_win.h_amt1[2]$_SDFFE_PN0P_  (.RESET_B(net121),
    .D(_0106_),
    .Q(\u_win.h_amt1[2] ),
    .CLK(clknet_5_5__leaf_clk));
 sg13g2_tiehi \u_win.h_amt1[2]$_SDFFE_PN0P__122  (.L_HI(net121));
 sg13g2_dfrbpq_1 \u_win.h_amt1[3]$_SDFFE_PN0P_  (.RESET_B(net122),
    .D(_0105_),
    .Q(\u_win.h_amt1[3] ),
    .CLK(clknet_5_7__leaf_clk));
 sg13g2_tiehi \u_win.h_amt1[3]$_SDFFE_PN0P__123  (.L_HI(net122));
 sg13g2_dfrbpq_1 \u_win.h_amt1[4]$_SDFFE_PN0P_  (.RESET_B(net123),
    .D(_0104_),
    .Q(\u_win.h_amt1[4] ),
    .CLK(clknet_5_18__leaf_clk));
 sg13g2_tiehi \u_win.h_amt1[4]$_SDFFE_PN0P__124  (.L_HI(net123));
 sg13g2_dfrbpq_1 \u_win.h_amt1[5]$_SDFFE_PN0P_  (.RESET_B(net124),
    .D(_0103_),
    .Q(\u_win.h_amt1[5] ),
    .CLK(clknet_5_17__leaf_clk));
 sg13g2_tiehi \u_win.h_amt1[5]$_SDFFE_PN0P__125  (.L_HI(net124));
 sg13g2_dfrbpq_1 \u_win.h_amt1[6]$_SDFFE_PN0P_  (.RESET_B(net125),
    .D(_0102_),
    .Q(\u_win.h_amt1[6] ),
    .CLK(clknet_5_20__leaf_clk));
 sg13g2_tiehi \u_win.h_amt1[6]$_SDFFE_PN0P__126  (.L_HI(net125));
 sg13g2_dfrbpq_1 \u_win.h_amt1[7]$_SDFFE_PN0P_  (.RESET_B(net126),
    .D(_0101_),
    .Q(\u_win.h_amt1[7] ),
    .CLK(clknet_5_16__leaf_clk));
 sg13g2_tiehi \u_win.h_amt1[7]$_SDFFE_PN0P__127  (.L_HI(net126));
 sg13g2_dfrbpq_1 \u_win.h_amt1[8]$_SDFFE_PN0P_  (.RESET_B(net127),
    .D(_0100_),
    .Q(\u_win.h_amt1[8] ),
    .CLK(clknet_5_21__leaf_clk));
 sg13g2_tiehi \u_win.h_amt1[8]$_SDFFE_PN0P__128  (.L_HI(net127));
 sg13g2_dfrbpq_1 \u_win.h_amt1[9]$_SDFFE_PN0P_  (.RESET_B(net128),
    .D(_0099_),
    .Q(\u_win.h_amt1[9] ),
    .CLK(clknet_5_6__leaf_clk));
 sg13g2_tiehi \u_win.h_amt1[9]$_SDFFE_PN0P__129  (.L_HI(net128));
 sg13g2_dfrbpq_1 \u_win.h_amt2[0]$_SDFFE_PN0P_  (.RESET_B(net129),
    .D(_0093_),
    .Q(\u_win.h_amt2[0] ),
    .CLK(clknet_5_16__leaf_clk));
 sg13g2_tiehi \u_win.h_amt2[0]$_SDFFE_PN0P__130  (.L_HI(net129));
 sg13g2_dfrbpq_1 \u_win.h_amt2[10]$_SDFFE_PN0P_  (.RESET_B(net130),
    .D(_0083_),
    .Q(\u_win.h_amt2[10] ),
    .CLK(clknet_5_6__leaf_clk));
 sg13g2_tiehi \u_win.h_amt2[10]$_SDFFE_PN0P__131  (.L_HI(net130));
 sg13g2_dfrbpq_1 \u_win.h_amt2[11]$_SDFFE_PN0P_  (.RESET_B(net131),
    .D(_0082_),
    .Q(\u_win.h_amt2[11] ),
    .CLK(clknet_5_13__leaf_clk));
 sg13g2_tiehi \u_win.h_amt2[11]$_SDFFE_PN0P__132  (.L_HI(net131));
 sg13g2_dfrbpq_1 \u_win.h_amt2[12]$_SDFFE_PN0P_  (.RESET_B(net132),
    .D(_0081_),
    .Q(\u_win.h_amt2[12] ),
    .CLK(clknet_5_18__leaf_clk));
 sg13g2_tiehi \u_win.h_amt2[12]$_SDFFE_PN0P__133  (.L_HI(net132));
 sg13g2_dfrbpq_1 \u_win.h_amt2[13]$_SDFFE_PN0P_  (.RESET_B(net133),
    .D(_0080_),
    .Q(\u_win.h_amt2[13] ),
    .CLK(clknet_5_12__leaf_clk));
 sg13g2_tiehi \u_win.h_amt2[13]$_SDFFE_PN0P__134  (.L_HI(net133));
 sg13g2_dfrbpq_1 \u_win.h_amt2[14]$_SDFFE_PN0P_  (.RESET_B(net134),
    .D(_0079_),
    .Q(\u_win.h_amt2[14] ),
    .CLK(clknet_5_24__leaf_clk));
 sg13g2_tiehi \u_win.h_amt2[14]$_SDFFE_PN0P__135  (.L_HI(net134));
 sg13g2_dfrbpq_1 \u_win.h_amt2[15]$_SDFFE_PN0P_  (.RESET_B(net135),
    .D(_0183_),
    .Q(\u_win.h_amt2[15] ),
    .CLK(clknet_5_9__leaf_clk));
 sg13g2_tiehi \u_win.h_amt2[15]$_SDFFE_PN0P__136  (.L_HI(net135));
 sg13g2_dfrbpq_1 \u_win.h_amt2[1]$_SDFFE_PN0P_  (.RESET_B(net136),
    .D(_0092_),
    .Q(\u_win.h_amt2[1] ),
    .CLK(clknet_5_17__leaf_clk));
 sg13g2_tiehi \u_win.h_amt2[1]$_SDFFE_PN0P__137  (.L_HI(net136));
 sg13g2_dfrbpq_1 \u_win.h_amt2[2]$_SDFFE_PN0P_  (.RESET_B(net137),
    .D(_0091_),
    .Q(\u_win.h_amt2[2] ),
    .CLK(clknet_5_5__leaf_clk));
 sg13g2_tiehi \u_win.h_amt2[2]$_SDFFE_PN0P__138  (.L_HI(net137));
 sg13g2_dfrbpq_1 \u_win.h_amt2[3]$_SDFFE_PN0P_  (.RESET_B(net138),
    .D(_0090_),
    .Q(\u_win.h_amt2[3] ),
    .CLK(clknet_5_6__leaf_clk));
 sg13g2_tiehi \u_win.h_amt2[3]$_SDFFE_PN0P__139  (.L_HI(net138));
 sg13g2_dfrbpq_1 \u_win.h_amt2[4]$_SDFFE_PN0P_  (.RESET_B(net139),
    .D(_0089_),
    .Q(\u_win.h_amt2[4] ),
    .CLK(clknet_5_19__leaf_clk));
 sg13g2_tiehi \u_win.h_amt2[4]$_SDFFE_PN0P__140  (.L_HI(net139));
 sg13g2_dfrbpq_1 \u_win.h_amt2[5]$_SDFFE_PN0P_  (.RESET_B(net140),
    .D(_0088_),
    .Q(\u_win.h_amt2[5] ),
    .CLK(clknet_5_16__leaf_clk));
 sg13g2_tiehi \u_win.h_amt2[5]$_SDFFE_PN0P__141  (.L_HI(net140));
 sg13g2_dfrbpq_1 \u_win.h_amt2[6]$_SDFFE_PN0P_  (.RESET_B(net141),
    .D(_0087_),
    .Q(\u_win.h_amt2[6] ),
    .CLK(clknet_5_20__leaf_clk));
 sg13g2_tiehi \u_win.h_amt2[6]$_SDFFE_PN0P__142  (.L_HI(net141));
 sg13g2_dfrbpq_1 \u_win.h_amt2[7]$_SDFFE_PN0P_  (.RESET_B(net142),
    .D(_0086_),
    .Q(\u_win.h_amt2[7] ),
    .CLK(clknet_5_16__leaf_clk));
 sg13g2_tiehi \u_win.h_amt2[7]$_SDFFE_PN0P__143  (.L_HI(net142));
 sg13g2_dfrbpq_1 \u_win.h_amt2[8]$_SDFFE_PN0P_  (.RESET_B(net143),
    .D(_0085_),
    .Q(\u_win.h_amt2[8] ),
    .CLK(clknet_5_20__leaf_clk));
 sg13g2_tiehi \u_win.h_amt2[8]$_SDFFE_PN0P__144  (.L_HI(net143));
 sg13g2_dfrbpq_1 \u_win.h_amt2[9]$_SDFFE_PN0P_  (.RESET_B(net144),
    .D(_0084_),
    .Q(\u_win.h_amt2[9] ),
    .CLK(clknet_5_6__leaf_clk));
 sg13g2_tiehi \u_win.h_amt2[9]$_SDFFE_PN0P__145  (.L_HI(net144));
 sg13g2_dfrbpq_1 \u_win.h_amt3[0]$_SDFFE_PN0P_  (.RESET_B(net145),
    .D(_0078_),
    .Q(\u_win.h_amt3[0] ),
    .CLK(clknet_5_19__leaf_clk));
 sg13g2_tiehi \u_win.h_amt3[0]$_SDFFE_PN0P__146  (.L_HI(net145));
 sg13g2_dfrbpq_1 \u_win.h_amt3[10]$_SDFFE_PN0P_  (.RESET_B(net146),
    .D(_0068_),
    .Q(\u_win.h_amt3[10] ),
    .CLK(clknet_5_9__leaf_clk));
 sg13g2_tiehi \u_win.h_amt3[10]$_SDFFE_PN0P__147  (.L_HI(net146));
 sg13g2_dfrbpq_1 \u_win.h_amt3[11]$_SDFFE_PN0P_  (.RESET_B(net147),
    .D(_0067_),
    .Q(\u_win.h_amt3[11] ),
    .CLK(clknet_5_13__leaf_clk));
 sg13g2_tiehi \u_win.h_amt3[11]$_SDFFE_PN0P__148  (.L_HI(net147));
 sg13g2_dfrbpq_1 \u_win.h_amt3[12]$_SDFFE_PN0P_  (.RESET_B(net148),
    .D(_0066_),
    .Q(\u_win.h_amt3[12] ),
    .CLK(clknet_5_18__leaf_clk));
 sg13g2_tiehi \u_win.h_amt3[12]$_SDFFE_PN0P__149  (.L_HI(net148));
 sg13g2_dfrbpq_1 \u_win.h_amt3[13]$_SDFFE_PN0P_  (.RESET_B(net149),
    .D(_0065_),
    .Q(\u_win.h_amt3[13] ),
    .CLK(clknet_5_15__leaf_clk));
 sg13g2_tiehi \u_win.h_amt3[13]$_SDFFE_PN0P__150  (.L_HI(net149));
 sg13g2_dfrbpq_1 \u_win.h_amt3[14]$_SDFFE_PN0P_  (.RESET_B(net150),
    .D(_0064_),
    .Q(\u_win.h_amt3[14] ),
    .CLK(clknet_5_13__leaf_clk));
 sg13g2_tiehi \u_win.h_amt3[14]$_SDFFE_PN0P__151  (.L_HI(net150));
 sg13g2_dfrbpq_1 \u_win.h_amt3[15]$_SDFFE_PN0P_  (.RESET_B(net151),
    .D(_0182_),
    .Q(\u_win.h_amt3[15] ),
    .CLK(clknet_5_11__leaf_clk));
 sg13g2_tiehi \u_win.h_amt3[15]$_SDFFE_PN0P__152  (.L_HI(net151));
 sg13g2_dfrbpq_1 \u_win.h_amt3[1]$_SDFFE_PN0P_  (.RESET_B(net152),
    .D(_0077_),
    .Q(\u_win.h_amt3[1] ),
    .CLK(clknet_5_17__leaf_clk));
 sg13g2_tiehi \u_win.h_amt3[1]$_SDFFE_PN0P__153  (.L_HI(net152));
 sg13g2_dfrbpq_1 \u_win.h_amt3[2]$_SDFFE_PN0P_  (.RESET_B(net153),
    .D(_0076_),
    .Q(\u_win.h_amt3[2] ),
    .CLK(clknet_5_17__leaf_clk));
 sg13g2_tiehi \u_win.h_amt3[2]$_SDFFE_PN0P__154  (.L_HI(net153));
 sg13g2_dfrbpq_1 \u_win.h_amt3[3]$_SDFFE_PN0P_  (.RESET_B(net154),
    .D(_0075_),
    .Q(\u_win.h_amt3[3] ),
    .CLK(clknet_5_6__leaf_clk));
 sg13g2_tiehi \u_win.h_amt3[3]$_SDFFE_PN0P__155  (.L_HI(net154));
 sg13g2_dfrbpq_1 \u_win.h_amt3[4]$_SDFFE_PN0P_  (.RESET_B(net155),
    .D(_0074_),
    .Q(\u_win.h_amt3[4] ),
    .CLK(clknet_5_19__leaf_clk));
 sg13g2_tiehi \u_win.h_amt3[4]$_SDFFE_PN0P__156  (.L_HI(net155));
 sg13g2_dfrbpq_1 \u_win.h_amt3[5]$_SDFFE_PN0P_  (.RESET_B(net156),
    .D(_0073_),
    .Q(\u_win.h_amt3[5] ),
    .CLK(clknet_5_22__leaf_clk));
 sg13g2_tiehi \u_win.h_amt3[5]$_SDFFE_PN0P__157  (.L_HI(net156));
 sg13g2_dfrbpq_1 \u_win.h_amt3[6]$_SDFFE_PN0P_  (.RESET_B(net157),
    .D(_0072_),
    .Q(\u_win.h_amt3[6] ),
    .CLK(clknet_5_19__leaf_clk));
 sg13g2_tiehi \u_win.h_amt3[6]$_SDFFE_PN0P__158  (.L_HI(net157));
 sg13g2_dfrbpq_1 \u_win.h_amt3[7]$_SDFFE_PN0P_  (.RESET_B(net158),
    .D(_0071_),
    .Q(\u_win.h_amt3[7] ),
    .CLK(clknet_5_18__leaf_clk));
 sg13g2_tiehi \u_win.h_amt3[7]$_SDFFE_PN0P__159  (.L_HI(net158));
 sg13g2_dfrbpq_1 \u_win.h_amt3[8]$_SDFFE_PN0P_  (.RESET_B(net159),
    .D(_0070_),
    .Q(\u_win.h_amt3[8] ),
    .CLK(clknet_5_17__leaf_clk));
 sg13g2_tiehi \u_win.h_amt3[8]$_SDFFE_PN0P__160  (.L_HI(net159));
 sg13g2_dfrbpq_1 \u_win.h_amt3[9]$_SDFFE_PN0P_  (.RESET_B(net160),
    .D(_0069_),
    .Q(\u_win.h_amt3[9] ),
    .CLK(clknet_5_18__leaf_clk));
 sg13g2_tiehi \u_win.h_amt3[9]$_SDFFE_PN0P__161  (.L_HI(net160));
 sg13g2_dfrbpq_1 \u_win.h_cat0[0]$_SDFFE_PN0P_  (.RESET_B(net161),
    .D(_0063_),
    .Q(\u_win.h_cat0[0] ),
    .CLK(clknet_5_1__leaf_clk));
 sg13g2_tiehi \u_win.h_cat0[0]$_SDFFE_PN0P__162  (.L_HI(net161));
 sg13g2_dfrbpq_1 \u_win.h_cat0[1]$_SDFFE_PN0P_  (.RESET_B(net162),
    .D(_0062_),
    .Q(\u_win.h_cat0[1] ),
    .CLK(clknet_5_4__leaf_clk));
 sg13g2_tiehi \u_win.h_cat0[1]$_SDFFE_PN0P__163  (.L_HI(net162));
 sg13g2_dfrbpq_1 \u_win.h_cat0[2]$_SDFFE_PN0P_  (.RESET_B(net163),
    .D(_0061_),
    .Q(\u_win.h_cat0[2] ),
    .CLK(clknet_5_0__leaf_clk));
 sg13g2_tiehi \u_win.h_cat0[2]$_SDFFE_PN0P__164  (.L_HI(net163));
 sg13g2_dfrbpq_1 \u_win.h_cat0[3]$_SDFFE_PN0P_  (.RESET_B(net164),
    .D(_0060_),
    .Q(\u_win.h_cat0[3] ),
    .CLK(clknet_5_4__leaf_clk));
 sg13g2_tiehi \u_win.h_cat0[3]$_SDFFE_PN0P__165  (.L_HI(net164));
 sg13g2_dfrbpq_1 \u_win.h_cat0[4]$_SDFFE_PN0P_  (.RESET_B(net165),
    .D(_0059_),
    .Q(\u_win.h_cat0[4] ),
    .CLK(clknet_5_0__leaf_clk));
 sg13g2_tiehi \u_win.h_cat0[4]$_SDFFE_PN0P__166  (.L_HI(net165));
 sg13g2_dfrbpq_1 \u_win.h_cat0[5]$_SDFFE_PN0P_  (.RESET_B(net166),
    .D(_0058_),
    .Q(\u_win.h_cat0[5] ),
    .CLK(clknet_5_3__leaf_clk));
 sg13g2_tiehi \u_win.h_cat0[5]$_SDFFE_PN0P__167  (.L_HI(net166));
 sg13g2_dfrbpq_1 \u_win.h_cat0[6]$_SDFFE_PN0P_  (.RESET_B(net167),
    .D(_0057_),
    .Q(\u_win.h_cat0[6] ),
    .CLK(clknet_5_3__leaf_clk));
 sg13g2_tiehi \u_win.h_cat0[6]$_SDFFE_PN0P__168  (.L_HI(net167));
 sg13g2_dfrbpq_1 \u_win.h_cat0[7]$_SDFFE_PN0P_  (.RESET_B(net168),
    .D(_0181_),
    .Q(\u_win.h_cat0[7] ),
    .CLK(clknet_5_5__leaf_clk));
 sg13g2_tiehi \u_win.h_cat0[7]$_SDFFE_PN0P__169  (.L_HI(net168));
 sg13g2_dfrbpq_1 \u_win.h_cat1[0]$_SDFFE_PN0P_  (.RESET_B(net169),
    .D(_0056_),
    .Q(\u_win.h_cat1[0] ),
    .CLK(clknet_5_1__leaf_clk));
 sg13g2_tiehi \u_win.h_cat1[0]$_SDFFE_PN0P__170  (.L_HI(net169));
 sg13g2_dfrbpq_1 \u_win.h_cat1[1]$_SDFFE_PN0P_  (.RESET_B(net170),
    .D(_0055_),
    .Q(\u_win.h_cat1[1] ),
    .CLK(clknet_5_4__leaf_clk));
 sg13g2_tiehi \u_win.h_cat1[1]$_SDFFE_PN0P__171  (.L_HI(net170));
 sg13g2_dfrbpq_1 \u_win.h_cat1[2]$_SDFFE_PN0P_  (.RESET_B(net171),
    .D(_0054_),
    .Q(\u_win.h_cat1[2] ),
    .CLK(clknet_5_0__leaf_clk));
 sg13g2_tiehi \u_win.h_cat1[2]$_SDFFE_PN0P__172  (.L_HI(net171));
 sg13g2_dfrbpq_1 \u_win.h_cat1[3]$_SDFFE_PN0P_  (.RESET_B(net172),
    .D(_0053_),
    .Q(\u_win.h_cat1[3] ),
    .CLK(clknet_5_4__leaf_clk));
 sg13g2_tiehi \u_win.h_cat1[3]$_SDFFE_PN0P__173  (.L_HI(net172));
 sg13g2_dfrbpq_1 \u_win.h_cat1[4]$_SDFFE_PN0P_  (.RESET_B(net173),
    .D(_0052_),
    .Q(\u_win.h_cat1[4] ),
    .CLK(clknet_5_1__leaf_clk));
 sg13g2_tiehi \u_win.h_cat1[4]$_SDFFE_PN0P__174  (.L_HI(net173));
 sg13g2_dfrbpq_1 \u_win.h_cat1[5]$_SDFFE_PN0P_  (.RESET_B(net174),
    .D(_0051_),
    .Q(\u_win.h_cat1[5] ),
    .CLK(clknet_5_3__leaf_clk));
 sg13g2_tiehi \u_win.h_cat1[5]$_SDFFE_PN0P__175  (.L_HI(net174));
 sg13g2_dfrbpq_1 \u_win.h_cat1[6]$_SDFFE_PN0P_  (.RESET_B(net175),
    .D(_0050_),
    .Q(\u_win.h_cat1[6] ),
    .CLK(clknet_5_2__leaf_clk));
 sg13g2_tiehi \u_win.h_cat1[6]$_SDFFE_PN0P__176  (.L_HI(net175));
 sg13g2_dfrbpq_1 \u_win.h_cat1[7]$_SDFFE_PN0P_  (.RESET_B(net176),
    .D(_0180_),
    .Q(\u_win.h_cat1[7] ),
    .CLK(clknet_5_4__leaf_clk));
 sg13g2_tiehi \u_win.h_cat1[7]$_SDFFE_PN0P__177  (.L_HI(net176));
 sg13g2_dfrbpq_1 \u_win.h_cat2[0]$_SDFFE_PN0P_  (.RESET_B(net177),
    .D(_0049_),
    .Q(\u_win.h_cat2[0] ),
    .CLK(clknet_5_1__leaf_clk));
 sg13g2_tiehi \u_win.h_cat2[0]$_SDFFE_PN0P__178  (.L_HI(net177));
 sg13g2_dfrbpq_1 \u_win.h_cat2[1]$_SDFFE_PN0P_  (.RESET_B(net178),
    .D(_0048_),
    .Q(\u_win.h_cat2[1] ),
    .CLK(clknet_5_4__leaf_clk));
 sg13g2_tiehi \u_win.h_cat2[1]$_SDFFE_PN0P__179  (.L_HI(net178));
 sg13g2_dfrbpq_1 \u_win.h_cat2[2]$_SDFFE_PN0P_  (.RESET_B(net179),
    .D(_0047_),
    .Q(\u_win.h_cat2[2] ),
    .CLK(clknet_5_0__leaf_clk));
 sg13g2_tiehi \u_win.h_cat2[2]$_SDFFE_PN0P__180  (.L_HI(net179));
 sg13g2_dfrbpq_1 \u_win.h_cat2[3]$_SDFFE_PN0P_  (.RESET_B(net180),
    .D(_0046_),
    .Q(\u_win.h_cat2[3] ),
    .CLK(clknet_5_1__leaf_clk));
 sg13g2_tiehi \u_win.h_cat2[3]$_SDFFE_PN0P__181  (.L_HI(net180));
 sg13g2_dfrbpq_1 \u_win.h_cat2[4]$_SDFFE_PN0P_  (.RESET_B(net181),
    .D(_0045_),
    .Q(\u_win.h_cat2[4] ),
    .CLK(clknet_5_0__leaf_clk));
 sg13g2_tiehi \u_win.h_cat2[4]$_SDFFE_PN0P__182  (.L_HI(net181));
 sg13g2_dfrbpq_1 \u_win.h_cat2[5]$_SDFFE_PN0P_  (.RESET_B(net182),
    .D(_0044_),
    .Q(\u_win.h_cat2[5] ),
    .CLK(clknet_5_2__leaf_clk));
 sg13g2_tiehi \u_win.h_cat2[5]$_SDFFE_PN0P__183  (.L_HI(net182));
 sg13g2_dfrbpq_1 \u_win.h_cat2[6]$_SDFFE_PN0P_  (.RESET_B(net183),
    .D(_0043_),
    .Q(\u_win.h_cat2[6] ),
    .CLK(clknet_5_8__leaf_clk));
 sg13g2_tiehi \u_win.h_cat2[6]$_SDFFE_PN0P__184  (.L_HI(net183));
 sg13g2_dfrbpq_1 \u_win.h_cat2[7]$_SDFFE_PN0P_  (.RESET_B(net184),
    .D(_0179_),
    .Q(\u_win.h_cat2[7] ),
    .CLK(clknet_5_4__leaf_clk));
 sg13g2_tiehi \u_win.h_cat2[7]$_SDFFE_PN0P__185  (.L_HI(net184));
 sg13g2_dfrbpq_1 \u_win.h_cat3[0]$_SDFFE_PN0P_  (.RESET_B(net185),
    .D(_0042_),
    .Q(\u_win.h_cat3[0] ),
    .CLK(clknet_5_13__leaf_clk));
 sg13g2_tiehi \u_win.h_cat3[0]$_SDFFE_PN0P__186  (.L_HI(net185));
 sg13g2_dfrbpq_1 \u_win.h_cat3[1]$_SDFFE_PN0P_  (.RESET_B(net186),
    .D(_0041_),
    .Q(\u_win.h_cat3[1] ),
    .CLK(clknet_5_0__leaf_clk));
 sg13g2_tiehi \u_win.h_cat3[1]$_SDFFE_PN0P__187  (.L_HI(net186));
 sg13g2_dfrbpq_1 \u_win.h_cat3[2]$_SDFFE_PN0P_  (.RESET_B(net187),
    .D(_0040_),
    .Q(\u_win.h_cat3[2] ),
    .CLK(clknet_5_9__leaf_clk));
 sg13g2_tiehi \u_win.h_cat3[2]$_SDFFE_PN0P__188  (.L_HI(net187));
 sg13g2_dfrbpq_1 \u_win.h_cat3[3]$_SDFFE_PN0P_  (.RESET_B(net188),
    .D(_0039_),
    .Q(\u_win.h_cat3[3] ),
    .CLK(clknet_5_13__leaf_clk));
 sg13g2_tiehi \u_win.h_cat3[3]$_SDFFE_PN0P__189  (.L_HI(net188));
 sg13g2_dfrbpq_1 \u_win.h_cat3[4]$_SDFFE_PN0P_  (.RESET_B(net189),
    .D(_0038_),
    .Q(\u_win.h_cat3[4] ),
    .CLK(clknet_5_9__leaf_clk));
 sg13g2_tiehi \u_win.h_cat3[4]$_SDFFE_PN0P__190  (.L_HI(net189));
 sg13g2_dfrbpq_1 \u_win.h_cat3[5]$_SDFFE_PN0P_  (.RESET_B(net190),
    .D(_0037_),
    .Q(\u_win.h_cat3[5] ),
    .CLK(clknet_5_0__leaf_clk));
 sg13g2_tiehi \u_win.h_cat3[5]$_SDFFE_PN0P__191  (.L_HI(net190));
 sg13g2_dfrbpq_1 \u_win.h_cat3[6]$_SDFFE_PN0P_  (.RESET_B(net191),
    .D(_0036_),
    .Q(\u_win.h_cat3[6] ),
    .CLK(clknet_5_8__leaf_clk));
 sg13g2_tiehi \u_win.h_cat3[6]$_SDFFE_PN0P__192  (.L_HI(net191));
 sg13g2_dfrbpq_1 \u_win.h_cat3[7]$_SDFFE_PN0P_  (.RESET_B(net192),
    .D(_0178_),
    .Q(\u_win.h_cat3[7] ),
    .CLK(clknet_5_5__leaf_clk));
 sg13g2_tiehi \u_win.h_cat3[7]$_SDFFE_PN0P__193  (.L_HI(net192));
 sg13g2_dfrbpq_1 \u_win.h_val[0]$_SDFFE_PN0P_  (.RESET_B(net193),
    .D(_0035_),
    .Q(\u_win.h_val[0] ),
    .CLK(clknet_5_24__leaf_clk));
 sg13g2_tiehi \u_win.h_val[0]$_SDFFE_PN0P__194  (.L_HI(net193));
 sg13g2_dfrbpq_1 \u_win.h_val[1]$_SDFFE_PN0P_  (.RESET_B(net194),
    .D(_0034_),
    .Q(\u_win.h_val[1] ),
    .CLK(clknet_5_25__leaf_clk));
 sg13g2_tiehi \u_win.h_val[1]$_SDFFE_PN0P__195  (.L_HI(net194));
 sg13g2_dfrbpq_1 \u_win.h_val[2]$_SDFFE_PN0P_  (.RESET_B(net195),
    .D(_0033_),
    .Q(\u_win.h_val[2] ),
    .CLK(clknet_5_24__leaf_clk));
 sg13g2_tiehi \u_win.h_val[2]$_SDFFE_PN0P__196  (.L_HI(net195));
 sg13g2_dfrbpq_1 \u_win.h_val[3]$_SDFFE_PN0P_  (.RESET_B(net196),
    .D(_0177_),
    .Q(\u_win.h_val[3] ),
    .CLK(clknet_5_24__leaf_clk));
 sg13g2_tiehi \u_win.h_val[3]$_SDFFE_PN0P__197  (.L_HI(net196));
endmodule
