require 'csv'

namespace :csv do
  desc "Import CSV Data"
  csv_file = 'db/BC_Liquor_Store_Product_Price_List.csv'
  task :import_price_list => :environment do
    CSV.foreach(csv_file, :headers => true, :header_converters => lambda { |h| h.try(:downcase) }) do |row|
      Product.create!(row.to_hash)
    end
  end
end