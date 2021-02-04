class MemosController < ApplicationController
  def index
    @data = Memo.all
  end
end
