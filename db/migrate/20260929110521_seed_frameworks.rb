# Dado de exemplo gravado por migration: se a página lista estas linhas,
# a migration rodou no banco anexado pelo `uqbitz db attach`.
class SeedFrameworks < ActiveRecord::Migration[8.1]
  def up
    now = Time.current
    execute <<~SQL
      INSERT INTO frameworks (name, runtime, created_at, updated_at) VALUES
        ('Ruby on Rails', 'ruby-runtime', '#{now.to_fs(:db)}', '#{now.to_fs(:db)}'),
        ('Sinatra', 'ruby-runtime', '#{now.to_fs(:db)}', '#{now.to_fs(:db)}')
    SQL
  end

  def down
    execute "DELETE FROM frameworks"
  end
end
