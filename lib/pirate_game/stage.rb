require 'pirate_command'

class PirateGame::Stage

  attr_accessor :actions_completed
  attr_accessor :all_items
  attr_accessor :begin_time
  attr_accessor :level
  attr_accessor :players

  ITEMS_PER_BRIDGE = 6
  DURATION = 60

  IN_PROGRESS = 'In Progress'
  SUCCESS = 'Success'
  FAILURE = 'Failure'

  def initialize(level, players)
    @level = level
    @players = players
    @actions_completed = []
    generate_all_items

    @begin_time = Time.now
  end

  def increment
    PirateGame::Stage.new self.level + 1, self.players
  end

  def time_left
    [0, (begin_time + DURATION) - Time.now].max
  end

  def status
    if time_left > 0
      IN_PROGRESS
    else
      passed? ? SUCCESS : FAILURE
    end
  end

  def in_progress?
    status == IN_PROGRESS
  end

  def success?
    status == SUCCESS
  end

  def failure?
    status == FAILURE
  end

  def generate_all_items
    @all_items = []

    while @all_items.length < @players*ITEMS_PER_BRIDGE
      thing = PirateCommand.thing
      @all_items << thing unless @all_items.include?(thing)
    end
    @boards = @all_items.each_slice(ITEMS_PER_BRIDGE).to_a
  end

  def bridge_for_player
    @boards.shift
  end

  def complete action, from
    @actions_completed << {action: action, performer: from}
  end

  def required_actions
    @players * (@level+2) + 1
  end

  def passed?
    @actions_completed.length >= required_actions
  end

  def rundown
    return if status == IN_PROGRESS

    rundown = {total_actions: @actions_completed.length}
    rundown[:player_breakdown] = {}

    @actions_completed.collect{|a| a[:performer]}.uniq.each do |p|
      actions = @actions_completed.select{|a| a[:performer] == p}

      rundown[:player_breakdown][p] = actions.length
    end

    rundown
  end

end
