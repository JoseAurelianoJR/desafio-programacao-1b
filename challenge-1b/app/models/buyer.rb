class Buyer < ActiveRecord::Base
  monetize :price_centavos, :total_centavos

  before_create :set_total

  scope :total_balance, -> { sum('total_centavos') }

  def parse_file!(file)
    File.open(file.path, 'r').each_line.to_a[1..-1].each do |line|
      data = line.split(/\t/)
      Buyer.transaction do
        Buyer.create(name: data[0], description: data[1],
                     price_centavos: data[2].to_i, quantity: data[3].to_i,
                     address: data[4], provider: data[5])
      end
    end
  end

  private
    def set_total
      self.total_centavos = price_centavos * quantity
    end

    def price_format(price)
      aux = price.to_s.split(".")
      aux.count > 1 ? aux[1].to_i : 0
    end
end
