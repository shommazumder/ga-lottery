## Make QQ plots for continuous name variables. 

if(patient.descriptive){ 
# QQ plot for surname frequency
pdf(paste0(data.directory,"qq-freq.pdf"), width=11, height=8.5)
qqplot(lot05$surname.freq[lot05$treat==1],lot05$surname.freq[lot05$treat==0],xlim=c(50,350),ylim=c(50,350),ylab="",xlab="",main="Surname frequency")
abline(0,1,col="red")
abline(v=0)
abline(h=0)
dev.off()  

# QQ plot for surname length
pdf(paste0(data.directory,"qq-length.pdf"), width=11, height=8.5)
qqplot(lot05$surname.length[lot05$treat==1],lot05$surname.length[lot05$treat==0],xlim=c(1,15),ylim=c(1,15),ylab="",xlab="",main="Surname length")
abline(0,1,col="red")
abline(v=0)
abline(h=0)
dev.off()  
}