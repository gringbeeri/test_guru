class User < ApplicationRecord
  def passing_tests(level)
    Test.find_by_sql("
      SELECT tests.*
      FROM passings
      INNER JOIN tests
        ON tests.id = passings.test_id
      INNER JOIN users
        ON users.id = passings.user_id
      WHERE users.id = #{id}
        AND tests.level = #{level};
    ")
  end
end
