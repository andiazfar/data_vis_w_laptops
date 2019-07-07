setwd('C:\\programming_portfolio\\python')

# Right now, we can't use python libraries, so maybe mainly we will use
#from sklearn.tree import DecisionTreeRegressor

#laptop_data <- read.csv(file="laptops.csv", stringsAsFactors = FALSE)
laptop_data <- read.csv(file="laptops.csv")
head(laptop_data)
# ,header=TRUE, sep=","
# Maybe practice with different path, for Windows

print("Let's find some interesting things about the data!")
max_price <- max(laptop_data$Price_euros)

print("The most expensive laptop has a price of: ")
print(max_price)

print("The details about the laptops are: ")
max_detail <- subset(laptop_data, Price_euros == max(Price_euros))
print(max_detail)

print("Interesting! Let's see what other things that this company sells.")
razer_prod <- subset(laptop_data, Company == "Razer")
print(razer_prod)

print("Most of these are too expensive for me though. Let's get the ones that's under 3000 Euros.")
razer_prod_under_3k <- subset(laptop_data, Company == "Razer" & Price_euros<3000)
print (razer_prod_under_3k)

print("Cool. Let's see some graphs. Let's get a breakdown of each company.")
# Don't use the PNG option, it will create complications on showing the plots in the editor.
company_table <- table(laptop_data$Company)
barplot(company_table)


#barplot(,xlab="Company", ylab="Number of products", col="blue",main="Number_of_laptop_products_by_company.png", border="red")
