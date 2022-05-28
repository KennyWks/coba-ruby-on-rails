class BooksController < ApplicationController

    # method get
    def index
    end

    # method get
    def show
    end

    # method get
    def new
        @title = 'Tambah Buku Baru'
        @book = Book.new
    end

    # method pos
    def create
        # render plain: params.inspect # debug in ruby
        book = Book.new(resorces_params)
        book.save
        render plain: 'Data berhasil disimpan'
    end

    def resorces_params
        params.require(:book).permit(:title, :page, :description)
    end
    private :resorces_params 

    # method get
    def edit
    end

    # method put/patch
    def update
    end

    # method delete
    def destroy
    end
end