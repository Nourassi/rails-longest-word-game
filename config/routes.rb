Rails.application.routes.draw do
  get 'longestwordgame/game'

  get 'longestwordgame/score'

  root 'longestwordgame#game'
  get 'game' => "longestwordgame#game"

  get'score' => "longestwordgame#score"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
