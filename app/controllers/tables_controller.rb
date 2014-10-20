class TablesController < ApplicationController
  include TablesHelper
  before_action :set_table, only: [:show, :destroy]

  # GET /tables
  # GET /tables.json
  def index
    @tables = Table.all
  end

  # GET /tables/1
  # GET /tables/1.json
  def show
  end

  # GET /tables/new
  def new
    @tables = Table.all
    if @tables[0] == nil
      generate_base_table
      redirect_to tables_path, notice: 'Table data successfully created!'
    else
      redirect_to tables_path, notice: 'Table data already exists!'
    end
  end

  def edit_multiple
    @tables = Table.all
  end

  # POST /tables
  # POST /tables.json
  def create
    @table = Table.new(table_params)

    respond_to do |format|
      if @table.save
        format.html { redirect_to @table, notice: 'Table was successfully created.' }
        format.json { render action: 'show', status: :created, location: @table }
      else
        format.html { render action: 'new' }
        format.json { render json: @table.errors, status: :unprocessable_entity }
      end
    end
  end

  def update_multiple
    params["table"].keys.each do |id|
      @table = Table.find(id.to_i)
      @table.update_attributes(table_params(id))
    end
    redirect_to tables_path, notice: 'Table was successfully updated.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table
      @table = Table.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def table_params(id)
      params.require(:table).fetch(id).permit(:team_id, :played, :won, :drawn, :lost, :for, :against, :deducted)
    end
end
