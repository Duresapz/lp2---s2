class Burger < ApplicationRecord
    def nutriments
        require 'openfoodfacts'
        product=openfoodfacts::Product.get(self.code, locale: 'fr')
        if product == nil
            product = [["No Data"], [""]]
        else
            product = product.nutriments
        end
        return product
    end
end
