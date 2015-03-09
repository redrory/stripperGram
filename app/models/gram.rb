# == Schema Information
#
# Table name: grams
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  photo      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Gram < ActiveRecord::Base

end
