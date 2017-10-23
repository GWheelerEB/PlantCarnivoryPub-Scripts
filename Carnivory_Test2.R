Data<-read_csv("/Path/To/Data/Genes-Adjusted.csv",col_names = FALSE)

Actin <- mean(as.numeric((Data[7:12,2])))
AltOx <- mean(as.numeric((Data[7:12,3])))
NHTrans <- mean(as.numeric((Data[7:12,4])))
AspPep <- mean(as.numeric((Data[7:12,5])))
ATP_ADP <- mean(as.numeric((Data[7:12,6])))
ATP <- mean(as.numeric((Data[7:12,7])))
BGal <- mean(as.numeric((Data[7:12,8])))
Chit <- mean(as.numeric((Data[7:12,9])))
CinAlc <- mean(as.numeric((Data[7:12,10])))
CystPep <- mean(as.numeric((Data[7:12,11])))
FrucBPA <- mean(as.numeric((Data[7:12,12])))
GlutTrans <- mean(as.numeric((Data[7:12,13])))
Lipase <- mean(as.numeric((Data[7:12,14])))
LipTrans <- mean(as.numeric((Data[7:12,15])))
Perox <- mean(as.numeric((Data[7:12,16])))
Phosp <- mean(as.numeric((Data[7:12,17])))
Phoslip <- mean(as.numeric((Data[7:12,18])))
Polygal <- mean(as.numeric((Data[7:12,19])))
ProtHomo <- mean(as.numeric((Data[7:12,20])))
RiboNuc <- mean(as.numeric((Data[7:12,21])))
SerCarPep <- mean(as.numeric((Data[7:12,22])))
ThioGluc <- mean(as.numeric((Data[7:12,23])))
H2OChan <- mean(as.numeric((Data[7:12,24])))
HeatShock <- mean(as.numeric((Data[7:12,25])))
Total <- mean(as.numeric((Data[7:12,27])))

Actin.SD <- sd(as.numeric((Data[7:12,2])))
AltOx.SD <- sd(as.numeric((Data[7:12,3])))
NHTrans.SD <- sd(as.numeric((Data[7:12,4])))
AspPep.SD <- sd(as.numeric((Data[7:12,5])))
ATP_ADP.SD <- sd(as.numeric((Data[7:12,6])))
ATP.SD <- sd(as.numeric((Data[7:12,7])))
BGal.SD <- sd(as.numeric((Data[7:12,8])))
Chit.SD <- sd(as.numeric((Data[7:12,9])))
CinAlc.SD <- sd(as.numeric((Data[7:12,10])))
CystPep.SD <- sd(as.numeric((Data[7:12,11])))
FrucBPA.SD <- sd(as.numeric((Data[7:12,12])))
GlutTrans.SD <- sd(as.numeric((Data[7:12,13])))
Lipase.SD <- sd(as.numeric((Data[7:12,14])))
LipTrans.SD <- sd(as.numeric((Data[7:12,15])))
Perox.SD <- sd(as.numeric((Data[7:12,16])))
Phosp.SD <- sd(as.numeric((Data[7:12,17])))
Phoslip.SD <- sd(as.numeric((Data[7:12,18])))
Polygal.SD <- sd(as.numeric((Data[7:12,19])))
ProtHomo.SD <- sd(as.numeric((Data[7:12,20])))
RiboNuc.SD <- sd(as.numeric((Data[7:12,21])))
SerCarPep.SD <- sd(as.numeric((Data[7:12,22])))
ThioGluc.SD <- sd(as.numeric((Data[7:12,23])))
H2OChan.SD <- sd(as.numeric((Data[7:12,24])))
HeatShock.SD <- sd(as.numeric((Data[7:12,25])))
Total.SD <- sd(as.numeric((Data[7:12,27])))

Summary<-matrix(nrow=25,ncol=12)
rownames(Summary)<-c("Actin", "AltOx", "NHTrans", "AspPep", "ATP_ADP", "ATP", "BGal", "Chit", "CinAlc", "CystPep", "FrucBPA", "GlutTrans", "Lipase", "LipTrans", "Perox", "Phosp", "Phoslip", "Polygal", "ProtHomo", "RiboNuc", "SerCarPep", "ThioGluc", "H2OChan", "HeatShock", "Total")
colnames(Summary)<-c("GA.Z","GA.p","GA.q","DC.Z","DC.p","DC.q","UG.Z","UG.p","UG.q","CF.Z","CF.p","CF.q")

Summary[1,1]<-(as.numeric(Data[3,2])-Actin)/Actin.SD
Summary[1,4]<-(as.numeric(Data[4,2])-Actin)/Actin.SD
Summary[1,7]<-(as.numeric(Data[5,2])-Actin)/Actin.SD
Summary[1,10]<-(as.numeric(Data[6,2])-Actin)/Actin.SD

Summary[2,1]<-(as.numeric(Data[3,3])-AltOx)/AltOx.SD
Summary[2,4]<-(as.numeric(Data[4,3])-AltOx)/AltOx.SD
Summary[2,7]<-(as.numeric(Data[5,3])-AltOx)/AltOx.SD
Summary[2,10]<-(as.numeric(Data[6,3])-AltOx)/AltOx.SD

Summary[3,1]<-(as.numeric(Data[3,4])-NHTrans)/NHTrans.SD
Summary[3,4]<-(as.numeric(Data[4,4])-NHTrans)/NHTrans.SD
Summary[3,7]<-(as.numeric(Data[5,4])-NHTrans)/NHTrans.SD
Summary[3,10]<-(as.numeric(Data[6,4])-NHTrans)/NHTrans.SD

Summary[4,1]<-(as.numeric(Data[3,5])-AspPep)/AspPep.SD
Summary[4,4]<-(as.numeric(Data[4,5])-AspPep)/AspPep.SD
Summary[4,7]<-(as.numeric(Data[5,5])-AspPep)/AspPep.SD
Summary[4,10]<-(as.numeric(Data[6,5])-AspPep)/AspPep.SD

Summary[5,1]<-(as.numeric(Data[3,6])-ATP_ADP)/ATP_ADP.SD
Summary[5,4]<-(as.numeric(Data[4,6])-ATP_ADP)/ATP_ADP.SD
Summary[5,7]<-(as.numeric(Data[5,6])-ATP_ADP)/ATP_ADP.SD
Summary[5,10]<-(as.numeric(Data[6,6])-ATP_ADP)/ATP_ADP.SD

Summary[6,1]<-(as.numeric(Data[3,7])-ATP)/ATP.SD
Summary[6,4]<-(as.numeric(Data[4,7])-ATP)/ATP.SD
Summary[6,7]<-(as.numeric(Data[5,7])-ATP)/ATP.SD
Summary[6,10]<-(as.numeric(Data[6,7])-ATP)/ATP.SD

Summary[7,1]<-(as.numeric(Data[3,8])-BGal)/BGal.SD
Summary[7,4]<-(as.numeric(Data[4,8])-BGal)/BGal.SD
Summary[7,7]<-(as.numeric(Data[5,8])-BGal)/BGal.SD
Summary[7,10]<-(as.numeric(Data[6,8])-BGal)/BGal.SD

Summary[8,1]<-(as.numeric(Data[3,9])-Chit)/Chit.SD
Summary[8,4]<-(as.numeric(Data[4,9])-Chit)/Chit.SD
Summary[8,7]<-(as.numeric(Data[5,9])-Chit)/Chit.SD
Summary[8,10]<-(as.numeric(Data[6,9])-Chit)/Chit.SD

Summary[9,1]<-(as.numeric(Data[3,10])-CinAlc)/CinAlc.SD
Summary[9,4]<-(as.numeric(Data[4,10])-CinAlc)/CinAlc.SD
Summary[9,7]<-(as.numeric(Data[5,10])-CinAlc)/CinAlc.SD
Summary[9,10]<-(as.numeric(Data[6,10])-CinAlc)/CinAlc.SD

Summary[10,1]<-(as.numeric(Data[3,11])-CystPep)/CystPep.SD
Summary[10,4]<-(as.numeric(Data[4,11])-CystPep)/CystPep.SD
Summary[10,7]<-(as.numeric(Data[5,11])-CystPep)/CystPep.SD
Summary[10,10]<-(as.numeric(Data[6,11])-CystPep)/CystPep.SD

Summary[11,1]<-(as.numeric(Data[3,12])-FrucBPA)/FrucBPA.SD
Summary[11,4]<-(as.numeric(Data[4,12])-FrucBPA)/FrucBPA.SD
Summary[11,7]<-(as.numeric(Data[5,12])-FrucBPA)/FrucBPA.SD
Summary[11,10]<-(as.numeric(Data[6,12])-FrucBPA)/FrucBPA.SD

Summary[12,1]<-(as.numeric(Data[3,13])-GlutTrans)/GlutTrans.SD
Summary[12,4]<-(as.numeric(Data[4,13])-GlutTrans)/GlutTrans.SD
Summary[12,7]<-(as.numeric(Data[5,13])-GlutTrans)/GlutTrans.SD
Summary[12,10]<-(as.numeric(Data[6,13])-GlutTrans)/GlutTrans.SD

Summary[13,1]<-(as.numeric(Data[3,14])-Lipase)/Lipase.SD
Summary[13,4]<-(as.numeric(Data[4,14])-Lipase)/Lipase.SD
Summary[13,7]<-(as.numeric(Data[5,14])-Lipase)/Lipase.SD
Summary[13,10]<-(as.numeric(Data[6,14])-Lipase)/Lipase.SD

Summary[14,1]<-(as.numeric(Data[3,15])-LipTrans)/LipTrans.SD
Summary[14,4]<-(as.numeric(Data[4,15])-LipTrans)/LipTrans.SD
Summary[14,7]<-(as.numeric(Data[5,15])-LipTrans)/LipTrans.SD
Summary[14,10]<-(as.numeric(Data[6,15])-LipTrans)/LipTrans.SD

Summary[15,1]<-(as.numeric(Data[3,16])-Perox)/Perox.SD
Summary[15,4]<-(as.numeric(Data[4,16])-Perox)/Perox.SD
Summary[15,7]<-(as.numeric(Data[5,16])-Perox)/Perox.SD
Summary[15,10]<-(as.numeric(Data[6,16])-Perox)/Perox.SD

Summary[16,1]<-(as.numeric(Data[3,17])-Phosp)/Phosp.SD
Summary[16,4]<-(as.numeric(Data[4,17])-Phosp)/Phosp.SD
Summary[16,7]<-(as.numeric(Data[5,17])-Phosp)/Phosp.SD
Summary[16,10]<-(as.numeric(Data[6,17])-Phosp)/Phosp.SD

Summary[17,1]<-(as.numeric(Data[3,18])-Phoslip)/Phoslip.SD
Summary[17,4]<-(as.numeric(Data[4,18])-Phoslip)/Phoslip.SD
Summary[17,7]<-(as.numeric(Data[5,18])-Phoslip)/Phoslip.SD
Summary[17,10]<-(as.numeric(Data[6,18])-Phoslip)/Phoslip.SD

Summary[18,1]<-(as.numeric(Data[3,19])-Polygal)/Polygal.SD
Summary[18,4]<-(as.numeric(Data[4,19])-Polygal)/Polygal.SD
Summary[18,7]<-(as.numeric(Data[5,19])-Polygal)/Polygal.SD
Summary[18,10]<-(as.numeric(Data[6,19])-Polygal)/Polygal.SD

Summary[19,1]<-(as.numeric(Data[3,20])-ProtHomo)/ProtHomo.SD
Summary[19,4]<-(as.numeric(Data[4,20])-ProtHomo)/ProtHomo.SD
Summary[19,7]<-(as.numeric(Data[5,20])-ProtHomo)/ProtHomo.SD
Summary[19,10]<-(as.numeric(Data[6,20])-ProtHomo)/ProtHomo.SD

Summary[20,1]<-(as.numeric(Data[3,21])-RiboNuc)/RiboNuc.SD
Summary[20,4]<-(as.numeric(Data[4,21])-RiboNuc)/RiboNuc.SD
Summary[20,7]<-(as.numeric(Data[5,21])-RiboNuc)/RiboNuc.SD
Summary[20,10]<-(as.numeric(Data[6,21])-RiboNuc)/RiboNuc.SD

Summary[21,1]<-(as.numeric(Data[3,22])-SerCarPep)/SerCarPep.SD
Summary[21,4]<-(as.numeric(Data[4,22])-SerCarPep)/SerCarPep.SD
Summary[21,7]<-(as.numeric(Data[5,22])-SerCarPep)/SerCarPep.SD
Summary[21,10]<-(as.numeric(Data[6,22])-SerCarPep)/SerCarPep.SD

Summary[22,1]<-(as.numeric(Data[3,23])-ThioGluc)/ThioGluc.SD
Summary[22,4]<-(as.numeric(Data[4,23])-ThioGluc)/ThioGluc.SD
Summary[22,7]<-(as.numeric(Data[5,23])-ThioGluc)/ThioGluc.SD
Summary[22,10]<-(as.numeric(Data[6,23])-ThioGluc)/ThioGluc.SD

Summary[23,1]<-(as.numeric(Data[3,24])-H2OChan)/H2OChan.SD
Summary[23,4]<-(as.numeric(Data[4,24])-H2OChan)/H2OChan.SD
Summary[23,7]<-(as.numeric(Data[5,24])-H2OChan)/H2OChan.SD
Summary[23,10]<-(as.numeric(Data[6,24])-H2OChan)/H2OChan.SD

Summary[24,1]<-(as.numeric(Data[3,25])-HeatShock)/HeatShock.SD
Summary[24,4]<-(as.numeric(Data[4,25])-HeatShock)/HeatShock.SD
Summary[24,7]<-(as.numeric(Data[5,25])-HeatShock)/HeatShock.SD
Summary[24,10]<-(as.numeric(Data[6,25])-HeatShock)/HeatShock.SD

Summary[25,1]<-(as.numeric(Data[3,27])-Total)/Total.SD
Summary[25,4]<-(as.numeric(Data[4,27])-Total)/Total.SD
Summary[25,7]<-(as.numeric(Data[5,27])-Total)/Total.SD
Summary[25,10]<-(as.numeric(Data[6,27])-Total)/Total.SD

Summary[1,2] <- pnorm((as.numeric(Summary[1,1])),lower.tail=FALSE)
Summary[1,5] <- pnorm((as.numeric(Summary[1,4])),lower.tail=FALSE)
Summary[1,8] <- pnorm((as.numeric(Summary[1,7])),lower.tail=FALSE)
Summary[1,11] <- pnorm((as.numeric(Summary[1,10])),lower.tail=FALSE)

Summary[2,2] <- pnorm((as.numeric(Summary[2,1])),lower.tail=FALSE)
Summary[2,5] <- pnorm((as.numeric(Summary[2,4])),lower.tail=FALSE)
Summary[2,8] <- pnorm((as.numeric(Summary[2,7])),lower.tail=FALSE)
Summary[2,11] <- pnorm((as.numeric(Summary[2,10])),lower.tail=FALSE)

Summary[3,2] <- pnorm((as.numeric(Summary[3,1])),lower.tail=FALSE)
Summary[3,5] <- pnorm((as.numeric(Summary[3,4])),lower.tail=FALSE)
Summary[3,8] <- pnorm((as.numeric(Summary[3,7])),lower.tail=FALSE)
Summary[3,11] <- pnorm((as.numeric(Summary[3,10])),lower.tail=FALSE)

Summary[4,2] <- pnorm((as.numeric(Summary[4,1])),lower.tail=FALSE)
Summary[4,5] <- pnorm((as.numeric(Summary[4,4])),lower.tail=FALSE)
Summary[4,8] <- pnorm((as.numeric(Summary[4,7])),lower.tail=FALSE)
Summary[4,11] <- pnorm((as.numeric(Summary[4,10])),lower.tail=FALSE)

Summary[5,2] <- pnorm((as.numeric(Summary[5,1])),lower.tail=FALSE)
Summary[5,5] <- pnorm((as.numeric(Summary[5,4])),lower.tail=FALSE)
Summary[5,8] <- pnorm((as.numeric(Summary[5,7])),lower.tail=FALSE)
Summary[5,11] <- pnorm((as.numeric(Summary[5,10])),lower.tail=FALSE)

Summary[6,2] <- pnorm((as.numeric(Summary[6,1])),lower.tail=FALSE)
Summary[6,5] <- pnorm((as.numeric(Summary[6,4])),lower.tail=FALSE)
Summary[6,8] <- pnorm((as.numeric(Summary[6,7])),lower.tail=FALSE)
Summary[6,11] <- pnorm((as.numeric(Summary[6,10])),lower.tail=FALSE)

Summary[7,2] <- pnorm((as.numeric(Summary[7,1])),lower.tail=FALSE)
Summary[7,5] <- pnorm((as.numeric(Summary[7,4])),lower.tail=FALSE)
Summary[7,8] <- pnorm((as.numeric(Summary[7,7])),lower.tail=FALSE)
Summary[7,11] <- pnorm((as.numeric(Summary[7,10])),lower.tail=FALSE)

Summary[8,2] <- pnorm((as.numeric(Summary[8,1])),lower.tail=FALSE)
Summary[8,5] <- pnorm((as.numeric(Summary[8,4])),lower.tail=FALSE)
Summary[8,8] <- pnorm((as.numeric(Summary[8,7])),lower.tail=FALSE)
Summary[8,11] <- pnorm((as.numeric(Summary[8,10])),lower.tail=FALSE)

Summary[9,2] <- pnorm((as.numeric(Summary[9,1])),lower.tail=FALSE)
Summary[9,5] <- pnorm((as.numeric(Summary[9,4])),lower.tail=FALSE)
Summary[9,8] <- pnorm((as.numeric(Summary[9,7])),lower.tail=FALSE)
Summary[9,11] <- pnorm((as.numeric(Summary[9,10])),lower.tail=FALSE)

Summary[10,2] <- pnorm((as.numeric(Summary[10,1])),lower.tail=FALSE)
Summary[10,5] <- pnorm((as.numeric(Summary[10,4])),lower.tail=FALSE)
Summary[10,8] <- pnorm((as.numeric(Summary[10,7])),lower.tail=FALSE)
Summary[10,11] <- pnorm((as.numeric(Summary[10,10])),lower.tail=FALSE)

Summary[11,2] <- pnorm((as.numeric(Summary[11,1])),lower.tail=FALSE)
Summary[11,5] <- pnorm((as.numeric(Summary[11,4])),lower.tail=FALSE)
Summary[11,8] <- pnorm((as.numeric(Summary[11,7])),lower.tail=FALSE)
Summary[11,11] <- pnorm((as.numeric(Summary[11,10])),lower.tail=FALSE)

Summary[12,2] <- pnorm((as.numeric(Summary[12,1])),lower.tail=FALSE)
Summary[12,5] <- pnorm((as.numeric(Summary[12,4])),lower.tail=FALSE)
Summary[12,8] <- pnorm((as.numeric(Summary[12,7])),lower.tail=FALSE)
Summary[12,11] <- pnorm((as.numeric(Summary[12,10])),lower.tail=FALSE)

Summary[13,2] <- pnorm((as.numeric(Summary[13,1])),lower.tail=FALSE)
Summary[13,5] <- pnorm((as.numeric(Summary[13,4])),lower.tail=FALSE)
Summary[13,8] <- pnorm((as.numeric(Summary[13,7])),lower.tail=FALSE)
Summary[13,11] <- pnorm((as.numeric(Summary[13,10])),lower.tail=FALSE)

Summary[14,2] <- pnorm((as.numeric(Summary[14,1])),lower.tail=FALSE)
Summary[14,5] <- pnorm((as.numeric(Summary[14,4])),lower.tail=FALSE)
Summary[14,8] <- pnorm((as.numeric(Summary[14,7])),lower.tail=FALSE)
Summary[14,11] <- pnorm((as.numeric(Summary[14,10])),lower.tail=FALSE)

Summary[15,2] <- pnorm((as.numeric(Summary[15,1])),lower.tail=FALSE)
Summary[15,5] <- pnorm((as.numeric(Summary[15,4])),lower.tail=FALSE)
Summary[15,8] <- pnorm((as.numeric(Summary[15,7])),lower.tail=FALSE)
Summary[15,11] <- pnorm((as.numeric(Summary[15,10])),lower.tail=FALSE)

Summary[16,2] <- pnorm((as.numeric(Summary[16,1])),lower.tail=FALSE)
Summary[16,5] <- pnorm((as.numeric(Summary[16,4])),lower.tail=FALSE)
Summary[16,8] <- pnorm((as.numeric(Summary[16,7])),lower.tail=FALSE)
Summary[16,11] <- pnorm((as.numeric(Summary[16,10])),lower.tail=FALSE)

Summary[17,2] <- pnorm((as.numeric(Summary[17,1])),lower.tail=FALSE)
Summary[17,5] <- pnorm((as.numeric(Summary[17,4])),lower.tail=FALSE)
Summary[17,8] <- pnorm((as.numeric(Summary[17,7])),lower.tail=FALSE)
Summary[17,11] <- pnorm((as.numeric(Summary[17,10])),lower.tail=FALSE)

Summary[18,2] <- pnorm((as.numeric(Summary[18,1])),lower.tail=FALSE)
Summary[18,5] <- pnorm((as.numeric(Summary[18,4])),lower.tail=FALSE)
Summary[18,8] <- pnorm((as.numeric(Summary[18,7])),lower.tail=FALSE)
Summary[18,11] <- pnorm((as.numeric(Summary[18,10])),lower.tail=FALSE)

Summary[19,2] <- pnorm((as.numeric(Summary[19,1])),lower.tail=FALSE)
Summary[19,5] <- pnorm((as.numeric(Summary[19,4])),lower.tail=FALSE)
Summary[19,8] <- pnorm((as.numeric(Summary[19,7])),lower.tail=FALSE)
Summary[19,11] <- pnorm((as.numeric(Summary[19,10])),lower.tail=FALSE)

Summary[20,2] <- pnorm((as.numeric(Summary[20,1])),lower.tail=FALSE)
Summary[20,5] <- pnorm((as.numeric(Summary[20,4])),lower.tail=FALSE)
Summary[20,8] <- pnorm((as.numeric(Summary[20,7])),lower.tail=FALSE)
Summary[20,11] <- pnorm((as.numeric(Summary[20,10])),lower.tail=FALSE)

Summary[21,2] <- pnorm((as.numeric(Summary[21,1])),lower.tail=FALSE)
Summary[21,5] <- pnorm((as.numeric(Summary[21,4])),lower.tail=FALSE)
Summary[21,8] <- pnorm((as.numeric(Summary[21,7])),lower.tail=FALSE)
Summary[21,11] <- pnorm((as.numeric(Summary[21,10])),lower.tail=FALSE)

Summary[22,2] <- pnorm((as.numeric(Summary[22,1])),lower.tail=FALSE)
Summary[22,5] <- pnorm((as.numeric(Summary[22,4])),lower.tail=FALSE)
Summary[22,8] <- pnorm((as.numeric(Summary[22,7])),lower.tail=FALSE)
Summary[22,11] <- pnorm((as.numeric(Summary[22,10])),lower.tail=FALSE)

Summary[23,2] <- pnorm((as.numeric(Summary[23,1])),lower.tail=FALSE)
Summary[23,5] <- pnorm((as.numeric(Summary[23,4])),lower.tail=FALSE)
Summary[23,8] <- pnorm((as.numeric(Summary[23,7])),lower.tail=FALSE)
Summary[23,11] <- pnorm((as.numeric(Summary[23,10])),lower.tail=FALSE)

Summary[24,2] <- pnorm((as.numeric(Summary[24,1])),lower.tail=FALSE)
Summary[24,5] <- pnorm((as.numeric(Summary[24,4])),lower.tail=FALSE)
Summary[24,8] <- pnorm((as.numeric(Summary[24,7])),lower.tail=FALSE)
Summary[24,11] <- pnorm((as.numeric(Summary[24,10])),lower.tail=FALSE)

Summary[25,2] <- pnorm((as.numeric(Summary[25,1])),lower.tail=FALSE)
Summary[25,5] <- pnorm((as.numeric(Summary[25,4])),lower.tail=FALSE)
Summary[25,8] <- pnorm((as.numeric(Summary[25,7])),lower.tail=FALSE)
Summary[25,11] <- pnorm((as.numeric(Summary[25,10])),lower.tail=FALSE)

Summary[,3]<-qvalue(as.numeric(Summary[,2]), pi0.method="bootstrap",fdr.level = 0.05)$qvalues
Summary[,6]<-qvalue(as.numeric(Summary[,5]), pi0.method="bootstrap",lambda=seq(0,0.88,0.05),fdr.level=0.05)$qvalues
Summary[,9]<-qvalue(as.numeric(Summary[,8]), pi0.method="bootstrap",fdr.level = 0.05)$qvalues
Summary[,12]<-qvalue(as.numeric(Summary[,11]), pi0.method="bootstrap",lambda=seq(0,0.88,0.05),fdr.level = 0.05)$qvalues

attach(mtcars)
Params<-par(mfrow=c(5,5), oma = c(5,4,2,2) + 0.1, mar = c(2,2,1,1) + 0.35)

#[1]. Actin
X = seq(-4,4,length=1000)*Actin.SD + Actin
Y = dnorm(X, Actin, Actin.SD)
plot(X, Y, cex=0.7,xlab="", ylab="",cex.lab=0.00000001,main=Data[1,2])
abline(v=Actin,lty=1)
abline(v=Actin+Actin.SD,lty=2)
abline(v=Actin+Actin.SD*2,lty=2)
abline(v=Actin+Actin.SD*3,lty=2)
abline(v=Actin-Actin.SD,lty=2)
abline(v=Actin-Actin.SD*2,lty=2)
abline(v=Actin-Actin.SD*3,lty=2)
abline(v=Data[2,2],col="green",lwd=3) #Sarracenia
abline(v=Data[3,2],col="blue",lwd=3) #Genlisea
abline(v=Data[4,2],col="red",lwd=3) #Drosera
abline(v=Data[5,2],col="gold",lwd=3) #Utricularia
abline(v=Data[6,2],col="darkorchid1",lwd=3) #Cephalotus

#[2]. AltOx
X = seq(-4,4,length=1000)*AltOx.SD + AltOx
Y = dnorm(X, AltOx, AltOx.SD)
plot(X, Y, cex=0.7, xlab="", ylab="", main=Data[1,3])
abline(v=AltOx,lty=1)
abline(v=AltOx+AltOx.SD,lty=2)
abline(v=AltOx+AltOx.SD*2,lty=2)
abline(v=AltOx+AltOx.SD*3,lty=2)
abline(v=AltOx-AltOx.SD,lty=2)
abline(v=AltOx-AltOx.SD*2,lty=2)
abline(v=AltOx-AltOx.SD*3,lty=2)
#abline(v=Data[2,3],col="green",lwd=3) #Sarracenia
abline(v=Data[3,3],col="blue",lwd=3) #Genlisea
abline(v=Data[4,3],col="red",lwd=3) #Drosera
abline(v=Data[5,3],col="gold",lwd=3) #Utricularia
abline(v=Data[6,3],col="darkorchid1",lwd=3,lty=2) #Cephalotus

#[3]. NHTrans
X = seq(-4,4,length=1000)*NHTrans.SD + NHTrans
Y = dnorm(X, NHTrans, NHTrans.SD)
plot(X, Y, cex=0.7, xlab="", ylab="", main=Data[1,4], cex.main=1.1)
abline(v=NHTrans,lty=1)
abline(v=NHTrans+NHTrans.SD,lty=2)
abline(v=NHTrans+NHTrans.SD*2,lty=2)
abline(v=NHTrans+NHTrans.SD*3,lty=2)
abline(v=NHTrans-NHTrans.SD,lty=2)
abline(v=NHTrans-NHTrans.SD*2,lty=2)
abline(v=NHTrans-NHTrans.SD*3,lty=2)
#abline(v=Data[2,4],col="green",lwd=3) #Sarracenia
abline(v=Data[3,4],col="blue",lwd=3) #Genlisea
abline(v=Data[4,4],col="red",lwd=3) #Drosera
abline(v=Data[5,4],col="gold",lwd=3) #Utricularia
abline(v=Data[6,4],col="darkorchid1",lwd=3,lty=2) #Cephalotus

#[4]. AspPep
X = seq(-4,4,length=1000)*AspPep.SD + AspPep
Y = dnorm(X, AspPep, AspPep.SD)
plot(X, Y, cex=0.7, xlab="", ylab="", main=Data[1,5])
abline(v=AspPep,lty=1)
abline(v=AspPep+AspPep.SD,lty=2)
abline(v=AspPep+AspPep.SD*2,lty=2)
abline(v=AspPep+AspPep.SD*3,lty=2)
abline(v=AspPep-AspPep.SD,lty=2)
abline(v=AspPep-AspPep.SD*2,lty=2)
abline(v=AspPep-AspPep.SD*3,lty=2)
#abline(v=Data[2,5],col="green",lwd=3) #Sarracenia
abline(v=Data[3,5],col="blue",lwd=3) #Genlisea
abline(v=Data[4,5],col="red",lwd=3) #Drosera
abline(v=Data[5,5],col="gold",lwd=3) #Utricularia
abline(v=Data[6,5],col="darkorchid1",lwd=3) #Cephalotus

#[5]. ATP_ADP
X = seq(-4,4,length=1000)*ATP_ADP.SD + ATP_ADP
Y = dnorm(X, ATP_ADP, ATP_ADP.SD)
plot(X, Y, cex=0.7, xlab="", ylab="", main=Data[1,6])
abline(v=ATP_ADP,lty=1)
abline(v=ATP_ADP+ATP_ADP.SD,lty=2)
abline(v=ATP_ADP+ATP_ADP.SD*2,lty=2)
abline(v=ATP_ADP+ATP_ADP.SD*3,lty=2)
abline(v=ATP_ADP-ATP_ADP.SD,lty=2)
abline(v=ATP_ADP-ATP_ADP.SD*2,lty=2)
abline(v=ATP_ADP-ATP_ADP.SD*3,lty=2)
#abline(v=Data[2,6],col="green",lwd=3) #Sarracenia
abline(v=Data[3,6],col="blue",lwd=3) #Genlisea
abline(v=Data[4,6],col="red",lwd=3) #Drosera
abline(v=Data[5,6],col="gold",lwd=3,lty=2) #Utricularia
abline(v=Data[6,6],col="darkorchid1",lwd=3) #Cephalotus

#[6]. ATP
X = seq(-4,4,length=1000)*ATP.SD + ATP
Y = dnorm(X, ATP, ATP.SD)
plot(X, Y, cex=0.7, xlab="", ylab="", main=Data[1,7])
abline(v=ATP,lty=1)
abline(v=ATP+ATP.SD,lty=2)
abline(v=ATP+ATP.SD*2,lty=2)
abline(v=ATP+ATP.SD*3,lty=2)
abline(v=ATP-ATP.SD,lty=2)
abline(v=ATP-ATP.SD*2,lty=2)
abline(v=ATP-ATP.SD*3,lty=2)
#abline(v=Data[2,7],col="green",lwd=3) #Sarracenia
abline(v=Data[3,7],col="blue",lwd=3) #Genlisea
abline(v=Data[4,7],col="red",lwd=3) #Drosera
abline(v=Data[5,7],col="gold",lwd=3) #Utricularia
abline(v=Data[6,7],col="darkorchid1",lwd=3) #Cephalotus

#[7]. BGal
X = seq(-4,4.5,length=1000)*BGal.SD + BGal
Y = dnorm(X, BGal, BGal.SD)
plot(X, Y, cex=0.7, xlab="", ylab="", main=Data[1,8])
abline(v=BGal,lty=1)
abline(v=BGal+BGal.SD,lty=2)
abline(v=BGal+BGal.SD*2,lty=2)
abline(v=BGal+BGal.SD*3,lty=2)
abline(v=BGal-BGal.SD,lty=2)
abline(v=BGal-BGal.SD*2,lty=2)
abline(v=BGal-BGal.SD*3,lty=2)
abline(v=BGal+BGal.SD*4,lty=2)
#abline(v=Data[2,8],col="green",lwd=3) #Sarracenia
abline(v=Data[3,8],col="blue",lwd=3) #Genlisea
abline(v=Data[4,8],col="red",lwd=3) #Drosera
abline(v=Data[5,8],col="gold",lwd=3, lty=2) #Utricularia
abline(v=Data[6,8],col="darkorchid1",lwd=3) #Cephalotus

#[8]. Chit
X = seq(-4,4,length=1000)*Chit.SD + Chit
Y = dnorm(X, Chit, Chit.SD)
plot(X, Y, cex=0.7, xlab="", ylab="", main=Data[1,9])
abline(v=Chit,lty=1)
abline(v=Chit+Chit.SD,lty=2)
abline(v=Chit+Chit.SD*2,lty=2)
abline(v=Chit+Chit.SD*3,lty=2)
abline(v=Chit-Chit.SD,lty=2)
abline(v=Chit-Chit.SD*2,lty=2)
abline(v=Chit-Chit.SD*3,lty=2)
#abline(v=Data[2,9],col="green",lwd=3) #Sarracenia
abline(v=Data[3,9],col="blue",lwd=3) #Genlisea
abline(v=Data[4,9],col="red",lwd=3) #Drosera
abline(v=Data[5,9],col="gold",lwd=3) #Utricularia
abline(v=Data[6,9],col="darkorchid1",lwd=3) #Cephalotus

#[9] CinAlc
X = seq(-4,4,length=1000)*CinAlc.SD + CinAlc
Y = dnorm(X, CinAlc, CinAlc.SD)
plot(X, Y, cex=0.7, xlab="", ylab="", main=Data[1,10], cex.main=1.0)
abline(v=CinAlc,lty=1)
abline(v=CinAlc+CinAlc.SD,lty=2)
abline(v=CinAlc+CinAlc.SD*2,lty=2)
abline(v=CinAlc+CinAlc.SD*3,lty=2)
abline(v=CinAlc-CinAlc.SD,lty=2)
abline(v=CinAlc-CinAlc.SD*2,lty=2)
abline(v=CinAlc-CinAlc.SD*3,lty=2)
#abline(v=Data[2,10],col="green",lwd=3) #Sarracenia
abline(v=Data[3,10],col="blue",lwd=3) #Genlisea
abline(v=Data[4,10],col="red",lwd=3) #Drosera
abline(v=Data[5,10],col="gold",lwd=3) #Utricularia
abline(v=Data[6,10],col="darkorchid1",lwd=3) #Cephalotus

#[10]. CystPep
X = seq(-4,4,length=1000)*CystPep.SD + CystPep
Y = dnorm(X, CystPep, CystPep.SD)
plot(X, Y, cex=0.7, xlab="", ylab="", main=Data[1,11])
abline(v=CystPep,lty=1)
abline(v=CystPep+CystPep.SD,lty=2)
abline(v=CystPep+CystPep.SD*2,lty=2)
abline(v=CystPep+CystPep.SD*3,lty=2)
abline(v=CystPep-CystPep.SD,lty=2)
abline(v=CystPep-CystPep.SD*2,lty=2)
abline(v=CystPep-CystPep.SD*3,lty=2)
#abline(v=Data[2,11],col="green",lwd=3) #Sarracenia
abline(v=Data[3,11],col="blue",lwd=3) #Genlisea
abline(v=Data[4,11],col="red",lwd=3) #Drosera
abline(v=Data[5,11],col="gold",lwd=3) #Utricularia
abline(v=Data[6,11],col="darkorchid1",lwd=3) #Cephalotus

#[11]. FrucBPA
X = seq(-4,4,length=1000)*FrucBPA.SD + FrucBPA
Y = dnorm(X, FrucBPA, FrucBPA.SD)
plot(X, Y, cex=0.7, xlab="", ylab="", main=Data[1,12], cex.main=1.08)
abline(v=FrucBPA,lty=1)
abline(v=FrucBPA+FrucBPA.SD,lty=2)
abline(v=FrucBPA+FrucBPA.SD*2,lty=2)
abline(v=FrucBPA+FrucBPA.SD*3,lty=2)
abline(v=FrucBPA-FrucBPA.SD,lty=2)
abline(v=FrucBPA-FrucBPA.SD*2,lty=2)
abline(v=FrucBPA-FrucBPA.SD*3,lty=2)
#abline(v=Data[2,12],col="green",lwd=3) #Sarracenia
abline(v=Data[3,12],col="blue",lwd=3) #Genlisea
abline(v=Data[4,12],col="red",lwd=3) #Drosera
abline(v=Data[5,12],col="gold",lwd=3) #Utricularia
abline(v=Data[6,12],col="darkorchid1",lwd=3) #Cephalotus

#[12]. GlutTrans
X = seq(-4,4,length=1000)*GlutTrans.SD + GlutTrans
Y = dnorm(X, GlutTrans, GlutTrans.SD)
plot(X, Y, cex=0.7, xlab="", ylab="", main=Data[1,13])
abline(v=GlutTrans,lty=1)
abline(v=GlutTrans+GlutTrans.SD,lty=2)
abline(v=GlutTrans+GlutTrans.SD*2,lty=2)
abline(v=GlutTrans+GlutTrans.SD*3,lty=2)
abline(v=GlutTrans-GlutTrans.SD,lty=2)
abline(v=GlutTrans-GlutTrans.SD*2,lty=2)
abline(v=GlutTrans-GlutTrans.SD*3,lty=2)
#abline(v=Data[2,13],col="green",lwd=3) #Sarracenia
abline(v=Data[3,13],col="blue",lwd=3) #Genlisea
abline(v=Data[4,13],col="red",lwd=3,lty=2) #Drosera
abline(v=Data[5,13],col="gold",lwd=3) #Utricularia
abline(v=Data[6,13],col="darkorchid1",lwd=3) #Cephalotus

#[13]. Lipase
X = seq(-4,4,length=1000)*Lipase.SD + Lipase
Y = dnorm(X, Lipase, Lipase.SD)
plot(X, Y, cex=0.7, xlab="", ylab="", main=Data[1,14])
abline(v=Lipase,lty=1)
abline(v=Lipase+Lipase.SD,lty=2)
abline(v=Lipase+Lipase.SD*2,lty=2)
abline(v=Lipase+Lipase.SD*3,lty=2)
abline(v=Lipase-Lipase.SD,lty=2)
abline(v=Lipase-Lipase.SD*2,lty=2)
abline(v=Lipase-Lipase.SD*3,lty=2)
#abline(v=Data[2,14],col="green",lwd=3) #Sarracenia
abline(v=Data[3,14],col="blue",lwd=3) #Genlisea
abline(v=Data[4,14],col="red",lwd=3) #Drosera
abline(v=Data[5,14],col="gold",lwd=3) #Utricularia
abline(v=Data[6,14],col="darkorchid1",lwd=3) #Cephalotus

#[14]. LipTrans
X = seq(-4,4,length=1000)*LipTrans.SD + LipTrans
Y = dnorm(X, LipTrans, LipTrans.SD)
plot(X, Y, cex=0.7, xlab="", ylab="", main=Data[1,15])
abline(v=LipTrans,lty=1)
abline(v=LipTrans+LipTrans.SD,lty=2)
abline(v=LipTrans+LipTrans.SD*2,lty=2)
abline(v=LipTrans+LipTrans.SD*3,lty=2)
abline(v=LipTrans-LipTrans.SD,lty=2)
abline(v=LipTrans-LipTrans.SD*2,lty=2)
abline(v=LipTrans-LipTrans.SD*3,lty=2)
#abline(v=Data[2,15],col="green",lwd=3) #Sarracenia
abline(v=Data[3,15],col="blue",lwd=3) #Genlisea
abline(v=Data[4,15],col="red",lwd=3) #Drosera
abline(v=Data[5,15],col="gold",lwd=3) #Utricularia
abline(v=Data[6,15],col="darkorchid1",lwd=3) #Cephalotus

#[15]. Perox
X = seq(-4,4,length=1000)*Perox.SD + Perox
Y = dnorm(X, Perox, Perox.SD)
plot(X, Y, cex=0.7, xlab="", ylab="", main=Data[1,16])
abline(v=Perox,lty=1)
abline(v=Perox+Perox.SD,lty=2)
abline(v=Perox+Perox.SD*2,lty=2)
abline(v=Perox+Perox.SD*3,lty=2)
abline(v=Perox-Perox.SD,lty=2)
abline(v=Perox-Perox.SD*2,lty=2)
abline(v=Perox-Perox.SD*3,lty=2)
#abline(v=Data[2,16],col="green",lwd=3) #Sarracenia
abline(v=Data[3,16],col="blue",lwd=3) #Genlisea
abline(v=Data[4,16],col="red",lwd=3) #Drosera
abline(v=Data[5,16],col="gold",lwd=3) #Utricularia
abline(v=Data[6,16],col="darkorchid1",lwd=3) #Cephalotus

#[16]. Phosp
X = seq(-4,4,length=1000)*Phosp.SD + Phosp
Y = dnorm(X, Phosp, Phosp.SD)
plot(X, Y, cex=0.7, xlab="", ylab="", main=Data[1,17])
abline(v=Phosp,lty=1)
abline(v=Phosp+Phosp.SD,lty=2)
abline(v=Phosp+Phosp.SD*2,lty=2)
abline(v=Phosp+Phosp.SD*3,lty=2)
abline(v=Phosp-Phosp.SD,lty=2)
abline(v=Phosp-Phosp.SD*2,lty=2)
abline(v=Phosp-Phosp.SD*3,lty=2)
#abline(v=Data[2,17],col="green",lwd=3) #Sarracenia
abline(v=Data[3,17],col="blue",lwd=3) #Genlisea
abline(v=Data[4,17],col="red",lwd=3) #Drosera
abline(v=Data[5,17],col="gold",lwd=3) #Utricularia
abline(v=Data[6,17],col="darkorchid1",lwd=3) #Cephalotus

#[17]. Phoslip
X = seq(-4,4,length=1000)*Phoslip.SD + Phoslip
Y = dnorm(X, Phoslip, Phoslip.SD)
plot(X, Y, cex=0.7, xlab="", ylab="", main=Data[1,18])
abline(v=Phoslip,lty=1)
abline(v=Phoslip+Phoslip.SD,lty=2)
abline(v=Phoslip+Phoslip.SD*2,lty=2)
abline(v=Phoslip+Phoslip.SD*3,lty=2)
abline(v=Phoslip-Phoslip.SD,lty=2)
abline(v=Phoslip-Phoslip.SD*2,lty=2)
abline(v=Phoslip-Phoslip.SD*3,lty=2)
#abline(v=Data[2,18],col="green",lwd=3) #Sarracenia
abline(v=Data[3,18],col="blue",lwd=3) #Genlisea
abline(v=Data[4,18],col="red",lwd=3) #Drosera
abline(v=Data[5,18],col="gold",lwd=3) #Utricularia
abline(v=Data[6,18],col="darkorchid1",lwd=3) #Cephalotus

#[18]. Polygal
X = seq(-4,4,length=1000)*Polygal.SD + Polygal
Y = dnorm(X, Polygal, Polygal.SD)
plot(X, Y, cex=0.7, xlab="", ylab="", main=Data[1,19])
abline(v=Polygal,lty=1)
abline(v=Polygal+Polygal.SD,lty=2)
abline(v=Polygal+Polygal.SD*2,lty=2)
abline(v=Polygal+Polygal.SD*3,lty=2)
abline(v=Polygal-Polygal.SD,lty=2)
abline(v=Polygal-Polygal.SD*2,lty=2)
abline(v=Polygal-Polygal.SD*3,lty=2)
#abline(v=Data[2,19],col="green",lwd=3) #Sarracenia
abline(v=Data[3,19],col="blue",lwd=3) #Genlisea
abline(v=Data[4,19],col="red",lwd=3) #Drosera
abline(v=Data[5,19],col="gold",lwd=3) #Utricularia
abline(v=Data[6,19],col="darkorchid1",lwd=3,lty=2) #Cephalotus

#[19]. ProtHomo
X = seq(-4,4,length=1000)*ProtHomo.SD + ProtHomo
Y = dnorm(X, ProtHomo, ProtHomo.SD)
plot(X, Y, cex=0.7, xlab="", ylab="", main=Data[1,20])
abline(v=ProtHomo,lty=1)
abline(v=ProtHomo+ProtHomo.SD,lty=2)
abline(v=ProtHomo+ProtHomo.SD*2,lty=2)
abline(v=ProtHomo+ProtHomo.SD*3,lty=2)
abline(v=ProtHomo-ProtHomo.SD,lty=2)
abline(v=ProtHomo-ProtHomo.SD*2,lty=2)
abline(v=ProtHomo-ProtHomo.SD*3,lty=2)
#abline(v=Data[2,20],col="green",lwd=3) #Sarracenia
abline(v=Data[3,20],col="blue",lwd=3) #Genlisea
abline(v=Data[4,20],col="red",lwd=3) #Drosera
abline(v=Data[5,20],col="gold",lwd=3) #Utricularia
abline(v=Data[6,20],col="darkorchid1",lwd=3) #Cephalotus

#[20]. RiboNuc
X = seq(-4,4,length=1000)*RiboNuc.SD + RiboNuc
Y = dnorm(X, RiboNuc, RiboNuc.SD)
plot(X, Y, cex=0.7, xlab="", ylab="", main=Data[1,21])
abline(v=RiboNuc,lty=1)
abline(v=RiboNuc+RiboNuc.SD,lty=2)
abline(v=RiboNuc+RiboNuc.SD*2,lty=2)
abline(v=RiboNuc+RiboNuc.SD*3,lty=2)
abline(v=RiboNuc-RiboNuc.SD,lty=2)
abline(v=RiboNuc-RiboNuc.SD*2,lty=2)
abline(v=RiboNuc-RiboNuc.SD*3,lty=2)
#abline(v=Data[2,21],col="green",lwd=3) #Sarracenia
abline(v=Data[3,21],col="blue",lwd=3) #Genlisea
abline(v=Data[4,21],col="red",lwd=3) #Drosera
abline(v=Data[5,21],col="gold",lwd=3,lty=2) #Utricularia
abline(v=Data[6,21],col="darkorchid1",lwd=3,lty=3) #Cephalotus

#[21]. SerCarPep
X = seq(-4,4,length=1000)*SerCarPep.SD + SerCarPep
Y = dnorm(X, SerCarPep, SerCarPep.SD)
plot(X, Y, cex=0.7, xlab="", ylab="", main=Data[1,22], cex.main=1.1)
abline(v=SerCarPep,lty=1)
abline(v=SerCarPep+SerCarPep.SD,lty=2)
abline(v=SerCarPep+SerCarPep.SD*2,lty=2)
abline(v=SerCarPep+SerCarPep.SD*3,lty=2)
abline(v=SerCarPep-SerCarPep.SD,lty=2)
abline(v=SerCarPep-SerCarPep.SD*2,lty=2)
abline(v=SerCarPep-SerCarPep.SD*3,lty=2)
#abline(v=Data[2,22],col="green",lwd=3) #Sarracenia
abline(v=Data[3,22],col="blue",lwd=3) #Genlisea
abline(v=Data[4,22],col="red",lwd=3) #Drosera
abline(v=Data[5,22],col="gold",lwd=3,lty=2) #Utricularia
abline(v=Data[6,22],col="darkorchid1",lwd=3) #Cephalotus

#[22]. ThioGluc
X = seq(-4,4,length=1000)*ThioGluc.SD + ThioGluc
Y = dnorm(X, ThioGluc, ThioGluc.SD)
plot(X, Y, cex=0.7, xlab="", ylab="", main=Data[1,23])
abline(v=ThioGluc,lty=1)
abline(v=ThioGluc+ThioGluc.SD,lty=2)
abline(v=ThioGluc+ThioGluc.SD*2,lty=2)
abline(v=ThioGluc+ThioGluc.SD*3,lty=2)
abline(v=ThioGluc-ThioGluc.SD,lty=2)
abline(v=ThioGluc-ThioGluc.SD*2,lty=2)
abline(v=ThioGluc-ThioGluc.SD*3,lty=2)
#abline(v=Data[2,23],col="green",lwd=3) #Sarracenia
abline(v=Data[3,23],col="blue",lwd=3) #Genlisea
abline(v=Data[4,23],col="red",lwd=3) #Drosera
abline(v=Data[5,23],col="gold",lwd=3,lty=2) #Utricularia
abline(v=Data[6,23],col="darkorchid1",lwd=3,lty=3) #Cephalotus

#[23]. H2OChan
X = seq(-4,4,length=1000)*H2OChan.SD + H2OChan
Y = dnorm(X, H2OChan, H2OChan.SD)
plot(X, Y, cex=0.7, xlab="", ylab="", main=Data[1,24])
abline(v=H2OChan,lty=1)
abline(v=H2OChan+H2OChan.SD,lty=2)
abline(v=H2OChan+H2OChan.SD*2,lty=2)
abline(v=H2OChan+H2OChan.SD*3,lty=2)
abline(v=H2OChan-H2OChan.SD,lty=2)
abline(v=H2OChan-H2OChan.SD*2,lty=2)
abline(v=H2OChan-H2OChan.SD*3,lty=2)
#abline(v=Data[2,24],col="green",lwd=3) #Sarracenia
abline(v=Data[3,24],col="blue",lwd=3) #Genlisea
abline(v=Data[4,24],col="red",lwd=3) #Drosera
abline(v=Data[5,24],col="gold",lwd=3) #Utricularia
abline(v=Data[6,24],col="darkorchid1",lwd=3) #Cephalotus

#[24]. HeatShock
X = seq(-4,4,length=1000)*HeatShock.SD + HeatShock
Y = dnorm(X, HeatShock, HeatShock.SD)
plot(X, Y, cex=0.7, xlab="", ylab="", main=Data[1,25])
abline(v=HeatShock,lty=1)
abline(v=HeatShock+HeatShock.SD,lty=2)
abline(v=HeatShock+HeatShock.SD*2,lty=2)
abline(v=HeatShock+HeatShock.SD*3,lty=2)
abline(v=HeatShock-HeatShock.SD,lty=2)
abline(v=HeatShock-HeatShock.SD*2,lty=2)
abline(v=HeatShock-HeatShock.SD*3,lty=2)
#abline(v=Data[2,25],col="green",lwd=3) #Sarracenia
abline(v=Data[3,25],col="blue",lwd=3) #Genlisea
abline(v=Data[4,25],col="red",lwd=3) #Drosera
abline(v=Data[5,25],col="gold",lwd=3) #Utricularia
abline(v=Data[6,25],col="darkorchid1",lwd=3) #Cephalotus

#[25]. Total
X = seq(-4,4,length=1000)*Total.SD + Total
Y = dnorm(X, Total, Total.SD)
plot(X, Y, cex=0.7, xlab="", ylab="", main=Data[1,27])
abline(v=Total,lty=1)
abline(v=Total+Total.SD,lty=2)
abline(v=Total+Total.SD*2,lty=2)
abline(v=Total+Total.SD*3,lty=2)
abline(v=Total-Total.SD,lty=2)
abline(v=Total-Total.SD*2,lty=2)
abline(v=Total-Total.SD*3,lty=2)
#abline(v=Data[2,27],col="green",lwd=3) #Sarracenia
abline(v=Data[3,27],col="blue",lwd=3) #Genlisea
abline(v=Data[4,27],col="red",lwd=3) #Drosera
abline(v=Data[5,27],col="gold",lwd=3) #Utricularia
abline(v=Data[6,27],col="darkorchid1",lwd=3) #Cephalotus

title(xlab = "Proportion Represented (#/K)", ylab = "Probability Density", outer = TRUE, line = 1, cex.lab=1.8)

par(Params)