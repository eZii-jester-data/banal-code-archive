class CreateAbstractCanonicalCodes < ActiveRecord::Migration[6.0]
  def change
    create_table :abstract_canonical_codes do |t|
      t.text :code
      t.text :sha_digest

      t.timestamps
    end
  end
end
