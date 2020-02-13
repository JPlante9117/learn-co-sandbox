name = "Jacques"
rainPercent = 0.8
tempC = 26

likelyRain = rainPercent > 0.30
sunDanger = tempC >= 26

"Hello, #{name}! With a rain chance of #{rainPercent * 100}% and a temperature of #{tempC}C we recommend that you " +(likelyRain ? "take an umbrella" : "enjoy this rain free day") + "#{sunDanger ? ' and watch out for heat stroke!' : ' and bask in this fine weather.'}"