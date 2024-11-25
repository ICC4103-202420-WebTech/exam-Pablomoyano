class ComplimentsController < ApplicationController
    before_action :authenticate_user!, except: [:show]

    def index 
        @compliments = Compliment.all
    end
    def show
        @compliment = Compliment.order("RANDOM()").first
    end
    def create
        @compliment = current_user.compliments.build(compliment_params)
        if @compliment.save
          redirect_to compliments_path, notice: 'Compliment was successfully created.'
        else
          render :new
        end
      end
    def new
        @compliment = Compliment.new
    end
    def edit
        @compliment = Compliment.find(params[:id])
      end
    def update
        @compliment = Compliment.find(params[:id])
        if @compliment.update(compliment_params)
          redirect_to compliments_path, notice: 'Compliment was successfully updated.'
        else
          render :edit
        end
      end
      private

      def compliment_params
        params.require(:compliment).permit(:content)
      end
end
