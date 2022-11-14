class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10)
    @letters.shuffle!
  end

  def score
    @grid = params[:grid]
    @answer = params[:word]
    @answer.chars do |letter|
      if @grid.include? letter.upcase
        @result = 'Congratulations!'
      else
        @result = "Sorry, but #{@answer} can't be built out of (#{@grid})"
      end
    end
  end
end
