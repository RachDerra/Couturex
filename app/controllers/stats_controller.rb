class StatsController < ApplicationController
  
  def index
    #@montant_total = Order.select(:montant_total).order("created_at").group("created_at").first(7)
    #@montant_semaine = Order.select(:montant_total).group("created_at, montant_total, orders.id").order("created_at").first(7)
    #@montant_mois = Order.select(:montant_total).group("created_at, montant_total, orders.id").order("created_at").first(30)
    @data_keys = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
    ]
    @data_values = [0, 10, 5, 2, 20, 30, 45]
    end

  
end
