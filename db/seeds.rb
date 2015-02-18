#user :name, :password
#artist :name, :pic_url, :bio
#comment, :content, :user(id), :artist(id)
#upvote, :user(id), artist(id)
# following, :user(id), artist(id)


# user******************************
jonathan = User.create(name:"Jonathan Cho",password:"1234")

# artist****************************

allen = Artist.create(name:"Allen Stone", pic_url:"https://a4-images.myspacecdn.com/images03/31/6a3d26495b30458aaa0528be1e317406/300x300.jpg", bio:"From Chelawah, WA. Trying to change the world with my guitar.")

nas = Artist.create(name:"Nas",pic_url:"http://cps-static.rovicorp.com/3/JPG_400/MI0003/711/MI0003711203.jpg?partner=allrovi.com",bio:"Queensbridge. Represent represent!")

andre = Artist.create(name:"Andre 3000", pic_url:"http://www.mixmag.net/sites/default/files/imagecache/article/images/Andre_3000.jpg",bio:"I own Outkast.")

jack = Artist.create(name:"Jack Johnson", pic_url:"https://aestheticoctopus.files.wordpress.com/2009/12/jack20johnson.jpg",bio:"Eat banana pancakes for breakfast, lunch, and dinner.")

#comment*******************************
Comment.create(content:"nice music",user:jonathan, artist:allen)
Comment.create(content:"sounds good",user:jonathan, artist:andre)
Comment.create(content:"whoa! blown away", user:jonathan, artist:nas)
Comment.create(content:"jack, i listen to your music everyday.",user:jonathan, artist:andre)

#upvote********************************
Upvote.create(user:jonathan, artist:andre)
Upvote.create(user:jonathan, artist:jack)
Upvote.create(user:jonathan, artist:allen)
Upvote.create(user:jonathan, artist:nas)


#following*****************************
Following.create(user:jonathan, artist:allen)
Following.create(user:jonathan, artist:jack)
Following.create(user:jonathan, artist:andre)
Following.create(user:jonathan, artist:nas)
