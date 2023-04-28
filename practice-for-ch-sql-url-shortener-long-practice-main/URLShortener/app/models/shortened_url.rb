# == Schema Information
#
# Table name: shortened_urls
#
#  id         :bigint           not null, primary key
#  long_url   :string
#  short_url  :string
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'securerandom'

class ShortenedUrl < ApplicationRecord
    validates :long_url, presence: true, uniqueness: true
    # long_url, presence: true, uniqueness: true

    belongs_to :user,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User

    # include SecureRandom

    def self.random_code
        possible_url = SecureRandom.urlsafe_base64
        until !ShortenedURL.exists(short_url: possible_url)
            possible_url = SecureRandom.urlsafe_base64
end
