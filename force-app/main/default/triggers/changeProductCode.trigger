trigger changeProductCode on Product2 (before insert) {
    List<Product2> productList = trigger.new; 
    for(Product2 pro: productList){
        if(pro.productCode != null && pro.ProductCode != ''){
            pro.ProductCode = 'XYZ- ' + pro.ProductCode;
        }
    }

}