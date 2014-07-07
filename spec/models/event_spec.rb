require 'spec_helper'

describe Event do
  
  it {should respond_to :date}
  it {should respond_to :title}
  it {should respond_to :description}
end