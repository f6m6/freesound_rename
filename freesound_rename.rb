filenames = Dir.glob("*.{wav, wave, aif, aifc, aiff, ogg, oga, mp3, flac}")
filenames.each do |filename|
    dropped = filename.split("__").drop(2).first
    if dropped.nil?
        new_filename = filename
    else
        new_filename = dropped
    end
    File.rename(filename, new_filename)
end