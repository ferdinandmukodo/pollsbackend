class PollSerializer < ActiveModel::Serializer
    attributes :id, :username, :question, :response, :image_url


end