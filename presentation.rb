# frozen_string_literal: true

require 'slide_hero'

# module SlideHero
#  class Slide
#    def link(url, text)
#      point %(<a target="_blank" href="#{url}">#{text}</a>)
#    end
#  end
# end

presentation '99 Bottles of WTF' do
  defaults transition: :fade
  grouped_slides do
    slide 'Hello' do
      point 'Steven Nunez (@octosteve)'
    end
    slide 'Hello' do
      point 'Elixir is great!'
    end
  end
  grouped_slides do
    slide '99 Bottles' do
      remote_image 'https://d2beuh40lcdzfb.cloudfront.net/products/197947/300x300/cover_2nd_sales_js_ruby.jpeg'
    end
    slide 'The Problem' do
      point 'Solve "99 Bottles"'
    end

    slide 'The Problem - Shameless Green' do
      code(:ruby) do
        '1_shamelessgreen.rb'
      end
    end
    slide 'New Requirement' do
      point 'Use "1 6-pack" in place of "6 Bottles"'
    end
    slide '' do
      point '<blockquote class="twitter-tweet"><p lang="en" dir="ltr">for each desired change, make the change easy (warning: this may be hard), then make the easy change</p>&mdash; Kent Beck (@KentBeck) <a href="https://twitter.com/KentBeck/status/250733358307500032?ref_src=twsrc%5Etfw">September 25, 2012</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>'
    end
    slide 'Open/Closed' do
      point 'Open for extension, but closed for modification'
      code(:ruby) do
        'enum.rb'
      end
      point '☹️', animation: 'step'
    end
    slide 'Open/Closed' do
      point 'How can we handle the new requirement without changing the underlying class?'
    end
  end
  grouped_slides do
    slide 'Rules for getting Open/Closed' do
      remote_image 'https://media1.tenor.com/images/0e0d1ddef941b26a24bb822c760392b2/tenor.gif?itemid=17507209'
    end
    slide 'Rules for getting Open/Closed - Prerequisites' do
      list do
        point 'Have Tests', animation: 'step'
        point 'Shameless green', animation: 'step'
        point 'Apply "Flocking Rules"', animation: 'step'
        point 'Introduce collaborating objects', animation: 'step'
      end
    end
    slide 'Flocking Rules' do
      point 'Find the 2 most similar branches and make them the same'
      code(:ruby) do
        'flocking1.rb'
      end
    end
    slide 'Flocking Rules' do
      point 'Use Argument'
      code(:ruby) do
        'flocking2.rb'
      end
    end
    slide 'Flocking Rules' do
      point 'Extract concept (container)'
      code(:ruby) do
        'flocking3.rb'
      end
    end
    slide 'Flocking Rules' do
      point 'Remove duplicate branch'
      code(:ruby) do
        'flocking4.rb'
      end
    end
  end
  grouped_slides do
    slide 'Now in Elixir' do
      def self.link(url, text)
        point %(<a target="_blank" href="#{url}">#{text}</a>)
      end
      point 'Shameless Green'
      link 'https://github.com/octosteve/99_bottles_ex/blob/talk-1-shameless-green/lib/bottles.ex', 'So Pattern Matchy'
    end

    slide 'Now in Elixir' do
      def self.link(url, text)
        point %(<a target="_blank" href="#{url}">#{text}</a>)
      end
      point 'Extracted Concepts'
      link 'https://github.com/octosteve/99_bottles_ex/blob/talk-2-extract-concepts/lib/bottles.ex', 'Elixir'
      link 'https://github.com/sandimetz/99bottles_ruby/blob/2.1-c5-extract-class-10/lib/bottles.rb',
           'Ruby for reference'
    end
    slide 'Things get weird' do
      def self.link(url, text)
        point %(<a target="_blank" href="#{url}">#{text}</a>)
      end
      link 'https://github.com/sandimetz/99bottles_ruby/blob/2.0-c5-extract-class-450/lib/bottles.rb',
           'Extract Class in Ruby'
      link 'https://github.com/sandimetz/99bottles_ruby/blob/2.1-c6-polymorphism-600/lib/bottles.rb',
           'Extract Hierarchy in Ruby'
    end
    slide 'Elixir - Attempt 1' do
      def self.link(url, text)
        point %(<a target="_blank" href="#{url}">#{text}</a>)
      end
      link 'https://github.com/octosteve/99_bottles_ex/blob/solution-1/lib/bottles.ex', 'Why?'
    end
    slide 'Elixir - Attempt 2' do
      def self.link(url, text)
        point %(<a target="_blank" href="#{url}">#{text}</a>)
      end
      link 'https://github.com/octosteve/99_bottles_ex/blob/metamagic/lib/bottles.ex', 'Incomprehensible'
    end
    slide 'Elixir - Attempt 3' do
      def self.link(url, text)
        point %(<a target="_blank" href="#{url}">#{text}</a>)
      end
      point 'Go read so Clojure Books'
      link 'https://github.com/octosteve/99_bottles_ex/blob/composing-construction/lib/bottles.ex', 'Help'
      image 'is_this.png'
    end
    slide 'Crisis' do
      point 'Confessional with Bruce Tate'
      remote_image 'https://pbs.twimg.com/profile_images/1285717573364076545/PGxJY4Lc_400x400.jpg'
    end

    slide '' do
      point '<blockquote class="twitter-tweet"><p lang="en" dir="ltr">A nice <a href="https://twitter.com/elixirlang?ref_src=twsrc%5Etfw">@elixirlang</a> refactoring technique for the core:<br><br>Make every *public* function in a module adhere to the same type spec in one of three ways: <br><br>- builds data of the type (new)<br>- convert data of the type (to_string)<br>- take and return the type (inc)<br><br>Repeat.<a href="https://twitter.com/hashtag/myelixirstatus?src=hash&amp;ref_src=twsrc%5Etfw">#myelixirstatus</a></p>&mdash; Bruce Tate (@redrapids) <a href="https://twitter.com/redrapids/status/1293159307509366786?ref_src=twsrc%5Etfw">August 11, 2020</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>'
    end
    slide '' do
      image 'reduce_all_the_things.png'
    end
    slide 'After Bruce' do
      def self.link(url, text)
        point %(<a target="_blank" href="#{url}">#{text}</a>)
      end
      link 'https://github.com/octosteve/99_bottles_ex/blob/solution-ab/lib/bottles.ex', 'Joy'
    end
  end
  grouped_slides do
    slide 'Nirvana' do
      def self.link(url, text)
        point %(<a target="_blank" href="#{url}">#{text}</a>)
      end
      link 'https://github.com/sandimetz/99bottles_ruby/blob/2.1-c9-revisit-tests-360/lib/bottles.rb',
           'One level higher (Ruby)'
      link 'https://github.com/groxio-learning/beer_song', 'One level higher (Elixir)'
    end
  end
  slide 'FIN' do
    point 'Madness and Zen are 2 sides of the same coin'
  end
end

# Read Sandi and Katrina's book
# Loved it. Things just magically fell out of their code!
# {Magic}
#
# Step 1: Have tests
# Step 2: Shameless green
# Step 3: Flocking rules. Find the smallest difference, and make them similar.
# Step 4: Chaos and bloodshed.
#  Things get weird if you apply the rules the same way in Elixir
#
# Show the steps of the refactoring in Ruby next to Elixir
# Approach breaks down after applying the flocking rules
# Rebuilt OO. Bruce Tate, you've got all the downside of inheritence with none of the benefits
#
