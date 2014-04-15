require 'spec_helper'

# Create a one-to-many association between your models (on the "one" side)
describe List do
  it { should have_many :tasks }
end
