(def example-map {:house "foo"})

(:house example-map)
(:car example-map)

(def json-map
  {
  	:image-url "http://imgur.com/r/cats/1uLxCpW"
   	:user-details {
                   	:name "Mr Cat"
                    :age 10
                   }})

(get-in json-map [:user-details :name])
(get-in json-map [:user-details :eye-colour])