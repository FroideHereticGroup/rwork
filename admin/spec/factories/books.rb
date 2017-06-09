FactoryGirl.define do
  factory :book, class: Book do
    id '11111'
    title 'MyString'
    content 'MyText'
    image 'book.jpg'
    createdId 'book_test'
    createdAt '2016-01-01T00:00:00Z'
    updatedId 'book_test'
    updatedAt '2016-01-02T00:00:00Z'
  end
end
