class ClientsController < ApplicationController

    def index
        clients = Client.all
        render json: clients, status: :ok
    end

    def update
        client = Client.find(params[:id])
        client.update!(client_params)
        render json: client, status: :ok
    end

    def show
        client = Client.find(params[:id])
        render json: {
            id: client.id,
            name: client.name,
            age: client.age,
            total_membership_cost: client.total_membership_cost
        }, status: :ok
    end

    private

    def render_not_found_response
        render json: { error: "client not found" }, status: :not_found
    end

    def client_params
        params.permit(:name, :age)
    end
end
