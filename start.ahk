#Requires AutoHotkey v2.0
; this is the ahk v2 version of startup.ahk, replaced 2024.July.14

; recommended for new scripts due to its superior speed and reliability
SendMode("Input")  

; ensures a consistent starting directory.
SetWorkingDir(A_ScriptDir)


; from stackoverflow.com/questions/15706534/hotkey-to-restart-autohotkey-script
#SingleInstance Force
TraySetIcon("Shell32.dll", 25, 1)  ; tray icon!
TrayTip("AutoHotKey", "Started", 1)
SoundPlay("*16")


LCtrl::LAlt
LAlt::LCtrl

#WheelUp::Volume_Up
#WheelDown::Volume_Down

; date time replacements for sublime text logging
:*?:isod!@:: {
	Send(FormatTime(A_NOW, "hh:mm tt dddd, MMMM dd, yyyy") . "`n")
	Send(FormatTime(A_NOW, "[HHmm]") . "{U+2192}`t")
}

:*?:asdf!@:: {
	Send("[" . FormatTime(A_NOW, "HHmm") . "]-`t")
}

:*?:fdsa!@:: {
	Send("[?...]-`t")
}

:*?:kataware!@::`t0330{+}`n0530{+}`n0730{+}`n0930{+}`n1140{+}`n1330{+}`n1530{+}`n1730{+}`n1830{+}`n


; ? hotstring will be triggered even when it is inside another word
; 	no beginning character is needed to trigger
; * ending char (space, enter) not required to trigger
; c case sensitive

; words

; chinese
:*?:dtc!@::{U+6D1E}{U+5EAD}{U+6625}			;洞庭春
:*?:xbc!@::{U+5C0F}{U+767D}{U+83DC}			;小白菜
:*?:kxc!@::{U+7A7A}{U+5FC3}{U+83DC}			;空心菜
:*?:yc!@::{U+6CB9}{U+83DC}					;油菜
:*?:tonghao!@::{U+833C}{U+84BF}				;茼蒿
:*?:yeye!@::{U+7237}{U+7237}				;爷爷
:*?:nainai!@::{U+5976}{U+5976}				;奶奶
	
:*?:dist!@::distribution					;distribution
:*?:bern!@::Bernoulli						;Bernoulli
:*?:hyp!@::hypergeometric					;hypergeometric
:*?:kur!@::kurzgesagt						;kurzgesagt
:*?:maa!@::man-at-arms						;man-at-arms
:*?:pfkm!@::Pathfinder Kingmaker			;Pathfinder Kingmaker
:*?:dvr!@::davinci resolve					;davinci resolve
:*?:hk!@::hollow knight						;hollow knight
:*?:totk!@::Tears of the Kingdom			;Tears of the Kingdom
:*?:khan!@::Khan Academy					;Khan Academy
		
:*?:brk!@::<br/>							;<br/>
:*?:popo!@::{+}1`/`{+}1						;+1/+1
:*?:momo!@::`-1/-1							;-1/-1
:*?:emdash!@::{U+2014}						;—
		
:*?:circleleft::{U+2B88}					;⮈
:*?:circleright::{U+2B8A}					;⮊
:*?:>>>::{Asc 0187}							;»
:*?:>>!@::{Asc 0187}						;»
:*?:<<<::{Asc 0171}							;«
:*?:<<!@::{Asc 0171}						;«
:*?:>.::{U+279C}							;➜ heavy round-tipped, dingbats
:*?:<.::{U+2190}							;← 🠔 🠘 ⭠ ⮈
:*?:.>::{U+2192}							;→ 🠖 🠚 ⭢ ⮊
:*?:,>::{U+1F81A}							;🠚
:*:up!@::{U+2191}							;↑
:*?:down!@::{U+2193}						;↓

:*?:brackets!@::{U+300C}  {U+300D}{left 2}	;「  」
:*?:--!@::{Asc 0172} 						;¬
:*?:copyright!@::{Asc 0174}					;®
:*?:trademark!@::{Asc 0153}					;™

; greek 
:*c?:Phy!@::{U+03D5}					;ϕ but not Φ
:*?:Phi!@::{U+03A6}						;Φ
; :*?:Tau!@::{U+1D70F}					;𝜏
:*?:tau!@::{U+03C4}						;τ	
:*?:alpha!@::{U+03B1}					;α
:*?:beta!@::{U+03B2}					;β
:*?:gamma!@::{U+03B3}					;γ
:c*?:delta!@::{U+03B4}					;δ
:c*?:Delta!@::{U+0394}					;Δ
:*?:epsilon!@::{U+03B5}					;ε; → :*?:epsilon::{U+1D4B}
:*?:zeta!@::{U+03B6}					;ζ
;:*?:eta!@::{U+03B7}					;η interferes with theta
:c*?:theta!@::{U+03B8}					;θ
:c*?:Theta!@::{U+0398}					;Θ
:*?:kappa!@::{U+03BA}					;κ
:*?:lambda!@::{U+03BB}					;λ
:*?:mu!@::{U+03BC}						;μ
:*?:mean!@::{U+03BC}					;μ
:*?:xi!@::{U+03BE}						;ξ
:*?:pi!@::{U+03C0}						;π
:*?:rho!@::{U+03C1}						;ρ

:c*?:sigma!@::{U+03C3}					;σ
:c*?:stdev!@::{U+03C3}					;σ
:c*?:Sigma!@::{U+03A3}					;Σ
:*?:psi!@::{U+03C8}						;ψ
:*?:phi!@::{U+03C6}						;ϕ
:c*?:omega!@::{U+03C9}					;ω
:c*?:Omega!@::{U+2126}					;Ω
:c*?:ohm!@::{U+2126}					;Ω

;this was used in FFXIV	
:*?:xivhq!@::{U+E03C} 					;
:*?:xivlv!@::{U+E06A}	
:*?:xivheart!@::{U+2665}				;♥

; mathy things
:*?:ppd!@::{U+27C2} 					;⟂
:*?:deg!@::{Asc 0186}					;º
:*?:degrees!@::{Asc 0186}				;º
:*?:faren!@::{Asc 0186}F				;ºF
:*?:celsius!@::{Asc 0186}C				;ºC
:*?:sqrt!@::{U+221A}					;√
:*?:3rt!@::{U+221B}						;∛
:*?:4rt!@::{U+221C}						;∜
:*?:inf!@::{U+221E}						;∞
:*?:integral!@::{U+222B}				;∫
:*?:calc!@::{U+222B}					;∫
:*?:divide!@::{U+00F7}					;÷
:*?:!=!@::{U+2260}						;≠
:*?:gte!@::{U+2265}						;≥
:*?:lte!@::{U+2264}						;≤

:*?:zero!@::{U+30}{U+FE0F}{U+20E3}		;0️⃣
:*?:one!@::{U+31}{U+FE0F}{U+20E3}		;1️⃣
:*?:two!@::{U+32}{U+FE0F}{U+20E3}		;2️⃣
:*?:three!@::{U+33}{U+FE0F}{U+20E3}		;3️⃣
:*?:four!@::{U+34}{U+FE0F}{U+20E3}		;4️⃣
:*?:five!@::{U+35}{U+FE0F}{U+20E3}		;5️⃣
:*?:six!@::{U+36}{U+FE0F}{U+20E3}		;6️⃣
:*?:seven!@::{U+37}{U+FE0F}{U+20E3}		;7️⃣
:*?:eight!@::{U+38}{U+FE0F}{U+20E3}		;8️⃣
:*?:nine!@::{U+39}{U+FE0F}{U+20E3}		;9️⃣
:*?:ten!@::{U+1F51F}					;🔟
:*?:oncurve!@::{U+2934}{U+FE0F}			;⤴️
:*?:onc!@::{U+2934}{U+FE0F}				;⤴️

:*?:1//10::{U+2152}
:*?:1//8::{U+215B}
:*?:3//8::{U+215C}
:*?:5//8::{U+215D}
:*?:7//8::{U+215E}
:*?:1//9::{U+2151}
:*?:1//7::{U+2150}
:*?:1//5::{U+2155}
:*?:1//4::{U+00BC}
:*?:1//3::{U+2153}
:*?:2//5::{U+2156}
:*?:1//2::{U+00BD}
:*?:3//5::{U+2157}
:*?:2//3::{U+2154}
:*?:3//4::{U+00BE}
:*?:4//5::{U+2158}
:*?:5//6::{U+215A}

;mathjax
:*?:ncr!@::\(_{{}n{}}C_{{}r{}}\)			;\(_{n}C_{r}\)
:*?:npr!@::\(_{{}n{}}P_{{}r{}}\)			;\(_{n}P_{r}\)
:*?:frac!@::\frac{{}{}}{{}{}}{left 3}		;\frac{}{}

; proofy things
:*?:there exists!@::{U+2203}		;∃
:*?:for all!@::{U+2200}				;∀
:*?:element of!@::{U+2208}			;∈
:*?:subset!@::{U+2282}				;⊂
:*?:therefore!@::{U+2234}			;∴
:*?:proportional!@::{U+221D}		;∝
:*?:lte!@::{U+2264}					;≤
:*?:gte!@::{U+2265}					;≥
:*?:reals!@::{U+211D}				;ℝ
:*?:complex!@::{U+2102}				;ℂ
:*?:field!@::{U+1D53D}				;𝔽

; superscript 0-9, i, n, +, -
:?*:^^1::{U+00B9} 					;¹
:?*:^^2::{U+00B2}	
:?*:^^3::{U+00B3}					;³
:?*:^^0::{U+2070}	
:?*:^^i::{U+2071}	
:?*:^^4::{U+2074}					;⁴
:?*:^^5::{U+2075}	
:?*:^^6::{U+2076}	
:?*:^^7::{U+2077}	
:?*:^^8::{U+2078}	
:?*:^^9::{U+2079}	
:?*:^^n::{U+207F}					;ⁿ
:?*:^^k::{U+1D4F}					;ᵏ
:?*:^^+::{U+207A}	
:?*:^^-::{U+207B} 					;⁻
:?*:^^st::{U+02E2}{U+1D57}			;ˢᵗ
;:?*:^^nd::{U+207F}{U+1D48}			;ⁿᵈ
:?*:^^rd::{U+02B3}{U+1D48}			;ʳᵈ
:?*:^^th::{U+1D57}{U+02B0}			;ᵗʰ
; subscript 0-9
:?*:___0::{U+2080} 					;₀
:?*:___1::{U+2081}
:?*:___2::{U+2082}
:?*:___3::{U+2083}
:?*:___4::{U+2084}
:?*:___5::{U+2085}
:?*:___6::{U+2086}
:?*:___7::{U+2087}
:?*:___8::{U+2088}
:?*:___9::{U+2089}

; subscript letters
:?*:___-::{U+208B} 					;₋
:?*:___+::{U+208A} 					;₊

:?*:___a::{U+2090} 					;ₐ
:?*:___e::{U+2091}
:?*:___h::{U+2095}
:?*:___k::{U+2096}
:?*:___l::{U+2097}
:?*:___m::{U+2098}
:?*:___n::{U+2099}
:?*:___o::{U+2092}
:?*:___p::{U+209A}
:?*:___s::{U+209B}
:?*:___t::{U+209C}
:?*:___x::{U+2093}
:?*:___v::{U+1D65}					;
;:*?:___ə::{U+2094}
:?*:___i::{U+1D62}					;ᵢ
:?*:___r::{U+1D63}					;ᵣ
:?*:___u::{U+1D64}					;ᵥ
:?*:___i::{U+1D62}					;

; logic gates
:*?:xor!@::{U+2295}					;⊕
:*?:xorv!@::{U+22BB}				;⊻
:*?:nand!@::{U+22BC}				;⊼
;:*?:nand2!@::{U+22BC}{U+00B2}		;⊼²
:*?:nand2!@::{U+22BC}{U+2082}		;⊼²
:*?:nor!@::{U+22BD}					;⊽
:*?:conjunction!@::{U+22C0}			;⋀
:*?:disjunction!@::{U+22C1}			;⋁
:*?:intersection!@::{U+22C2}		;⋂
:*?:union!@::{U+22C3}				;⋃
:*?:diamond!@::{U+22C4}				;⋄
:*?:dot!@::{U+22C5}					;⋅


:*?:lh!@::lol.himura1rk							;
:*?:deerp!@::deerliberatepractice				;
:*?:kf!@::kiwifruitiwi							;
:*?:kao!@::kaorufruitaru						;
:*?:kyr!@::kyruru@gmail.com						;kyruru@gmail.com
:*?:aer!@::aeruru@gmail.com						;aeruru@gmail.com
:*?:ca+::chibi.aegis{+}@gmail.com{left 10}		;chibi.aegis+@gmail.com
:*?:cr+::chibi.rosalyn{+}@gmail.com{left 10}	;chibi.rosalyn+@gmail.com
:*?:car+::chibi.arky{+}@gmail.com{left 10}		;chibi.arky+@gmail.com
:*?:zt+::zane.tian{+}@gmail.com{left 10}		;zane.tian+@gmail.com
:*?:zta!@::zane.tian{+}acceptance@gmail.com		;zane.tian+@gmail.com
:*?:zt!@::zane.tian@gmail.com					;zane.tian@gmail.com
:*?:cb!@::cody.bearba@gmail.com					;cody.bearba@gmail.com
:*?:wt!@::winry.tian@gmail.com					;winry.tian@gmail.com
:*?:tt!@::triforce.tofu@gmail.com				;triforce.tofu@gmail.com
:*?:@@g::@gmail.com								;@gmail.com
:*?:c.a::chibi.aigis							;chibi.aigis
:*?:mahz::ma.himura1rk


:*?:jc!@::**JackCompiler**						;**JackCompiler**
:*?:jcbat::.{/}JackCompiler.bat{space}			;./JackCompiler.bat
:*?:vmt!@::{U+22BC}{U+00B2}.vmTp8 				;⊼².vmTp8
;:*?:nand2v!@::{U+22BC}{U+00B2}.{U+1F4F9}  		;⊼².📹
:*?:n2v!@::{U+22BC}{U+2082}.{U+1F4F9}  			;⊼₂.📹
:*?:plv!@::{U+03BB}{U+1D43}.{U+1F4F9}  			;λᵃ.📹
:*?:calcv!@::{U+222B}.{U+1F4F9}				  	;∫.📹


; magic arena
:*?:arena!@::{U+1F9B9}{U+1D2C}{U+1D3F}{U+1D31}{U+1D3A}{U+1D2C} 			;🦹ᴬᴿᴱᴺᴬ
:*?:ltr!@::{U+1F48D}{U+1D38}{U+1D40}{U+1D3F}							;💍ᴸᵀᴿ
:*?:woe!@::{U+1F341}{U+1D42}{U+1D3C}{U+1D31}							;🍁ᵂᴼᴱ
:*?:wot!@::{U+1F342}{U+1D42}{U+1D3C}{U+1D40}							;🍂ᵂᴼᵀ
:*?:mkm!@::{U+1F5E1}{U+FE0F}{U+1D39}{U+1D37}{U+1D39}					;🗡️ᴹᴷᴹ
:*?:otj!@::{U+1F9B9}{U+200D}{U+2642}{U+FE0F}{U+1D3C}{U+1D40}{U+1D36}	;🦹‍♂️ᴼᵀᴶ
:*?:blb!@::{U+1F341}{U+1D2F}{U+1D38}{U+1D2F}							;🍁ᴯᴸᴯ
:*?:mh3!@::{U+1F419}{U+1D39}{U+1D34}{U+00B3}							;🐙ᴹᴴ³
; this capital C is too large ᶫᴸꟲᴵᶦ	
:*:ix!@::{U+1F9ED}{U+1D38}{U+A7F2}{U+1D35} 								;🧭ᴸꟲᴵ
:*?:lci!@::{U+1F9ED}{U+029F}{U+1D04}{U+026A}							;🧭ʟᴄɪ
:*?:wm!@::{U+1F342}{U+1D39}{U+02B8}{U+1D40}{U+1D34}						;🍂ᴹʸᵀᴴ


; special vowels
:*?:grish!@::Grishn{U+00E1}kh			;Grishnákh
:*?:ugluk!@::Ugl{U+00FA}k				;Uglúk
:*?:mauhur!@::Mauh{U+00FA}r				;Mauhúr
:*?:tinu!@::Tin{U+00FA}viel				;Tinúviel
:*?:nazgul!@::Nazg{U+00FB}l				;Nazgûl
:*?:eowyn!@::{U+00C9}owyn				;Éowyn
:*?:eomer!@::{U+00C9}omer				;Éomer
:*?:theoden!@::Th{U+00E9}oden			;Théoden
:*?:orien!@::{U+00F3}rien				;órien
:*?:gloin!@::Gl{U+00F3}in				;Glóin
:*?:grima!@::Gr{U+00ED}ma				;Gríma
:*?:undo!@::Und{U+00F3}miel				;Undómiel
:*?:anduril!@::And{U+00FA}ril			;Andúril
:*?:barad!@::Barad-d{U+00FB}r			;Barad-dûr
:*?:smeagol!@::Sm{U+00E9}agol			;Sméagol
:*?:dune!@::D{U+00FA}nedain				;Dúnedain
:*?:troll!@::Troll of Khazad-d{U+00FB}m	;Troll of Khazad-dûm

; 🛩️🛻 🇷🇵 🇱🇪🇦🇬🇺🇪 💮💠🧸
; fire emblem: engage
:*?:celine!@::C{U+00E9}line				;Céline
:*?:chloe!@::Chlo{U+00E9}				;Chloé
:*?:rag!@::ragnar{U+00F6}k				;ragnarök
;:*?:rr!@::repairandrecharge			;repairandrecharge
:*?:saute!@::saut{U+00E9}				;sauté

:*?:wdis!@::{U+1F405}{U+2190}{U+1F4FF}		;🐅←📿
:*?:cdis!@::{U+1F994}{U+2190}{U+1F4FF}		;🦔←📿


:*?:rstretch!@::{U+1F3F3}{U+FE0F}{U+200D}{U+1F308}{U+1F9D8}{U+1F3FD} ;🏳️‍🌈🧘🏽
:*?:stand!@::{U+1F9CD}{U+1F3FD}{U+200D}{U+2642}{U+FE0F} 			;🧍🏽‍♂️
:*?:walk!@::{U+1F6B6}{U+1F3FD}{U+200D}{U+2640}						;🚶🏽‍♀
:*?:heartflame!@::{U+2764}{U+200D}{U+1F525}							;❤‍🔥

:*?:pig!@::{U+208D}{U+1422}{U+FF65}{U+2687}{U+FF65}{U+1422}{U+208E} ;₍ᐢ･⚇･ᐢ₎
:*?:o.o!::{Asc 0242}.{Asc 0243}			;ò.ó
:*?:bearjp!@::{U+1D16}{U+1D25}{U+1D16}	;ᴖᴥᴖ
:*?:>><::>.<

;coding
:*?:sys!@::System.out.println();{left 2}
;:*?:commenti!@::/*`t`n{left 1}			;comment block, intellij auto
;:*?:commentdoc!@::/**`t`n{left 1}		;doc comment
:*?:commentb!@::/*`t`n */{left 4}		;comment block
:*?:comment!@::/*  */{left 3}			;inline comment
:*?:mlcom!@::(*  *){left 3}				;inline comment: st4 sml
:*?:code!@::<span class="code">			;code span
:*?:codediv!@::<div class="code">		;code div
:*?:jsprint!@::console.log(``${{}{}}``){left 3}

; ⊼ [ᴛᴜʀɪɴɢ ᴄᴏᴍᴘʟᴇᴛᴇ]
; 🅐🅡🅔🅝🅐
;🚅

; github autocompletion
:*?:u17!@::git add .; git commit -m "update 17L data"; git push
:*?:glo!@::git log --oneline
:*?:gds!@::git diff --staged
:*?:gcm!@::git commit -m ""{left 1}
:*?:gcd!@::git commit --date=" days ago" -m ""{left 16}
:*?:gca!@::git commit --amend -m ""{left 1}
:*?:gkf!@::github.com/kiwi-fruitiwi
:*?:gwf!@::github.com/winry-fruitiwi
:*?:gcb!@::github.com/cody-berry
:*?:kiwijs!@::C:\Users\kiwi\Dropbox\code\javascript\kiwi\
:*?:kiwipy!@::C:\Users\kiwi\Dropbox\code\python\kiwi

; music
:*?:space!@::{U+23B5}			;⎵
:*?:flat!@::{U+266D}			;♭
:*?:sharp!@::{U+266F}			;♯
:*?:natural!@::{U+266E}			;♮

; misc
:*?:12!@::{U+2610}{SPACE}		;☐
:*?:123!@::{U+2612}{SPACE}		;☒
:*?:blender!@::{U+25C8}			;◈
:*?:rook!@::{U+265C}			;♜
:*?:chess!@::{U+2658}			;♘
:*?:knight!@::{U+2658}			;♘♞
;:*?:xiv!@::{U+246D}				;⑭
:*?:ae!@::{U+00E6}				;æ
:*?:AE!@::{U+00C6}				;Æ


; spreadsheet for physics and math
:*?:filmcamera!@::{U+1F4FD}				;📽
:*?:resolve!@::{U+1F4FD}				;📽
:*?:video!@::{U+1F4F9}					;📹
:*?:d6!@::{U+1F3B2}						;🎲
;:*?:pset!@::{U+1F3B2}					;🎲 a repeat of d6
:*?:paper!@::{U+1F4C3}					;📃
:*?:scroll!@::{U+1F4DC}					;📜

; emoji
:*?:bigheart!@::{U+2661}				;♡
:*?:glowheart!@::{U+1F497} 				;💗
:*?:sparkleheart!@::{U+1F496}			;💖
:*?:heart!@::{U+2764}					;❤
:*?:snake!@::{U+1F40D}					;🐍
:*?:snail!@::{U+1F40C}					;🐌
:*?:calendar!@::{U+1F4C5}				;📅
:*?:giraffe!@::{U+1F992}				;🦒
:*?:parrot!@::{U+1F99C}					;🦜
:*?:pear!@::{U+1F350}					;🍐
:*?:horse!@::{U+1F40E}					;🐎
:*?:rapid!@::{U+1F40E}					;🐎
:*?:whale!@::{U+1F433}					;🐳
:*?:star!@::{U+1F31F}					;🌟
:*?:jax!@::{U+1F31F}					;🌟
:*?:bee!@::{U+1F41D}					;🐝
:*?:apico!@::apico{U+1F41D}				;🐝
:*?:wrench!@::{U+1F527}					;🔧
:*?:mech!@::{U+1F527}					;🔧 ← mechanics, i.e. ffxiv
:*?:tools!@::{U+1F6E0}					;🛠
:*?:eagle!@::{U+1F985}					;🦅
:*?:bullettrain!@::{U+1F684}			;🚄
:*?:train!@::{U+1F682}					;🚂
:*?:blitz!@::{U+26A1}					;⚡
:*?:music!@::{U+1F3B6}					;🎶
:*?:joker!@::{U+1F0CF}					;🃏
:*?:mtg!@::{U+1F3B4}					;🎴
:*?:magic!@::{U+1F3B4}					;🎴
:*?:anki!@::{U+1F4C7}					;📇
:*?:galaxy!@::{U+1F30C}					;🌌
:*?:package!@::{U+1F4E6}				;📦
:*?:box!@::{U+1F4E6}					;📦
:*?:boxes!@::{U+1F4E6}{U+00B2}			;📦²
:*?:rocket!@::{U+1F680}					;🚀
:*?:steak!@::{U+1F969}					;🥩
:*?:butter!@::{U+1F9C8}					;🧈
:*?:piano!@::{U+1F3B9}					;🎹
:*?:exercise!@::{U+1F3CB}{U+1F3FD}		;🏋🏽
:*?:meditate!@::{U+1F9D8}{U+1F3FD}		;🧘🏽
:*?:nani!@::{U+2753}					;❓
:*?:question!@::{U+2754}				;❔
:*?:hotkey!@::{U+2328}					;⌨
:*?:neo!@::{U+1F3EF}					;🏯
:*?:bread!@::{U+1F35E}					;🍞
:*?:egg!@::{U+1F95A}					;🥚
:*?:rabbit!@::{U+1F407}					;🐇
:*?:discipline!@::{U+1F4FF}				;📿
:?:dis!@::{U+1F4FF}						;📿
;:*?:war!@::{U+1FA96}					;🪖 → 🪓
:*?:credit!@::{U+1F4B3}					;💳
:*?:buy!@::{U+1F4B3}					;💳
:*?:purchase!@::{U+1F4B3}				;💳
:*?:puzzle!@::{U+1F9E9}					;🧩
:*?:learn!@::{U+1F393}					;🎓
:*?:lesson!@::{U+1F393}					;🎓
:*?:coffee!@::{U+2615}					;☕
:*?:pill!@::{U+1F48A}					;💊
:*?:kiwi!@::{U+1F95D}					;🥝
:*:apple!@::{U+1F34E}					;🍎 ; removed '?' due to pineapple
:*?:tot!@::{U+1F954}					;🥔
:*?:idea!@::{U+1F4A1}					;💡
:*?:lightbulb!@::{U+1F4A1}				;💡
:*?:abacus!@::{U+1F9EE}					;🧮
:*?:versus!@::{U+1F19A}					;🆚
:*?:vs!@::{U+1F19A}						;🆚
:*?:icecube!@::{U+1F9CA}				;🧊
:*?:openbook!@::{U+1F4D6}				;📖
:*?:books!@::{U+1F4DA}					;📚
:*?:test!@::{U+1F94B}					;🥋
:*?:min!@::{U+231A}						;⌚
:*?:time!@::{U+231A}					;⌚
:*?:clock!@::{U+1F570}					;🕰
:*?:party!@::{U+1F389}					;🎉
:*?:trash!@::{U+1F6AE}					;🚮
:*?:forge!@::{U+1F525}					;🔥
:*?:fire!@::{U+1F525}					;🔥
:*?:polish!@::{U+1F48E}					;💎
:*?:gem!@::{U+1F48E}					;💎
:*?:sun!@::{U+2600}{U+FE0F}				;☀
:*?:daily!@::{U+1F324}{U+FE0F}			;🌤️
:*?:warcry!@::{U+1FAB6}					;🪶
:*?:journal!@::{U+1FAB6}				;🪶
:*?:feather!@::{U+1FAB6}				;🪶
:*?:reflect!@::{U+1FAB6}				;🪶
:*?:candle!@::{U+1F56F}					;🕯
:*?:investigate!@::{U+1F50D}			;🔍
:*?:lookinto!@::{U+1F50E}				;🔎
:*?:coin!@::{U+1FA99}					;🪙
:*?:gold!@::{U+1FA99}					;🪙
:*?:atom!@::{U+269B}					;⚛
:*?:mirror!@::{U+1FA9E}					;🪞
:*?:bath!@::{U+1F6C0}{U+1F3FD}			;🛀🏽
:*?:camera!@::{U+1F4F7}					;📷
:*?:cameraf!@::{U+1F4F8}				;📸
:*?:compass!@::{U+1F9ED}				;🧭
:*?:tutorial!@::{U+1F9ED}				;🧭
:*?:bacon!@::{U+1F953}					;🥓
:*?:gaming!@::{U+1F3AE}					;🎮
:*?:echoes!@::chained {U+1F517} echoes	;chained 🔗 echoes
:*?:helmet!@::{U+1FA96}					;🪖
:*?:valk!@::valkyria {U+26D1}{U+FE0F}	;valkyria ⛑️
:*?:lotion!@::{U+1F9F4}					;🧴
:*?:bank!@::{U+1F3E6}					;🏦
:*?:acro!@::{U+1F3DB}					;🏛
:*?:history!@::{U+1F3DB}				;🏛
:*?:philo!@::{U+1F3DB}					;🏛, for philosophy
:*?:beetle!@::{U+1FAB2}					;🪲
:*?:grub!@::{U+1F41B}					;🐛
;:*?:ladybug!@::{U+1F41E}				;🐞 collision with discordBug
:*?:depart!@::{U+1F6EB}					;🛫
:*?:dna!@::{U+1F9EC}					;🧬
:*?:house!@::{U+1F3E0}					;🏠
:*?:shophie!@::{U+1F3E0}				;🏠
:*?:tohru!@::{U+1F699}					;🚙
:*?:broom!@::{U+1F9F9}					;🧹
:*?:clean!@::{U+1F9F9}					;🧹
:*?:aerry!@::{U+1F437}					;🐷
:*?:fates!@::{U+269C}{U+FE0F}			;⚜️
:*?:engage!@::{U+269C}{U+FE0F}			;⚜️
:*?:moon!@::{U+1F31C}					;🌜
:*?:leopard!@::{U+1F406}				;🐆
:*?:tiger!@::{U+1F42F}					;🐯
:*?:winry!@::{U+1F405}					;🐅
:*?:tiggy!@::{U+1F405}					;🐅
:*?:link!@::{U+1F517}					;🔗
:*:tc!@::{U+22BC}{U+1D57}{U+1D9C}		;⊼ᵗᶜ
:*?:bearcut!@::{U+1F488}				;💈
:*?:temper!@::{U+2744}{U+FE0F}			;❄️
;:*?:log!@::{U+1FAB5}					;🪵
:*?:rock!@::{U+1FAA8}					;🪨
:*?:hoggy!@::{U+1F994}					;🦔
:*?:igel!@::{U+1F994}					;🦔
:*?:cody!@::{U+1F994}					;🦔
:*?:wave!@::{U+1F30A}					;🌊
:*?:compress!@::{U+1F30A}				;🌊
:*?:water!@::{U+1F4A7}					;💧
:*?:hydrate!@::{U+1F4A7}				;💧
:*?:childrenxing!@::{U+1F6B8}			;🚸
:*?:shield!@::{U+1F6E1}{U+FE0F}			;🛡️
:*?:tankb!@::{U+1F6E1}{U+FE0F}			;🛡 ←tankbuster
:*?:tears!@::{U+1F6E1}{U+FE0F}			;🛡 ←tears of the kingdom
:*?:aoe4!@::{U+1F6E1}{U+FE0F}{U+2074}	;🛡⁴
:*?:sage!@::{U+2728}					;✨
:*?:sparkle!@::{U+2728}					;✨
:*?:dust!@::{U+2728}					;✨
:*?:warning!@::{U+26A0}{U+FE0F}			;⚠
:*?:bear!@::{U+1F43B}					;🐻
:*?:bears!@::{U+1F43B}{U+00B2}			;🐻²
:*?:kids!@::{U+1F43B}{U+00B3}			;🐻³
:*?:panda!@::{U+1F43C}					;🐼
:*?:polar!@::{U+1F43B}{U+200D}{U+2744}{U+FE0F} ;🐻‍❄️
:*?:magnet!@::{U+1F9F2}					;🧲
:*?:phone!@::{U+260E}					;☎
:*?:call!@::{U+260E}					;☎
:*?:network!@::{U+1F4F6}				;📶
:*?:blow!@::{U+1F4A8}					;💨
:*?:feature!@::{U+1F3D7}{U+FE0F}		;🏗
:*?:repair!@::{U+1F527}					;🔧
:*?:unlock!@::{U+1F513}					;🔓
:*?:hammer!@::{U+1F528}					;🔨
:*?:clips!@::{U+1F587}					;🖇
:*?:paintbrush!@::{U+1F58C}				;🖌
:*?:pct!@::{U+1F58C}					;🖌
:*?:triangle!@::{U+1F4D0}				;📐
:*?:proof!@::{U+1F4D0}					;📐
:*?:nib!@::{U+2712}{U+FE0F}				;✒
:*?:procreate!@::{U+2712}{U+FE0F}		;✒
:*?:fpen!@::{U+1F58B}					;🖋
:*?:ballpoint!@::{U+1F58A}				;🖊
:*?:chat!@::{U+1F4AC}					;💬
:*?:thought!@::{U+1F4AD}				;💭
:*?:dungeon!@::{U+26D3}					;⛓
:*?:sweat!@::{U+1F4A6}					;💦
:*?:food!@::{U+1F35C}					;🍜
:*?:meal!@::{U+1F35C}					;🍜
:*?:ducati!@::{U+1F3CD}					;🏍
:*?:truck!@::{U+1F6FB}					;🛻
:*?:petri!@::{U+1F9EB}					;🧫
:*?:bio!@::{U+1F9EB}					;🧫
:*?:research!@::{U+1F52C}				;🔬
:*?:review!@::{U+1F50E}					;🔎
:*?:alembic!@::{U+2697}					;⚗
:*?:syringe!@::{U+1F489}				;💉
:*?:practice!@::{U+1F94B}				;🥋
:*?:robot!@::{U+1F916}					;🤖
:*?:honey!@::{U+1F36F}					;🍯
:*?:hideout!@::{U+1F3E2}				;🏢
:*?:chem!@::{U+1F9EA}					;🧪
:*?:disc!@::{U+1F94F}					;🥏 
:*?:warning!@::{U+26A0}					;⚠
:*?:eggplant!@::{U+1F346}				;🍆
:*?:epl!@::{U+1F346}					;🍆
:*?:anatomy!@::{U+1FAC0}				;🫀
:*?:headphones!@::{U+1F3A7}				;🎧
:*?:globeafrica!@::{U+1F30D}			;🌍
:*?:geography!@::{U+1F30D}				;🌍
:*?:geo!@::{U+1F30D}					;🌍
:*?:globeusa!@::{U+1F30F}				;🌎
:*?:globeasia!@::{U+1F30F}				;🌏
;:*?:league!@::{U+1FA86}				;🪆
;:*?:league!@::{U+1F537}				;🔷
:*?:league!@::{U+1F6E9}					;🛩
:*?:deer!@::{U+1F98C}					;🦌
:*?:bottle!@::{U+1F37C}					;🍼
:*?:avocado!@::{U+1F951}				;🥑
:*?:scissors!@::{U+2702}				;✂
:*?:nunu!@::{U+26C4}					;⛄
:*?:bf!@::{U+1F98B}						;🦋
:*?:new!@::{U+1F530}					;🔰
:*?:lv!@::{U+1F6E9}.{U+1F4F9}			;🛩.📹
:*?:lp!@::{U+1F6E9}.{U+1F94B}			;🛩.🥋
:?:lr!@::{U+1F6E9}.{U+1F916}			;🛩.🤖
:*?:ln!@::{U+1F6E9}.{U+2712}			;🛩.✒
:*?:ls!@::{U+1F6E9}.{U+1F3EB}			;🛩.🏫
:*?:cs!@::{U+1F6E9}.{U+1F3EB}			;🛩.🏫
:*?:biov!@::{U+1F9EB}.{U+1F4F9}			;🧫.📹
:*?:jungle!@::{U+1F33F}					;🌿
:*?:squirrel!@::{U+1F43F}{U+FE0F}		;🐿️
:*?:bandaid!@::{U+1FA79}				;🩹
:*?:hour!@::{U+231B}					;⌛
:*:key!@::{U+1F511}						;🔑
:*?:factory!@::{U+1F3ED}				;🏭
:*?:task!@::{U+1F3ED}					;🏭
:*?:gear!@::{U+2699}{U+FE0F}			;⚙
:*?:cog!@::{U+2699}{U+FE0F}				;⚙
:*?:thread!@::{U+1F9F5}					;🧵
:*?:tooth!@::{U+1F9B7}					;🦷
:*?:carrot!@::{U+1F955}					;🥕
:*?:email!@::{U+1F4E7}					;📧
:*?:cat!@::{U+1F408}					;🐈
:*?:kitten!@::{U+1F408}					;🐈
:*?:cats!@::{U+1F408}{U+00B2}			;🐈²
:*?:shower!@::{U+1F6BF}					;🚿
:*?:ighq!@::{U+1F3E8}					;🏨
:*?:hill!@::{U+1F3D4}					;🏔
:*?:mic!@::{U+1F399}					;🎙
:*?:discord!@::{U+1F399}{U+FE0F}		;🎙
:*?:podcast!@::{U+1F399}{U+FE0F}		;🎙
:*?:ighq!@::{U+1F3E8}					;🏨
:*?:banana!@::{U+1F34C}					;🍌
:*?:nuts!@::{U+1F95C}					;🥜
:*?:dino!@::{U+1F995}					;🦕
:*?:buffalo!@::{U+1F403}				;🐃
:*?:rice!@::{U+1F33E}					;🌾
:*?:printer!@::{U+1F5A8}{U+FE0F}		;🖨️
:*?:crown!@::{U+1F451}					;👑
:*?:general!@::{U+1F396}{U+FE0F}		;🎖️
:*?:liran!@::Liran{U+1F396}{U+FE0F}		;🎖️Liran
:*?:hr!@::{U+1F3E1}.{U+1F52C}			;🏡.🔬
:*:cr!@::{U+1F4B3}.{U+1F52C}			;💳.🔬
:*?:construct!@::{U+1F6A7}				;🚧
:*?:wolf!@::{U+1F43A}					;🐺
:*?:skunk!@::{U+1F9A8}					;🦨
:*?:dance!@::{U+1F483}					;💃
:*?:cake!@::{U+1F370}					;🍰
:*?:umbrella!@::{U+2614}				;☔
:*?:plumber!@::{U+1FAA0}				;🪠
:*:punt!@::{U+1F3C8}					;🏈
:*?:antipunt!@::{U+2755}{U+1F3C8}		;❕🏈 also see 'gp' for 'good play'
:*?:gp!@::{U+1F3C5}						;🏅 good play! opposite of punt 🏈
:*?:verified!@::{U+1F993}				;🦓
:*?:deal!@::{U+1F98C}					;🦌
:*?:check!@::{U+2714}{U+FE0F}			;✔️
:*?:knife!@::{U+1F52A}					;🔪
:*?:diya!@::{U+1FA94}					;🪔
:*?:brush!@::{U+1FAA5}					;🪥
:*?:snowman!@::{U+2603}{U+FE0F}			;☃️
:*?:dia!@::{U+1F537}					;🔷
:*?:falafel!@::{U+1F9C6}				;🧆
;:*?:done!@::{U+2611}{U+FE0F}			;☑️
;:*?:done!@::{U+23F9}{U+FE0F}			;⏹️
:*?:done!@::{U+274E}					;❎
:*?:brainstorm!@::{U+1F329}{U+FE0F}		;🌩️
:*?:log!@::{U+1FAB5}					;🪵
:*?:logging!@::{U+1FA9A}				;🪚
:*?:rain!@::{U+1F327}					;🌧
:*?:tv!@::{U+1F4FA}						;📺
:*?:gas!@::{U+26FD}						;⛽
:*?:fox!@::{U+1F98A}					;🦊
:*?:watermelon!@::{U+1F349}				;🍉
:*?:pineapple!@::{U+1F34D}				;🍍
:*?:mango!@::{U+1F96D}					;🥭
:*?:peach!@::{U+1F351}					;🍑
:*?:lemon!@::{U+1F34B}					;🍋
:*?:pear!@::{U+1F350}					;🍐
:*?:orange!@::{U+1F34A}					;🍊
:*?:sb!@::{U+1F353}						;🍓
:*?:bb!@::{U+1FAD0}						;🫐
:*?:cherry!@::{U+1F352}					;🍒
:*?:grapes!@::{U+1F347}					;🍇
:*?:march!@::{U+1F9BF}					;🦿
:*?:schmet!@::{U+1F98B}					;🦋
:*?:schmett!@::{U+1F98B}				;🦋
:*?:crown!@::{U+1F451}					;👑
:*?:hippo!@::{U+1F99B}					;🦛
:*?:yoyo!@::{U+1F99B}					;🦛
:*?:berries!@::{U+1FAD0}				;🫐
:*?:dragon!@::{U+1F409}					;🐉
:*?:dragonhead!@::{U+1F432}				;🐲
:*?:wheel!@::{U+1F6DE}					;🛞
:*?:zzz!@::{U+1F4A4}					;💤
:*?:fish!@::{U+1F420}					;🐠
:*?:shark!@::{U+1F988}					;🦈
:*?:ring!@::{U+1F48D}					;💍
:*?:bow!@::{U+1F3F9}					;🏹
:*?:horn!@::{U+1F4EF}					;📯
:*?:file!@::{U+1F4C1}					;📁
:*?:tp!@::{U+1F9FB}						;🧻
:*?:dove!@::{U+1F54A}					;🕊
:*?:noise!@::{U+1F54A}					;🕊
:*?:tea!@::{U+1F375}					;🍵
:*?:poop!@::{U+1F4A9}					;💩
:*?:door!@::{U+1F6AA}					;🚪
:*?:bed!@::{U+1F6CC}					;🛌
:*?:nap!@::{U+1F6CC}					;🛌
:*?:recycle!@::{U+267B}					;♻
:*?:notes!@::{U+1F4DD}					;📝
:*?:toilet!@::{U+1F6BD}					;🚽
:*?:toilets!@::{U+1F6BD}{U+00B9}		;🚽¹
:*?:hospital!@::{U+1F3E5}				;🏥
:*?:lovehotel!@::{U+1F3E9}				;🏩
:*?:glasses!@::{U+1F453}				;👓
:*?:breath!@::{U+1F32C}{U+FE0F}			;🌬️
:*?:blow!@::{U+1F32C}{U+FE0F}			;🌬️
:*?:voiceamp!@::{U+1F507}				;🔇
:*?:redexcl!@::{U+2757}					;❗
:*?:excl!@::{U+2755}					;❕
:*?:clover!@::{U+1F340}					;🍀
:*?:blood!@::{U+1FA78}					;🩸
:*?:dolphin!@::{U+1F42C}				;🐬
:*?:top!@::{U+1F51D}					;🔝
:*?:rat!@::{U+1F400}					;🐀
:*?:pepper!@::{U+1F336}{U+FE0F}			;🌶️
:*?:tomato!@::{U+1F345}					;🍅
:*?:ram!@::{U+1F40F}					;🐏
:*?:goat!@::{U+1F410}					;🐐
:*?:ewe!@::{U+1F411}					;🐑
:*?:soap!@::{U+1F9FC}					;🧼
:*?:dishes!@::{U+1F37D}{U+FE0F}			;🍽️
:*?:sponge!@::{U+1F9FD}					;🧽
:*?:pick!@::{U+26CF}					;⛏
:*?:leaf!@::{U+1F341}					;🍁
:*?:maple!@::{U+1F341}					;🍁
:*?:flutter!@::{U+1F343}				;🍃
:*?:wind!@::{U+1F343}					;🍃
:*?:beer!@::{U+1F37A}					;🍺
:*?:draft!@::{U+1F992}					;🦒
:*?:dr!@::{U+1F992}{U+2190}{U+1F50E}	;🦒←🔎
:*?:dr!@::{U+1F992}{U+2190}{U+1F50E}	;🦒←🔎
:*?:tumblr!@::{U+1F377}					;🍷
:*?:paint!@::{U+1F58C}{U+FE0F}			;🖌️
:*?:diaper!@::{U+1F9F7}					;🧷
:*?:trigger!@::{U+1F52B}				;🔫
:*?:ruler!@::{U+1F4CF}					;📏
:*?:mail!@::{U+1F4EB}					;📫
:*?:soup!@::{U+1F372}					;🍲
:*?:levelup!@::{U+1F199}				;🆙
:*?:map!@::{U+1F5FA}{U+FE0F}			;🗺️
:*?:jump!@::{U+1F998}					;🦘
:*?:saw!@::{U+1FA9A}					;🪚
:*?:guitar!@::{U+1F3B8}					;🎸
:*?:compose!@::{U+1F3BC}				;🎼

; 2024
:*?:dutch!@::{U+1FAD5}					;🫕
:*?:nanamo!@::{U+1FAD5}					;🫕
:*?:movie!@::{U+1F4FD}{U+FE0F}			;📽️
:*?:dvre!@::{U+1F4FD}{U+FE0F}			;📽️
:*?:gift!@::{U+1F381}					;🎁
:*?:redenv!@::{U+1F9E7}					;🧧
:*?:greens!@::{U+1F96C}					;🥬
:*?:veggies!@::{U+1F96C}				;🥬
:*?:xiv!@::{U+1F48E}					;💎
:*?:xivr!@::{U+1F48E}.{U+1F52C}			;💎.🔬
:*?:xivd!@::{U+1F48E}.{U+26D3}			;💎.⛓
:*?:clip!@::{U+1F4CB}					;📋
:*?:wust!@::w{U+00FC}sthof				;wüsthof
:*?:enso!@::ens{U+014D}					;ensō
:*?:straw!@::{U+1F964}					;🥤
:*?:fan!@::{U+1FAAD}					;🪭
:*?:tree!@::{U+1F333}					;🌳
:*?:forest!@::{U+1F38B}					;🎋
:*?:cone!@::{U+1F366}					;🍦
:*?:shiro!@::{U+1F3EF}					;🏯
:*?:callout!@::{U+1F4E2}				;📢
:*?:ssue!@::{U+1F373}					;🍳
:*?:bubble!@::{U+1FAE7}					;🫧
:*?:lobster!@::{U+1F99E}				;🦞
:*?:crab!@::{U+1F980}					;🦀
:*?:angry!@::{U+1F4A2}					;💢
:*?:tnt!@::{U+1F9E8}					;🧨
:*?:bomb!@::{U+1F4A3}					;💣
:*?:explode!@::{U+1F4A5}				;💥
:*?:balloon!@::{U+1F388}				;🎈
:*?:dart!@::{U+1F3af}					;🎯
:*?:kite!@::{U+1Fa81}					;🪁
:*?:popcorn!@::{U+1F37F}				;🍿
:*?:war!@::{U+1FA93}					;🪓
:*?:refract!@::{U+1F36D}				;🍭 → U+1F308 is rainbow 🌈
:*?:return!@::{U+1F519}					;🔙
:*?:heal!@::{U+2695}{U+FE0F}			;⚕️
:*?:onion!@::{U+1F9C5}					;🧅
:*?:ginger!@::{U+1FADA}					;🫚
:*?:garlic!@::{U+1F9C4}					;🧄
:*?:shinto!@::{U+26E9}{U+FE0F}			;⛩️
:*?:honk!@::{U+1FABF}					;🪿
:*?:battery!@::{U+1F50B}				;🔋
:*?:charge!@::{U+1FAAB}					;🪫
:*?:read!@::{U+1F4F0}					;📰
:*?:roll!@::{U+1F5DE}{U+FE0F}			;🗞️
:*?:turkey!@::{U+1F983}					;🦃
:*?:raccoon!@::{U+1F99D}				;🦝
:*?:stats!@::{U+1F4CA}					;📊
:*?:dt!@::{U+1F305}						;🌅
:*?:window!@::{U+1FA9F}					;🪟
:*?:milk!@::{U+1F95B}					;🥛
:*?:goldmedal!@::{U+1F947}				;🥇
:*?:oneshot!@::{U+1F947}				;🥇
:*?:silvermedal!@::{U+1F948}			;🥈
:*?:silver!@::{U+1F948}					;🥈
:*?:bronzemedal!@::{U+1F949}			;🥉
:*?:bronze!@::{U+1F949}					;🥉
:*?:trophy!@::{U+1F3C6}					;🏆
:*?:squeakies!@::{U+1F42D}				;🐭
:*?:mouse!@::{U+1F5B1}{U+FE0F}			;🖱️
:*?:ka!@::{U+1F33A}						;🌺


; discord markdown code span emojis 
:*?:poo!@::````{left}{U+1F4A9}{right}				;`💩`
:*?:byte!@::````{left}{U+1F3ED}{right}				;`🏭`
:*?:prac!@::````{left}{U+1F94B}{right}				;`🥋`
:*?:tip!@::````{left}{U+1F4A1}{right}				;`💡`
:*?:kiw!@::````{left}{U+1F95D}{right}				;`🏭`
:*?:lecture!@::````{left}{U+1F4F9}{right}			;`📹`
:*?:docu!@::````{left}{U+1F4C3}{right}				;`📃`
:*?:commit!@::````{left}{U+1F948}{right}			;`🥈`
:*?:bit!@::````{left}{U+1F949}{right}				;`🥉`
:*?:bitcom!@::````{left}{U+1F948}{U+1F949}{right}	;`🥈🥉`
:*?:bit!@::````{left}{U+1F949}{right}				;`🥉`
:*?:bug!@::````{left}{U+1F41B}{right}				;`🐛`
:*?:ank!@::````{left}{U+1F4C7}{right}				;`📇`
:*?:pset!@::````{left}{U+1F3B2}{right}				;`📇`
:*?:eyebreak!@::eye{U+1F9D8}{U+1F3FD}{U+200D} 		;eye🧘🏽‍
:*?:featr!@::{U+1F3D7}{U+FE0F}.{U+1F52C} 			;🏗️.🔬
:*?:bearcon!@::{U+1F43B}.{U+1F3D7}					;🐻.🏗
:*?:ukraine!@::{U+1F1FA}{U+1F1E6}					;🇺🇦
:*?:masterclass!@::{U+1F13C}{U+1F132}				;🄼🄲

;basic mana in discord
:*?C:W!@::{:}manaw{:}						;:manaw:
:*?C:U!@::{:}manau{:}						;:manau:
:*?C:B!@::{:}manab{:}						;:manab:
:*?C:R!@::{:}manar{:}						;:manar:
:*?C:G!@::{:}manag{:}						;:manag:



; disable widget bar
; #w::MsgBox(A_ComputerName " disabled widget bar")
#w::Return

; convert explorer into win+0 to access taskbar explorer
#e::#0

; disable teams shortcut
#c::Return

; disable feedback hub shortcut
#f::Return


; convert shift+enter to ctrl+enter in google chrome for sheets newline
; this mimics discord behavior
+Enter:: {
	if (A_ComputerName = "Elise") {
		if WinActive("ahk_exe chrome.exe") {
		    Send("^{Enter}")
		} else {
		    Send("+{Enter}")
		}
	} else {
		; make sure we still send +Enter if we're not on Elise :P
		Send("+{Enter}") 
	}
}

; replace two chars with '☒ ' in sublime text 4 and intellij apps
^F1:: {
    if WinActive("ahk_exe sublime_text.exe") || WinActive("ahk_class SunAwtFrame") {
        ; MsgBox("F1 was pressed in ST4!")
        Send("{BackSpace}")
        Send("{BackSpace}")
        Send("{U+2612} ")
    } else {
        Send("{F1}")  ; Sends the F1 key press to other applications
    }
}

; TODO: hoggydesk macros




; replaces accessibility control panel shortcut. Y is available
#u:: {
	Send("^s")  ; To save a changed script
	Sleep(300)  ; give it time to save the script
	Reload()
}