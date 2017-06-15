require 'rails_helper'

RSpec.describe Admin::BooksController, type: :controller do
  render_views

  let(:user) { FactoryGirl.create(:user) }
  before do
    login_user user
    FactoryGirl.create(:book)
  end

  describe 'GET index' do
    before { get :index }

    it 'ステータスの確認' do
      expect(response.status).to eq 200
    end
    it '表示確認' do
      expect(response.body).to include '<h2 id="page_title">Books</h2>'
    end
  end

  describe 'POST create' do
    let(:title) { 'たのしいRuby' }
    let(:content) { 'この本は第五版です。' }
    let(:image_path) { File.join(Rails.root, 'spec/fixtures/ruby.jpg') }
    let(:image) { Rack::Test::UploadedFile.new(image_path) }
    before do
      post :create, params: {
        book: {
          title: title, content: content, image: image
        }
      }
    end

    it 'ステータス確認' do
      expect(response.status).to eq 302
    end
    it '登録したデータが一覧に表示されていること' do
      get :index
      expect(response.body).to include '<td class="col col-title">たのしいRuby</td>'
      expect(response.body).to include '<td class="col col-content">この本は第五版です。</td>'
    end

    context '登録した値に関して' do
      let(:book) { Book.where('title = ?', title) }
      
      it 'DBに登録した件数と一致すること' do
        expect(book.count).to eq 1
        expect(book[0].title).to eq title
      end
    end
  end

  describe 'GET new' do
    before { get :new }

    it 'ステータスの確認' do
      expect(response.status).to eq 200
    end
    it '新規登録画面が表示できていること' do
      expect(response.body).to include '<title>Book を作成する | Admin</title>'
    end
  end

  describe 'GET edit' do
    before do
      get :edit, params: { id: '11111' }
    end

    it '編集するデータが取得できる' do
      expect(response.body).to include '<h2 id="page_title">Book を編集する</h2>'
      expect(response.body).to include '<a href="/admin/books/11111">mybook</a>'
    end
  end

  describe 'GET show' do
    before do
      get :show, params: { id: '11111' }
    end

    it '参照したタイトルが取得できる' do
      expect(response.body).to include '<h2 id="page_title">mybook</h2>'
    end
  end

  describe 'PUT update' do
    before do
      post :update, params: {
        book: {
          id: '11111',
          title: 'パーフェクトRuby',
          content: '詳しくなってます',
          image: 'perfectruby.jpg',
          updated_at: '2016-05-02T00:00:00Z'
        },
        controller: 'books',
        action: 'update',
        id: '11111',
        key: '11111'
      }
    end

    it 'ステータス確認' do
      expect(response.status).to eq 302
    end
    it '更新した値が一覧に表示されていること' do
      get :index
      expect(response.body).to include 'パーフェクトRuby'
    end
  end

  describe 'DELETE destroy' do
    before do
      delete :destroy, params: { id: '11111' }
    end

    it '削除したデータが取得されないこと' do
      expect(response.body).to_not include 'mybook'
    end
  end
end
