tag clock
	prop utc

	def mount
		schedule(interval: 1000)

	def turns div
		let num = (Date.now/60000 + utc * 60) / div
		return "rotate({(num % 1).toFixed(3)}turn)"
	
	def render
		<self>
			<div.h transform=turns(720)>
			<div.m transform=turns(60)>
			<div.s transform=turns(1)>

<div.clocks> # spawn 4 clocks
	<clock title='New York' utc=-5>
	<clock title='San Fran' utc=-8>
	<clock title='London' utc=0>
	<clock title='Tokyo' utc=9>