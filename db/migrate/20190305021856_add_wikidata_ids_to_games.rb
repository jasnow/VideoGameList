# typed: ignore
class AddWikidataIdsToGames < ActiveRecord::Migration[5.2]
  def change
    # Use a bigint just in case Wikidata ever has more than 2.1 billion items.
    add_column :games, :wikidata_id, :integer, limit: 5
  end
end
