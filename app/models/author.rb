class Author < ApplicationRecord

    attr_accessor :first_name, :last_name, :homepage
    # def initialize(params)
    #     @first_name = params[:first_name]
    #     @last_name = params[:last_name]
    #     if params.has_key?(:homepage)
    #         @homepage = params[:homepage]
    #     else
    #         @homepage = ""
    #     end
    # end

    # def first_name
    #     @first_name
    # end

    # def last_name
    #     @last_name
    # end

    # def homepage
    #     @homepage
    # end

    def name()
        @first_name + " " + @last_name
    end
end