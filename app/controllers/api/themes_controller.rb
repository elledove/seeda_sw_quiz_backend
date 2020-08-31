class Api::ThemesController < ApplicationController
    def index
        themes = Theme.all 
        render themes.ThemeSerializer.new(themes)

    end
end
