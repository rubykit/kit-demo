class KitDemo::Main::Components::Pages::Landing::HomeBlocks::HeroComponent < KitDemo::Main::Components::BaseComponent

  def photo_url
    asset_url('kit_demo/main/stock/pexels-christina-morillo-1181244.jpg')
  end

  def action_url
    CONFIG_KIT_DEMO_MAIN[:urls][:kit_demo][:github]
  end

end
