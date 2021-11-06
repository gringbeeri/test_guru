class User < ApplicationRecord
  def search_test(level)
    id_user = Account.where(users_id: self.id)
    id_test = id_user.select(:tests_id)
    pp Test.where(id: id_test, level: level)
  end
end
