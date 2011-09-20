class User

  def self.login params
    `/usr/bin/dscl /Local/Default auth "#{params[:username]}" "#{params[:password]}"`
     $? == 0
  end
end

if Rails.env == 'test'
  class User
    def self.login params
      true
    end
  end
end
