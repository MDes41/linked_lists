require_relative 'list'


class JungleBeat
  attr_reader :string

  def initialize(beats)
    @beats = beats
    arr_beats = @beats.to_s.split
    @list = List.new(arr_beats[0])
    arr_beats.each do |number|
      @list = list.append|number|
    end
  end

  def append(beat)
    @list.append(beat)
  end

  def all
    list.all
  end
end
