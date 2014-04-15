require 'spec_helper'

# Create a one-to-many association between your models (on the "many" side)
describe Task do
  it { should belong_to :list }
end
