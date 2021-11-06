class Test < ApplicationRecord
  def self.all_tests(categories)
    category = Category.where(title: categories)
    id_category = category.select(:id)
    id_categories = History.where(categories_id: id_category)
    id_test = id_categories.select(:tests_id)
    id_tests = Test.where(id: id_test)
    pp id_tests.order('id DESC')
  end
end
