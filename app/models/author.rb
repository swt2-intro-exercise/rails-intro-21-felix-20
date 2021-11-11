class Author < ApplicationRecord

    def initialize(params)
        @first_name = params[:first_name]
        @last_name = params[:last_name]
        @homepage = params[:homepage]
    end

    def first_name
        @first_name
    end

    def last_name
        @last_name
    end

    def homepage
        @homepage
    end

    def name()
        first_name + " " + last_name
    end
end
