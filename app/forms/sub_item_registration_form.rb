class SubItemRegistrationForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :subname, :string
  attribute :item_id, :integer
  attribute :user_id, :integer
  attribute :inventory, :integer
  attribute :unit

  def params
    attributes.deep_symbolize_keys
  end
end