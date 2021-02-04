class MemosController < ApplicationController
  def index
    @data = Memo.all
  end

  def show
    @memo = Memo.find(params[:id])
  end

  def add
    @memo = Memo.new
  end

  def create
    obj = Memo.create(memo_params)
    redirect_to '/memos/' + obj.id.to_s
  end

  def edit
    @memo = Memo.find(params[:id])
  end

  def update
    obj = Memo.find(params[:id])
    obj.update(memo_params)
    redirect_to '/memos/' + obj.id.to_s
  end

  def delete
    obj = Memo.find(params[:id])
    obj.destroy
    redirect_to '/memos/'
  end

  private
  def memo_params
    params.require(:memo).permit(:name, :url, :memo)
  end
end
