desc "Copies the files in bootstrap4_rails's `public/bootstrap4_rails` folder to your application's `public` folder."
Rake::Task['assets:precompile'].enhance do
  Rake::Task['bootstrap4_rails:copy_assets'].invoke
end

# Enhanced assets:precompile to ensure that the latest assets are copied over
namespace :bootstrap4_rails do
  task :copy_assets => :"assets:environment"  do
    puts 'rake bootstrap4_rails:copy_assets has begun'
    puts ''
    asset_paths = Dir.glob(Bootstrap4Rails::Engine.root.join('public', 'bootstrap4_rails', '**', '*'))
    asset_paths.each do |asset_path|
      filename = File.basename(asset_path)
      source_file = File.open(asset_path)
      dest_file = File.join(Rails.root, 'public', filename)

      # The file to be copied already exists. Defer to the host app
      # and do not copy the file over.
      if File.file?(dest_file)
        puts 'File copy was unsuccessful'
        puts "Reason: #{dest_file} already exists"
        puts 'Source file:'
        puts asset_path
        puts ''

      # The asset does not already exist!
      else
        # Copy the file over
        FileUtils.copy_file source_file, dest_file, true

        # The file was successfully copied
        if File.file?(dest_file)
          puts 'File copy was successful'
          puts "Copied: #{asset_path} to #{dest_file}"
          puts ''

        # For reasons unknown, the file was not succesfully coppied
        else
          puts 'File copy was unsuccessful'
          puts 'Reason: Unknown'
          puts "Attempted command: `FileUtils.copy_file the_asset, dest_file_path, true`"
          puts 'Source file:'
          puts asset_path
          puts 'Destination:'
          puts Rails.root.join('public')
          puts ''
        end
      end
    end

    puts 'rake bootstrap4_rails:copy_assets has completed'
  end
end