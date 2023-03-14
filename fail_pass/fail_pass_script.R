library(ggplot2)

results <- read.table("fail_pass_ratio.txt" , sep = "\t" , header = T)


ggplot(results, aes(fill=Model.Type, y=Pass.Fail.Ratio, x=Data.Set , label = round(Pass.Fail.Ratio , digits = 3))) + geom_bar(position="dodge", stat="identity")+ geom_bar(stat = "identity") + theme_bw() + geom_text(size = 3 , position = position_dodge(width = 1) , vjust = 5)


ggplot(results, aes(fill=Model.Type, y=Pass.Fail.Ratio, x=Data.Set, label = round(Pass.Fail.Ratio , digits = 3))) + geom_bar(stat = "identity") + 
  theme_bw() +geom_text(size = 5, position = position_stack(vjust = 0.5)) + scale_fill_tron()

