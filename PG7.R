# Creating the data frame
itemCode <- c(1001:1005)#, 1002, 1003, 1004, 1005)
itemCategory <- c("Electronics", "Desktop Supplies", "Office Supplies", "USB", 
"CD Drive")
itemPrice <- c(700, 300, 350, 400, 800)
# Creating the data frame using the above vectors
items_df <- data.frame(itemCode, itemCategory, itemPrice)
# Displaying the created data frame
print("Data Frame with Items Information:")
print(items_df)
# Summary statistics of itemPrice
print(summary(items_df$itemPrice))
# Filtering items with price greater than 350
high_priced_items <- subset(items_df, itemPrice > 350)
print("Items with Price greater than 400:")
print(high_priced_items)
# Subset the data frame for items with category as "Office Supplies" or "Desktop 
Supplies"
filtered_items <- subset(items_df, itemCategory %in% c("Office Supplies", 
"Desktop Supplies"))
# Display the subsetted data frame
print("Items with 'Office Supplies' or 'Desktop Supplies' category:")
print(filtered_items)
# Creating the 'item-details' data frame
itemCode <- c(1001, 1002, 1003, 1004, 1005)
ItemQtyonHand <- c(20, 15, 30, 10, 25)
ItemReorderLvl <- c(5, 10, 8, 3, 7)
# Creating the data frame using the above vectors
item_details <- data.frame(itemCode, ItemQtyonHand, ItemReorderLvl)
# Displaying the created data frame
print("Data Frame 'item-details':")
print(item_details)
# Merging the two data frames based on 'itemCode'
merged_data <- merge(items_df, item_details, by = "itemCode")
# Displaying the merged data frame
print("Merged Data Frame:")
print(merged_data)
