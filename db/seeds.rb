# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Profile.destroy_all
TodoList.destroy_all
TodoItem.destroy_all
User.create(
    [
        {
            username: "Carly Fiorina",
            password_digest: "1954"
        },
        {
            username: "Donald Trump",
            password_digest: "1946"
        },
        {
            username: "Ben Carson",
            password_digest: "1951"
        },
        {
            username: "Hillary Clinton",
            password_digest: "1947"
        }

    ]   
)
User.all.each do |user_item|
    user_item.create_profile ({
        gender:"male",
        birth_year:1947,
    })
end
