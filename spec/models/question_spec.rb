require 'spec_helper'

describe Question do

  it { should belong_to(:user) }

  it { should have_many(:answers) }
  it { should have_many(:votes) } 

  it { should validate_presence_of(:title) }
  it { should validate_uniqueness_of(:title) }
  it { should validate_presence_of(:description) }

end
