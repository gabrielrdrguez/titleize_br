# frozen_string_literal: true

require_relative 'titleize_br/version'
require 'active_support/core_ext/string/inflections'
require 'core_ext/string'

module TitleizeBr
  class Error < StandardError; end
  CONNECTIVES = %w[a ao aos as com da das de do dos e em na nas no nos o os ou para pela pelas pelo pelos pra pras pro
                   pros um uma à às á é].freeze
  class << self
    def titleize(string)
      parts = string.titleize.split(' ').map do |word|
        infer_case_of_word(word)
      end

      parts.first.capitalize! if connective?(parts.first)
      parts.join(' ')
    end

    private

    def connective?(string)
      regex = /^(#{CONNECTIVES.join('|')})$/i
      string.strip.match?(regex)
    end

    def roman_numeral?(word)
      word.strip.match(/^M{0,3}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$/i)
    end

    def infer_case_of_word(word)
      word.downcase! if connective?(word)
      word.upcase! if roman_numeral?(word)
      word
    end
  end
end
