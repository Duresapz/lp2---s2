class Burger < ApplicationRecord
    def nutriments
        @product=Openfoodfacts::Product.get(self.code, locale: 'fr')
        if @product == nil
            @json = {"" => ""}
        else
            @json = @product.nutriments.to_hash
        end
        return @json
    end
end
