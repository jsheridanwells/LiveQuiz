module PollsHelper
  def setup_poll(poll)
    3.times { poll.items.build }
    poll
  end
end
