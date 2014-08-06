class BrainF__k
  class << self
    def increment(count = 1)
      '+' * count
    end

    def decrement(count = 1)
      '-' * count
    end

    def next_pointer(count = 1)
      '>' * count
    end

    def previous_pointer(count = 1)
      '<' * count
    end

    def output(count = 1)
      '.' * count
    end

    def comment(message)
      "; #{message}"
    end
  end
end

text = ARGV.first
codes = text.split('').map(&:ord).reduce('') do |codes, char|
  codes += BrainF__k.increment(char)
  codes += BrainF__k.output(1)
  codes += BrainF__k.next_pointer(1)
  codes += BrainF__k.comment("output #{char.chr}\n")
  codes
end

print codes
