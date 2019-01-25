require 'kramdown'

class EditorController < ApplicationController
  def index
    @text = params['text']

    if @text.present?
      @html = @text.gsub(/・(.+)/){ "<li>" + $1 + "</li>" }
    else
      @html = ''
    end
  end
end
