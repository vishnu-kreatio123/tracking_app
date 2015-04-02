# desc "Explaining what the task does"
task :blorgh do
  # Task goes here
  ["articles.js","evercookie.js","jquery.cookie.js","jquery.browser.js"].each do |copy|
    source = File.join(Gem.loaded_specs["blorgh"].full_gem_path, "app/assets", "javascripts/blorgh/#{copy}")
    target = File.join(Rails.root, "public", "tracker.js")
    #source = copy
    #target = File.join(Rails.root, "public", copy.split('/').last)
    FileUtils.cp_r source, target
  end
end
