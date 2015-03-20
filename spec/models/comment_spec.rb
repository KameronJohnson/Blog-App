require 'rails_helper'

describe Comment do
  it { should validate_presence_of :comment_text }
  it { should belong_to :post }
end
