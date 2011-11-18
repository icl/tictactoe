require 'csv'
class Exporter

  def self.dump_csv
    csv_string = CSV.generate do |csv|
      csv << Move.first.attributes.keys + ['inter_move_interval','condition']
      Move.all.each do |move|
        csv << move.expanded_data
      end
    end
  end

end
