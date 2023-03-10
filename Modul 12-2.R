df_quina = read.delim("clipboard")
df_quina$brick_dummy <- ifelse(df_quina$Brick == "Yes", 1,0)
df_quina$N_dummy1 <- ifelse(df_quina$Neighborhood == "west", 1,0)
df_quina$N_dummy2 <- ifelse(df_quina$Neighborhood == "North", 1,0)
model = lm(df_quina$Price ~ df_quina$SqFt + df_quina$Bedrooms + df_quina$Bathrooms + df_quina$brick_dummy + df_quina$N_dummy1 + df_quina$N_dummy2)
summary(model)
by(df_quina$Price, df_quina$Neighborhood, mean)
by(df_quina$Price, df_quina$Brick, mean)
