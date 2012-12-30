class User < ActiveRecord::Base
set_table_name "ArbuckleUserList"
  attr_accessible :UserName, :e_mail, :first_name, :just_sent, :last_name
end
