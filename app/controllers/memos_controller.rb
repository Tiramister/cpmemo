class MemosController < ApplicationController
  def index
    @data = Memo.all
  end

  def create
    if request.post?
      Memo.create(memo_params)
    end
    redirect_to '/memos'
  end

  def add
    @memo = Memo.new
  end

  private
  def memo_params
    params.require(:memo).permit(:name, :url, :memo)
  end
end
