class ProductController < ApplicationController
  def index
    @ipas=Product.where(:product_minor_class_name => 'BEER').order(:current_display_price).select { |p| p.product_long_name.upcase.include?('IPA') && p.product_alcohol_percent >= 6} 
    ipa_sum = 0
    @ipas.each do |p|
      ipa_sum = p[:current_display_price] + ipa_sum
    end
    @ipa_avg_price = ipa_sum / @ipas.size.to_f
    @stout_porter=Product.where(:product_minor_class_name => 'BEER').order(:current_display_price).select { |p| p.product_long_name.upcase.include?('PORTER') || p.product_long_name.upcase.include?('STOUT')}
  end
end
