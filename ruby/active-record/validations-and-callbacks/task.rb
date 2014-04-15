class Task < ActiveRecord::Base
  # Implement validations
  validates :name, :presence => true, :length => { :maximum => 50 }

  # Write a callback
	before_save :downcase_name

private

  def downcase_name
    self.name = self.name.downcase
  end
end

# Additional validations (from Code School 'Twitter for Zombies' exercise):

validates_numerality_of :finger
# makes sure something is a number, aka:
validates :finger, numerality: true

validates_uniqueness_of :toothmarks
# makes sure something is unique, aka:
validates :toothmarks, uniqueness: true

validates_confirmation_of :password
# makes sure two fields are equal, aka:
validates :password confirmation: true

validates_acceptance_of :zombification
# use if there is a checkbox they need to check (read terms of service), aka:
validates :zombification, acceptance: true

validates_length_of :password, minimum: 3
# makes sure what they entered is >= 3 characters, aka:
validates :password, length: { minimum: 0, maximum: 20 }

validates_format_of :email, with: /regex/i
# want to specify a reg expression, aka:
validates :email, format: { with: /.*/ }

validates_inclusion_of :age, in: 21..99
# use if a field, like age, is between two validates_uniqueness_of

validates_exclusion_of :age, in: 0...21, message: "Sorry, you must be over 21"
# makes sure what they entered is not included in values listed
