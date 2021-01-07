class Busca 
  include RSpec::Matchers
  include Capybara::DSL

  def initialize
    @busca = 'search'
    @produto = 'Zing Jump Rope'
    @btn_search = 'Search'
    @bloco_lista_produtos = ".products.list.items.product-items"
    @produto_um = ".item.product.product-item"
  end  

  def search_product
    fill_in @busca, with: @produto
    click_on @btn_search
    within(@bloco_lista_produtos) do
    find(@produto_um).click
    end
  end
end