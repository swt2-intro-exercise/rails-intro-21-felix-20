class AuthorsController < ApplicationController
    def new
    end

    def create
      @author = Author.new(author_params)
      @author.save
      puts @author
      redirect_to @author
      puts @author
    end

    def index
      Author.all
    end

    def show
      @author = Author.find(params[:id])
    end

    private
      def author_params
        params.require(:author).permit(:first_name, :last_name, :homepage)
      end
  end
  