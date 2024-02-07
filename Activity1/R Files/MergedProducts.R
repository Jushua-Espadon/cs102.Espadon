
product1 <- read.csv("/cloud/project/Activity1/CSV Files/Product1.csv")
product2 <- read.csv("/cloud/project/Activity1/CSV Files/Product2.csv")
product3 <- read.csv("/cloud/project/Activity1/CSV Files/Product3.csv")

merged_products <- rbind(product1, product2, product3)

write.csv(merged_products, "MergedProducts.csv", row.names = FALSE)
