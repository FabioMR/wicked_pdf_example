class ArticlesController < ApplicationController

  def index
    @articles = 10.times.map do |index|
      OpenStruct.new(title: "Article #{index.next}")
    end

    respond_to do |format|
      format.html
      format.pdf { render :pdf => "articles-list-report", header: {center: "COMPANY NAME"}, footer: { center: "[page] of [topage]" } }
    end
  end

end
