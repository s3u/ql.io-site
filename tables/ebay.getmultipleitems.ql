create table details
  on select get from "htttp://open.api.ebay.com/shopping?callname=GetMultipleItems&ItemID={itemId}&responseencoding={format}&appid={^apikey}&version=713&IncludeSelector=ShippingCosts"
     using defaults format = "JSON", apikey = "{config.eBay.apikey}"
     resultset 'Item';