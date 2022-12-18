df_quina=read.delim("clipboard")
head(df_quina)
model_reg=lm(df_quina$Y~df_quina$X)
summary(model_reg)
