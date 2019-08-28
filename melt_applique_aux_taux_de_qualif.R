library(data.table)

#set working directory
setwd('/Users/mrotival/Desktop/')

Table_qualif=fread('qualif.csv')

View(Table_qualif)
# -> affichage excel-like

#retirer la première ligne vide
Table_qualif=Table_qualif[-1,]

var.names=colnames(Table_qualif)
colnames(Table_qualif)=make.names(var.names)

subtable_qualif=melt(dt,
id.vars = c("Section.du.CNU"),
measure.vars = patterns("^MCexamines", "^MCqualifies"), variable.name = "Annee",
value.name = c("MCexamines", "MCqualifies"))