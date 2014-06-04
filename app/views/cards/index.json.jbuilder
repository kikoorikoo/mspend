json.array!(@cards) do |card|
  json.extract! card, :id, :manufacturer, :last4, :date, :purchase_date, :load_date, :amount, :bonus, :card_to, :store_purchased, :fee, :portal, :notes, :card_from
  json.url card_url(card, format: :json)
end
