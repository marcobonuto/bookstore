class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy] 

  # GET /people
  # GET /people.json
  def index
    @people = Person.all
  end

  # GET /people/1
  # GET /people/1.json
  def show
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people
  # POST /people.json
  def create
    @person = Person.new(person_params) # existe o método person_params que indica quais parametros são

    respond_to do |format| # de acordo com o formato, ele tem uma ação diferente
      if @person.save # se eu conseguir salvar
        format.html { redirect_to @person, notice: 'Person was successfully created.' } # se for html faz isso
        format.json { render :show, status: :created, location: @person } # se for json faz isso
      else
        format.html { render :new } # se nao for salvo, renderiza o new.
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/1
  # PATCH/PUT /people/1.json
  def update # é igual a action create
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Person was successfully updated.' }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url, notice: 'Person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params # Filtra somente os atributos que eu quero, medida de segurança, exemplo do 'mester'
      params.require(:person).permit(:name, :email, :password, :born_at, :admin)
    end
end