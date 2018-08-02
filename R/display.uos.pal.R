display.uos.pal <- function(){

  
uos_pal <- uos_pal()

df <- data.frame(Row = c(rep(4,3),rep(3:1,each=4)),Col=c(1:3, rep(1:4,3)),Colour=uos_pal,Name=names(uos_pal))

library(ggplot2)
  ggplot(df, aes(x=Col,y=Row,label=Name)) + geom_tile(aes(fill=Name)) + geom_text(col="white") + scale_fill_manual(values=uos_pal[sort(names(uos_pal))]) +  xlab("") + ylab("") +theme(axis.title.x=element_blank(),axis.text.x=element_blank(),axis.ticks.x=element_blank(), axis.title.y=element_blank(),axis.text.y=element_blank(),axis.ticks.y=element_blank(), panel.background = element_blank(),legend.position = "none")

}
