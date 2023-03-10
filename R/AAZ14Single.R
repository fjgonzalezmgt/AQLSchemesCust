AAZ14Single<-function(PLAN,dINSL,dLOTS,dAQL){
message("MIL-STD-105E ANSI/ASQ Z1.4")
message("If the sample size exceeds the lot size, carry out 100% inspection")
# Get Plan
#  dPLAN <- menu(c("Normal", "Tightened", "Reduced"), title = "\nWhat type Inspection Plan?")
#  PLAN
  # Get the inspection level
  #dINSL <- menu(c("S-1", "S-2", "S-3", "S-4",
   #               "I", "II", "III"), title = "\nWhat is the Inspection Level?")
  #INSL
  # Get the lot size
  #dLOTS <- menu(c("2-8", "9-15", "16-25", "26-50",
  #                "51-90", "91-150", "151-280", "281-500",
  #                "501-1200", "1201-3200", "3201-10,000",
  #                "10,001-35,000", "35,001-150,000", "150,001-500,000",
  #                "500,001 and over"), title = "\nWhat is the Lot Size?")
  #LOTS
  # Get the AQL
  #dAQL <- menu(c("0.010","0.015","0.025","0.040","0.065","0.10","0.15","0.25",
  #               "0.40","0.65","1.0","1.5","2.5","4.0","6.5","10",
  #               "15","25","40","65","100","150","250","400","650","1000"),
  #             title = "\nWhat is the AQL in percent nonconforming per 100 items?")
  #AQL
  #Create matrix of Code Letters
  codes<-c("A","B","C","D","E","F","G","H","J","K","L","M","N","P","Q","R")
  InspLev<-c("S-1","S-2","S-3","S-4","I","II","III")
  LotSize<-c("2-8","9-15","16-25","26-50","51-90","91-150","151-280","281-500","501-1200","1201-3200","3201-10,000","10,001-35,000","35,001-150,000","150,001-500,000","over 500,001")
  AQL<-c("0.010","0.015","0.025","0.040","0.065","0.10","0.15","0.25","0.40","0.65","1.0","1.5","2.5","4.0","6.5","10","15","25","40","65","100","150","250","400","650","1000")
  letters<-c("A","A","A","A","A","A","B",
             "A","A","A","A","A","B","C",
             "A","A","B","B","B","C","D",
             "A","B","B","C","C","D","E",
             "B","B","C","C","C","E","F",
             "B","B","C","D","D","F","G",
             "B","C","D","E","E","G","H",
             "B","C","D","E","F","H","J",
             "C","C","E","F","G","J","K",
             "C","D","E","G","H","K","L",
             "C","D","F","G","J","L","M",
             "C","D","F","H","K","M","N",
             "D","E","G","J","L","N","P",
             "D","E","G","J","M","P","Q",
             "D","E","H","K","N","Q","R")
  SSCodeLetters<-matrix(letters,nrow=15, byrow=TRUE)
  rownames(SSCodeLetters)<-LotSize
  colnames(SSCodeLetters)<-InspLev
  #Create Matrix of Single Sampling sample Sizes for Normal Sampling
  temp<-array(c(1250,800,500,315,200,125,80,50,32,20,13,8,5,3,2,5,3,2,2,2,2,2,2,2,2,2,
                1250,800,500,315,200,125,80,50,32,20,13,8,5,3,2,5,3,3,3,3,3,3,3,3,3,3,
                1250,800,500,315,200,125,80,50,32,20,13,8,5,3,8,5,5,5,5,5,5,5,5,5,5,3,
                1250,800,500,315,200,125,80,50,32,20,13,8,5,13,8,8,8,8,8,8,8,8,8,8,5,3,
                1250,800,500,315,200,125,80,50,32,20,13,8,20,13,13,13,13,13,13,13,13,13,13,8,5,3,
                1250,800,500,315,200,125,80,50,32,20,13,32,20,20,20,20,20,20,20,20,13,13,13,8,5,3,
                1250,800,500,315,200,125,80,50,32,20,50,32,32,32,32,32,32,32,32,20,13,13,13,8,5,3,
                1250,800,500,315,200,125,80,50,32,80,50,50,50,50,50,50,50,50,32,20,13,13,13,8,5,3,
                1250,800,500,315,200,125,80,50,125,80,80,80,80,80,80,80,80,50,32,20,13,13,13,8,5,3,
                1250,800,500,315,200,125,80,200,125,125,125,125,125,125,125,125,80,50,32,20,13,13,13,8,5,3,
                1250,800,500,315,200,125,315,200,200,200,200,200,200,200,200,125,80,50,32,20,13,13,13,8,5,3,
                1250,800,500,315,200,500,315,315,315,315,315,315,315,315,200,125,80,50,32,20,13,13,13,8,5,3,
                1250,800,500,315,800,500,500,500,500,500,500,500,500,315,200,125,80,50,32,20,13,13,13,8,5,3,
                1250,800,500,1250,800,800,800,800,800,800,800,800,500,315,200,125,80,50,32,20,13,13,13,8,5,3,
                1250,800,2000,1250,1250,1250,1250,1250,1250,1250,1250,800,500,315,200,125,80,50,32,20,13,13,13,8,5,3,
                1250,800,2000,2000,2000,2000,2000,2000,2000,2000,1250,800,500,315,200,125,80,50,32,20,13,13,13,8,5,3),
              dim=c(26,16))
  ANSIASQSingleNormalss <- t(temp)
  rownames(ANSIASQSingleNormalss)<-codes
  colnames(ANSIASQSingleNormalss)<-AQL
  #Create Matrix of Sampling Sizes for Tightened Sampling
  temp<-array(c(2000,1250,800,500,315,200,125,80,50,32,20,13,8,5,3,8,5,3,2,2,2,2,2,2,2,2,
                2000,1250,800,500,315,200,125,80,50,32,20,13,8,5,3,8,5,3,3,3,3,3,3,3,3,3,
                2000,1250,800,500,315,200,125,80,50,32,20,13,8,5,13,8,5,5,5,5,5,5,5,5,5,3,
                2000,1250,800,500,315,200,125,80,50,32,20,13,8,20,13,8,8,8,8,8,8,8,8,8,5,3,
                2000,1250,800,500,315,200,125,80,50,32,20,13,32,20,13,13,13,13,13,13,13,13,13,8,5,3,
                2000,1250,800,500,315,200,125,80,50,32,20,50,32,20,20,20,20,20,20,20,13,13,13,8,5,3,
                2000,1250,800,500,315,200,125,80,50,32,80,50,32,32,32,32,32,32,32,20,13,13,13,8,5,3,
                2000,1250,800,500,315,200,125,80,50,125,80,50,50,50,50,50,50,50,32,20,13,13,13,8,5,3,
                2000,1250,800,500,315,200,125,80,200,125,80,80,80,80,80,80,80,50,32,20,13,13,13,8,5,3,
                2000,1250,800,500,315,200,125,315,200,125,125,125,125,125,125,125,80,50,32,20,13,13,13,8,5,3,
                2000,1250,800,500,315,200,500,315,200,200,200,200,200,200,200,125,80,50,32,20,13,13,13,8,5,3,
                2000,1250,800,500,315,800,500,315,315,315,315,315,315,315,200,125,80,50,32,20,13,13,13,8,5,3,
                2000,1250,800,500,1250,800,500,500,500,500,500,500,500,315,200,125,80,50,32,20,13,13,13,8,5,3,
                2000,1250,800,2000,1250,800,800,800,800,800,800,800,500,315,200,125,80,50,32,20,13,13,13,8,5,3,
                2000,1250,3150,2000,1250,1250,1250,1250,1250,1250,1250,800,500,315,200,125,80,50,32,20,13,13,13,8,5,3,
                2000,1250,3150,2000,2000,2000,2000,2000,2000,2000,1250,800,500,315,200,125,80,50,32,20,13,13,13,8,5,3),
              dim=c(26,16))
  ANSASQSingleTightenedss<-t(temp)
  rownames(ANSASQSingleTightenedss)<-codes
  colnames(ANSASQSingleTightenedss)<-AQL

  #Create Matrix of Single Sampling sample Sizes for Reduced Sampling
  temp<-array(c(500,315,200,125,80,50,32,20,13,8,5,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,
                500,315,200,125,80,50,32,20,13,8,5,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,
                500,315,200,125,80,50,32,20,13,8,5,3,2,2,3,2,2,2,2,2,2,2,2,2,2,2,
                500,315,200,125,80,50,32,20,13,8,5,3,2,5,3,3,3,3,3,3,3,3,3,3,2,2,
                500,315,200,125,80,50,32,20,13,8,5,3,8,5,5,5,5,5,5,5,5,5,5,3,2,2,
                500,315,200,125,80,50,32,20,13,8,5,13,8,8,8,8,8,8,8,8,5,5,5,3,2,2,
                500,315,200,125,80,50,32,20,13,8,20,13,13,13,13,13,13,13,13,8,5,5,5,3,2,2,
                500,315,200,125,80,50,32,20,13,32,20,20,20,20,20,20,20,20,13,8,5,5,5,3,2,2,
                500,315,200,125,80,50,32,20,50,32,32,32,32,32,32,32,32,20,13,8,5,5,5,3,2,2,
                500,315,200,125,80,50,32,80,50,50,50,50,50,50,50,50,32,20,13,8,5,5,5,3,2,2,
                500,315,200,125,80,50,125,80,80,80,80,80,80,80,80,50,32,20,13,8,5,5,5,3,2,2,
                500,315,200,125,80,200,125,125,125,125,125,125,125,125,80,50,32,20,13,8,5,5,5,3,2,2,
                500,315,200,125,315,200,200,200,200,200,200,200,200,125,80,50,32,20,13,8,5,5,5,3,2,2,
                500,315,200,500,315,315,315,315,315,315,315,315,200,125,80,50,32,20,13,8,5,5,5,3,2,2,
                500,315,800,500,500,500,500,500,500,500,500,315,200,125,80,50,32,20,13,8,5,5,5,3,2,2,
                500,315,800,800,800,800,800,800,800,800,500,315,200,125,80,50,32,20,13,8,5,5,5,3,2,2),
              dim=c(26,16))
  ANSIASQSingleReducedss<-t(temp)
  rownames(ANSIASQSingleReducedss)<-codes
  colnames(ANSIASQSingleReducedss)<-AQL

  # Create Matrix of Single Sampling acceptance numbers for Normal Inspection
  c1<-rep(0,16)
  c2<-c1
  c3<-c(rep(0,14),1,1)
  c4<-c(rep(0,13),1,1,2)
  c5<-c(rep(0,12),1,1,2,3)
  c6<-c(rep(0,11),1,1,2,3,5)
  c7<-c(rep(0,10),1,1,2,3,5,7)
  c8<-c(rep(0,9),1,1,2,3,5,7,10)
  c9<-c(rep(0,8),1,1,2,3,5,7,10,14)
  c10<-c(rep(0,7),1,1,2,3,5,7,10,14,21)
  c11<-c(rep(0,6),1,1,2,3,5,7,10,14,21,21)
  c12<-c(rep(0,5),1,1,2,3,5,7,10,14,21,21,21)
  c13<-c(rep(0,4),1,1,2,3,5,7,10,14,21,21,21,21)
  c14<-c(rep(0,3),1,1,2,3,5,7,10,14,rep(21,5))
  c15<-c(0,0,1,1,2,3,5,7,10,14,21,rep(21,5))
  c16<-c(1,1,1,2,3,5,7,10,14,21,rep(21,6))
  c17<-c(1,1,2,3,5,7,10,14,21,rep(21,7))
  c18<-c(1,2,3,5,7,10,14,21,rep(21,8))
  c19<-c(2,3,5,7,10,14,21,rep(21,9))
  c20<-c(3,5,7,10,14,21,rep(21,10))
  c21<-c(5,7,10,14,21,rep(21,11))
  c22<-c(7,10,14,21,30,rep(30,11))
  c23<-c(10,14,21,30,44,rep(44,11))
  c24<-c(14,21,30,44,rep(44,12))
  c25<-c(21,30,44,rep(44,13))
  c26<-c(30,44,rep(44,14))
  ANSIASQSingleNormalac<-cbind(c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26)
  rownames(ANSIASQSingleNormalac)<-codes
  colnames(ANSIASQSingleNormalac)<-AQL
  # Create Matrix of Single Sampling rejection numbers for Normal Inspection
  c1<-rep(1,16)
  c2<-c1
  c3<-c(rep(1,14),2,2)
  c4<-c(rep(1,13),2,2,3)
  c5<-c(rep(1,12),2,2,3,4)
  c6<-c(rep(1,11),2,2,3,4,6)
  c7<-c(rep(1,10),2,2,3,4,6,8)
  c8<-c(rep(1,9),2,2,3,4,6,8,11)
  c9<-c(rep(1,8),2,2,3,4,6,8,11,15)
  c10<-c(rep(1,7),2,2,3,4,6,8,11,15,22)
  c11<-c(rep(1,6),2,2,3,4,6,8,11,15,22,22)
  c12<-c(rep(1,5),2,2,3,4,6,8,11,15,22,22,22)
  c13<-c(rep(1,4),2,2,3,4,6,8,11,15,22,22,22,22)
  c14<-c(rep(1,3),2,2,3,4,6,8,11,15,rep(22,5))
  c15<-c(1,1,2,2,3,4,6,8,11,15,22,rep(22,5))
  c16<-c(2,2,2,3,4,6,8,11,15,22,rep(22,6))
  c17<-c(2,2,3,4,6,8,11,15,22,rep(22,7))
  c18<-c(2,3,4,6,8,11,15,22,rep(22,8))
  c19<-c(3,4,6,8,11,15,22,rep(22,9))
  c20<-c(4,6,8,11,15,22,rep(22,10))
  c21<-c(6,8,11,15,22,rep(22,11))
  c22<-c(8,11,15,22,31,rep(31,11))
  c23<-c(11,15,22,31,45,rep(45,11))
  c24<-c(15,22,31,45,rep(45,12))
  c25<-c(22,31,45,rep(45,13))
  c26<-c(31,45,rep(45,14))
  ANSIASQSingleNormalre<-cbind(c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26)
  rownames(ANSIASQSingleNormalre)<-codes
  colnames(ANSIASQSingleNormalre)<-AQL
  #Create Matrix of Single Sampling acceptance numbers for Tightened Inspection
  c1<-rep(0,16)
  c2<-c1
  c3<-c(rep(0,14),1,1)
  c4<-c(rep(0,13),1,1,1)
  c5<-c(rep(0,12),1,1,1,2)
  c6<-c(rep(0,11),1,1,1,2,3)
  c7<-c(rep(0,10),1,1,1,2,3,5)
  c8<-c(rep(0,9),1,1,1,2,3,5,8)
  c9<-c(rep(0,8),1,1,1,2,3,5,8,12)
  c10<-c(rep(0,7),1,1,1,2,3,5,8,12,18)
  c11<-c(rep(0,6),1,1,1,2,3,5,8,12,18,18)
  c12<-c(rep(0,5),1,1,1,2,3,5,8,12,18,18,18)
  c13<-c(rep(0,4),1,1,1,2,3,5,8,12,18,18,18,18)
  c14<-c(rep(0,3),1,1,1,2,3,5,8,12,rep(18,5))
  c15<-c(0,0,1,1,1,2,3,5,8,12,18,rep(18,5))
  c16<-c(1,1,1,1,2,3,5,8,12,18,rep(18,6))
  c17<-c(1,1,1,2,3,5,8,12,18,rep(18,7))
  c18<-c(1,1,2,3,5,8,12,18,rep(18,8))
  c19<-c(1,2,3,5,8,12,18,rep(18,9))
  c20<-c(2,3,5,8,12,18,rep(18,10))
  c21<-c(3,5,8,12,18,rep(18,11))
  c22<-c(5,8,12,18,27,rep(27,11))
  c23<-c(8,12,18,27,41,rep(41,11))
  c24<-c(12,18,27,41,rep(41,12))
  c25<-c(18,27,41,rep(41,13))
  c26<-c(27,41,rep(41,14))
  ANSIASQSingleTightenedac<-cbind(c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26)
  rownames(ANSIASQSingleTightenedac)<-codes
  colnames(ANSIASQSingleTightenedac)<-AQL
  #Create Matrix of Single Sampling rejection numbers for Tightened Inspection
  c1<-rep(1,16)
  c2<-c1
  c3<-c(rep(1,14),2,2)
  c4<-c(rep(1,13),2,2,2)
  c5<-c(rep(1,12),2,2,2,3)
  c6<-c(rep(1,11),2,2,2,3,4)
  c7<-c(rep(1,10),2,2,2,3,4,6)
  c8<-c(rep(1,9),2,2,2,3,4,6,9)
  c9<-c(rep(1,8),2,2,2,3,4,6,9,13)
  c10<-c(rep(1,7),2,2,2,3,4,6,9,13,19)
  c11<-c(rep(1,6),2,2,2,3,4,6,9,13,19,19)
  c12<-c(rep(1,5),2,2,2,3,4,6,9,13,19,19,19)
  c13<-c(rep(1,4),2,2,2,3,4,6,9,13,19,19,19,19)
  c14<-c(rep(1,3),2,2,2,3,4,6,9,13,rep(19,5))
  c15<-c(1,1,2,2,2,3,4,6,9,13,19,rep(19,5))
  c16<-c(2,2,2,2,3,4,6,9,13,19,rep(19,6))
  c17<-c(2,2,2,3,4,6,9,13,19,rep(19,7))
  c18<-c(2,2,3,4,6,9,13,19,rep(19,8))
  c19<-c(2,3,4,6,9,13,19,rep(19,9))
  c20<-c(3,4,6,9,13,19,rep(19,10))
  c21<-c(4,6,9,13,19,rep(19,11))
  c22<-c(6,9,13,19,28,rep(28,11))
  c23<-c(9,13,19,28,42,rep(42,11))
  c24<-c(13,19,28,42,rep(42,12))
  c25<-c(19,28,42,rep(42,13))
  c26<-c(28,42,rep(42,14))
  ANSIASQSingleTightenedre<-cbind(c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26)
  rownames(ANSIASQSingleTightenedre)<-codes
  colnames(ANSIASQSingleTightenedre)<-AQL
  #Create Matrix of Single Sampling acceptance numbers for Reduced Inspection
  c1<-rep(0,16)
  c2<-c1
  c3<-c(rep(0,16))
  c4<-c(rep(0,15),1)
  c5<-c(rep(0,14),1,1)
  c6<-c(rep(0,13),1,1,2)
  c7<-c(rep(0,12),1,1,2,3)
  c8<-c(rep(0,11),1,1,2,3,5)
  c9<-c(rep(0,10),1,1,2,3,5,7)
  c10<-c(rep(0,9),1,1,2,3,5,7,10)
  c11<-c(rep(0,8),1,1,2,3,5,7,10,10)
  c12<-c(rep(0,7),1,1,2,3,5,7,10,10,10)
  c13<-c(rep(0,6),1,1,2,3,5,7,10,10,10,10)
  c14<-c(rep(0,5),1,1,2,3,5,7,10,rep(10,4))
  c15<-c(0,0,0,0,1,1,2,3,5,7,10,rep(10,5))
  c16<-c(0,0,0,1,1,2,3,5,7,10,rep(10,6))
  c17<-c(0,0,1,1,2,3,5,7,10,rep(10,7))
  c18<-c(1,1,1,2,3,5,7,10,rep(10,8))
  c19<-c(2,2,2,3,5,7,10,rep(10,9))
  c20<-c(3,3,3,5,7,10,rep(10,10))
  c21<-c(5,5,5,7,10,rep(10,11))
  c22<-c(7,7,7,10,14,rep(14,11))
  c23<-c(10,10,10,14,21,rep(21,11))
  c24<-c(14,14,14,21,rep(21,12))
  c25<-c(21,21,21,rep(21,13))
  c26<-c(rep(30,16))
  ANSIASQSingleReducedac<-cbind(c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26)
  rownames(ANSIASQSingleReducedac)<-codes
  colnames(ANSIASQSingleReducedac)<-AQL
  #Create Matrix of Single Sampling rejection numbers for Reduced Inspection
  c1<-rep(1,16)
  c2<-c1
  c3<-c(rep(1,14),2,2)
  c4<-c(rep(1,13),2,2,3)
  c5<-c(rep(1,12),2,2,3,4)
  c6<-c(rep(1,11),2,2,3,4,5)
  c7<-c(rep(1,10),2,2,3,4,5,6)
  c8<-c(rep(1,9),2,2,3,4,5,6,8)
  c9<-c(rep(1,8),2,2,3,4,5,6,8,10)
  c10<-c(rep(1,7),2,2,3,4,5,6,8,10,13)
  c11<-c(rep(1,6),2,2,3,4,5,6,8,10,13,13)
  c12<-c(rep(1,5),2,2,3,4,5,6,8,10,13,13,13)
  c13<-c(rep(1,4),2,2,3,4,5,6,8,10,13,13,13,13)
  c14<-c(rep(1,3),2,2,3,4,5,6,8,10,13,rep(13,4))
  c15<-c(1,1,2,2,3,4,5,6,8,10,13,rep(13,5))
  c16<-c(2,2,2,3,4,5,6,8,10,13,rep(13,6))
  c17<-c(2,2,3,4,5,6,8,10,13,rep(13,7))
  c18<-c(2,3,4,5,6,8,10,13,rep(13,8))
  c19<-c(3,4,5,6,8,10,13,rep(13,9))
  c20<-c(4,5,6,8,10,13,rep(13,10))
  c21<-c(6,6,8,10,13,rep(13,11))
  c22<-c(8,8,10,13,17,rep(17,11))
  c23<-c(11,11,13,17,24,rep(24,11))
  c24<-c(15,15,17,24,rep(24,12))
  c25<-c(22,22,24,rep(24,13))
  c26<-c(rep(31,16))
  ANSIASQSingleReducedre<-cbind(c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26)
  rownames(ANSIASQSingleReducedre)<-codes
  colnames(ANSIASQSingleReducedre)<-AQL
  # Get Code letter from SSCodeLetters
  codelet<-SSCodeLetters[dLOTS,dINSL]
  if(PLAN == 1) {
  ac<-ANSIASQSingleNormalac[codelet,dAQL]
  re<-ANSIASQSingleNormalre[codelet,dAQL]
  ss<-ANSIASQSingleNormalss[codelet,dAQL]
  } else if(PLAN == 2) {
     ac<-ANSIASQSingleTightenedac[codelet,dAQL]
     re<-ANSIASQSingleTightenedre[codelet,dAQL]
     ss<-ANSASQSingleTightenedss[codelet,dAQL]
  } else if(PLAN == 3) {
    ac<-ANSIASQSingleReducedac[codelet,dAQL]
    re<-ANSIASQSingleReducedre[codelet,dAQL]
    ss<-ANSIASQSingleReducedss[codelet,dAQL]
  }
  plan<-data.frame(n=ss,c=ac,r=re)
  return(plan)
}









