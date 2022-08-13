namespace :init do
  desc 'init basic data'
  task basic: :environment do
    Author.create(
      {
        name: 'J.K. Rowling',
        email: 'jkrowling@authorly.ca'
      }
    )
    Book.create(
      [
        {
          title: 'Harry Potter and the Philosopher\'s Stone',
          author_id: 1,
          image_url: 'https://upload.wikimedia.org/wikipedia/en/7/7a/Harry_Potter_and_the_Philosopher%27s_Stone_banner.jpg',
          category: 'Fiction'
        },
        {
          title: 'Harry Potter and the Chamber of Secrets',
          author_id: 1,
          image_url: 'https://upload.wikimedia.org/wikipedia/en/c/c0/Harry_Potter_and_the_Chamber_of_Secrets_movie.jpg',
          category: 'Fiction'
        },
        {
          title: 'Harry Potter and the Prisoner of Azkaban',
          author_id: 1,
          image_url: 'https://upload.wikimedia.org/wikipedia/en/b/bc/Prisoner_of_azkaban_UK_poster.jpg',
          category: 'Fiction'
        },
        {
          title: 'Harry Potter and the Goblet of Fire',
          author_id: 1,
          image_url: 'https://upload.wikimedia.org/wikipedia/en/c/c9/Harry_Potter_and_the_Goblet_of_Fire_Poster.jpg',
          category: 'Fiction'
        },
        {
          title: 'Harry Potter and the Order of the Phoenix',
          author_id: 1,
          image_url: 'https://upload.wikimedia.org/wikipedia/en/e/e7/Harry_Potter_and_the_Order_of_the_Phoenix_poster.jpg',
          category: 'Fiction'
        }
      ]
    )
  end
end
