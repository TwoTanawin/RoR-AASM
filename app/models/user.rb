class User < ApplicationRecord
  include AASM

  aasm column: :status do
    state :born, initial: true
    state :old
    state :hurt
    state :dead

    # Uncomment and customize if you want to define transitions
    # event :run do
    #   transitions from: :sleeping, to: :finished, after: :log_run_time
    # end
    event :live do
      transitions from: :born, to: :old
    end
    event :hurt do
      transitions from: :old, to: :hurt
    end
    event :kill do
      transitions from: :hurt, to: :dead
    end
    event :heal do
      transitions from: :hurt, to: :old
    end
    event :reborn do
      transitions from: :dead, to: :born
    end
  end
end
