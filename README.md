# XML
XML
1) //class/type
2) //flower_production/sale/seller/text()
3) /flower_class_list/class[5]
4) /flower_class_list/class/type/ancestor::*
5) /flower_class_list/flower_production/sale[2]following::sale
6) //flower_production/sale[@sale_id = 's1']/seller
7) sum(/flower_class_list/flower_production/sale/sale_price)
8) count(//flower_production/sale)
9) //flower_production/sale[sale_price > 50]/@sale_id
10) //flower_production/sale[contains(@flower_id,f4)]/seller
