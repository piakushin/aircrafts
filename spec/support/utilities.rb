def full_title(page_title)
  base_title = 'Aircrafts catalog'
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end
