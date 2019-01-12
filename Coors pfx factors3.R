library("sqldf", lib.loc="~/R/win-library/3.4")
library("plyr", lib.loc="~/R/win-library/3.3")
library("plotly", lib.loc="~/R/win-library/3.3")
setwd("C:/Users/Adam/Desktop/Baseball R projects/Coors movement factors")

SliderTable <- read.csv("Slider table.csv", header = TRUE, sep = ",")
TwoSeamTable <- read.csv("2Seam table.csv", header = TRUE, sep = ",")
FourSeamTable <- read.csv("4Seam table.csv", header = TRUE, sep = ",")
ChangeupTable <- read.csv("Changeup table.csv", header = TRUE, sep = ",")
CurveballTable <- read.csv("Curve table.csv", header = TRUE, sep = ",")
CutterTable <- read.csv("Cutter table.csv", header = TRUE, sep = ",")
SinkerTable <- read.csv("Sinker table.csv", header = TRUE, sep = ",")

#Slider
SLaverage.pfx_x.coors <- SliderTable$mean.pfx_x.coors * SliderTable$count.coors
SLaverage.pfx_x.coors <- 12 * sum(SLaverage.pfx_x.coors)/sum(SliderTable$count.coors)
SLaverage.pfx_x.other <- SliderTable$mean.pfx_x.other * SliderTable$count.coors
SLaverage.pfx_x.other <- 12 * sum(SLaverage.pfx_x.other)/sum(SliderTable$count.coors)
SLdelta.pfx_x <- SliderTable$mean.pfx_x.coors - SliderTable$mean.pfx_x.other
SLdelta.pfx_x <- SLdelta.pfx_x * SliderTable$count.coors
SLdelta.pfx_x <- 12 * sum(SLdelta.pfx_x)/sum(SliderTable$count.coors)
SLfactor.pfx_x <- 100 * SLdelta.pfx_x / SLaverage.pfx_x.other
SLfactor.pfx_x <- round(SLfactor.pfx_x, digits = 1)
SLfactor.pfx_x <- paste(SLfactor.pfx_x, "%")

SLaverage.pfx_z.coors <- SliderTable$mean.pfx_z.coors * SliderTable$count.coors
SLaverage.pfx_z.coors <- 12 * sum(SLaverage.pfx_z.coors)/sum(SliderTable$count.coors)
SLaverage.pfx_z.other <- SliderTable$mean.pfx_z.other * SliderTable$count.coors
SLaverage.pfx_z.other <- 12 * sum(SLaverage.pfx_z.other)/sum(SliderTable$count.coors)
SLdelta.pfx_z <- SliderTable$mean.pfx_z.coors - SliderTable$mean.pfx_z.other
SLdelta.pfx_z <- SLdelta.pfx_z * SliderTable$count.coors
SLdelta.pfx_z <- 12 * sum(SLdelta.pfx_z)/sum(SliderTable$count.coors)
SLfactor.pfx_z <- 100 * SLdelta.pfx_z / SLaverage.pfx_z.other
SLfactor.pfx_z <- round(SLfactor.pfx_z, digits = 1)
SLfactor.pfx_z <- paste(SLfactor.pfx_z, "%")

SLaverage.disp.coors <- SliderTable$mean.displacement.coors * SliderTable$count.coors
SLaverage.disp.coors <- 12 * sum(SLaverage.disp.coors)/sum(SliderTable$count.coors)
SLaverage.disp.other <- SliderTable$mean.displacement.other * SliderTable$count.coors
SLaverage.disp.other <- 12 * sum(SLaverage.disp.other)/sum(SliderTable$count.coors)
SLdelta.disp <- SliderTable$mean.displacement.coors - SliderTable$mean.displacement.other
SLdelta.disp <- SLdelta.disp * SliderTable$count.coors
SLdelta.disp <- 12 * sum(SLdelta.disp)/sum(SliderTable$count.coors)
SLfactor.disp <- 100 * SLdelta.disp / SLaverage.disp.other
SLfactor.disp <- round(SLfactor.disp, digits = 1)
SLfactor.disp <- paste(SLfactor.disp, "%")

#TwoSeam Fastball
FTaverage.pfx_x.coors <- TwoSeamTable$mean.pfx_x.coors * TwoSeamTable$count.coors
FTaverage.pfx_x.coors <- 12 * sum(FTaverage.pfx_x.coors)/sum(TwoSeamTable$count.coors)
FTaverage.pfx_x.other <- TwoSeamTable$mean.pfx_x.other * TwoSeamTable$count.coors
FTaverage.pfx_x.other <- 12 * sum(FTaverage.pfx_x.other)/sum(TwoSeamTable$count.coors)
FTdelta.pfx_x <- TwoSeamTable$mean.pfx_x.coors - TwoSeamTable$mean.pfx_x.other
FTdelta.pfx_x <- FTdelta.pfx_x * TwoSeamTable$count.coors
FTdelta.pfx_x <- 12 * sum(FTdelta.pfx_x)/sum(TwoSeamTable$count.coors)
FTfactor.pfx_x <- 100 * FTdelta.pfx_x / FTaverage.pfx_x.other
FTfactor.pfx_x <- round(FTfactor.pfx_x, digits = 1)
FTfactor.pfx_x <- paste(FTfactor.pfx_x, "%")

FTaverage.pfx_z.coors <- TwoSeamTable$mean.pfx_z.coors * TwoSeamTable$count.coors
FTaverage.pfx_z.coors <- 12 * sum(FTaverage.pfx_z.coors)/sum(TwoSeamTable$count.coors)
FTaverage.pfx_z.other <- TwoSeamTable$mean.pfx_z.other * TwoSeamTable$count.coors
FTaverage.pfx_z.other <- 12 * sum(FTaverage.pfx_z.other)/sum(TwoSeamTable$count.coors)
FTdelta.pfx_z <- TwoSeamTable$mean.pfx_z.coors - TwoSeamTable$mean.pfx_z.other
FTdelta.pfx_z <- FTdelta.pfx_z * TwoSeamTable$count.coors
FTdelta.pfx_z <- 12 * sum(FTdelta.pfx_z)/sum(TwoSeamTable$count.coors)
FTfactor.pfx_z <- 100 * FTdelta.pfx_z / FTaverage.pfx_z.other
FTfactor.pfx_z <- round(FTfactor.pfx_z, digits = 1)
FTfactor.pfx_z <- paste(FTfactor.pfx_z, "%")

FTaverage.disp.coors <- TwoSeamTable$mean.displacement.coors * TwoSeamTable$count.coors
FTaverage.disp.coors <- 12 * sum(FTaverage.disp.coors)/sum(TwoSeamTable$count.coors)
FTaverage.disp.other <- TwoSeamTable$mean.displacement.other * TwoSeamTable$count.coors
FTaverage.disp.other <- 12 * sum(FTaverage.disp.other)/sum(TwoSeamTable$count.coors)
FTdelta.disp <- TwoSeamTable$mean.displacement.coors - TwoSeamTable$mean.displacement.other
FTdelta.disp <- FTdelta.disp * TwoSeamTable$count.coors
FTdelta.disp <- 12 * sum(FTdelta.disp)/sum(TwoSeamTable$count.coors)
FTfactor.disp <- 100 * FTdelta.disp / FTaverage.disp.other
FTfactor.disp <- round(FTfactor.disp, digits = 1)
FTfactor.disp <- paste(FTfactor.disp, "%")

#FourSeam Fastball
FFaverage.pfx_x.coors <- FourSeamTable$mean.pfx_x.coors * FourSeamTable$count.coors
FFaverage.pfx_x.coors <- 12 * sum(FFaverage.pfx_x.coors)/sum(FourSeamTable$count.coors)
FFaverage.pfx_x.other <- FourSeamTable$mean.pfx_x.other * FourSeamTable$count.coors
FFaverage.pfx_x.other <- 12 * sum(FFaverage.pfx_x.other)/sum(FourSeamTable$count.coors)
FFdelta.pfx_x <- FourSeamTable$mean.pfx_x.coors - FourSeamTable$mean.pfx_x.other
FFdelta.pfx_x <- FFdelta.pfx_x * FourSeamTable$count.coors
FFdelta.pfx_x <- 12 * sum(FFdelta.pfx_x)/sum(FourSeamTable$count.coors)
FFfactor.pfx_x <- 100 * FFdelta.pfx_x / FFaverage.pfx_x.other
FFfactor.pfx_x <- round(FFfactor.pfx_x, digits = 1)
FFfactor.pfx_x <- paste(FFfactor.pfx_x, "%")

FFaverage.pfx_z.coors <- FourSeamTable$mean.pfx_z.coors * FourSeamTable$count.coors
FFaverage.pfx_z.coors <- 12 * sum(FFaverage.pfx_z.coors)/sum(FourSeamTable$count.coors)
FFaverage.pfx_z.other <- FourSeamTable$mean.pfx_z.other * FourSeamTable$count.coors
FFaverage.pfx_z.other <- 12 * sum(FFaverage.pfx_z.other)/sum(FourSeamTable$count.coors)
FFdelta.pfx_z <- FourSeamTable$mean.pfx_z.coors - FourSeamTable$mean.pfx_z.other
FFdelta.pfx_z <- FFdelta.pfx_z * FourSeamTable$count.coors
FFdelta.pfx_z <- 12 * sum(FFdelta.pfx_z)/sum(FourSeamTable$count.coors)
FFfactor.pfx_z <- 100 * FFdelta.pfx_z / FFaverage.pfx_z.other
FFfactor.pfx_z <- round(FFfactor.pfx_z, digits = 1)
FFfactor.pfx_z <- paste(FFfactor.pfx_z, "%")

FFaverage.disp.coors <- FourSeamTable$mean.displacement.coors * FourSeamTable$count.coors
FFaverage.disp.coors <- 12 * sum(FFaverage.disp.coors)/sum(FourSeamTable$count.coors)
FFaverage.disp.other <- FourSeamTable$mean.displacement.other * FourSeamTable$count.coors
FFaverage.disp.other <- 12 * sum(FFaverage.disp.other)/sum(FourSeamTable$count.coors)
FFdelta.disp <- FourSeamTable$mean.displacement.coors - FourSeamTable$mean.displacement.other
FFdelta.disp <- FFdelta.disp * FourSeamTable$count.coors
FFdelta.disp <- 12 * sum(FFdelta.disp)/sum(FourSeamTable$count.coors)
FFfactor.disp <- 100 * FFdelta.disp / FFaverage.disp.other
FFfactor.disp <- round(FFfactor.disp, digits = 1)
FFfactor.disp <- paste(FFfactor.disp, "%")

#Changeup
CHaverage.pfx_x.coors <- ChangeupTable$mean.pfx_x.coors * ChangeupTable$count.coors
CHaverage.pfx_x.coors <- 12 * sum(CHaverage.pfx_x.coors)/sum(ChangeupTable$count.coors)
CHaverage.pfx_x.other <- ChangeupTable$mean.pfx_x.other * ChangeupTable$count.coors
CHaverage.pfx_x.other <- 12 * sum(CHaverage.pfx_x.other)/sum(ChangeupTable$count.coors)
CHdelta.pfx_x <- ChangeupTable$mean.pfx_x.coors - ChangeupTable$mean.pfx_x.other
CHdelta.pfx_x <- CHdelta.pfx_x * ChangeupTable$count.coors
CHdelta.pfx_x <- 12 * sum(CHdelta.pfx_x)/sum(ChangeupTable$count.coors)
CHfactor.pfx_x <- 100 * CHdelta.pfx_x / CHaverage.pfx_x.other
CHfactor.pfx_x <- round(CHfactor.pfx_x, digits = 1)
CHfactor.pfx_x <- paste(CHfactor.pfx_x, "%")

CHaverage.pfx_z.coors <- ChangeupTable$mean.pfx_z.coors * ChangeupTable$count.coors
CHaverage.pfx_z.coors <- 12 * sum(CHaverage.pfx_z.coors)/sum(ChangeupTable$count.coors)
CHaverage.pfx_z.other <- ChangeupTable$mean.pfx_z.other * ChangeupTable$count.coors
CHaverage.pfx_z.other <- 12 * sum(CHaverage.pfx_z.other)/sum(ChangeupTable$count.coors)
CHdelta.pfx_z <- ChangeupTable$mean.pfx_z.coors - ChangeupTable$mean.pfx_z.other
CHdelta.pfx_z <- CHdelta.pfx_z * ChangeupTable$count.coors
CHdelta.pfx_z <- 12 * sum(CHdelta.pfx_z)/sum(ChangeupTable$count.coors)
CHfactor.pfx_z <- 100 * CHdelta.pfx_z / CHaverage.pfx_z.other
CHfactor.pfx_z <- round(CHfactor.pfx_z, digits = 1)
CHfactor.pfx_z <- paste(CHfactor.pfx_z, "%")

CHaverage.disp.coors <- ChangeupTable$mean.displacement.coors * ChangeupTable$count.coors
CHaverage.disp.coors <- 12 * sum(CHaverage.disp.coors)/sum(ChangeupTable$count.coors)
CHaverage.disp.other <- ChangeupTable$mean.displacement.other * ChangeupTable$count.coors
CHaverage.disp.other <- 12 * sum(CHaverage.disp.other)/sum(ChangeupTable$count.coors)
CHdelta.disp <- ChangeupTable$mean.displacement.coors - ChangeupTable$mean.displacement.other
CHdelta.disp <- CHdelta.disp * ChangeupTable$count.coors
CHdelta.disp <- 12 * sum(CHdelta.disp)/sum(ChangeupTable$count.coors)
CHfactor.disp <- 100 * CHdelta.disp / CHaverage.disp.other
CHfactor.disp <- round(CHfactor.disp, digits = 1)
CHfactor.disp <- paste(CHfactor.disp, "%")

#Curveball
CUaverage.pfx_x.coors <- CurveballTable$mean.pfx_x.coors * CurveballTable$count.coors
CUaverage.pfx_x.coors <- 12 * sum(CUaverage.pfx_x.coors)/sum(CurveballTable$count.coors)
CUaverage.pfx_x.other <- CurveballTable$mean.pfx_x.other * CurveballTable$count.coors
CUaverage.pfx_x.other <- 12 * sum(CUaverage.pfx_x.other)/sum(CurveballTable$count.coors)
CUdelta.pfx_x <- CurveballTable$mean.pfx_x.coors - CurveballTable$mean.pfx_x.other
CUdelta.pfx_x <- CUdelta.pfx_x * CurveballTable$count.coors
CUdelta.pfx_x <- 12 * sum(CUdelta.pfx_x)/sum(CurveballTable$count.coors)
CUfactor.pfx_x <- 100 * CUdelta.pfx_x / CUaverage.pfx_x.other
CUfactor.pfx_x <- round(CUfactor.pfx_x, digits = 1)
CUfactor.pfx_x <- paste(CUfactor.pfx_x, "%")

CUaverage.pfx_z.coors <- CurveballTable$mean.pfx_z.coors * CurveballTable$count.coors
CUaverage.pfx_z.coors <- 12 * sum(CUaverage.pfx_z.coors)/sum(CurveballTable$count.coors)
CUaverage.pfx_z.other <- CurveballTable$mean.pfx_z.other * CurveballTable$count.coors
CUaverage.pfx_z.other <- 12 * sum(CUaverage.pfx_z.other)/sum(CurveballTable$count.coors)
CUdelta.pfx_z <- CurveballTable$mean.pfx_z.coors - CurveballTable$mean.pfx_z.other
CUdelta.pfx_z <- CUdelta.pfx_z * CurveballTable$count.coors
CUdelta.pfx_z <- 12 * sum(CUdelta.pfx_z)/sum(CurveballTable$count.coors)
CUfactor.pfx_z <- 100 * CUdelta.pfx_z / CUaverage.pfx_z.other
CUfactor.pfx_z <- round(CUfactor.pfx_z, digits = 1)
CUfactor.pfx_z <- paste(CUfactor.pfx_z, "%")

CUaverage.disp.coors <- CurveballTable$mean.displacement.coors * CurveballTable$count.coors
CUaverage.disp.coors <- 12 * sum(CUaverage.disp.coors)/sum(CurveballTable$count.coors)
CUaverage.disp.other <- CurveballTable$mean.displacement.other * CurveballTable$count.coors
CUaverage.disp.other <- 12 * sum(CUaverage.disp.other)/sum(CurveballTable$count.coors)
CUdelta.disp <- CurveballTable$mean.displacement.coors - CurveballTable$mean.displacement.other
CUdelta.disp <- CUdelta.disp * CurveballTable$count.coors
CUdelta.disp <- 12 * sum(CUdelta.disp)/sum(CurveballTable$count.coors)
CUfactor.disp <- 100 * CUdelta.disp / CUaverage.disp.other
CUfactor.disp <- round(CUfactor.disp, digits = 1)
CUfactor.disp <- paste(CUfactor.disp, "%")

#Cutter
FCaverage.pfx_x.coors <- CutterTable$mean.pfx_x.coors * CutterTable$count.coors
FCaverage.pfx_x.coors <- 12 * sum(FCaverage.pfx_x.coors)/sum(CutterTable$count.coors)
FCaverage.pfx_x.other <- CutterTable$mean.pfx_x.other * CutterTable$count.coors
FCaverage.pfx_x.other <- 12 * sum(FCaverage.pfx_x.other)/sum(CutterTable$count.coors)
FCdelta.pfx_x <- CutterTable$mean.pfx_x.coors - CutterTable$mean.pfx_x.other
FCdelta.pfx_x <- FCdelta.pfx_x * CutterTable$count.coors
FCdelta.pfx_x <- 12 * sum(FCdelta.pfx_x)/sum(CutterTable$count.coors)
FCfactor.pfx_x <- 100 * FCdelta.pfx_x / FCaverage.pfx_x.other
FCfactor.pfx_x <- round(FCfactor.pfx_x, digits = 1)
FCfactor.pfx_x <- paste(FCfactor.pfx_x, "%")

FCaverage.pfx_z.coors <- CutterTable$mean.pfx_z.coors * CutterTable$count.coors
FCaverage.pfx_z.coors <- 12 * sum(FCaverage.pfx_z.coors)/sum(CutterTable$count.coors)
FCaverage.pfx_z.other <- CutterTable$mean.pfx_z.other * CutterTable$count.coors
FCaverage.pfx_z.other <- 12 * sum(FCaverage.pfx_z.other)/sum(CutterTable$count.coors)
FCdelta.pfx_z <- CutterTable$mean.pfx_z.coors - CutterTable$mean.pfx_z.other
FCdelta.pfx_z <- FCdelta.pfx_z * CutterTable$count.coors
FCdelta.pfx_z <- 12 * sum(FCdelta.pfx_z)/sum(CutterTable$count.coors)
FCfactor.pfx_z <- 100 * FCdelta.pfx_z / FCaverage.pfx_z.other
FCfactor.pfx_z <- round(FCfactor.pfx_z, digits = 1)
FCfactor.pfx_z <- paste(FCfactor.pfx_z, "%")

FCaverage.disp.coors <- CutterTable$mean.displacement.coors * CutterTable$count.coors
FCaverage.disp.coors <- 12 * sum(FCaverage.disp.coors)/sum(CutterTable$count.coors)
FCaverage.disp.other <- CutterTable$mean.displacement.other * CutterTable$count.coors
FCaverage.disp.other <- 12 * sum(FCaverage.disp.other)/sum(CutterTable$count.coors)
FCdelta.disp <- CutterTable$mean.displacement.coors - CutterTable$mean.displacement.other
FCdelta.disp <- FCdelta.disp * CutterTable$count.coors
FCdelta.disp <- 12 * sum(FCdelta.disp)/sum(CutterTable$count.coors)
FCfactor.disp <- 100 * FCdelta.disp / FCaverage.disp.other
FCfactor.disp <- round(FCfactor.disp, digits = 1)
FCfactor.disp <- paste(FCfactor.disp, "%")

#Sinker
SIaverage.pfx_x.coors <- SinkerTable$mean.pfx_x.coors * SinkerTable$count.coors
SIaverage.pfx_x.coors <- 12 * sum(SIaverage.pfx_x.coors)/sum(SinkerTable$count.coors)
SIaverage.pfx_x.other <- SinkerTable$mean.pfx_x.other * SinkerTable$count.coors
SIaverage.pfx_x.other <- 12 * sum(SIaverage.pfx_x.other)/sum(SinkerTable$count.coors)
SIdelta.pfx_x <- SinkerTable$mean.pfx_x.coors - SinkerTable$mean.pfx_x.other
SIdelta.pfx_x <- SIdelta.pfx_x * SinkerTable$count.coors
SIdelta.pfx_x <- 12 * sum(SIdelta.pfx_x)/sum(SinkerTable$count.coors)
SIfactor.pfx_x <- 100 * SIdelta.pfx_x / SIaverage.pfx_x.other
SIfactor.pfx_x <- round(SIfactor.pfx_x, digits = 1)
SIfactor.pfx_x <- paste(SIfactor.pfx_x, "%")

SIaverage.pfx_z.coors <- SinkerTable$mean.pfx_z.coors * SinkerTable$count.coors
SIaverage.pfx_z.coors <- 12 * sum(SIaverage.pfx_z.coors)/sum(SinkerTable$count.coors)
SIaverage.pfx_z.other <- SinkerTable$mean.pfx_z.other * SinkerTable$count.coors
SIaverage.pfx_z.other <- 12 * sum(SIaverage.pfx_z.other)/sum(SinkerTable$count.coors)
SIdelta.pfx_z <- SinkerTable$mean.pfx_z.coors - SinkerTable$mean.pfx_z.other
SIdelta.pfx_z <- SIdelta.pfx_z * SinkerTable$count.coors
SIdelta.pfx_z <- 12 * sum(SIdelta.pfx_z)/sum(SinkerTable$count.coors)
SIfactor.pfx_z <- 100 * SIdelta.pfx_z / SIaverage.pfx_z.other
SIfactor.pfx_z <- round(SIfactor.pfx_z, digits = 1)
SIfactor.pfx_z <- paste(SIfactor.pfx_z, "%")

SIaverage.disp.coors <- SinkerTable$mean.displacement.coors * SinkerTable$count.coors
SIaverage.disp.coors <- 12 * sum(SIaverage.disp.coors)/sum(SinkerTable$count.coors)
SIaverage.disp.other <- SinkerTable$mean.displacement.other * SinkerTable$count.coors
SIaverage.disp.other <- 12 * sum(SIaverage.disp.other)/sum(SinkerTable$count.coors)
SIdelta.disp <- SinkerTable$mean.displacement.coors - SinkerTable$mean.displacement.other
SIdelta.disp <- SIdelta.disp * SinkerTable$count.coors
SIdelta.disp <- 12 * sum(SIdelta.disp)/sum(SinkerTable$count.coors)
SIfactor.disp <- 100 * SIdelta.disp / SIaverage.disp.other
SIfactor.disp <- round(SIfactor.disp, digits = 1)
SIfactor.disp <- paste(SIfactor.disp, "%")

#Summary Table
FF <- c(length(FourSeamTable$pitcher.hand), sum(FourSeamTable$count.coors), sum(FourSeamTable$count.other), FFaverage.pfx_x.coors, FFaverage.pfx_x.other, FFaverage.pfx_z.coors, FFaverage.pfx_z.other, FFaverage.disp.coors, FFaverage.disp.other, FFdelta.pfx_x, FFdelta.pfx_z, FFdelta.disp, FFfactor.pfx_x, FFfactor.pfx_z, FFfactor.disp)
FT <- c(length(TwoSeamTable$pitcher.hand), sum(TwoSeamTable$count.coors), sum(TwoSeamTable$count.other), FTaverage.pfx_x.coors, FTaverage.pfx_x.other, FTaverage.pfx_z.coors, FTaverage.pfx_z.other, FTaverage.disp.coors, FTaverage.disp.other, FTdelta.pfx_x, FTdelta.pfx_z, FTdelta.disp, FTfactor.pfx_x, FTfactor.pfx_z, FTfactor.disp)
FC <- c(length(CutterTable$pitcher.hand), sum(CutterTable$count.coors), sum(CutterTable$count.other), FCaverage.pfx_x.coors, FCaverage.pfx_x.other, FCaverage.pfx_z.coors, FCaverage.pfx_z.other, FCaverage.disp.coors, FCaverage.disp.other, FCdelta.pfx_x, FCdelta.pfx_z, FCdelta.disp, FCfactor.pfx_x, FCfactor.pfx_z, FCfactor.disp)
SI <- c(length(SinkerTable$pitcher.hand), sum(SinkerTable$count.coors), sum(SinkerTable$count.other), SIaverage.pfx_x.coors, SIaverage.pfx_x.other, SIaverage.pfx_z.coors, SIaverage.pfx_z.other, SIaverage.disp.coors, SIaverage.disp.other, SIdelta.pfx_x, SIdelta.pfx_z, SIdelta.disp, SIfactor.pfx_x, SIfactor.pfx_z, SIfactor.disp)
CH <- c(length(ChangeupTable$pitcher.hand), sum(ChangeupTable$count.coors), sum(ChangeupTable$count.other), CHaverage.pfx_x.coors, CHaverage.pfx_x.other, CHaverage.pfx_z.coors, CHaverage.pfx_z.other, CHaverage.disp.coors, CHaverage.disp.other, CHdelta.pfx_x, CHdelta.pfx_z, CHdelta.disp, CHfactor.pfx_x, CHfactor.pfx_z, CHfactor.disp)
CU <- c(length(CurveballTable$pitcher.hand), sum(CurveballTable$count.coors), sum(CurveballTable$count.other), CUaverage.pfx_x.coors, CUaverage.pfx_x.other, CUaverage.pfx_z.coors, CUaverage.pfx_z.other, CUaverage.disp.coors, CUaverage.disp.other, CUdelta.pfx_x, CUdelta.pfx_z, CUdelta.disp, CUfactor.pfx_x, CUfactor.pfx_z, CUfactor.disp)
SL <- c(length(SliderTable$pitcher.hand), sum(SliderTable$count.coors), sum(SliderTable$count.other), SLaverage.pfx_x.coors, SLaverage.pfx_x.other, SLaverage.pfx_z.coors, SLaverage.pfx_z.other, SLaverage.disp.coors, SLaverage.disp.other, SLdelta.pfx_x, SLdelta.pfx_z, SLdelta.disp, SLfactor.pfx_x, SLfactor.pfx_z, SLfactor.disp)

MovementSummary <- cbind.data.frame(FF, FT, FC, SI, CH, CU, SL)
movementrows <- c("Pitchers", "Count Coors", "Count Other", "Average x Coors", "Average x Other", "Average z Coors", "Average z Other", "Average disp Coors", "Average disp Other", "Delta x", "Delta z", "Delta disp", "Factor x", "Factor z", "Factor disp")
row.names(MovementSummary) <- movementrows

write.csv(MovementSummary, file = "2novmovement.csv")

Fourseamplot <- plot_ly(x = c(-10, 10), y = c(12, 12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(-10, 10), y = c(-12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(-10, -10), y = c(12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(10, 10), y = c(12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = FFaverage.pfx_x.coors, y = FFaverage.pfx_z.coors, marker = list(size = 22, color = 'purple'), type = 'scatter', mode = 'markers')%>%
                          add_trace(x = FFaverage.pfx_x.other, y = FFaverage.pfx_z.other, marker = list(size = 22, color = 'black'))%>%
                          layout(showlegend = FALSE, xaxis = list(range = c(-17, 17)), yaxis = list(range = c(-20, 20), scaleanchor = "x"))

Twoseamplot <- plot_ly(x = c(-10, 10), y = c(12, 12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(-10, 10), y = c(-12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(-10, -10), y = c(12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(10, 10), y = c(12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = FTaverage.pfx_x.coors, y = FTaverage.pfx_z.coors, marker = list(size = 22, color = 'purple'), type = 'scatter', mode = 'markers')%>%
                          add_trace(x = FTaverage.pfx_x.other, y = FTaverage.pfx_z.other, marker = list(size = 22, color = 'black'))%>%
                          layout(showlegend = FALSE, xaxis = list(range = c(-17, 17)), yaxis = list(range = c(-20, 20), scaleanchor = "x"))

Cutterplot <- plot_ly(x = c(-10, 10), y = c(12, 12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(-10, 10), y = c(-12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(-10, -10), y = c(12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(10, 10), y = c(12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = FCaverage.pfx_x.coors, y = FCaverage.pfx_z.coors, marker = list(size = 22, color = 'purple'), type = 'scatter', mode = 'markers')%>%
                          add_trace(x = FCaverage.pfx_x.other, y = FCaverage.pfx_z.other, marker = list(size = 22, color = 'black'))%>%
                          layout(showlegend = FALSE, xaxis = list(range = c(-17, 17)), yaxis = list(range = c(-20, 20), scaleanchor = "x"))

Sinkerplot <- plot_ly(x = c(-10, 10), y = c(12, 12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(-10, 10), y = c(-12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(-10, -10), y = c(12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(10, 10), y = c(12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = SIaverage.pfx_x.coors, y = SIaverage.pfx_z.coors, marker = list(size = 22, color = 'purple'), type = 'scatter', mode = 'markers')%>%
                          add_trace(x = SIaverage.pfx_x.other, y = SIaverage.pfx_z.other, marker = list(size = 22, color = 'black'))%>%
                          layout(showlegend = FALSE, xaxis = list(range = c(-17, 17)), yaxis = list(range = c(-20, 20), scaleanchor = "x"))

Changeupplot <- plot_ly(x = c(-10, 10), y = c(12, 12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(-10, 10), y = c(-12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(-10, -10), y = c(12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(10, 10), y = c(12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = CHaverage.pfx_x.coors, y = CHaverage.pfx_z.coors, marker = list(size = 22, color = 'purple'), type = 'scatter', mode = 'markers')%>%
                          add_trace(x = CHaverage.pfx_x.other, y = CHaverage.pfx_z.other, marker = list(size = 22, color = 'black'))%>%
                          layout(showlegend = FALSE, xaxis = list(range = c(-17, 17)), yaxis = list(range = c(-20, 20), scaleanchor = "x"))

Curveplot <- plot_ly(x = c(-10, 10), y = c(12, 12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(-10, 10), y = c(-12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(-10, -10), y = c(12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(10, 10), y = c(12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = CUaverage.pfx_x.coors, y = CUaverage.pfx_z.coors, marker = list(size = 22, color = 'purple'), type = 'scatter', mode = 'markers')%>%
                          add_trace(x = CUaverage.pfx_x.other, y = CUaverage.pfx_z.other, marker = list(size = 22, color = 'black'))%>%
                          layout(showlegend = FALSE, xaxis = list(range = c(-17, 17)), yaxis = list(range = c(-20, 20), scaleanchor = "x"))

Sliderplot <- plot_ly(x = c(-10, 10), y = c(12, 12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(-10, 10), y = c(-12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(-10, -10), y = c(12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(10, 10), y = c(12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = SLaverage.pfx_x.coors, y = SLaverage.pfx_z.coors, marker = list(size = 22, color = 'purple'), type = 'scatter', mode = 'markers')%>%
                          add_trace(x = SLaverage.pfx_x.other, y = SLaverage.pfx_z.other, marker = list(size = 22, color = 'black'))%>%
                          layout(showlegend = FALSE, xaxis = list(range = c(-17, 17)), yaxis = list(range = c(-20, 20), scaleanchor = "x"))

Ottavino2018 <- plot_ly( )%>%
                          add_trace(x = c(-10, 10), y = c(12, 12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(-10, 10), y = c(-12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(-10, -10), y = c(12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(10, 10), y = c(12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(5.306339, -11.2048, 14.06368), y = c(5.202488, 5.916311, -0.60224), type = 'scatter', mode = 'markers', marker = list(size = 22, color = 'purple'))%>%
                          add_trace(x = c(6.874708, -13.9553, 17.83088), y = c(7.655243, 6.985276, 1.151815), type = 'scatter', mode = 'markers', marker = list(size = 22, color = 'black'))%>%
                          layout(showlegend = FALSE, xaxis = list(range = c(-16, 20)), yaxis = list(range = c(-20, 20), scaleanchor = "x"))

Ottavino2017 <- plot_ly( )%>%
                          add_trace(x = c(-10, 10), y = c(12, 12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(-10, 10), y = c(-12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(-10, -10), y = c(12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(10, 10), y = c(12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(-5.09985, -10.2982, 16.0356), y = c(12.28932, 7.740158, -0.74996), type = 'scatter', mode = 'markers', marker = list(size = 22, color = 'purple'))%>%
                          add_trace(x = c(-7.96684, -15.6644, 17.30765), y = c(15.37069, 7.434073, -0.33792), type = 'scatter', mode = 'markers', marker = list(size = 22, color = 'black'))%>%
                          layout(showlegend = FALSE, xaxis = list(range = c(-18, 19)), yaxis = list(range = c(-20, 20), scaleanchor = "x"))

Freeland2017 <- plot_ly( )%>%
                          add_trace(x = c(-10, 10), y = c(12, 12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(-10, 10), y = c(-12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(-10, -10), y = c(12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(10, 10), y = c(12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(8.869984, -4.31142, 8.647098, 12.69663, -0.80356), y = c(8.606988, 1.76838, 12.84251, 8.004996, 6.776452), type = 'scatter', mode = 'markers', marker = list(size = 22, color = 'purple'))%>%
                          add_trace(x = c(11.05314, -6.06546, 7.863189, 13.77485, -3.01979), y = c(8.686627, 1.33591, 13.83768, 7.041306, 7.065573), type = 'scatter', mode = 'markers', marker = list(size = 22, color = 'black'))%>%
                          layout(showlegend = FALSE, xaxis = list(range = c(-18, 19)), yaxis = list(range = c(-20, 20), scaleanchor = "x"))

Freeland2018 <- plot_ly( )%>%
                          add_trace(x = c(-10, 10), y = c(12, 12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(-10, 10), y = c(-12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(-10, -10), y = c(12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(10, 10), y = c(12, -12), type = 'scatter', mode = 'lines', line = list(color = 'black'))%>%
                          add_trace(x = c(9.894329, -1.42637, 5.998387, 11.25338, -2.32574), y = c(4.815643, 0.3627, 10.07633, 5.813127, 3.81188), type = 'scatter', mode = 'markers', marker = list(size = 22, color = 'purple'))%>%
                          add_trace(x = c(12.45953, -3.15175, 6.960695, 14.04474, -3.25662), y = c(4.90561, 0.024198, 12.04855, 5.828251, 4.924004), type = 'scatter', mode = 'markers', marker = list(size = 22, color = 'black'))%>%
                          layout(showlegend = FALSE, xaxis = list(range = c(-18, 19)), yaxis = list(range = c(-20, 20), scaleanchor = "x"))
