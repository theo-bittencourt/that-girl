# encoding: UTF-8

ActiveAdmin.register Category do
  
  before_filter { @skip_sidebar = true }
  
  index do
    column :title
    column "Produtos" do |c|
      c.products.each do |p|
        img src: p.image.url(:index), height: "100px", width: "auto", title: p.title
      end
    end
    column :active do |c|
      para link_to '', toggle_active_admin_category_path(id: c.id), class: (c.active? ? 'true' : 'false')
    end
  end
  
  form do |c|
    c.inputs "" do
      c.input :title
      c.input :active, hint: "Marque esta opção para habilidar o produto na página de produtos."
    end
  end
  
  # This action is called by javascript when you drag and drop a column
  # It iterates through the collection and sets the new position based on the
  # order that jQuery submitted them
  collection_action :sort, :method => :post do
    params[:category].each_with_index do |id, index|
      Category.update_all(['position=?', index+1], ['id=?', id])
    end
    render :nothing => true
  end
  
  member_action :toggle_active do
    category = Category.find(params[:id])
    category.toggle_active!
    redirect_to :back
  end
  
  
end
