
require "action_view"
# == Schema Information
#
# Table name: cats
#
#  id          :integer          not null, primary key
#  birth_date  :date             not null
#  color       :string
#  name        :string           not null
#  sex         :string(1)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Cat < ApplicationRecord

    include ActionView::Helpers::DateHelper

    validates :color, inclusion: { in: %w(black gold orange white yellow) }
    validates :sex, inclusion: { in: %w(m f) }


    def age
        time_ago_in_words(birth_date)
    end

end
