#######################################################################################################
#######################################################################################################
#                                           from help file
#######################################################################################################
#######################################################################################################
opar <- par(no.readonly = TRUE)

data(liver.toxicity)

# implement IPCA on a microarray dataset
sipca.res <- sipca(liver.toxicity$gene, ncomp = 3, mode="deflation", keepX=c(50,50,50))
sipca.res

# samples representation
plotIndiv(sipca.res, ind.names = liver.toxicity$treatment[, 4],
group = as.numeric(as.factor(liver.toxicity$treatment[, 4])))
    plotIndiv(sipca.res, cex = 1.5,
    col = as.numeric(as.factor(liver.toxicity$treatment[, 4])),style="3d")
# variables representation
plotVar(sipca.res, cex = 2.5)
    plotVar(sipca.res, rad.in = 0.5,cex = 2.5,style="3d")


#######################################################################################################
#######################################################################################################
#                                           additional tests
#######################################################################################################
#######################################################################################################

if(additional.test==TRUE)
{
    
    
}
par(opar)
