require 'spec_helper'

RSpec.describe PostsController, type: :request do
  let(:post) { Post.create!(title: 'test') }

  it 'fetches posts' do
    post
    get(posts_path)

    expect(response).to have_http_status(:ok)
  end
end
