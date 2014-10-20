class TablesController < ApplicationController
  include TablesHelper
  before_action :set_table, only: [:show, :destroy]

  # GET /tables
  # GET /tables.json
  def index
    @tables = get_table_sorted
  end

  # GET /tables/new
  def new
    if Table.first == nil
      generate_base_table
      redirect_to tables_path, notice: 'Table data successfully created!'
    else
      redirect_to tables_path, notice: 'Table data already exists!'
    end
  end

  def edit_multiple
    @tables = get_table_sorted
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

  # DELETE /tables/all
  def destroy_multiple
    wipe_base_table
    respond_to do |format|
      format.html { redirect_to tables_url, notice: 'Table data has been cleared.' }
      format.json { head :no_content }
    end
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

    def get_table_sorted
      @tables = Table.all
      @tables = @tables.sort_by { |x| [x.points, x.goal_difference, x.for] }
      @tables = @tables.reverse
    end
end
