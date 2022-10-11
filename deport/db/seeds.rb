# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.create(:title => 'Java',
    :description =>
    %{<p>
    JAVA is the fastest growing and most exciting dynamic language
    out there. If you need to get working programs delivered fast,
    you should add Java to your toolbox.
    </p>},
    :image_url => 'https://dev.java/assets/images/java-logo-vert-blk.png',
    :price => 225)

    Product.create(:title => 'Python',
        :description =>
        %{<p>
        Python is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Python to your toolbox.
        </p>},
        :image_url => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGpTiL1uG-PzIeqCtRTIN8rebweqgbHj2KSg&usqp=CAU',
        :price => 295)