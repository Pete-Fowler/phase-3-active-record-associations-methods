class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # equivalent code:
    # if Artist.find_by(name: 'Drake') == nil
    #   Artist.create name: 'Drake'
    # end
    # self.artist = drake


    drake = Artist.find_or_create_by(name: 'Drake')
    # drake = Artist.find_by name: 'Drake'
    self.artist = drake
  end
end