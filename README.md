# bc-beer

### Quick Rails demo
Import a CSV of the BC Liquor product list with:
(Note: this may take some time)
```
rake db:reset
rake csv:import_price_list
```

### Notes:
It turns out that although there are 3 fields for product categories, they are all "BEER" for IPAs, which is less than useful
