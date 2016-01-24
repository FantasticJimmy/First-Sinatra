class Message < ActiveRecord::Base

  validates :content, presence: true, length: {maximum: 140}
  validates :author, presence: true, length:{maximum: 25}
  validates :url, format: { with: URI.regexp }, if: Proc.new { |a| a.url.present? }

end