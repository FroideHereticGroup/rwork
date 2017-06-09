ActiveAdmin.register Book do
  permit_params :title, :content, :image

  index do
    selectable_column
    id_column
    column :title, :sortable => true
    column :image, :sortable => true do |image|
      image_tag image.image_url(:thumb)
    end
    column :content, :sortable => true
    column :updated_at
    actions
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Book Details" do
      f.input :title
      f.input :image
      f.input :content
    end
    f.actions
  end

  show do |item|
    attributes_table do
      row :id
      row :title
      row :image, option: {width: '75', height: '75'}, :sortable => true do |image|
        image_tag image.image_url(:thumb)
      end
      row :content
      row :created_at
      row :updated_at
    end
  end

  sidebar "Book Details", only: :show do
    attributes_table_for book do
      row :title
      row :image, option: {width: '75', height: '75'}
      row :content
      row :created_at
      row :updated_at
    end
  end
end
