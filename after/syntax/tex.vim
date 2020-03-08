" Original file is https://github.com/wjakob/wjakob.vim/blob/master/after/syntax/tex.vim

if has('conceal')
  " More paper specific (what to do with these??)
  syn match texMathSymbol '\\pathspace' contained conceal cchar=Ω
  syn match texMathSymbol '\\surfaces'  contained conceal cchar=𝓜

  " more reasonably sized symbols that were already defined
  syn match texMathSymbol '\\Rightarrow\>' contained conceal cchar=⇒
  syn match texMathSymbol '\\Leftarrow\>'  contained conceal cchar=⇐
  syn match texMathSymbol '\\rightarrow\>' contained conceal cchar=→
  syn match texMathSymbol '\\leftarrow\>'  contained conceal cchar=←
  syn match texMathSymbol '\\emptyset\>'   contained conceal cchar=Ø
  syn match texMathSymbol '\\varphi\>'     contained conceal cchar=φ
  syn match texMathSymbol '\\phi\>'        contained conceal cchar=Φ
  syn match texMathSymbol '\\langle\>\s*'  contained conceal cchar=⟨
  syn match texMathSymbol '\s*\\rangle\>'  contained conceal cchar=⟩
  syn match texMathSymbol '\\\\' contained conceal

  " Include space after greek letters:
  syn match texMathSymbol '\\Delta\> ' contained conceal cchar=Δ

  " Use regular greek letters when subscript/superscript not available:
  syn match texSubscripts '\\mu\>'         contained conceal cchar=μ
  syn match texSuperscripts '\\mu\>'       contained conceal cchar=μ
  syn match texSuperscripts '\\rho\>'      contained conceal cchar=ᵖ

  " Simple number super/sub-scripts
  syn match texMathSymbol '\^0' contained conceal cchar=⁰
  syn match texMathSymbol '\^1' contained conceal cchar=¹
  syn match texMathSymbol '\^2' contained conceal cchar=²
  syn match texMathSymbol '\^3' contained conceal cchar=³
  syn match texMathSymbol '\^4' contained conceal cchar=⁴
  syn match texMathSymbol '\^5' contained conceal cchar=⁵
  syn match texMathSymbol '\^6' contained conceal cchar=⁶
  syn match texMathSymbol '\^7' contained conceal cchar=⁷
  syn match texMathSymbol '\^8' contained conceal cchar=⁸
  syn match texMathSymbol '\^9' contained conceal cchar=⁹
  syn match texMathSymbol '^o'  contained conceal cchar=ᵒ

  syn match texMathSymbol '\^{-1}'         contained conceal contains=texSuperscripts
  syn match texMathSymbol '\^\\mathrm{T}'  contained conceal contains=texSuperscripts
  syn match texMathSymbol '\^\\mathrm{-T}' contained conceal contains=texSuperscripts
  syn match texSuperscripts '1'            contained conceal cchar=¹
  syn match texSuperscripts '-'            contained conceal cchar=⁻
  syn match texSuperscripts 'T'            contained conceal cchar=ᵀ
  syn match texSubscripts '='              contained conceal cchar=₌
  syn match texSubscripts ','              contained conceal cchar=,
  syn match texSubscripts '\\nu\>'         contained conceal cchar=ᵥ
  syn match texSuperscripts '\\nu\>'       contained conceal cchar=ᵛ

  syn match texMathSymbol '\\trans\>'      contained conceal cchar=ᵀ
  syn match texMathSymbol '\\times\>'      contained conceal cchar=×

  syn match texMathSymbol '_0' contained conceal cchar=₀
  syn match texMathSymbol '_1' contained conceal cchar=₁
  syn match texMathSymbol '_2' contained conceal cchar=₂
  syn match texMathSymbol '_3' contained conceal cchar=₃
  syn match texMathSymbol '_4' contained conceal cchar=₄
  syn match texMathSymbol '_5' contained conceal cchar=₅
  syn match texMathSymbol '_6' contained conceal cchar=₆
  syn match texMathSymbol '_7' contained conceal cchar=₇
  syn match texMathSymbol '_8' contained conceal cchar=₈
  syn match texMathSymbol '_9' contained conceal cchar=₉
  syn match texMathSymbol '_i' contained conceal cchar=ᵢ
  syn match texMathSymbol '^i' contained conceal cchar=ⁱ
  syn match texMathSymbol '_o' contained conceal cchar=ₒ


  " logical symbols
  syn match texMathSymbol '\\lor\>'      contained conceal cchar=∨
  syn match texMathSymbol '\\land\>'     contained conceal cchar=∧
  syn match texMathSymbol '\\lnot\>'     contained conceal cchar=¬
  syn match texMathSymbol '\\implies\>'  contained conceal cchar=⇒
  syn match texMathSymbol '\\geqslant\>' contained conceal cchar=⩾
  syn match texMathSymbol '\\leqslant\>' contained conceal cchar=⩽

  " \mathbb characters
  syn match texMathSymbol '\\mathbb{A}' contained conceal cchar=𝔸
  syn match texMathSymbol '\\mathbb{B}' contained conceal cchar=𝔹
  syn match texMathSymbol '\\mathbb{C}' contained conceal cchar=ℂ
  syn match texMathSymbol '\\mathbb{D}' contained conceal cchar=𝔻
  syn match texMathSymbol '\\mathbb{E}' contained conceal cchar=𝔼
  syn match texMathSymbol '\\mathbb{F}' contained conceal cchar=𝔽
  syn match texMathSymbol '\\mathbb{G}' contained conceal cchar=𝔾
  syn match texMathSymbol '\\mathbb{H}' contained conceal cchar=ℍ
  syn match texMathSymbol '\\mathbb{I}' contained conceal cchar=𝕀
  syn match texMathSymbol '\\mathbb{J}' contained conceal cchar=𝕁
  syn match texMathSymbol '\\mathbb{K}' contained conceal cchar=𝕂
  syn match texMathSymbol '\\mathbb{L}' contained conceal cchar=𝕃
  syn match texMathSymbol '\\mathbb{M}' contained conceal cchar=𝕄
  syn match texMathSymbol '\\mathbb{N}' contained conceal cchar=ℕ
  syn match texMathSymbol '\\mathbb{O}' contained conceal cchar=𝕆
  syn match texMathSymbol '\\mathbb{P}' contained conceal cchar=ℙ
  syn match texMathSymbol '\\mathbb{Q}' contained conceal cchar=ℚ
  syn match texMathSymbol '\\mathbb{R}' contained conceal cchar=ℝ
  syn match texMathSymbol '\\mathbb{S}' contained conceal cchar=𝕊
  syn match texMathSymbol '\\mathbb{T}' contained conceal cchar=𝕋
  syn match texMathSymbol '\\mathbb{U}' contained conceal cchar=𝕌
  syn match texMathSymbol '\\mathbb{V}' contained conceal cchar=𝕍
  syn match texMathSymbol '\\mathbb{W}' contained conceal cchar=𝕎
  syn match texMathSymbol '\\mathbb{X}' contained conceal cchar=𝕏
  syn match texMathSymbol '\\mathbb{Y}' contained conceal cchar=𝕐
  syn match texMathSymbol '\\mathbb{Z}' contained conceal cchar=ℤ

  " vector roman characters
  syn match texBoldMathText '\\bA\>' contained conceal cchar=𝗔
  syn match texBoldMathText '\\bB\>' contained conceal cchar=𝗕
  syn match texBoldMathText '\\bC\>' contained conceal cchar=𝗖
  syn match texBoldMathText '\\bD\>' contained conceal cchar=𝗗
  syn match texBoldMathText '\\bE\>' contained conceal cchar=𝗘
  syn match texBoldMathText '\\bF\>' contained conceal cchar=𝗙
  syn match texBoldMathText '\\bG\>' contained conceal cchar=𝗚
  syn match texBoldMathText '\\bH\>' contained conceal cchar=𝗛
  syn match texBoldMathText '\\bI\>' contained conceal cchar=𝗜
  syn match texBoldMathText '\\bJ\>' contained conceal cchar=𝗝
  syn match texBoldMathText '\\bK\>' contained conceal cchar=𝗞
  syn match texBoldMathText '\\bL\>' contained conceal cchar=𝗟
  syn match texBoldMathText '\\bM\>' contained conceal cchar=𝗠
  syn match texBoldMathText '\\bN\>' contained conceal cchar=𝗡
  syn match texBoldMathText '\\bO\>' contained conceal cchar=𝗢
  syn match texBoldMathText '\\bP\>' contained conceal cchar=𝗣
  syn match texBoldMathText '\\bQ\>' contained conceal cchar=𝗤
  syn match texBoldMathText '\\bR\>' contained conceal cchar=𝗥
  syn match texBoldMathText '\\bS\>' contained conceal cchar=𝗦
  syn match texBoldMathText '\\bT\>' contained conceal cchar=𝗧
  syn match texBoldMathText '\\bU\>' contained conceal cchar=𝗨
  syn match texBoldMathText '\\bV\>' contained conceal cchar=𝗩
  syn match texBoldMathText '\\bW\>' contained conceal cchar=𝗪
  syn match texBoldMathText '\\bX\>' contained conceal cchar=𝗫
  syn match texBoldMathText '\\bY\>' contained conceal cchar=𝗬
  syn match texBoldMathText '\\bZ\>' contained conceal cchar=𝗭

  syn match texBoldMathText '\\ba\>' contained conceal cchar=𝗮
  syn match texBoldMathText '\\bb\>' contained conceal cchar=𝗯
  syn match texBoldMathText '\\bc\>' contained conceal cchar=𝗰
  syn match texBoldMathText '\\bd\>' contained conceal cchar=𝗱
  syn match texBoldMathText '\\be\>' contained conceal cchar=𝗲
  syn match texBoldMathText '\\bf\>' contained conceal cchar=𝗳
  syn match texBoldMathText '\\bg\>' contained conceal cchar=𝗴
  syn match texBoldMathText '\\bh\>' contained conceal cchar=𝗵
  syn match texBoldMathText '\\bi\>' contained conceal cchar=𝗶
  syn match texBoldMathText '\\bj\>' contained conceal cchar=𝗷
  syn match texBoldMathText '\\bk\>' contained conceal cchar=𝗸
  syn match texBoldMathText '\\bl\>' contained conceal cchar=𝗹
  syn match texBoldMathText '\\bm\>' contained conceal cchar=𝗺
  syn match texBoldMathText '\\bn\>' contained conceal cchar=𝗻
  syn match texBoldMathText '\\bo\>' contained conceal cchar=𝗼
  syn match texBoldMathText '\\bp\>' contained conceal cchar=𝗽
  syn match texBoldMathText '\\bq\>' contained conceal cchar=𝗾
  syn match texBoldMathText '\\br\>' contained conceal cchar=𝗿
  syn match texBoldMathText '\\bs\>' contained conceal cchar=𝘀
  syn match texBoldMathText '\\bt\>' contained conceal cchar=𝘁
  syn match texBoldMathText '\\bu\>' contained conceal cchar=𝘂
  syn match texBoldMathText '\\bv\>' contained conceal cchar=𝘃
  syn match texBoldMathText '\\bw\>' contained conceal cchar=𝘄
  syn match texBoldMathText '\\bx\>' contained conceal cchar=𝘅
  syn match texBoldMathText '\\by\>' contained conceal cchar=𝘆
  syn match texBoldMathText '\\bz\>' contained conceal cchar=𝘇
  " syn match texBoldMathText '\\bar\>' contained conceal cchar=‾

  " vector greek characters
  syn match texBoldMathText '\\bAlpha\>'    contained conceal cchar=𝝖
  syn match texBoldMathText '\\bBeta\>'     contained conceal cchar=𝝗
  syn match texBoldMathText '\\bGamma\>'    contained conceal cchar=𝝘
  syn match texBoldMathText '\\bDelta\>'    contained conceal cchar=𝝙
  syn match texBoldMathText '\\bEpsilon\>'  contained conceal cchar=𝝚
  syn match texBoldMathText '\\bZeta\>'     contained conceal cchar=𝝛
  syn match texBoldMathText '\\bDeta\>'     contained conceal cchar=𝝜
  syn match texBoldMathText '\\bTheta\>'    contained conceal cchar=𝝝
  syn match texBoldMathText '\\bIota\>'     contained conceal cchar=𝝞
  syn match texBoldMathText '\\bKappa\>'    contained conceal cchar=𝝟
  syn match texBoldMathText '\\bLambda\>'   contained conceal cchar=𝝠
  syn match texBoldMathText '\\bMu\>'       contained conceal cchar=𝝡
  syn match texBoldMathText '\\bNu\>'       contained conceal cchar=𝝢
  syn match texBoldMathText '\\bXi\>'       contained conceal cchar=𝝣
  syn match texBoldMathText '\\bOmicron\>'  contained conceal cchar=𝝤
  syn match texBoldMathText '\\bPi\>'       contained conceal cchar=𝝥
  syn match texBoldMathText '\\bRho\>'      contained conceal cchar=𝝦
  syn match texBoldMathText '\\bSigma\>'    contained conceal cchar=𝝨
  syn match texBoldMathText '\\bTau\>'      contained conceal cchar=𝝩
  syn match texBoldMathText '\\bUpsilon\>'  contained conceal cchar=𝝪
  syn match texBoldMathText '\\bPhi\>'      contained conceal cchar=𝝫
  syn match texBoldMathText '\\bChi\>'      contained conceal cchar=𝝬
  syn match texBoldMathText '\\bPsi\>'      contained conceal cchar=𝝭
  syn match texBoldMathText '\\bOmega\>'    contained conceal cchar=𝝮

  syn match texBoldMathText '\\balpha\>'    contained conceal cchar=𝝰
  syn match texBoldMathText '\\bbeta\>'     contained conceal cchar=𝝱
  syn match texBoldMathText '\\bgamma\>'    contained conceal cchar=𝝲
  syn match texBoldMathText '\\bdelta\>'    contained conceal cchar=𝝳
  syn match texBoldMathText '\\bepsilon\>'  contained conceal cchar=𝝴
  syn match texBoldMathText '\\bzeta\>'     contained conceal cchar=𝝵
  syn match texBoldMathText '\\bdeta\>'     contained conceal cchar=𝝶
  syn match texBoldMathText '\\btheta\>'    contained conceal cchar=𝝷
  syn match texBoldMathText '\\biota\>'     contained conceal cchar=𝝸
  syn match texBoldMathText '\\bkappa\>'    contained conceal cchar=𝝹
  syn match texBoldMathText '\\blambda\>'   contained conceal cchar=𝝺
  syn match texBoldMathText '\\bmu\>'       contained conceal cchar=𝝻
  syn match texBoldMathText '\\bnu\>'       contained conceal cchar=𝝼
  syn match texBoldMathText '\\bxi\>'       contained conceal cchar=𝝽
  syn match texBoldMathText '\\bomicron\>'  contained conceal cchar=𝝾
  syn match texBoldMathText '\\bpi\>'       contained conceal cchar=𝝿
  syn match texBoldMathText '\\brho\>'      contained conceal cchar=𝞀
  syn match texBoldMathText '\\bsigma\>'    contained conceal cchar=𝞂
  syn match texBoldMathText '\\btau\>'      contained conceal cchar=𝞃
  syn match texBoldMathText '\\bupsilon\>'  contained conceal cchar=𝞄
  syn match texBoldMathText '\\bphi\>'      contained conceal cchar=𝞅
  syn match texBoldMathText '\\bchi\>'      contained conceal cchar=𝞆
  syn match texBoldMathText '\\bpsi\>'      contained conceal cchar=𝞇
  syn match texBoldMathText '\\bomega\>'    contained conceal cchar=𝞈

  " \mathcal characters
  syn match texMathSymbol '\\Asc' contained conceal cchar=𝓐
  syn match texMathSymbol '\\Bsc' contained conceal cchar=𝓑
  syn match texMathSymbol '\\Csc' contained conceal cchar=𝓒
  syn match texMathSymbol '\\Dsc' contained conceal cchar=𝓓
  syn match texMathSymbol '\\Esc' contained conceal cchar=𝓔
  syn match texMathSymbol '\\Fsc' contained conceal cchar=𝓕
  syn match texMathSymbol '\\Gsc' contained conceal cchar=𝓖
  syn match texMathSymbol '\\Hsc' contained conceal cchar=𝓗
  syn match texMathSymbol '\\Isc' contained conceal cchar=𝓘
  syn match texMathSymbol '\\Jsc' contained conceal cchar=𝓙
  syn match texMathSymbol '\\Ksc' contained conceal cchar=𝓚
  syn match texMathSymbol '\\Lsc' contained conceal cchar=𝓛
  syn match texMathSymbol '\\Msc' contained conceal cchar=𝓜
  syn match texMathSymbol '\\Nsc' contained conceal cchar=𝓝
  syn match texMathSymbol '\\Osc' contained conceal cchar=𝓞
  syn match texMathSymbol '\\Psc' contained conceal cchar=𝓟
  syn match texMathSymbol '\\Qsc' contained conceal cchar=𝓠
  syn match texMathSymbol '\\Rsc' contained conceal cchar=𝓡
  syn match texMathSymbol '\\Ssc' contained conceal cchar=𝓢
  syn match texMathSymbol '\\Tsc' contained conceal cchar=𝓣
  syn match texMathSymbol '\\Usc' contained conceal cchar=𝓤
  syn match texMathSymbol '\\Vsc' contained conceal cchar=𝓥
  syn match texMathSymbol '\\Wsc' contained conceal cchar=𝓦
  syn match texMathSymbol '\\Xsc' contained conceal cchar=𝓧
  syn match texMathSymbol '\\Ysc' contained conceal cchar=𝓨
  syn match texMathSymbol '\\Zsc' contained conceal cchar=𝓩

  syn match texStatement '``'            contained conceal cchar=“
  syn match texStatement '\'\''          contained conceal cchar=”
  syn match texStatement '\\item\>'      contained conceal cchar=•
  syn match texMathSymbol '\\dd'         contained conceal cchar=d
  syn match texDelimiter '\\{'           contained conceal cchar={
  syn match texDelimiter '\\}'           contained conceal cchar=}
  syn match texMathSymbol '\\setminus\>' contained conceal cchar=\
  syn match texMathSymbol '\\coloneqq\>' contained conceal cchar=≔
  syn match texMathSymbol '\\,'          contained conceal
  syn match texMathSymbol '\\ '          contained conceal
  syn match texMathSymbol '\\quad'       contained conceal
  syn match texMathSymbol '\\sqrt'       contained conceal cchar=√
  syn match texMathSymbol '\\where\>'    contained conceal cchar=|
  syn match texMathSymbol '\\\!'         contained conceal
  syn match texMathSymbol '\\gtrsim\>'    contained conceal cchar=≳
  syn match texMathSymbol '\\lesssim\>'    contained conceal cchar=≲
  "syn match texStatement '\\\['          contained conceal cchar=⟦
  "syn match texStatement '\\\]'          contained conceal cchar=⟧

  " hide \text delimiter etc inside math mode
  if !exists("g:tex_nospell") || !g:tex_nospell
    syn region texMathText matchgroup=texStatement start='\\\(\(inter\)\=mathrm\)\s*{'     end='}' concealends keepend contains=@texFoldGroup containedin=texMathMatcher
    syn region texMathText matchgroup=texStatement start='\\\(\(inter\)\=text\|mbox\)\s*{' end='}' concealends keepend contains=@texFoldGroup,@Spell containedin=texMathMatcher
  else
    syn region texMathText matchgroup=texStatement start='\\\(\(inter\)\=text\|mbox\|mathrm\)\s*{' end='}' concealends keepend contains=@texFoldGroup containedin=texMathMatcher
  endif

  syn region texBoldMathText matchgroup=texStatement start='\\\(mathbf\|bm\|symbf\){' end='}' concealends contains=@texMathZoneGroup containedin=texMathMatcher
  syn cluster texMathZoneGroup add=texBoldMathText

  syn region texBoldItalStyle     matchgroup=texTypeStyle start="\\emph\s*{" end="}" concealends contains=@texItalGroup
  syn region texItalStyle  matchgroup=texTypeStyle start="\\emph\s*{" end="}" concealends contains=@texItalGroup

  set ambiwidth=single
  hi texBoldMathText cterm=bold gui=bold
endif
