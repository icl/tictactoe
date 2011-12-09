require 'csv'
class Exporter

  def self.dump_csv
    csv_string = CSV.generate do |csv|
      csv << Move.first.attributes.keys + ['subject_initials','inter_move_interval', 'inter_success_interval','condition', 'dimension']
      Move.all.each do |move|
        csv << move.expanded_data
      end
    end
  end

end
