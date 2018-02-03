require "rails_helper"

RSpec.describe 'Static Pages Requests', type: :request do
  it 'has a successful request to root' do
    get root_url
    expect(response.status).to eq 200
  end

  it 'has a successful request and renders help template' do
    get '/static_pages/help'
    expect(response.status).to eq 200
    expect(response).to render_template :help
  end

  it 'has a successful request and renders home template' do
    get '/static_pages/home'
    expect(response.status).to eq 200
    expect(response).to render_template :home
  end

  it 'has a successful request and render about template' do
    get '/static_pages/about'
    expect(response.status).to eq 200
    expect(response).to render_template :about
  end

  it 'has a successful request and renders contact us template' do
    get '/static_pages/contact'
    expect(response.status).to eq 200
    expect(response).to render_template :contact
  end

end
