require 'rails_helper'

RSpec.describe Article, :type => :model do
  let(:article) { Article.new( title: 'My post' ) }
  subject { article }

  it 'has a minimum requirement' do
    expect(article).to be_instance_of(Article)
  end
end
