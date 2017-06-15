FactoryGirl.define do
  factory :book, class: Book do
    id '11111'
    title 'mybook'
    content 'bookcontent'
    image Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/cat.jpg'))
    created_at '2016-01-01T00:00:00Z'
    updated_at '2016-01-02T00:00:00Z'
  end
end
