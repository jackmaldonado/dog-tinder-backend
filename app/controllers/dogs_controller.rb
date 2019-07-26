class DogsController < ApplicationController
    def index
        @dogs = Dog.all
        render json: @dogs
    end

    def new
    end

    def create
        @dog = Dog.create(dog_params)

        if @dog.valid?
            render json: @dog
            else
            render json: @dog.errors, status: :unprocessable_entity
        end
        # Create a new dog

        # respond with our new dog

    end
    def show
        @dog = Dog.find(params[:id])
    end

    def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    render json: @dogs
    end

    private

    def dog_params
        params.require(:dog).permit(:name, :age, :enjoys)
    end
end
