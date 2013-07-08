require_relative '../spec_helper'

describe 'ProtectedConstructor' do

  it 'should throw a NoMethodError exception if attempting to instantiate Klass without using the KlassFactory' do
   lambda { klass = Klass.new(1) }.should raise_error NoMethodError
  end

  it 'should create a Klass object when using the factory' do
    klass = KlassFactory::create(0)
    klass.nil?.should == false
    klass.is_a?(Klass).should == true
  end

  it 'should create a Klass object when using the factory and pass constructor parameters' do
    klass = KlassFactory::create(99)
    klass.nil?.should == false
    klass.is_a?(Klass).should == true
    klass.id.should == 99
  end

end