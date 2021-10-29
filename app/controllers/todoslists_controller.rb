class TodoslistsController < ApplicationController
  before_action :set_todoslist, only: %i[ show edit update destroy ]

  # GET /todoslists or /todoslists.json
  def index
    @todoslists = Todoslist.all
  end

  # GET /todoslists/1 or /todoslists/1.json
  def show
  end

  # GET /todoslists/new
  def new
    @todoslist = Todoslist.new
  end

  # GET /todoslists/1/edit
  def edit
  end

  # POST /todoslists or /todoslists.json
  def create
    @todoslist = Todoslist.new(todoslist_params)

    respond_to do |format|
      if @todoslist.save
        format.html { redirect_to @todoslist, notice: "Todoslist was successfully created." }
        format.json { render :show, status: :created, location: @todoslist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @todoslist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todoslists/1 or /todoslists/1.json
  def update
    respond_to do |format|
      if @todoslist.update(todoslist_params)
        format.html { redirect_to @todoslist, notice: "Todoslist was successfully updated." }
        format.json { render :show, status: :ok, location: @todoslist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @todoslist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todoslists/1 or /todoslists/1.json
  def destroy
    @todoslist.destroy
    respond_to do |format|
      format.html { redirect_to todoslists_url, notice: "Todoslist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todoslist
      @todoslist = Todoslist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def todoslist_params
      params.require(:todoslist).permit(:title, :description)
    end
end
