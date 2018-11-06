class GifServiceSerializer < ActiveModel::Serializer
  attributes :summary

  def summary
    object.search
  end
end
