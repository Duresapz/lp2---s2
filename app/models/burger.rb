class Burger < ApplicationRecord
    def nutriments
        require 'openfoodfacts'
        @product=openfoodfacts::Product.get(self.code, locale: 'fr')
        if @product == nil
            @json = {"No Data"=> "No code"}
        else
            @json = @product.nutriments
        end
        return @json
    end
end
