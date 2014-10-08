def wagon_sort(students)
  return students.sort_by { |n| [n.downcase, n] }
  # TODO: return (not print!) a copy of students, sorted alphabetically
end