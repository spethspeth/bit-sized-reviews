class Game < ApplicationRecord
  include PgSearch::Model

  belongs_to :system

  pg_search_scope :game_search,
                    against: {
                      name: 'A',
                      year: 'B',
                      developer: 'C'
                    },
                    associated_against: {
                      system: {
                        name: 'A',
                        company: 'B',
                        year: 'C'
                      }
                    },
                    using: { tsearch: { prefix: true} }
end
