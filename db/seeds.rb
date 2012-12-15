# encoding: UTF-8

if Rails.env.production?
  unless AdminUser.find_by_email("admin@that-girl.com").present?
    AdminUser.create!(:email => 'admin@that-girl.com', :password => 'thatgirl-superpass', :password_confirmation => 'thatgirl-superpass')
  end
else
  unless AdminUser.find_by_email("admin@example.com").present?
    AdminUser.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')
  end
end

@banho      = Category.create!({ title: "banho",       position: 1 })
@acessorios = Category.create!({ title: "acessórios",  position: 2 })


[  {
      image: File.open(File.join(Rails.root, "db/seeds_files/caneta_removedora_de_manchas.png")),
      title: "caneta removedora de manchas",
      category_id: @acessorios.id,
      price: "19,00",
      active: true,
      alternative_price: nil,
      availability: true
    },
    {
      image: File.open(File.join(Rails.root, "db/seeds_files/fashion_tape_frente.png")),
      title: "fashion tape frente",
      category_id: @acessorios.id,
      price: "22,90",
      active: true,
      alternative_price: "2 x R$ 11,45",
      availability: true
    },
    {
      image: File.open(File.join(Rails.root, "db/seeds_files/protetor_de_axilas.png")),
      title: "protetor de axilas",
      category_id: @acessorios.id,
      price: "19,00",
      active: true,
      alternative_price: nil,
      availability: false
    },
    {
      image: File.open(File.join(Rails.root, "db/seeds_files/sabonete_liquido_del_isi_osa.png")),
      title: "sabonete líquido del-isi-osa",
      category_id: @banho.id,
      price: "45,00",
      active: true,
      alternative_price: "3 x R$ 15,00",
      availability: true
    },
    {
      image: File.open(File.join(Rails.root, "db/seeds_files/sabonete_liquido_garota_marota.png")),
      title: "sabonete líquido garota marota",
      category_id: @banho.id,
      price: "45,00",
      active: true,
      alternative_price: "3 x R$ 15,00",
      availability: true
    },
    {
      image: File.open(File.join(Rails.root, "db/seeds_files/sabonete_liquido_sim_sou_limpinha.png")),
      title: "sabonete líquido, sim sou limpinha",
      category_id: @banho.id,
      price: "45,00",
      active: true,
      alternative_price: "3 x R$ 15,00",
      availability: true
    },
    {
      image: File.open(File.join(Rails.root, "db/seeds_files/that_girl_silicone.png")),
      title: "that girl silicone",
      category_id: @acessorios.id,
      price: "19,00",
      active: true,
      alternative_price: nil,
      availability: true
    },
    {
      image: File.open(File.join(Rails.root, "db/seeds_files/that_girl_sutia_clip.png")),
      title: "that girl sutiã clip",
      category_id: @acessorios.id,
      price: "19,00",
      active: true,
      alternative_price: nil,
      availability: true
    } 
].each do |product|
  Product.create!(product)
end


