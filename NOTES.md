[ x] Change the migration for posts to include content (set content's datatype to text to account for character length).
--> rails migration

[ ] Create a migration, model and controller for User and Tag (via rails generate). Check out the documentation on generators, and remember to skip adding tests.
-->
rails g resource User name:string --no-test-framework
rails g resource Tag name:string --no-test-framework

> rails generate scaffold Apartment address:string price:float description:text image_url:string --no-test-framework

[ ] In order to create the appropriate associations between Post and Tag, we need to create a join table as well.
[ ] Build out model associations and migrations.

--> rails g model PostTag tag_id:integer post_id:integer

HMT association:
expect post has many tags
expect tag has many posts

# models/tag.rb
has_many :posttags
has_many :posts, through: posttags

# models/post.rb
has_many :posttags
has_many :tags, through: :posttags

# models/post_tag.rb
belongs_to: :post
belongs_to: :tag


Example:
# models/movie.rb
class Movie
has_many :showtimes
has_many :theatres, through: :showtimes


# models/theatre.rb
class Theatre < ActiveRecord::Base
  has_many :showtimes
  has_many :movies, through: :showtimes
end

# models/showtime.rb
class ShowTime < ActiveRecord::Base
  belongs_to :movie
  belongs_to :theatre
end




[ ] Be sure to create the appropriate routes. For now, they can be written as resources.
--> resources :posts :tags ?


[ ] create the database, migrate the schema, and seed it.
--> rake db:create?
--> rake db:migrate
--> rake db:seed


[ ]Make the model association tests pass.


***Validations***
[ ]Post for the presence of both name and content
[ ]User for the uniqueness of name
[ ]Tag for the uniqueness of name

[ ]Build out the forms for creating a new post.

[ ]You've got a great post on kittens that was generated via the seed file, but you want to be able to add some tags. Create a form on the posts form page that lists all the tags as checkboxes, allowing a user to select multiple tags.

[ ]Make the tests in features/tags_for_posts_spec.rb pass.
