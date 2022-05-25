
class HomeController < ApplicationController

    def index
        @title = 'Homee'
        @nama = ['kenny', 'leri', 'robert']
        # render plain: 'Hallo! Selamat datang...'
    end
end