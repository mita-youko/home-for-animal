class Year < ActiveHash::Base
    self.data = [
      { id: 1, name: '--' },
      { id: 2, name: '幼生期' },
      { id: 3, name: '青年期' },
      { id: 4, name: '老年期' }
    ]

    include ActiveHash::Associations
    has_many :dogs
end