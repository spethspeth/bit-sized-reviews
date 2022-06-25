if @review.persisted?
  json.form json.partial!("reviews/new.html.erb", game: @game, review: Review.new)
  json.inserted_item json.partial!("games/review.html.erb", review: @review)
else
  json.form json.partial!("reviews/form.html.erb", game: @game, review: @review)
end
