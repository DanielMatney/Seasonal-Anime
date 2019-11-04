lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
    s.name = 'Seasonal-Anime'
    s.version = '0.1.1'
    s.date = '2019-11-03'
    s.summary = 'App to check top rated anime on MyAnimeList.net'
    s.description = 'An application to see the top ranking anime currently airing and info on them.'
    s.authors = ['Daniel Matney']
    s.email = 'danieljmatney@gmail.com'
    s.files = ["lib/Seasonal-Anime.scraper.rb", "lib/Seasonal-Anime/cli.rb", "lib/Seasonal-Anime/anime.rb", "lib/Seasonal-Anime/seasonal-anime.rb", "config/environment.rb"]
    s.homepage = 'https://rubygems.org/profiles/DanielMatney'
    s.license = 'MIT'
    s.executables << 'Seasonal-Anime'
end 