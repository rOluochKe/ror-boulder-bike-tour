require 'roo'
namespace :import do
  desc 'Import data from spreadsheet'
  task rider_data: :environment do
    puts 'Importing Data'
    data = Roo::Spreadsheet.open('lib/rider_data.xlsx') # open spreadsheet
    headers = data.row(1) # get header row
    data.each_with_index do |row, idx|
      next if idx.zero? # skip header row

      # create hash from headers and cells
      riders_data = Hash[[headers, row].transpose]
      # next if user exists
      # if Rider.exists?(first_name: riders_data['first_name'])
      #   puts "Rider with first name #{riders_data['first_name']} already exists"
      #   next
      # end

      rider = Rider.new(riders_data)
      puts "Saving rider with first name '#{rider.first_name}'"
      rider.save!
    end
  end
end
