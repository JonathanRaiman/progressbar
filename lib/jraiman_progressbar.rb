# coding: utf-8
# @title Jonathan Raiman's ProgressBar
# @author Jonathan Raiman

module JRProgressBar
	# Shows a progress bar with a "nacella" format

	# Shows the current position

	# @param pos [Fixnum, Float] the current position in the progress
	# @param total [Fixnum, Float] the total amount you are advancing towards, so that 100 * pos / total = percent progress.
	def self.show pos, total
		if pos > total then total = pos end
		progress_bar_size = 65
		nacella_position = ((pos.to_f/total.to_f)* progress_bar_size).floor-2
		percentage = "#{((pos.to_f/total.to_f)*100).floor}%"
		percentage.length < 3 ? percentage = " "+percentage : ""
		nacella_top    = (nacella_position > 0 ? (" "*nacella_position) : "")+"┌───┐"
		nacella_middle = (nacella_position > 0 ? (" "*nacella_position) : "")+"│#{percentage}│"
		nacella_bottom = nacella_position == -1 ? "└┬──┘" : nacella_position == -2 ? "├───┘" : (" "*nacella_position+"└─┬─┘")
		progress_bar   = "┅"*progress_bar_size
		progress_bar[nacella_position+2] = "┷"
		puts ["",nacella_top, nacella_middle, nacella_bottom, progress_bar, ""]
	end
end