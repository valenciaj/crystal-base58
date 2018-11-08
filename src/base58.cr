module Base58
  extend self

  VERSION = "0.1.0"

  ALPHABET = "123456789abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ".chars

  def random(chars : Int32)
    String.build(chars) do |sb|
      chars.times { sb << ALPHABET.sample }
    end
  end
end
