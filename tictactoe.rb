class Game
  attr_reader :board, :player_1, :player_2
  @@winstates = [[0,1,2], [3,4,5], [6,7,8], [0,3,6],
                 [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

  def initialize
    @board = Board.new
    @player_1 = Player.new
    @player_2 = Player.new
    @winner = nil
    @turn_number = 1
  end

  def play
    get_players_names
    show_welcome_message
    start_playing
    show_result
    show_game_over_message
  end

  class Board
    def initialize

    end

  end

end
