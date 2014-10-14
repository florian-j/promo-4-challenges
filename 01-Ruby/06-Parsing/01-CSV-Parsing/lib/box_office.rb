﻿# Encoding: utf-8
require 'csv'

def most_successfull(number, max_year, file_name)
  # TODO: return the number most successfull movies max_year

  csv_options = { col_sep: ',' }

  tab_movies = []

  CSV.foreach(file_name, csv_options) do |row|
    hash_movie = { name: row[0], year: row[1].to_i, earnings: row[2].to_i }
    tab_movies << hash_movie
  end

  tab_movies.select! { |movie| movie[:year] < max_year }
  tab_movies.sort { |movie| movie[:earnings] }
  tab_movies.take(number)
end

