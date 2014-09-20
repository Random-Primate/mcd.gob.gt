# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  text       :text
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Article, :type => :model do
  let(:article) { Article.new( title: 'My post' ) }
  subject { article }

  it 'is an instance' do
    expect(article).to be_instance_of(Article)
  end
end
