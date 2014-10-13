class PasteController < ApplicationController

  def new
    @paste = Paste.create
    redirect_to "/#{@paste.token}"
  end
  def edit
    @paste = Paste.where(token: params[:token])
  end
  def update
    @paste = Paste.where(token: params[:token])
    @paste.content = params[:content]
  end

  private

    def paste_params
      params.require(:paste).permit(:content)
    end

end
