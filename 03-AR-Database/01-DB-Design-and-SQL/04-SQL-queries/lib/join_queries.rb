require 'sqlite3'

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist
  # [chanson, album, artiste]

  tab = db.execute("SELECT tr.name, alb.title, art.name FROM tracks tr
                    JOIN albums alb ON (tr.album_id = alb.id)
                    JOIN artists art ON (alb.artist_id = art.id);")
  return tab
end

def stats_on(db, genre_name)
  # TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
  # category : "Rock", number_of_songs: 1297, avg_length: 4.7
  tab = db.execute("SELECT COUNT(*), AVG(milliseconds) FROM tracks tr
                    JOIN genres g ON tr.genre_id = g.id
                    WHERE g.name = '#{genre_name}';")
  return hash = {
    category: genre_name,
    number_of_songs: tab[0][0],
    avg_length: (tab[0][1] / 60000).round(2)
  }
end

def top_five_artists(db, genre_name)
  # TODO: return list of top 5 rock artists
  #  ['Led Zeppelin, 114]
  #  ['U2', 112]
  # isoler les chansons d'un genre
  # compter les chansons par artistes sur ce genre
  # prendre les 5 artistes les plus représentés
   tab = db.execute("SELECT art.name, COUNT(*) as c
                   FROM tracks tr
                   JOIN albums alb ON (tr.album_id = alb.id)
                   JOIN genres g ON (tr.genre_id = g.id)
                   JOIN artists art ON (alb.artist_id = art.id)
                   WHERE g.name = '#{genre_name}'
                   GROUP BY alb.artist_id
                   ORDER BY c DESC
                   ;")
 return tab[0..4]
end