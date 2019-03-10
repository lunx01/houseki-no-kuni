Dir.glob("*.mkv").each do |x|
	ext = File.extname(x)
	base = File.basename(x, ext)
	episode,_ = base.match(/.*1x([0-1][0-9])/).captures
	new_name = "Houseki no Kuni Episode #{episode}#{ext}"
	File.rename(x, new_name)
end