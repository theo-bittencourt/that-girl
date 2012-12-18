# encoding: UTF-8

ActiveAdmin.register Product do
  
  filter :title
  filter :availability
  filter :active
  
  
  # essa definição dinâmica de escopos demanda a verificação das tabelas.
  products_exists = ActiveRecord::Base.connection.table_exists? 'products'
  categories_exists = ActiveRecord::Base.connection.table_exists? 'categories'
  if products_exists and categories_exists
    Product.pluck(:category_id).uniq.each do |cat_id|
      scope Category.find(cat_id).title.capitalize do
        Product.where(category_id: cat_id)
      end
    end
  end
  
  index do
    column :image do |p|
      img src: p.image.url(:index), height: "100px", width: "auto"
    end
    column :title do |p|
      para link_to(p.title, edit_admin_product_path(p))
    end
    column :price, sortable: :price do |p|
      para number_to_currency(p.price)
    end
    column :alternative_price
    column :active do |p|
      para link_to '', toggle_active_admin_product_path(id: p.id), class: (p.active? ? 'true' : 'false')
    end
    column :availability do |p|
      para link_to '', toggle_availability_admin_product_path(id: p.id), class: (p.availability? ? 'true' : 'false')
    end
    column :category_id, sortable: :category_id do |p|
      p.category.title
    end
  end
  
  
  form :html => { :multipart => true } do |p|
    p.inputs do
      p.input :category
      p.input :title
      p.input :price, hint: "Apenas números separados por ponto. Ex. 32.99"
      p.input :alternative_price, hint: "Ex.:  3 x R$ 11,90"
      p.input :availability, hint: "Caso esta opção não seja marcada, o aviso 'Produto Esgotado' será mostrado."
      p.input :active, hint: "Marque esta opção para habilidar o produto na página de produtos."
      p.input :link, hint: "Ex.: http://www.thatgirl.com.br/acessorios/nao-de-bobeira"
      p.input :image, hint: (image_tag(p.object.image_url(:index), height: 150, width: 'auto') if p.object.image.present?)
    end
      
    p.buttons
  end
  
  
  
  # This action is called by javascript when you drag and drop a column
  # It iterates through the collection and sets the new position based on the
  # order that jQuery submitted them
  collection_action :sort, :method => :post do
    params[:product].each_with_index do |id, index|
      Product.update_all(['position=?', index+1], ['id=?', id])
    end
    render :nothing => true
  end
  
  
  member_action :toggle_active do
    product = Product.find(params[:id])
    product.toggle_active!
    redirect_to :back
  end
  
  member_action :toggle_availability do
    product = Product.find(params[:id])
    product.toggle_availability!
    redirect_to :back
  end
  
  controller do
    def create
      create! { |success,failure|
        success.html do
          redirect_to admin_products_path
        end
      }
    end
    def update
      update! { |success,failure|
        success.html do
          redirect_to admin_products_path
        end
      }
    end
  end
  
end
