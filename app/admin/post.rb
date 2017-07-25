ActiveAdmin.register Post do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  permit_params :title, :body

  controller do

    def index
      @CHAR_LENGTH = 400  # CONSTANT CHAR LENGTH TO DISPLAY PER POST
      @posts = Post.order('created_at DESC').per_page_kaminari(permitted_params[:page]).per(10)
    end

    def create

    end
    def update

    end
  end
end
