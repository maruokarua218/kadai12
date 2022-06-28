class ApartmentsController < ApplicationController
  before_action :set_apartment, only: [:show, :edit, :update, :destroy]

  def index
    @apartments = Apartment.all
  end

  def new
    @apartment = Apartment.new
    2.times { @apartment.stations.build }
  end

  def create
    @apartment = Apartment.new(apartment_params)
    if @apartment.save
      redirect_to apartments_path, notice: "物件を登録しました！"
    else
      render :new
    end
  end

  def show
    @stations = @apartment.stations
  end

  def edit
    @apartment.stations.build
  end

  def update
    if @apartment.update(apartment_params)
      redirect_to apartments_path, notice: "物件を編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @apartment.destroy
    redirect_to apartments_path, notice: "物件を削除しました！"
  end

  private

    def apartment_params
      #子モデルのパラメーターを受け取れるようにする
      params.require(:apartment).permit(:name, :price, :address, :age, :remarks, stations_attributes: [:route, :name, :time])
    end

    def set_apartment
      #parameterのidを利用して、データベースからデータを取得。
      @apartment = Apartment.find(params[:id])
    end

end
