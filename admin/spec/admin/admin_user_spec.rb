require 'rails_helper'

RSpec.describe Admin::AdminUsersController, type: :controller do
  render_views

  let(:user) { FactoryGirl.create(:user) }
  before do
    login_user user
  end

  describe 'GET index' do
    before { get :index }

    it 'ステータス確認' do
      expect(response.status).to eq 200
    end
    it '表示確認' do
      expect(response.body).to include('<h2 id="page_title">Admin Users</h2>')
    end
  end

  describe 'GET show' do
    before do
      get :show, params: { id: user.id }
    end

    it 'データが参照できる' do
      expect(response.body).to include '<h3>Admin User の詳細</h3>'
    end
  end
end
