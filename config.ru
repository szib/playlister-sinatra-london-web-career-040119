require './config/environment'

begin
  fi_check_migration

  use Rack::MethodOverride

  use SongsController
  use ArtistsController
  use GenresController

  run ApplicationController
rescue ActiveRecord::PendingMigrationError => err
  warn err
  exit 1
end
