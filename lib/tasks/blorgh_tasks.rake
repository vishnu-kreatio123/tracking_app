# desc "Explaining what the task does"
task :blorgh do
  # Task goes here
  Dir["/Users/vishnu/.rvm/gems/ruby-1.9.3-p547/bundler/gems/tracking_app-b7c35b12b4e3/app/assets/javascripts/blorgh/*"].each do |copy|
    #source = File.join(Gem.loaded_specs["blorgh"].full_gem_path, "app/assets", "javascripts/blorgh/articles.js")
    #target = File.join(Rails.root, "public", "tracker.js")
    source = copy
    target = File.join(Rails.root, "public", copy.split('/').last)
    FileUtils.cp_r source, target
  end
end
