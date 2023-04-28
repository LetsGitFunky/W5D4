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
class ShortenedUrl < ApplicationRecord
    validates :long_url, presence: true, uniqueness: true
    # long_url, presence: true, uniqueness: true

    belongs_to :user,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User

end
