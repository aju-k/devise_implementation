class Recipe < ActiveRecord::Base

  class << self

    def add_recipe(params)
      create(name: params[:name], description: params[:description], user_id: ADMIN_DEFAULT,
             type: params[:type] )
    end

  end

end
