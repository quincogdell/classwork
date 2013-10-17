class SpellsController < ApplicationController

  def index
    @spells = Spell.all
  end

  def new
    @spell = Spell.new
  end

  def create
    Spell.create(params[:spell])
    redirect_to '/spells'
  end


end
