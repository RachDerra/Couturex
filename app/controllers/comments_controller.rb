class CommentsController < ApplicationController
  before_action :set_comment, only: %i[ show edit update destroy ]
  before_action :set_order, only: [:create, :edit, :update]

  # GET /comments or /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1 or /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
    @comment = @order.comments.find(params[:id])
    respond_to do |format|
      flash.now[:notice] = 'Modification du commentaire'
      format.js { render :edit }
    end
  end

  # POST /comments or /comments.json
  def create
    
    
    @comment = @order.comments.build(comment_params)
    # @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.js { render :index }
        #format.html { redirect_to comment_url(@comment), notice: "Comment was successfully created." }
        #format.json { render :show, status: :created, location: @comment }
      else
        format.html { redirect_to order_path(@order), notice: 'Impossible de publier ...' }
        #format.html { render :new, status: :unprocessable_entity }
        #format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    @comment = @order.comments.find(params[:id])
    respond_to do |format|
      if @comment.update(comment_params)
        flash.now[:notice] = 'Commentaire modifié'
        format.js { render :index }
        #format.html { redirect_to order_path(@order), notice: "Comment was successfully updated." }
        #format.json { render :show, status: :ok, location: @comment }
      else
        flash.now[:notice] = 'Échec de la modification du commentaire'
        format.js { render :edit }
        #format.html { render :edit, status: :unprocessable_entity }
        #format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      flash.now[:notice] = 'Commentaire supprimé'
      format.js { render :index }
      #format.html { redirect_to comments_url, notice: "Comment was successfully destroyed." }
      #format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:content, :client_id, :order_id)
    end

    def set_order
      @order = Order.find(params[:order_id])
    end
end
