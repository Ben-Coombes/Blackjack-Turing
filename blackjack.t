import GUI
var kings : int := Pic.FileNew ("52.bmp")
var queens : int := Pic.FileNew ("51.bmp")
var jacks : int := Pic.FileNew ("50.bmp")
var tens : int := Pic.FileNew ("49.bmp")
var nines : int := Pic.FileNew ("48.bmp")
var eights : int := Pic.FileNew ("47.bmp")
var sevens : int := Pic.FileNew ("46.bmp")
var sixs : int := Pic.FileNew ("45.bmp")
var fives : int := Pic.FileNew ("44.bmp")
var fours : int := Pic.FileNew ("43.bmp")
var threes : int := Pic.FileNew ("42.bmp")
var twos : int := Pic.FileNew ("41.bmp")
var ones : int := Pic.FileNew ("40.bmp")
var kingh : int := Pic.FileNew ("39.bmp")
var queenh : int := Pic.FileNew ("38.bmp")
var jackh : int := Pic.FileNew ("37.bmp")
var tenh : int := Pic.FileNew ("36.bmp")
var nineh : int := Pic.FileNew ("35.bmp")
var eighth : int := Pic.FileNew ("34.bmp")
var sevenh : int := Pic.FileNew ("33.bmp")
var sixh : int := Pic.FileNew ("32.bmp")
var fiveh : int := Pic.FileNew ("31.bmp")
var fourh : int := Pic.FileNew ("30.bmp")
var threeh : int := Pic.FileNew ("29.bmp")
var twoh : int := Pic.FileNew ("28.bmp")
var oneh : int := Pic.FileNew ("27.bmp")
var kingd : int := Pic.FileNew ("26.bmp")
var queend : int := Pic.FileNew ("25.bmp")
var jackd : int := Pic.FileNew ("24.bmp")
var tend : int := Pic.FileNew ("23.bmp")
var nined : int := Pic.FileNew ("22.bmp")
var eightd : int := Pic.FileNew ("21.bmp")
var sevend : int := Pic.FileNew ("20.bmp")
var sixd : int := Pic.FileNew ("19.bmp")
var fived : int := Pic.FileNew ("18.bmp")
var fourd : int := Pic.FileNew ("17.bmp")
var threed : int := Pic.FileNew ("16.bmp")
var twod : int := Pic.FileNew ("15.bmp")
var oned : int := Pic.FileNew ("14.bmp")
var kingc : int := Pic.FileNew ("13.bmp")
var queenc : int := Pic.FileNew ("12.bmp")
var jackc : int := Pic.FileNew ("11.bmp")
var tenc : int := Pic.FileNew ("10.bmp")
var ninec : int := Pic.FileNew ("9.bmp")
var eightc : int := Pic.FileNew ("8.bmp")
var sevenc : int := Pic.FileNew ("7.bmp")
var sixc : int := Pic.FileNew ("6.bmp")
var fivec : int := Pic.FileNew ("5.bmp")
var fourc : int := Pic.FileNew ("4.bmp")
var threec : int := Pic.FileNew ("3.bmp")
var twoc : int := Pic.FileNew ("2.bmp")
var onec : int := Pic.FileNew ("1.bmp")
var table : int := Pic.FileNew ("table.bmp")
var back : int := Pic.FileNew ("back.bmp")
var card1, card2, hitcard, total, comptotal, compcard, font1, suit, font2, font3, x, compx, ace, hitace, hitace2, hitace3, hitace4, hitace5, hitace6, compace, comphitace,
    comphitace2, comphitace3, comphitace4, comphitace5, comphitace6, compace2, compcounter, ace2, acecheck, counter, doublecard, suit1, suit2, hitsuit, card, splittotal1,
    splittotal2, splithitace, splithitace2, splithitace3, splithitace4, splithitace5, splithitace6, hit2x, hit1x, compcard1 : int
var wantcard, wantanother, textstring, cardtype, wintype : string
var userbet, compchips, bjwin, insurancebet, chips, doubletest, splitbet : real

font1 := Font.New ("arial:16")
font2 := Font.New ("arial:24")
font3 := Font.New ("impact:24")
chips := 500
compchips := 100000
userbet := 0
forward proc mainmenu
forward proc music
forward proc hit
forward proc stand
forward proc hitorstand
forward proc game
forward proc bet
forward proc startup
forward proc splithitorstand1
forward proc splithitorstand2
var window1 : int := Window.Open ("graphics:800;600")
View.Set ("graphics:800;600,position:center;center,nobuttonbar")
mainmenu
proc bet050
    userbet := userbet + 0.5
    if userbet > chips then
	userbet := userbet - 0.5
    end if
    drawfillbox (10, 70, 450, 100, white)
    Draw.Text ("Bet Amount:", 150, 75, font1, black)
    Draw.Text (realstr (userbet, 6), 270, 75, font1, black)
end bet050
proc betn050
    userbet := userbet - 0.5
    if userbet <= 0 then
	userbet := userbet + 0.5
    end if
    drawfillbox (10, 70, 450, 100, white)
    Draw.Text ("Bet Amount:", 150, 75, font1, black)
    Draw.Text (realstr (userbet, 6), 270, 75, font1, black)
end betn050
proc bet1
    userbet := userbet + 1
    if userbet > chips then
	userbet := userbet - 1
    end if
    drawfillbox (10, 70, 450, 100, white)
    Draw.Text ("Bet Amount:", 150, 75, font1, black)
    Draw.Text (realstr (userbet, 6), 270, 75, font1, black)
end bet1
proc betn1
    userbet := userbet - 1
    if userbet <= 0 then
	userbet := userbet + 1
    end if
    drawfillbox (10, 70, 450, 100, white)
    Draw.Text ("Bet Amount:", 150, 75, font1, black)
    Draw.Text (realstr (userbet, 6), 270, 75, font1, black)
end betn1
proc bet10
    userbet := userbet + 10
    if userbet > chips then
	userbet := userbet - 10
    end if
    drawfillbox (10, 70, 450, 100, white)
    Draw.Text ("Bet Amount:", 150, 75, font1, black)
    Draw.Text (realstr (userbet, 6), 270, 75, font1, black)
end bet10
proc betn10
    userbet := userbet - 10
    if userbet <= 0 then
	userbet := userbet + 10
    end if
    drawfillbox (10, 70, 450, 100, white)
    Draw.Text ("Bet Amount:", 150, 75, font1, black)
    Draw.Text (realstr (userbet, 6), 270, 75, font1, black)
end betn10
proc bet50
    userbet := userbet + 50
    if userbet > chips then
	userbet := userbet - 50
    end if
    drawfillbox (10, 70, 450, 100, white)
    Draw.Text ("Bet Amount:", 150, 75, font1, black)
    Draw.Text (realstr (userbet, 6), 270, 75, font1, black)
end bet50
proc betn50
    userbet := userbet - 50
    if userbet <= 0 then
	userbet := userbet + 50
    end if
    drawfillbox (10, 70, 450, 100, white)
    Draw.Text ("Bet Amount:", 150, 75, font1, black)
    Draw.Text (realstr (userbet, 6), 270, 75, font1, black)
end betn50
proc bet100
    userbet := userbet + 100
    if userbet > chips then
	userbet := userbet - 100
    end if
    drawfillbox (10, 70, 450, 100, white)
    Draw.Text ("Bet Amount:", 150, 75, font1, black)
    Draw.Text (realstr (userbet, 6), 270, 75, font1, black)
end bet100
proc betn100
    userbet := userbet - 100
    if userbet <= 0 then
	userbet := userbet + 100
    end if
    drawfillbox (10, 70, 450, 100, white)
    Draw.Text ("Bet Amount:", 150, 75, font1, black)
    Draw.Text (realstr (userbet, 6), 270, 75, font1, black)
end betn100
proc bet500
    userbet := userbet + 500
    if userbet > chips then
	userbet := userbet - 500
    end if
    drawfillbox (10, 70, 450, 100, white)
    Draw.Text ("Bet Amount:", 150, 75, font1, black)
    Draw.Text (realstr (userbet, 6), 270, 75, font1, black)
end bet500
proc betn500
    userbet := userbet - 500
    if userbet <= 0 then
	userbet := userbet + 500
    end if
    drawfillbox (10, 70, 450, 100, white)
    Draw.Text ("Bet Amount:", 150, 75, font1, black)
    Draw.Text (realstr (userbet, 6), 270, 75, font1, black)
end betn500
proc maxbet
    userbet := userbet - userbet
    userbet := userbet + chips
    drawfillbox (10, 70, 450, 100, white)
    Draw.Text ("Bet Amount:", 150, 75, font1, black)
    Draw.Text (realstr (userbet, 6), 270, 75, font1, black)
    game
end maxbet
body proc startup
    splitbet := 0
    ace := 0
    ace2 := 0
    acecheck := 0
    insurancebet := 0
    hitace := 0
    compace := 0
    comphitace := 0
    comphitace2 := 0
    comphitace3 := 0
    comphitace4 := 0
    comphitace5 := 0
    comphitace6 := 0
    hitace2 := 0
    hitace3 := 0
    hitace4 := 0
    hitace5 := 0
    hitace6 := 0
    compace2 := 0
    ace2 := 0
    hit2x := 400
    hit1x := 300
    wintype := "no"
    counter := 0
    compcounter := 0
    splithitace := 0
    splithitace2 := 0
    splithitace3 := 0
    splithitace4 := 0
    splithitace5 := 0
    splithitace6 := 0
    splittotal1 := 0
    splittotal2 := 0
    setscreen ("graphics:800;600")
    cls
    total := 0
    comptotal := 0
    x := 380
    compx := 380
    drawfillbox (700, 70, 780, 0, 53)
    Draw.Text ("Chips:", 710, 45, font1, white)
    Draw.Text (realstr (chips, 6), 700, 15, font1, black)
    Pic.Draw (table, 0, 198, picCopy)
    locatexy (0, 195)
    bet
end startup
body proc bet
    drawfillbox (10, 70, 450, 100, white)
    Draw.Text ("Bet Amount:", 150, 75, font1, black)
    Draw.Text (realstr (userbet, 6), 270, 75, font1, black)
    var button13 : int := GUI.CreateButton (10, 40, 70, "+0.50", bet050)
    var button14 : int := GUI.CreateButton (10, 10, 70, "-0.50", betn050)
    var button15 : int := GUI.CreateButton (90, 40, 70, "+1", bet1)
    var button16 : int := GUI.CreateButton (90, 10, 70, "-1", betn1)
    var button17 : int := GUI.CreateButton (170, 40, 70, "+10", bet10)
    var button18 : int := GUI.CreateButton (170, 10, 70, "-10", betn10)
    var button19 : int := GUI.CreateButton (250, 40, 70, "+50", bet50)
    var button20 : int := GUI.CreateButton (250, 10, 70, "-50", betn50)
    var button21 : int := GUI.CreateButton (330, 40, 70, "+100", bet100)
    var button22 : int := GUI.CreateButton (330, 10, 70, "-100", betn100)
    var button23 : int := GUI.CreateButton (410, 40, 70, "+500", bet500)
    var button24 : int := GUI.CreateButton (410, 10, 70, "-500", betn500)
    var button25 : int := GUI.CreateButton (140, 110, 70, "Bet(b)", game)
    var button26 : int := GUI.CreateButton (220, 110, 70, "Max Bet", maxbet)
    var chars : array char of boolean
    loop
	Input.KeyDown (chars)

	if chars ('b') then
	    delay (300)
	    game
	end if
	exit when GUI.ProcessEvent
    end loop
end bet
body proc game
    if userbet = 0 then
	bet
    end if
    drawfillbox (700, 160, 780, 230, 53)
    Draw.Text ("Comp:", 710, 205, font1, white)
    Draw.Text (realstr (comptotal, 6), 700, 175, font1, black)
    drawfillbox (700, 80, 780, 150, 53)
    Draw.Text ("Total:", 710, 125, font1, white)
    Draw.Text (realstr (total, 6), 700, 95, font1, black)
    chips := chips - userbet
    drawfillbox (700, 70, 780, 0, 53)
    Draw.Text ("Chips:", 710, 45, font1, white)
    Draw.Text (realstr (chips, 6), 700, 15, font1, black)
    randint (card1, 1, 13)
    if card1 = 13 then
	total := total + 10
	randint (suit1, 1, 4)
	if suit1 = 1 then
	    Pic.Draw (kings, 360, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (kingh, 360, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (kingd, 360, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (kingc, 360, 260, picCopy)
	end if
    elsif card1 = 12 then
	total := total + 10
	randint (suit1, 1, 4)
	if suit1 = 1 then
	    Pic.Draw (queens, 360, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (queenh, 360, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (queend, 360, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (queenc, 360, 260, picCopy)
	end if
    elsif card1 = 11 then
	total := total + 10
	randint (suit1, 1, 4)
	if suit1 = 1 then
	    Pic.Draw (jacks, 360, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (jackh, 360, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (jackd, 360, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (jackc, 360, 260, picCopy)
	end if
    elsif card1 = 10 then
	total := total + card1
	randint (suit1, 1, 4)
	if suit1 = 1 then
	    Pic.Draw (tens, 360, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (tenh, 360, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (tend, 360, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (tenc, 360, 260, picCopy)
	end if
    elsif card1 = 9 then
	total := total + card1
	randint (suit1, 1, 4)
	if suit1 = 1 then
	    Pic.Draw (nines, 360, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (nineh, 360, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (nined, 360, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (ninec, 360, 260, picCopy)
	end if
    elsif card1 = 8 then
	total := total + card1
	randint (suit1, 1, 4)
	if suit1 = 1 then
	    Pic.Draw (eights, 360, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (eighth, 360, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (eightd, 360, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (eightc, 360, 260, picCopy)
	end if
    elsif card1 = 7 then
	total := total + card1
	randint (suit1, 1, 4)
	if suit1 = 1 then
	    Pic.Draw (sevens, 360, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (sevenh, 360, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (sevend, 360, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (sevenc, 360, 260, picCopy)
	end if
    elsif card1 = 6 then
	total := total + card1
	randint (suit1, 1, 4)
	if suit1 = 1 then
	    Pic.Draw (sixs, 360, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (sixh, 360, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (sixd, 360, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (sixc, 360, 260, picCopy)
	end if
    elsif card1 = 5 then
	total := total + card1
	randint (suit1, 1, 4)
	if suit1 = 1 then
	    Pic.Draw (fives, 360, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (fiveh, 360, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (fived, 360, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (fivec, 360, 260, picCopy)
	end if
    elsif card1 = 4 then
	total := total + card1
	randint (suit1, 1, 4)
	if suit1 = 1 then
	    Pic.Draw (fours, 360, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (fourh, 360, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (fourd, 360, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (fourc, 360, 260, picCopy)
	end if
    elsif card1 = 3 then
	total := total + card1
	randint (suit1, 1, 4)
	if suit1 = 1 then
	    Pic.Draw (threes, 360, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (threeh, 360, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (threed, 360, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (threec, 360, 260, picCopy)
	end if
    elsif card1 = 2 then
	total := total + card1
	randint (suit1, 1, 4)
	if suit1 = 1 then
	    Pic.Draw (twos, 360, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (twoh, 360, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (twod, 360, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (twoc, 360, 260, picCopy)
	end if
    elsif card1 = 1 then
	total := total + 11
	ace := 1
	randint (suit1, 1, 4)
	if suit1 = 1 then
	    Pic.Draw (ones, 360, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (oneh, 360, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (oned, 360, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (onec, 360, 260, picCopy)
	end if
    end if
    drawfillbox (700, 160, 780, 230, 53)
    Draw.Text ("Comp:", 710, 205, font1, white)
    Draw.Text (realstr (comptotal, 6), 700, 175, font1, black)
    drawfillbox (700, 80, 780, 150, 53)
    Draw.Text ("Total:", 710, 125, font1, white)
    Draw.Text (realstr (total, 6), 700, 95, font1, black)
    delay (1500)
    randint (compcard1, 1, 13)
    if compcard1 = 13 then
	comptotal := comptotal + 10
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (kings, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (kingh, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (kingd, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (kingc, 360, 420, picCopy)
	end if
    elsif compcard1 = 12 then
	comptotal := comptotal + 10
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (queens, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (queenh, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (queend, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (queenc, 360, 420, picCopy)
	end if
    elsif compcard1 = 11 then
	comptotal := comptotal + 10
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (jacks, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (jackh, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (jackd, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (jackc, 360, 420, picCopy)
	end if
    elsif compcard1 = 10 then
	comptotal := comptotal + compcard1
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (tens, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (tenh, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (tend, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (tenc, 360, 420, picCopy)
	end if
    elsif compcard1 = 9 then
	comptotal := comptotal + compcard1
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (nines, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (nineh, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (nined, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (ninec, 360, 420, picCopy)
	end if
    elsif compcard1 = 8 then
	comptotal := comptotal + compcard1
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (eights, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (eighth, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (eightd, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (eightc, 360, 420, picCopy)
	end if
    elsif compcard1 = 7 then
	comptotal := comptotal + compcard1
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (sevens, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (sevenh, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (sevend, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (sevenc, 360, 420, picCopy)
	end if
    elsif compcard1 = 6 then
	comptotal := comptotal + compcard1
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (sixs, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (sixh, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (sixd, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (sixc, 360, 420, picCopy)
	end if
    elsif compcard1 = 5 then
	comptotal := comptotal + compcard1
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (fives, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (fiveh, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (fived, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (fivec, 360, 420, picCopy)
	end if
    elsif compcard1 = 4 then
	comptotal := comptotal + compcard1
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (fours, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (fourh, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (fourd, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (fourc, 360, 420, picCopy)
	end if
    elsif compcard1 = 3 then
	comptotal := comptotal + compcard1
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (threes, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (threeh, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (threed, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (threec, 360, 420, picCopy)
	end if
    elsif compcard1 = 2 then
	comptotal := comptotal + compcard1
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (twos, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (twoh, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (twod, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (twoc, 360, 420, picCopy)
	end if
    elsif compcard1 = 1 then
	comptotal := comptotal + 11
	randint (suit, 1, 4)
	compace := 1
	acecheck := 1
	if suit = 1 then
	    Pic.Draw (ones, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (oneh, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (oned, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (onec, 360, 420, picCopy)
	end if
    end if
    drawfillbox (700, 160, 780, 230, 53)
    Draw.Text ("Comp:", 710, 205, font1, white)
    Draw.Text (realstr (comptotal, 6), 700, 175, font1, black)
    drawfillbox (700, 80, 780, 150, 53)
    Draw.Text ("Total:", 710, 125, font1, white)
    Draw.Text (realstr (total, 6), 700, 95, font1, black)
    delay (1500)
    randint (card2, 1, 13)
    if card2 = 13 then
	total := total + 10
	randint (suit2, 1, 4)
	if suit2 = 1 then
	    Pic.Draw (kings, 380, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (kingh, 380, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (kingd, 380, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (kingc, 380, 260, picCopy)
	end if
    elsif card2 = 12 then
	total := total + 10
	randint (suit2, 1, 4)
	if suit2 = 1 then
	    Pic.Draw (queens, 380, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (queenh, 380, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (queend, 380, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (queenc, 380, 260, picCopy)
	end if
    elsif card2 = 11 then
	total := total + 10
	randint (suit2, 1, 4)
	if suit2 = 1 then
	    Pic.Draw (jacks, 380, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (jackh, 380, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (jackd, 380, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (jackc, 380, 260, picCopy)
	end if
    elsif card2 = 10 then
	total := total + card2
	randint (suit2, 1, 4)
	if suit2 = 1 then
	    Pic.Draw (tens, 380, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (tenh, 380, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (tend, 380, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (tenc, 380, 260, picCopy)
	end if
    elsif card2 = 9 then
	total := total + card2
	randint (suit2, 1, 4)
	if suit2 = 1 then
	    Pic.Draw (nines, 380, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (nineh, 380, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (nined, 380, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (ninec, 380, 260, picCopy)
	end if
    elsif card2 = 8 then
	total := total + card2
	randint (suit2, 1, 4)
	if suit2 = 1 then
	    Pic.Draw (eights, 380, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (eighth, 380, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (eightd, 380, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (eightc, 380, 260, picCopy)
	end if
    elsif card2 = 7 then
	total := total + card2
	randint (suit2, 1, 4)
	if suit2 = 1 then
	    Pic.Draw (sevens, 380, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (sevenh, 380, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (sevend, 380, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (sevenc, 380, 260, picCopy)
	end if
    elsif card2 = 6 then
	total := total + card2
	randint (suit2, 1, 4)
	if suit2 = 1 then
	    Pic.Draw (sixs, 380, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (sixh, 380, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (sixd, 380, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (sixc, 380, 260, picCopy)
	end if
    elsif card2 = 5 then
	total := total + card2
	randint (suit2, 1, 4)
	if suit2 = 1 then
	    Pic.Draw (fives, 380, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (fiveh, 380, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (fived, 380, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (fivec, 380, 260, picCopy)
	end if
    elsif card2 = 4 then
	total := total + card2
	randint (suit2, 1, 4)
	if suit2 = 1 then
	    Pic.Draw (fours, 380, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (fourh, 380, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (fourd, 380, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (fourc, 380, 260, picCopy)
	end if
    elsif card2 = 3 then
	total := total + card2
	randint (suit2, 1, 4)
	if suit2 = 1 then
	    Pic.Draw (threes, 380, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (threeh, 380, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (threed, 380, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (threec, 380, 260, picCopy)
	end if
    elsif card2 = 2 then
	total := total + card2
	randint (suit2, 1, 4)
	if suit2 = 1 then
	    Pic.Draw (twos, 380, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (twoh, 380, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (twod, 380, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (twoc, 380, 260, picCopy)
	end if
    elsif card2 = 1 then
	total := total + 11
	ace2 := 1
	randint (suit2, 1, 4)
	if suit2 = 1 then
	    Pic.Draw (ones, 380, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (oneh, 380, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (oned, 380, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (onec, 380, 260, picCopy)
	end if
    end if
    if ace = 1 and ace2 = 1 then
	total := total - 10
    end if
    Pic.Draw (back, 380, 420, picCopy)
    drawfillbox (700, 160, 780, 230, 53)
    Draw.Text ("Comp:", 710, 205, font1, white)
    Draw.Text (realstr (comptotal, 6), 700, 175, font1, black)
    drawfillbox (700, 80, 780, 150, 53)
    Draw.Text ("Total:", 710, 125, font1, white)
    Draw.Text (realstr (total, 6), 700, 95, font1, black)
    delay (1000)
    if total = 21 then
	wintype := "blackjack"
	stand
    end if
    hitorstand
end game
body procedure hit
    x := x + 20
    randint (hitcard, 1, 13)
    if hitcard = 13 then
	total := total + 10
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (kings, x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (kingh, x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (kingd, x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (kingc, x, 260, picCopy)
	end if
    elsif hitcard = 12 then
	total := total + 10
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (queens, x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (queenh, x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (queend, x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (queenc, x, 260, picCopy)
	end if
    elsif hitcard = 11 then
	total := total + 10
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (jacks, x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (jackh, x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (jackd, x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (jackc, x, 260, picCopy)
	end if
    elsif hitcard = 10 then
	total := total + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (tens, x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (tenh, x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (tend, x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (tenc, x, 260, picCopy)
	end if
    elsif hitcard = 9 then
	total := total + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (nines, x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (nineh, x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (nined, x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (ninec, x, 260, picCopy)
	end if
    elsif hitcard = 8 then
	total := total + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (eights, x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (eighth, x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (eightd, x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (eightc, x, 260, picCopy)
	end if
    elsif hitcard = 7 then
	total := total + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (sevens, x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (sevenh, x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (sevend, x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (sevenc, x, 260, picCopy)
	end if
    elsif hitcard = 6 then
	total := total + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (sixs, x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (sixh, x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (sixd, x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (sixc, x, 260, picCopy)
	end if
    elsif hitcard = 5 then
	total := total + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (fives, x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (fiveh, x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (fived, x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (fivec, x, 260, picCopy)
	end if
    elsif hitcard = 4 then
	total := total + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (fours, x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (fourh, x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (fourd, x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (fourc, x, 260, picCopy)
	end if
    elsif hitcard = 3 then
	total := total + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (threes, x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (threeh, x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (threed, x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (threec, x, 260, picCopy)
	end if
    elsif hitcard = 2 then
	total := total + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (twos, x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (twoh, x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (twod, x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (twoc, x, 260, picCopy)
	end if
    elsif hitcard = 1 then
	total := total + 11
	counter := counter + 1
	if counter = 1 then
	    hitace := 1
	elsif counter = 2 then
	    hitace2 := 1
	elsif counter = 3 then
	    hitace3 := 1
	elsif counter = 4 then
	    hitace4 := 1
	elsif counter = 5 then
	    hitace5 := 1
	elsif counter = 6 then
	    hitace6 := 1
	end if
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (ones, x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (oneh, x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (oned, x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (onec, x, 260, picCopy)
	end if
    end if
    if ace = 1 and total >= 22 then
	total := total - 10
	ace := 0
    end if
    if ace2 = 1 and total >= 22 then
	total := total - 10
	ace2 := 0
    end if
    if hitace = 1 and total >= 22 then
	total := total - 10
	hitace := 0
    elsif hitace2 = 1 and total >= 22 then
	total := total - 10
	hitace2 := 0
    elsif hitace3 = 1 and total >= 22 then
	total := total - 10
	hitace3 := 0
    elsif hitace4 = 1 and total >= 22 then
	total := total - 10
	hitace4 := 0
    elsif hitace5 = 1 and total >= 22 then
	total := total - 10
	hitace5 := 0
    elsif hitace6 = 1 and total >= 22 then
	total := total - 10
	hitace6 := 0
    end if
    drawfillbox (700, 160, 780, 230, 53)
    Draw.Text ("Comp:", 710, 205, font1, white)
    Draw.Text (realstr (comptotal, 6), 700, 175, font1, black)
    drawfillbox (700, 80, 780, 150, 53)
    Draw.Text ("Total:", 710, 125, font1, white)
    Draw.Text (realstr (total, 6), 700, 95, font1, black)
    if total = 21 then
	stand
    elsif total > 21 then
	stand
    end if
end hit
body proc stand
    delay (1000)
    randint (compcard, 1, 13)
    if compcard = 13 then
	comptotal := comptotal + 10
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (kings, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (kingh, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (kingd, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (kingc, 380, 420, picCopy)
	end if
    elsif compcard = 12 then
	comptotal := comptotal + 10
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (queens, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (queenh, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (queend, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (queenc, 380, 420, picCopy)
	end if
    elsif compcard = 11 then
	comptotal := comptotal + 10
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (jacks, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (jackh, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (jackd, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (jackc, 380, 420, picCopy)
	end if
    elsif compcard = 10 then
	comptotal := comptotal + compcard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (tens, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (tenh, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (tend, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (tenc, 380, 420, picCopy)
	end if
    elsif compcard = 9 then
	comptotal := comptotal + compcard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (nines, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (nineh, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (nined, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (ninec, 380, 420, picCopy)
	end if
    elsif compcard = 8 then
	comptotal := comptotal + compcard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (eights, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (eighth, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (eightd, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (eightc, 380, 420, picCopy)
	end if
    elsif compcard = 7 then
	comptotal := comptotal + compcard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (sevens, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (sevenh, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (sevend, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (sevenc, 380, 420, picCopy)
	end if
    elsif compcard = 6 then
	comptotal := comptotal + compcard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (sixs, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (sixh, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (sixd, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (sixc, 380, 420, picCopy)
	end if
    elsif compcard = 5 then
	comptotal := comptotal + compcard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (fives, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (fiveh, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (fived, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (fivec, 380, 420, picCopy)
	end if
    elsif compcard = 4 then
	comptotal := comptotal + compcard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (fours, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (fourh, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (fourd, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (fourc, 380, 420, picCopy)
	end if
    elsif compcard = 3 then
	comptotal := comptotal + compcard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (threes, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (threeh, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (threed, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (threec, 380, 420, picCopy)
	end if
    elsif compcard = 2 then
	comptotal := comptotal + compcard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (twos, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (twoh, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (twod, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (twoc, 380, 420, picCopy)
	end if
    elsif compcard = 1 then
	compace2 := 1
	comptotal := comptotal + 11
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (ones, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (oneh, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (oned, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (onec, 380, 420, picCopy)
	end if
    end if
    if compace = 1 and compace2 = 1 then
	comptotal := comptotal - 10
    end if
    drawfillbox (700, 160, 780, 230, 53)
    Draw.Text ("Comp:", 710, 205, font1, white)
    Draw.Text (realstr (comptotal, 6), 700, 175, font1, black)
    loop
	delay (1000)
	if comptotal < 17 then
	    compx := compx + 20
	    randint (compcard, 1, 13)
	    if compcard = 13 then
		comptotal := comptotal + 10
		randint (suit, 1, 4)
		if suit = 1 then
		    Pic.Draw (kings, compx, 420, picCopy)
		elsif suit = 2 then
		    Pic.Draw (kingh, compx, 420, picCopy)
		elsif suit = 3 then
		    Pic.Draw (kingd, compx, 420, picCopy)
		elsif suit = 4 then
		    Pic.Draw (kingc, compx, 420, picCopy)
		end if
	    elsif compcard = 12 then
		comptotal := comptotal + 10
		randint (suit, 1, 4)
		if suit = 1 then
		    Pic.Draw (queens, compx, 420, picCopy)
		elsif suit = 2 then
		    Pic.Draw (queenh, compx, 420, picCopy)
		elsif suit = 3 then
		    Pic.Draw (queend, compx, 420, picCopy)
		elsif suit = 4 then
		    Pic.Draw (queenc, compx, 420, picCopy)
		end if
	    elsif compcard = 11 then
		comptotal := comptotal + 10
		randint (suit, 1, 4)
		if suit = 1 then
		    Pic.Draw (jacks, compx, 420, picCopy)
		elsif suit = 2 then
		    Pic.Draw (jackh, compx, 420, picCopy)
		elsif suit = 3 then
		    Pic.Draw (jackd, compx, 420, picCopy)
		elsif suit = 4 then
		    Pic.Draw (jackc, compx, 420, picCopy)
		end if
	    elsif compcard = 10 then
		comptotal := comptotal + compcard
		randint (suit, 1, 4)
		if suit = 1 then
		    Pic.Draw (tens, compx, 420, picCopy)
		elsif suit = 2 then
		    Pic.Draw (tenh, compx, 420, picCopy)
		elsif suit = 3 then
		    Pic.Draw (tend, compx, 420, picCopy)
		elsif suit = 4 then
		    Pic.Draw (tenc, compx, 420, picCopy)
		end if
	    elsif compcard = 9 then
		comptotal := comptotal + compcard
		randint (suit, 1, 4)
		if suit = 1 then
		    Pic.Draw (nines, compx, 420, picCopy)
		elsif suit = 2 then
		    Pic.Draw (nineh, compx, 420, picCopy)
		elsif suit = 3 then
		    Pic.Draw (nined, compx, 420, picCopy)
		elsif suit = 4 then
		    Pic.Draw (ninec, compx, 420, picCopy)
		end if
	    elsif compcard = 8 then
		comptotal := comptotal + compcard
		randint (suit, 1, 4)
		if suit = 1 then
		    Pic.Draw (eights, compx, 420, picCopy)
		elsif suit = 2 then
		    Pic.Draw (eighth, compx, 420, picCopy)
		elsif suit = 3 then
		    Pic.Draw (eightd, compx, 420, picCopy)
		elsif suit = 4 then
		    Pic.Draw (eightc, compx, 420, picCopy)
		end if
	    elsif compcard = 7 then
		comptotal := comptotal + compcard
		randint (suit, 1, 4)
		if suit = 1 then
		    Pic.Draw (sevens, compx, 420, picCopy)
		elsif suit = 2 then
		    Pic.Draw (sevenh, compx, 420, picCopy)
		elsif suit = 3 then
		    Pic.Draw (sevend, compx, 420, picCopy)
		elsif suit = 4 then
		    Pic.Draw (sevenc, compx, 420, picCopy)
		end if
	    elsif compcard = 6 then
		comptotal := comptotal + compcard
		randint (suit, 1, 4)
		if suit = 1 then
		    Pic.Draw (sixs, compx, 420, picCopy)
		elsif suit = 2 then
		    Pic.Draw (sixh, compx, 420, picCopy)
		elsif suit = 3 then
		    Pic.Draw (sixd, compx, 420, picCopy)
		elsif suit = 4 then
		    Pic.Draw (sixc, compx, 420, picCopy)
		end if
	    elsif compcard = 5 then
		comptotal := comptotal + compcard
		randint (suit, 1, 4)
		if suit = 1 then
		    Pic.Draw (fives, compx, 420, picCopy)
		elsif suit = 2 then
		    Pic.Draw (fiveh, compx, 420, picCopy)
		elsif suit = 3 then
		    Pic.Draw (fived, compx, 420, picCopy)
		elsif suit = 4 then
		    Pic.Draw (fivec, compx, 420, picCopy)
		end if
	    elsif compcard = 4 then
		comptotal := comptotal + compcard
		randint (suit, 1, 4)
		if suit = 1 then
		    Pic.Draw (fours, compx, 420, picCopy)
		elsif suit = 2 then
		    Pic.Draw (fourh, compx, 420, picCopy)
		elsif suit = 3 then
		    Pic.Draw (fourd, compx, 420, picCopy)
		elsif suit = 4 then
		    Pic.Draw (fourc, compx, 420, picCopy)
		end if
	    elsif compcard = 3 then
		comptotal := comptotal + compcard
		randint (suit, 1, 4)
		if suit = 1 then
		    Pic.Draw (threes, compx, 420, picCopy)
		elsif suit = 2 then
		    Pic.Draw (threeh, compx, 420, picCopy)
		elsif suit = 3 then
		    Pic.Draw (threed, compx, 420, picCopy)
		elsif suit = 4 then
		    Pic.Draw (threec, compx, 420, picCopy)
		end if
	    elsif compcard = 2 then
		comptotal := comptotal + compcard
		randint (suit, 1, 4)
		if suit = 1 then
		    Pic.Draw (twos, compx, 420, picCopy)
		elsif suit = 2 then
		    Pic.Draw (twoh, compx, 420, picCopy)
		elsif suit = 3 then
		    Pic.Draw (twod, compx, 420, picCopy)
		elsif suit = 4 then
		    Pic.Draw (twoc, compx, 420, picCopy)
		end if
	    elsif compcard = 1 then
		comptotal := comptotal + 11
		compcounter := compcounter + 1
		if compcounter = 1 then
		    comphitace := 1
		elsif compcounter = 2 then
		    comphitace2 := 1
		elsif compcounter = 3 then
		    comphitace3 := 1
		elsif compcounter = 4 then
		    comphitace4 := 1
		elsif compcounter = 5 then
		    comphitace5 := 1
		elsif compcounter = 6 then
		    comphitace6 := 1
		end if
		randint (suit, 1, 4)
		if suit = 1 then
		    Pic.Draw (ones, compx, 420, picCopy)
		elsif suit = 2 then
		    Pic.Draw (oneh, compx, 420, picCopy)
		elsif suit = 3 then
		    Pic.Draw (oned, compx, 420, picCopy)
		elsif suit = 4 then
		    Pic.Draw (onec, compx, 420, picCopy)
		end if
	    end if
	    if compace = 1 and comptotal >= 22 then
		comptotal := comptotal - 10
		compace := 0
	    end if
	    if compace2 = 1 and comptotal >= 22 then
		comptotal := comptotal - 10
		compace2 := 0
	    end if
	    if comphitace = 1 and comptotal >= 22 then
		comptotal := comptotal - 10
		comphitace := 0
	    elsif comphitace2 = 1 and comptotal >= 22 then
		comptotal := comptotal - 10
		comphitace2 := 0
	    elsif comphitace3 = 1 and comptotal >= 22 then
		comptotal := comptotal - 10
		comphitace3 := 0
	    elsif comphitace4 = 1 and comptotal >= 22 then
		comptotal := comptotal - 10
		comphitace4 := 0
	    elsif comphitace5 = 1 and comptotal >= 22 then
		comptotal := comptotal - 10
		comphitace5 := 0
	    elsif comphitace6 = 1 and comptotal >= 22 then
		comptotal := comptotal - 10
		comphitace6 := 0
	    end if
	elsif comptotal >= 17 then
	    exit
	end if
	drawfillbox (700, 160, 780, 230, 53)
	Draw.Text ("Comp:", 710, 205, font1, white)
	Draw.Text (realstr (comptotal, 6), 700, 175, font1, black)
    end loop
    if wintype = "split" then
	if splittotal1 > comptotal and splittotal1 <= 21 then
	    chips := chips + userbet * 2
	    Font.Draw ("You Win!", 360, 170, font2, black)
	elsif splittotal1 < comptotal and
		comptotal <= 21 then
	    Font.Draw ("You Lose!", 360, 170, font2, black)
	elsif comptotal < splittotal1 and
		comptotal <= 21 then
	    Font.Draw ("You Lose!", 360, 170, font2, black)
	elsif splittotal1 > 21 and
		comptotal > 21 then
	    chips := chips + userbet
	    Font.Draw ("Push", 360, 170, font2, black)
	elsif splittotal1 = comptotal then
	    chips := chips + userbet
	    Font.Draw ("Push", 360, 170, font2, black)
	else
	    chips := chips + userbet * 2
	    Font.Draw ("You Win!", 360, 170, font2, black)
	end if
	if splittotal2 > comptotal and splittotal2 <= 21 then
	    chips := chips + splitbet * 2
	    Font.Draw ("You Win!", 360, 140, font2, black)
	elsif splittotal2 < comptotal and
		comptotal <= 21 then
	    Font.Draw ("You Lose!", 360, 140, font2, black)
	elsif comptotal < splittotal2 and
		comptotal <= 21 then
	    Font.Draw ("You Lose!", 360, 140, font2, black)
	elsif splittotal2 > 21 and
		comptotal > 21 then
	    chips := chips + splitbet
	    Font.Draw ("Push", 360, 140, font2, black)
	elsif splittotal2 = comptotal then
	    chips := chips + splitbet
	    Font.Draw ("Push", 360, 140, font2, black)
	else
	    chips := chips + userbet * 2
	    Font.Draw ("You Win!", 360, 170, font2, black)
	end if
    end if
    delay (500)
    if wintype = "no" or wintype = "double" or wintype = "blackjack" then
	if total > comptotal and total <= 21 and wintype = "no" then
	    Font.Draw ("You Win!", 360, 170, font2, black)
	    chips := chips + userbet * 2
	elsif total > comptotal and total = 21 and wintype = "blackjack" then
	    Font.Draw ("You Win!", 360, 170, font1, black)
	    Font.Draw ("at Increased Odds (Blackjack)", 270, 150, font1, black)
	    bjwin := userbet * 2.5
	    chips := chips + bjwin
	elsif total < comptotal and
		comptotal <= 21 then
	    Font.Draw ("You Lose!", 360, 170, font2, black)
	elsif total < comptotal and comptotal > 21 and total <= 21 then
	    Font.Draw ("You Win!", 360, 170, font2, black)
	    chips := chips + userbet * 2
	elsif comptotal < total and
		comptotal <= 21 then
	    Font.Draw ("You Lose!", 360, 170, font2, black)
	elsif total > 21 and
		comptotal > 21 then
	    chips := chips + userbet
	    Font.Draw ("Push", 360, 170, font2, black)
	else
	    chips := chips + userbet
	    Font.Draw ("Push", 360, 170, font2, black)
	end if
    end if
    delay (2500)
    if chips <= 0 then
	cls
	drawfillbox (700, 70, 780, 0, 53)
	Draw.Text ("Chips:", 710, 45, font1, white)
	Draw.Text (realstr (chips, 6), 700, 15, font1, black)
	Pic.Draw (table, 0, 198, picCopy)
	drawfillbox (700, 160, 780, 230, 53)
	Draw.Text ("Comp:", 710, 205, font1, white)
	Draw.Text (realstr (comptotal, 6), 700, 175, font1, black)
	drawfillbox (700, 80, 780, 150, 53)
	Draw.Text ("Total:", 710, 125, font1, white)
	Draw.Text (realstr (total, 6), 700, 95, font1, black)
	Font.Draw ("You Are Bankrupt!", 270, 170, font1, black)
	Font.Draw ("Restarting Game...", 270, 150, font1, black)
	chips := 500
	delay (2500)
	mainmenu
    end if
    startup
end stand
procedure insurance
    delay (2000)
    randint (compcard, 1, 13)
    if compcard = 13 then
	comptotal := comptotal + 10
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (kings, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (kingh, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (kingd, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (kingc, 380, 420, picCopy)
	end if
    elsif compcard = 12 then
	comptotal := comptotal + 10
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (queens, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (queenh, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (queend, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (queenc, 380, 420, picCopy)
	end if
    elsif compcard = 11 then
	comptotal := comptotal + 10
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (jacks, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (jackh, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (jackd, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (jackc, 380, 420, picCopy)
	end if
    elsif compcard = 10 then
	comptotal := comptotal + compcard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (tens, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (tenh, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (tend, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (tenc, 380, 420, picCopy)
	end if
    elsif compcard = 9 then
	comptotal := comptotal + compcard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (nines, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (nineh, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (nined, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (ninec, 380, 420, picCopy)
	end if
    elsif compcard = 8 then
	comptotal := comptotal + compcard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (eights, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (eighth, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (eightd, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (eightc, 380, 420, picCopy)
	end if
    elsif compcard = 7 then
	comptotal := comptotal + compcard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (sevens, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (sevenh, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (sevend, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (sevenc, 380, 420, picCopy)
	end if
    elsif compcard = 6 then
	comptotal := comptotal + compcard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (sixs, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (sixh, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (sixd, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (sixc, 380, 420, picCopy)
	end if
    elsif compcard = 5 then
	comptotal := comptotal + compcard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (fives, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (fiveh, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (fived, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (fivec, 380, 420, picCopy)
	end if
    elsif compcard = 4 then
	comptotal := comptotal + compcard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (fours, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (fourh, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (fourd, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (fourc, 380, 420, picCopy)
	end if
    elsif compcard = 3 then
	comptotal := comptotal + compcard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (threes, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (threeh, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (threed, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (threec, 380, 420, picCopy)
	end if
    elsif compcard = 2 then
	comptotal := comptotal + compcard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (twos, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (twoh, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (twod, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (twoc, 380, 420, picCopy)
	end if
    elsif compcard = 1 then
	compace2 := 1
	comptotal := comptotal + 11
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (ones, 380, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (oneh, 380, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (oned, 380, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (onec, 380, 420, picCopy)
	end if
    end if
    if comptotal = 21 then
	chips := chips + userbet
	put "Congratulations you won the insurance bet"
    else
	put "You lost the insurance bet"
    end if
    delay (2000)
    startup
end insurance
proc surrender
    randint (compcard, 1, 13)
    chips := chips + userbet / 2
    Font.Draw ("Surrendering...", 360, 170, font2, black)
    delay (1000)
    startup
end surrender
proc split
    comptotal := 0
    splitbet := userbet
    chips := chips - splitbet
    wintype := "split"
    cls
    drawfillbox (10, 70, 450, 100, white)
    Draw.Text ("Bet Amount:", 150, 75, font1, black)
    Draw.Text (realstr (userbet, 6), 270, 75, font1, black)
    drawfillbox (700, 70, 780, 0, 53)
    Draw.Text ("Chips:", 710, 45, font1, white)
    Draw.Text (realstr (chips, 6), 700, 15, font1, black)
    Pic.Draw (table, 0, 198, picCopy)
    if card1 = 13 then
	splittotal1 := splittotal1 + 10
	if suit1 = 1 then
	    Pic.Draw (kings, 300, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (kingh, 300, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (kingd, 300, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (kingc, 300, 260, picCopy)
	end if
    elsif card1 = 12 then
	splittotal1 := splittotal1 + 10
	if suit1 = 1 then
	    Pic.Draw (queens, 300, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (queenh, 300, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (queend, 300, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (queenc, 300, 260, picCopy)
	end if
    elsif card1 = 11 then
	splittotal1 := splittotal1 + 10
	if suit1 = 1 then
	    Pic.Draw (jacks, 300, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (jackh, 300, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (jackd, 300, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (jackc, 300, 260, picCopy)
	end if
    elsif card1 = 10 then
	splittotal1 := splittotal1 + card1
	if suit1 = 1 then
	    Pic.Draw (tens, 300, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (tenh, 300, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (tend, 300, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (tenc, 300, 260, picCopy)
	end if
    elsif card1 = 9 then
	splittotal1 := splittotal1 + card1
	randint (suit1, 1, 4)
	if suit1 = 1 then
	    Pic.Draw (nines, 300, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (nineh, 300, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (nined, 300, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (ninec, 300, 260, picCopy)
	end if
    elsif card1 = 8 then
	splittotal1 := splittotal1 + card1
	if suit1 = 1 then
	    Pic.Draw (eights, 300, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (eighth, 300, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (eightd, 300, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (eightc, 300, 260, picCopy)
	end if
    elsif card1 = 7 then
	splittotal1 := splittotal1 + card1
	if suit1 = 1 then
	    Pic.Draw (sevens, 300, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (sevenh, 300, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (sevend, 300, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (sevenc, 300, 260, picCopy)
	end if
    elsif card1 = 6 then
	splittotal1 := splittotal1 + card1
	if suit1 = 1 then
	    Pic.Draw (sixs, 300, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (sixh, 300, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (sixd, 300, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (sixc, 300, 260, picCopy)
	end if
    elsif card1 = 5 then
	splittotal1 := splittotal1 + card1
	if suit1 = 1 then
	    Pic.Draw (fives, 300, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (fiveh, 300, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (fived, 300, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (fivec, 300, 260, picCopy)
	end if
    elsif card1 = 4 then
	splittotal1 := splittotal1 + card1
	if suit1 = 1 then
	    Pic.Draw (fours, 300, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (fourh, 300, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (fourd, 300, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (fourc, 300, 260, picCopy)
	end if
    elsif card1 = 3 then
	splittotal1 := splittotal1 + card1
	if suit1 = 1 then
	    Pic.Draw (threes, 300, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (threeh, 300, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (threed, 300, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (threec, 300, 260, picCopy)
	end if
    elsif card1 = 2 then
	splittotal1 := splittotal1 + card1
	if suit1 = 1 then
	    Pic.Draw (twos, 300, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (twoh, 300, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (twod, 300, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (twoc, 300, 260, picCopy)
	end if
    elsif card1 = 1 then
	splittotal1 := splittotal1 + 11
	ace := 1
	if suit1 = 1 then
	    Pic.Draw (ones, 300, 260, picCopy)
	elsif suit1 = 2 then
	    Pic.Draw (oneh, 300, 260, picCopy)
	elsif suit1 = 3 then
	    Pic.Draw (oned, 300, 260, picCopy)
	elsif suit1 = 4 then
	    Pic.Draw (onec, 300, 260, picCopy)
	end if
    end if
    if card2 = 13 then
	splittotal2 := splittotal2 + 10
	if suit2 = 1 then
	    Pic.Draw (kings, 400, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (kingh, 400, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (kingd, 400, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (kingc, 400, 260, picCopy)
	end if
    elsif card2 = 12 then
	splittotal2 := splittotal2 + 10
	if suit2 = 1 then
	    Pic.Draw (queens, 400, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (queenh, 400, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (queend, 400, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (queenc, 400, 260, picCopy)
	end if
    elsif card2 = 11 then
	splittotal2 := splittotal2 + 10
	if suit2 = 1 then
	    Pic.Draw (jacks, 400, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (jackh, 400, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (jackd, 400, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (jackc, 400, 260, picCopy)
	end if
    elsif card2 = 10 then
	splittotal2 := splittotal2 + card2
	if suit2 = 1 then
	    Pic.Draw (tens, 400, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (tenh, 400, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (tend, 400, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (tenc, 400, 260, picCopy)
	end if
    elsif card2 = 9 then
	splittotal2 := splittotal2 + card2
	if suit2 = 1 then
	    Pic.Draw (nines, 400, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (nineh, 400, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (nined, 400, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (ninec, 400, 260, picCopy)
	end if
    elsif card2 = 8 then
	splittotal2 := splittotal2 + card2
	if suit2 = 1 then
	    Pic.Draw (eights, 400, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (eighth, 400, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (eightd, 400, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (eightc, 400, 260, picCopy)
	end if
    elsif card2 = 7 then
	splittotal2 := splittotal2 + card2
	if suit2 = 1 then
	    Pic.Draw (sevens, 400, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (sevenh, 400, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (sevend, 400, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (sevenc, 400, 260, picCopy)
	end if
    elsif card2 = 6 then
	splittotal2 := splittotal2 + card2
	if suit2 = 1 then
	    Pic.Draw (sixs, 400, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (sixh, 400, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (sixd, 400, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (sixc, 400, 260, picCopy)
	end if
    elsif card2 = 5 then
	splittotal2 := splittotal2 + card2
	if suit2 = 1 then
	    Pic.Draw (fives, 400, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (fiveh, 400, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (fived, 400, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (fivec, 400, 260, picCopy)
	end if
    elsif card2 = 4 then
	splittotal2 := splittotal2 + card2
	if suit2 = 1 then
	    Pic.Draw (fours, 400, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (fourh, 400, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (fourd, 400, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (fourc, 400, 260, picCopy)
	end if
    elsif card2 = 3 then
	splittotal2 := splittotal2 + card2
	if suit2 = 1 then
	    Pic.Draw (threes, 400, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (threeh, 400, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (threed, 400, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (threec, 400, 260, picCopy)
	end if
    elsif card2 = 2 then
	splittotal2 := splittotal2 + card2
	if suit2 = 1 then
	    Pic.Draw (twos, 400, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (twoh, 400, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (twod, 400, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (twoc, 400, 260, picCopy)
	end if
    elsif card2 = 1 then
	splittotal2 := splittotal2 + 11
	ace2 := 1
	if suit2 = 1 then
	    Pic.Draw (ones, 400, 260, picCopy)
	elsif suit2 = 2 then
	    Pic.Draw (oneh, 400, 260, picCopy)
	elsif suit2 = 3 then
	    Pic.Draw (oned, 400, 260, picCopy)
	elsif suit2 = 4 then
	    Pic.Draw (onec, 400, 260, picCopy)
	end if
    end if
    if compcard1 = 13 then
	comptotal := comptotal + 10
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (kings, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (kingh, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (kingd, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (kingc, 360, 420, picCopy)
	end if
    elsif compcard1 = 12 then
	comptotal := comptotal + 10
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (queens, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (queenh, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (queend, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (queenc, 360, 420, picCopy)
	end if
    elsif compcard1 = 11 then
	comptotal := comptotal + 10
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (jacks, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (jackh, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (jackd, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (jackc, 360, 420, picCopy)
	end if
    elsif compcard1 = 10 then
	comptotal := comptotal + compcard1
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (tens, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (tenh, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (tend, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (tenc, 360, 420, picCopy)
	end if
    elsif compcard1 = 9 then
	comptotal := comptotal + compcard1
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (nines, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (nineh, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (nined, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (ninec, 360, 420, picCopy)
	end if
    elsif compcard1 = 8 then
	comptotal := comptotal + compcard1
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (eights, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (eighth, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (eightd, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (eightc, 360, 420, picCopy)
	end if
    elsif compcard1 = 7 then
	comptotal := comptotal + compcard1
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (sevens, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (sevenh, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (sevend, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (sevenc, 360, 420, picCopy)
	end if
    elsif compcard1 = 6 then
	comptotal := comptotal + compcard1
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (sixs, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (sixh, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (sixd, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (sixc, 360, 420, picCopy)
	end if
    elsif compcard1 = 5 then
	comptotal := comptotal + compcard1
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (fives, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (fiveh, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (fived, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (fivec, 360, 420, picCopy)
	end if
    elsif compcard1 = 4 then
	comptotal := comptotal + compcard1
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (fours, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (fourh, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (fourd, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (fourc, 360, 420, picCopy)
	end if
    elsif compcard1 = 3 then
	comptotal := comptotal + compcard1
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (threes, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (threeh, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (threed, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (threec, 360, 420, picCopy)
	end if
    elsif compcard1 = 2 then
	comptotal := comptotal + compcard1
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (twos, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (twoh, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (twod, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (twoc, 360, 420, picCopy)
	end if
    elsif compcard = 1 then
	comptotal := comptotal + 11
	randint (suit, 1, 4)
	compace := 1
	acecheck := 1
	if suit = 1 then
	    Pic.Draw (ones, 360, 420, picCopy)
	elsif suit = 2 then
	    Pic.Draw (oneh, 360, 420, picCopy)
	elsif suit = 3 then
	    Pic.Draw (oned, 360, 420, picCopy)
	elsif suit = 4 then
	    Pic.Draw (onec, 360, 420, picCopy)
	end if
    end if
    Pic.Draw (back, 380, 420, picCopy)
    drawfillbox (700, 160, 780, 230, 53)
    Draw.Text ("Comp:", 710, 205, font1, white)
    Draw.Text (realstr (comptotal, 6), 700, 175, font1, black)
    drawfillbox (700, 80, 780, 150, 53)
    drawfillbox (600, 80, 680, 150, 53)
    Draw.Text ("Total:", 610, 125, font1, white)
    Draw.Text (realstr (splittotal1, 6), 600, 95, font1, black)
    Draw.Text ("Total:", 710, 125, font1, white)
    Draw.Text (realstr (splittotal2, 6), 700, 95, font1, black)
    splithitorstand1
end split
proc double

    chips := chips - userbet
    userbet := userbet * 2
    drawfillbox (10, 70, 450, 100, white)
    Draw.Text ("Bet Amount:", 150, 75, font1, black)
    Draw.Text (realstr (userbet, 6), 270, 75, font1, black)
    drawfillbox (700, 70, 780, 0, 53)
    Draw.Text ("Chips:", 710, 45, font1, white)
    Draw.Text (realstr (chips, 6), 700, 15, font1, black)
    delay (1000)
    x := x + 20
    randint (doublecard, 1, 13)
    if doublecard = 13 then
	total := total + 10
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (kings, x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (kingh, x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (kingd, x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (kingc, x, 260, picCopy)
	end if
    elsif doublecard = 12 then
	total := total + 10
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (queens, x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (queenh, x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (queend, x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (queenc, x, 260, picCopy)
	end if
    elsif doublecard = 11 then
	total := total + 10
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (jacks, x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (jackh, x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (jackd, x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (jackc, x, 260, picCopy)
	end if
    elsif doublecard = 10 then
	total := total + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (tens, x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (tenh, x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (tend, x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (tenc, x, 260, picCopy)
	end if
    elsif doublecard = 9 then
	total := total + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (nines, x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (nineh, x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (nined, x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (ninec, x, 260, picCopy)
	end if
    elsif doublecard = 8 then
	total := total + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (eights, x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (eighth, x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (eightd, x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (eightc, x, 260, picCopy)
	end if
    elsif doublecard = 7 then
	total := total + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (sevens, x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (sevenh, x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (sevend, x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (sevenc, x, 260, picCopy)
	end if
    elsif doublecard = 6 then
	total := total + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (sixs, x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (sixh, x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (sixd, x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (sixc, x, 260, picCopy)
	end if
    elsif doublecard = 5 then
	total := total + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (fives, x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (fiveh, x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (fived, x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (fivec, x, 260, picCopy)
	end if
    elsif doublecard = 4 then
	total := total + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (fours, x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (fourh, x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (fourd, x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (fourc, x, 260, picCopy)
	end if
    elsif doublecard = 3 then
	total := total + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (threes, x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (threeh, x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (threed, x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (threec, x, 260, picCopy)
	end if
    elsif doublecard = 2 then
	total := total + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (twos, x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (twoh, x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (twod, x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (twoc, x, 260, picCopy)
	end if
    elsif doublecard = 1 then
	total := total + 11
	randint (suit, 1, 4)
	hitace := 1
	if suit = 1 then
	    Pic.Draw (ones, x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (oneh, x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (oned, x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (onec, x, 260, picCopy)
	end if
    end if
    if ace = 1 and total >= 22 then
	total := total - 10
    end if
    if ace2 = 1 and total <= 22 then
	total := total - 10
    end if
    if hitace = 1 and total >= 22 then
	total := total - 10
    end if
    drawfillbox (700, 160, 780, 230, 53)
    Draw.Text ("Comp:", 710, 205, font1, white)
    Draw.Text (realstr (comptotal, 6), 700, 175, font1, black)
    drawfillbox (700, 80, 780, 150, 53)
    Draw.Text ("Total:", 710, 125, font1, white)
    Draw.Text (realstr (total, 6), 700, 95, font1, black)
    wintype := "double"
    stand
end double
body proc hitorstand
    var button9 : int := GUI.CreateButton (500, 10, 85, "Hit(h)", hit)
    var button10 : int := GUI.CreateButton (595, 10, 85, "Stand(s)", stand)
    var button28 : int := GUI.CreateButton (500, 40, 85, "Forfeit(f)", surrender)
    if acecheck = 1 then
	var button12 : int := GUI.CreateButton (500, 70, 85, "Insure(i)", insurance)
    end if
    if total < 21 and userbet <= chips then
	var button27 : int := GUI.CreateButton (595, 40, 85, "Double(d)", double)
    end if
    if card1 = card2 and userbet <= chips then
	var button30 : int := GUI.CreateButton (595, 70, 85, "Split(p)", split)
    end if
    var chars : array char of boolean
    loop
	Input.KeyDown (chars)

	if chars ('h') then
	    delay (300)
	    hit
	end if
	if chars ('s') then
	    delay (300)
	    stand
	end if
	if chars ('d') and total < 21 and userbet <= chips then
	    delay (300)
	    double
	end if
	if chars ('f') then
	    delay (300)
	    surrender
	end if
	if chars ('i') then
	    delay (300)
	    insurance
	end if
	if chars ('p') and total < 21 and userbet <= chips then
	    delay (300)
	    split
	end if
	exit when GUI.ProcessEvent
    end loop
end hitorstand
proc hit1
    hit1x := hit1x - 20
    randint (hitcard, 1, 13)
    if hitcard = 13 then
	splittotal1 := splittotal1 + 10
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (kings, hit1x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (kingh, hit1x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (kingd, hit1x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (kingc, hit1x, 260, picCopy)
	end if
    elsif hitcard = 12 then
	splittotal1 := splittotal1 + 10
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (queens, hit1x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (queenh, hit1x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (queend, hit1x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (queenc, hit1x, 260, picCopy)
	end if
    elsif hitcard = 11 then
	splittotal1 := splittotal1 + 10
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (jacks, hit1x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (jackh, hit1x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (jackd, hit1x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (jackc, hit1x, 260, picCopy)
	end if
    elsif hitcard = 10 then
	splittotal1 := splittotal1 + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (tens, hit1x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (tenh, hit1x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (tend, hit1x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (tenc, hit1x, 260, picCopy)
	end if
    elsif hitcard = 9 then
	splittotal1 := splittotal1 + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (nines, hit1x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (nineh, hit1x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (nined, hit1x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (ninec, hit1x, 260, picCopy)
	end if
    elsif hitcard = 8 then
	splittotal1 := splittotal1 + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (eights, hit1x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (eighth, hit1x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (eightd, hit1x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (eightc, hit1x, 260, picCopy)
	end if
    elsif hitcard = 7 then
	splittotal1 := splittotal1 + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (sevens, hit1x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (sevenh, hit1x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (sevend, hit1x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (sevenc, hit1x, 260, picCopy)
	end if
    elsif hitcard = 6 then
	splittotal1 := splittotal1 + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (sixs, hit1x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (sixh, hit1x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (sixd, hit1x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (sixc, hit1x, 260, picCopy)
	end if
    elsif hitcard = 5 then
	splittotal1 := splittotal1 + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (fives, hit1x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (fiveh, hit1x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (fived, hit1x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (fivec, hit1x, 260, picCopy)
	end if
    elsif hitcard = 4 then
	splittotal1 := splittotal1 + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (fours, hit1x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (fourh, hit1x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (fourd, hit1x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (fourc, hit1x, 260, picCopy)
	end if
    elsif hitcard = 3 then
	splittotal1 := splittotal1 + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (threes, hit1x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (threeh, hit1x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (threed, hit1x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (threec, hit1x, 260, picCopy)
	end if
    elsif hitcard = 2 then
	splittotal1 := splittotal1 + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (twos, hit1x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (twoh, hit1x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (twod, hit1x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (twoc, hit1x, 260, picCopy)
	end if
    elsif hitcard = 1 then
	splittotal1 := splittotal1 + 11
	counter := counter + 1
	if counter = 1 then
	    hitace := 1
	elsif counter = 2 then
	    hitace2 := 1
	elsif counter = 3 then
	    hitace3 := 1
	elsif counter = 4 then
	    hitace4 := 1
	elsif counter = 5 then
	    hitace5 := 1
	elsif counter = 6 then
	    hitace6 := 1
	end if
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (ones, hit1x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (oneh, hit1x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (oned, hit1x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (onec, hit1x, 260, picCopy)
	end if
    end if

    if ace = 1 and splittotal1 >= 22 then
	splittotal1 := splittotal1 - 10
	ace := 0
    end if
    if hitace = 1 and splittotal1 >= 22 then
	splittotal1 := splittotal1 - 10
	hitace := 0
    elsif hitace2 = 1 and splittotal1 >= 22 then
	splittotal1 := splittotal1 - 10
	hitace2 := 0
    elsif hitace3 = 1 and splittotal1 >= 22 then
	splittotal1 := splittotal1 - 10
	hitace3 := 0
    elsif hitace4 = 1 and splittotal1 >= 22 then
	splittotal1 := splittotal1 - 10
	hitace4 := 0
    elsif hitace5 = 1 and splittotal1 >= 22 then
	splittotal1 := splittotal1 - 10
	hitace5 := 0
    elsif hitace6 = 1 and splittotal1 >= 22 then
	splittotal1 := splittotal1 - 10
	hitace6 := 0
    end if
    drawfillbox (700, 70, 780, 0, 53)
    Draw.Text ("Chips:", 710, 45, font1, white)
    Draw.Text (realstr (chips, 6), 700, 15, font1, black)
    drawfillbox (700, 160, 780, 230, 53)
    Draw.Text ("Comp:", 710, 205, font1, white)
    Draw.Text (realstr (comptotal, 6), 700, 175, font1, black)
    drawfillbox (700, 80, 780, 150, 53)
    drawfillbox (600, 80, 680, 150, 53)
    Draw.Text ("Total:", 610, 125, font1, white)
    Draw.Text (realstr (splittotal1, 6), 600, 95, font1, black)
    Draw.Text ("Total:", 710, 125, font1, white)
    Draw.Text (realstr (splittotal2, 6), 700, 95, font1, black)
    if splittotal1 = 21 then
	splithitorstand2
    elsif splittotal1 > 21 then
	splithitorstand2
    end if
    splithitorstand1
end hit1
proc double1
    chips := chips - userbet
    userbet := userbet * 2
    drawfillbox (10, 70, 450, 100, white)
    Draw.Text ("Bet Amount:", 150, 75, font1, black)
    Draw.Text (realstr (userbet, 6), 270, 75, font1, black)
    drawfillbox (700, 70, 780, 0, 53)
    Draw.Text ("Chips:", 710, 45, font1, white)
    Draw.Text (realstr (chips, 6), 700, 15, font1, black)
    delay (1000)
    hit1x := hit1x - 20
    randint (doublecard, 1, 13)
    if doublecard = 13 then
	splittotal1 := splittotal1 + 10
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (kings, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (kingh, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (kingd, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (kingc, hit1x, 260, picCopy)
	end if
    elsif doublecard = 12 then
	splittotal1 := splittotal1 + 10
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (queens, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (queenh, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (queend, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (queenc, hit1x, 260, picCopy)
	end if
    elsif doublecard = 11 then
	splittotal1 := splittotal1 + 10
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (jacks, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (jackh, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (jackd, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (jackc, hit1x, 260, picCopy)
	end if
    elsif doublecard = 10 then
	splittotal1 := splittotal1 + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (tens, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (tenh, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (tend, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (tenc, hit1x, 260, picCopy)
	end if
    elsif doublecard = 9 then
	splittotal1 := splittotal1 + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (nines, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (nineh, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (nined, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (ninec, hit1x, 260, picCopy)
	end if
    elsif doublecard = 8 then
	splittotal1 := splittotal1 + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (eights, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (eighth, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (eightd, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (eightc, hit1x, 260, picCopy)
	end if
    elsif doublecard = 7 then
	splittotal1 := splittotal1 + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (sevens, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (sevenh, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (sevend, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (sevenc, hit1x, 260, picCopy)
	end if
    elsif doublecard = 6 then
	splittotal1 := splittotal1 + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (sixs, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (sixh, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (sixd, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (sixc, hit1x, 260, picCopy)
	end if
    elsif doublecard = 5 then
	splittotal1 := splittotal1 + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (fives, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (fiveh, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (fived, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (fivec, hit1x, 260, picCopy)
	end if
    elsif doublecard = 4 then
	splittotal1 := splittotal1 + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (fours, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (fourh, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (fourd, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (fourc, hit1x, 260, picCopy)
	end if
    elsif doublecard = 3 then
	splittotal1 := splittotal1 + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (threes, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (threeh, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (threed, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (threec, hit1x, 260, picCopy)
	end if
    elsif doublecard = 2 then
	splittotal1 := splittotal1 + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (twos, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (twoh, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (twod, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (twoc, hit1x, 260, picCopy)
	end if
    elsif doublecard = 1 then
	splittotal1 := splittotal1 + 11
	randint (suit, 1, 4)
	hitace := 1
	if suit = 1 then
	    Pic.Draw (ones, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (oneh, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (oned, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (onec, hit1x, 260, picCopy)
	end if
    end if
    if ace = 1 and splittotal1 >= 22 then
	splittotal1 := splittotal1 - 10
    end if
    if ace2 = 1 and splittotal1 <= 22 then
	splittotal1 := splittotal1 - 10
    end if
    if hitace = 1 and splittotal1 >= 22 then
	splittotal1 := splittotal1 - 10
    end if
    drawfillbox (700, 70, 780, 0, 53)
    Draw.Text ("Chips:", 710, 45, font1, white)
    Draw.Text (realstr (chips, 6), 700, 15, font1, black)
    drawfillbox (700, 160, 780, 230, 53)
    Draw.Text ("Comp:", 710, 205, font1, white)
    Draw.Text (realstr (comptotal, 6), 700, 175, font1, black)
    drawfillbox (700, 80, 780, 150, 53)
    drawfillbox (600, 80, 680, 150, 53)
    Draw.Text ("Total:", 610, 125, font1, white)
    Draw.Text (realstr (splittotal1, 6), 600, 95, font1, black)
    Draw.Text ("Total:", 710, 125, font1, white)
    Draw.Text (realstr (splittotal2, 6), 700, 95, font1, black)
    splithitorstand2
end double1
proc hit2
    hit2x := hit2x + 20
    randint (hitcard, 1, 13)
    if hitcard = 13 then
	splittotal2 := splittotal2 + 10
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (kings, hit2x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (kingh, hit2x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (kingd, hit2x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (kingc, hit2x, 260, picCopy)
	end if
    elsif hitcard = 12 then
	splittotal2 := splittotal2 + 10
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (queens, hit2x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (queenh, hit2x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (queend, hit2x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (queenc, hit2x, 260, picCopy)
	end if
    elsif hitcard = 11 then
	splittotal2 := splittotal2 + 10
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (jacks, hit2x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (jackh, hit2x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (jackd, hit2x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (jackc, hit2x, 260, picCopy)
	end if
    elsif hitcard = 10 then
	splittotal2 := splittotal2 + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (tens, hit2x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (tenh, hit2x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (tend, hit2x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (tenc, hit2x, 260, picCopy)
	end if
    elsif hitcard = 9 then
	splittotal2 := splittotal2 + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (nines, hit2x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (nineh, hit2x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (nined, hit2x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (ninec, hit2x, 260, picCopy)
	end if
    elsif hitcard = 8 then
	splittotal2 := splittotal2 + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (eights, hit2x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (eighth, hit2x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (eightd, hit2x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (eightc, hit2x, 260, picCopy)
	end if
    elsif hitcard = 7 then
	splittotal2 := splittotal2 + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (sevens, hit2x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (sevenh, hit2x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (sevend, hit2x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (sevenc, hit2x, 260, picCopy)
	end if
    elsif hitcard = 6 then
	splittotal2 := splittotal2 + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (sixs, hit2x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (sixh, hit2x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (sixd, hit2x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (sixc, hit2x, 260, picCopy)
	end if
    elsif hitcard = 5 then
	splittotal2 := splittotal2 + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (fives, hit2x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (fiveh, hit2x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (fived, hit2x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (fivec, hit2x, 260, picCopy)
	end if
    elsif hitcard = 4 then
	splittotal2 := splittotal2 + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (fours, hit2x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (fourh, hit2x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (fourd, hit2x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (fourc, hit2x, 260, picCopy)
	end if
    elsif hitcard = 3 then
	splittotal2 := splittotal2 + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (threes, hit2x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (threeh, hit2x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (threed, hit2x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (threec, hit2x, 260, picCopy)
	end if
    elsif hitcard = 2 then
	splittotal2 := splittotal2 + hitcard
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (twos, hit2x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (twoh, hit2x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (twod, hit2x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (twoc, hit2x, 260, picCopy)
	end if
    elsif hitcard = 1 then
	splittotal2 := splittotal2 + 11
	counter := counter + 1
	if counter = 1 then
	    splithitace := 1
	elsif counter = 2 then
	    splithitace2 := 1
	elsif counter = 3 then
	    splithitace3 := 1
	elsif counter = 4 then
	    splithitace4 := 1
	elsif counter = 5 then
	    splithitace5 := 1
	elsif counter = 6 then
	    splithitace6 := 1
	end if
	randint (hitsuit, 1, 4)
	if hitsuit = 1 then
	    Pic.Draw (ones, hit2x, 260, picCopy)
	elsif hitsuit = 2 then
	    Pic.Draw (oneh, hit2x, 260, picCopy)
	elsif hitsuit = 3 then
	    Pic.Draw (oned, hit2x, 260, picCopy)
	elsif hitsuit = 4 then
	    Pic.Draw (onec, hit2x, 260, picCopy)
	end if
    end if
    if ace2 = 1 and splittotal2 >= 22 then
	splittotal2 := splittotal2 - 10
	ace2 := 0
    end if
    if splithitace = 1 and splittotal2 >= 22 then
	splittotal2 := splittotal2 - 10
	splithitace := 0
    elsif splithitace2 = 1 and splittotal2 >= 22 then
	splittotal2 := splittotal2 - 10
	splithitace2 := 0
    elsif splithitace3 = 1 and splittotal2 >= 22 then
	splittotal2 := splittotal2 - 10
	splithitace3 := 0
    elsif splithitace4 = 1 and splittotal2 >= 22 then
	splittotal2 := splittotal2 - 10
	splithitace4 := 0
    elsif splithitace5 = 1 and splittotal2 >= 22 then
	splittotal2 := splittotal2 - 10
	splithitace5 := 0
    elsif splithitace6 = 1 and splittotal2 >= 22 then
	splittotal2 := splittotal2 - 10
	splithitace6 := 0
    end if
    drawfillbox (700, 70, 780, 0, 53)
    Draw.Text ("Chips:", 710, 45, font1, white)
    Draw.Text (realstr (chips, 6), 700, 15, font1, black)
    drawfillbox (700, 160, 780, 230, 53)
    Draw.Text ("Comp:", 710, 205, font1, white)
    Draw.Text (realstr (comptotal, 6), 700, 175, font1, black)
    drawfillbox (700, 80, 780, 150, 53)
    drawfillbox (600, 80, 680, 150, 53)
    Draw.Text ("Total:", 610, 125, font1, white)
    Draw.Text (realstr (splittotal1, 6), 600, 95, font1, black)
    Draw.Text ("Total:", 710, 125, font1, white)
    Draw.Text (realstr (splittotal2, 6), 700, 95, font1, black)
    if splittotal1 = 21 then
	stand
    elsif splittotal1 > 21 then
	stand
    end if
end hit2
proc double2
    chips := chips - splitbet
    splitbet := splitbet * 2
    drawfillbox (10, 70, 450, 100, white)
    Draw.Text ("Bet Amount:", 150, 75, font1, black)
    Draw.Text (realstr (userbet, 6), 270, 75, font1, black)
    drawfillbox (700, 70, 780, 0, 53)
    Draw.Text ("Chips:", 710, 45, font1, white)
    Draw.Text (realstr (chips, 6), 700, 15, font1, black)
    delay (1000)
    hit2x := hit2x + 20
    randint (doublecard, 1, 13)
    if doublecard = 13 then
	splittotal2 := splittotal2 + 10
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (kings, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (kingh, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (kingd, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (kingc, hit1x, 260, picCopy)
	end if
    elsif doublecard = 12 then
	splittotal2 := splittotal2 + 10
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (queens, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (queenh, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (queend, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (queenc, hit1x, 260, picCopy)
	end if
    elsif doublecard = 11 then
	splittotal2 := splittotal2 + 10
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (jacks, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (jackh, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (jackd, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (jackc, hit1x, 260, picCopy)
	end if
    elsif doublecard = 10 then
	splittotal2 := splittotal2 + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (tens, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (tenh, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (tend, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (tenc, hit1x, 260, picCopy)
	end if
    elsif doublecard = 9 then
	splittotal2 := splittotal2 + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (nines, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (nineh, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (nined, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (ninec, hit1x, 260, picCopy)
	end if
    elsif doublecard = 8 then
	splittotal2 := splittotal2 + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (eights, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (eighth, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (eightd, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (eightc, hit1x, 260, picCopy)
	end if
    elsif doublecard = 7 then
	splittotal2 := splittotal2 + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (sevens, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (sevenh, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (sevend, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (sevenc, hit1x, 260, picCopy)
	end if
    elsif doublecard = 6 then
	splittotal2 := splittotal2 + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (sixs, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (sixh, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (sixd, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (sixc, hit1x, 260, picCopy)
	end if
    elsif doublecard = 5 then
	splittotal2 := splittotal2 + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (fives, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (fiveh, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (fived, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (fivec, hit1x, 260, picCopy)
	end if
    elsif doublecard = 4 then
	splittotal2 := splittotal2 + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (fours, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (fourh, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (fourd, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (fourc, hit1x, 260, picCopy)
	end if
    elsif doublecard = 3 then
	splittotal2 := splittotal2 + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (threes, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (threeh, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (threed, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (threec, hit1x, 260, picCopy)
	end if
    elsif doublecard = 2 then
	splittotal2 := splittotal2 + doublecard
	randint (suit, 1, 4)
	if suit = 1 then
	    Pic.Draw (twos, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (twoh, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (twod, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (twoc, hit1x, 260, picCopy)
	end if
    elsif doublecard = 1 then
	splittotal2 := splittotal2 + 11
	randint (suit, 1, 4)
	hitace := 1
	if suit = 1 then
	    Pic.Draw (ones, hit1x, 260, picCopy)
	elsif suit = 2 then
	    Pic.Draw (oneh, hit1x, 260, picCopy)
	elsif suit = 3 then
	    Pic.Draw (oned, hit1x, 260, picCopy)
	elsif suit = 4 then
	    Pic.Draw (onec, hit1x, 260, picCopy)
	end if
    end if
    if ace = 1 and splittotal2 >= 22 then
	splittotal2 := splittotal2 - 10
    end if
    if ace2 = 1 and splittotal2 <= 22 then
	splittotal2 := splittotal2 - 10
    end if
    if hitace = 1 and splittotal2 >= 22 then
	splittotal2 := splittotal2 - 10
    end if
    drawfillbox (700, 70, 780, 0, 53)
    Draw.Text ("Chips:", 710, 45, font1, white)
    Draw.Text (realstr (chips, 6), 700, 15, font1, black)
    drawfillbox (700, 160, 780, 230, 53)
    Draw.Text ("Comp:", 710, 205, font1, white)
    Draw.Text (realstr (comptotal, 6), 700, 175, font1, black)
    drawfillbox (700, 80, 780, 150, 53)
    drawfillbox (600, 80, 680, 150, 53)
    Draw.Text ("Total:", 610, 125, font1, white)
    Draw.Text (realstr (splittotal1, 6), 600, 95, font1, black)
    Draw.Text ("Total:", 710, 125, font1, white)
    Draw.Text (realstr (splittotal2, 6), 700, 95, font1, black)
    stand
end double2
body proc splithitorstand2
    var button34 : int := GUI.CreateButton (400, 230, 70, "Hit(h)", hit2)
    var button35 : int := GUI.CreateButton (400, 200, 70, "Stand(s)", stand)
    if splittotal2 < 21 and splitbet <= chips then
	var button36 : int := GUI.CreateButton (400, 170, 70, "Double(d)", double2)
    end if
    var chars : array char of boolean
    loop
	Input.KeyDown (chars)

	if chars ('h') then
	    delay (300)
	    hit
	end if
	if chars ('s') then
	    delay (300)
	    stand
	end if
	if chars ('d') and total < 21 and userbet <= chips then
	    delay (300)
	    double
	end if
	exit when GUI.ProcessEvent
    end loop
end splithitorstand2
body proc splithitorstand1
    var button31 : int := GUI.CreateButton (300, 230, 70, "Hit(h)", hit1)
    var button32 : int := GUI.CreateButton (300, 200, 70, "Stand(s)", splithitorstand2)
    if splittotal1 < 21 and userbet <= chips then
	var button33 : int := GUI.CreateButton (300, 170, 70, "Double(d)", double1)
    end if
    var chars : array char of boolean
    loop
	Input.KeyDown (chars)

	if chars ('h') then
	    delay (300)
	    hit
	end if
	if chars ('s') then
	    delay (300)
	    stand
	end if
	if chars ('d') and total < 21 and userbet <= chips then
	    delay (300)
	    double
	end if
	exit when GUI.ProcessEvent
    end loop
end splithitorstand1
procedure quitgame
    Window.Close (window1)
end quitgame
procedure instructions
    cls
    locate (5, 1)
    put "The goal of the game is to get as close to 21 as possible without going over."
    put ""
    put "For those who don't know how to play black jack, you are competing against the dealer to be as close to 21 without going over"
    put "if you go over 21, you lose."
    put "if you the sum of your cards is higher than the dealers without going over 21, then you win"
    put ""
    put "face cards are worth 10, aces are worth 11 or 1, and all other cards are worth their face value"
    put ""
    put "the dealer stands on when his cards add up to 17"
    put ""
    put "To play the game, go back to the menu and press play game, and enter how much money you want to play with"
    put "You can either hit or stand."
    put ""
    put "--Hit deals you one more card. You can hit as you like."
    put "--Stand ends your turn."
    put ""
    put "Whenever the sum of your cards reaches 21, it is called a Black Jack"
    put "Whenever you win against the dealer, you win double of what you bet."
    Font.Draw ("Instructions", 270, 560, font1, 240)
    var button4 : int := GUI.CreateButton (530, 40, 100, "Back to Main Menu", mainmenu)
    loop
	exit when GUI.ProcessEvent
    end loop
end instructions
process music_1
    loop
	Music.PlayFile ("music1.wav")
    end loop
end music_1
process music_2
    loop
	Music.PlayFile ("music2.wav")
    end loop
end music_2
process music_3
    loop
	Music.PlayFile ("music3.wav")
    end loop
end music_3
process music_4
    loop
	Music.PlayFile ("music4.wav")
    end loop
end music_4
proc music1
    fork music_1
    mainmenu
end music1
proc music2
    fork music_2
    mainmenu
end music2
proc music3
    fork music_3
    mainmenu
end music3
proc music4
    fork music_4
    mainmenu
end music4

body procedure mainmenu
    cls
    Draw.FillBox (0, 0, 800, 600, 53)
    Font.Draw ("BLACKJACK", 330, 395, font3, black)
    var button1 : int := GUI.CreateButton (350, 350, 100, "Play", startup)
    var button2 : int := GUI.CreateButton (350, 320, 100, "Instructions", instructions)
    var button3 : int := GUI.CreateButton (350, 290, 100, "Music", music)
    var button4 : int := GUI.CreateButton (350, 260, 100, "Quit", quitgame)
    loop
	exit when GUI.ProcessEvent
    end loop

end mainmenu
body procedure music
    cls
    Draw.FillBox (0, 0, 800, 600, 53)
    Font.Draw ("Pick a Song", 340, 560, font1, black)
    var button5 : int := GUI.CreateButton (280, 500, 250, "Clair de Lune", music1)
    var button6 : int := GUI.CreateButton (280, 470, 250, "Theme Song Heavy Metal Mashup", music2)
    var button7 : int := GUI.CreateButton (280, 440, 250, "iSpy", music3)
    var button11 : int := GUI.CreateButton (280, 410, 250, "Casino Music", music4)
    var button8 : int := GUI.CreateButton (280, 380, 250, "Back to Main Menu", mainmenu)

    loop
	exit when GUI.ProcessEvent
    end loop

end music
