class Incident < ApplicationRecord
  validates :description, presence: true
  has_many_attached :attachments
  serialize :user_details, JSON

  TYPES = %w(Alcohol Assault Bullying Hazing Drugs Graffiti Injury Suspicious_activity Trespassing Vandalism Weapons_violation Technology_misuse Other).freeze

  attribute :name, :string
  attribute :email, :string
  attribute :role, :string

  before_create :check_anonymity

  private

  def check_anonymity
    unless self.reported_anonymously.present?
      self.user_info = {name: self.name, email: self.email, role: self.role}
    end
  end
end
