Jonathan Raiman's ProgressBar
=============================

A simple progress bar that shows the percentage progress above the bar in a *nacella*.

		
	    ┌───┐
	    │10%│
	    └─┬─┘
	┅┅┅┅┅┅┷┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅


Usage
-----

To get started:

	require 'jraiman_progressbar'

	100.times do |i|
		JRProgressBar.show i, 100
	end