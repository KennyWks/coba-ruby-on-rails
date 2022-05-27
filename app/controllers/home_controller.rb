
class HomeController < ApplicationController
    # layout 'main'

    def index
        @title = 'Homee'
        @nama = ['kenny', 'leri', 'robert']
        @books = Book.all
        # render plain: 'Hallo! Selamat datang...'
        render layout: 'main'
    end

    def param
        book_id = params['book_id']
        book = Book.find_by book_id: book_id

        if book
           @title = book.title    
        else
            @title = 'Tidak Ditemukan'
        end
    end

end
