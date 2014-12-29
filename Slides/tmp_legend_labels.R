Figure 11.9

# method 1
labels_fixed <- as.list(expression(paste(
    "Share of inheritance in  total average resources", " ",
    "as a function of year of birth ", "(", "bequests, gifts,", " ",
    "labor income flows capitalized at age 50", ")", " ",
    "(", "2010-2100: g = 1.7% and r = 3.0%", ")"))) 

# method 2
# doesn't seem to work inside a ggplot legend label
plot.new()  # test
labels_fixed <- list(bquote("Share of inheritance in total average resources"), bquote("as a function of year of birth (bequests, gifts,"), bquote("labor income flows capitalized at age 50)"), bquote("2010-2100: g = 1.7% and r = 3.0%"))
mtext(do.call(expression, labels_fixed), side = 3, adj = 0, line = 3:0)

# method 3
# will this work inside a ggplot legend label? I don't think so...
labels_fixed <- 
cat(strwrap("Share of inheritance in total average resources as a function of year of birth (bequests, gifts, and labor income flows capitalized at age 50) 2010-2100: g = 1.7% and r = 3.0%"), sep = "\n")

