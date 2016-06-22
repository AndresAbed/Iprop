class Appraisal < ActiveRecord::Base
  validates :neighborhood, :min_price, :max_price, presence: {message: "Requerido"}
  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |appraisal|
        csv << appraisal.attributes.values_at(*column_names)
      end
    end
  end
end
