class FindCars
  attr_reader :cars

  def initialize(cars)
    @cars = cars
  end

  def call(params)
    scoped = search(@cars, params[:search])
    scoped = filter_car_type(scoped, params[:properties])
    scoped
  end

  private

  def search(scoped, search = nil)
    start_date = search[:start_date]
    end_date = search[:end_date]

    except_cars = scoped.joins(:rental_cars)
                        .where('(rental_cars.starts_at <= :starts_at and rental_cars.ends_at >= :starts_at) or
        (rental_cars.starts_at >= :starts_at and rental_cars.ends_at <= :ends_at) or
        (rental_cars.starts_at <= :ends_at and rental_cars.ends_at >= :ends_at) or
        (rental_cars.starts_at <= :starts_at and rental_cars.ends_at >= :ends_at)',
                               starts_at: start_date, ends_at: end_date)

    # костыль где я выбираю все машины кроме занятых
    array = scoped - except_cars
    # костыль где я Array машин возвращаю в Relation класс, ну да лишний запрос =(
    Car.where(id: array.map(&:id))
  end

  def filter_car_type(scoped, properties = nil)
    if properties
      scoped.where(car_type: properties[:car_type])
    else
      scoped
    end
  end
end
