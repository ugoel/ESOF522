final_rank<-c(1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0,3.0)

core<-c(1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,2.0,1.0,1.0,2.0,1.0,3.0,2.0,1.0,1.0,2.0,1.0,1.0,1.0,2.0,2.0,1.0,2.0,2.0,2.0,2.0,2.0,3.0,2.0)

survey<-c(1.0,1.0,1.0,1.0,1.0,1.0,3.0,1.0,1.0,2.0,1.0,1.0,1.0,2.0,1.0,1.0,1.0,3.0,2.0,3.0,3.0,2.0,3.0,2.0,3.0,3.0,2.0,3.0,3.0,2.0,3.0,3.0,3.0,3.0,3.0)

par(mar=c(2.6, 3.1, 0.3, 0.3))
boxplot(final_rank - final_rank, final_rank - core, final_rank - survey, at=c(1, 2, 3), outline=FALSE, xaxt='n')
axis(side=1, at=c(1, 2, 3), labels=c("Oracle", "Core", "Community opinion"), mgp = c(3, 0.5, 0))
mtext(side = 1, text = "Conference Ranking Database", line = 1.5)
mtext(side = 2, text = "Ranking Difference (Oracle - Database)", line = 2)