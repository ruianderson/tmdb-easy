require 'spec_helper'

describe TmdbEasy::Base do
  let(:base) {TmdbEasy::Base}

  it 'should allow setting and getting of api_key' do
    base.api_key = 'ihih7ye7y7398y3498493jhehj3'
    base.api_key.should == 'ihih7ye7y7398y3498493jhehj3'
  end

  it 'must return base api url' do
    base.base_api_url.should == 'http://api.themoviedb.org/3/'
  end
end
