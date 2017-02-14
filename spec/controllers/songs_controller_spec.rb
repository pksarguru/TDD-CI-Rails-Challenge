require 'rails_helper'

describe SongsController do
  # let!(:song) { Song.create!(title: "Luv Me, Luv Me",artist: "Shaggy")}
  describe 'GET #index' do
    it 'responds with status code 200' do
      get :index
      expect(response).to have_http_status 200
    end

    it 'assigns @songs' do
      get :index
      expect(assigns(:songs)).to eq(Song.all)
    end

    it 'renders the :index template' do
      get :index
      expect(response).to render_template(:index)
    end

  end


end
