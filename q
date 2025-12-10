warning: in the working copy of 'docs/advanced_topics.html', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'docs/event_data.html', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'docs/index.html', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'docs/search.json', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'docs/strat_architecture.html', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'docs/trait_evol.html', LF will be replaced by CRLF the next time Git touches it
[1mdiff --git a/advanced_topics.qmd b/advanced_topics.qmd[m
[1mindex eadda2b..ee2fb20 100644[m
[1m--- a/advanced_topics.qmd[m
[1m+++ b/advanced_topics.qmd[m
[36m@@ -12,15 +12,15 @@[m [mset.seed(8399)[m
 [m
 ## Advanced topics in Stratigraphic Paleobiology[m
 [m
[31m-In this practical, we go through some advanced topics, such as modeling taphonomic effects, and transforming phylogenetic data (time trees and fossils)[m
[32m+[m[32mIn this practical, we go through some advanced topics, such as modeling taphonomic effects, and transforming phylogenetic data (time trees and fossils).[m
 [m
 ## Introduction[m
 [m
[31m-In this workshop, we have gone through the standard examples of stratigraphic paleobiology, including how stratigraphic biases such as gaps, changes in sedimentation rate and ecological gradients change our perception of last occurrences, fossil abundance, and stratophenetic change. These are just examples of general principles of how stratigraphic architectures modify observations of past (not necessarily only) biotic change. Abstracting this, there are two modifications[m
[32m+[m[32mIn this workshop, we have gone through the standard examples of stratigraphic paleobiology, including how stratigraphic biases such as gaps, changes in sedimentation rate and ecological gradients change our perception of last occurrences, fossil abundance, and stratophenetic change. These are just examples of general principles of how stratigraphic architectures modify observations of past (not necessarily only) biotic change. Abstracting this, there are two modifications to temporal data by stratigraphy:[m
 [m
[31m--   Change in observation probability, e.g, due to niche models or taphonomic effects[m
[32m+[m[32m-   Change in observation probability, e.g, due to niche models or taphonomic effects.[m
 [m
[31m--   Misaglignemt of the stratigraphic and time domain due to changes in sedimentation rate and hiatuses. This includes removal of data due to gaps.[m
[32m+[m[32m-   Misaglignmet of the stratigraphic and time domain due to changes in sedimentation rate and hiatuses. This includes removal of data due to gaps.[m
 [m
 These effects apply universally to all types of data observable in the stratigraphic record, e.g, proxy records derived from fossil data.[m
 [m
[36m@@ -32,9 +32,9 @@[m [mNaturally, the modeling framework of the `StratPal` package expands to this more[m
 [m
 Modeling taphonomy follows the same principles as modeling ecology. You need to define two function:[m
 [m
[31m--   a function `ctc` describing the change in taphonomic conditions with time (corresponding to the change in gradient with time for ecology)[m
[32m+[m[32m-   a function `ctc` describing the change in taphonomic conditions with time (corresponding to the change in gradient with time for ecology).[m
 [m
[31m--   a function `pres_potential` that specifies how likely a fossil is to be preserved given some taphonomic conditions (equivalent to the niche definiton for ecology). Note that this requires you to write your own functions[m
[32m+[m[32m-   a function `pres_potential` that specifies how likely a fossil is to be preserved given some taphonomic conditions (equivalent to the niche definiton for ecology). Note that this requires you to write your own functions.[m
 [m
 Both can then be passed to the function `apply_taphonomy` (instead of `apply_ecology`)[m
 [m
[36m@@ -83,7 +83,7 @@[m [mp3(rate = 10, from = 0, to = 2, n = 1000) |>[m
 [m
 ```[m
 [m
[31m-Note that because of the generality of the implementation, taphonomic effects can e.g., immediately be incorporated into a model selection workflows in combination with the `paleoTS` package and stratigraphic effects:[m
[32m+[m[32mNote that because of the generality of the implementation, taphonomic effects can immediately be incorporated into a model selection workflows in combination with the `paleoTS` package and stratigraphic effects:[m
 [m
 ```{r advanced_topic_taphonomy_4}[m
 library(paleoTS) # load paleoTS package for model selection & plotting[m
[36m@@ -141,7 +141,7 @@[m [mfossils_strat = fossils |>[m
 ::: callout-important[m
 ### Task 4.1: Taphonomic effects[m
 [m
[31m-Model a taxon that has a preservation probability of 0.2 in water depths lower than 20 m and a preservation probablity of 0.8 in water deeper than 20 m.[m
[32m+[m[32mModel a taxon that has a preservation probability of 0.2 in water depths lower than 20 m and a preservation probablity of 0.9 in water deeper than 20 m.[m
 [m
 How abundant is this taxon at different locations on the platform? From your modeling results along, is there any way to distinguish these taphonomic effect from an ecological effect?[m
 :::[m
[36m@@ -151,7 +151,7 @@[m [mHow abundant is this taxon at different locations on the platform? From your mod[m
 [m
 Simulate an FBD (time)tree over the duration of the age-depth model and transform it at different locations using the age-depth model.[m
 [m
[31m-Simulate some fossils along the tree using the `FossilSim` package @barido-sottani2019 .[m
[32m+[m[32mSimulate some fossils along the tree using the `FossilSim` package.[m
 [m
 How are the trees affected at the different locations? What are the most obvious visual changes in their topology?[m
 :::[m
[36m@@ -189,7 +189,7 @@[m [mpres_potential= function(x){[m
   p[x> 20 ] = 0.9[m
   return(p)[m
 }[m
[31m-wds = seq(-1, 15, by = 0.1)[m
[32m+[m[32mwds = seq(-1, 35, by = 0.1)[m
 plot(x = wds,[m
      y = pres_potential(wds),[m
      xlab = "Water depth [m]",[m
[1mdiff --git a/docs/advanced_topics.html b/docs/advanced_topics.html[m
[1mindex 1b2b7b7..21d8abb 100644[m
[1m--- a/docs/advanced_topics.html[m
[1m+++ b/docs/advanced_topics.html[m
[36m@@ -20,6 +20,41 @@[m [mul.task-list li input[type="checkbox"] {[m
   margin: 0 0.8em 0.2em -1em; /* quarto-specific, see https://github.com/quarto-dev/quarto-cli/issues/4556 */ [m
   vertical-align: middle;[m
 }[m
[32m+[m[32m/* CSS for syntax highlighting */[m
[32m+[m[32mhtml { -webkit-text-size-adjust: 100%; }[m
[32m+[m[32mpre > code.sourceCode { white-space: pre; position: relative; }[m
[32m+[m[32mpre > code.sourceCode > span { display: inline-block; line-height: 1.25; }[m
[32m+[m[32mpre > code.sourceCode > span:empty { height: 1.2em; }[m
[32m+[m[32m.sourceCode { overflow: visible; }[m
[32m+[m[32mcode.sourceCode > span { color: inherit; text-decoration: inherit; }[m
[32m+[m[32mdiv.sourceCode { margin: 1em 0; }[m
[32m+[m[32mpre.sourceCode { margin: 0; }[m
[32m+[m[32m@media screen {[m
[32m+[m[32mdiv.sourceCode { overflow: auto; }[m
[32m+[m[32m}[m
[32m+[m[32m@media print {[m
[32m+[m[32mpre > code.sourceCode { white-space: pre-wrap; }[m
[32m+[m[32mpre > code.sourceCode > span { text-indent: -5em; padding-left: 5em; }[m
[32m+[m[32m}[m
[32m+[m[32mpre.numberSource code[m
[32m+[m[32m  { counter-reset: source-line 0; }[m
[32m+[m[32mpre.numberSource code > span[m
[32m+[m[32m  { position: relative; left: -4em; counter-increment: source-line; }[m
[32m+[m[32mpre.numberSource code > span > a:first-child::before[m
[32m+[m[32m  { content: counter(source-line);[m
[32m+[m[32m    position: relative; left: -1em; text-align: right; vertical-align: baseline;[m
[32m+[m[32m    border: none; display: inline-block;[m
[32m+[m[32m    -webkit-touch-callout: none; -webkit-user-select: none;[m
[32m+[m[32m    -khtml-user-select: none; -moz-user-select: none;[m
[32m+[m[32m    -ms-user-select: none; user-select: none;[m
[32m+[m[32m    padding: 0 4px; width: 4em;[m
[32m+[m[32m  }[m
[32m+[m[32mpre.numberSource { margin-left: 3em;  padding-left: 4px; }[m
[32m+[m[32mdiv.sourceCode[m
[32m+[m[32m  {   }[m
[32m+[m[32m@media screen {[m
[32m+[m[32mpre > code.sourceCode > span > a:first-child::before { text-decoration: underline; }[m
[32m+[m[32m}[m
 </style>[m
 [m
 [m
[36m@@ -135,7 +170,11 @@[m [mul.task-list li input[type="checkbox"] {[m
   <ul>[m
   <li><a href="#advanced-topics-in-stratigraphic-paleobiology" id="toc-advanced-topics-in-stratigraphic-paleobiology" class="nav-link active" data-scroll-target="#advanced-topics-in-stratigraphic-paleobiology">Advanced topics in Stratigraphic Paleobiology</a></li>[m
   <li><a href="#introduction" id="toc-introduction" class="nav-link" data-scroll-target="#introduction">Introduction</a></li>[m
[31m-  <li><a href="#code-cheat-sheet" id="toc-code-cheat-sheet" class="nav-link" data-scroll-target="#code-cheat-sheet">Code cheat sheet</a></li>[m
[32m+[m[32m  <li><a href="#code-cheat-sheet" id="toc-code-cheat-sheet" class="nav-link" data-scroll-target="#code-cheat-sheet">Code cheat sheet</a>[m
[32m+[m[32m  <ul class="collapse">[m
[32m+[m[32m  <li><a href="#modeling-taphonomy" id="toc-modeling-taphonomy" class="nav-link" data-scroll-target="#modeling-taphonomy">Modeling taphonomy</a></li>[m
[32m+[m[32m  <li><a href="#phylogenetics" id="toc-phylogenetics" class="nav-link" data-scroll-target="#phylogenetics">Phylogenetics</a></li>[m
[32m+[m[32m  </ul></li>[m
   <li><a href="#tasks" id="toc-tasks" class="nav-link" data-scroll-target="#tasks">Tasks</a></li>[m
   <li><a href="#solutions" id="toc-solutions" class="nav-link" data-scroll-target="#solutions">Solutions</a></li>[m
   </ul>[m
[36m@@ -165,15 +204,163 @@[m [mul.task-list li input[type="checkbox"] {[m
 [m
 <section id="advanced-topics-in-stratigraphic-paleobiology" class="level2">[m
 <h2 class="anchored" data-anchor-id="advanced-topics-in-stratigraphic-paleobiology">Advanced topics in Stratigraphic Paleobiology</h2>[m
[31m-<p>In this practical, we go through some advanced topics, such as modeling taphonomic effects, and transforming phylogenetic data (time trees and fossils)</p>[m
[32m+[m[32m<p>In this practical, we go through some advanced topics, such as modeling taphonomic effects, and transforming phylogenetic data (time trees and fossils).</p>[m
 </section>[m
 <section id="introduction" class="level2">[m
 <h2 class="anchored" data-anchor-id="introduction">Introduction</h2>[m
[31m-<p>TBA</p>[m
[32m+[m[32m<p>In this workshop, we have gone through the standard examples of stratigraphic paleobiology, including how stratigraphic biases such as gaps, changes in sedimentation rate and ecological gradients change our perception of last occurrences, fossil abundance, and stratophenetic change. These are just examples of general principles of how stratigraphic architectures modify observations of past (not necessarily only) biotic change. Abstracting this, there are two modifications to temporal data by stratigraphy:</p>[m
[32m+[m[32m<ul>[m
[32m+[m[32m<li><p>Change in observation probability, e.g, due to niche models or taphonomic effects.</p></li>[m
[32m+[m[32m<li><p>Misaglignmet of the stratigraphic and time domain due to changes in sedimentation rate and hiatuses. This includes removal of data due to gaps.</p></li>[m
[32m+[m[32m</ul>[m
[32m+[m[32m<p>These effects apply universally to all types of data observable in the stratigraphic record, e.g, proxy records derived from fossil data.</p>[m
[32m+[m[32m<p>Naturally, the modeling framework of the <code>StratPal</code> package expands to this more general setting. In this practical, we explore how these general principles apply to two advanced topics: Taphonomy and phylogenetics.</p>[m
 </section>[m
 <section id="code-cheat-sheet" class="level2">[m
 <h2 class="anchored" data-anchor-id="code-cheat-sheet">Code cheat sheet</h2>[m
[31m-<p>TBA</p>[m
[32m+[m[32m<section id="modeling-taphonomy" class="level3">[m
[32m+[m[32m<h3 class="anchored" data-anchor-id="modeling-taphonomy">Modeling taphonomy</h3>[m
[32m+[m[32m<p>Modeling taphonomy follows the same principles as modeling ecology. You need to define two function:</p>[m
[32m+[m[32m<ul>[m
[32m+[m[32m<li><p>a function <code>ctc</code> describing the change in taphonomic conditions with time (corresponding to the change in gradient with time for ecology).</p></li>[m
[32m+[m[32m<li><p>a function <code>pres_potential</code> that specifies how likely a fossil is to be preserved given some taphonomic conditions (equivalent to the niche definiton for ecology). Note that this requires you to write your own functions.</p></li>[m
[32m+[m[32m</ul>[m
[32m+[m[32m<p>Both can then be passed to the function <code>apply_taphonomy</code> (instead of <code>apply_ecology</code>)</p>[m
[32m+[m[32m<div class="cell">[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb1"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb1-1"><a href="#cb1-1" aria-hidden="true" tabindex="-1"></a><span class="fu">library</span>(StratPal)</span>[m
[32m+[m[32m<span id="cb1-2"><a href="#cb1-2" aria-hidden="true" tabindex="-1"></a><span class="fu">library</span>(admtools)</span>[m
[32m+[m[32m<span id="cb1-3"><a href="#cb1-3" aria-hidden="true" tabindex="-1"></a><span class="co"># assuming taphonomy is driven by water depth</span></span>[m
[32m+[m[32m<span id="cb1-4"><a href="#cb1-4" aria-hidden="true" tabindex="-1"></a>pos <span class="ot">=</span> <span class="st">"2km"</span></span>[m
[32m+[m[32m<span id="cb1-5"><a href="#cb1-5" aria-hidden="true" tabindex="-1"></a>ctc <span class="ot">=</span> <span class="fu">approxfun</span>(<span class="at">x =</span> scenarioA<span class="sc">$</span>t_myr, scenarioA<span class="sc">$</span>wd_m[,pos])</span>[m
[32m+[m[32m<span id="cb1-6"><a href="#cb1-6" aria-hidden="true" tabindex="-1"></a>t <span class="ot">=</span> scenarioA<span class="sc">$</span>t_myr</span>[m
[32m+[m[32m<span id="cb1-7"><a href="#cb1-7" aria-hidden="true" tabindex="-1"></a><span class="fu">plot</span>(<span class="at">x =</span> t, </span>[m
[32m+[m[32m<span id="cb1-8"><a href="#cb1-8" aria-hidden="true" tabindex="-1"></a>     <span class="at">y =</span> <span class="fu">ctc</span>(t),</span>[m
[32m+[m[32m<span id="cb1-9"><a href="#cb1-9" aria-hidden="true" tabindex="-1"></a>     <span class="at">xlab =</span> <span class="st">"Time [Myr]"</span>,</span>[m
[32m+[m[32m<span id="cb1-10"><a href="#cb1-10" aria-hidden="true" tabindex="-1"></a>     <span class="at">ylab =</span> <span class="st">"Taphonomic gradient - Water depth [m]"</span>,</span>[m
[32m+[m[32m<span id="cb1-11"><a href="#cb1-11" aria-hidden="true" tabindex="-1"></a>     <span class="at">main =</span> <span class="st">"Taphonomic gradient"</span>)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
[32m+[m[32m<div class="cell-output-display">[m
[32m+[m[32m<div>[m
[32m+[m[32m<figure class="figure">[m
[32m+[m[32m<p><img src="advanced_topics_files/figure-html/advanced_topic_taphonomy_1-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m</figure>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m<div class="cell">[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb2"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb2-1"><a href="#cb2-1" aria-hidden="true" tabindex="-1"></a><span class="co"># preservation probability</span></span>[m
[32m+[m[32m<span id="cb2-2"><a href="#cb2-2" aria-hidden="true" tabindex="-1"></a><span class="co"># * 0 for terrestrial environments, </span></span>[m
[32m+[m[32m<span id="cb2-3"><a href="#cb2-3" aria-hidden="true" tabindex="-1"></a><span class="co"># * 0.5 for shallow water</span></span>[m
[32m+[m[32m<span id="cb2-4"><a href="#cb2-4" aria-hidden="true" tabindex="-1"></a><span class="co"># * and 0.9 for deeper water</span></span>[m
[32m+[m[32m<span id="cb2-5"><a href="#cb2-5" aria-hidden="true" tabindex="-1"></a>pres_potential<span class="ot">=</span> <span class="cf">function</span>(x){</span>[m
[32m+[m[32m<span id="cb2-6"><a href="#cb2-6" aria-hidden="true" tabindex="-1"></a>  p <span class="ot">=</span> <span class="fu">rep</span>(<span class="cn">NA</span>, <span class="fu">length</span>(x))</span>[m
[32m+[m[32m<span id="cb2-7"><a href="#cb2-7" aria-hidden="true" tabindex="-1"></a>  p[x<span class="sc">&lt;=</span> <span class="dv">0</span>] <span class="ot">=</span> <span class="dv">0</span></span>[m
[32m+[m[32m<span id="cb2-8"><a href="#cb2-8" aria-hidden="true" tabindex="-1"></a>  p[x <span class="sc">&gt;</span> <span class="dv">0</span> <span class="sc">&amp;</span> x <span class="sc">&lt;=</span> <span class="dv">5</span>] <span class="ot">=</span> <span class="fl">0.5</span></span>[m
[32m+[m[32m<span id="cb2-9"><a href="#cb2-9" aria-hidden="true" tabindex="-1"></a>  p[x<span class="sc">&gt;</span> <span class="dv">5</span> ] <span class="ot">=</span> <span class="fl">0.9</span></span>[m
[32m+[m[32m<span id="cb2-10"><a href="#cb2-10" aria-hidden="true" tabindex="-1"></a>  <span class="fu">return</span>(p)</span>[m
[32m+[m[32m<span id="cb2-11"><a href="#cb2-11" aria-hidden="true" tabindex="-1"></a>}</span>[m
[32m+[m[32m<span id="cb2-12"><a href="#cb2-12" aria-hidden="true" tabindex="-1"></a>wds <span class="ot">=</span> <span class="fu">seq</span>(<span class="sc">-</span><span class="dv">1</span>, <span class="dv">15</span>, <span class="at">by =</span> <span class="fl">0.1</span>)</span>[m
[32m+[m[32m<span id="cb2-13"><a href="#cb2-13" aria-hidden="true" tabindex="-1"></a><span class="fu">plot</span>(<span class="at">x =</span> wds,</span>[m
[32m+[m[32m<span id="cb2-14"><a href="#cb2-14" aria-hidden="true" tabindex="-1"></a>     <span class="at">y =</span> <span class="fu">pres_potential</span>(wds),</span>[m
[32m+[m[32m<span id="cb2-15"><a href="#cb2-15" aria-hidden="true" tabindex="-1"></a>     <span class="at">xlab =</span> <span class="st">"Water depth [m]"</span>,</span>[m
[32m+[m[32m<span id="cb2-16"><a href="#cb2-16" aria-hidden="true" tabindex="-1"></a>     <span class="at">ylab =</span> <span class="st">"Preservation probability"</span>,</span>[m
[32m+[m[32m<span id="cb2-17"><a href="#cb2-17" aria-hidden="true" tabindex="-1"></a>     <span class="at">ylim =</span> <span class="fu">c</span>(<span class="dv">0</span>,<span class="dv">1</span>))</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
[32m+[m[32m<div class="cell-output-display">[m
[32m+[m[32m<div>[m
[32m+[m[32m<figure class="figure">[m
[32m+[m[32m<p><img src="advanced_topics_files/figure-html/advanced_topic_taphonomy_2-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m</figure>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m<p>You can now incorporate taphonomic effects into your pipeline by passing those functions to <code>apply_taphonomy</code>:</p>[m
[32m+[m[32m<div class="cell">[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb3"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb3-1"><a href="#cb3-1" aria-hidden="true" tabindex="-1"></a><span class="fu">p3</span>(<span class="at">rate =</span> <span class="dv">10</span>, <span class="at">from =</span> <span class="dv">0</span>, <span class="at">to =</span> <span class="dv">2</span>, <span class="at">n =</span> <span class="dv">1000</span>) <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb3-2"><a href="#cb3-2" aria-hidden="true" tabindex="-1"></a>  <span class="fu">apply_taphonomy</span>(<span class="at">pres_potential =</span> pres_potential, <span class="at">ctc =</span> ctc) <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb3-3"><a href="#cb3-3" aria-hidden="true" tabindex="-1"></a>  <span class="fu">hist</span>(<span class="at">main =</span> <span class="st">"Fossil abundance after taphonomic effects"</span>,</span>[m
[32m+[m[32m<span id="cb3-4"><a href="#cb3-4" aria-hidden="true" tabindex="-1"></a>       <span class="at">ylab =</span> <span class="st">"# Fossils"</span>,</span>[m
[32m+[m[32m<span id="cb3-5"><a href="#cb3-5" aria-hidden="true" tabindex="-1"></a>       <span class="at">xlab =</span> <span class="st">"Time [Myr]"</span>)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
[32m+[m[32m<div class="cell-output-display">[m
[32m+[m[32m<div>[m
[32m+[m[32m<figure class="figure">[m
[32m+[m[32m<p><img src="advanced_topics_files/figure-html/advanced_topic_taphonomy_3-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m</figure>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m<p>Note that because of the generality of the implementation, taphonomic effects can immediately be incorporated into a model selection workflows in combination with the <code>paleoTS</code> package and stratigraphic effects:</p>[m
[32m+[m[32m<div class="cell">[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb4"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb4-1"><a href="#cb4-1" aria-hidden="true" tabindex="-1"></a><span class="fu">library</span>(paleoTS) <span class="co"># load paleoTS package for model selection &amp; plotting</span></span>[m
[32m+[m[32m<span id="cb4-2"><a href="#cb4-2" aria-hidden="true" tabindex="-1"></a></span>[m
[32m+[m[32m<span id="cb4-3"><a href="#cb4-3" aria-hidden="true" tabindex="-1"></a>pos <span class="ot">=</span> <span class="st">"2km"</span></span>[m
[32m+[m[32m<span id="cb4-4"><a href="#cb4-4" aria-hidden="true" tabindex="-1"></a>adm <span class="ot">=</span> <span class="fu">tp_to_adm</span>(<span class="at">t =</span> scenarioA<span class="sc">$</span>t_myr,        </span>[m
[32m+[m[32m<span id="cb4-5"><a href="#cb4-5" aria-hidden="true" tabindex="-1"></a>                <span class="at">h =</span> scenarioA<span class="sc">$</span>h_m[,pos],</span>[m
[32m+[m[32m<span id="cb4-6"><a href="#cb4-6" aria-hidden="true" tabindex="-1"></a>                <span class="at">T_unit =</span> <span class="st">"Myr"</span>,</span>[m
[32m+[m[32m<span id="cb4-7"><a href="#cb4-7" aria-hidden="true" tabindex="-1"></a>                <span class="at">L_unit =</span> <span class="st">"m"</span>)</span>[m
[32m+[m[32m<span id="cb4-8"><a href="#cb4-8" aria-hidden="true" tabindex="-1"></a>temp_res <span class="ot">=</span> <span class="fl">0.1</span>                                             <span class="co"># temporal resolution in Myr</span></span>[m
[32m+[m[32m<span id="cb4-9"><a href="#cb4-9" aria-hidden="true" tabindex="-1"></a><span class="fu">seq</span>(<span class="fu">min_time</span>(adm), <span class="fu">max_time</span>(adm), <span class="at">by =</span> temp_res) <span class="sc">|&gt;</span>           <span class="co"># time steps where the trait evolution is simulated</span></span>[m
[32m+[m[32m<span id="cb4-10"><a href="#cb4-10" aria-hidden="true" tabindex="-1"></a>  <span class="fu">random_walk_sl</span>(<span class="at">sigma =</span> <span class="dv">1</span>, <span class="at">mu =</span> <span class="dv">3</span>, <span class="at">y0 =</span> <span class="dv">0</span>, <span class="at">intrapop_var =</span> <span class="dv">1</span>, <span class="at">n_per_sample =</span> <span class="dv">5</span>) <span class="sc">|&gt;</span>                   <span class="co"># simulate trait evolution</span></span>[m
[32m+[m[32m<span id="cb4-11"><a href="#cb4-11" aria-hidden="true" tabindex="-1"></a>  <span class="fu">apply_taphonomy</span>(<span class="at">pres_potential =</span> pres_potential, <span class="at">ctc =</span> ctc) <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb4-12"><a href="#cb4-12" aria-hidden="true" tabindex="-1"></a>  <span class="fu">time_to_strat</span>(adm, <span class="at">destructive =</span> <span class="cn">TRUE</span>) <span class="sc">|&gt;</span> </span>[m
[32m+[m[32m<span id="cb4-13"><a href="#cb4-13" aria-hidden="true" tabindex="-1"></a>  <span class="fu">reduce_to_paleoTS</span>() <span class="sc">|&gt;</span><span class="co"># transform into stratigraphic domain</span></span>[m
[32m+[m[32m<span id="cb4-14"><a href="#cb4-14" aria-hidden="true" tabindex="-1"></a>  <span class="fu">plot</span>(<span class="at">xlab =</span> <span class="fu">paste0</span>(<span class="st">"Stratigraphic position ["</span>,<span class="fu">get_L_unit</span>(adm),<span class="st">"]"</span>), <span class="co"># plot</span></span>[m
[32m+[m[32m<span id="cb4-15"><a href="#cb4-15" aria-hidden="true" tabindex="-1"></a>       <span class="at">ylab =</span> <span class="st">"Trait value"</span>) </span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
[32m+[m[32m<div class="cell-output-display">[m
[32m+[m[32m<div>[m
[32m+[m[32m<figure class="figure">[m
[32m+[m[32m<p><img src="advanced_topics_files/figure-html/advanced_topic_taphonomy_4-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m</figure>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m</section>[m
[32m+[m[32m<section id="phylogenetics" class="level3">[m
[32m+[m[32m<h3 class="anchored" data-anchor-id="phylogenetics">Phylogenetics</h3>[m
[32m+[m[32m<p>Age-depth models can be used to transform any type of data from the time to the stratigraphic domain. Here we give an example using phylogenetic trees (time trees).</p>[m
[32m+[m[32m<div class="cell">[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb5"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb5-1"><a href="#cb5-1" aria-hidden="true" tabindex="-1"></a><span class="fu">library</span>(FossilSim)</span>[m
[32m+[m[32m<span id="cb5-2"><a href="#cb5-2" aria-hidden="true" tabindex="-1"></a><span class="fu">library</span>(ape)</span>[m
[32m+[m[32m<span id="cb5-3"><a href="#cb5-3" aria-hidden="true" tabindex="-1"></a>tree <span class="ot">=</span> ape<span class="sc">::</span><span class="fu">rbdtree</span>(<span class="at">birth =</span> <span class="dv">2</span>, <span class="at">death =</span> <span class="dv">1</span>, <span class="at">Tmax =</span> <span class="fu">max_time</span>(adm))</span>[m
[32m+[m[32m<span id="cb5-4"><a href="#cb5-4" aria-hidden="true" tabindex="-1"></a>fossils <span class="ot">=</span> FossilSim<span class="sc">::</span><span class="fu">sim.fossils.poisson</span>(<span class="at">rate =</span> <span class="dv">2</span>, <span class="at">tree =</span> tree)</span>[m
[32m+[m[32m<span id="cb5-5"><a href="#cb5-5" aria-hidden="true" tabindex="-1"></a><span class="fu">plot</span>(fossils, tree)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
[32m+[m[32m<div class="cell-output-display">[m
[32m+[m[32m<div>[m
[32m+[m[32m<figure class="figure">[m
[32m+[m[32m<p><img src="advanced_topics_files/figure-html/advanced_topic_phylogenetics_1-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m</figure>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m<div class="cell">[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb6"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb6-1"><a href="#cb6-1" aria-hidden="true" tabindex="-1"></a><span class="co"># plot phylogenetic tree in stratigraphic domain</span></span>[m
[32m+[m[32m<span id="cb6-2"><a href="#cb6-2" aria-hidden="true" tabindex="-1"></a>tree_strat <span class="ot">=</span> tree <span class="sc">|&gt;</span> </span>[m
[32m+[m[32m<span id="cb6-3"><a href="#cb6-3" aria-hidden="true" tabindex="-1"></a>  <span class="fu">time_to_strat</span>(adm)</span>[m
[32m+[m[32m<span id="cb6-4"><a href="#cb6-4" aria-hidden="true" tabindex="-1"></a><span class="fu">plot</span>(tree_strat)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
[32m+[m[32m<div class="cell-output-display">[m
[32m+[m[32m<div>[m
[32m+[m[32m<figure class="figure">[m
[32m+[m[32m<p><img src="advanced_topics_files/figure-html/advanced_topic_phylogenetics_2-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m</figure>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m<div class="cell">[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb7"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb7-1"><a href="#cb7-1" aria-hidden="true" tabindex="-1"></a><span class="co"># add fossils to plot - note that the reversal via `rev_dir`</span></span>[m
[32m+[m[32m<span id="cb7-2"><a href="#cb7-2" aria-hidden="true" tabindex="-1"></a><span class="co"># this is necessary bc fossils are represented in time before present</span></span>[m
[32m+[m[32m<span id="cb7-3"><a href="#cb7-3" aria-hidden="true" tabindex="-1"></a><span class="co"># whereas the age-depth model counts time from 0 forwards</span></span>[m
[32m+[m[32m<span id="cb7-4"><a href="#cb7-4" aria-hidden="true" tabindex="-1"></a>fossils_strat <span class="ot">=</span> fossils <span class="sc">|&gt;</span> </span>[m
[32m+[m[32m<span id="cb7-5"><a href="#cb7-5" aria-hidden="true" tabindex="-1"></a>  <span class="fu">rev_dir</span>(<span class="at">ref =</span> <span class="fu">max_time</span>(adm)) <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb7-6"><a href="#cb7-6" aria-hidden="true" tabindex="-1"></a>  <span class="fu">time_to_strat</span>(adm) <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb7-7"><a href="#cb7-7" aria-hidden="true" tabindex="-1"></a>  <span class="fu">rev_dir</span>(<span class="at">ref =</span> <span class="fu">max_height</span>(adm)) <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb7-8"><a href="#cb7-8" aria-hidden="true" tabindex="-1"></a>  <span class="fu">plot</span>(tree_strat)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
[32m+[m[32m<div class="cell-output-display">[m
[32m+[m[32m<div>[m
[32m+[m[32m<figure class="figure">[m
[32m+[m[32m<p><img src="advanced_topics_files/figure-html/advanced_topic_phylogenetics_3-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m</figure>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m</section>[m
 </section>[m
 <section id="tasks" class="level2">[m
 <h2 class="anchored" data-anchor-id="tasks">Tasks</h2>[m
[36m@@ -183,11 +370,12 @@[m [mul.task-list li input[type="checkbox"] {[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-Task 1: Taphonomic effects[m
[32m+[m[32mTask 4.1: Taphonomic effects[m
 </div>[m
 </div>[m
 <div class="callout-body-container callout-body">[m
[31m-[m
[32m+[m[32m<p>Model a taxon that has a preservation probability of 0.2 in water depths lower than 20 m and a preservation probablity of 0.9 in water deeper than 20 m.</p>[m
[32m+[m[32m<p>How abundant is this taxon at different locations on the platform? From your modeling results along, is there any way to distinguish these taphonomic effect from an ecological effect?</p>[m
 </div>[m
 </div>[m
 <div class="callout callout-style-default callout-important callout-titled">[m
[36m@@ -196,11 +384,13 @@[m [mTask 1: Taphonomic effects[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-Task 2: Phylogenetic trees in stratigraphic context[m
[32m+[m[32mTask 4.2: Phylogenetic trees in stratigraphic context[m
 </div>[m
 </div>[m
 <div class="callout-body-container callout-body">[m
[31m-[m
[32m+[m[32m<p>Simulate an FBD (time)tree over the duration of the age-depth model and transform it at different locations using the age-depth model.</p>[m
[32m+[m[32m<p>Simulate some fossils along the tree using the <code>FossilSim</code> package.</p>[m
[32m+[m[32m<p>How are the trees affected at the different locations? What are the most obvious visual changes in their topology?</p>[m
 </div>[m
 </div>[m
 </section>[m
[36m@@ -212,13 +402,81 @@[m [mTask 2: Phylogenetic trees in stratigraphic context[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-Solution Task 1: Taphonomic effects[m
[32m+[m[32mSolution Task 4.1: Taphonomic effects[m
 </div>[m
 <div class="callout-btn-toggle d-inline-block border-0 py-1 ps-1 pe-0 float-end"><i class="callout-toggle"></i></div>[m
 </div>[m
 <div id="callout-3" class="callout-3-contents callout-collapse collapse">[m
 <div class="callout-body-container callout-body">[m
[31m-[m
[32m+[m[32m<p>Model a taxon that has a preservation probability of 0.2 in water depths lower than 20 m and a preservation probability of 0.9 in water deeper than 20 m.</p>[m
[32m+[m[32m<p>How abundant is this taxon at different locations on the platform? From your modeling results along, is there any way to distinguish these taphonomic effect from an ecological effect?</p>[m
[32m+[m[32m<p>Let’s first collect all age-depth models in a list for easy access:</p>[m
[32m+[m[32m<div class="cell">[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb8"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb8-1"><a href="#cb8-1" aria-hidden="true" tabindex="-1"></a>adm_list <span class="ot">=</span> <span class="fu">list</span>()                                     <span class="co"># storage for age-depth models</span></span>[m
[32m+[m[32m<span id="cb8-2"><a href="#cb8-2" aria-hidden="true" tabindex="-1"></a>dist <span class="ot">=</span> <span class="fu">paste</span>(<span class="fu">seq</span>(<span class="dv">2</span>, <span class="dv">12</span>, <span class="at">by =</span> <span class="dv">2</span>), <span class="st">"km"</span>, <span class="at">sep =</span> <span class="st">""</span>)      <span class="co"># distances from shore</span></span>[m
[32m+[m[32m<span id="cb8-3"><a href="#cb8-3" aria-hidden="true" tabindex="-1"></a><span class="cf">for</span> (pos <span class="cf">in</span> dist){                                    <span class="co"># construct ADMs for all distances</span></span>[m
[32m+[m[32m<span id="cb8-4"><a href="#cb8-4" aria-hidden="true" tabindex="-1"></a>  adm_list[[pos]] <span class="ot">=</span> <span class="fu">tp_to_adm</span>(<span class="at">t =</span> scenarioA<span class="sc">$</span>t_myr,        </span>[m
[32m+[m[32m<span id="cb8-5"><a href="#cb8-5" aria-hidden="true" tabindex="-1"></a>                             <span class="at">h =</span> scenarioA<span class="sc">$</span>h_m[,pos],</span>[m
[32m+[m[32m<span id="cb8-6"><a href="#cb8-6" aria-hidden="true" tabindex="-1"></a>                             <span class="at">T_unit =</span> <span class="st">"Myr"</span>,</span>[m
[32m+[m[32m<span id="cb8-7"><a href="#cb8-7" aria-hidden="true" tabindex="-1"></a>                             <span class="at">L_unit =</span> <span class="st">"m"</span>)</span>[m
[32m+[m[32m<span id="cb8-8"><a href="#cb8-8" aria-hidden="true" tabindex="-1"></a>}</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
[32m+[m[32m</div>[m
[32m+[m[32m<div class="cell">[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb9"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb9-1"><a href="#cb9-1" aria-hidden="true" tabindex="-1"></a><span class="co"># focus on 2 km offshore</span></span>[m
[32m+[m[32m<span id="cb9-2"><a href="#cb9-2" aria-hidden="true" tabindex="-1"></a>pos <span class="ot">=</span> <span class="st">"2km"</span></span>[m
[32m+[m[32m<span id="cb9-3"><a href="#cb9-3" aria-hidden="true" tabindex="-1"></a>amd <span class="ot">=</span> adm_list[[pos]]</span>[m
[32m+[m[32m<span id="cb9-4"><a href="#cb9-4" aria-hidden="true" tabindex="-1"></a>pres_potential<span class="ot">=</span> <span class="cf">function</span>(x){</span>[m
[32m+[m[32m<span id="cb9-5"><a href="#cb9-5" aria-hidden="true" tabindex="-1"></a>  p <span class="ot">=</span> <span class="fu">rep</span>(<span class="cn">NA</span>, <span class="fu">length</span>(x))</span>[m
[32m+[m[32m<span id="cb9-6"><a href="#cb9-6" aria-hidden="true" tabindex="-1"></a>  p[ x <span class="sc">&lt;=</span> <span class="dv">20</span>] <span class="ot">=</span> <span class="fl">0.2</span></span>[m
[32m+[m[32m<span id="cb9-7"><a href="#cb9-7" aria-hidden="true" tabindex="-1"></a>  p[x<span class="sc">&gt;</span> <span class="dv">20</span> ] <span class="ot">=</span> <span class="fl">0.9</span></span>[m
[32m+[m[32m<span id="cb9-8"><a href="#cb9-8" aria-hidden="true" tabindex="-1"></a>  <span class="fu">return</span>(p)</span>[m
[32m+[m[32m<span id="cb9-9"><a href="#cb9-9" aria-hidden="true" tabindex="-1"></a>}</span>[m
[32m+[m[32m<span id="cb9-10"><a href="#cb9-10" aria-hidden="true" tabindex="-1"></a>wds <span class="ot">=</span> <span class="fu">seq</span>(<span class="sc">-</span><span class="dv">1</span>, <span class="dv">35</span>, <span class="at">by =</span> <span class="fl">0.1</span>)</span>[m
[32m+[m[32m<span id="cb9-11"><a href="#cb9-11" aria-hidden="true" tabindex="-1"></a><span class="fu">plot</span>(<span class="at">x =</span> wds,</span>[m
[32m+[m[32m<span id="cb9-12"><a href="#cb9-12" aria-hidden="true" tabindex="-1"></a>     <span class="at">y =</span> <span class="fu">pres_potential</span>(wds),</span>[m
[32m+[m[32m<span id="cb9-13"><a href="#cb9-13" aria-hidden="true" tabindex="-1"></a>     <span class="at">xlab =</span> <span class="st">"Water depth [m]"</span>,</span>[m
[32m+[m[32m<span id="cb9-14"><a href="#cb9-14" aria-hidden="true" tabindex="-1"></a>     <span class="at">ylab =</span> <span class="st">"Preservation probability"</span>,</span>[m
[32m+[m[32m<span id="cb9-15"><a href="#cb9-15" aria-hidden="true" tabindex="-1"></a>     <span class="at">ylim =</span> <span class="fu">c</span>(<span class="dv">0</span>,<span class="dv">1</span>))</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
[32m+[m[32m<div class="cell-output-display">[m
[32m+[m[32m<div>[m
[32m+[m[32m<figure class="figure">[m
[32m+[m[32m<p><img src="advanced_topics_files/figure-html/solution_4_2_taphonomy_1-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m</figure>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb10"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb10-1"><a href="#cb10-1" aria-hidden="true" tabindex="-1"></a>ctc <span class="ot">=</span> <span class="fu">approxfun</span>(<span class="at">x =</span> scenarioA<span class="sc">$</span>t_myr, scenarioA<span class="sc">$</span>wd_m[,pos])</span>[m
[32m+[m[32m<span id="cb10-2"><a href="#cb10-2" aria-hidden="true" tabindex="-1"></a>t <span class="ot">=</span> scenarioA<span class="sc">$</span>t_myr</span>[m
[32m+[m[32m<span id="cb10-3"><a href="#cb10-3" aria-hidden="true" tabindex="-1"></a><span class="fu">plot</span>(<span class="at">x =</span> t, </span>[m
[32m+[m[32m<span id="cb10-4"><a href="#cb10-4" aria-hidden="true" tabindex="-1"></a>     <span class="at">y =</span> <span class="fu">ctc</span>(t),</span>[m
[32m+[m[32m<span id="cb10-5"><a href="#cb10-5" aria-hidden="true" tabindex="-1"></a>     <span class="at">xlab =</span> <span class="st">"Time [Myr]"</span>,</span>[m
[32m+[m[32m<span id="cb10-6"><a href="#cb10-6" aria-hidden="true" tabindex="-1"></a>     <span class="at">ylab =</span> <span class="st">"Taphonomic gradient - Water depth [m]"</span>,</span>[m
[32m+[m[32m<span id="cb10-7"><a href="#cb10-7" aria-hidden="true" tabindex="-1"></a>     <span class="at">main =</span> <span class="st">"Taphonomic gradient"</span>)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
[32m+[m[32m<div class="cell-output-display">[m
[32m+[m[32m<div>[m
[32m+[m[32m<figure class="figure">[m
[32m+[m[32m<p><img src="advanced_topics_files/figure-html/solution_4_2_taphonomy_1-2.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m</figure>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb11"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb11-1"><a href="#cb11-1" aria-hidden="true" tabindex="-1"></a><span class="fu">p3</span>(<span class="at">rate =</span> <span class="dv">10</span>, <span class="at">from =</span> <span class="fu">min_time</span>(adm), <span class="at">to =</span> <span class="fu">max_time</span>(adm), <span class="at">n =</span> <span class="dv">1000</span>) <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb11-2"><a href="#cb11-2" aria-hidden="true" tabindex="-1"></a>  <span class="fu">apply_taphonomy</span>(<span class="at">pres_potential =</span> pres_potential, <span class="at">ctc =</span> ctc) <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb11-3"><a href="#cb11-3" aria-hidden="true" tabindex="-1"></a>  <span class="fu">time_to_strat</span>(adm, <span class="at">destructive =</span> <span class="cn">TRUE</span>) <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb11-4"><a href="#cb11-4" aria-hidden="true" tabindex="-1"></a>  <span class="fu">hist</span>(<span class="at">xlab =</span> <span class="st">"Stratigraphic height [m]"</span>,</span>[m
[32m+[m[32m<span id="cb11-5"><a href="#cb11-5" aria-hidden="true" tabindex="-1"></a>       <span class="at">ylab =</span> <span class="st">"# Fossils"</span>,</span>[m
[32m+[m[32m<span id="cb11-6"><a href="#cb11-6" aria-hidden="true" tabindex="-1"></a>       <span class="at">main =</span> <span class="fu">paste0</span>(<span class="st">"Fossil abundance "</span>, pos, <span class="st">" from shore"</span>))</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
[32m+[m[32m<div class="cell-output-display">[m
[32m+[m[32m<div>[m
[32m+[m[32m<figure class="figure">[m
[32m+[m[32m<p><img src="advanced_topics_files/figure-html/solution_4_2_taphonomy_1-3.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m</figure>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m<p>The taxon is becomes more abundant in the distal parts of the platform, which is a combined effect of taphonomy and stratigraphy:</p>[m
[32m+[m[32m<ul>[m
[32m+[m[32m<li>Distal parts have deeper water, leading to higher preservation rates</li>[m
[32m+[m[32m<li>Distal parts also have less gaps, leading to less destruction of fossils due to erosion and nondeposition</li>[m
[32m+[m[32m</ul>[m
 </div>[m
 </div>[m
 </div>[m
[36m@@ -228,13 +486,46 @@[m [mSolution Task 1: Taphonomic effects[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-Solution Task 2: Phylogenetic trees in stratigraphic context[m
[32m+[m[32mSolution Task 4.2: Phylogenetic trees in stratigraphic context[m
 </div>[m
 <div class="callout-btn-toggle d-inline-block border-0 py-1 ps-1 pe-0 float-end"><i class="callout-toggle"></i></div>[m
 </div>[m
 <div id="callout-4" class="callout-4-contents callout-collapse collapse">[m
 <div class="callout-body-container callout-body">[m
[31m-[m
[32m+[m[32m<p>Simulate an FBD (time)tree over the duration of the age-depth model and transform it at different locations using the age-depth model.</p>[m
[32m+[m[32m<p>Simulate some fossils along the tree using the <code>FossilSim</code> package.</p>[m
[32m+[m[32m<p>How are the trees affected at the different locations? What are the most obvious visual changes in their topology?</p>[m
[32m+[m[32m<p>Based on the above code snippets, we get</p>[m
[32m+[m[32m<div class="cell">[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb12"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb12-1"><a href="#cb12-1" aria-hidden="true" tabindex="-1"></a>pos <span class="ot">=</span> <span class="st">"2km"</span></span>[m
[32m+[m[32m<span id="cb12-2"><a href="#cb12-2" aria-hidden="true" tabindex="-1"></a>adm <span class="ot">=</span> adm_list[[pos]]</span>[m
[32m+[m[32m<span id="cb12-3"><a href="#cb12-3" aria-hidden="true" tabindex="-1"></a>tree <span class="ot">=</span> ape<span class="sc">::</span><span class="fu">rbdtree</span>(<span class="at">birth =</span> <span class="dv">2</span>, <span class="at">death =</span> <span class="dv">1</span>, <span class="at">Tmax =</span> <span class="fu">max_time</span>(adm))</span>[m
[32m+[m[32m<span id="cb12-4"><a href="#cb12-4" aria-hidden="true" tabindex="-1"></a>fossils <span class="ot">=</span> FossilSim<span class="sc">::</span><span class="fu">sim.fossils.poisson</span>(<span class="at">rate =</span> <span class="dv">2</span>, <span class="at">tree =</span> tree)</span>[m
[32m+[m[32m<span id="cb12-5"><a href="#cb12-5" aria-hidden="true" tabindex="-1"></a><span class="fu">plot</span>(fossils, tree)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
[32m+[m[32m<div class="cell-output-display">[m
[32m+[m[32m<div>[m
[32m+[m[32m<figure class="figure">[m
[32m+[m[32m<p><img src="advanced_topics_files/figure-html/solution_4_2_phylogenetics_1-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m</figure>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb13"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb13-1"><a href="#cb13-1" aria-hidden="true" tabindex="-1"></a>tree_strat <span class="ot">=</span> tree <span class="sc">|&gt;</span> </span>[m
[32m+[m[32m<span id="cb13-2"><a href="#cb13-2" aria-hidden="true" tabindex="-1"></a>  <span class="fu">time_to_strat</span>(adm)</span>[m
[32m+[m[32m<span id="cb13-3"><a href="#cb13-3" aria-hidden="true" tabindex="-1"></a></span>[m
[32m+[m[32m<span id="cb13-4"><a href="#cb13-4" aria-hidden="true" tabindex="-1"></a>fossils_strat <span class="ot">=</span> fossils <span class="sc">|&gt;</span> </span>[m
[32m+[m[32m<span id="cb13-5"><a href="#cb13-5" aria-hidden="true" tabindex="-1"></a>  <span class="fu">rev_dir</span>(<span class="at">ref =</span> <span class="fu">max_time</span>(adm)) <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb13-6"><a href="#cb13-6" aria-hidden="true" tabindex="-1"></a>  <span class="fu">time_to_strat</span>(adm) <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb13-7"><a href="#cb13-7" aria-hidden="true" tabindex="-1"></a>  <span class="fu">rev_dir</span>(<span class="at">ref =</span> <span class="fu">max_height</span>(adm)) <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb13-8"><a href="#cb13-8" aria-hidden="true" tabindex="-1"></a>  <span class="fu">plot</span>(tree_strat)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
[32m+[m[32m<div class="cell-output-display">[m
[32m+[m[32m<div>[m
[32m+[m[32m<figure class="figure">[m
[32m+[m[32m<p><img src="advanced_topics_files/figure-html/solution_4_2_phylogenetics_1-2.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m</figure>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m<p>The most obvious change is the collapse of branches over gaps, leading to the apparent creation of hard polytomies. All fossils that were placed on these branches are removed as they coincide with the gaps, leading to an overall reduced number of fossils on the tree. As with the trait evolution, the gaps lead to an apparent increase in the rate of evolution, here expressed as parallel branching across the tree.</p>[m
 </div>[m
 </div>[m
 </div>[m
[1mdiff --git a/docs/event_data.html b/docs/event_data.html[m
[1mindex 1e1c55f..747a5ec 100644[m
[1m--- a/docs/event_data.html[m
[1m+++ b/docs/event_data.html[m
[36m@@ -2,7 +2,7 @@[m
 <html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en"><head>[m
 [m
 <meta charset="utf-8">[m
[31m-<meta name="generator" content="quarto-1.8.25">[m
[32m+[m[32m<meta name="generator" content="quarto-1.7.32">[m
 [m
 <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">[m
 [m
[36m@@ -55,7 +55,27 @@[m [mdiv.sourceCode[m
 @media screen {[m
 pre > code.sourceCode > span > a:first-child::before { text-decoration: underline; }[m
 }[m
[31m-</style>[m
[32m+[m[32m/* CSS for citations */[m
[32m+[m[32mdiv.csl-bib-body { }[m
[32m+[m[32mdiv.csl-entry {[m
[32m+[m[32m  clear: both;[m
[32m+[m[32m  margin-bottom: 0em;[m
[32m+[m[32m}[m
[32m+[m[32m.hanging-indent div.csl-entry {[m
[32m+[m[32m  margin-left:2em;[m
[32m+[m[32m  text-indent:-2em;[m
[32m+[m[32m}[m
[32m+[m[32mdiv.csl-left-margin {[m
[32m+[m[32m  min-width:2em;[m
[32m+[m[32m  float:left;[m
[32m+[m[32m}[m
[32m+[m[32mdiv.csl-right-inline {[m
[32m+[m[32m  margin-left:2em;[m
[32m+[m[32m  padding-left:1em;[m
[32m+[m[32m}[m
[32m+[m[32mdiv.csl-indent {[m
[32m+[m[32m  margin-left: 2em;[m
[32m+[m[32m}</style>[m
 [m
 [m
 <script src="site_libs/quarto-nav/quarto-nav.js"></script>[m
[36m@@ -67,15 +87,14 @@[m [mpre > code.sourceCode > span > a:first-child::before { text-decoration: underlin[m
 <meta name="quarto:offset" content="./">[m
 <script src="site_libs/quarto-html/quarto.js" type="module"></script>[m
 <script src="site_libs/quarto-html/tabsets/tabsets.js" type="module"></script>[m
[31m-<script src="site_libs/quarto-html/axe/axe-check.js" type="module"></script>[m
 <script src="site_libs/quarto-html/popper.min.js"></script>[m
 <script src="site_libs/quarto-html/tippy.umd.min.js"></script>[m
 <script src="site_libs/quarto-html/anchor.min.js"></script>[m
 <link href="site_libs/quarto-html/tippy.css" rel="stylesheet">[m
[31m-<link href="site_libs/quarto-html/quarto-syntax-highlighting-7b89279ff1a6dce999919e0e67d4d9ec.css" rel="stylesheet" id="quarto-text-highlighting-styles">[m
[32m+[m[32m<link href="site_libs/quarto-html/quarto-syntax-highlighting-37eea08aefeeee20ff55810ff984fec1.css" rel="stylesheet" id="quarto-text-highlighting-styles">[m
 <script src="site_libs/bootstrap/bootstrap.min.js"></script>[m
 <link href="site_libs/bootstrap/bootstrap-icons.css" rel="stylesheet">[m
[31m-<link href="site_libs/bootstrap/bootstrap-0b37c64f34216b628666a8dac638b53b.min.css" rel="stylesheet" append-hash="true" id="quarto-bootstrap" data-mode="light">[m
[32m+[m[32m<link href="site_libs/bootstrap/bootstrap-dfb324f25d9b1687192fa8be62ac8f9c.min.css" rel="stylesheet" append-hash="true" id="quarto-bootstrap" data-mode="light">[m
 <script id="quarto-search-options" type="application/json">{[m
   "location": "navbar",[m
   "copy-button": false,[m
[36m@@ -115,8 +134,6 @@[m [mpre > code.sourceCode > span > a:first-child::before { text-decoration: underlin[m
     <nav class="navbar navbar-expand-lg " data-bs-theme="dark">[m
       <div class="navbar-container container-fluid">[m
       <div class="navbar-brand-container mx-auto">[m
[31m-    <a href="./index.html" class="navbar-brand navbar-brand-logo">[m
[31m-    </a>[m
     <a class="navbar-brand" href="./index.html">[m
     <span class="navbar-title">Modeling Stratigraphic Paleobiology in R</span>[m
     </a>[m
[36m@@ -209,7 +226,7 @@[m [mpre > code.sourceCode > span > a:first-child::before { text-decoration: underlin[m
 </header>[m
 [m
 [m
[31m-<p>TODO: * write introduction * match examples to new data [to be done on Wed!] * write solution &amp; code snippet for range offset</p>[m
[32m+[m[32m<p>TODO: * write introduction</p>[m
 <section id="fossil-occurrences-niche-modeling-and-last-occurrences-45-min" class="level2">[m
 <h2 class="anchored" data-anchor-id="fossil-occurrences-niche-modeling-and-last-occurrences-45-min">Fossil occurrences, niche modeling and last occurrences (45 min)</h2>[m
 <p>In this practical, we explore niche models, and how you can build your own mass extinction (BYOME) using stratigraphic paleobiology.</p>[m
[36m@@ -223,7 +240,7 @@[m [mpre > code.sourceCode > span > a:first-child::before { text-decoration: underlin[m
 <h3 class="anchored" data-anchor-id="simulating-fossil-occurrences">Simulating fossil occurrences</h3>[m
 <p>Fossil locations or ages can be simulated using the <code>p3</code> function if the rate of fossil occurrences is constant:</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb1"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb1-1"><a href="#cb1-1" aria-hidden="true" tabindex="-1"></a><span class="fu">library</span>(StratPal)</span>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb1"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb1-1"><a href="#cb1-1" aria-hidden="true" tabindex="-1"></a><span class="fu">library</span>(StratPal)</span>[m
 <span id="cb1-2"><a href="#cb1-2" aria-hidden="true" tabindex="-1"></a><span class="fu">library</span>(admtools)</span>[m
 <span id="cb1-3"><a href="#cb1-3" aria-hidden="true" tabindex="-1"></a>pos <span class="ot">=</span> <span class="st">"2km"</span></span>[m
 <span id="cb1-4"><a href="#cb1-4" aria-hidden="true" tabindex="-1"></a>adm <span class="ot">=</span> <span class="fu">tp_to_adm</span>(<span class="at">t =</span> scenarioA<span class="sc">$</span>t_myr,        </span>[m
[36m@@ -234,11 +251,11 @@[m [mpre > code.sourceCode > span > a:first-child::before { text-decoration: underlin[m
 <span id="cb1-9"><a href="#cb1-9" aria-hidden="true" tabindex="-1"></a><span class="fu">p3</span>(<span class="at">rate =</span> rate, <span class="at">from =</span> <span class="dv">0</span>, <span class="at">to =</span> <span class="dv">1</span>) <span class="sc">|&gt;</span> </span>[m
 <span id="cb1-10"><a href="#cb1-10" aria-hidden="true" tabindex="-1"></a>  <span class="fu">hist</span>(<span class="at">main =</span> <span class="st">"Fossil abundance"</span>,</span>[m
 <span id="cb1-11"><a href="#cb1-11" aria-hidden="true" tabindex="-1"></a>       <span class="at">xlab =</span> <span class="st">"Time [Myr]"</span>,</span>[m
[31m-<span id="cb1-12"><a href="#cb1-12" aria-hidden="true" tabindex="-1"></a>       <span class="at">ylab =</span> <span class="st">"# Specimens"</span>)</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<span id="cb1-12"><a href="#cb1-12" aria-hidden="true" tabindex="-1"></a>       <span class="at">ylab =</span> <span class="st">"# Specimens"</span>)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[31m-<p><img src="event_data_files/figure-html/unnamed-chunk-1-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m<p><img src="event_data_files/figure-html/event_data_1-1.png" class="img-fluid figure-img" width="672"></p>[m
 </figure>[m
 </div>[m
 </div>[m
[36m@@ -249,17 +266,17 @@[m [mpre > code.sourceCode > span > a:first-child::before { text-decoration: underlin[m
 <h3 class="anchored" data-anchor-id="transforming-fossil-occurrences-to-the-stratigraphic-domain">Transforming fossil occurrences to the stratigraphic domain</h3>[m
 <p>You can transform fossil ages directly using <code>time_to_strat</code>:</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb2"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb2-1"><a href="#cb2-1" aria-hidden="true" tabindex="-1"></a>foss_per_myr <span class="ot">=</span> <span class="dv">300</span>                                                           <span class="co"># fossils per Myr</span></span>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb2"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb2-1"><a href="#cb2-1" aria-hidden="true" tabindex="-1"></a>foss_per_myr <span class="ot">=</span> <span class="dv">300</span>                                                           <span class="co"># fossils per Myr</span></span>[m
 <span id="cb2-2"><a href="#cb2-2" aria-hidden="true" tabindex="-1"></a><span class="fu">p3</span>(<span class="at">rate =</span> foss_per_myr, <span class="at">from =</span> <span class="fu">min_time</span>(adm), <span class="at">to =</span> <span class="fu">max_time</span>(adm)) <span class="sc">|&gt;</span>         <span class="co"># constant rate in time domain</span></span>[m
 <span id="cb2-3"><a href="#cb2-3" aria-hidden="true" tabindex="-1"></a>  <span class="fu">time_to_strat</span>(adm, <span class="at">destructive =</span> <span class="cn">TRUE</span>) <span class="sc">|&gt;</span>                                  <span class="co"># transform into depth domain</span></span>[m
 <span id="cb2-4"><a href="#cb2-4" aria-hidden="true" tabindex="-1"></a>  <span class="fu">hist</span>(<span class="at">xlab =</span> <span class="fu">paste0</span>(<span class="st">"Stratigraphic height ["</span>,<span class="fu">get_L_unit</span>(adm),<span class="st">"]"</span>),          <span class="co"># plot</span></span>[m
 <span id="cb2-5"><a href="#cb2-5" aria-hidden="true" tabindex="-1"></a>       <span class="at">main =</span> <span class="st">"Fossil abundance 2 km offshore"</span>,</span>[m
 <span id="cb2-6"><a href="#cb2-6" aria-hidden="true" tabindex="-1"></a>       <span class="at">ylab =</span> <span class="st">"# Fossils"</span>,</span>[m
[31m-<span id="cb2-7"><a href="#cb2-7" aria-hidden="true" tabindex="-1"></a>       <span class="at">breaks =</span> <span class="fu">seq</span>(<span class="at">from =</span> <span class="fu">min_height</span>(adm), <span class="at">to =</span> <span class="fu">max_height</span>(adm), <span class="at">length.out =</span> <span class="dv">20</span>))</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<span id="cb2-7"><a href="#cb2-7" aria-hidden="true" tabindex="-1"></a>       <span class="at">breaks =</span> <span class="fu">seq</span>(<span class="at">from =</span> <span class="fu">min_height</span>(adm), <span class="at">to =</span> <span class="fu">max_height</span>(adm), <span class="at">length.out =</span> <span class="dv">20</span>))</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[31m-<p><img src="event_data_files/figure-html/unnamed-chunk-2-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m<p><img src="event_data_files/figure-html/event_data_fossil_age_transformation-1.png" class="img-fluid figure-img" width="672"></p>[m
 </figure>[m
 </div>[m
 </div>[m
[36m@@ -270,23 +287,23 @@[m [mpre > code.sourceCode > span > a:first-child::before { text-decoration: underlin[m
 <h3 class="anchored" data-anchor-id="defining-niche-models">Defining niche models</h3>[m
 <p>You can define simple niche models with the functions <code>snp_niche</code> or <code>bounded_niche</code>:</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb3"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb3-1"><a href="#cb3-1" aria-hidden="true" tabindex="-1"></a>my_niche <span class="ot">=</span> <span class="fu">snd_niche</span>(<span class="at">opt =</span> <span class="dv">10</span>,       <span class="co"># preferred water depth </span></span>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb3"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb3-1"><a href="#cb3-1" aria-hidden="true" tabindex="-1"></a>my_niche <span class="ot">=</span> <span class="fu">snd_niche</span>(<span class="at">opt =</span> <span class="dv">10</span>,       <span class="co"># preferred water depth </span></span>[m
 <span id="cb3-2"><a href="#cb3-2" aria-hidden="true" tabindex="-1"></a>                     <span class="at">tol =</span> <span class="dv">5</span>,        <span class="co"># tolerance to water depth fluctuations</span></span>[m
[31m-<span id="cb3-3"><a href="#cb3-3" aria-hidden="true" tabindex="-1"></a>                     <span class="at">cutoff_val =</span> <span class="dv">0</span>) <span class="co"># cut off negative values - the taxon does not survive on land</span></span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<span id="cb3-3"><a href="#cb3-3" aria-hidden="true" tabindex="-1"></a>                     <span class="at">cutoff_val =</span> <span class="dv">0</span>) <span class="co"># cut off negative values - the taxon does not survive on land</span></span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 </div>[m
 <p>To visualize the niche you can plot it using the following code:</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb4"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb4-1"><a href="#cb4-1" aria-hidden="true" tabindex="-1"></a>max_wd <span class="ot">=</span> <span class="dv">60</span>                                     <span class="co"># maximum water depth</span></span>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb4"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb4-1"><a href="#cb4-1" aria-hidden="true" tabindex="-1"></a>max_wd <span class="ot">=</span> <span class="dv">60</span>                                     <span class="co"># maximum water depth</span></span>[m
 <span id="cb4-2"><a href="#cb4-2" aria-hidden="true" tabindex="-1"></a>x <span class="ot">=</span> <span class="fu">seq</span>(<span class="sc">-</span><span class="dv">2</span>, max_wd, <span class="at">by =</span> <span class="fl">0.1</span>)</span>[m
 <span id="cb4-3"><a href="#cb4-3" aria-hidden="true" tabindex="-1"></a><span class="fu">plot</span>(x, <span class="fu">my_niche</span>(x),</span>[m
 <span id="cb4-4"><a href="#cb4-4" aria-hidden="true" tabindex="-1"></a>     <span class="at">type =</span> <span class="st">"l"</span>,</span>[m
 <span id="cb4-5"><a href="#cb4-5" aria-hidden="true" tabindex="-1"></a>     <span class="at">xlab =</span> <span class="st">"Water depth [m]"</span>,</span>[m
 <span id="cb4-6"><a href="#cb4-6" aria-hidden="true" tabindex="-1"></a>     <span class="at">ylab =</span> <span class="st">"Collection probability"</span>,</span>[m
[31m-<span id="cb4-7"><a href="#cb4-7" aria-hidden="true" tabindex="-1"></a>     <span class="at">main =</span> <span class="st">"Collection probability of taxon"</span>)</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<span id="cb4-7"><a href="#cb4-7" aria-hidden="true" tabindex="-1"></a>     <span class="at">main =</span> <span class="st">"Collection probability of taxon"</span>)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[31m-<p><img src="event_data_files/figure-html/unnamed-chunk-4-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m<p><img src="event_data_files/figure-html/event_data_plot_niche-1.png" class="img-fluid figure-img" width="672"></p>[m
 </figure>[m
 </div>[m
 </div>[m
[36m@@ -301,7 +318,7 @@[m [mpre > code.sourceCode > span > a:first-child::before { text-decoration: underlin[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-<span class="screen-reader-only">Tip</span>Cline[m
[32m+[m[32mCline[m
 </div>[m
 </div>[m
 <div class="callout-body-container callout-body">[m
[36m@@ -310,40 +327,40 @@[m [mpre > code.sourceCode > span > a:first-child::before { text-decoration: underlin[m
 </div>[m
 <p>To define a function that returns the water depth with time, you can use the following code:</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb5"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb5-1"><a href="#cb5-1" aria-hidden="true" tabindex="-1"></a>pos <span class="ot">=</span> <span class="st">"2km"</span>                 <span class="co"># position in the platform we want water depth from</span></span>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb5"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb5-1"><a href="#cb5-1" aria-hidden="true" tabindex="-1"></a>pos <span class="ot">=</span> <span class="st">"2km"</span>                 <span class="co"># position in the platform we want water depth from</span></span>[m
 <span id="cb5-2"><a href="#cb5-2" aria-hidden="true" tabindex="-1"></a>t <span class="ot">=</span> scenarioA<span class="sc">$</span>t_myr         <span class="co"># time steps where water depth is determined by the model</span></span>[m
 <span id="cb5-3"><a href="#cb5-3" aria-hidden="true" tabindex="-1"></a>wd <span class="ot">=</span> scenarioA<span class="sc">$</span>wd_m[,pos]   <span class="co"># water depth 2 km from shore</span></span>[m
[31m-<span id="cb5-4"><a href="#cb5-4" aria-hidden="true" tabindex="-1"></a>gc <span class="ot">=</span> <span class="fu">approxfun</span>(t, wd)       <span class="co"># use linear interpolation between known water depths</span></span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<span id="cb5-4"><a href="#cb5-4" aria-hidden="true" tabindex="-1"></a>gc <span class="ot">=</span> <span class="fu">approxfun</span>(t, wd)       <span class="co"># use linear interpolation between known water depths</span></span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 </div>[m
 <p>You can visualize this function using the following code:</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb6"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb6-1"><a href="#cb6-1" aria-hidden="true" tabindex="-1"></a><span class="fu">plot</span>(<span class="at">x =</span> t,</span>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb6"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb6-1"><a href="#cb6-1" aria-hidden="true" tabindex="-1"></a><span class="fu">plot</span>(<span class="at">x =</span> t,</span>[m
 <span id="cb6-2"><a href="#cb6-2" aria-hidden="true" tabindex="-1"></a>     <span class="at">y =</span> <span class="fu">gc</span>(t), </span>[m
 <span id="cb6-3"><a href="#cb6-3" aria-hidden="true" tabindex="-1"></a>     <span class="at">type =</span> <span class="st">"l"</span>, </span>[m
 <span id="cb6-4"><a href="#cb6-4" aria-hidden="true" tabindex="-1"></a>     <span class="at">xlab =</span> <span class="st">"Time [Myr]"</span>,</span>[m
 <span id="cb6-5"><a href="#cb6-5" aria-hidden="true" tabindex="-1"></a>     <span class="at">ylab =</span> <span class="st">"Water depth [m]"</span>,</span>[m
[31m-<span id="cb6-6"><a href="#cb6-6" aria-hidden="true" tabindex="-1"></a>     <span class="at">main =</span> <span class="st">"Water depth 2 km offshore"</span>)</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<span id="cb6-6"><a href="#cb6-6" aria-hidden="true" tabindex="-1"></a>     <span class="at">main =</span> <span class="st">"Water depth 2 km offshore"</span>)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[31m-<p><img src="event_data_files/figure-html/unnamed-chunk-6-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m<p><img src="event_data_files/figure-html/event_data_plot_water_depth-1.png" class="img-fluid figure-img" width="672"></p>[m
 </figure>[m
 </div>[m
 </div>[m
 </div>[m
 <p>With both components (niche definition and cline change with time) defined, you can insert the niche model into the modeling pipeline via the function <code>apply_niche</code>:</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb7"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb7-1"><a href="#cb7-1" aria-hidden="true" tabindex="-1"></a><span class="fu">p3</span>(<span class="at">rate =</span> foss_per_myr, <span class="at">from =</span> <span class="fu">min_time</span>(adm), <span class="at">to =</span> <span class="fu">max_time</span>(adm)) <span class="sc">|&gt;</span>         <span class="co"># model occurrences based on constant rate</span></span>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb7"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb7-1"><a href="#cb7-1" aria-hidden="true" tabindex="-1"></a><span class="fu">p3</span>(<span class="at">rate =</span> foss_per_myr, <span class="at">from =</span> <span class="fu">min_time</span>(adm), <span class="at">to =</span> <span class="fu">max_time</span>(adm)) <span class="sc">|&gt;</span>         <span class="co"># model occurrences based on constant rate</span></span>[m
 <span id="cb7-2"><a href="#cb7-2" aria-hidden="true" tabindex="-1"></a>  <span class="fu">apply_niche</span>(<span class="at">niche_def =</span> my_niche, <span class="at">gc =</span> gc) <span class="sc">|&gt;</span>                              <span class="co"># apply niche model</span></span>[m
 <span id="cb7-3"><a href="#cb7-3" aria-hidden="true" tabindex="-1"></a>  <span class="fu">time_to_strat</span>(adm, <span class="at">destructive =</span> <span class="cn">TRUE</span>) <span class="sc">|&gt;</span>                                  <span class="co"># transform into strat. domain, destroy fossils that coincide with hiatuses </span></span>[m
 <span id="cb7-4"><a href="#cb7-4" aria-hidden="true" tabindex="-1"></a>  <span class="fu">hist</span>(<span class="at">xlab =</span> <span class="fu">paste0</span>(<span class="st">"Stratigraphic height ["</span>,<span class="fu">get_L_unit</span>(adm) ,<span class="st">"]"</span>),         <span class="co"># plot results</span></span>[m
 <span id="cb7-5"><a href="#cb7-5" aria-hidden="true" tabindex="-1"></a>       <span class="at">main =</span> <span class="st">"Fossil abundance 2 km from shore"</span>,</span>[m
 <span id="cb7-6"><a href="#cb7-6" aria-hidden="true" tabindex="-1"></a>       <span class="at">ylab =</span> <span class="st">"# Fossils"</span>,</span>[m
[31m-<span id="cb7-7"><a href="#cb7-7" aria-hidden="true" tabindex="-1"></a>       <span class="at">breaks =</span> <span class="fu">seq</span>(<span class="at">from =</span> <span class="fu">min_height</span>(adm), <span class="at">to =</span> <span class="fu">max_height</span>(adm), <span class="at">length.out =</span> <span class="dv">40</span>))</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<span id="cb7-7"><a href="#cb7-7" aria-hidden="true" tabindex="-1"></a>       <span class="at">breaks =</span> <span class="fu">seq</span>(<span class="at">from =</span> <span class="fu">min_height</span>(adm), <span class="at">to =</span> <span class="fu">max_height</span>(adm), <span class="at">length.out =</span> <span class="dv">40</span>))</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[31m-<p><img src="event_data_files/figure-html/unnamed-chunk-7-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m<p><img src="event_data_files/figure-html/event_data_apply_niche-1.png" class="img-fluid figure-img" width="672"></p>[m
 </figure>[m
 </div>[m
 </div>[m
[36m@@ -353,17 +370,17 @@[m [mpre > code.sourceCode > span > a:first-child::before { text-decoration: underlin[m
 <h3 class="anchored" data-anchor-id="simulating-and-transforming-last-occurrences">Simulating and transforming last occurrences</h3>[m
 <p>Timing of last occurrences can be simulated using <code>p3</code> or <code>p3_var_rate</code> just as fossil occurrence (or any other type of “event” data). They can be transformed using <code>time_to_strat</code>:</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb8"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb8-1"><a href="#cb8-1" aria-hidden="true" tabindex="-1"></a>rolo <span class="ot">=</span> <span class="dv">100</span>                                                               <span class="co"># rate of last occurrences [per Myr]</span></span>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb8"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb8-1"><a href="#cb8-1" aria-hidden="true" tabindex="-1"></a>rolo <span class="ot">=</span> <span class="dv">100</span>                                                               <span class="co"># rate of last occurrences [per Myr]</span></span>[m
 <span id="cb8-2"><a href="#cb8-2" aria-hidden="true" tabindex="-1"></a><span class="fu">p3</span>(<span class="at">rate =</span> rolo, <span class="at">from =</span> <span class="fu">min_time</span>(adm), <span class="at">to =</span> <span class="fu">max_time</span>(adm)) <span class="sc">|&gt;</span>             <span class="co"># constant rate of last occ</span></span>[m
 <span id="cb8-3"><a href="#cb8-3" aria-hidden="true" tabindex="-1"></a>  <span class="fu">time_to_strat</span>(adm, <span class="at">destructive =</span> <span class="cn">FALSE</span>) <span class="sc">|&gt;</span>                             <span class="co"># non-destructive transformation!</span></span>[m
 <span id="cb8-4"><a href="#cb8-4" aria-hidden="true" tabindex="-1"></a>  <span class="fu">hist</span>(<span class="at">xlab =</span> <span class="fu">paste0</span>(<span class="st">"Stratigraphic height ["</span>,<span class="fu">get_L_unit</span>(adm),<span class="st">"]"</span>),      <span class="co"># plot histogram</span></span>[m
 <span id="cb8-5"><a href="#cb8-5" aria-hidden="true" tabindex="-1"></a>       <span class="at">main =</span> <span class="st">"Last occurrences 2 km offshore"</span>,</span>[m
 <span id="cb8-6"><a href="#cb8-6" aria-hidden="true" tabindex="-1"></a>       <span class="at">ylab =</span> <span class="st">"# Last occurrences"</span>,</span>[m
[31m-<span id="cb8-7"><a href="#cb8-7" aria-hidden="true" tabindex="-1"></a>       <span class="at">breaks =</span> <span class="fu">seq</span>(<span class="at">from =</span> <span class="fu">min_height</span>(adm), <span class="at">to =</span> <span class="fu">max_height</span>(adm), <span class="at">length.out =</span> <span class="dv">20</span>))</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<span id="cb8-7"><a href="#cb8-7" aria-hidden="true" tabindex="-1"></a>       <span class="at">breaks =</span> <span class="fu">seq</span>(<span class="at">from =</span> <span class="fu">min_height</span>(adm), <span class="at">to =</span> <span class="fu">max_height</span>(adm), <span class="at">length.out =</span> <span class="dv">20</span>))</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[31m-<p><img src="event_data_files/figure-html/unnamed-chunk-8-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m<p><img src="event_data_files/figure-html/event_data_last_occ-1.png" class="img-fluid figure-img" width="672"></p>[m
 </figure>[m
 </div>[m
 </div>[m
[36m@@ -372,7 +389,20 @@[m [mpre > code.sourceCode > span > a:first-child::before { text-decoration: underlin[m
 </section>[m
 <section id="biostratigraphic-precision-range-offset" class="level3">[m
 <h3 class="anchored" data-anchor-id="biostratigraphic-precision-range-offset">Biostratigraphic precision (range offset)</h3>[m
[31m-<p>TBA</p>[m
[32m+[m[32m<p>Biostratigraphic precision is expressed as <em>range offset</em>, which is the difference between the true time of extinction and the last occurrence of a taxon. To determine it, you can use the wrapper function <code>range_offset</code>:</p>[m
[32m+[m[32m<div class="cell">[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb9"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb9-1"><a href="#cb9-1" aria-hidden="true" tabindex="-1"></a>t_ext <span class="ot">=</span> <span class="fl">1.5</span> <span class="co"># true time of extinction</span></span>[m
[32m+[m[32m<span id="cb9-2"><a href="#cb9-2" aria-hidden="true" tabindex="-1"></a>rate <span class="ot">=</span> <span class="dv">10</span> <span class="co"># fossil abundance (per Myr)</span></span>[m
[32m+[m[32m<span id="cb9-3"><a href="#cb9-3" aria-hidden="true" tabindex="-1"></a>r_offset <span class="ot">=</span> <span class="fu">range_offset</span>(<span class="at">t_ext =</span> t_ext,</span>[m
[32m+[m[32m<span id="cb9-4"><a href="#cb9-4" aria-hidden="true" tabindex="-1"></a>             <span class="at">rate =</span> rate,</span>[m
[32m+[m[32m<span id="cb9-5"><a href="#cb9-5" aria-hidden="true" tabindex="-1"></a>             <span class="at">adm =</span> adm)</span>[m
[32m+[m[32m<span id="cb9-6"><a href="#cb9-6" aria-hidden="true" tabindex="-1"></a>r_offset</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
[32m+[m[32m<div class="cell-output cell-output-stdout">[m
[32m+[m[32m<pre><code>        t         h[m[41m [m
[32m+[m[32m 0.583782 12.934267 </code></pre>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m<p>This determines the range offset both in the stratigraphic domain (height difference between the last fossil found and the extinction horizon) and the time domain (time difference between the true age of extinction and the last preserved fossil). Here the stratigraphic range offset is 12.93 meters and the temporal range offset is 0.58 Myr. See <code>?range_offset</code> for advanced usage, which includes the incorporation of variable rates, taphonomy, and ecology.</p>[m
 </section>[m
 </section>[m
 <section id="tasks" class="level2">[m
[36m@@ -383,7 +413,7 @@[m [mpre > code.sourceCode > span > a:first-child::before { text-decoration: underlin[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-<span class="screen-reader-only">Important</span>Task 1: Fossil abundance in the stratigraphic domain[m
[32m+[m[32mTask 3.1: Fossil abundance in the stratigraphic domain[m
 </div>[m
 </div>[m
 <div class="callout-body-container callout-body">[m
[36m@@ -398,7 +428,7 @@[m [mWith which stratigraphic effects are these peaks associated?</p>[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-<span class="screen-reader-only">Important</span>Task 2: Ecological controls on fossil abundance[m
[32m+[m[32mTask 3.2: Ecological controls on fossil abundance[m
 </div>[m
 </div>[m
 <div class="callout-body-container callout-body">[m
[36m@@ -413,7 +443,7 @@[m [mHow could you misinterpret the results?</p>[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-<span class="screen-reader-only">Important</span>Task 3: Last occurrences and artefactual mass extinctions[m
[32m+[m[32mTask 3.3: Last occurrences and artefactual mass extinctions[m
 </div>[m
 </div>[m
 <div class="callout-body-container callout-body">[m
[36m@@ -430,11 +460,11 @@[m [mUse your results to formulate a “stratigraphic null hypothesis” for clusters[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-<span class="screen-reader-only">Important</span>Task 4: Biostratigraphic precision and range offset[m
[32m+[m[32mTask 3.4: Biostratigraphic precision and range offset[m
 </div>[m
 </div>[m
 <div class="callout-body-container callout-body">[m
[31m-<p>Explore how range offset changes with the true time of extinction and fossil abundance.</p>[m
[32m+[m[32m<p>Explore how range offset changes with the true time of extinction, fossil abundance, and position along shore.</p>[m
 <p>Where and why is biostratigraphic precision best/worst?<br>[m
 How do your results change when you add a niche model to your code?</p>[m
 </div>[m
[36m@@ -443,62 +473,61 @@[m [mHow do your results change when you add a niche model to your code?</p>[m
 <section id="solutions" class="level2">[m
 <h2 class="anchored" data-anchor-id="solutions">Solutions</h2>[m
 <div class="callout callout-style-default callout-note callout-titled">[m
[31m-<div class="callout-header d-flex align-content-center collapsed" data-bs-toggle="collapse" data-bs-target=".callout-6-contents" aria-controls="callout-6" aria-expanded="false" aria-label="Toggle callout">[m
[32m+[m[32m<div class="callout-header d-flex align-content-center" data-bs-toggle="collapse" data-bs-target=".callout-6-contents" aria-controls="callout-6" aria-expanded="false" aria-label="Toggle callout">[m
 <div class="callout-icon-container">[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-<span class="screen-reader-only">Note</span>Solution Task 1[m
[32m+[m[32mSolution Task 3.1: Fossil abundance in the stratigraphic domain.[m
 </div>[m
 <div class="callout-btn-toggle d-inline-block border-0 py-1 ps-1 pe-0 float-end"><i class="callout-toggle"></i></div>[m
 </div>[m
 <div id="callout-6" class="callout-6-contents callout-collapse collapse">[m
 <div class="callout-body-container callout-body">[m
 <p>Simulate an abundant taxon, and transform the fossil ages into the stratigraphic domain.</p>[m
[31m-<pre><code>-   At which locations and stratigraphic heights do you observe peaks in fossil abundance?[m
[31m-[m
[31m--   With which stratigraphic effects are these peaks associated?</code></pre>[m
[32m+[m[32m<p>At which locations and stratigraphic heights do you observe peaks in fossil abundance?With which stratigraphic effects are these peaks associated?</p>[m
[32m+[m[32m<p>We start by collecting all age-depth models for convenience.</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb10"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb10-1"><a href="#cb10-1" aria-hidden="true" tabindex="-1"></a>adm_list <span class="ot">=</span> <span class="fu">list</span>()                                     <span class="co"># storage for age-depth models</span></span>[m
[31m-<span id="cb10-2"><a href="#cb10-2" aria-hidden="true" tabindex="-1"></a>dist <span class="ot">=</span> <span class="fu">paste</span>(<span class="fu">seq</span>(<span class="dv">2</span>, <span class="dv">12</span>, <span class="at">by =</span> <span class="dv">2</span>), <span class="st">"km"</span>, <span class="at">sep =</span> <span class="st">""</span>)      <span class="co"># distances from shore</span></span>[m
[31m-<span id="cb10-3"><a href="#cb10-3" aria-hidden="true" tabindex="-1"></a><span class="cf">for</span> (pos <span class="cf">in</span> dist){                                    <span class="co"># construct ADMs for all distances</span></span>[m
[31m-<span id="cb10-4"><a href="#cb10-4" aria-hidden="true" tabindex="-1"></a>  adm_list[[pos]] <span class="ot">=</span> <span class="fu">tp_to_adm</span>(<span class="at">t =</span> scenarioA<span class="sc">$</span>t_myr,        </span>[m
[31m-<span id="cb10-5"><a href="#cb10-5" aria-hidden="true" tabindex="-1"></a>                             <span class="at">h =</span> scenarioA<span class="sc">$</span>h_m[,pos],</span>[m
[31m-<span id="cb10-6"><a href="#cb10-6" aria-hidden="true" tabindex="-1"></a>                             <span class="at">T_unit =</span> <span class="st">"Myr"</span>,</span>[m
[31m-<span id="cb10-7"><a href="#cb10-7" aria-hidden="true" tabindex="-1"></a>                             <span class="at">L_unit =</span> <span class="st">"m"</span>)</span>[m
[31m-<span id="cb10-8"><a href="#cb10-8" aria-hidden="true" tabindex="-1"></a>}</span>[m
[31m-<span id="cb10-9"><a href="#cb10-9" aria-hidden="true" tabindex="-1"></a></span>[m
[31m-<span id="cb10-10"><a href="#cb10-10" aria-hidden="true" tabindex="-1"></a></span>[m
[31m-<span id="cb10-11"><a href="#cb10-11" aria-hidden="true" tabindex="-1"></a>pos <span class="ot">=</span> <span class="st">"2km"</span>              <span class="co"># position in the platform, to modify</span></span>[m
[31m-<span id="cb10-12"><a href="#cb10-12" aria-hidden="true" tabindex="-1"></a><span class="fu">stopifnot</span>(pos <span class="sc">%in%</span> dist) <span class="co"># validity check</span></span>[m
[31m-<span id="cb10-13"><a href="#cb10-13" aria-hidden="true" tabindex="-1"></a>adm <span class="ot">=</span> adm_list[[pos]]    <span class="co"># select ADM</span></span>[m
[31m-<span id="cb10-14"><a href="#cb10-14" aria-hidden="true" tabindex="-1"></a>rate <span class="ot">=</span> <span class="dv">200</span>               <span class="co"># fossil occurrences per Myr</span></span>[m
[31m-<span id="cb10-15"><a href="#cb10-15" aria-hidden="true" tabindex="-1"></a>sampl_bin <span class="ot">=</span> <span class="dv">2</span>            <span class="co"># sampling bins in m</span></span>[m
[31m-<span id="cb10-16"><a href="#cb10-16" aria-hidden="true" tabindex="-1"></a><span class="co"># Plot fossil abundance in the section</span></span>[m
[31m-<span id="cb10-17"><a href="#cb10-17" aria-hidden="true" tabindex="-1"></a><span class="fu">p3</span>(<span class="at">from =</span> <span class="fu">min_time</span>(adm), <span class="at">to =</span> <span class="fu">max_time</span>(adm), <span class="at">rate =</span> rate) <span class="sc">|&gt;</span></span>[m
[31m-<span id="cb10-18"><a href="#cb10-18" aria-hidden="true" tabindex="-1"></a>  <span class="fu">time_to_strat</span>(adm, <span class="at">destructive =</span> <span class="cn">TRUE</span>) <span class="sc">|&gt;</span></span>[m
[31m-<span id="cb10-19"><a href="#cb10-19" aria-hidden="true" tabindex="-1"></a>  <span class="fu">hist</span>(<span class="at">breaks =</span> <span class="fu">seq</span>(<span class="at">from =</span> <span class="fu">min_height</span>(adm), <span class="at">to =</span> <span class="fu">max_height</span>(adm) <span class="sc">+</span> sampl_bin, <span class="at">by =</span> sampl_bin),</span>[m
[31m-<span id="cb10-20"><a href="#cb10-20" aria-hidden="true" tabindex="-1"></a>       <span class="at">xlab =</span> <span class="st">"Stratigraphic height [m]"</span>,</span>[m
[31m-<span id="cb10-21"><a href="#cb10-21" aria-hidden="true" tabindex="-1"></a>       <span class="at">main =</span> <span class="fu">paste0</span>(<span class="st">"Fossil abundance "</span>, pos, <span class="st">" from shore"</span>))</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb11"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb11-1"><a href="#cb11-1" aria-hidden="true" tabindex="-1"></a>adm_list <span class="ot">=</span> <span class="fu">list</span>()                                     <span class="co"># storage for age-depth models</span></span>[m
[32m+[m[32m<span id="cb11-2"><a href="#cb11-2" aria-hidden="true" tabindex="-1"></a>dist <span class="ot">=</span> <span class="fu">paste</span>(<span class="fu">seq</span>(<span class="dv">2</span>, <span class="dv">12</span>, <span class="at">by =</span> <span class="dv">2</span>), <span class="st">"km"</span>, <span class="at">sep =</span> <span class="st">""</span>)      <span class="co"># distances from shore</span></span>[m
[32m+[m[32m<span id="cb11-3"><a href="#cb11-3" aria-hidden="true" tabindex="-1"></a><span class="cf">for</span> (pos <span class="cf">in</span> dist){                                    <span class="co"># construct ADMs for all distances</span></span>[m
[32m+[m[32m<span id="cb11-4"><a href="#cb11-4" aria-hidden="true" tabindex="-1"></a>  adm_list[[pos]] <span class="ot">=</span> <span class="fu">tp_to_adm</span>(<span class="at">t =</span> scenarioA<span class="sc">$</span>t_myr,        </span>[m
[32m+[m[32m<span id="cb11-5"><a href="#cb11-5" aria-hidden="true" tabindex="-1"></a>                             <span class="at">h =</span> scenarioA<span class="sc">$</span>h_m[,pos],</span>[m
[32m+[m[32m<span id="cb11-6"><a href="#cb11-6" aria-hidden="true" tabindex="-1"></a>                             <span class="at">T_unit =</span> <span class="st">"Myr"</span>,</span>[m
[32m+[m[32m<span id="cb11-7"><a href="#cb11-7" aria-hidden="true" tabindex="-1"></a>                             <span class="at">L_unit =</span> <span class="st">"m"</span>)</span>[m
[32m+[m[32m<span id="cb11-8"><a href="#cb11-8" aria-hidden="true" tabindex="-1"></a>}</span>[m
[32m+[m[32m<span id="cb11-9"><a href="#cb11-9" aria-hidden="true" tabindex="-1"></a></span>[m
[32m+[m[32m<span id="cb11-10"><a href="#cb11-10" aria-hidden="true" tabindex="-1"></a></span>[m
[32m+[m[32m<span id="cb11-11"><a href="#cb11-11" aria-hidden="true" tabindex="-1"></a>pos <span class="ot">=</span> <span class="st">"12km"</span>              <span class="co"># position in the platform, to modify</span></span>[m
[32m+[m[32m<span id="cb11-12"><a href="#cb11-12" aria-hidden="true" tabindex="-1"></a><span class="fu">stopifnot</span>(pos <span class="sc">%in%</span> dist) <span class="co"># validity check</span></span>[m
[32m+[m[32m<span id="cb11-13"><a href="#cb11-13" aria-hidden="true" tabindex="-1"></a>adm <span class="ot">=</span> adm_list[[pos]]    <span class="co"># select ADM</span></span>[m
[32m+[m[32m<span id="cb11-14"><a href="#cb11-14" aria-hidden="true" tabindex="-1"></a>rate <span class="ot">=</span> <span class="dv">2000</span>               <span class="co"># fossil occurrences per Myr</span></span>[m
[32m+[m[32m<span id="cb11-15"><a href="#cb11-15" aria-hidden="true" tabindex="-1"></a>sampl_bin <span class="ot">=</span> <span class="dv">2</span>            <span class="co"># sampling bins in m</span></span>[m
[32m+[m[32m<span id="cb11-16"><a href="#cb11-16" aria-hidden="true" tabindex="-1"></a><span class="co"># Plot fossil abundance in the section</span></span>[m
[32m+[m[32m<span id="cb11-17"><a href="#cb11-17" aria-hidden="true" tabindex="-1"></a><span class="fu">p3</span>(<span class="at">from =</span> <span class="fu">min_time</span>(adm), <span class="at">to =</span> <span class="fu">max_time</span>(adm), <span class="at">rate =</span> rate) <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb11-18"><a href="#cb11-18" aria-hidden="true" tabindex="-1"></a>  <span class="fu">time_to_strat</span>(adm, <span class="at">destructive =</span> <span class="cn">TRUE</span>) <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb11-19"><a href="#cb11-19" aria-hidden="true" tabindex="-1"></a>  <span class="fu">hist</span>(<span class="at">breaks =</span> <span class="fu">seq</span>(<span class="at">from =</span> <span class="fu">min_height</span>(adm), <span class="at">to =</span> <span class="fu">max_height</span>(adm) <span class="sc">+</span> sampl_bin, <span class="at">by =</span> sampl_bin),</span>[m
[32m+[m[32m<span id="cb11-20"><a href="#cb11-20" aria-hidden="true" tabindex="-1"></a>       <span class="at">xlab =</span> <span class="st">"Stratigraphic height [m]"</span>,</span>[m
[32m+[m[32m<span id="cb11-21"><a href="#cb11-21" aria-hidden="true" tabindex="-1"></a>       <span class="at">main =</span> <span class="fu">paste0</span>(<span class="st">"Fossil abundance "</span>, pos, <span class="st">" from shore"</span>))</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[31m-<p><img src="event_data_files/figure-html/unnamed-chunk-9-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m<p><img src="event_data_files/figure-html/task_3_1_solution_fossil_abundance-1.png" class="img-fluid figure-img" width="672"></p>[m
 </figure>[m
 </div>[m
 </div>[m
 </div>[m
[31m-<p>In the slope sections (10 and 12 km), there are peaks in fossil abundance associated with the intervals with stratigraphic condensation, which are coeval to drops in sea level. These peaks are not visible on the platform top. This is because here the sea level drops result in hiatuses, which destroys the fossils (as specified by the option <code>destructive = TRUE</code>).</p>[m
[32m+[m[32m<p>The constant fossil abundance in the time domain is expressed as irregular patterns in the stratigraphic domain, with increased irregularity when the number of simulated fossils (rate) is low. Peaks in fossil abundance correspond to decreased sediment accumulation as accomodation space is rapidly filled when the platform is flooded. Notably, hiatuses do not cause any peaks in fossil abundance, as we specified that fossils coindicing with gaps will be destroyed (option <code>destructive = TRUE</code>).</p>[m
 </div>[m
 </div>[m
 </div>[m
 <div class="callout callout-style-default callout-note callout-titled">[m
[31m-<div class="callout-header d-flex align-content-center collapsed" data-bs-toggle="collapse" data-bs-target=".callout-7-contents" aria-controls="callout-7" aria-expanded="false" aria-label="Toggle callout">[m
[32m+[m[32m<div class="callout-header d-flex align-content-center" data-bs-toggle="collapse" data-bs-target=".callout-7-contents" aria-controls="callout-7" aria-expanded="false" aria-label="Toggle callout">[m
 <div class="callout-icon-container">[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-<span class="screen-reader-only">Note</span>Solution Task 2[m
[32m+[m[32mSolution Task 3.2: Ecological controls on fossil abundance.[m
 </div>[m
 <div class="callout-btn-toggle d-inline-block border-0 py-1 ps-1 pe-0 float-end"><i class="callout-toggle"></i></div>[m
 </div>[m
[36m@@ -506,57 +535,57 @@[m [mHow do your results change when you add a niche model to your code?</p>[m
 <div class="callout-body-container callout-body">[m
 <p>Define a niche for a taxon, and add the niche model to your pipeline. - How and why do your results change? - How could you misinterpret the results?</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb11"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb11-1"><a href="#cb11-1" aria-hidden="true" tabindex="-1"></a>pos <span class="ot">=</span> <span class="st">"8km"</span>              <span class="co"># select position on the platform</span></span>[m
[31m-<span id="cb11-2"><a href="#cb11-2" aria-hidden="true" tabindex="-1"></a><span class="fu">stopifnot</span>(pos <span class="sc">%in%</span> dist) <span class="co"># check validity</span></span>[m
[31m-<span id="cb11-3"><a href="#cb11-3" aria-hidden="true" tabindex="-1"></a>adm <span class="ot">=</span> adm_list[[pos]]    <span class="co"># select age-depth model</span></span>[m
[31m-<span id="cb11-4"><a href="#cb11-4" aria-hidden="true" tabindex="-1"></a>rate <span class="ot">=</span> <span class="dv">200</span>               <span class="co"># no. of fossils per Myr</span></span>[m
[31m-<span id="cb11-5"><a href="#cb11-5" aria-hidden="true" tabindex="-1"></a><span class="co"># define niche</span></span>[m
[31m-<span id="cb11-6"><a href="#cb11-6" aria-hidden="true" tabindex="-1"></a>niche <span class="ot">=</span> <span class="fu">snd_niche</span>(<span class="at">opt =</span> <span class="dv">20</span>, <span class="at">tol =</span> <span class="dv">10</span>, <span class="at">cutoff_val =</span> <span class="dv">0</span>)</span>[m
[31m-<span id="cb11-7"><a href="#cb11-7" aria-hidden="true" tabindex="-1"></a><span class="co"># plot niche</span></span>[m
[31m-<span id="cb11-8"><a href="#cb11-8" aria-hidden="true" tabindex="-1"></a>max_wd <span class="ot">=</span> <span class="dv">60</span>                    <span class="co"># maximum water depth for plotting</span></span>[m
[31m-<span id="cb11-9"><a href="#cb11-9" aria-hidden="true" tabindex="-1"></a>x <span class="ot">=</span> <span class="fu">seq</span>(<span class="sc">-</span><span class="dv">2</span>, max_wd, <span class="at">by =</span> <span class="fl">0.1</span>)</span>[m
[31m-<span id="cb11-10"><a href="#cb11-10" aria-hidden="true" tabindex="-1"></a><span class="fu">plot</span>(x, <span class="fu">niche</span>(x),</span>[m
[31m-<span id="cb11-11"><a href="#cb11-11" aria-hidden="true" tabindex="-1"></a>     <span class="at">type =</span> <span class="st">"l"</span>,</span>[m
[31m-<span id="cb11-12"><a href="#cb11-12" aria-hidden="true" tabindex="-1"></a>     <span class="at">xlab =</span> <span class="st">"Water depth [m]"</span>,</span>[m
[31m-<span id="cb11-13"><a href="#cb11-13" aria-hidden="true" tabindex="-1"></a>     <span class="at">ylab =</span> <span class="st">"Collection probability"</span>,</span>[m
[31m-<span id="cb11-14"><a href="#cb11-14" aria-hidden="true" tabindex="-1"></a>     <span class="at">main =</span> <span class="st">"Collection probability of taxon"</span>)</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb12"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb12-1"><a href="#cb12-1" aria-hidden="true" tabindex="-1"></a>pos <span class="ot">=</span> <span class="st">"2km"</span>              <span class="co"># select position on the platform</span></span>[m
[32m+[m[32m<span id="cb12-2"><a href="#cb12-2" aria-hidden="true" tabindex="-1"></a><span class="fu">stopifnot</span>(pos <span class="sc">%in%</span> dist) <span class="co"># check validity</span></span>[m
[32m+[m[32m<span id="cb12-3"><a href="#cb12-3" aria-hidden="true" tabindex="-1"></a>adm <span class="ot">=</span> adm_list[[pos]]    <span class="co"># select age-depth model</span></span>[m
[32m+[m[32m<span id="cb12-4"><a href="#cb12-4" aria-hidden="true" tabindex="-1"></a>rate <span class="ot">=</span> <span class="dv">200</span>               <span class="co"># no. of fossils per Myr</span></span>[m
[32m+[m[32m<span id="cb12-5"><a href="#cb12-5" aria-hidden="true" tabindex="-1"></a><span class="co"># define niche</span></span>[m
[32m+[m[32m<span id="cb12-6"><a href="#cb12-6" aria-hidden="true" tabindex="-1"></a>niche <span class="ot">=</span> <span class="fu">snd_niche</span>(<span class="at">opt =</span> <span class="dv">20</span>, <span class="at">tol =</span> <span class="dv">10</span>, <span class="at">cutoff_val =</span> <span class="dv">0</span>)</span>[m
[32m+[m[32m<span id="cb12-7"><a href="#cb12-7" aria-hidden="true" tabindex="-1"></a><span class="co"># plot niche</span></span>[m
[32m+[m[32m<span id="cb12-8"><a href="#cb12-8" aria-hidden="true" tabindex="-1"></a>max_wd <span class="ot">=</span> <span class="dv">60</span>                    <span class="co"># maximum water depth for plotting</span></span>[m
[32m+[m[32m<span id="cb12-9"><a href="#cb12-9" aria-hidden="true" tabindex="-1"></a>x <span class="ot">=</span> <span class="fu">seq</span>(<span class="sc">-</span><span class="dv">2</span>, max_wd, <span class="at">by =</span> <span class="fl">0.1</span>)</span>[m
[32m+[m[32m<span id="cb12-10"><a href="#cb12-10" aria-hidden="true" tabindex="-1"></a><span class="fu">plot</span>(x, <span class="fu">niche</span>(x),</span>[m
[32m+[m[32m<span id="cb12-11"><a href="#cb12-11" aria-hidden="true" tabindex="-1"></a>     <span class="at">type =</span> <span class="st">"l"</span>,</span>[m
[32m+[m[32m<span id="cb12-12"><a href="#cb12-12" aria-hidden="true" tabindex="-1"></a>     <span class="at">xlab =</span> <span class="st">"Water depth [m]"</span>,</span>[m
[32m+[m[32m<span id="cb12-13"><a href="#cb12-13" aria-hidden="true" tabindex="-1"></a>     <span class="at">ylab =</span> <span class="st">"Collection probability"</span>,</span>[m
[32m+[m[32m<span id="cb12-14"><a href="#cb12-14" aria-hidden="true" tabindex="-1"></a>     <span class="at">main =</span> <span class="st">"Collection probability of taxon"</span>)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[31m-<p><img src="event_data_files/figure-html/unnamed-chunk-10-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m<p><img src="event_data_files/figure-html/task_3_2_solution_ecology-1.png" class="img-fluid figure-img" width="672"></p>[m
 </figure>[m
 </div>[m
 </div>[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb12"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb12-1"><a href="#cb12-1" aria-hidden="true" tabindex="-1"></a><span class="do">## change in cline with time</span></span>[m
[31m-<span id="cb12-2"><a href="#cb12-2" aria-hidden="true" tabindex="-1"></a>t <span class="ot">=</span> scenarioA<span class="sc">$</span>t_myr        <span class="co"># time steps where the water depth is determined by the model</span></span>[m
[31m-<span id="cb12-3"><a href="#cb12-3" aria-hidden="true" tabindex="-1"></a>wd <span class="ot">=</span> scenarioA<span class="sc">$</span>wd_m[,pos]  <span class="co"># water depth at the specified position</span></span>[m
[31m-<span id="cb12-4"><a href="#cb12-4" aria-hidden="true" tabindex="-1"></a>wd_with_time <span class="ot">=</span> <span class="fu">approxfun</span>(t, wd)</span>[m
[31m-<span id="cb12-5"><a href="#cb12-5" aria-hidden="true" tabindex="-1"></a><span class="do">## Plotting</span></span>[m
[31m-<span id="cb12-6"><a href="#cb12-6" aria-hidden="true" tabindex="-1"></a><span class="fu">plot</span>(<span class="at">x =</span> t,</span>[m
[31m-<span id="cb12-7"><a href="#cb12-7" aria-hidden="true" tabindex="-1"></a>     <span class="at">y =</span> <span class="fu">wd_with_time</span>(t), </span>[m
[31m-<span id="cb12-8"><a href="#cb12-8" aria-hidden="true" tabindex="-1"></a>     <span class="at">type =</span> <span class="st">"l"</span>, </span>[m
[31m-<span id="cb12-9"><a href="#cb12-9" aria-hidden="true" tabindex="-1"></a>     <span class="at">xlab =</span> <span class="st">"Time [Myr]"</span>,</span>[m
[31m-<span id="cb12-10"><a href="#cb12-10" aria-hidden="true" tabindex="-1"></a>     <span class="at">ylab =</span> <span class="st">"Water depth [m]"</span>,</span>[m
[31m-<span id="cb12-11"><a href="#cb12-11" aria-hidden="true" tabindex="-1"></a>     <span class="at">main =</span> <span class="fu">paste0</span>(<span class="st">"Water depth "</span>, pos, <span class="st">" offshore"</span>))</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb13"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb13-1"><a href="#cb13-1" aria-hidden="true" tabindex="-1"></a><span class="do">## change in cline with time</span></span>[m
[32m+[m[32m<span id="cb13-2"><a href="#cb13-2" aria-hidden="true" tabindex="-1"></a>t <span class="ot">=</span> scenarioA<span class="sc">$</span>t_myr        <span class="co"># time steps where the water depth is determined by the model</span></span>[m
[32m+[m[32m<span id="cb13-3"><a href="#cb13-3" aria-hidden="true" tabindex="-1"></a>wd <span class="ot">=</span> scenarioA<span class="sc">$</span>wd_m[,pos]  <span class="co"># water depth at the specified position</span></span>[m
[32m+[m[32m<span id="cb13-4"><a href="#cb13-4" aria-hidden="true" tabindex="-1"></a>wd_with_time <span class="ot">=</span> <span class="fu">approxfun</span>(t, wd)</span>[m
[32m+[m[32m<span id="cb13-5"><a href="#cb13-5" aria-hidden="true" tabindex="-1"></a><span class="do">## Plotting</span></span>[m
[32m+[m[32m<span id="cb13-6"><a href="#cb13-6" aria-hidden="true" tabindex="-1"></a><span class="fu">plot</span>(<span class="at">x =</span> t,</span>[m
[32m+[m[32m<span id="cb13-7"><a href="#cb13-7" aria-hidden="true" tabindex="-1"></a>     <span class="at">y =</span> <span class="fu">wd_with_time</span>(t), </span>[m
[32m+[m[32m<span id="cb13-8"><a href="#cb13-8" aria-hidden="true" tabindex="-1"></a>     <span class="at">type =</span> <span class="st">"l"</span>, </span>[m
[32m+[m[32m<span id="cb13-9"><a href="#cb13-9" aria-hidden="true" tabindex="-1"></a>     <span class="at">xlab =</span> <span class="st">"Time [Myr]"</span>,</span>[m
[32m+[m[32m<span id="cb13-10"><a href="#cb13-10" aria-hidden="true" tabindex="-1"></a>     <span class="at">ylab =</span> <span class="st">"Water depth [m]"</span>,</span>[m
[32m+[m[32m<span id="cb13-11"><a href="#cb13-11" aria-hidden="true" tabindex="-1"></a>     <span class="at">main =</span> <span class="fu">paste0</span>(<span class="st">"Water depth "</span>, pos, <span class="st">" offshore"</span>))</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[31m-<p><img src="event_data_files/figure-html/unnamed-chunk-10-2.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m<p><img src="event_data_files/figure-html/task_3_2_solution_ecology-2.png" class="img-fluid figure-img" width="672"></p>[m
 </figure>[m
 </div>[m
 </div>[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb13"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb13-1"><a href="#cb13-1" aria-hidden="true" tabindex="-1"></a><span class="do">## add niche model to pipeline</span></span>[m
[31m-<span id="cb13-2"><a href="#cb13-2" aria-hidden="true" tabindex="-1"></a><span class="fu">p3</span>(<span class="at">rate =</span> rate, <span class="at">from =</span> <span class="fu">min_time</span>(adm), <span class="at">to =</span> <span class="fu">max_time</span>(adm)) <span class="sc">|&gt;</span>         <span class="co"># model occurrences based on constant rate</span></span>[m
[31m-<span id="cb13-3"><a href="#cb13-3" aria-hidden="true" tabindex="-1"></a>  <span class="fu">apply_niche</span>(<span class="at">niche_def =</span> niche, <span class="at">gc =</span> wd_with_time) <span class="sc">|&gt;</span>               <span class="co"># apply niche model</span></span>[m
[31m-<span id="cb13-4"><a href="#cb13-4" aria-hidden="true" tabindex="-1"></a>  <span class="fu">time_to_strat</span>(adm, <span class="at">destructive =</span> <span class="cn">TRUE</span>) <span class="sc">|&gt;</span>                          <span class="co"># transform into strat. domain, destroy fossils that coincide with hiatuses </span></span>[m
[31m-<span id="cb13-5"><a href="#cb13-5" aria-hidden="true" tabindex="-1"></a>  <span class="fu">hist</span>(<span class="at">xlab =</span> <span class="fu">paste0</span>(<span class="st">"Stratigraphic height ["</span>,<span class="fu">get_L_unit</span>(adm) ,<span class="st">"]"</span>), <span class="co"># plot results</span></span>[m
[31m-<span id="cb13-6"><a href="#cb13-6" aria-hidden="true" tabindex="-1"></a>       <span class="at">main =</span> <span class="fu">paste0</span>(<span class="st">"Fossil abundance "</span>, pos, <span class="st">" from shore"</span>),</span>[m
[31m-<span id="cb13-7"><a href="#cb13-7" aria-hidden="true" tabindex="-1"></a>       <span class="at">ylab =</span> <span class="st">"# Fossils"</span>,</span>[m
[31m-<span id="cb13-8"><a href="#cb13-8" aria-hidden="true" tabindex="-1"></a>       <span class="at">breaks =</span> <span class="fu">seq</span>(<span class="at">from =</span> <span class="fu">min_height</span>(adm), <span class="at">to =</span> <span class="fu">max_height</span>(adm), <span class="at">length.out =</span> <span class="dv">40</span>))</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb14"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb14-1"><a href="#cb14-1" aria-hidden="true" tabindex="-1"></a><span class="do">## add niche model to pipeline</span></span>[m
[32m+[m[32m<span id="cb14-2"><a href="#cb14-2" aria-hidden="true" tabindex="-1"></a><span class="fu">p3</span>(<span class="at">rate =</span> rate, <span class="at">from =</span> <span class="fu">min_time</span>(adm), <span class="at">to =</span> <span class="fu">max_time</span>(adm)) <span class="sc">|&gt;</span>         <span class="co"># model occurrences based on constant rate</span></span>[m
[32m+[m[32m<span id="cb14-3"><a href="#cb14-3" aria-hidden="true" tabindex="-1"></a>  <span class="fu">apply_niche</span>(<span class="at">niche_def =</span> niche, <span class="at">gc =</span> wd_with_time) <span class="sc">|&gt;</span>               <span class="co"># apply niche model</span></span>[m
[32m+[m[32m<span id="cb14-4"><a href="#cb14-4" aria-hidden="true" tabindex="-1"></a>  <span class="fu">time_to_strat</span>(adm, <span class="at">destructive =</span> <span class="cn">TRUE</span>) <span class="sc">|&gt;</span>                          <span class="co"># transform into strat. domain, destroy fossils that coincide with hiatuses </span></span>[m
[32m+[m[32m<span id="cb14-5"><a href="#cb14-5" aria-hidden="true" tabindex="-1"></a>  <span class="fu">hist</span>(<span class="at">xlab =</span> <span class="fu">paste0</span>(<span class="st">"Stratigraphic height ["</span>,<span class="fu">get_L_unit</span>(adm) ,<span class="st">"]"</span>), <span class="co"># plot results</span></span>[m
[32m+[m[32m<span id="cb14-6"><a href="#cb14-6" aria-hidden="true" tabindex="-1"></a>       <span class="at">main =</span> <span class="fu">paste0</span>(<span class="st">"Fossil abundance "</span>, pos, <span class="st">" from shore"</span>),</span>[m
[32m+[m[32m<span id="cb14-7"><a href="#cb14-7" aria-hidden="true" tabindex="-1"></a>       <span class="at">ylab =</span> <span class="st">"# Fossils"</span>,</span>[m
[32m+[m[32m<span id="cb14-8"><a href="#cb14-8" aria-hidden="true" tabindex="-1"></a>       <span class="at">breaks =</span> <span class="fu">seq</span>(<span class="at">from =</span> <span class="fu">min_height</span>(adm), <span class="at">to =</span> <span class="fu">max_height</span>(adm), <span class="at">length.out =</span> <span class="dv">40</span>))</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[31m-<p><img src="event_data_files/figure-html/unnamed-chunk-10-3.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m<p><img src="event_data_files/figure-html/task_3_2_solution_ecology-3.png" class="img-fluid figure-img" width="672"></p>[m
 </figure>[m
 </div>[m
 </div>[m
[36m@@ -567,12 +596,12 @@[m [mHow do your results change when you add a niche model to your code?</p>[m
 </div>[m
 </div>[m
 <div class="callout callout-style-default callout-note callout-titled">[m
[31m-<div class="callout-header d-flex align-content-center collapsed" data-bs-toggle="collapse" data-bs-target=".callout-8-contents" aria-controls="callout-8" aria-expanded="false" aria-label="Toggle callout">[m
[32m+[m[32m<div class="callout-header d-flex align-content-center" data-bs-toggle="collapse" data-bs-target=".callout-8-contents" aria-controls="callout-8" aria-expanded="false" aria-label="Toggle callout">[m
 <div class="callout-icon-container">[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-<span class="screen-reader-only">Note</span>Solution Task 3[m
[32m+[m[32mSolution Task 3.3: Last occurrences and artefactual mass extinctions[m
 </div>[m
 <div class="callout-btn-toggle d-inline-block border-0 py-1 ps-1 pe-0 float-end"><i class="callout-toggle"></i></div>[m
 </div>[m
[36m@@ -585,22 +614,22 @@[m [mHow do your results change when you add a niche model to your code?</p>[m
 <li><p>How would you misinterpret the results in the absence of stratigraphic information? Use your results to formulate a “stratigraphic null hypothesis” for clusters of last occurrences.</p></li>[m
 </ul>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb14"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb14-1"><a href="#cb14-1" aria-hidden="true" tabindex="-1"></a>pos <span class="ot">=</span> <span class="st">"2km"</span>               <span class="co"># position along the onshore-offshore gradient</span></span>[m
[31m-<span id="cb14-2"><a href="#cb14-2" aria-hidden="true" tabindex="-1"></a><span class="fu">stopifnot</span>(pos <span class="sc">%in%</span> dist)  <span class="co"># validity check</span></span>[m
[31m-<span id="cb14-3"><a href="#cb14-3" aria-hidden="true" tabindex="-1"></a>adm <span class="ot">=</span> adm_list[[pos]]     <span class="co"># select age-depth model</span></span>[m
[31m-<span id="cb14-4"><a href="#cb14-4" aria-hidden="true" tabindex="-1"></a>rate <span class="ot">=</span> <span class="dv">100</span>                <span class="co"># last occurrences per Myr</span></span>[m
[31m-<span id="cb14-5"><a href="#cb14-5" aria-hidden="true" tabindex="-1"></a>binsize <span class="ot">=</span> <span class="dv">2</span>               <span class="co"># size of sampling bins [m]</span></span>[m
[31m-<span id="cb14-6"><a href="#cb14-6" aria-hidden="true" tabindex="-1"></a></span>[m
[31m-<span id="cb14-7"><a href="#cb14-7" aria-hidden="true" tabindex="-1"></a><span class="co"># Plot last occurrences at the specified position</span></span>[m
[31m-<span id="cb14-8"><a href="#cb14-8" aria-hidden="true" tabindex="-1"></a><span class="fu">p3</span>(<span class="at">from =</span> <span class="fu">min_time</span>(adm), <span class="at">to =</span> <span class="fu">max_time</span>(adm), <span class="at">rate =</span> rate) <span class="sc">|&gt;</span>  </span>[m
[31m-<span id="cb14-9"><a href="#cb14-9" aria-hidden="true" tabindex="-1"></a>  <span class="fu">time_to_strat</span>(adm, <span class="at">destructive =</span> <span class="cn">FALSE</span>) <span class="sc">|&gt;</span></span>[m
[31m-<span id="cb14-10"><a href="#cb14-10" aria-hidden="true" tabindex="-1"></a>  <span class="fu">hist</span>(<span class="at">breaks =</span> <span class="fu">seq</span>(<span class="at">from =</span> <span class="fu">min_height</span>(adm), <span class="at">to =</span> <span class="fu">max_height</span>(adm) <span class="sc">+</span> binsize, <span class="at">by =</span> binsize),</span>[m
[31m-<span id="cb14-11"><a href="#cb14-11" aria-hidden="true" tabindex="-1"></a>       <span class="at">xlab =</span> <span class="st">"Height [m]"</span>,</span>[m
[31m-<span id="cb14-12"><a href="#cb14-12" aria-hidden="true" tabindex="-1"></a>       <span class="at">main =</span> <span class="fu">paste0</span>(<span class="st">" # Last occurrences "</span>, pos, <span class="st">" from shore"</span>))</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb15"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb15-1"><a href="#cb15-1" aria-hidden="true" tabindex="-1"></a>pos <span class="ot">=</span> <span class="st">"2km"</span>               <span class="co"># position along the onshore-offshore gradient</span></span>[m
[32m+[m[32m<span id="cb15-2"><a href="#cb15-2" aria-hidden="true" tabindex="-1"></a><span class="fu">stopifnot</span>(pos <span class="sc">%in%</span> dist)  <span class="co"># validity check</span></span>[m
[32m+[m[32m<span id="cb15-3"><a href="#cb15-3" aria-hidden="true" tabindex="-1"></a>adm <span class="ot">=</span> adm_list[[pos]]     <span class="co"># select age-depth model</span></span>[m
[32m+[m[32m<span id="cb15-4"><a href="#cb15-4" aria-hidden="true" tabindex="-1"></a>rate <span class="ot">=</span> <span class="dv">100</span>                <span class="co"># last occurrences per Myr</span></span>[m
[32m+[m[32m<span id="cb15-5"><a href="#cb15-5" aria-hidden="true" tabindex="-1"></a>binsize <span class="ot">=</span> <span class="dv">2</span>               <span class="co"># size of sampling bins [m]</span></span>[m
[32m+[m[32m<span id="cb15-6"><a href="#cb15-6" aria-hidden="true" tabindex="-1"></a></span>[m
[32m+[m[32m<span id="cb15-7"><a href="#cb15-7" aria-hidden="true" tabindex="-1"></a><span class="co"># Plot last occurrences at the specified position</span></span>[m
[32m+[m[32m<span id="cb15-8"><a href="#cb15-8" aria-hidden="true" tabindex="-1"></a><span class="fu">p3</span>(<span class="at">from =</span> <span class="fu">min_time</span>(adm), <span class="at">to =</span> <span class="fu">max_time</span>(adm), <span class="at">rate =</span> rate) <span class="sc">|&gt;</span>  </span>[m
[32m+[m[32m<span id="cb15-9"><a href="#cb15-9" aria-hidden="true" tabindex="-1"></a>  <span class="fu">time_to_strat</span>(adm, <span class="at">destructive =</span> <span class="cn">FALSE</span>) <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb15-10"><a href="#cb15-10" aria-hidden="true" tabindex="-1"></a>  <span class="fu">hist</span>(<span class="at">breaks =</span> <span class="fu">seq</span>(<span class="at">from =</span> <span class="fu">min_height</span>(adm), <span class="at">to =</span> <span class="fu">max_height</span>(adm) <span class="sc">+</span> binsize, <span class="at">by =</span> binsize),</span>[m
[32m+[m[32m<span id="cb15-11"><a href="#cb15-11" aria-hidden="true" tabindex="-1"></a>       <span class="at">xlab =</span> <span class="st">"Height [m]"</span>,</span>[m
[32m+[m[32m<span id="cb15-12"><a href="#cb15-12" aria-hidden="true" tabindex="-1"></a>       <span class="at">main =</span> <span class="fu">paste0</span>(<span class="st">" # Last occurrences "</span>, pos, <span class="st">" from shore"</span>))</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[31m-<p><img src="event_data_files/figure-html/unnamed-chunk-11-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m<p><img src="event_data_files/figure-html/task_3_3_last_occ-1.png" class="img-fluid figure-img" width="672"></p>[m
 </figure>[m
 </div>[m
 </div>[m
[36m@@ -612,26 +641,78 @@[m [mHow do your results change when you add a niche model to your code?</p>[m
 </div>[m
 </div>[m
 <div class="callout callout-style-default callout-note callout-titled">[m
[31m-<div class="callout-header d-flex align-content-center collapsed" data-bs-toggle="collapse" data-bs-target=".callout-9-contents" aria-controls="callout-9" aria-expanded="false" aria-label="Toggle callout">[m
[32m+[m[32m<div class="callout-header d-flex align-content-center" data-bs-toggle="collapse" data-bs-target=".callout-9-contents" aria-controls="callout-9" aria-expanded="false" aria-label="Toggle callout">[m
 <div class="callout-icon-container">[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-<span class="screen-reader-only">Note</span>Solution Task 4[m
[32m+[m[32mSolution Task 3.4: Biostratigraphic precision and range offset.[m
 </div>[m
 <div class="callout-btn-toggle d-inline-block border-0 py-1 ps-1 pe-0 float-end"><i class="callout-toggle"></i></div>[m
 </div>[m
 <div id="callout-9" class="callout-9-contents callout-collapse collapse">[m
 <div class="callout-body-container callout-body">[m
[31m-<p>TBA</p>[m
[32m+[m[32m<p>Explore how range offset changes with the true time of extinction, fossil abundance, and position along shore.</p>[m
[32m+[m[32m<p>Where and why is biostratigraphic precision best/worst?<br>[m
[32m+[m[32mHow do your results change when you add a niche model to your code?</p>[m
[32m+[m[32m<p>To generate more simulations, we write a wrapper function that draws range offset 1000 times for any given parameter choice:</p>[m
[32m+[m[32m<div class="cell">[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb16"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb16-1"><a href="#cb16-1" aria-hidden="true" tabindex="-1"></a>sample_range_offset <span class="ot">=</span> <span class="cf">function</span>(t_ext, rate, adm, <span class="at">n_rep =</span> <span class="dv">1000</span>){</span>[m
[32m+[m[32m<span id="cb16-2"><a href="#cb16-2" aria-hidden="true" tabindex="-1"></a>  t <span class="ot">=</span> <span class="fu">rep</span>(<span class="cn">NA</span>, n_rep)</span>[m
[32m+[m[32m<span id="cb16-3"><a href="#cb16-3" aria-hidden="true" tabindex="-1"></a>  h <span class="ot">=</span> <span class="fu">rep</span>(<span class="cn">NA</span>, n_rep)</span>[m
[32m+[m[32m<span id="cb16-4"><a href="#cb16-4" aria-hidden="true" tabindex="-1"></a>  <span class="cf">for</span> (i <span class="cf">in</span> <span class="dv">1</span><span class="sc">:</span>n_rep){</span>[m
[32m+[m[32m<span id="cb16-5"><a href="#cb16-5" aria-hidden="true" tabindex="-1"></a>    x <span class="ot">=</span> <span class="fu">range_offset</span>(<span class="at">t_ext =</span> t_ext, <span class="at">rate =</span> rate, <span class="at">adm =</span> adm)</span>[m
[32m+[m[32m<span id="cb16-6"><a href="#cb16-6" aria-hidden="true" tabindex="-1"></a>    t[i] <span class="ot">=</span> x[<span class="st">"t"</span>]</span>[m
[32m+[m[32m<span id="cb16-7"><a href="#cb16-7" aria-hidden="true" tabindex="-1"></a>    h[i] <span class="ot">=</span> x[<span class="st">"h"</span>]</span>[m
[32m+[m[32m<span id="cb16-8"><a href="#cb16-8" aria-hidden="true" tabindex="-1"></a>  }</span>[m
[32m+[m[32m<span id="cb16-9"><a href="#cb16-9" aria-hidden="true" tabindex="-1"></a>  <span class="fu">return</span>(<span class="fu">list</span>(<span class="at">t =</span> t, <span class="at">h =</span> h))</span>[m
[32m+[m[32m<span id="cb16-10"><a href="#cb16-10" aria-hidden="true" tabindex="-1"></a>}</span>[m
[32m+[m[32m<span id="cb16-11"><a href="#cb16-11" aria-hidden="true" tabindex="-1"></a>adm <span class="ot">=</span> adm_list[[<span class="st">"2km"</span>]]</span>[m
[32m+[m[32m<span id="cb16-12"><a href="#cb16-12" aria-hidden="true" tabindex="-1"></a>t_ext <span class="ot">=</span> <span class="fl">1.5</span></span>[m
[32m+[m[32m<span id="cb16-13"><a href="#cb16-13" aria-hidden="true" tabindex="-1"></a>rate <span class="ot">=</span> <span class="dv">5</span></span>[m
[32m+[m[32m<span id="cb16-14"><a href="#cb16-14" aria-hidden="true" tabindex="-1"></a></span>[m
[32m+[m[32m<span id="cb16-15"><a href="#cb16-15" aria-hidden="true" tabindex="-1"></a>range_offsets <span class="ot">=</span> <span class="fu">sample_range_offset</span>(t_ext, rate, adm)</span>[m
[32m+[m[32m<span id="cb16-16"><a href="#cb16-16" aria-hidden="true" tabindex="-1"></a></span>[m
[32m+[m[32m<span id="cb16-17"><a href="#cb16-17" aria-hidden="true" tabindex="-1"></a><span class="fu">hist</span>(range_offsets<span class="sc">$</span>h,</span>[m
[32m+[m[32m<span id="cb16-18"><a href="#cb16-18" aria-hidden="true" tabindex="-1"></a>     <span class="at">xlab =</span> <span class="st">"Range offset [m]"</span>,</span>[m
[32m+[m[32m<span id="cb16-19"><a href="#cb16-19" aria-hidden="true" tabindex="-1"></a>     <span class="at">main =</span> <span class="st">"Biostratigraphic precision/Stratigraphic range offset"</span>)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
[32m+[m[32m<div class="cell-output-display">[m
[32m+[m[32m<div>[m
[32m+[m[32m<figure class="figure">[m
[32m+[m[32m<p><img src="event_data_files/figure-html/task_3_4_solution_range_offset-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m</figure>[m
 </div>[m
 </div>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb17"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb17-1"><a href="#cb17-1" aria-hidden="true" tabindex="-1"></a><span class="fu">hist</span>(range_offsets<span class="sc">$</span>t,</span>[m
[32m+[m[32m<span id="cb17-2"><a href="#cb17-2" aria-hidden="true" tabindex="-1"></a>     <span class="at">xlab =</span> <span class="st">"Range offset [Myr]"</span>,</span>[m
[32m+[m[32m<span id="cb17-3"><a href="#cb17-3" aria-hidden="true" tabindex="-1"></a>     <span class="at">main =</span> <span class="st">"Biostratigraphic precision/Temporal range offset"</span>)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
[32m+[m[32m<div class="cell-output-display">[m
[32m+[m[32m<div>[m
[32m+[m[32m<figure class="figure">[m
[32m+[m[32m<p><img src="event_data_files/figure-html/task_3_4_solution_range_offset-2.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m</figure>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m<p>Running this code across the platform with varying rates and true extinction times, the following patterns emerge:</p>[m
[32m+[m[32m<ul>[m
[32m+[m[32m<li><p>Range offset increases as fossil abundance decreases - the fewer fossils there are to find the further the last observed occurrence will be from the true extinction, an effect called the Signor-Lipps effect <span class="citation" data-cites="signor1982">(<a href="#ref-signor1982" role="doc-biblioref">Signor et al. 1982</a>)</span></p></li>[m
[32m+[m[32m<li><p>Temporal range offset is highest when the true extinction lies at the end of a gap. As a result, range offset is highest on the platform top in the presence of prolonged hiatuses caused by drops in sea level</p></li>[m
[32m+[m[32m<li><p>Adding niche models to the code does further increase the range offset (and, as a result, decrease stratigraphic precision) as it further decreases fossil abundance, and adds extirpation effects to range offset.</p></li>[m
[32m+[m[32m</ul>[m
[32m+[m[32m</div>[m
 </div>[m
[32m+[m[32m</div>[m
[32m+[m
 [m
 [m
 </section>[m
 [m
[31m-</main> <!-- /main -->[m
[32m+[m[32m<div id="quarto-appendix" class="default"><section class="quarto-appendix-contents" role="doc-bibliography" id="quarto-bibliography"><h2 class="anchored quarto-appendix-heading">References</h2><div id="refs" class="references csl-bib-body hanging-indent" data-entry-spacing="0" role="list">[m
[32m+[m[32m<div id="ref-signor1982" class="csl-entry" role="listitem">[m
[32m+[m[32mSignor, Philip W, Jere H Lipps, Leon T Silver, Peter H Schultz, and others. 1982. <span>“Sampling Bias, Gradual Extinction Patterns and Catastrophes in the Fossil Record.”</span> <em>Geological Society of America Special Paper</em> 190 (291): e296.[m
[32m+[m[32m</div>[m
[32m+[m[32m</div></section></div></main> <!-- /main -->[m
 <script id="quarto-html-after-body" type="application/javascript">[m
   window.document.addEventListener("DOMContentLoaded", function (event) {[m
     const icon = "";[m
[36m@@ -683,14 +764,13 @@[m [mHow do your results change when you add a niche model to your code?</p>[m
       e.clearSelection();[m
     }[m
     const getTextToCopy = function(trigger) {[m
[31m-      const outerScaffold = trigger.parentElement.cloneNode(true);[m
[31m-      const codeEl = outerScaffold.querySelector('code');[m
[31m-      for (const childEl of codeEl.children) {[m
[31m-        if (isCodeAnnotation(childEl)) {[m
[31m-          childEl.remove();[m
[32m+[m[32m        const codeEl = trigger.previousElementSibling.cloneNode(true);[m
[32m+[m[32m        for (const childEl of codeEl.children) {[m
[32m+[m[32m          if (isCodeAnnotation(childEl)) {[m
[32m+[m[32m            childEl.remove();[m
[32m+[m[32m          }[m
         }[m
[31m-      }[m
[31m-      return codeEl.innerText;[m
[32m+[m[32m        return codeEl.innerText;[m
     }[m
     const clipboard = new window.ClipboardJS('.code-copy-button:not([data-in-quarto-modal])', {[m
       text: getTextToCopy[m
[1mdiff --git a/docs/event_data_files/figure-html/unnamed-chunk-1-1.png b/docs/event_data_files/figure-html/unnamed-chunk-1-1.png[m
[1mindex 7acf945..b87da20 100644[m
Binary files a/docs/event_data_files/figure-html/unnamed-chunk-1-1.png and b/docs/event_data_files/figure-html/unnamed-chunk-1-1.png differ
[1mdiff --git a/docs/event_data_files/figure-html/unnamed-chunk-10-1.png b/docs/event_data_files/figure-html/unnamed-chunk-10-1.png[m
[1mindex bba3849..697d8ba 100644[m
Binary files a/docs/event_data_files/figure-html/unnamed-chunk-10-1.png and b/docs/event_data_files/figure-html/unnamed-chunk-10-1.png differ
[1mdiff --git a/docs/event_data_files/figure-html/unnamed-chunk-10-2.png b/docs/event_data_files/figure-html/unnamed-chunk-10-2.png[m
[1mindex aedf109..1dac2ea 100644[m
Binary files a/docs/event_data_files/figure-html/unnamed-chunk-10-2.png and b/docs/event_data_files/figure-html/unnamed-chunk-10-2.png differ
[1mdiff --git a/docs/event_data_files/figure-html/unnamed-chunk-10-3.png b/docs/event_data_files/figure-html/unnamed-chunk-10-3.png[m
[1mindex 857fa59..a7bbf6e 100644[m
Binary files a/docs/event_data_files/figure-html/unnamed-chunk-10-3.png and b/docs/event_data_files/figure-html/unnamed-chunk-10-3.png differ
[1mdiff --git a/docs/event_data_files/figure-html/unnamed-chunk-11-1.png b/docs/event_data_files/figure-html/unnamed-chunk-11-1.png[m
[1mindex 5cfba77..b263dc4 100644[m
Binary files a/docs/event_data_files/figure-html/unnamed-chunk-11-1.png and b/docs/event_data_files/figure-html/unnamed-chunk-11-1.png differ
[1mdiff --git a/docs/event_data_files/figure-html/unnamed-chunk-2-1.png b/docs/event_data_files/figure-html/unnamed-chunk-2-1.png[m
[1mindex dbff0da..8152162 100644[m
Binary files a/docs/event_data_files/figure-html/unnamed-chunk-2-1.png and b/docs/event_data_files/figure-html/unnamed-chunk-2-1.png differ
[1mdiff --git a/docs/event_data_files/figure-html/unnamed-chunk-4-1.png b/docs/event_data_files/figure-html/unnamed-chunk-4-1.png[m
[1mindex 0c00711..e0f2f36 100644[m
Binary files a/docs/event_data_files/figure-html/unnamed-chunk-4-1.png and b/docs/event_data_files/figure-html/unnamed-chunk-4-1.png differ
[1mdiff --git a/docs/event_data_files/figure-html/unnamed-chunk-6-1.png b/docs/event_data_files/figure-html/unnamed-chunk-6-1.png[m
[1mindex 9dd092f..40dc4df 100644[m
Binary files a/docs/event_data_files/figure-html/unnamed-chunk-6-1.png and b/docs/event_data_files/figure-html/unnamed-chunk-6-1.png differ
[1mdiff --git a/docs/event_data_files/figure-html/unnamed-chunk-7-1.png b/docs/event_data_files/figure-html/unnamed-chunk-7-1.png[m
[1mindex c567525..5c09fbf 100644[m
Binary files a/docs/event_data_files/figure-html/unnamed-chunk-7-1.png and b/docs/event_data_files/figure-html/unnamed-chunk-7-1.png differ
[1mdiff --git a/docs/event_data_files/figure-html/unnamed-chunk-8-1.png b/docs/event_data_files/figure-html/unnamed-chunk-8-1.png[m
[1mindex 0eb9f05..d28331d 100644[m
Binary files a/docs/event_data_files/figure-html/unnamed-chunk-8-1.png and b/docs/event_data_files/figure-html/unnamed-chunk-8-1.png differ
[1mdiff --git a/docs/event_data_files/figure-html/unnamed-chunk-9-1.png b/docs/event_data_files/figure-html/unnamed-chunk-9-1.png[m
[1mindex b6dd63e..7a2c6ac 100644[m
Binary files a/docs/event_data_files/figure-html/unnamed-chunk-9-1.png and b/docs/event_data_files/figure-html/unnamed-chunk-9-1.png differ
[1mdiff --git a/docs/index.html b/docs/index.html[m
[1mindex 4358a40..3663501 100644[m
[1m--- a/docs/index.html[m
[1m+++ b/docs/index.html[m
[36m@@ -2,7 +2,7 @@[m
 <html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en"><head>[m
 [m
 <meta charset="utf-8">[m
[31m-<meta name="generator" content="quarto-1.8.25">[m
[32m+[m[32m<meta name="generator" content="quarto-1.7.32">[m
 [m
 <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">[m
 [m
[36m@@ -52,15 +52,14 @@[m [mdiv.csl-indent {[m
 <meta name="quarto:offset" content="./">[m
 <script src="site_libs/quarto-html/quarto.js" type="module"></script>[m
 <script src="site_libs/quarto-html/tabsets/tabsets.js" type="module"></script>[m
[31m-<script src="site_libs/quarto-html/axe/axe-check.js" type="module"></script>[m
 <script src="site_libs/quarto-html/popper.min.js"></script>[m
 <script src="site_libs/quarto-html/tippy.umd.min.js"></script>[m
 <script src="site_libs/quarto-html/anchor.min.js"></script>[m
 <link href="site_libs/quarto-html/tippy.css" rel="stylesheet">[m
[31m-<link href="site_libs/quarto-html/quarto-syntax-highlighting-7b89279ff1a6dce999919e0e67d4d9ec.css" rel="stylesheet" id="quarto-text-highlighting-styles">[m
[32m+[m[32m<link href="site_libs/quarto-html/quarto-syntax-highlighting-37eea08aefeeee20ff55810ff984fec1.css" rel="stylesheet" id="quarto-text-highlighting-styles">[m
 <script src="site_libs/bootstrap/bootstrap.min.js"></script>[m
 <link href="site_libs/bootstrap/bootstrap-icons.css" rel="stylesheet">[m
[31m-<link href="site_libs/bootstrap/bootstrap-0b37c64f34216b628666a8dac638b53b.min.css" rel="stylesheet" append-hash="true" id="quarto-bootstrap" data-mode="light">[m
[32m+[m[32m<link href="site_libs/bootstrap/bootstrap-dfb324f25d9b1687192fa8be62ac8f9c.min.css" rel="stylesheet" append-hash="true" id="quarto-bootstrap" data-mode="light">[m
 <script id="quarto-search-options" type="application/json">{[m
   "location": "navbar",[m
   "copy-button": false,[m
[36m@@ -100,8 +99,6 @@[m [mdiv.csl-indent {[m
     <nav class="navbar navbar-expand-lg " data-bs-theme="dark">[m
       <div class="navbar-container container-fluid">[m
       <div class="navbar-brand-container mx-auto">[m
[31m-    <a href="./index.html" class="navbar-brand navbar-brand-logo">[m
[31m-    </a>[m
     <a class="navbar-brand" href="./index.html">[m
     <span class="navbar-title">Modeling Stratigraphic Paleobiology in R</span>[m
     </a>[m
[36m@@ -355,14 +352,13 @@[m [mScarponi, Daniele, Michele Azzarone, Kristopher Kusnerik, Alessandro Amorosi, Ke[m
       e.clearSelection();[m
     }[m
     const getTextToCopy = function(trigger) {[m
[31m-      const outerScaffold = trigger.parentElement.cloneNode(true);[m
[31m-      const codeEl = outerScaffold.querySelector('code');[m
[31m-      for (const childEl of codeEl.children) {[m
[31m-        if (isCodeAnnotation(childEl)) {[m
[31m-          childEl.remove();[m
[32m+[m[32m        const codeEl = trigger.previousElementSibling.cloneNode(true);[m
[32m+[m[32m        for (const childEl of codeEl.children) {[m
[32m+[m[32m          if (isCodeAnnotation(childEl)) {[m
[32m+[m[32m            childEl.remove();[m
[32m+[m[32m          }[m
         }[m
[31m-      }[m
[31m-      return codeEl.innerText;[m
[32m+[m[32m        return codeEl.innerText;[m
     }[m
     const clipboard = new window.ClipboardJS('.code-copy-button:not([data-in-quarto-modal])', {[m
       text: getTextToCopy[m
[1mdiff --git a/docs/search.json b/docs/search.json[m
[1mindex 8e66425..e9b8239 100644[m
[1m--- a/docs/search.json[m
[1m+++ b/docs/search.json[m
[36m@@ -389,7 +389,7 @@[m
     "href": "advanced_topics.html",[m
     "title": "Advanced Topics",[m
     "section": "",[m
[31m-    "text": "In this practical, we go through some advanced topics, such as modeling taphonomic effects, and transforming phylogenetic data (time trees and fossils)"[m
[32m+[m[32m    "text": "In this practical, we go through some advanced topics, such as modeling taphonomic effects, and transforming phylogenetic data (time trees and fossils)."[m
   },[m
   {[m
     "objectID": "advanced_topics.html#quarto",[m
[36m@@ -410,28 +410,28 @@[m
     "href": "trait_evol.html#tasks",[m
     "title": "Trait Evolution",[m
     "section": "Tasks",[m
[31m-    "text": "Tasks\nYou can also solve the first two tasks interactively using DarwinCAT.\n\n\n\n\n\n\nImportantTask 1: Trait evolution in the time domain\n\n\n\nPlot the three modes of evolution in the time domain, varying the parameters.\nWhat is their internal variation due to randomness (i.e., how much do results differ if you plot them multiple times)?\nWhat is the biological meaning of the model parameters?\n\n\n\n\n\n\n\n\nImportantTask 2: Stratigraphic effects on trait evolution\n\n\n\nTransform the modes of evolution you simulated in the previous step into the stratigraphic domain and plot them.\nWhich modes are the most/least affected by stratigraphic biases?\nDo you see any systematic changes?\n\n\n\n\n\n\n\n\nImportantTask 3: Model selection in the stratigraphic domain\n\n\n\nRun model selection on your simulations using the paleoTS package, and compare results from the time and the stratigraphic domain.\nDo you see any systematic biases?"[m
[32m+[m[32m    "text": "Tasks\nYou can solve the first two tasks interactively using DarwinCAT.\n\n\n\n\n\n\nTask 2.1: Trait evolution in the time domain\n\n\n\nPlot the three modes of evolution in the time domain, varying the parameters.\nWhat is their internal variation due to randomness (i.e., how much do results differ if you plot them multiple times)?\nWhat is the biological meaning of the model parameters?\n\n\n\n\n\n\n\n\nTask 2.2: Stratigraphic effects on trait evolution\n\n\n\nTransform the modes of evolution you simulated in the previous step into the stratigraphic domain and plot them.\nWhich modes are the most/least affected by stratigraphic biases?\nDo you see any systematic changes?\n\n\n\n\n\n\n\n\nTask 2.3: Model selection in the stratigraphic domain\n\n\n\nRun model selection on your simulations using the paleoTS package, and compare results from the time and the stratigraphic domain.\nDo you see any systematic biases?"[m
   },[m
   {[m
     "objectID": "trait_evol.html#solutions",[m
     "href": "trait_evol.html#solutions",[m
     "title": "Trait Evolution",[m
     "section": "Solutions",[m
[31m-    "text": "Solutions\nYou can also explore this topic interactively using DarwinCAT.\n\n\n\n\n\n\nNoteSolution Task 1: Trait evolution in the time domain\n\n\n\n\n\n\nPlot the different modes of evolution in the time domain.\n\nWhat is their internal variation due to randomness (i.e., how much do results differ if you plot them multiple times)?\n\nWhat is the biological meaning of the model parameters?\n\n\n\nmin_t = 0       # beginning observation [Myr]\nmax_t = 2       # end observation [Myr]\nt_step = 0.01   # temporal resolution [Myr]\nmean = 1        # model parameter, to modify\nsd = 1          # model parameter, to modify\nseq(from = min_t, to = max_t, by = t_step) |&gt;\n  stasis(mean = mean, sd = sd) |&gt;\n  plot(type = \"l\",\n       xlab = \"Time [Myr]\",\n       ylab = \"Trait value\",\n       main = \"Trait evolution: Stasis\")\n\n\n\n\n\n\n\n\nFor stasis, the mean parameter determines the mean trait value, and the sd (standard deviation) parameter determines the spread of trait values. Trait values at individual times are uncorrelated, so if the temporal resolution is increased, trait evolution appears more irregular.\n\nmin_t = 0      # beginning observation [Myr]\nmax_t = 2      # end observation [Myr]\nt_step = 0.01  # temporal resolution [Myr]\nsigma = 1      # model parameter, to modify\nmu = 1         # model parameter, to modify\ny0 = 1         # model parameter, to modify\nseq(from = min_t, to = max_t, by = t_step) |&gt;\n  random_walk(sigma = sigma, mu = mu, y0 = y0) |&gt;\n  plot(type = \"l\",\n       xlab = \"Time [Myr]\",\n       ylab = \"Trait value\",\n       main = \"Trait evolution: Random walk\")\n\n\n\n\n\n\n\n\nFor the random walk model, the y0 parameter determines the initial trait value. The parameter mu determines the directionality, with positive (negative) values leading to increasing (decreasing) trait values with time. The sigma parameter determines the amount of randomness in the system, with larger values reflecting more randomness. Internal variability is high for larger values of sigma, meaning individual lineages simulated will differ a lot from each other.\nImportant endmembers are: sigma set to 0, trait evolution is purely deterministic and specified by mu and y0. If mu and y0 are set to 0, trait evolution follows an unbiased random walk model. If sigma is set to 1, the model corresponds to a Brownian motion. For low values of sigma and mu, the random walk can be mistaken for stasis.\n\nmin_t = 0      # beginning observation [Myr]\nmax_t = 2      # end observation [Myr]\nt_step = 0.01  # temporal resolution [Myr]\ntheta = 1      # model parameter, to modify\nsigma = 0.1    # model parameter, to modify\nmu = 0         # model parameter, to modify\ny0 = 1         # model parameter, to modify\nseq(from = min_t, to = max_t, by = t_step) |&gt;\n  ornstein_uhlenbeck(mu = mu, theta = theta, sigma = sigma, y0 = y0) |&gt;\n  plot(type = \"l\",\n       xlab = \"Time [Myr]\",\n       ylab = \"Trait value\",\n       main = \"Trait evolution: Ornstein-Uhlenbeck process\")\n\n\n\n\n\n\n\n\nFor the Ornstein-Uhlenbeck (OU) model, the parameter y0 represents the initial trait value. The parameter mu determines the long term mean of the process, theta how fast this mean is approached, and sigma how strong the influence of randomness is. This model is used to model convergence from an initial trait value y0 to an optimum mu under pressure of selection theta and random influences sigma.\nInternal variation is determined by the sigma parameter, where larger values result in greater variation in simulated trait values.\nImportant endmembers of the OU model are:\n\nautocorrelated stasis, when y0 = mu (start in the optimum)\ndirectional evolution when the optimum mu is far away from the initial trait value y0, and selection is present\nrandom walk when selection theta is 0\n\n\n\n\n\n\n\n\n\n\nNoteSolution Task 2: Stratigraphic effects on trait evolution\n\n\n\n\n\n\nTransform the different modes of evolution into the stratigraphic domain and plot them.\n\nWhich modes are most/least affected by stratigraphic biases?\n\nDo you see any systematic changes?\n\n\nExample code for the random walk model is provided. This can be expanded by replacing the random walk by stasis or the Ornstein-Uhlenbeck process.\n\nadm_list = list()                                     # storage for age-depth models\ndist = paste(seq(2, 12, by = 2), \"km\", sep = \"\")      # distances from shore\nfor (pos in dist){                                    # construct ADMs for all distances\n  adm_list[[pos]] = tp_to_adm(t = scenarioA$t_myr,        \n                             h = scenarioA$h_m[,pos],\n                             T_unit = \"Myr\",\n                             L_unit = \"m\")\n}\n\npos = \"2km\"              # position on platform\nmu = 2                   # model parameters\nsigma = 1                # model parameters\ny0 = 0                   # model paramters\nadm = adm_list[[pos]]    # select age-depth model\nt_step = 0.001           # temporal resolution [Myr]\n## plot trait evolution in the time domain\nseq(from  = min_time(adm), to = max_time(adm), by = t_step) |&gt;\n  random_walk(sigma = sigma, mu = mu, y0 = y0) |&gt;\n  time_to_strat(adm, destructive = FALSE) |&gt;\n  plot(ylab = \"Trait value\",\n       type = \"l\",\n       orientation = \"lr\",\n       xlab = \"Height [m]\",\n       main = paste0(\"Trait evolution \", pos, \" from shore\") )\n\n\n\n\n\n\n\n\nStasis is unaffected by stratigraphic biases. This is because if there is no net change of traits in the time domain, losing parts of the lineage because of hiatuses does not affect the overall pattern.\nFor the random walk and the Ornstein-Uhlenbeck process, the degree of bias depends on the directionality of evolution. The more the traits change over a hiatus or a condensed interval, the more the stratigraphic expression of trait evolution differs from the one in the time domain. As a result, stratigraphic biases are strongest in the random walk model for large mu, and in the Ornstein-Uhlenbeck model for large differences between y0 and mu.\nThe effects are strongest if\n\nThere are long hiatuses or\nThere are long intervals of sedimentary condensation.\n\nAs a result, stratigraphic biases are driven by maximum hiatus duration on the platform top, and driven by sedimentary condensation on the slope (see task on age-depth models). This effect is more pronounced the more directional evolution is.\n\n\n\n\n\n\n\n\n\nNoteSolution Task 3: Model selection in the stratigraphic domain\n\n\n\n\n\nTBA\n\ntemp_res = 0.1                                              # temporal resolution in Myr\nseq(min_time(adm), max_time(adm), by = temp_res) |&gt;           # time steps where the trait evolution is simulated\n  random_walk_sl(sigma = 1, mu = 3, y0 = 0) |&gt;                   # simulate trait evolution\n  time_to_strat(adm, destructive = FALSE) |&gt; \n   reduce_to_paleoTS() |&gt;\n  fit9models()\n\nFitting simple models...\nFitting punctuational model...\nTotal # hypotheses:  8 \n1  2  3  4  5  6  7  8  \nFitting Stasis-URW model...\nTotal # hypotheses:  8 \n1  2  3  4  5  6  7  8  \nFitting Stasis-GRW model...\nTotal # hypotheses:  8 \n1  2  3  4  5  6  7  8  \nFitting URW-Stasis model...\nTotal # hypotheses:  8 \n1  2  3  4  5  6  7  8  \nFitting GRW-Stasis model...\nTotal # hypotheses:  8 \n1  2  3  4  5  6  7  8  \n\nComparing 9 models [n = 21, method = Joint]\n\n                   logL K      AICc      dAICc Akaike.wt\nStrictStasis -298.80769 1 599.82592 556.345453     0.000\nStasis        -41.80235 2  88.27137  44.790909     0.000\nURW           -38.55600 2  81.77866  38.298199     0.000\nGRW           -37.47915 3  82.37007  38.889609     0.000\nPunc-1        -19.79051 4  50.08102   6.600560     0.033\nStasis-URW    -34.30261 4  79.10522  35.624758     0.000\nStasis-GRW    -31.41502 5  76.83004  33.349576     0.000\nURW-Stasis    -17.29769 5  48.59537   5.114911     0.070\nGRW-Stasis    -12.74023 6  43.48046   0.000000     0.897"[m
[32m+[m[32m    "text": "Solutions\nYou can also explore this topic interactively using DarwinCAT.\n\n\n\n\n\n\nSolution Task 2.1: Trait evolution in the time domain\n\n\n\n\n\nPlot the different modes of evolution in the time domain.\nWhat is their internal variation due to randomness (i.e., how much do results differ if you plot them multiple times)?\nWhat is the biological meaning of the model parameters?\n\n# Stasis\nmin_t = 0       # beginning observation [Myr]\nmax_t = 2       # end observation [Myr]\nt_step = 0.01   # temporal resolution [Myr]\nmean = 1        # model parameter, to modify\nsd = 1          # model parameter, to modify\nseq(from = min_t, to = max_t, by = t_step) |&gt;\n  stasis(mean = mean, sd = sd) |&gt;\n  plot(type = \"l\",\n       xlab = \"Time [Myr]\",\n       ylab = \"Trait value\",\n       main = \"Trait evolution: Stasis\")\n\n\n\n\n\n\n\n\nFor stasis, the mean parameter determines the mean trait value, and the sd (standard deviation) parameter determines the spread of trait values. Trait values at individual times are uncorrelated, so if the temporal resolution is increased, trait evolution appears more irregular.\n\n# Random walk\nmin_t = 0      # beginning observation [Myr]\nmax_t = 2      # end observation [Myr]\nt_step = 0.01  # temporal resolution [Myr]\nsigma = 1      # model parameter, to modify\nmu = 1         # model parameter, to modify\ny0 = 1         # model parameter, to modify\nseq(from = min_t, to = max_t, by = t_step) |&gt;\n  random_walk(sigma = sigma, mu = mu, y0 = y0) |&gt;\n  plot(type = \"l\",\n       xlab = \"Time [Myr]\",\n       ylab = \"Trait value\",\n       main = \"Trait evolution: Random walk\")\n\n\n\n\n\n\n\n\nFor the random walk model, the y0 parameter determines the initial trait value. The parameter mu determines the directionality, with positive (negative) values leading to increasing (decreasing) trait values with time. The sigma parameter determines the amount of randomness in the system, with larger values reflecting more randomness. Internal variability is high for larger values of sigma, meaning individual lineages simulated will differ a lot from each other.\nImportant endmembers are: sigma set to 0, trait evolution is purely deterministic and specified by mu and y0. If mu and y0 are set to 0, trait evolution follows an unbiased random walk model. If sigma is set to 1, the model corresponds to a Brownian motion. For low values of sigma and mu, the random walk can be mistaken for stasis.\n\n# Ornstein-Uhlenbeck\nmin_t = 0      # beginning observation [Myr]\nmax_t = 2      # end observation [Myr]\nt_step = 0.01  # temporal resolution [Myr]\ntheta = 1      # model parameter, to modify\nsigma = 0.1    # model parameter, to modify\nmu = 0         # model parameter, to modify\ny0 = 1         # model parameter, to modify\nseq(from = min_t, to = max_t, by = t_step) |&gt;\n  ornstein_uhlenbeck(mu = mu, theta = theta, sigma = sigma, y0 = y0) |&gt;\n  plot(type = \"l\",\n       xlab = \"Time [Myr]\",\n       ylab = \"Trait value\",\n       main = \"Trait evolution: Ornstein-Uhlenbeck process\")\n\n\n\n\n\n\n\n\nFor the Ornstein-Uhlenbeck (OU) model, the parameter y0 represents the initial trait value. The parameter mu determines the long term mean of the process, theta how fast this mean is approached, and sigma how strong the influence of randomness is. This model is used to model convergence from an initial trait value y0 to an optimum mu under pressure of selection theta and random influences sigma.\nInternal variation is determined by the sigma parameter, where larger values result in greater variation in simulated trait values.\nImportant endmembers of the OU model are:\n\nautocorrelated stasis, when y0 = mu (start in the optimum)\ndirectional evolution when the optimum mu is far away from the initial trait value y0, and selection is present\nrandom walk when selection theta is 0\n\n\n\n\n\n\n\n\n\n\nSolution Task 2.2: Stratigraphic effects on trait evolution\n\n\n\n\n\nTransform the different modes of evolution into the stratigraphic domain and plot them.\nWhich modes are most/least affected by stratigraphic biases?\nDo you see any systematic changes?\nExample code for the random walk model is provided. This can be expanded by replacing the random walk by stasis or the Ornstein-Uhlenbeck process.\n\nadm_list = list()                                     # storage for age-depth models\ndist = paste(seq(2, 12, by = 2), \"km\", sep = \"\")      # distances from shore\nfor (pos in dist){                                    # construct ADMs for all distances\n  adm_list[[pos]] = tp_to_adm(t = scenarioA$t_myr,        \n                             h = scenarioA$h_m[,pos],\n                             T_unit = \"Myr\",\n                             L_unit = \"m\")\n}\n\npos = \"2km\"              # position on platform\nmu = 2                   # model parameters\nsigma = 1                # model parameters\ny0 = 0                   # model paramters\nadm = adm_list[[pos]]    # select age-depth model\nt_step = 0.001           # temporal resolution [Myr]\n## plot trait evolution in the time domain\nseq(from  = min_time(adm), to = max_time(adm), by = t_step) |&gt;\n  random_walk(sigma = sigma, mu = mu, y0 = y0) |&gt;\n  time_to_strat(adm, destructive = FALSE) |&gt;\n  plot(ylab = \"Trait value\",\n       type = \"l\",\n       orientation = \"lr\",\n       xlab = \"Height [m]\",\n       main = paste0(\"Trait evolution \", pos, \" from shore\") )\n\n\n\n\n\n\n\n\nStasis is unaffected by stratigraphic biases. This is because if there is no net change of traits in the time domain, losing parts of the lineage because of hiatuses does not affect the overall pattern.\nFor the random walk and the Ornstein-Uhlenbeck process, the degree of bias depends on the directionality of evolution. The more the traits change over a hiatus or a condensed interval, the more the stratigraphic expression of trait evolution differs from the one in the time domain. As a result, stratigraphic biases are strongest in the random walk model for large mu, and in the Ornstein-Uhlenbeck model for large differences between y0 and mu.\nThe effects are strongest if\n\nThere are long hiatuses or\nThere are long intervals of sedimentary condensation.\n\nAs a result, stratigraphic biases are driven by maximum hiatus duration on the platform top. This effect is more pronounced the more directional evolution is.\n\n\n\n\n\n\n\n\n\nSolution Task 2.3: Model selection in the stratigraphic domain\n\n\n\n\n\nRun model selection on your simulation using the paleoTS package, and compare results from the time and the stratigraphic domain.\nDo you see any systematic biases?\nWe run model selection both in the stratigraphic and time domain, fitting 9 models to the fossil time series. The example code performs this analysis for simulations under the random walk model, which can be changed out to the stasis or Ornstein-Uhlenbeck model.\n\n# time domain model selection\ntemp_res = 0.1                                              # temporal resolution in Myr\nintrapop_var = 1 # trait variance per sampling location/ fossil assemblage\nn_per_sample = 5 # number of fossils found per sampling location / fossil assemblage\ntraits_time_domain = seq(min_time(adm), max_time(adm), by = temp_res) |&gt;           # time steps where the trait evolution is simulated\n  random_walk_sl(sigma = 1, mu = 3, y0 = 0, intrapop_var = intrapop_var, n_per_sample = n_per_sample) |&gt;                   # simulate trait evolution\n  reduce_to_paleoTS() \nplot(traits_time_domain, xlab = \"Time [Myr]\")\n\n\n\n\n\n\n\ntraits_time_domain |&gt; fit9models(pool = FALSE)\n\nFitting simple models...\nFitting punctuational model...\nTotal # hypotheses:  8 \n1  2  3  4  5  6  7  8  \nFitting Stasis-URW model...\nTotal # hypotheses:  8 \n1  2  3  4  5  6  7  8  \nFitting Stasis-GRW model...\nTotal # hypotheses:  8 \n1  2  3  4  5  6  7  8  \nFitting URW-Stasis model...\nTotal # hypotheses:  8 \n1  2  3  4  5  6  7  8  \nFitting GRW-Stasis model...\nTotal # hypotheses:  8 \n1  2  3  4  5  6  7  8  \n\nComparing 9 models [n = 21, method = Joint]\n\n                   logL K      AICc      dAICc Akaike.wt\nStrictStasis -331.25640 1 664.72333 625.412749     0.000\nStasis        -43.90014 2  92.46694  53.156361     0.000\nURW           -21.15338 2  46.97343   7.662845     0.018\nGRW           -19.04811 3  45.50798   6.197395     0.037\nPunc-1        -17.50837 4  45.51674   6.206157     0.037\nStasis-URW    -23.14597 4  56.79194  17.481360     0.000\nStasis-GRW    -22.18200 5  58.36399  19.053408     0.000\nURW-Stasis    -14.91349 5  43.82698   4.516401     0.086\nGRW-Stasis    -10.65529 6  39.31058   0.000000     0.822\n\n\n\n# stratigraphic domain model selection\ntemp_res = 0.1                                              # temporal resolution in Myr\ntraits_strat_domain = seq(min_time(adm), max_time(adm), by = temp_res) |&gt;           # time steps where the trait evolution is simulated\n  random_walk_sl(sigma = 1, mu = 3, y0 = 0, intrapop_var = intrapop_var, n_per_sample = n_per_sample) |&gt;                   # simulate trait evolution\n  time_to_strat(adm, destructive = FALSE) |&gt; \n  reduce_to_paleoTS() \nplot(traits_strat_domain, xlab = \"Stratigraphic Position [m]\")\n\n\n\n\n\n\n\ntraits_strat_domain |&gt; fit9models(pool = FALSE)\n\nFitting simple models...\nFitting punctuational model...\nTotal # hypotheses:  8 \n1  2  3  4  5  6  7  8  \nFitting Stasis-URW model...\nTotal # hypotheses:  8 \n1  2  3  4  5  6  7  8  \nFitting Stasis-GRW model...\nTotal # hypotheses:  8 \n1  2  3  4  5  6  7  8  \nFitting URW-Stasis model...\nTotal # hypotheses:  8 \n1  2  3  4  5  6  7  8  \nFitting GRW-Stasis model...\nTotal # hypotheses:  8 \n1  2  3  4  5  6  7  8  \n\nComparing 9 models [n = 21, method = Joint]\n\n                   logL K      AICc       dAICc Akaike.wt\nStrictStasis -480.25803 1 962.72658 889.2867613     0.000\nStasis        -50.79723 2 106.26113  32.8213110     0.000\nURW           -42.08084 2  88.82835  15.3885358     0.000\nGRW           -40.74554 3  88.90284  15.4630277     0.000\nPunc-1        -35.86133 4  82.22265   8.7828353     0.007\nStasis-URW    -42.06921 4  94.63842  21.1986045     0.000\nStasis-GRW    -41.24911 5  96.49822  23.0584083     0.000\nURW-Stasis    -29.71991 5  73.43982   0.0000000     0.595\nGRW-Stasis    -28.12606 6  74.25212   0.8123017     0.397\n\n\nGeneral observation are:\n\nResults are sensitive to randomness inherent in the randomness of the simulation, e.g., occasionally a random walk simulation will be identified as stasis even in the abscence of biases. This effect is additionally sensitive to parameters such as sample size and intrapopulation variance (intrapop_var n_per_sample), reducing the power of the procedure and potentially leading to “analytical stasis”, where low statistical power favors the recovery of stasis (Hannisdal 2006)\nRecovery of the correct (meaning, simulated) mode of evolution is better in the time domain, whereas model selection in the stratigraphic domain favors the recognition of punctuated modes of evolution (Hohmann et al. 2024). This effect is strongest in the on the platform top, and disappears on the proximal slope as stratigraphic biases disappear.\nAs in the visual comparison, stratigraphic effects are strongest the more directional the mode of evolution is, and disappear for stasis.\nStratophenetic time series will thus favor both the recogniton of stasis and punctuated modes of evolution."[m
   },[m
   {[m
     "objectID": "event_data.html#tasks",[m
     "href": "event_data.html#tasks",[m
     "title": "Event Data and Niche Modeling",[m
     "section": "Tasks",[m
[31m-    "text": "Tasks\n\n\n\n\n\n\nImportantTask 1: Fossil abundance in the stratigraphic domain\n\n\n\nSimulate an abundant taxon, and transform the fossil ages into the stratigraphic domain.\nAt which locations and stratigraphic heights do you observe peaks in fossil abundance?\nWith which stratigraphic effects are these peaks associated?\n\n\n\n\n\n\n\n\nImportantTask 2: Ecological controls on fossil abundance\n\n\n\nDefine a niche for a taxon, and add the niche model to your pipeline.\nHow and why do your results change?\nHow could you misinterpret the results?\n\n\n\n\n\n\n\n\nImportantTask 3: Last occurrences and artefactual mass extinctions\n\n\n\nSimulate last occurrences based on the assumption of a constant rate of last occurrences and transform them into the stratigraphic domain.\nWhere do you observe clusters of last occurrences?\nWith what stratigraphic effects are these locations associated?\nHow would you misinterpret the results in the absence of stratigraphic information?\nUse your results to formulate a “stratigraphic null hypothesis” for clusters of last occurrences.\n\n\n\n\n\n\n\n\nImportantTask 4: Biostratigraphic precision and range offset\n\n\n\nExplore how range offset changes with the true time of extinction and fossil abundance.\nWhere and why is biostratigraphic precision best/worst?\nHow do your results change when you add a niche model to your code?"[m
[32m+[m[32m    "text": "Tasks\n\n\n\n\n\n\nTask 3.1: Fossil abundance in the stratigraphic domain\n\n\n\nSimulate an abundant taxon, and transform the fossil ages into the stratigraphic domain.\nAt which locations and stratigraphic heights do you observe peaks in fossil abundance?\nWith which stratigraphic effects are these peaks associated?\n\n\n\n\n\n\n\n\nTask 3.2: Ecological controls on fossil abundance\n\n\n\nDefine a niche for a taxon, and add the niche model to your pipeline.\nHow and why do your results change?\nHow could you misinterpret the results?\n\n\n\n\n\n\n\n\nTask 3.3: Last occurrences and artefactual mass extinctions\n\n\n\nSimulate last occurrences based on the assumption of a constant rate of last occurrences and transform them into the stratigraphic domain.\nWhere do you observe clusters of last occurrences?\nWith what stratigraphic effects are these locations associated?\nHow would you misinterpret the results in the absence of stratigraphic information?\nUse your results to formulate a “stratigraphic null hypothesis” for clusters of last occurrences.\n\n\n\n\n\n\n\n\nTask 3.4: Biostratigraphic precision and range offset\n\n\n\nExplore how range offset changes with the true time of extinction, fossil abundance, and position along shore.\nWhere and why is biostratigraphic precision best/worst?\nHow do your results change when you add a niche model to your code?"[m
   },[m
   {[m
     "objectID": "event_data.html#solutions",[m
     "href": "event_data.html#solutions",[m
     "title": "Event Data and Niche Modeling",[m
     "section": "Solutions",[m
[31m-    "text": "Solutions\n\n\n\n\n\n\nNoteSolution Task 1\n\n\n\n\n\nSimulate an abundant taxon, and transform the fossil ages into the stratigraphic domain.\n-   At which locations and stratigraphic heights do you observe peaks in fossil abundance?\n\n-   With which stratigraphic effects are these peaks associated?\n\nadm_list = list()                                     # storage for age-depth models\ndist = paste(seq(2, 12, by = 2), \"km\", sep = \"\")      # distances from shore\nfor (pos in dist){                                    # construct ADMs for all distances\n  adm_list[[pos]] = tp_to_adm(t = scenarioA$t_myr,        \n                             h = scenarioA$h_m[,pos],\n                             T_unit = \"Myr\",\n                             L_unit = \"m\")\n}\n\n\npos = \"2km\"              # position in the platform, to modify\nstopifnot(pos %in% dist) # validity check\nadm = adm_list[[pos]]    # select ADM\nrate = 200               # fossil occurrences per Myr\nsampl_bin = 2            # sampling bins in m\n# Plot fossil abundance in the section\np3(from = min_time(adm), to = max_time(adm), rate = rate) |&gt;\n  time_to_strat(adm, destructive = TRUE) |&gt;\n  hist(breaks = seq(from = min_height(adm), to = max_height(adm) + sampl_bin, by = sampl_bin),\n       xlab = \"Stratigraphic height [m]\",\n       main = paste0(\"Fossil abundance \", pos, \" from shore\"))\n\n\n\n\n\n\n\n\nIn the slope sections (10 and 12 km), there are peaks in fossil abundance associated with the intervals with stratigraphic condensation, which are coeval to drops in sea level. These peaks are not visible on the platform top. This is because here the sea level drops result in hiatuses, which destroys the fossils (as specified by the option destructive = TRUE).\n\n\n\n\n\n\n\n\n\nNoteSolution Task 2\n\n\n\n\n\nDefine a niche for a taxon, and add the niche model to your pipeline. - How and why do your results change? - How could you misinterpret the results?\n\npos = \"8km\"              # select position on the platform\nstopifnot(pos %in% dist) # check validity\nadm = adm_list[[pos]]    # select age-depth model\nrate = 200               # no. of fossils per Myr\n# define niche\nniche = snd_niche(opt = 20, tol = 10, cutoff_val = 0)\n# plot niche\nmax_wd = 60                    # maximum water depth for plotting\nx = seq(-2, max_wd, by = 0.1)\nplot(x, niche(x),\n     type = \"l\",\n     xlab = \"Water depth [m]\",\n     ylab = \"Collection probability\",\n     main = \"Collection probability of taxon\")\n\n\n\n\n\n\n\n## change in cline with time\nt = scenarioA$t_myr        # time steps where the water depth is determined by the model\nwd = scenarioA$wd_m[,pos]  # water depth at the specified position\nwd_with_time = approxfun(t, wd)\n## Plotting\nplot(x = t,\n     y = wd_with_time(t), \n     type = \"l\", \n     xlab = \"Time [Myr]\",\n     ylab = \"Water depth [m]\",\n     main = paste0(\"Water depth \", pos, \" offshore\"))\n\n\n\n\n\n\n\n## add niche model to pipeline\np3(rate = rate, from = min_time(adm), to = max_time(adm)) |&gt;         # model occurrences based on constant rate\n  apply_niche(niche_def = niche, gc = wd_with_time) |&gt;               # apply niche model\n  time_to_strat(adm, destructive = TRUE) |&gt;                          # transform into strat. domain, destroy fossils that coincide with hiatuses \n  hist(xlab = paste0(\"Stratigraphic height [\",get_L_unit(adm) ,\"]\"), # plot results\n       main = paste0(\"Fossil abundance \", pos, \" from shore\"),\n       ylab = \"# Fossils\",\n       breaks = seq(from = min_height(adm), to = max_height(adm), length.out = 40))\n\n\n\n\n\n\n\n\nDepending on the preferred water depth and tolerance to water depth changes, it can appear as if the taxon goes extinct because fossil abundance drops to 0. However, this is because the taxon tracks its niche, and there is a systematic change in water depth with time.\nFor example, the water depth on the platform decreases with time, as the carbonate production rate outpaces the subsidence. As a result, taxa with low tolerance to shallow water will vanish over time from the platform top. Conversely, the water depth on the slope increase with time. This leads to the local extinction (extirpation) of shallow water taxa on the slope as time progresses. However, this local extinction does not mean that the taxon is extinct, just that the environment at that location became unfavorable for it. Without the ability to examine multiple sections in the samples, this might be mistaken as a true extinction event.\n\n\n\n\n\n\n\n\n\nNoteSolution Task 3\n\n\n\n\n\nSimulate last occurrences based on the assumption of a constant rate of last occurrences and transform them into the stratigraphic domain\n\nWhere do you observe clusters of last occurrences?\nWith what stratigraphic effects are these locations associated?\nHow would you misinterpret the results in the absence of stratigraphic information? Use your results to formulate a “stratigraphic null hypothesis” for clusters of last occurrences.\n\n\npos = \"2km\"               # position along the onshore-offshore gradient\nstopifnot(pos %in% dist)  # validity check\nadm = adm_list[[pos]]     # select age-depth model\nrate = 100                # last occurrences per Myr\nbinsize = 2               # size of sampling bins [m]\n\n# Plot last occurrences at the specified position\np3(from = min_time(adm), to = max_time(adm), rate = rate) |&gt;  \n  time_to_strat(adm, destructive = FALSE) |&gt;\n  hist(breaks = seq(from = min_height(adm), to = max_height(adm) + binsize, by = binsize),\n       xlab = \"Height [m]\",\n       main = paste0(\" # Last occurrences \", pos, \" from shore\"))\n\n\n\n\n\n\n\n\nOn the platform, the clusters are associated with prolonged hiatuses, caused by drops in sea level. On the slope, the clusters are associated with intervals of stratigraphic condensation (low sedimentation rate), also caused by drops in sea level.\nIn the absence of stratigraphic information, these clusters could be misinterpreted as extinction intervals, as there is an elevated rate of last occurrences. If information on sea level change is available, this could be misinterpreted as a causal relationship between sea level and extinction rate, where drops in sea level increase extinction rates.\nA stratigraphic null hypothesis might be that times of dropping sea level cause hiatuses (close to shore) and condensation (on the slope), which lead apparent elevated extinction rates.\n\n\n\n\n\n\n\n\n\nNoteSolution Task 4\n\n\n\n\n\nTBA"[m
[32m+[m[32m    "text": "Solutions\n\n\n\n\n\n\nSolution Task 3.1: Fossil abundance in the stratigraphic domain.\n\n\n\n\n\nSimulate an abundant taxon, and transform the fossil ages into the stratigraphic domain.\nAt which locations and stratigraphic heights do you observe peaks in fossil abundance?With which stratigraphic effects are these peaks associated?\nWe start by collecting all age-depth models for convenience.\n\nadm_list = list()                                     # storage for age-depth models\ndist = paste(seq(2, 12, by = 2), \"km\", sep = \"\")      # distances from shore\nfor (pos in dist){                                    # construct ADMs for all distances\n  adm_list[[pos]] = tp_to_adm(t = scenarioA$t_myr,        \n                             h = scenarioA$h_m[,pos],\n                             T_unit = \"Myr\",\n                             L_unit = \"m\")\n}\n\n\npos = \"12km\"              # position in the platform, to modify\nstopifnot(pos %in% dist) # validity check\nadm = adm_list[[pos]]    # select ADM\nrate = 2000               # fossil occurrences per Myr\nsampl_bin = 2            # sampling bins in m\n# Plot fossil abundance in the section\np3(from = min_time(adm), to = max_time(adm), rate = rate) |&gt;\n  time_to_strat(adm, destructive = TRUE) |&gt;\n  hist(breaks = seq(from = min_height(adm), to = max_height(adm) + sampl_bin, by = sampl_bin),\n       xlab = \"Stratigraphic height [m]\",\n       main = paste0(\"Fossil abundance \", pos, \" from shore\"))\n\n\n\n\n\n\n\n\nThe constant fossil abundance in the time domain is expressed as irregular patterns in the stratigraphic domain, with increased irregularity when the number of simulated fossils (rate) is low. Peaks in fossil abundance correspond to decreased sediment accumulation as accomodation space is rapidly filled when the platform is flooded. Notably, hiatuses do not cause any peaks in fossil abundance, as we specified that fossils coindicing with gaps will be destroyed (option destructive = TRUE).\n\n\n\n\n\n\n\n\n\nSolution Task 3.2: Ecological controls on fossil abundance.\n\n\n\n\n\nDefine a niche for a taxon, and add the niche model to your pipeline. - How and why do your results change? - How could you misinterpret the results?\n\npos = \"2km\"              # select position on the platform\nstopifnot(pos %in% dist) # check validity\nadm = adm_list[[pos]]    # select age-depth model\nrate = 200               # no. of fossils per Myr\n# define niche\nniche = snd_niche(opt = 20, tol = 10, cutoff_val = 0)\n# plot niche\nmax_wd = 60                    # maximum water depth for plotting\nx = seq(-2, max_wd, by = 0.1)\nplot(x, niche(x),\n     type = \"l\",\n     xlab = \"Water depth [m]\",\n     ylab = \"Collection probability\",\n     main = \"Collection probability of taxon\")\n\n\n\n\n\n\n\n## change in cline with time\nt = scenarioA$t_myr        # time steps where the water depth is determined by the model\nwd = scenarioA$wd_m[,pos]  # water depth at the specified position\nwd_with_time = approxfun(t, wd)\n## Plotting\nplot(x = t,\n     y = wd_with_time(t), \n     type = \"l\", \n     xlab = \"Time [Myr]\",\n     ylab = \"Water depth [m]\",\n     main = paste0(\"Water depth \", pos, \" offshore\"))\n\n\n\n\n\n\n\n## add niche model to pipeline\np3(rate = rate, from = min_time(adm), to = max_time(adm)) |&gt;         # model occurrences based on constant rate\n  apply_niche(niche_def = niche, gc = wd_with_time) |&gt;               # apply niche model\n  time_to_strat(adm, destructive = TRUE) |&gt;                          # transform into strat. domain, destroy fossils that coincide with hiatuses \n  hist(xlab = paste0(\"Stratigraphic height [\",get_L_unit(adm) ,\"]\"), # plot results\n       main = paste0(\"Fossil abundance \", pos, \" from shore\"),\n       ylab = \"# Fossils\",\n       breaks = seq(from = min_height(adm), to = max_height(adm), length.out = 40))\n\n\n\n\n\n\n\n\nDepending on the preferred water depth and tolerance to water depth changes, it can appear as if the taxon goes extinct because fossil abundance drops to 0. However, this is because the taxon tracks its niche, and there is a systematic change in water depth with time.\nFor example, the water depth on the platform decreases with time, as the carbonate production rate outpaces the subsidence. As a result, taxa with low tolerance to shallow water will vanish over time from the platform top. Conversely, the water depth on the slope increase with time. This leads to the local extinction (extirpation) of shallow water taxa on the slope as time progresses. However, this local extinction does not mean that the taxon is extinct, just that the environment at that location became unfavorable for it. Without the ability to examine multiple sections in the samples, this might be mistaken as a true extinction event.\n\n\n\n\n\n\n\n\n\nSolution Task 3.3: Last occurrences and artefactual mass extinctions\n\n\n\n\n\nSimulate last occurrences based on the assumption of a constant rate of last occurrences and transform them into the stratigraphic domain\n\nWhere do you observe clusters of last occurrences?\nWith what stratigraphic effects are these locations associated?\nHow would you misinterpret the results in the absence of stratigraphic information? Use your results to formulate a “stratigraphic null hypothesis” for clusters of last occurrences.\n\n\npos = \"2km\"               # position along the onshore-offshore gradient\nstopifnot(pos %in% dist)  # validity check\nadm = adm_list[[pos]]     # select age-depth model\nrate = 100                # last occurrences per Myr\nbinsize = 2               # size of sampling bins [m]\n\n# Plot last occurrences at the specified position\np3(from = min_time(adm), to = max_time(adm), rate = rate) |&gt;  \n  time_to_strat(adm, destructive = FALSE) |&gt;\n  hist(breaks = seq(from = min_height(adm), to = max_height(adm) + binsize, by = binsize),\n       xlab = \"Height [m]\",\n       main = paste0(\" # Last occurrences \", pos, \" from shore\"))\n\n\n\n\n\n\n\n\nOn the platform, the clusters are associated with prolonged hiatuses, caused by drops in sea level. On the slope, the clusters are associated with intervals of stratigraphic condensation (low sedimentation rate), also caused by drops in sea level.\nIn the absence of stratigraphic information, these clusters could be misinterpreted as extinction intervals, as there is an elevated rate of last occurrences. If information on sea level change is available, this could be misinterpreted as a causal relationship between sea level and extinction rate, where drops in sea level increase extinction rates.\nA stratigraphic null hypothesis might be that times of dropping sea level cause hiatuses (close to shore) and condensation (on the slope), which lead apparent elevated extinction rates.\n\n\n\n\n\n\n\n\n\nSolution Task 3.4: Biostratigraphic precision and range offset.\n\n\n\n\n\nExplore how range offset changes with the true time of extinction, fossil abundance, and position along shore.\nWhere and why is biostratigraphic precision best/worst?\nHow do your results change when you add a niche model to your code?\nTo generate more simulations, we write a wrapper function that draws range offset 1000 times for any given parameter choice:\n\nsample_range_offset = function(t_ext, rate, adm, n_rep = 1000){\n  t = rep(NA, n_rep)\n  h = rep(NA, n_rep)\n  for (i in 1:n_rep){\n    x = range_offset(t_ext = t_ext, rate = rate, adm = adm)\n    t[i] = x[\"t\"]\n    h[i] = x[\"h\"]\n  }\n  return(list(t = t, h = h))\n}\nadm = adm_list[[\"2km\"]]\nt_ext = 1.5\nrate = 5\n\nrange_offsets = sample_range_offset(t_ext, rate, adm)\n\nhist(range_offsets$h,\n     xlab = \"Range offset [m]\",\n     main = \"Biostratigraphic precision/Stratigraphic range offset\")\n\n\n\n\n\n\n\nhist(range_offsets$t,\n     xlab = \"Range offset [Myr]\",\n     main = \"Biostratigraphic precision/Temporal range offset\")\n\n\n\n\n\n\n\n\nRunning this code across the platform with varying rates and true extinction times, the following patterns emerge:\n\nRange offset increases as fossil abundance decreases - the fewer fossils there are to find the further the last observed occurrence will be from the true extinction, an effect called the Signor-Lipps effect (Signor et al. 1982)\nTemporal range offset is highest when the true extinction lies at the end of a gap. As a result, range offset is highest on the platform top in the presence of prolonged hiatuses caused by drops in sea level\nAdding niche models to the code does further increase the range offset (and, as a result, decrease stratigraphic precision) as it further decreases fossil abundance, and adds extirpation effects to range offset."[m
   },[m
   {[m
     "objectID": "strat_architecture.html#introduction",[m
[36m@@ -459,35 +459,35 @@[m
     "href": "strat_architecture.html#solutions",[m
     "title": "Stratigraphic Architectures and age-depth models",[m
     "section": "Solutions",[m
[31m-    "text": "Solutions\n\n\n\n\n\n\nNoteSolution Task 1: Getting to know age-depth models\n\n\n\n\n\n\n# load packages\nlibrary(\"admtools\")\nlibrary(\"StratPal\")\n\nadm_list = list()                       # storage for age-depth models\n# distances from shore\ndist = paste(seq(2, 12, by = 2), \"km\", sep = \"\")      \n# construct ADMs for all distances\nfor (pos in dist){                                    \n  adm_list[[pos]] = tp_to_adm(t = scenarioA$t_myr,        \n                             h = scenarioA$h_m[,pos],\n                             T_unit = \"Myr\",\n                             L_unit = \"m\")\n}\n\nNow you have a list with several age depth models. The code below plots one of them. You can modify it to plot each one separately or modify the code to plot all of them.\n\npos = \"2km\"               # insert distance from shore here\nstopifnot(pos %in% dist ) # validity check\n\nplot(adm_list[[pos]],\n# plot thicker lines for intervals with sediment accumulation (lwd = line width)\n     lwd_acc = 2,\n# don't plot destructive intervals/hiatuses (lty = line type)\n     lty_destr = 0)       \nT_axis_lab()              # add time axis label\nL_axis_lab()              # add length axis label\ntitle(paste0(\"Age-depth model \", pos, \" from shore\"))\n\n\n\n\n\n\n\n\nAge-depth models closer to shore cover a thicker stratigraphic height (up to 150 m) and those further offshore are shorter (a few 10s of meters). This is because sediment accumulation is much higher on the platform top (2-8 km) compared to the proximal (10 km) and distal (12 km) slope.\n\nAge-depth models on the platform have a few long hiatuses that are represented as white space in the chronostratigraphic (Wheeler) diagram. These hiatuses correspond to times of falling sea level, during which the platform top is exposed subaerially. On the slope, there are fewer hiatuses as sediment accumulation is more continuous. Times of low sediment accumulation correspond to intervals of low sea level, and are due to lowstand shedding from the platform edge. This generates intervals with sedimentary condensation (low sedimentation rate), expressed by near-horizontal segments in the age-depth models.\n\n\n\n\n\n\n\n\n\nNoteSolution Task 2: Incompleteness across the onshore-offshore gradient\n\n\n\n\n\nQuestion:\n2. Examine how stratigraphic incompleteness and the number of hiatuses changes along the onshore-offshore gradient.\n\ninc = rep(NA, length(dist))             # storage for incompleteness\nnhiat = rep(NA, length(dist))           # storage for number of hiatuses\nfor (i in seq_along(dist)){\n  pos = dist[i] # position in platform\n  # determine incompleteness\n  inc[i] = adm_list[[pos]] |&gt; \n    get_incompleteness()\n  # determine no. of hiatuses\n  nhiat[i] = adm_list[[pos]] |&gt;\n    get_hiat_no()\n}\n## Plotting\np = seq(from = 2, to = 12, by = 2)       # dist from shore for plotting\nplot(p, 100 * inc,                       # transform into %\n     xlab = \"Distance from shore [km]\", \n     ylab = \"Incompleteness [%]\", \n     type = \"l\",\n     ylim = c(0, 100))\n\n\n\n\n\n\n\nplot(p, nhiat, \n     xlab = \"Distance from shore [km]\", \n     ylab = \"# Hiatuses\", \n     type = \"l\",\n     ylim = c(0, max(nhiat)))\n\n\n\n\n\n\n\n\nIncompleteness is highest in the onshore sections (more than 60 %), and decreases with distance from shore to values of around 30 % in the proximal slope. Note that this differs from Figure 4 in Hohmann et al. (2024), as we are examining incompleteness on a coarser spatial scale.\nThe number of hiatuses is low on the platform top (8 hiatuses at 2 - 6 km), with the highest values (16) on the platform edge (8 km). On the proximal slope, there are 12 hiatuses and the number drops to 0 in the distal slope, reflecting that this environment is less affected by sea-level fluctuations.\nThe hiatuses in the platform interior are generated by long intervals of low sea level, which exposes the platform top. The high number of hiatuses in the slope results from the fact that steep topography records sea-level fluctuations much more than flat topography. The distal slope is below the range of the sea-level fluctuations, so it does not undergo non-deposition or breaks in carbonate production, it is only affected by changes in low carbonate production of the aphotic factory and varying input from the platform top.\n\n\n\n\n\n\n\n\n\nNoteSolution Task 3: Hiatus duration and water depth\n\n\n\n\n\nGenerate histograms of hiatus durations and plots of water depth at different distances from shore. Do you see any systematic changes?\n\npos = \"2km\" # position of adm\nstopifnot(pos %in%  dist) # validity check\n\nplot(scenarioA$t_myr, scenarioA$wd_m[,pos],\n     xlab = \"Time [Myr]\",\n     ylab = \"Water depth [m]\",\n     type = \"l\",\n     main = paste0(\"Water depth \", pos, \" from shore\"))\n\n\n\n\n\n\n\nhiatus_durations &lt;- adm_list[[pos]] |&gt;\n  get_hiat_duration()\n\nif (length(hiatus_durations) == 0) {\n  stop(\"No hiatuses at position \", pos)\n}\n\nhiatus_durations |&gt;\n  hist(xlab = \"Hiatus duration [Myr]\",\n       main = paste0(\"Hiatus duration \", pos, \" from shore\"))\n\n\n\n\n\n\n\n\n\nHiatus duration\nThe distribution of hiatus durations in the platform interior is bimodal: it consists of two long hiatuses (caused by the prolonged drops in the sea level) and six shorter hiatuses generated by the lower-order sea level changes.\nAt 8 km from shore, the number of short hiatuses increases to 14, reflecting the steep topography of the platform edge.\nOn the slope, hiatuses are more abundant, but their duration is much shorter. This is most pronounced for the proximal slope. In the distal slope (12 km) you might get an error: this is because there are no hiatuses.\nNote the disconnect between the number of hiatuses and incompleteness: Onshore sections are the most incomplete, but have only a few hiatuses. In contrast, the proximal slope has the most hiatuses, but a low incompleteness. This is because hiatus duration in the onshore sections is much longer.\n\n\nWater depth\nIn the platform top (2 km), water depth is 0 for the largest part of the studied 1 Myr, with an initial flooding and two subsequent rises corresponding to the highest points of the first-order sea-level cycles.\nOn the platform edge (8 km), the water depth reaches a maximum of 30 m in the initial flooding phase, but it is still emerged for a large part of the interval. The upper slope remains under water for all the time of the simulation, reflecting how different platform top and platform slopes are in terms of deposition.\nThe strong cyclicity of the sea-level curve is still visible at 12 km offshore, where the water depth oscillates between 45 and 90 m."[m
[32m+[m[32m    "text": "Solutions\n\n\n\n\n\n\nSolution Task 1: Getting to know age-depth models\n\n\n\n\n\n\n# load packages\nlibrary(\"admtools\")\nlibrary(\"StratPal\")\n\nadm_list = list()                       # storage for age-depth models\n# distances from shore\ndist = paste(seq(2, 12, by = 2), \"km\", sep = \"\")      \n# construct ADMs for all distances\nfor (pos in dist){                                    \n  adm_list[[pos]] = tp_to_adm(t = scenarioA$t_myr,        \n                             h = scenarioA$h_m[,pos],\n                             T_unit = \"Myr\",\n                             L_unit = \"m\")\n}\n\nNow you have a list with several age depth models. The code below plots one of them. You can modify it to plot each one separately or modify the code to plot all of them.\n\npos = \"2km\"               # insert distance from shore here\nstopifnot(pos %in% dist ) # validity check\n\nplot(adm_list[[pos]],\n# plot thicker lines for intervals with sediment accumulation (lwd = line width)\n     lwd_acc = 2,\n# don't plot destructive intervals/hiatuses (lty = line type)\n     lty_destr = 0)       \nT_axis_lab()              # add time axis label\nL_axis_lab()              # add length axis label\ntitle(paste0(\"Age-depth model \", pos, \" from shore\"))\n\n\n\n\n\n\n\n\nAge-depth models closer to shore cover a thicker stratigraphic height (up to 150 m) and those further offshore are shorter (a few 10s of meters). This is because sediment accumulation is much higher on the platform top (2-8 km) compared to the proximal (10 km) and distal (12 km) slope.\n\nAge-depth models on the platform have a few long hiatuses that are represented as white space in the chronostratigraphic (Wheeler) diagram. These hiatuses correspond to times of falling sea level, during which the platform top is exposed subaerially. On the slope, there are fewer hiatuses as sediment accumulation is more continuous. Times of low sediment accumulation correspond to intervals of low sea level, and are due to lowstand shedding from the platform edge. This generates intervals with sedimentary condensation (low sedimentation rate), expressed by near-horizontal segments in the age-depth models.\n\n\n\n\n\n\n\n\n\nSolution Task 2: Incompleteness across the onshore-offshore gradient\n\n\n\n\n\nQuestion:\n2. Examine how stratigraphic incompleteness and the number of hiatuses changes along the onshore-offshore gradient.\n\ninc = rep(NA, length(dist))             # storage for incompleteness\nnhiat = rep(NA, length(dist))           # storage for number of hiatuses\nfor (i in seq_along(dist)){\n  pos = dist[i] # position in platform\n  # determine incompleteness\n  inc[i] = adm_list[[pos]] |&gt; \n    get_incompleteness()\n  # determine no. of hiatuses\n  nhiat[i] = adm_list[[pos]] |&gt;\n    get_hiat_no()\n}\n## Plotting\np = seq(from = 2, to = 12, by = 2)       # dist from shore for plotting\nplot(p, 100 * inc,                       # transform into %\n     xlab = \"Distance from shore [km]\", \n     ylab = \"Incompleteness [%]\", \n     type = \"l\",\n     ylim = c(0, 100))\n\n\n\n\n\n\n\nplot(p, nhiat, \n     xlab = \"Distance from shore [km]\", \n     ylab = \"# Hiatuses\", \n     type = \"l\",\n     ylim = c(0, max(nhiat)))\n\n\n\n\n\n\n\n\nIncompleteness is highest in the onshore sections (more than 60 %), and decreases with distance from shore to values of around 30 % in the proximal slope. Note that this differs from Figure 4 in Hohmann et al. (2024), as we are examining incompleteness on a coarser spatial scale.\nThe number of hiatuses is low on the platform top (8 hiatuses at 2 - 6 km), with the highest values (16) on the platform edge (8 km). On the proximal slope, there are 12 hiatuses and the number drops to 0 in the distal slope, reflecting that this environment is less affected by sea-level fluctuations.\nThe hiatuses in the platform interior are generated by long intervals of low sea level, which exposes the platform top. The high number of hiatuses in the slope results from the fact that steep topography records sea-level fluctuations much more than flat topography. The distal slope is below the range of the sea-level fluctuations, so it does not undergo non-deposition or breaks in carbonate production, it is only affected by changes in low carbonate production of the aphotic factory and varying input from the platform top.\n\n\n\n\n\n\n\n\n\nSolution Task 3: Hiatus duration and water depth\n\n\n\n\n\nGenerate histograms of hiatus durations and plots of water depth at different distances from shore. Do you see any systematic changes?\n\npos = \"2km\" # position of adm\nstopifnot(pos %in%  dist) # validity check\n\nplot(scenarioA$t_myr, scenarioA$wd_m[,pos],\n     xlab = \"Time [Myr]\",\n     ylab = \"Water depth [m]\",\n     type = \"l\",\n     main = paste0(\"Water depth \", pos, \" from shore\"))\n\n\n\n\n\n\n\nhiatus_durations &lt;- adm_list[[pos]] |&gt;\n  get_hiat_duration()\n\nif (length(hiatus_durations) == 0) {\n  stop(\"No hiatuses at position \", pos)\n}\n\nhiatus_durations |&gt;\n  hist(xlab = \"Hiatus duration [Myr]\",\n       main = paste0(\"Hiatus duration \", pos, \" from shore\"))\n\n\n\n\n\n\n\n\n\nHiatus duration\nThe distribution of hiatus durations in the platform interior is bimodal: it consists of two long hiatuses (caused by the prolonged drops in the sea level) and six shorter hiatuses generated by the lower-order sea level changes.\nAt 8 km from shore, the number of short hiatuses increases to 14, reflecting the steep topography of the platform edge.\nOn the slope, hiatuses are more abundant, but their duration is much shorter. This is most pronounced for the proximal slope. In the distal slope (12 km) you might get an error: this is because there are no hiatuses.\nNote the disconnect between the number of hiatuses and incompleteness: Onshore sections are the most incomplete, but have only a few hiatuses. In contrast, the proximal slope has the most hiatuses, but a low incompleteness. This is because hiatus duration in the onshore sections is much longer.\n\n\nWater depth\nIn the platform top (2 km), water depth is 0 for the largest part of the studied 1 Myr, with an initial flooding and two subsequent rises corresponding to the highest points of the first-order sea-level cycles.\nOn the platform edge (8 km), the water depth reaches a maximum of 30 m in the initial flooding phase, but it is still emerged for a large part of the interval. The upper slope remains under water for all the time of the simulation, reflecting how different platform top and platform slopes are in terms of deposition.\nThe strong cyclicity of the sea-level curve is still visible at 12 km offshore, where the water depth oscillates between 45 and 90 m."[m
   },[m
   {[m
     "objectID": "advanced_topics.html#tasks",[m
     "href": "advanced_topics.html#tasks",[m
     "title": "Advanced Topics",[m
     "section": "Tasks",[m
[31m-    "text": "Tasks\n\n\n\n\n\n\nTask 1: Taphonomic effects\n\n\n\n\n\n\n\n\n\n\n\n\nTask 2: Phylogenetic trees in stratigraphic context"[m
[32m+[m[32m    "text": "Tasks\n\n\n\n\n\n\nTask 4.1: Taphonomic effects\n\n\n\nModel a taxon that has a preservation probability of 0.2 in water depths lower than 20 m and a preservation probablity of 0.9 in water deeper than 20 m.\nHow abundant is this taxon at different locations on the platform? From your modeling results along, is there any way to distinguish these taphonomic effect from an ecological effect?\n\n\n\n\n\n\n\n\nTask 4.2: Phylogenetic trees in stratigraphic context\n\n\n\nSimulate an FBD (time)tree over the duration of the age-depth model and transform it at different locations using the age-depth model.\nSimulate some fossils along the tree using the FossilSim package.\nHow are the trees affected at the different locations? What are the most obvious visual changes in their topology?"[m
   },[m
   {[m
     "objectID": "advanced_topics.html#solutions",[m
     "href": "advanced_topics.html#solutions",[m
     "title": "Advanced Topics",[m
     "section": "Solutions",[m
[31m-    "text": "Solutions\n\n\n\n\n\n\nSolution Task 1: Taphonomic effects\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nSolution Task 2: Phylogenetic trees in stratigraphic context"[m
[32m+[m[32m    "text": "Solutions\n\n\n\n\n\n\nSolution Task 4.1: Taphonomic effects\n\n\n\n\n\nModel a taxon that has a preservation probability of 0.2 in water depths lower than 20 m and a preservation probability of 0.9 in water deeper than 20 m.\nHow abundant is this taxon at different locations on the platform? From your modeling results along, is there any way to distinguish these taphonomic effect from an ecological effect?\nLet’s first collect all age-depth models in a list for easy access:\n\nadm_list = list()                                     # storage for age-depth models\ndist = paste(seq(2, 12, by = 2), \"km\", sep = \"\")      # distances from shore\nfor (pos in dist){                                    # construct ADMs for all distances\n  adm_list[[pos]] = tp_to_adm(t = scenarioA$t_myr,        \n                             h = scenarioA$h_m[,pos],\n                             T_unit = \"Myr\",\n                             L_unit = \"m\")\n}\n\n\n# focus on 2 km offshore\npos = \"2km\"\namd = adm_list[[pos]]\npres_potential= function(x){\n  p = rep(NA, length(x))\n  p[ x &lt;= 20] = 0.2\n  p[x&gt; 20 ] = 0.9\n  return(p)\n}\nwds = seq(-1, 35, by = 0.1)\nplot(x = wds,\n     y = pres_potential(wds),\n     xlab = \"Water depth [m]\",\n     ylab = \"Preservation probability\",\n     ylim = c(0,1))\n\n\n\n\n\n\n\nctc = approxfun(x = scenarioA$t_myr, scenarioA$wd_m[,pos])\nt = scenarioA$t_myr\nplot(x = t, \n     y = ctc(t),\n     xlab = \"Time [Myr]\",\n     ylab = \"Taphonomic gradient - Water depth [m]\",\n     main = \"Taphonomic gradient\")\n\n\n\n\n\n\n\np3(rate = 10, from = min_time(adm), to = max_time(adm), n = 1000) |&gt;\n  apply_taphonomy(pres_potential = pres_potential, ctc = ctc) |&gt;\n  time_to_strat(adm, destructive = TRUE) |&gt;\n  hist(xlab = \"Stratigraphic height [m]\",\n       ylab = \"# Fossils\",\n       main = paste0(\"Fossil abundance \", pos, \" from shore\"))\n\n\n\n\n\n\n\n\nThe taxon is becomes more abundant in the distal parts of the platform, which is a combined effect of taphonomy and stratigraphy:\n\nDistal parts have deeper water, leading to higher preservation rates\nDistal parts also have less gaps, leading to less destruction of fossils due to erosion and nondeposition\n\n\n\n\n\n\n\n\n\n\nSolution Task 4.2: Phylogenetic trees in stratigraphic context\n\n\n\n\n\nSimulate an FBD (time)tree over the duration of the age-depth model and transform it at different locations using the age-depth model.\nSimulate some fossils along the tree using the FossilSim package.\nHow are the trees affected at the different locations? What are the most obvious visual changes in their topology?\nBased on the above code snippets, we get\n\npos = \"2km\"\nadm = adm_list[[pos]]\ntree = ape::rbdtree(birth = 2, death = 1, Tmax = max_time(adm))\nfossils = FossilSim::sim.fossils.poisson(rate = 2, tree = tree)\nplot(fossils, tree)\n\n\n\n\n\n\n\ntree_strat = tree |&gt; \n  time_to_strat(adm)\n\nfossils_strat = fossils |&gt; \n  rev_dir(ref = max_time(adm)) |&gt;\n  time_to_strat(adm) |&gt;\n  rev_dir(ref = max_height(adm)) |&gt;\n  plot(tree_strat)\n\n\n\n\n\n\n\n\nThe most obvious change is the collapse of branches over gaps, leading to the apparent creation of hard polytomies. All fossils that were placed on these branches are removed as they coincide with the gaps, leading to an overall reduced number of fossils on the tree. As with the trait evolution, the gaps lead to an apparent increase in the rate of evolution, here expressed as parallel branching across the tree."[m
   },[m
   {[m
     "objectID": "strat_architecture.html#tasks",[m
     "href": "strat_architecture.html#tasks",[m
     "title": "Stratigraphic Architectures and age-depth models",[m
     "section": "Tasks",[m
[31m-    "text": "Tasks\n\n\n\n\n\n\nImportantTask 1: Getting to know age-depth models\n\n\n\nDefine age-depth models for different locations (e.g., 4 km, 6 km etc) along the onshore-offshore gradient, and plot them.\nHow do they connect to the chronostratigraphic diagram and the sea level curve show above?\n\n\n\n\n\n\n\n\nImportantTask 2: Incompleteness across the onshore-offshore gradient\n\n\n\nExamine how stratigraphic incompleteness and the number of hiatuses changes along the onshore-offshore gradient.\n\n\n\n\n\n\n\n\nImportantTask 3: Hiatus duration and water depth\n\n\n\nGenerate histograms of hiatus durations and plots of water depth at different distances from shore.\nDo you see any systematic changes?"[m
[32m+[m[32m    "text": "Tasks\n\n\n\n\n\n\nTask 1: Getting to know age-depth models\n\n\n\nDefine age-depth models for different locations (e.g., 4 km, 6 km etc) along the onshore-offshore gradient, and plot them.\nHow do they connect to the chronostratigraphic diagram and the sea level curve show above?\n\n\n\n\n\n\n\n\nTask 2: Incompleteness across the onshore-offshore gradient\n\n\n\nExamine how stratigraphic incompleteness and the number of hiatuses changes along the onshore-offshore gradient.\n\n\n\n\n\n\n\n\nTask 3: Hiatus duration and water depth\n\n\n\nGenerate histograms of hiatus durations and plots of water depth at different distances from shore.\nDo you see any systematic changes?"[m
   },[m
   {[m
     "objectID": "event_data.html",[m
     "href": "event_data.html",[m
     "title": "Event Data and Niche Modeling",[m
     "section": "",[m
[31m-    "text": "TODO: * write introduction * match examples to new data [to be done on Wed!] * write solution & code snippet for range offset"[m
[32m+[m[32m    "text": "TODO: * write introduction"[m
   },[m
   {[m
     "objectID": "event_data.html#fossil-occurrences-niche-modeling-and-last-occurrences-45-min",[m
[36m@@ -508,35 +508,35 @@[m
     "href": "event_data.html#coding-cheat-sheet",[m
     "title": "Event Data and Niche Modeling",[m
     "section": "Coding cheat sheet",[m
[31m-    "text": "Coding cheat sheet\n\nSimulating fossil occurrences\nFossil locations or ages can be simulated using the p3 function if the rate of fossil occurrences is constant:\n\nlibrary(StratPal)\nlibrary(admtools)\npos = \"2km\"\nadm = tp_to_adm(t = scenarioA$t_myr,        \n                             h = scenarioA$h_m[,pos],\n                             T_unit = \"Myr\",\n                             L_unit = \"m\")\nrate = 300                           # 300 fossils per Myr\np3(rate = rate, from = 0, to = 1) |&gt; \n  hist(main = \"Fossil abundance\",\n       xlab = \"Time [Myr]\",\n       ylab = \"# Specimens\")\n\n\n\n\n\n\n\n\nFor time-variable rates see p3_var_rate.\n\n\nTransforming fossil occurrences to the stratigraphic domain\nYou can transform fossil ages directly using time_to_strat:\n\nfoss_per_myr = 300                                                           # fossils per Myr\np3(rate = foss_per_myr, from = min_time(adm), to = max_time(adm)) |&gt;         # constant rate in time domain\n  time_to_strat(adm, destructive = TRUE) |&gt;                                  # transform into depth domain\n  hist(xlab = paste0(\"Stratigraphic height [\",get_L_unit(adm),\"]\"),          # plot\n       main = \"Fossil abundance 2 km offshore\",\n       ylab = \"# Fossils\",\n       breaks = seq(from = min_height(adm), to = max_height(adm), length.out = 20))\n\n\n\n\n\n\n\n\nNote the option destructive = TRUE for time_to_strat. It makes sure fossils that coincide with hiatuses are destroyed.\n\n\nDefining niche models\nYou can define simple niche models with the functions snp_niche or bounded_niche:\n\nmy_niche = snd_niche(opt = 10,       # preferred water depth \n                     tol = 5,        # tolerance to water depth fluctuations\n                     cutoff_val = 0) # cut off negative values - the taxon does not survive on land\n\nTo visualize the niche you can plot it using the following code:\n\nmax_wd = 60                                     # maximum water depth\nx = seq(-2, max_wd, by = 0.1)\nplot(x, my_niche(x),\n     type = \"l\",\n     xlab = \"Water depth [m]\",\n     ylab = \"Collection probability\",\n     main = \"Collection probability of taxon\")\n\n\n\n\n\n\n\n\n\n\nApply niche models\nTo apply a niche model, we need two components: A niche definition that specifies the niche of a taxon along a cline (water depth in this example - this is the function we defined above), and a function that describes how the cline changes with time.\n\n\n\n\n\n\nTipCline\n\n\n\nA cline is an environmental gradient, e.g. altitude is a cline important for plant diversity. Ecological niches are often defined in terms of distributions of occurrence probability along a cline.\n\n\nTo define a function that returns the water depth with time, you can use the following code:\n\npos = \"2km\"                 # position in the platform we want water depth from\nt = scenarioA$t_myr         # time steps where water depth is determined by the model\nwd = scenarioA$wd_m[,pos]   # water depth 2 km from shore\ngc = approxfun(t, wd)       # use linear interpolation between known water depths\n\nYou can visualize this function using the following code:\n\nplot(x = t,\n     y = gc(t), \n     type = \"l\", \n     xlab = \"Time [Myr]\",\n     ylab = \"Water depth [m]\",\n     main = \"Water depth 2 km offshore\")\n\n\n\n\n\n\n\n\nWith both components (niche definition and cline change with time) defined, you can insert the niche model into the modeling pipeline via the function apply_niche:\n\np3(rate = foss_per_myr, from = min_time(adm), to = max_time(adm)) |&gt;         # model occurrences based on constant rate\n  apply_niche(niche_def = my_niche, gc = gc) |&gt;                              # apply niche model\n  time_to_strat(adm, destructive = TRUE) |&gt;                                  # transform into strat. domain, destroy fossils that coincide with hiatuses \n  hist(xlab = paste0(\"Stratigraphic height [\",get_L_unit(adm) ,\"]\"),         # plot results\n       main = \"Fossil abundance 2 km from shore\",\n       ylab = \"# Fossils\",\n       breaks = seq(from = min_height(adm), to = max_height(adm), length.out = 40))\n\n\n\n\n\n\n\n\n\n\nSimulating and transforming last occurrences\nTiming of last occurrences can be simulated using p3 or p3_var_rate just as fossil occurrence (or any other type of “event” data). They can be transformed using time_to_strat:\n\nrolo = 100                                                               # rate of last occurrences [per Myr]\np3(rate = rolo, from = min_time(adm), to = max_time(adm)) |&gt;             # constant rate of last occ\n  time_to_strat(adm, destructive = FALSE) |&gt;                             # non-destructive transformation!\n  hist(xlab = paste0(\"Stratigraphic height [\",get_L_unit(adm),\"]\"),      # plot histogram\n       main = \"Last occurrences 2 km offshore\",\n       ylab = \"# Last occurrences\",\n       breaks = seq(from = min_height(adm), to = max_height(adm), length.out = 20))\n\n\n\n\n\n\n\n\nNote that we use the option destructive = FALSE in time_to_strat. This is because last occurrences during a hiatus will appear at the hiatus surface in the stratigraphic domain\n\n\nBiostratigraphic precision (range offset)\nTBA"[m
[32m+[m[32m    "text": "Coding cheat sheet\n\nSimulating fossil occurrences\nFossil locations or ages can be simulated using the p3 function if the rate of fossil occurrences is constant:\n\nlibrary(StratPal)\nlibrary(admtools)\npos = \"2km\"\nadm = tp_to_adm(t = scenarioA$t_myr,        \n                             h = scenarioA$h_m[,pos],\n                             T_unit = \"Myr\",\n                             L_unit = \"m\")\nrate = 300                           # 300 fossils per Myr\np3(rate = rate, from = 0, to = 1) |&gt; \n  hist(main = \"Fossil abundance\",\n       xlab = \"Time [Myr]\",\n       ylab = \"# Specimens\")\n\n\n\n\n\n\n\n\nFor time-variable rates see p3_var_rate.\n\n\nTransforming fossil occurrences to the stratigraphic domain\nYou can transform fossil ages directly using time_to_strat:\n\nfoss_per_myr = 300                                                           # fossils per Myr\np3(rate = foss_per_myr, from = min_time(adm), to = max_time(adm)) |&gt;         # constant rate in time domain\n  time_to_strat(adm, destructive = TRUE) |&gt;                                  # transform into depth domain\n  hist(xlab = paste0(\"Stratigraphic height [\",get_L_unit(adm),\"]\"),          # plot\n       main = \"Fossil abundance 2 km offshore\",\n       ylab = \"# Fossils\",\n       breaks = seq(from = min_height(adm), to = max_height(adm), length.out = 20))\n\n\n\n\n\n\n\n\nNote the option destructive = TRUE for time_to_strat. It makes sure fossils that coincide with hiatuses are destroyed.\n\n\nDefining niche models\nYou can define simple niche models with the functions snp_niche or bounded_niche:\n\nmy_niche = snd_niche(opt = 10,       # preferred water depth \n                     tol = 5,        # tolerance to water depth fluctuations\n                     cutoff_val = 0) # cut off negative values - the taxon does not survive on land\n\nTo visualize the niche you can plot it using the following code:\n\nmax_wd = 60                                     # maximum water depth\nx = seq(-2, max_wd, by = 0.1)\nplot(x, my_niche(x),\n     type = \"l\",\n     xlab = \"Water depth [m]\",\n     ylab = \"Collection probability\",\n     main = \"Collection probability of taxon\")\n\n\n\n\n\n\n\n\n\n\nApply niche models\nTo apply a niche model, we need two components: A niche definition that specifies the niche of a taxon along a cline (water depth in this example - this is the function we defined above), and a function that describes how the cline changes with time.\n\n\n\n\n\n\nCline\n\n\n\nA cline is an environmental gradient, e.g. altitude is a cline important for plant diversity. Ecological niches are often defined in terms of distributions of occurrence probability along a cline.\n\n\nTo define a function that returns the water depth with time, you can use the following code:\n\npos = \"2km\"                 # position in the platform we want water depth from\nt = scenarioA$t_myr         # time steps where water depth is determined by the model\nwd = scenarioA$wd_m[,pos]   # water depth 2 km from shore\ngc = approxfun(t, wd)       # use linear interpolation between known water depths\n\nYou can visualize this function using the following code:\n\nplot(x = t,\n     y = gc(t), \n     type = \"l\", \n     xlab = \"Time [Myr]\",\n     ylab = \"Water depth [m]\",\n     main = \"Water depth 2 km offshore\")\n\n\n\n\n\n\n\n\nWith both components (niche definition and cline change with time) defined, you can insert the niche model into the modeling pipeline via the function apply_niche:\n\np3(rate = foss_per_myr, from = min_time(adm), to = max_time(adm)) |&gt;         # model occurrences based on constant rate\n  apply_niche(niche_def = my_niche, gc = gc) |&gt;                              # apply niche model\n  time_to_strat(adm, destructive = TRUE) |&gt;                                  # transform into strat. domain, destroy fossils that coincide with hiatuses \n  hist(xlab = paste0(\"Stratigraphic height [\",get_L_unit(adm) ,\"]\"),         # plot results\n       main = \"Fossil abundance 2 km from shore\",\n       ylab = \"# Fossils\",\n       breaks = seq(from = min_height(adm), to = max_height(adm), length.out = 40))\n\n\n\n\n\n\n\n\n\n\nSimulating and transforming last occurrences\nTiming of last occurrences can be simulated using p3 or p3_var_rate just as fossil occurrence (or any other type of “event” data). They can be transformed using time_to_strat:\n\nrolo = 100                                                               # rate of last occurrences [per Myr]\np3(rate = rolo, from = min_time(adm), to = max_time(adm)) |&gt;             # constant rate of last occ\n  time_to_strat(adm, destructive = FALSE) |&gt;                             # non-destructive transformation!\n  hist(xlab = paste0(\"Stratigraphic height [\",get_L_unit(adm),\"]\"),      # plot histogram\n       main = \"Last occurrences 2 km offshore\",\n       ylab = \"# Last occurrences\",\n       breaks = seq(from = min_height(adm), to = max_height(adm), length.out = 20))\n\n\n\n\n\n\n\n\nNote that we use the option destructive = FALSE in time_to_strat. This is because last occurrences during a hiatus will appear at the hiatus surface in the stratigraphic domain\n\n\nBiostratigraphic precision (range offset)\nBiostratigraphic precision is expressed as range offset, which is the difference between the true time of extinction and the last occurrence of a taxon. To determine it, you can use the wrapper function range_offset:\n\nt_ext = 1.5 # true time of extinction\nrate = 10 # fossil abundance (per Myr)\nr_offset = range_offset(t_ext = t_ext,\n             rate = rate,\n             adm = adm)\nr_offset\n\n        t         h \n 0.583782 12.934267 \n\n\nThis determines the range offset both in the stratigraphic domain (height difference between the last fossil found and the extinction horizon) and the time domain (time difference between the true age of extinction and the last preserved fossil). Here the stratigraphic range offset is 12.93 meters and the temporal range offset is 0.58 Myr. See ?range_offset for advanced usage, which includes the incorporation of variable rates, taphonomy, and ecology."[m
   },[m
   {[m
     "objectID": "advanced_topics.html#advanced-topics-in-stratigraphic-paleobiology",[m
     "href": "advanced_topics.html#advanced-topics-in-stratigraphic-paleobiology",[m
     "title": "Advanced Topics",[m
     "section": "",[m
[31m-    "text": "In this practical, we go through some advanced topics, such as modeling taphonomic effects, and transforming phylogenetic data (time trees and fossils)"[m
[32m+[m[32m    "text": "In this practical, we go through some advanced topics, such as modeling taphonomic effects, and transforming phylogenetic data (time trees and fossils)."[m
   },[m
   {[m
     "objectID": "advanced_topics.html#introduction",[m
     "href": "advanced_topics.html#introduction",[m
     "title": "Advanced Topics",[m
     "section": "Introduction",[m
[31m-    "text": "Introduction\nTBA"[m
[32m+[m[32m    "text": "Introduction\nIn this workshop, we have gone through the standard examples of stratigraphic paleobiology, including how stratigraphic biases such as gaps, changes in sedimentation rate and ecological gradients change our perception of last occurrences, fossil abundance, and stratophenetic change. These are just examples of general principles of how stratigraphic architectures modify observations of past (not necessarily only) biotic change. Abstracting this, there are two modifications to temporal data by stratigraphy:\n\nChange in observation probability, e.g, due to niche models or taphonomic effects.\nMisaglignmet of the stratigraphic and time domain due to changes in sedimentation rate and hiatuses. This includes removal of data due to gaps.\n\nThese effects apply universally to all types of data observable in the stratigraphic record, e.g, proxy records derived from fossil data.\nNaturally, the modeling framework of the StratPal package expands to this more general setting. In this practical, we explore how these general principles apply to two advanced topics: Taphonomy and phylogenetics."[m
   },[m
   {[m
     "objectID": "advanced_topics.html#code-cheat-sheet",[m
     "href": "advanced_topics.html#code-cheat-sheet",[m
     "title": "Advanced Topics",[m
     "section": "Code cheat sheet",[m
[31m-    "text": "Code cheat sheet\nTBA"[m
[32m+[m[32m    "text": "Code cheat sheet\n\nModeling taphonomy\nModeling taphonomy follows the same principles as modeling ecology. You need to define two function:\n\na function ctc describing the change in taphonomic conditions with time (corresponding to the change in gradient with time for ecology).\na function pres_potential that specifies how likely a fossil is to be preserved given some taphonomic conditions (equivalent to the niche definiton for ecology). Note that this requires you to write your own functions.\n\nBoth can then be passed to the function apply_taphonomy (instead of apply_ecology)\n\nlibrary(StratPal)\nlibrary(admtools)\n# assuming taphonomy is driven by water depth\npos = \"2km\"\nctc = approxfun(x = scenarioA$t_myr, scenarioA$wd_m[,pos])\nt = scenarioA$t_myr\nplot(x = t, \n     y = ctc(t),\n     xlab = \"Time [Myr]\",\n     ylab = \"Taphonomic gradient - Water depth [m]\",\n     main = \"Taphonomic gradient\")\n\n\n\n\n\n\n\n\n\n# preservation probability\n# * 0 for terrestrial environments, \n# * 0.5 for shallow water\n# * and 0.9 for deeper water\npres_potential= function(x){\n  p = rep(NA, length(x))\n  p[x&lt;= 0] = 0\n  p[x &gt; 0 & x &lt;= 5] = 0.5\n  p[x&gt; 5 ] = 0.9\n  return(p)\n}\nwds = seq(-1, 15, by = 0.1)\nplot(x = wds,\n     y = pres_potential(wds),\n     xlab = \"Water depth [m]\",\n     ylab = \"Preservation probability\",\n     ylim = c(0,1))\n\n\n\n\n\n\n\n\nYou can now incorporate taphonomic effects into your pipeline by passing those functions to apply_taphonomy:\n\np3(rate = 10, from = 0, to = 2, n = 1000) |&gt;\n  apply_taphonomy(pres_potential = pres_potential, ctc = ctc) |&gt;\n  hist(main = \"Fossil abundance after taphonomic effects\",\n       ylab = \"# Fossils\",\n       xlab = \"Time [Myr]\")\n\n\n\n\n\n\n\n\nNote that because of the generality of the implementation, taphonomic effects can immediately be incorporated into a model selection workflows in combination with the paleoTS package and stratigraphic effects:\n\nlibrary(paleoTS) # load paleoTS package for model selection & plotting\n\npos = \"2km\"\nadm = tp_to_adm(t = scenarioA$t_myr,        \n                h = scenarioA$h_m[,pos],\n                T_unit = \"Myr\",\n                L_unit = \"m\")\ntemp_res = 0.1                                             # temporal resolution in Myr\nseq(min_time(adm), max_time(adm), by = temp_res) |&gt;           # time steps where the trait evolution is simulated\n  random_walk_sl(sigma = 1, mu = 3, y0 = 0, intrapop_var = 1, n_per_sample = 5) |&gt;                   # simulate trait evolution\n  apply_taphonomy(pres_potential = pres_potential, ctc = ctc) |&gt;\n  time_to_strat(adm, destructive = TRUE) |&gt; \n  reduce_to_paleoTS() |&gt;# transform into stratigraphic domain\n  plot(xlab = paste0(\"Stratigraphic position [\",get_L_unit(adm),\"]\"), # plot\n       ylab = \"Trait value\") \n\n\n\n\n\n\n\n\n\n\nPhylogenetics\nAge-depth models can be used to transform any type of data from the time to the stratigraphic domain. Here we give an example using phylogenetic trees (time trees).\n\nlibrary(FossilSim)\nlibrary(ape)\ntree = ape::rbdtree(birth = 2, death = 1, Tmax = max_time(adm))\nfossils = FossilSim::sim.fossils.poisson(rate = 2, tree = tree)\nplot(fossils, tree)\n\n\n\n\n\n\n\n\n\n# plot phylogenetic tree in stratigraphic domain\ntree_strat = tree |&gt; \n  time_to_strat(adm)\nplot(tree_strat)\n\n\n\n\n\n\n\n\n\n# add fossils to plot - note that the reversal via `rev_dir`\n# this is necessary bc fossils are represented in time before present\n# whereas the age-depth model counts time from 0 forwards\nfossils_strat = fossils |&gt; \n  rev_dir(ref = max_time(adm)) |&gt;\n  time_to_strat(adm) |&gt;\n  rev_dir(ref = max_height(adm)) |&gt;\n  plot(tree_strat)"[m
   },[m
   {[m
     "objectID": "trait_evol.html#trait-evolution-in-stratigraphic-context",[m
     "href": "trait_evol.html#trait-evolution-in-stratigraphic-context",[m
     "title": "Trait Evolution",[m
[31m-    "section": "Trait evolution in stratigraphic context",[m
[31m-    "text": "Trait evolution in stratigraphic context\nThis practical explores how trait evolution is influenced by stratigraphic architectures."[m
[32m+[m[32m    "section": "2. Trait evolution in stratigraphic context",[m
[32m+[m[32m    "text": "2. Trait evolution in stratigraphic context\nThis practical explores how trait evolution is influenced by stratigraphic architectures."[m
   },[m
   {[m
     "objectID": "trait_evol.html#introduction",[m
[36m@@ -550,7 +550,7 @@[m
     "href": "trait_evol.html#coding-cheat-sheet",[m
     "title": "Trait Evolution",[m
     "section": "Coding cheat sheet",[m
[31m-    "text": "Coding cheat sheet\n\nModes of evolution in the time domain\nThere are three modes of evolution implemented in the StratPal package: stasis, random_walk, and ornstein_uhlenbeck. You can plot them using piping via\n\nlibrary(StratPal)\nlibrary(admtools)\npos = \"2km\"\nadm = tp_to_adm(t = scenarioA$t_myr,        \n                             h = scenarioA$h_m[,pos],\n                             T_unit = \"Myr\",\n                             L_unit = \"m\")\ntemp_res = 0.001                                              # temporal resolution in Myr\nseq(min_time(adm), max_time(adm), by = temp_res) |&gt;           # time steps where the trait evolution is simulated\n  random_walk(sigma = 1, mu = 0, y0 = 0) |&gt;                   # simulate trait evolution\n  plot(xlab = paste0(\"Time [\",get_T_unit(adm),\"]\"),           # plot\n       ylab = \"Trait value\",\n       type = \"l\") \n\n\n\n\n\n\n\n\nTo plot other modes, replace random_walk by one of the other modes (stasis or ornstein_uhlenbeck). If you use stasis, remove the unused arguments - this mode of evolution is simulated using fewer parameters than the others.\n\n\nTransforming trait evolution into the stratigraphic domain\nTo transform trait evolution into the stratigraphic domain, insert time_to_strat with the age-depth model of your choice into your pipeline:\n\ntemp_res = 0.001                                              # temporal resolution in Myr\nseq(min_time(adm), max_time(adm), by = temp_res) |&gt;           # time steps where the trait evolution is simulated\n  random_walk(sigma = 1, mu = 3, y0 = 0) |&gt;                   # simulate trait evolution\n  time_to_strat(adm, destructive = FALSE) |&gt;                  # transform into stratigraphic domain\n  plot(xlab = paste0(\"Stratigraphic position [\",get_L_unit(adm),\"]\"), # plot\n       ylab = \"Trait value\",\n       type = \"l\",\n       orientation = \"lr\") \n\n\n\n\n\n\n\n\nThis will transform your simulations from the time domain into the stratigraphic domain.\n\n\nModel selection using the paleoTS package\nTo work with model selection, we need to simulate traits of individuals, not just means of populations. This is indicated by using the suffix _sl (for “specimen level”) in the simulation.\n\nlibrary(paleoTS)\ntemp_res = 0.001                                              # temporal resolution in Myr\nseq(min_time(adm), max_time(adm), by = temp_res) |&gt;           # time steps where the trait evolution is simulated\n  random_walk_sl(sigma = 1, mu = 3, y0 = 0) |&gt;                   # simulate trait evolution\n  time_to_strat(adm, destructive = FALSE) |&gt; \n   reduce_to_paleoTS() |&gt;# transform into stratigraphic domain\n  plot(xlab = paste0(\"Stratigraphic position [\",get_L_unit(adm),\"]\"), # plot\n       ylab = \"Trait value\") \n\n\n\n\n\n\n\n\nsee ?reduce_to_paleoTS for details. We can then directly pass the results to the model selection options available in paleoTS:\n\ntemp_res = 0.01                                              # temporal resolution in Myr\nseq(min_time(adm), max_time(adm), by = temp_res) |&gt;           # time steps where the trait evolution is simulated\n  random_walk_sl(sigma = 1, mu = 3, y0 = 0) |&gt;                   # simulate trait evolution\n  time_to_strat(adm, destructive = FALSE) |&gt; \n   reduce_to_paleoTS() |&gt;\n  fit4models()\n\nWarning in\nfit4models(reduce_to_paleoTS(time_to_strat(random_walk_sl(seq(min_time(adm), :\nSample variances not equal (P = 0 ); consider using argument pool=FALSE\n\n\n\nComparing 4 models [n = 201, method = Joint]\n\n                   logL K      AICc       dAICc Akaike.wt\nGRW           -220.1850 3  446.4919    0.000000     0.957\nURW           -224.3133 2  452.6872    6.195254     0.043\nStasis        -432.5207 2  869.1021  422.610171     0.000\nStrictStasis -4191.1228 1 8384.2658 7937.773865     0.000\n\n\nSee ?fit4models to understand the output; more information can be found in (Hunt and G. 2006)."[m
[32m+[m[32m    "text": "Coding cheat sheet\n\nModes of evolution in the time domain\nThere are three modes of evolution implemented in the StratPal package: stasis, random_walk, and ornstein_uhlenbeck. You can plot them using piping via\n\nlibrary(StratPal)\nlibrary(admtools)\npos = \"2km\"\nadm = tp_to_adm(t = scenarioA$t_myr,        \n                h = scenarioA$h_m[,pos],\n                T_unit = \"Myr\",\n                L_unit = \"m\")\ntemp_res = 0.001                                              # temporal resolution in Myr\nseq(min_time(adm), max_time(adm), by = temp_res) |&gt;           # time steps where the trait evolution is simulated\n  random_walk(sigma = 1, mu = 0, y0 = 0) |&gt;                   # simulate trait evolution\n  plot(xlab = paste0(\"Time [\",get_T_unit(adm),\"]\"),           # plot\n       ylab = \"Trait value\",\n       type = \"l\") \n\n\n\n\n\n\n\n\nTo plot other modes, replace random_walk by one of the other modes (stasis or ornstein_uhlenbeck). If you use stasis, remove the unused arguments - this mode of evolution is simulated using fewer parameters than the others.\n\n\nTransforming trait evolution into the stratigraphic domain\nTo transform trait evolution into the stratigraphic domain, insert time_to_strat with the age-depth model of your choice into your pipeline:\n\ntemp_res = 0.001                                              # temporal resolution in Myr\nseq(min_time(adm), max_time(adm), by = temp_res) |&gt;           # time steps where the trait evolution is simulated\n  random_walk(sigma = 1, mu = 3, y0 = 0) |&gt;                   # simulate trait evolution\n  time_to_strat(adm, destructive = FALSE) |&gt;                  # transform into stratigraphic domain\n  plot(ylab = paste0(\"Stratigraphic position [\",get_L_unit(adm),\"]\"), # plot\n       xlab = \"Trait value\",\n       type = \"l\",\n       orientation = \"du\") \n\n\n\n\n\n\n\n\nThis will transform your simulations from the time domain into the stratigraphic domain. We use the plotting option orientation = \"du\" to plot stratigraphic height on the y axis. Use \"lr\" to plot it on the x axis.\n\n\nModel selection using the paleoTS package\nTo work with model selection, we need to simulate traits of individuals, not just means of populations as we did above. This is indicated by using the suffix _sl (for “specimen level”) in the simulation.\n\nlibrary(paleoTS) # load paleoTS package for model selection & plotting\ntemp_res = 0.1                                             # temporal resolution in Myr\nseq(min_time(adm), max_time(adm), by = temp_res) |&gt;           # time steps where the trait evolution is simulated\n  random_walk_sl(sigma = 1, mu = 3, y0 = 0, intrapop_var = 1, n_per_sample = 5) |&gt;                   # simulate trait evolution\n  time_to_strat(adm, destructive = FALSE) |&gt; \n  reduce_to_paleoTS() |&gt;# transform into stratigraphic domain\n  plot(xlab = paste0(\"Stratigraphic position [\",get_L_unit(adm),\"]\"), # plot\n       ylab = \"Trait value\") \n\n\n\n\n\n\n\n\nWe use reduce_to_paleoTS to convert the specimen level simulations from StratPal to the sample level summaries used by paleoTS, see ?reduce_to_paleoTS for details. We can then directly pass the results to the model selection options available in paleoTS (fit3models, fit4models and fit9models, see paleoTS for details):\n\ntemp_res = 0.1                                              # temporal resolution in Myr\nintrapop_var = 1 # trait variance per sampling location/ fossil assemblage\nn_per_sample = 5 # number of fossils found per sampling location / fossil assemblage\n\nseq(min_time(adm), max_time(adm), by = temp_res) |&gt;           # time steps where the trait evolution is simulated\n  random_walk_sl(sigma = 1, mu = 3, y0 = 0, intrapop_var = intrapop_var, n_per_sample = n_per_sample) |&gt;                   # simulate trait evolution\n  time_to_strat(adm, destructive = FALSE) |&gt; \n  reduce_to_paleoTS() |&gt;\n  fit9models()\n\nWarning in\nfit9models(reduce_to_paleoTS(time_to_strat(random_walk_sl(seq(min_time(adm), :\nSample variances not equal (P = 0 ); consider using argument pool=FALSE\n\n\nFitting simple models...\nFitting punctuational model...\n\n\nWarning in fitGpunc(y, ng = 2, method = method, silent = silent, ...): Sample\nvariances not equal (P = 0 ); consider using argument pool=FALSE\n\n\nTotal # hypotheses:  8 \n1  2  3  4  5  6  7  8  \nFitting Stasis-URW model...\nTotal # hypotheses:  8 \n1  2  3  4  5  6  7  8  \nFitting Stasis-GRW model...\nTotal # hypotheses:  8 \n1  2  3  4  5  6  7  8  \nFitting URW-Stasis model...\nTotal # hypotheses:  8 \n1  2  3  4  5  6  7  8  \nFitting GRW-Stasis model...\nTotal # hypotheses:  8 \n1  2  3  4  5  6  7  8  \n\nComparing 9 models [n = 21, method = Joint]\n\n                  logL K      AICc      dAICc Akaike.wt\nStrictStasis -78.60809 1 159.42670 109.426312     0.000\nStasis       -36.23362 2  77.13390  27.133515     0.000\nURW          -27.07711 2  58.82089   8.820506     0.010\nGRW          -21.29431 3  50.00039   0.000000     0.852\nPunc-1       -25.46308 4  61.42616  11.425774     0.003\nStasis-URW   -26.76681 4  64.03362  14.033238     0.001\nStasis-GRW   -22.76502 5  59.53004   9.529656     0.007\nURW-Stasis   -21.24906 5  56.49812   6.497731     0.033\nGRW-Stasis   -18.20342 6  54.40684   4.406459     0.094\n\n\nSee ?fit4models to understand the output and fitSimple to fit more specialized models; more information can be found in (Hunt and G. 2006)."[m
   },[m
   {[m
     "objectID": "index.html#introduction",[m
[1mdiff --git a/docs/strat_architecture.html b/docs/strat_architecture.html[m
[1mindex 4f96098..86fde0f 100644[m
[1m--- a/docs/strat_architecture.html[m
[1m+++ b/docs/strat_architecture.html[m
[36m@@ -2,7 +2,7 @@[m
 <html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en"><head>[m
 [m
 <meta charset="utf-8">[m
[31m-<meta name="generator" content="quarto-1.8.25">[m
[32m+[m[32m<meta name="generator" content="quarto-1.7.32">[m
 [m
 <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">[m
 [m
[36m@@ -87,15 +87,14 @@[m [mdiv.csl-indent {[m
 <meta name="quarto:offset" content="./">[m
 <script src="site_libs/quarto-html/quarto.js" type="module"></script>[m
 <script src="site_libs/quarto-html/tabsets/tabsets.js" type="module"></script>[m
[31m-<script src="site_libs/quarto-html/axe/axe-check.js" type="module"></script>[m
 <script src="site_libs/quarto-html/popper.min.js"></script>[m
 <script src="site_libs/quarto-html/tippy.umd.min.js"></script>[m
 <script src="site_libs/quarto-html/anchor.min.js"></script>[m
 <link href="site_libs/quarto-html/tippy.css" rel="stylesheet">[m
[31m-<link href="site_libs/quarto-html/quarto-syntax-highlighting-7b89279ff1a6dce999919e0e67d4d9ec.css" rel="stylesheet" id="quarto-text-highlighting-styles">[m
[32m+[m[32m<link href="site_libs/quarto-html/quarto-syntax-highlighting-37eea08aefeeee20ff55810ff984fec1.css" rel="stylesheet" id="quarto-text-highlighting-styles">[m
 <script src="site_libs/bootstrap/bootstrap.min.js"></script>[m
 <link href="site_libs/bootstrap/bootstrap-icons.css" rel="stylesheet">[m
[31m-<link href="site_libs/bootstrap/bootstrap-0b37c64f34216b628666a8dac638b53b.min.css" rel="stylesheet" append-hash="true" id="quarto-bootstrap" data-mode="light">[m
[32m+[m[32m<link href="site_libs/bootstrap/bootstrap-dfb324f25d9b1687192fa8be62ac8f9c.min.css" rel="stylesheet" append-hash="true" id="quarto-bootstrap" data-mode="light">[m
 <script id="quarto-search-options" type="application/json">{[m
   "location": "navbar",[m
   "copy-button": false,[m
[36m@@ -135,8 +134,6 @@[m [mdiv.csl-indent {[m
     <nav class="navbar navbar-expand-lg " data-bs-theme="dark">[m
       <div class="navbar-container container-fluid">[m
       <div class="navbar-brand-container mx-auto">[m
[31m-    <a href="./index.html" class="navbar-brand navbar-brand-logo">[m
[31m-    </a>[m
     <a class="navbar-brand" href="./index.html">[m
     <span class="navbar-title">Modeling Stratigraphic Paleobiology in R</span>[m
     </a>[m
[36m@@ -294,8 +291,8 @@[m [mdiv.csl-indent {[m
 <h3 class="anchored" data-anchor-id="loading-the-package-and-data">Loading the package and data</h3>[m
 <p>Load the <code>StratPal</code> and <code>admtools</code> packages via</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb1"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb1-1"><a href="#cb1-1" aria-hidden="true" tabindex="-1"></a><span class="fu">library</span>(<span class="st">"StratPal"</span>)</span>[m
[31m-<span id="cb1-2"><a href="#cb1-2" aria-hidden="true" tabindex="-1"></a><span class="fu">library</span>(<span class="st">"admtools"</span>)</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb1"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb1-1"><a href="#cb1-1" aria-hidden="true" tabindex="-1"></a><span class="fu">library</span>(<span class="st">"StratPal"</span>)</span>[m
[32m+[m[32m<span id="cb1-2"><a href="#cb1-2" aria-hidden="true" tabindex="-1"></a><span class="fu">library</span>(<span class="st">"admtools"</span>)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 </div>[m
 <p>to have all required functionality and example data available. We use the example data stored in the <code>scenarioA</code> variable that comes with the <code>StratPal</code> package. You can find more details on the data using <code>?scenarioA</code>.</p>[m
 </section>[m
[36m@@ -303,11 +300,11 @@[m [mdiv.csl-indent {[m
 <h3 class="anchored" data-anchor-id="creating-age-depth-models">Creating age-depth models</h3>[m
 <p>Age-depth models are constructed using <code>tp_to_adm</code> (tie point to age-depth model) from the <code>admtools</code> package. Here we construct the age-depth model 2 km from shore by passing the function the vectors of times and heights at that stratigraphic position:</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb2"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb2-1"><a href="#cb2-1" aria-hidden="true" tabindex="-1"></a>pos <span class="ot">=</span> <span class="st">"2km"</span>                                 <span class="co"># distance from shore</span></span>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb2"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb2-1"><a href="#cb2-1" aria-hidden="true" tabindex="-1"></a>pos <span class="ot">=</span> <span class="st">"2km"</span>                                 <span class="co"># distance from shore</span></span>[m
 <span id="cb2-2"><a href="#cb2-2" aria-hidden="true" tabindex="-1"></a>adm <span class="ot">=</span> <span class="fu">tp_to_adm</span>(<span class="at">t =</span> scenarioA<span class="sc">$</span>t_myr,        <span class="co"># construct age-depth model</span></span>[m
 <span id="cb2-3"><a href="#cb2-3" aria-hidden="true" tabindex="-1"></a>                <span class="at">h =</span> scenarioA<span class="sc">$</span>h_m[,pos],</span>[m
 <span id="cb2-4"><a href="#cb2-4" aria-hidden="true" tabindex="-1"></a>                <span class="at">T_unit =</span> <span class="st">"Myr"</span>,</span>[m
[31m-<span id="cb2-5"><a href="#cb2-5" aria-hidden="true" tabindex="-1"></a>                <span class="at">L_unit =</span> <span class="st">"m"</span>)</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<span id="cb2-5"><a href="#cb2-5" aria-hidden="true" tabindex="-1"></a>                <span class="at">L_unit =</span> <span class="st">"m"</span>)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 </div>[m
 <p>Note that we immediately add time and length units to avoid downstream confusion. The example data contains model outputs at 2, 4, 6, 8, 10, and 12 km from shore.</p>[m
 </section>[m
[36m@@ -315,12 +312,12 @@[m [mdiv.csl-indent {[m
 <h3 class="anchored" data-anchor-id="plotting-age-depth-models">Plotting Age-depth models</h3>[m
 <p>Age-depth models can be plotted using the standard <code>plot</code> command:</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb3"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb3-1"><a href="#cb3-1" aria-hidden="true" tabindex="-1"></a><span class="fu">plot</span>(adm,           <span class="co"># Plot age-depth model</span></span>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb3"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb3-1"><a href="#cb3-1" aria-hidden="true" tabindex="-1"></a><span class="fu">plot</span>(adm,           <span class="co"># Plot age-depth model</span></span>[m
 <span id="cb3-2"><a href="#cb3-2" aria-hidden="true" tabindex="-1"></a>     <span class="at">lwd_acc =</span> <span class="dv">2</span>,   <span class="co"># plot thicker lines for intervals with sediment accumulation (lwd = line width)</span></span>[m
 <span id="cb3-3"><a href="#cb3-3" aria-hidden="true" tabindex="-1"></a>     <span class="at">lty_destr =</span> <span class="dv">0</span>) <span class="co"># don't plot destructive intervals/gaps (lty = line type)</span></span>[m
 <span id="cb3-4"><a href="#cb3-4" aria-hidden="true" tabindex="-1"></a><span class="fu">T_axis_lab</span>()        <span class="co"># add time axis label</span></span>[m
 <span id="cb3-5"><a href="#cb3-5" aria-hidden="true" tabindex="-1"></a><span class="fu">L_axis_lab</span>()        <span class="co"># add length axis label</span></span>[m
[31m-<span id="cb3-6"><a href="#cb3-6" aria-hidden="true" tabindex="-1"></a><span class="fu">title</span>(<span class="st">"Age-depth model 2 km from shore"</span>)</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<span id="cb3-6"><a href="#cb3-6" aria-hidden="true" tabindex="-1"></a><span class="fu">title</span>(<span class="st">"Age-depth model 2 km from shore"</span>)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[36m@@ -335,23 +332,23 @@[m [mdiv.csl-indent {[m
 <h3 class="anchored" data-anchor-id="extracting-information-from-age-depth-models">Extracting information from age-depth models</h3>[m
 <p>Age-depth models contain a lot of stratigraphic information, e.g.&nbsp;on stratigraphic completeness, hiatuses, or sedimentation rates. Some basic functionality to extract this information is:</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb4"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb4-1"><a href="#cb4-1" aria-hidden="true" tabindex="-1"></a><span class="fu">get_total_duration</span>(adm)  <span class="co"># time interval covered by age-depth model</span></span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb4"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb4-1"><a href="#cb4-1" aria-hidden="true" tabindex="-1"></a><span class="fu">get_total_duration</span>(adm)  <span class="co"># time interval covered by age-depth model</span></span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output cell-output-stdout">[m
 <pre><code>[1] 2</code></pre>[m
 </div>[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb6"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb6-1"><a href="#cb6-1" aria-hidden="true" tabindex="-1"></a><span class="fu">get_total_thickness</span>(adm) <span class="co"># sediment accumulated </span></span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb6"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb6-1"><a href="#cb6-1" aria-hidden="true" tabindex="-1"></a><span class="fu">get_total_thickness</span>(adm) <span class="co"># sediment accumulated </span></span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output cell-output-stdout">[m
 <pre><code>[1] 81.23346</code></pre>[m
 </div>[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb8"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb8-1"><a href="#cb8-1" aria-hidden="true" tabindex="-1"></a><span class="fu">get_completeness</span>(adm)    <span class="co"># stratigraphic completeness</span></span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb8"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb8-1"><a href="#cb8-1" aria-hidden="true" tabindex="-1"></a><span class="fu">get_completeness</span>(adm)    <span class="co"># stratigraphic completeness</span></span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output cell-output-stdout">[m
 <pre><code>[1] 0.349</code></pre>[m
 </div>[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb10"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb10-1"><a href="#cb10-1" aria-hidden="true" tabindex="-1"></a><span class="fu">get_hiat_duration</span>(adm)   <span class="co"># extract hiatus durations</span></span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb10"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb10-1"><a href="#cb10-1" aria-hidden="true" tabindex="-1"></a><span class="fu">get_hiat_duration</span>(adm)   <span class="co"># extract hiatus durations</span></span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output cell-output-stdout">[m
 <pre><code>[1] 0.002 0.517 0.001 0.002 0.001 0.742 0.001 0.036</code></pre>[m
 </div>[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb12"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb12-1"><a href="#cb12-1" aria-hidden="true" tabindex="-1"></a><span class="fu">summary</span>(adm)             <span class="co"># some summary statistics</span></span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb12"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb12-1"><a href="#cb12-1" aria-hidden="true" tabindex="-1"></a><span class="fu">summary</span>(adm)             <span class="co"># some summary statistics</span></span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output cell-output-stdout">[m
 <pre><code>age-depth model [m
 Total duration: 2 Myr[m
[36m@@ -367,7 +364,7 @@[m [mStratigraphic completeness: 34.9 %[m
 <h3 class="anchored" data-anchor-id="extracting-water-depth">Extracting water depth</h3>[m
 <p>Water depth at the simulation runs is stored in the variable <code>scenarionA</code></p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb14"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb14-1"><a href="#cb14-1" aria-hidden="true" tabindex="-1"></a>pos <span class="ot">=</span> <span class="st">"2km"</span></span>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb14"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb14-1"><a href="#cb14-1" aria-hidden="true" tabindex="-1"></a>pos <span class="ot">=</span> <span class="st">"2km"</span></span>[m
 <span id="cb14-2"><a href="#cb14-2" aria-hidden="true" tabindex="-1"></a>wd <span class="ot">=</span> scenarioA<span class="sc">$</span>wd_m[,<span class="st">"2km"</span>]</span>[m
 <span id="cb14-3"><a href="#cb14-3" aria-hidden="true" tabindex="-1"></a>t <span class="ot">=</span> scenarioA<span class="sc">$</span>t_myr</span>[m
 <span id="cb14-4"><a href="#cb14-4" aria-hidden="true" tabindex="-1"></a><span class="fu">plot</span>(<span class="at">x =</span> t,</span>[m
[36m@@ -375,7 +372,7 @@[m [mStratigraphic completeness: 34.9 %[m
 <span id="cb14-6"><a href="#cb14-6" aria-hidden="true" tabindex="-1"></a>     <span class="at">type =</span> <span class="st">"l"</span>,</span>[m
 <span id="cb14-7"><a href="#cb14-7" aria-hidden="true" tabindex="-1"></a>     <span class="at">xlab =</span> <span class="st">"Time [Myr]"</span>,</span>[m
 <span id="cb14-8"><a href="#cb14-8" aria-hidden="true" tabindex="-1"></a>     <span class="at">ylab =</span> <span class="st">"Water depth [m]"</span>,</span>[m
[31m-<span id="cb14-9"><a href="#cb14-9" aria-hidden="true" tabindex="-1"></a>     <span class="at">main =</span> <span class="st">"Water depth 2 km from shore"</span>)</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<span id="cb14-9"><a href="#cb14-9" aria-hidden="true" tabindex="-1"></a>     <span class="at">main =</span> <span class="st">"Water depth 2 km from shore"</span>)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[36m@@ -394,7 +391,7 @@[m [mStratigraphic completeness: 34.9 %[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-<span class="screen-reader-only">Important</span>Task 1: Getting to know age-depth models[m
[32m+[m[32mTask 1: Getting to know age-depth models[m
 </div>[m
 </div>[m
 <div class="callout-body-container callout-body">[m
[36m@@ -408,7 +405,7 @@[m [mStratigraphic completeness: 34.9 %[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-<span class="screen-reader-only">Important</span>Task 2: Incompleteness across the onshore-offshore gradient[m
[32m+[m[32mTask 2: Incompleteness across the onshore-offshore gradient[m
 </div>[m
 </div>[m
 <div class="callout-body-container callout-body">[m
[36m@@ -421,7 +418,7 @@[m [mStratigraphic completeness: 34.9 %[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-<span class="screen-reader-only">Important</span>Task 3: Hiatus duration and water depth[m
[32m+[m[32mTask 3: Hiatus duration and water depth[m
 </div>[m
 </div>[m
 <div class="callout-body-container callout-body">[m
[36m@@ -433,19 +430,19 @@[m [mStratigraphic completeness: 34.9 %[m
 <section id="solutions" class="level2">[m
 <h2 class="anchored" data-anchor-id="solutions">Solutions</h2>[m
 <div class="callout callout-style-default callout-note callout-titled">[m
[31m-<div class="callout-header d-flex align-content-center collapsed" data-bs-toggle="collapse" data-bs-target=".callout-4-contents" aria-controls="callout-4" aria-expanded="false" aria-label="Toggle callout">[m
[32m+[m[32m<div class="callout-header d-flex align-content-center" data-bs-toggle="collapse" data-bs-target=".callout-4-contents" aria-controls="callout-4" aria-expanded="false" aria-label="Toggle callout">[m
 <div class="callout-icon-container">[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-<span class="screen-reader-only">Note</span>Solution Task 1: Getting to know age-depth models[m
[32m+[m[32mSolution Task 1: Getting to know age-depth models[m
 </div>[m
 <div class="callout-btn-toggle d-inline-block border-0 py-1 ps-1 pe-0 float-end"><i class="callout-toggle"></i></div>[m
 </div>[m
 <div id="callout-4" class="callout-4-contents callout-collapse collapse">[m
 <div class="callout-body-container callout-body">[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb15"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb15-1"><a href="#cb15-1" aria-hidden="true" tabindex="-1"></a><span class="co"># load packages</span></span>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb15"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb15-1"><a href="#cb15-1" aria-hidden="true" tabindex="-1"></a><span class="co"># load packages</span></span>[m
 <span id="cb15-2"><a href="#cb15-2" aria-hidden="true" tabindex="-1"></a><span class="fu">library</span>(<span class="st">"admtools"</span>)</span>[m
 <span id="cb15-3"><a href="#cb15-3" aria-hidden="true" tabindex="-1"></a><span class="fu">library</span>(<span class="st">"StratPal"</span>)</span>[m
 <span id="cb15-4"><a href="#cb15-4" aria-hidden="true" tabindex="-1"></a></span>[m
[36m@@ -458,11 +455,11 @@[m [mStratigraphic completeness: 34.9 %[m
 <span id="cb15-11"><a href="#cb15-11" aria-hidden="true" tabindex="-1"></a>                             <span class="at">h =</span> scenarioA<span class="sc">$</span>h_m[,pos],</span>[m
 <span id="cb15-12"><a href="#cb15-12" aria-hidden="true" tabindex="-1"></a>                             <span class="at">T_unit =</span> <span class="st">"Myr"</span>,</span>[m
 <span id="cb15-13"><a href="#cb15-13" aria-hidden="true" tabindex="-1"></a>                             <span class="at">L_unit =</span> <span class="st">"m"</span>)</span>[m
[31m-<span id="cb15-14"><a href="#cb15-14" aria-hidden="true" tabindex="-1"></a>}</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<span id="cb15-14"><a href="#cb15-14" aria-hidden="true" tabindex="-1"></a>}</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 </div>[m
 <p>Now you have a list with several age depth models. The code below plots one of them. You can modify it to plot each one separately or modify the code to plot all of them.</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb16"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb16-1"><a href="#cb16-1" aria-hidden="true" tabindex="-1"></a>pos <span class="ot">=</span> <span class="st">"2km"</span>               <span class="co"># insert distance from shore here</span></span>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb16"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb16-1"><a href="#cb16-1" aria-hidden="true" tabindex="-1"></a>pos <span class="ot">=</span> <span class="st">"2km"</span>               <span class="co"># insert distance from shore here</span></span>[m
 <span id="cb16-2"><a href="#cb16-2" aria-hidden="true" tabindex="-1"></a><span class="fu">stopifnot</span>(pos <span class="sc">%in%</span> dist ) <span class="co"># validity check</span></span>[m
 <span id="cb16-3"><a href="#cb16-3" aria-hidden="true" tabindex="-1"></a></span>[m
 <span id="cb16-4"><a href="#cb16-4" aria-hidden="true" tabindex="-1"></a><span class="fu">plot</span>(adm_list[[pos]],</span>[m
[36m@@ -472,7 +469,7 @@[m [mStratigraphic completeness: 34.9 %[m
 <span id="cb16-8"><a href="#cb16-8" aria-hidden="true" tabindex="-1"></a>     <span class="at">lty_destr =</span> <span class="dv">0</span>)       </span>[m
 <span id="cb16-9"><a href="#cb16-9" aria-hidden="true" tabindex="-1"></a><span class="fu">T_axis_lab</span>()              <span class="co"># add time axis label</span></span>[m
 <span id="cb16-10"><a href="#cb16-10" aria-hidden="true" tabindex="-1"></a><span class="fu">L_axis_lab</span>()              <span class="co"># add length axis label</span></span>[m
[31m-<span id="cb16-11"><a href="#cb16-11" aria-hidden="true" tabindex="-1"></a><span class="fu">title</span>(<span class="fu">paste0</span>(<span class="st">"Age-depth model "</span>, pos, <span class="st">" from shore"</span>))</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<span id="cb16-11"><a href="#cb16-11" aria-hidden="true" tabindex="-1"></a><span class="fu">title</span>(<span class="fu">paste0</span>(<span class="st">"Age-depth model "</span>, pos, <span class="st">" from shore"</span>))</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[36m@@ -488,12 +485,12 @@[m [mAge-depth models on the platform have a few long hiatuses that are represented a[m
 </div>[m
 </div>[m
 <div class="callout callout-style-default callout-note callout-titled">[m
[31m-<div class="callout-header d-flex align-content-center collapsed" data-bs-toggle="collapse" data-bs-target=".callout-5-contents" aria-controls="callout-5" aria-expanded="false" aria-label="Toggle callout">[m
[32m+[m[32m<div class="callout-header d-flex align-content-center" data-bs-toggle="collapse" data-bs-target=".callout-5-contents" aria-controls="callout-5" aria-expanded="false" aria-label="Toggle callout">[m
 <div class="callout-icon-container">[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-<span class="screen-reader-only">Note</span>Solution Task 2: Incompleteness across the onshore-offshore gradient[m
[32m+[m[32mSolution Task 2: Incompleteness across the onshore-offshore gradient[m
 </div>[m
 <div class="callout-btn-toggle d-inline-block border-0 py-1 ps-1 pe-0 float-end"><i class="callout-toggle"></i></div>[m
 </div>[m
[36m@@ -502,7 +499,7 @@[m [mAge-depth models on the platform have a few long hiatuses that are represented a[m
 <p>Question:<br>[m
 2. Examine how stratigraphic incompleteness and the number of hiatuses changes along the onshore-offshore gradient.</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb17"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb17-1"><a href="#cb17-1" aria-hidden="true" tabindex="-1"></a>inc <span class="ot">=</span> <span class="fu">rep</span>(<span class="cn">NA</span>, <span class="fu">length</span>(dist))             <span class="co"># storage for incompleteness</span></span>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb17"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb17-1"><a href="#cb17-1" aria-hidden="true" tabindex="-1"></a>inc <span class="ot">=</span> <span class="fu">rep</span>(<span class="cn">NA</span>, <span class="fu">length</span>(dist))             <span class="co"># storage for incompleteness</span></span>[m
 <span id="cb17-2"><a href="#cb17-2" aria-hidden="true" tabindex="-1"></a>nhiat <span class="ot">=</span> <span class="fu">rep</span>(<span class="cn">NA</span>, <span class="fu">length</span>(dist))           <span class="co"># storage for number of hiatuses</span></span>[m
 <span id="cb17-3"><a href="#cb17-3" aria-hidden="true" tabindex="-1"></a><span class="cf">for</span> (i <span class="cf">in</span> <span class="fu">seq_along</span>(dist)){</span>[m
 <span id="cb17-4"><a href="#cb17-4" aria-hidden="true" tabindex="-1"></a>  pos <span class="ot">=</span> dist[i] <span class="co"># position in platform</span></span>[m
[36m@@ -519,7 +516,7 @@[m [mAge-depth models on the platform have a few long hiatuses that are represented a[m
 <span id="cb17-15"><a href="#cb17-15" aria-hidden="true" tabindex="-1"></a>     <span class="at">xlab =</span> <span class="st">"Distance from shore [km]"</span>, </span>[m
 <span id="cb17-16"><a href="#cb17-16" aria-hidden="true" tabindex="-1"></a>     <span class="at">ylab =</span> <span class="st">"Incompleteness [%]"</span>, </span>[m
 <span id="cb17-17"><a href="#cb17-17" aria-hidden="true" tabindex="-1"></a>     <span class="at">type =</span> <span class="st">"l"</span>,</span>[m
[31m-<span id="cb17-18"><a href="#cb17-18" aria-hidden="true" tabindex="-1"></a>     <span class="at">ylim =</span> <span class="fu">c</span>(<span class="dv">0</span>, <span class="dv">100</span>))</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<span id="cb17-18"><a href="#cb17-18" aria-hidden="true" tabindex="-1"></a>     <span class="at">ylim =</span> <span class="fu">c</span>(<span class="dv">0</span>, <span class="dv">100</span>))</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[36m@@ -527,11 +524,11 @@[m [mAge-depth models on the platform have a few long hiatuses that are represented a[m
 </figure>[m
 </div>[m
 </div>[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb18"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb18-1"><a href="#cb18-1" aria-hidden="true" tabindex="-1"></a><span class="fu">plot</span>(p, nhiat, </span>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb18"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb18-1"><a href="#cb18-1" aria-hidden="true" tabindex="-1"></a><span class="fu">plot</span>(p, nhiat, </span>[m
 <span id="cb18-2"><a href="#cb18-2" aria-hidden="true" tabindex="-1"></a>     <span class="at">xlab =</span> <span class="st">"Distance from shore [km]"</span>, </span>[m
 <span id="cb18-3"><a href="#cb18-3" aria-hidden="true" tabindex="-1"></a>     <span class="at">ylab =</span> <span class="st">"# Hiatuses"</span>, </span>[m
 <span id="cb18-4"><a href="#cb18-4" aria-hidden="true" tabindex="-1"></a>     <span class="at">type =</span> <span class="st">"l"</span>,</span>[m
[31m-<span id="cb18-5"><a href="#cb18-5" aria-hidden="true" tabindex="-1"></a>     <span class="at">ylim =</span> <span class="fu">c</span>(<span class="dv">0</span>, <span class="fu">max</span>(nhiat)))</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<span id="cb18-5"><a href="#cb18-5" aria-hidden="true" tabindex="-1"></a>     <span class="at">ylim =</span> <span class="fu">c</span>(<span class="dv">0</span>, <span class="fu">max</span>(nhiat)))</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[36m@@ -547,12 +544,12 @@[m [mAge-depth models on the platform have a few long hiatuses that are represented a[m
 </div>[m
 </div>[m
 <div class="callout callout-style-default callout-note callout-titled">[m
[31m-<div class="callout-header d-flex align-content-center collapsed" data-bs-toggle="collapse" data-bs-target=".callout-6-contents" aria-controls="callout-6" aria-expanded="false" aria-label="Toggle callout">[m
[32m+[m[32m<div class="callout-header d-flex align-content-center" data-bs-toggle="collapse" data-bs-target=".callout-6-contents" aria-controls="callout-6" aria-expanded="false" aria-label="Toggle callout">[m
 <div class="callout-icon-container">[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-<span class="screen-reader-only">Note</span>Solution Task 3: Hiatus duration and water depth[m
[32m+[m[32mSolution Task 3: Hiatus duration and water depth[m
 </div>[m
 <div class="callout-btn-toggle d-inline-block border-0 py-1 ps-1 pe-0 float-end"><i class="callout-toggle"></i></div>[m
 </div>[m
[36m@@ -560,14 +557,14 @@[m [mAge-depth models on the platform have a few long hiatuses that are represented a[m
 <div class="callout-body-container callout-body">[m
 <p>Generate histograms of hiatus durations and plots of water depth at different distances from shore. Do you see any systematic changes?</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb19"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb19-1"><a href="#cb19-1" aria-hidden="true" tabindex="-1"></a>pos <span class="ot">=</span> <span class="st">"2km"</span> <span class="co"># position of adm</span></span>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb19"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb19-1"><a href="#cb19-1" aria-hidden="true" tabindex="-1"></a>pos <span class="ot">=</span> <span class="st">"2km"</span> <span class="co"># position of adm</span></span>[m
 <span id="cb19-2"><a href="#cb19-2" aria-hidden="true" tabindex="-1"></a><span class="fu">stopifnot</span>(pos <span class="sc">%in%</span>  dist) <span class="co"># validity check</span></span>[m
 <span id="cb19-3"><a href="#cb19-3" aria-hidden="true" tabindex="-1"></a></span>[m
 <span id="cb19-4"><a href="#cb19-4" aria-hidden="true" tabindex="-1"></a><span class="fu">plot</span>(scenarioA<span class="sc">$</span>t_myr, scenarioA<span class="sc">$</span>wd_m[,pos],</span>[m
 <span id="cb19-5"><a href="#cb19-5" aria-hidden="true" tabindex="-1"></a>     <span class="at">xlab =</span> <span class="st">"Time [Myr]"</span>,</span>[m
 <span id="cb19-6"><a href="#cb19-6" aria-hidden="true" tabindex="-1"></a>     <span class="at">ylab =</span> <span class="st">"Water depth [m]"</span>,</span>[m
 <span id="cb19-7"><a href="#cb19-7" aria-hidden="true" tabindex="-1"></a>     <span class="at">type =</span> <span class="st">"l"</span>,</span>[m
[31m-<span id="cb19-8"><a href="#cb19-8" aria-hidden="true" tabindex="-1"></a>     <span class="at">main =</span> <span class="fu">paste0</span>(<span class="st">"Water depth "</span>, pos, <span class="st">" from shore"</span>))</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<span id="cb19-8"><a href="#cb19-8" aria-hidden="true" tabindex="-1"></a>     <span class="at">main =</span> <span class="fu">paste0</span>(<span class="st">"Water depth "</span>, pos, <span class="st">" from shore"</span>))</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[36m@@ -575,7 +572,7 @@[m [mAge-depth models on the platform have a few long hiatuses that are represented a[m
 </figure>[m
 </div>[m
 </div>[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb20"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb20-1"><a href="#cb20-1" aria-hidden="true" tabindex="-1"></a>hiatus_durations <span class="ot">&lt;-</span> adm_list[[pos]] <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb20"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb20-1"><a href="#cb20-1" aria-hidden="true" tabindex="-1"></a>hiatus_durations <span class="ot">&lt;-</span> adm_list[[pos]] <span class="sc">|&gt;</span></span>[m
 <span id="cb20-2"><a href="#cb20-2" aria-hidden="true" tabindex="-1"></a>  <span class="fu">get_hiat_duration</span>()</span>[m
 <span id="cb20-3"><a href="#cb20-3" aria-hidden="true" tabindex="-1"></a></span>[m
 <span id="cb20-4"><a href="#cb20-4" aria-hidden="true" tabindex="-1"></a><span class="cf">if</span> (<span class="fu">length</span>(hiatus_durations) <span class="sc">==</span> <span class="dv">0</span>) {</span>[m
[36m@@ -584,7 +581,7 @@[m [mAge-depth models on the platform have a few long hiatuses that are represented a[m
 <span id="cb20-7"><a href="#cb20-7" aria-hidden="true" tabindex="-1"></a></span>[m
 <span id="cb20-8"><a href="#cb20-8" aria-hidden="true" tabindex="-1"></a>hiatus_durations <span class="sc">|&gt;</span></span>[m
 <span id="cb20-9"><a href="#cb20-9" aria-hidden="true" tabindex="-1"></a>  <span class="fu">hist</span>(<span class="at">xlab =</span> <span class="st">"Hiatus duration [Myr]"</span>,</span>[m
[31m-<span id="cb20-10"><a href="#cb20-10" aria-hidden="true" tabindex="-1"></a>       <span class="at">main =</span> <span class="fu">paste0</span>(<span class="st">"Hiatus duration "</span>, pos, <span class="st">" from shore"</span>))</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<span id="cb20-10"><a href="#cb20-10" aria-hidden="true" tabindex="-1"></a>       <span class="at">main =</span> <span class="fu">paste0</span>(<span class="st">"Hiatus duration "</span>, pos, <span class="st">" from shore"</span>))</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[36m@@ -676,14 +673,13 @@[m [mHohmann, Niklas, Joël R. Koelewijn, Peter Burgess, and Emilia Jarochowska. 2024[m
       e.clearSelection();[m
     }[m
     const getTextToCopy = function(trigger) {[m
[31m-      const outerScaffold = trigger.parentElement.cloneNode(true);[m
[31m-      const codeEl = outerScaffold.querySelector('code');[m
[31m-      for (const childEl of codeEl.children) {[m
[31m-        if (isCodeAnnotation(childEl)) {[m
[31m-          childEl.remove();[m
[32m+[m[32m        const codeEl = trigger.previousElementSibling.cloneNode(true);[m
[32m+[m[32m        for (const childEl of codeEl.children) {[m
[32m+[m[32m          if (isCodeAnnotation(childEl)) {[m
[32m+[m[32m            childEl.remove();[m
[32m+[m[32m          }[m
         }[m
[31m-      }[m
[31m-      return codeEl.innerText;[m
[32m+[m[32m        return codeEl.innerText;[m
     }[m
     const clipboard = new window.ClipboardJS('.code-copy-button:not([data-in-quarto-modal])', {[m
       text: getTextToCopy[m
[1mdiff --git a/docs/strat_architecture_files/figure-html/unnamed-chunk-1-1.png b/docs/strat_architecture_files/figure-html/unnamed-chunk-1-1.png[m
[1mindex cb130ec..17f4df1 100644[m
Binary files a/docs/strat_architecture_files/figure-html/unnamed-chunk-1-1.png and b/docs/strat_architecture_files/figure-html/unnamed-chunk-1-1.png differ
[1mdiff --git a/docs/strat_architecture_files/figure-html/unnamed-chunk-10-1.png b/docs/strat_architecture_files/figure-html/unnamed-chunk-10-1.png[m
[1mindex 6252dcb..3ada7b0 100644[m
Binary files a/docs/strat_architecture_files/figure-html/unnamed-chunk-10-1.png and b/docs/strat_architecture_files/figure-html/unnamed-chunk-10-1.png differ
[1mdiff --git a/docs/strat_architecture_files/figure-html/unnamed-chunk-10-2.png b/docs/strat_architecture_files/figure-html/unnamed-chunk-10-2.png[m
[1mindex 1586bac..fef09d3 100644[m
Binary files a/docs/strat_architecture_files/figure-html/unnamed-chunk-10-2.png and b/docs/strat_architecture_files/figure-html/unnamed-chunk-10-2.png differ
[1mdiff --git a/docs/strat_architecture_files/figure-html/unnamed-chunk-11-1.png b/docs/strat_architecture_files/figure-html/unnamed-chunk-11-1.png[m
[1mindex 8164e2c..9b3d4ed 100644[m
Binary files a/docs/strat_architecture_files/figure-html/unnamed-chunk-11-1.png and b/docs/strat_architecture_files/figure-html/unnamed-chunk-11-1.png differ
[1mdiff --git a/docs/strat_architecture_files/figure-html/unnamed-chunk-11-2.png b/docs/strat_architecture_files/figure-html/unnamed-chunk-11-2.png[m
[1mindex b7a7a66..20996c1 100644[m
Binary files a/docs/strat_architecture_files/figure-html/unnamed-chunk-11-2.png and b/docs/strat_architecture_files/figure-html/unnamed-chunk-11-2.png differ
[1mdiff --git a/docs/strat_architecture_files/figure-html/unnamed-chunk-2-1.png b/docs/strat_architecture_files/figure-html/unnamed-chunk-2-1.png[m
[1mindex 4ee9369..4c7af00 100644[m
Binary files a/docs/strat_architecture_files/figure-html/unnamed-chunk-2-1.png and b/docs/strat_architecture_files/figure-html/unnamed-chunk-2-1.png differ
[1mdiff --git a/docs/strat_architecture_files/figure-html/unnamed-chunk-5-1.png b/docs/strat_architecture_files/figure-html/unnamed-chunk-5-1.png[m
[1mindex 98bda6c..9f151cc 100644[m
Binary files a/docs/strat_architecture_files/figure-html/unnamed-chunk-5-1.png and b/docs/strat_architecture_files/figure-html/unnamed-chunk-5-1.png differ
[1mdiff --git a/docs/strat_architecture_files/figure-html/unnamed-chunk-7-1.png b/docs/strat_architecture_files/figure-html/unnamed-chunk-7-1.png[m
[1mindex 5974ee3..fdd13cb 100644[m
Binary files a/docs/strat_architecture_files/figure-html/unnamed-chunk-7-1.png and b/docs/strat_architecture_files/figure-html/unnamed-chunk-7-1.png differ
[1mdiff --git a/docs/strat_architecture_files/figure-html/unnamed-chunk-9-1.png b/docs/strat_architecture_files/figure-html/unnamed-chunk-9-1.png[m
[1mindex 16738da..17cd49f 100644[m
Binary files a/docs/strat_architecture_files/figure-html/unnamed-chunk-9-1.png and b/docs/strat_architecture_files/figure-html/unnamed-chunk-9-1.png differ
[1mdiff --git a/docs/trait_evol.html b/docs/trait_evol.html[m
[1mindex 5b02078..564ac59 100644[m
[1m--- a/docs/trait_evol.html[m
[1m+++ b/docs/trait_evol.html[m
[36m@@ -2,7 +2,7 @@[m
 <html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en"><head>[m
 [m
 <meta charset="utf-8">[m
[31m-<meta name="generator" content="quarto-1.8.25">[m
[32m+[m[32m<meta name="generator" content="quarto-1.7.32">[m
 [m
 <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">[m
 [m
[36m@@ -87,15 +87,14 @@[m [mdiv.csl-indent {[m
 <meta name="quarto:offset" content="./">[m
 <script src="site_libs/quarto-html/quarto.js" type="module"></script>[m
 <script src="site_libs/quarto-html/tabsets/tabsets.js" type="module"></script>[m
[31m-<script src="site_libs/quarto-html/axe/axe-check.js" type="module"></script>[m
 <script src="site_libs/quarto-html/popper.min.js"></script>[m
 <script src="site_libs/quarto-html/tippy.umd.min.js"></script>[m
 <script src="site_libs/quarto-html/anchor.min.js"></script>[m
 <link href="site_libs/quarto-html/tippy.css" rel="stylesheet">[m
[31m-<link href="site_libs/quarto-html/quarto-syntax-highlighting-7b89279ff1a6dce999919e0e67d4d9ec.css" rel="stylesheet" id="quarto-text-highlighting-styles">[m
[32m+[m[32m<link href="site_libs/quarto-html/quarto-syntax-highlighting-37eea08aefeeee20ff55810ff984fec1.css" rel="stylesheet" id="quarto-text-highlighting-styles">[m
 <script src="site_libs/bootstrap/bootstrap.min.js"></script>[m
 <link href="site_libs/bootstrap/bootstrap-icons.css" rel="stylesheet">[m
[31m-<link href="site_libs/bootstrap/bootstrap-0b37c64f34216b628666a8dac638b53b.min.css" rel="stylesheet" append-hash="true" id="quarto-bootstrap" data-mode="light">[m
[32m+[m[32m<link href="site_libs/bootstrap/bootstrap-dfb324f25d9b1687192fa8be62ac8f9c.min.css" rel="stylesheet" append-hash="true" id="quarto-bootstrap" data-mode="light">[m
 <script id="quarto-search-options" type="application/json">{[m
   "location": "navbar",[m
   "copy-button": false,[m
[36m@@ -135,8 +134,6 @@[m [mdiv.csl-indent {[m
     <nav class="navbar navbar-expand-lg " data-bs-theme="dark">[m
       <div class="navbar-container container-fluid">[m
       <div class="navbar-brand-container mx-auto">[m
[31m-    <a href="./index.html" class="navbar-brand navbar-brand-logo">[m
[31m-    </a>[m
     <a class="navbar-brand" href="./index.html">[m
     <span class="navbar-title">Modeling Stratigraphic Paleobiology in R</span>[m
     </a>[m
[36m@@ -191,7 +188,7 @@[m [mdiv.csl-indent {[m
     <h2 id="toc-title">On this page</h2>[m
    [m
   <ul>[m
[31m-  <li><a href="#trait-evolution-in-stratigraphic-context" id="toc-trait-evolution-in-stratigraphic-context" class="nav-link active" data-scroll-target="#trait-evolution-in-stratigraphic-context">Trait evolution in stratigraphic context</a></li>[m
[32m+[m[32m  <li><a href="#trait-evolution-in-stratigraphic-context" id="toc-trait-evolution-in-stratigraphic-context" class="nav-link active" data-scroll-target="#trait-evolution-in-stratigraphic-context">2. Trait evolution in stratigraphic context</a></li>[m
   <li><a href="#introduction" id="toc-introduction" class="nav-link" data-scroll-target="#introduction">Introduction</a></li>[m
   <li><a href="#coding-cheat-sheet" id="toc-coding-cheat-sheet" class="nav-link" data-scroll-target="#coding-cheat-sheet">Coding cheat sheet</a>[m
   <ul class="collapse">[m
[36m@@ -229,10 +226,9 @@[m [mdiv.csl-indent {[m
 <p>ToDo:</p>[m
 <ul>[m
 <li>write Intro</li>[m
[31m-<li>write solution for task 4</li>[m
 </ul>[m
 <section id="trait-evolution-in-stratigraphic-context" class="level2">[m
[31m-<h2 class="anchored" data-anchor-id="trait-evolution-in-stratigraphic-context">Trait evolution in stratigraphic context</h2>[m
[32m+[m[32m<h2 class="anchored" data-anchor-id="trait-evolution-in-stratigraphic-context">2. Trait evolution in stratigraphic context</h2>[m
 <p>This practical explores how trait evolution is influenced by stratigraphic architectures.</p>[m
 </section>[m
 <section id="introduction" class="level2">[m
[36m@@ -244,23 +240,23 @@[m [mdiv.csl-indent {[m
 <h3 class="anchored" data-anchor-id="modes-of-evolution-in-the-time-domain">Modes of evolution in the time domain</h3>[m
 <p>There are three modes of evolution implemented in the <code>StratPal</code> package: <code>stasis</code>, <code>random_walk</code>, and <code>ornstein_uhlenbeck</code>. You can plot them using piping via</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb1"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb1-1"><a href="#cb1-1" aria-hidden="true" tabindex="-1"></a><span class="fu">library</span>(StratPal)</span>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb1"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb1-1"><a href="#cb1-1" aria-hidden="true" tabindex="-1"></a><span class="fu">library</span>(StratPal)</span>[m
 <span id="cb1-2"><a href="#cb1-2" aria-hidden="true" tabindex="-1"></a><span class="fu">library</span>(admtools)</span>[m
 <span id="cb1-3"><a href="#cb1-3" aria-hidden="true" tabindex="-1"></a>pos <span class="ot">=</span> <span class="st">"2km"</span></span>[m
 <span id="cb1-4"><a href="#cb1-4" aria-hidden="true" tabindex="-1"></a>adm <span class="ot">=</span> <span class="fu">tp_to_adm</span>(<span class="at">t =</span> scenarioA<span class="sc">$</span>t_myr,        </span>[m
[31m-<span id="cb1-5"><a href="#cb1-5" aria-hidden="true" tabindex="-1"></a>                             <span class="at">h =</span> scenarioA<span class="sc">$</span>h_m[,pos],</span>[m
[31m-<span id="cb1-6"><a href="#cb1-6" aria-hidden="true" tabindex="-1"></a>                             <span class="at">T_unit =</span> <span class="st">"Myr"</span>,</span>[m
[31m-<span id="cb1-7"><a href="#cb1-7" aria-hidden="true" tabindex="-1"></a>                             <span class="at">L_unit =</span> <span class="st">"m"</span>)</span>[m
[32m+[m[32m<span id="cb1-5"><a href="#cb1-5" aria-hidden="true" tabindex="-1"></a>                <span class="at">h =</span> scenarioA<span class="sc">$</span>h_m[,pos],</span>[m
[32m+[m[32m<span id="cb1-6"><a href="#cb1-6" aria-hidden="true" tabindex="-1"></a>                <span class="at">T_unit =</span> <span class="st">"Myr"</span>,</span>[m
[32m+[m[32m<span id="cb1-7"><a href="#cb1-7" aria-hidden="true" tabindex="-1"></a>                <span class="at">L_unit =</span> <span class="st">"m"</span>)</span>[m
 <span id="cb1-8"><a href="#cb1-8" aria-hidden="true" tabindex="-1"></a>temp_res <span class="ot">=</span> <span class="fl">0.001</span>                                              <span class="co"># temporal resolution in Myr</span></span>[m
 <span id="cb1-9"><a href="#cb1-9" aria-hidden="true" tabindex="-1"></a><span class="fu">seq</span>(<span class="fu">min_time</span>(adm), <span class="fu">max_time</span>(adm), <span class="at">by =</span> temp_res) <span class="sc">|&gt;</span>           <span class="co"># time steps where the trait evolution is simulated</span></span>[m
 <span id="cb1-10"><a href="#cb1-10" aria-hidden="true" tabindex="-1"></a>  <span class="fu">random_walk</span>(<span class="at">sigma =</span> <span class="dv">1</span>, <span class="at">mu =</span> <span class="dv">0</span>, <span class="at">y0 =</span> <span class="dv">0</span>) <span class="sc">|&gt;</span>                   <span class="co"># simulate trait evolution</span></span>[m
 <span id="cb1-11"><a href="#cb1-11" aria-hidden="true" tabindex="-1"></a>  <span class="fu">plot</span>(<span class="at">xlab =</span> <span class="fu">paste0</span>(<span class="st">"Time ["</span>,<span class="fu">get_T_unit</span>(adm),<span class="st">"]"</span>),           <span class="co"># plot</span></span>[m
 <span id="cb1-12"><a href="#cb1-12" aria-hidden="true" tabindex="-1"></a>       <span class="at">ylab =</span> <span class="st">"Trait value"</span>,</span>[m
[31m-<span id="cb1-13"><a href="#cb1-13" aria-hidden="true" tabindex="-1"></a>       <span class="at">type =</span> <span class="st">"l"</span>) </span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<span id="cb1-13"><a href="#cb1-13" aria-hidden="true" tabindex="-1"></a>       <span class="at">type =</span> <span class="st">"l"</span>) </span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[31m-<p><img src="trait_evol_files/figure-html/unnamed-chunk-1-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m<p><img src="trait_evol_files/figure-html/models_evol_time_domain-1.png" class="img-fluid figure-img" width="672"></p>[m
 </figure>[m
 </div>[m
 </div>[m
[36m@@ -271,81 +267,111 @@[m [mdiv.csl-indent {[m
 <h3 class="anchored" data-anchor-id="transforming-trait-evolution-into-the-stratigraphic-domain">Transforming trait evolution into the stratigraphic domain</h3>[m
 <p>To transform trait evolution into the stratigraphic domain, insert <code>time_to_strat</code> with the age-depth model of your choice into your pipeline:</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb2"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb2-1"><a href="#cb2-1" aria-hidden="true" tabindex="-1"></a>temp_res <span class="ot">=</span> <span class="fl">0.001</span>                                              <span class="co"># temporal resolution in Myr</span></span>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb2"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb2-1"><a href="#cb2-1" aria-hidden="true" tabindex="-1"></a>temp_res <span class="ot">=</span> <span class="fl">0.001</span>                                              <span class="co"># temporal resolution in Myr</span></span>[m
 <span id="cb2-2"><a href="#cb2-2" aria-hidden="true" tabindex="-1"></a><span class="fu">seq</span>(<span class="fu">min_time</span>(adm), <span class="fu">max_time</span>(adm), <span class="at">by =</span> temp_res) <span class="sc">|&gt;</span>           <span class="co"># time steps where the trait evolution is simulated</span></span>[m
 <span id="cb2-3"><a href="#cb2-3" aria-hidden="true" tabindex="-1"></a>  <span class="fu">random_walk</span>(<span class="at">sigma =</span> <span class="dv">1</span>, <span class="at">mu =</span> <span class="dv">3</span>, <span class="at">y0 =</span> <span class="dv">0</span>) <span class="sc">|&gt;</span>                   <span class="co"># simulate trait evolution</span></span>[m
 <span id="cb2-4"><a href="#cb2-4" aria-hidden="true" tabindex="-1"></a>  <span class="fu">time_to_strat</span>(adm, <span class="at">destructive =</span> <span class="cn">FALSE</span>) <span class="sc">|&gt;</span>                  <span class="co"># transform into stratigraphic domain</span></span>[m
[31m-<span id="cb2-5"><a href="#cb2-5" aria-hidden="true" tabindex="-1"></a>  <span class="fu">plot</span>(<span class="at">xlab =</span> <span class="fu">paste0</span>(<span class="st">"Stratigraphic position ["</span>,<span class="fu">get_L_unit</span>(adm),<span class="st">"]"</span>), <span class="co"># plot</span></span>[m
[31m-<span id="cb2-6"><a href="#cb2-6" aria-hidden="true" tabindex="-1"></a>       <span class="at">ylab =</span> <span class="st">"Trait value"</span>,</span>[m
[32m+[m[32m<span id="cb2-5"><a href="#cb2-5" aria-hidden="true" tabindex="-1"></a>  <span class="fu">plot</span>(<span class="at">ylab =</span> <span class="fu">paste0</span>(<span class="st">"Stratigraphic position ["</span>,<span class="fu">get_L_unit</span>(adm),<span class="st">"]"</span>), <span class="co"># plot</span></span>[m
[32m+[m[32m<span id="cb2-6"><a href="#cb2-6" aria-hidden="true" tabindex="-1"></a>       <span class="at">xlab =</span> <span class="st">"Trait value"</span>,</span>[m
 <span id="cb2-7"><a href="#cb2-7" aria-hidden="true" tabindex="-1"></a>       <span class="at">type =</span> <span class="st">"l"</span>,</span>[m
[31m-<span id="cb2-8"><a href="#cb2-8" aria-hidden="true" tabindex="-1"></a>       <span class="at">orientation =</span> <span class="st">"lr"</span>) </span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<span id="cb2-8"><a href="#cb2-8" aria-hidden="true" tabindex="-1"></a>       <span class="at">orientation =</span> <span class="st">"du"</span>) </span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[31m-<p><img src="trait_evol_files/figure-html/unnamed-chunk-2-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m<p><img src="trait_evol_files/figure-html/models_evol_strat_domain-1.png" class="img-fluid figure-img" width="672"></p>[m
 </figure>[m
 </div>[m
 </div>[m
 </div>[m
[31m-<p>This will transform your simulations from the time domain into the stratigraphic domain.</p>[m
[32m+[m[32m<p>This will transform your simulations from the time domain into the stratigraphic domain. We use the plotting option <code>orientation = "du"</code> to plot stratigraphic height on the y axis. Use <code>"lr"</code> to plot it on the x axis.</p>[m
 </section>[m
 <section id="model-selection-using-the-paleots-package" class="level3">[m
 <h3 class="anchored" data-anchor-id="model-selection-using-the-paleots-package">Model selection using the paleoTS package</h3>[m
[31m-<p>To work with model selection, we need to simulate traits of individuals, not just means of populations. This is indicated by using the suffix <code>_sl</code> (for “specimen level”) in the simulation.</p>[m
[32m+[m[32m<p>To work with model selection, we need to simulate traits of individuals, not just means of populations as we did above. This is indicated by using the suffix <code>_sl</code> (for “specimen level”) in the simulation.</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb3"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb3-1"><a href="#cb3-1" aria-hidden="true" tabindex="-1"></a><span class="fu">library</span>(paleoTS)</span>[m
[31m-<span id="cb3-2"><a href="#cb3-2" aria-hidden="true" tabindex="-1"></a>temp_res <span class="ot">=</span> <span class="fl">0.001</span>                                              <span class="co"># temporal resolution in Myr</span></span>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb3"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb3-1"><a href="#cb3-1" aria-hidden="true" tabindex="-1"></a><span class="fu">library</span>(paleoTS) <span class="co"># load paleoTS package for model selection &amp; plotting</span></span>[m
[32m+[m[32m<span id="cb3-2"><a href="#cb3-2" aria-hidden="true" tabindex="-1"></a>temp_res <span class="ot">=</span> <span class="fl">0.1</span>                                             <span class="co"># temporal resolution in Myr</span></span>[m
 <span id="cb3-3"><a href="#cb3-3" aria-hidden="true" tabindex="-1"></a><span class="fu">seq</span>(<span class="fu">min_time</span>(adm), <span class="fu">max_time</span>(adm), <span class="at">by =</span> temp_res) <span class="sc">|&gt;</span>           <span class="co"># time steps where the trait evolution is simulated</span></span>[m
[31m-<span id="cb3-4"><a href="#cb3-4" aria-hidden="true" tabindex="-1"></a>  <span class="fu">random_walk_sl</span>(<span class="at">sigma =</span> <span class="dv">1</span>, <span class="at">mu =</span> <span class="dv">3</span>, <span class="at">y0 =</span> <span class="dv">0</span>) <span class="sc">|&gt;</span>                   <span class="co"># simulate trait evolution</span></span>[m
[32m+[m[32m<span id="cb3-4"><a href="#cb3-4" aria-hidden="true" tabindex="-1"></a>  <span class="fu">random_walk_sl</span>(<span class="at">sigma =</span> <span class="dv">1</span>, <span class="at">mu =</span> <span class="dv">3</span>, <span class="at">y0 =</span> <span class="dv">0</span>, <span class="at">intrapop_var =</span> <span class="dv">1</span>, <span class="at">n_per_sample =</span> <span class="dv">5</span>) <span class="sc">|&gt;</span>                   <span class="co"># simulate trait evolution</span></span>[m
 <span id="cb3-5"><a href="#cb3-5" aria-hidden="true" tabindex="-1"></a>  <span class="fu">time_to_strat</span>(adm, <span class="at">destructive =</span> <span class="cn">FALSE</span>) <span class="sc">|&gt;</span> </span>[m
[31m-<span id="cb3-6"><a href="#cb3-6" aria-hidden="true" tabindex="-1"></a>   <span class="fu">reduce_to_paleoTS</span>() <span class="sc">|&gt;</span><span class="co"># transform into stratigraphic domain</span></span>[m
[32m+[m[32m<span id="cb3-6"><a href="#cb3-6" aria-hidden="true" tabindex="-1"></a>  <span class="fu">reduce_to_paleoTS</span>() <span class="sc">|&gt;</span><span class="co"># transform into stratigraphic domain</span></span>[m
 <span id="cb3-7"><a href="#cb3-7" aria-hidden="true" tabindex="-1"></a>  <span class="fu">plot</span>(<span class="at">xlab =</span> <span class="fu">paste0</span>(<span class="st">"Stratigraphic position ["</span>,<span class="fu">get_L_unit</span>(adm),<span class="st">"]"</span>), <span class="co"># plot</span></span>[m
[31m-<span id="cb3-8"><a href="#cb3-8" aria-hidden="true" tabindex="-1"></a>       <span class="at">ylab =</span> <span class="st">"Trait value"</span>) </span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<span id="cb3-8"><a href="#cb3-8" aria-hidden="true" tabindex="-1"></a>       <span class="at">ylab =</span> <span class="st">"Trait value"</span>) </span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[31m-<p><img src="trait_evol_files/figure-html/unnamed-chunk-3-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m<p><img src="trait_evol_files/figure-html/paleoTS_sim-1.png" class="img-fluid figure-img" width="672"></p>[m
 </figure>[m
 </div>[m
 </div>[m
 </div>[m
[31m-<p>see <code>?reduce_to_paleoTS</code> for details. We can then directly pass the results to the model selection options available in paleoTS:</p>[m
[32m+[m[32m<p>We use <code>reduce_to_paleoTS</code> to convert the specimen level simulations from <code>StratPal</code> to the sample level summaries used by <code>paleoTS</code>, see <code>?reduce_to_paleoTS</code> for details. We can then directly pass the results to the model selection options available in paleoTS (<code>fit3models</code>, <code>fit4models</code> and <code>fit9models</code>, see <code>paleoTS</code> for details):</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb4"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb4-1"><a href="#cb4-1" aria-hidden="true" tabindex="-1"></a>temp_res <span class="ot">=</span> <span class="fl">0.01</span>                                              <span class="co"># temporal resolution in Myr</span></span>[m
[31m-<span id="cb4-2"><a href="#cb4-2" aria-hidden="true" tabindex="-1"></a><span class="fu">seq</span>(<span class="fu">min_time</span>(adm), <span class="fu">max_time</span>(adm), <span class="at">by =</span> temp_res) <span class="sc">|&gt;</span>           <span class="co"># time steps where the trait evolution is simulated</span></span>[m
[31m-<span id="cb4-3"><a href="#cb4-3" aria-hidden="true" tabindex="-1"></a>  <span class="fu">random_walk_sl</span>(<span class="at">sigma =</span> <span class="dv">1</span>, <span class="at">mu =</span> <span class="dv">3</span>, <span class="at">y0 =</span> <span class="dv">0</span>) <span class="sc">|&gt;</span>                   <span class="co"># simulate trait evolution</span></span>[m
[31m-<span id="cb4-4"><a href="#cb4-4" aria-hidden="true" tabindex="-1"></a>  <span class="fu">time_to_strat</span>(adm, <span class="at">destructive =</span> <span class="cn">FALSE</span>) <span class="sc">|&gt;</span> </span>[m
[31m-<span id="cb4-5"><a href="#cb4-5" aria-hidden="true" tabindex="-1"></a>   <span class="fu">reduce_to_paleoTS</span>() <span class="sc">|&gt;</span></span>[m
[31m-<span id="cb4-6"><a href="#cb4-6" aria-hidden="true" tabindex="-1"></a>  <span class="fu">fit4models</span>()</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb4"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb4-1"><a href="#cb4-1" aria-hidden="true" tabindex="-1"></a>temp_res <span class="ot">=</span> <span class="fl">0.1</span>                                              <span class="co"># temporal resolution in Myr</span></span>[m
[32m+[m[32m<span id="cb4-2"><a href="#cb4-2" aria-hidden="true" tabindex="-1"></a>intrapop_var <span class="ot">=</span> <span class="dv">1</span> <span class="co"># trait variance per sampling location/ fossil assemblage</span></span>[m
[32m+[m[32m<span id="cb4-3"><a href="#cb4-3" aria-hidden="true" tabindex="-1"></a>n_per_sample <span class="ot">=</span> <span class="dv">5</span> <span class="co"># number of fossils found per sampling location / fossil assemblage</span></span>[m
[32m+[m[32m<span id="cb4-4"><a href="#cb4-4" aria-hidden="true" tabindex="-1"></a></span>[m
[32m+[m[32m<span id="cb4-5"><a href="#cb4-5" aria-hidden="true" tabindex="-1"></a><span class="fu">seq</span>(<span class="fu">min_time</span>(adm), <span class="fu">max_time</span>(adm), <span class="at">by =</span> temp_res) <span class="sc">|&gt;</span>           <span class="co"># time steps where the trait evolution is simulated</span></span>[m
[32m+[m[32m<span id="cb4-6"><a href="#cb4-6" aria-hidden="true" tabindex="-1"></a>  <span class="fu">random_walk_sl</span>(<span class="at">sigma =</span> <span class="dv">1</span>, <span class="at">mu =</span> <span class="dv">3</span>, <span class="at">y0 =</span> <span class="dv">0</span>, <span class="at">intrapop_var =</span> intrapop_var, <span class="at">n_per_sample =</span> n_per_sample) <span class="sc">|&gt;</span>                   <span class="co"># simulate trait evolution</span></span>[m
[32m+[m[32m<span id="cb4-7"><a href="#cb4-7" aria-hidden="true" tabindex="-1"></a>  <span class="fu">time_to_strat</span>(adm, <span class="at">destructive =</span> <span class="cn">FALSE</span>) <span class="sc">|&gt;</span> </span>[m
[32m+[m[32m<span id="cb4-8"><a href="#cb4-8" aria-hidden="true" tabindex="-1"></a>  <span class="fu">reduce_to_paleoTS</span>() <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb4-9"><a href="#cb4-9" aria-hidden="true" tabindex="-1"></a>  <span class="fu">fit9models</span>()</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output cell-output-stderr">[m
 <pre><code>Warning in[m
[31m-fit4models(reduce_to_paleoTS(time_to_strat(random_walk_sl(seq(min_time(adm), :[m
[32m+[m[32mfit9models(reduce_to_paleoTS(time_to_strat(random_walk_sl(seq(min_time(adm), :[m
 Sample variances not equal (P = 0 ); consider using argument pool=FALSE</code></pre>[m
 </div>[m
 <div class="cell-output cell-output-stdout">[m
[31m-<pre><code>[m
[31m-Comparing 4 models [n = 201, method = Joint][m
[32m+[m[32m<pre><code>Fitting simple models...[m
[32m+[m[32mFitting punctuational model...</code></pre>[m
[32m+[m[32m</div>[m
[32m+[m[32m<div class="cell-output cell-output-stderr">[m
[32m+[m[32m<pre><code>Warning in fitGpunc(y, ng = 2, method = method, silent = silent, ...): Sample[m
[32m+[m[32mvariances not equal (P = 0 ); consider using argument pool=FALSE</code></pre>[m
[32m+[m[32m</div>[m
[32m+[m[32m<div class="cell-output cell-output-stdout">[m
[32m+[m[32m<pre><code>Total # hypotheses:  8[m[41m [m
[32m+[m[32m1  2  3  4  5  6  7  8[m[41m  [m
[32m+[m[32mFitting Stasis-URW model...[m
[32m+[m[32mTotal # hypotheses:  8[m[41m [m
[32m+[m[32m1  2  3  4  5  6  7  8[m[41m  [m
[32m+[m[32mFitting Stasis-GRW model...[m
[32m+[m[32mTotal # hypotheses:  8[m[41m [m
[32m+[m[32m1  2  3  4  5  6  7  8[m[41m  [m
[32m+[m[32mFitting URW-Stasis model...[m
[32m+[m[32mTotal # hypotheses:  8[m[41m [m
[32m+[m[32m1  2  3  4  5  6  7  8[m[41m  [m
[32m+[m[32mFitting GRW-Stasis model...[m
[32m+[m[32mTotal # hypotheses:  8[m[41m [m
[32m+[m[32m1  2  3  4  5  6  7  8[m[41m  [m
 [m
[31m-                   logL K      AICc       dAICc Akaike.wt[m
[31m-GRW           -220.1850 3  446.4919    0.000000     0.957[m
[31m-URW           -224.3133 2  452.6872    6.195254     0.043[m
[31m-Stasis        -432.5207 2  869.1021  422.610171     0.000[m
[31m-StrictStasis -4191.1228 1 8384.2658 7937.773865     0.000</code></pre>[m
[32m+[m[32mComparing 9 models [n = 21, method = Joint][m
[32m+[m
[32m+[m[32m                  logL K      AICc      dAICc Akaike.wt[m
[32m+[m[32mStrictStasis -78.60809 1 159.42670 109.426312     0.000[m
[32m+[m[32mStasis       -36.23362 2  77.13390  27.133515     0.000[m
[32m+[m[32mURW          -27.07711 2  58.82089   8.820506     0.010[m
[32m+[m[32mGRW          -21.29431 3  50.00039   0.000000     0.852[m
[32m+[m[32mPunc-1       -25.46308 4  61.42616  11.425774     0.003[m
[32m+[m[32mStasis-URW   -26.76681 4  64.03362  14.033238     0.001[m
[32m+[m[32mStasis-GRW   -22.76502 5  59.53004   9.529656     0.007[m
[32m+[m[32mURW-Stasis   -21.24906 5  56.49812   6.497731     0.033[m
[32m+[m[32mGRW-Stasis   -18.20342 6  54.40684   4.406459     0.094</code></pre>[m
 </div>[m
 </div>[m
[31m-<p>See <code>?fit4models</code> to understand the output; more information can be found in <span class="citation" data-cites="hunt2006">(<a href="#ref-hunt2006" role="doc-biblioref">Hunt and G. 2006</a>)</span>.</p>[m
[32m+[m[32m<p>See <code>?fit4models</code> to understand the output and <code>fitSimple</code> to fit more specialized models; more information can be found in <span class="citation" data-cites="hunt2006">(<a href="#ref-hunt2006" role="doc-biblioref">Hunt and G. 2006</a>)</span>.</p>[m
 </section>[m
 </section>[m
 <section id="tasks" class="level2">[m
 <h2 class="anchored" data-anchor-id="tasks">Tasks</h2>[m
[31m-<p>You can also solve the first two tasks interactively using <a href="https://utrecht-university.shinyapps.io/DarwinCAT/">DarwinCAT</a>.</p>[m
[32m+[m[32m<p>You can solve the first two tasks interactively using <a href="https://utrecht-university.shinyapps.io/DarwinCAT/">DarwinCAT</a>.</p>[m
 <div class="callout callout-style-default callout-important callout-titled">[m
 <div class="callout-header d-flex align-content-center">[m
 <div class="callout-icon-container">[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-<span class="screen-reader-only">Important</span>Task 1: Trait evolution in the time domain[m
[32m+[m[32mTask 2.1: Trait evolution in the time domain[m
 </div>[m
 </div>[m
 <div class="callout-body-container callout-body">[m
[36m@@ -360,7 +386,7 @@[m [mWhat is the biological meaning of the model parameters?</p>[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-<span class="screen-reader-only">Important</span>Task 2: Stratigraphic effects on trait evolution[m
[32m+[m[32mTask 2.2: Stratigraphic effects on trait evolution[m
 </div>[m
 </div>[m
 <div class="callout-body-container callout-body">[m
[36m@@ -375,7 +401,7 @@[m [mDo you see any systematic changes?</p>[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-<span class="screen-reader-only">Important</span>Task 3: Model selection in the stratigraphic domain[m
[32m+[m[32mTask 2.3: Model selection in the stratigraphic domain[m
 </div>[m
 </div>[m
 <div class="callout-body-container callout-body">[m
[36m@@ -388,63 +414,60 @@[m [mDo you see any systematic changes?</p>[m
 <h2 class="anchored" data-anchor-id="solutions">Solutions</h2>[m
 <p>You can also explore this topic interactively using <a href="https://utrecht-university.shinyapps.io/DarwinCAT/">DarwinCAT</a>.</p>[m
 <div class="callout callout-style-default callout-note callout-titled">[m
[31m-<div class="callout-header d-flex align-content-center collapsed" data-bs-toggle="collapse" data-bs-target=".callout-4-contents" aria-controls="callout-4" aria-expanded="false" aria-label="Toggle callout">[m
[32m+[m[32m<div class="callout-header d-flex align-content-center" data-bs-toggle="collapse" data-bs-target=".callout-4-contents" aria-controls="callout-4" aria-expanded="false" aria-label="Toggle callout">[m
 <div class="callout-icon-container">[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-<span class="screen-reader-only">Note</span>Solution Task 1: Trait evolution in the time domain[m
[32m+[m[32mSolution Task 2.1: Trait evolution in the time domain[m
 </div>[m
 <div class="callout-btn-toggle d-inline-block border-0 py-1 ps-1 pe-0 float-end"><i class="callout-toggle"></i></div>[m
 </div>[m
 <div id="callout-4" class="callout-4-contents callout-collapse collapse">[m
 <div class="callout-body-container callout-body">[m
[31m-<ol type="1">[m
[31m-<li><p>Plot the different modes of evolution in the time domain.</p>[m
[31m-<ul>[m
[31m-<li>What is their internal variation due to randomness (i.e., how much do results differ if you plot them multiple times)?<br>[m
[31m-</li>[m
[31m-<li>What is the biological meaning of the model parameters?</li>[m
[31m-</ul></li>[m
[31m-</ol>[m
[32m+[m[32m<p>Plot the different modes of evolution in the time domain.</p>[m
[32m+[m[32m<p>What is their internal variation due to randomness (i.e., how much do results differ if you plot them multiple times)?<br>[m
[32m+[m[32mWhat is the biological meaning of the model parameters?</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb7"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb7-1"><a href="#cb7-1" aria-hidden="true" tabindex="-1"></a>min_t <span class="ot">=</span> <span class="dv">0</span>       <span class="co"># beginning observation [Myr]</span></span>[m
[31m-<span id="cb7-2"><a href="#cb7-2" aria-hidden="true" tabindex="-1"></a>max_t <span class="ot">=</span> <span class="dv">2</span>       <span class="co"># end observation [Myr]</span></span>[m
[31m-<span id="cb7-3"><a href="#cb7-3" aria-hidden="true" tabindex="-1"></a>t_step <span class="ot">=</span> <span class="fl">0.01</span>   <span class="co"># temporal resolution [Myr]</span></span>[m
[31m-<span id="cb7-4"><a href="#cb7-4" aria-hidden="true" tabindex="-1"></a>mean <span class="ot">=</span> <span class="dv">1</span>        <span class="co"># model parameter, to modify</span></span>[m
[31m-<span id="cb7-5"><a href="#cb7-5" aria-hidden="true" tabindex="-1"></a>sd <span class="ot">=</span> <span class="dv">1</span>          <span class="co"># model parameter, to modify</span></span>[m
[31m-<span id="cb7-6"><a href="#cb7-6" aria-hidden="true" tabindex="-1"></a><span class="fu">seq</span>(<span class="at">from =</span> min_t, <span class="at">to =</span> max_t, <span class="at">by =</span> t_step) <span class="sc">|&gt;</span></span>[m
[31m-<span id="cb7-7"><a href="#cb7-7" aria-hidden="true" tabindex="-1"></a>  <span class="fu">stasis</span>(<span class="at">mean =</span> mean, <span class="at">sd =</span> sd) <span class="sc">|&gt;</span></span>[m
[31m-<span id="cb7-8"><a href="#cb7-8" aria-hidden="true" tabindex="-1"></a>  <span class="fu">plot</span>(<span class="at">type =</span> <span class="st">"l"</span>,</span>[m
[31m-<span id="cb7-9"><a href="#cb7-9" aria-hidden="true" tabindex="-1"></a>       <span class="at">xlab =</span> <span class="st">"Time [Myr]"</span>,</span>[m
[31m-<span id="cb7-10"><a href="#cb7-10" aria-hidden="true" tabindex="-1"></a>       <span class="at">ylab =</span> <span class="st">"Trait value"</span>,</span>[m
[31m-<span id="cb7-11"><a href="#cb7-11" aria-hidden="true" tabindex="-1"></a>       <span class="at">main =</span> <span class="st">"Trait evolution: Stasis"</span>)</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb9"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb9-1"><a href="#cb9-1" aria-hidden="true" tabindex="-1"></a><span class="co"># Stasis</span></span>[m
[32m+[m[32m<span id="cb9-2"><a href="#cb9-2" aria-hidden="true" tabindex="-1"></a>min_t <span class="ot">=</span> <span class="dv">0</span>       <span class="co"># beginning observation [Myr]</span></span>[m
[32m+[m[32m<span id="cb9-3"><a href="#cb9-3" aria-hidden="true" tabindex="-1"></a>max_t <span class="ot">=</span> <span class="dv">2</span>       <span class="co"># end observation [Myr]</span></span>[m
[32m+[m[32m<span id="cb9-4"><a href="#cb9-4" aria-hidden="true" tabindex="-1"></a>t_step <span class="ot">=</span> <span class="fl">0.01</span>   <span class="co"># temporal resolution [Myr]</span></span>[m
[32m+[m[32m<span id="cb9-5"><a href="#cb9-5" aria-hidden="true" tabindex="-1"></a>mean <span class="ot">=</span> <span class="dv">1</span>        <span class="co"># model parameter, to modify</span></span>[m
[32m+[m[32m<span id="cb9-6"><a href="#cb9-6" aria-hidden="true" tabindex="-1"></a>sd <span class="ot">=</span> <span class="dv">1</span>          <span class="co"># model parameter, to modify</span></span>[m
[32m+[m[32m<span id="cb9-7"><a href="#cb9-7" aria-hidden="true" tabindex="-1"></a><span class="fu">seq</span>(<span class="at">from =</span> min_t, <span class="at">to =</span> max_t, <span class="at">by =</span> t_step) <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb9-8"><a href="#cb9-8" aria-hidden="true" tabindex="-1"></a>  <span class="fu">stasis</span>(<span class="at">mean =</span> mean, <span class="at">sd =</span> sd) <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb9-9"><a href="#cb9-9" aria-hidden="true" tabindex="-1"></a>  <span class="fu">plot</span>(<span class="at">type =</span> <span class="st">"l"</span>,</span>[m
[32m+[m[32m<span id="cb9-10"><a href="#cb9-10" aria-hidden="true" tabindex="-1"></a>       <span class="at">xlab =</span> <span class="st">"Time [Myr]"</span>,</span>[m
[32m+[m[32m<span id="cb9-11"><a href="#cb9-11" aria-hidden="true" tabindex="-1"></a>       <span class="at">ylab =</span> <span class="st">"Trait value"</span>,</span>[m
[32m+[m[32m<span id="cb9-12"><a href="#cb9-12" aria-hidden="true" tabindex="-1"></a>       <span class="at">main =</span> <span class="st">"Trait evolution: Stasis"</span>)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[31m-<p><img src="trait_evol_files/figure-html/unnamed-chunk-5-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m<p><img src="trait_evol_files/figure-html/task_2_1_solution_stasis-1.png" class="img-fluid figure-img" width="672"></p>[m
 </figure>[m
 </div>[m
 </div>[m
 </div>[m
 <p>For stasis, the <code>mean</code> parameter determines the mean trait value, and the <code>sd</code> (standard deviation) parameter determines the spread of trait values. Trait values at individual times are uncorrelated, so if the temporal resolution is increased, trait evolution appears more irregular.</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb8"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb8-1"><a href="#cb8-1" aria-hidden="true" tabindex="-1"></a>min_t <span class="ot">=</span> <span class="dv">0</span>      <span class="co"># beginning observation [Myr]</span></span>[m
[31m-<span id="cb8-2"><a href="#cb8-2" aria-hidden="true" tabindex="-1"></a>max_t <span class="ot">=</span> <span class="dv">2</span>      <span class="co"># end observation [Myr]</span></span>[m
[31m-<span id="cb8-3"><a href="#cb8-3" aria-hidden="true" tabindex="-1"></a>t_step <span class="ot">=</span> <span class="fl">0.01</span>  <span class="co"># temporal resolution [Myr]</span></span>[m
[31m-<span id="cb8-4"><a href="#cb8-4" aria-hidden="true" tabindex="-1"></a>sigma <span class="ot">=</span> <span class="dv">1</span>      <span class="co"># model parameter, to modify</span></span>[m
[31m-<span id="cb8-5"><a href="#cb8-5" aria-hidden="true" tabindex="-1"></a>mu <span class="ot">=</span> <span class="dv">1</span>         <span class="co"># model parameter, to modify</span></span>[m
[31m-<span id="cb8-6"><a href="#cb8-6" aria-hidden="true" tabindex="-1"></a>y0 <span class="ot">=</span> <span class="dv">1</span>         <span class="co"># model parameter, to modify</span></span>[m
[31m-<span id="cb8-7"><a href="#cb8-7" aria-hidden="true" tabindex="-1"></a><span class="fu">seq</span>(<span class="at">from =</span> min_t, <span class="at">to =</span> max_t, <span class="at">by =</span> t_step) <span class="sc">|&gt;</span></span>[m
[31m-<span id="cb8-8"><a href="#cb8-8" aria-hidden="true" tabindex="-1"></a>  <span class="fu">random_walk</span>(<span class="at">sigma =</span> sigma, <span class="at">mu =</span> mu, <span class="at">y0 =</span> y0) <span class="sc">|&gt;</span></span>[m
[31m-<span id="cb8-9"><a href="#cb8-9" aria-hidden="true" tabindex="-1"></a>  <span class="fu">plot</span>(<span class="at">type =</span> <span class="st">"l"</span>,</span>[m
[31m-<span id="cb8-10"><a href="#cb8-10" aria-hidden="true" tabindex="-1"></a>       <span class="at">xlab =</span> <span class="st">"Time [Myr]"</span>,</span>[m
[31m-<span id="cb8-11"><a href="#cb8-11" aria-hidden="true" tabindex="-1"></a>       <span class="at">ylab =</span> <span class="st">"Trait value"</span>,</span>[m
[31m-<span id="cb8-12"><a href="#cb8-12" aria-hidden="true" tabindex="-1"></a>       <span class="at">main =</span> <span class="st">"Trait evolution: Random walk"</span>)</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb10"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb10-1"><a href="#cb10-1" aria-hidden="true" tabindex="-1"></a><span class="co"># Random walk</span></span>[m
[32m+[m[32m<span id="cb10-2"><a href="#cb10-2" aria-hidden="true" tabindex="-1"></a>min_t <span class="ot">=</span> <span class="dv">0</span>      <span class="co"># beginning observation [Myr]</span></span>[m
[32m+[m[32m<span id="cb10-3"><a href="#cb10-3" aria-hidden="true" tabindex="-1"></a>max_t <span class="ot">=</span> <span class="dv">2</span>      <span class="co"># end observation [Myr]</span></span>[m
[32m+[m[32m<span id="cb10-4"><a href="#cb10-4" aria-hidden="true" tabindex="-1"></a>t_step <span class="ot">=</span> <span class="fl">0.01</span>  <span class="co"># temporal resolution [Myr]</span></span>[m
[32m+[m[32m<span id="cb10-5"><a href="#cb10-5" aria-hidden="true" tabindex="-1"></a>sigma <span class="ot">=</span> <span class="dv">1</span>      <span class="co"># model parameter, to modify</span></span>[m
[32m+[m[32m<span id="cb10-6"><a href="#cb10-6" aria-hidden="true" tabindex="-1"></a>mu <span class="ot">=</span> <span class="dv">1</span>         <span class="co"># model parameter, to modify</span></span>[m
[32m+[m[32m<span id="cb10-7"><a href="#cb10-7" aria-hidden="true" tabindex="-1"></a>y0 <span class="ot">=</span> <span class="dv">1</span>         <span class="co"># model parameter, to modify</span></span>[m
[32m+[m[32m<span id="cb10-8"><a href="#cb10-8" aria-hidden="true" tabindex="-1"></a><span class="fu">seq</span>(<span class="at">from =</span> min_t, <span class="at">to =</span> max_t, <span class="at">by =</span> t_step) <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb10-9"><a href="#cb10-9" aria-hidden="true" tabindex="-1"></a>  <span class="fu">random_walk</span>(<span class="at">sigma =</span> sigma, <span class="at">mu =</span> mu, <span class="at">y0 =</span> y0) <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb10-10"><a href="#cb10-10" aria-hidden="true" tabindex="-1"></a>  <span class="fu">plot</span>(<span class="at">type =</span> <span class="st">"l"</span>,</span>[m
[32m+[m[32m<span id="cb10-11"><a href="#cb10-11" aria-hidden="true" tabindex="-1"></a>       <span class="at">xlab =</span> <span class="st">"Time [Myr]"</span>,</span>[m
[32m+[m[32m<span id="cb10-12"><a href="#cb10-12" aria-hidden="true" tabindex="-1"></a>       <span class="at">ylab =</span> <span class="st">"Trait value"</span>,</span>[m
[32m+[m[32m<span id="cb10-13"><a href="#cb10-13" aria-hidden="true" tabindex="-1"></a>       <span class="at">main =</span> <span class="st">"Trait evolution: Random walk"</span>)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[31m-<p><img src="trait_evol_files/figure-html/unnamed-chunk-6-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m<p><img src="trait_evol_files/figure-html/task_2_1_solution_random_walk-1.png" class="img-fluid figure-img" width="672"></p>[m
 </figure>[m
 </div>[m
 </div>[m
[36m@@ -452,23 +475,24 @@[m [mDo you see any systematic changes?</p>[m
 <p>For the random walk model, the <code>y0</code> parameter determines the initial trait value. The parameter <code>mu</code> determines the directionality, with positive (negative) values leading to increasing (decreasing) trait values with time. The <code>sigma</code> parameter determines the amount of randomness in the system, with larger values reflecting more randomness. Internal variability is high for larger values of <code>sigma</code>, meaning individual lineages simulated will differ a lot from each other.<br>[m
 Important endmembers are: <code>sigma</code> set to 0, trait evolution is purely deterministic and specified by <code>mu</code> and <code>y0</code>. If <code>mu</code> and <code>y0</code> are set to 0, trait evolution follows an unbiased random walk model. If <code>sigma</code> is set to 1, the model corresponds to a Brownian motion. For low values of <code>sigma</code> and <code>mu</code>, the random walk can be mistaken for stasis.</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb9"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb9-1"><a href="#cb9-1" aria-hidden="true" tabindex="-1"></a>min_t <span class="ot">=</span> <span class="dv">0</span>      <span class="co"># beginning observation [Myr]</span></span>[m
[31m-<span id="cb9-2"><a href="#cb9-2" aria-hidden="true" tabindex="-1"></a>max_t <span class="ot">=</span> <span class="dv">2</span>      <span class="co"># end observation [Myr]</span></span>[m
[31m-<span id="cb9-3"><a href="#cb9-3" aria-hidden="true" tabindex="-1"></a>t_step <span class="ot">=</span> <span class="fl">0.01</span>  <span class="co"># temporal resolution [Myr]</span></span>[m
[31m-<span id="cb9-4"><a href="#cb9-4" aria-hidden="true" tabindex="-1"></a>theta <span class="ot">=</span> <span class="dv">1</span>      <span class="co"># model parameter, to modify</span></span>[m
[31m-<span id="cb9-5"><a href="#cb9-5" aria-hidden="true" tabindex="-1"></a>sigma <span class="ot">=</span> <span class="fl">0.1</span>    <span class="co"># model parameter, to modify</span></span>[m
[31m-<span id="cb9-6"><a href="#cb9-6" aria-hidden="true" tabindex="-1"></a>mu <span class="ot">=</span> <span class="dv">0</span>         <span class="co"># model parameter, to modify</span></span>[m
[31m-<span id="cb9-7"><a href="#cb9-7" aria-hidden="true" tabindex="-1"></a>y0 <span class="ot">=</span> <span class="dv">1</span>         <span class="co"># model parameter, to modify</span></span>[m
[31m-<span id="cb9-8"><a href="#cb9-8" aria-hidden="true" tabindex="-1"></a><span class="fu">seq</span>(<span class="at">from =</span> min_t, <span class="at">to =</span> max_t, <span class="at">by =</span> t_step) <span class="sc">|&gt;</span></span>[m
[31m-<span id="cb9-9"><a href="#cb9-9" aria-hidden="true" tabindex="-1"></a>  <span class="fu">ornstein_uhlenbeck</span>(<span class="at">mu =</span> mu, <span class="at">theta =</span> theta, <span class="at">sigma =</span> sigma, <span class="at">y0 =</span> y0) <span class="sc">|&gt;</span></span>[m
[31m-<span id="cb9-10"><a href="#cb9-10" aria-hidden="true" tabindex="-1"></a>  <span class="fu">plot</span>(<span class="at">type =</span> <span class="st">"l"</span>,</span>[m
[31m-<span id="cb9-11"><a href="#cb9-11" aria-hidden="true" tabindex="-1"></a>       <span class="at">xlab =</span> <span class="st">"Time [Myr]"</span>,</span>[m
[31m-<span id="cb9-12"><a href="#cb9-12" aria-hidden="true" tabindex="-1"></a>       <span class="at">ylab =</span> <span class="st">"Trait value"</span>,</span>[m
[31m-<span id="cb9-13"><a href="#cb9-13" aria-hidden="true" tabindex="-1"></a>       <span class="at">main =</span> <span class="st">"Trait evolution: Ornstein-Uhlenbeck process"</span>)</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb11"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb11-1"><a href="#cb11-1" aria-hidden="true" tabindex="-1"></a><span class="co"># Ornstein-Uhlenbeck</span></span>[m
[32m+[m[32m<span id="cb11-2"><a href="#cb11-2" aria-hidden="true" tabindex="-1"></a>min_t <span class="ot">=</span> <span class="dv">0</span>      <span class="co"># beginning observation [Myr]</span></span>[m
[32m+[m[32m<span id="cb11-3"><a href="#cb11-3" aria-hidden="true" tabindex="-1"></a>max_t <span class="ot">=</span> <span class="dv">2</span>      <span class="co"># end observation [Myr]</span></span>[m
[32m+[m[32m<span id="cb11-4"><a href="#cb11-4" aria-hidden="true" tabindex="-1"></a>t_step <span class="ot">=</span> <span class="fl">0.01</span>  <span class="co"># temporal resolution [Myr]</span></span>[m
[32m+[m[32m<span id="cb11-5"><a href="#cb11-5" aria-hidden="true" tabindex="-1"></a>theta <span class="ot">=</span> <span class="dv">1</span>      <span class="co"># model parameter, to modify</span></span>[m
[32m+[m[32m<span id="cb11-6"><a href="#cb11-6" aria-hidden="true" tabindex="-1"></a>sigma <span class="ot">=</span> <span class="fl">0.1</span>    <span class="co"># model parameter, to modify</span></span>[m
[32m+[m[32m<span id="cb11-7"><a href="#cb11-7" aria-hidden="true" tabindex="-1"></a>mu <span class="ot">=</span> <span class="dv">0</span>         <span class="co"># model parameter, to modify</span></span>[m
[32m+[m[32m<span id="cb11-8"><a href="#cb11-8" aria-hidden="true" tabindex="-1"></a>y0 <span class="ot">=</span> <span class="dv">1</span>         <span class="co"># model parameter, to modify</span></span>[m
[32m+[m[32m<span id="cb11-9"><a href="#cb11-9" aria-hidden="true" tabindex="-1"></a><span class="fu">seq</span>(<span class="at">from =</span> min_t, <span class="at">to =</span> max_t, <span class="at">by =</span> t_step) <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb11-10"><a href="#cb11-10" aria-hidden="true" tabindex="-1"></a>  <span class="fu">ornstein_uhlenbeck</span>(<span class="at">mu =</span> mu, <span class="at">theta =</span> theta, <span class="at">sigma =</span> sigma, <span class="at">y0 =</span> y0) <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb11-11"><a href="#cb11-11" aria-hidden="true" tabindex="-1"></a>  <span class="fu">plot</span>(<span class="at">type =</span> <span class="st">"l"</span>,</span>[m
[32m+[m[32m<span id="cb11-12"><a href="#cb11-12" aria-hidden="true" tabindex="-1"></a>       <span class="at">xlab =</span> <span class="st">"Time [Myr]"</span>,</span>[m
[32m+[m[32m<span id="cb11-13"><a href="#cb11-13" aria-hidden="true" tabindex="-1"></a>       <span class="at">ylab =</span> <span class="st">"Trait value"</span>,</span>[m
[32m+[m[32m<span id="cb11-14"><a href="#cb11-14" aria-hidden="true" tabindex="-1"></a>       <span class="at">main =</span> <span class="st">"Trait evolution: Ornstein-Uhlenbeck process"</span>)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[31m-<p><img src="trait_evol_files/figure-html/unnamed-chunk-7-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m<p><img src="trait_evol_files/figure-html/task_2_1_solution_OU-1.png" class="img-fluid figure-img" width="672"></p>[m
 </figure>[m
 </div>[m
 </div>[m
[36m@@ -485,55 +509,50 @@[m [mImportant endmembers of the OU model are:</p>[m
 </div>[m
 </div>[m
 <div class="callout callout-style-default callout-note callout-titled">[m
[31m-<div class="callout-header d-flex align-content-center collapsed" data-bs-toggle="collapse" data-bs-target=".callout-5-contents" aria-controls="callout-5" aria-expanded="false" aria-label="Toggle callout">[m
[32m+[m[32m<div class="callout-header d-flex align-content-center" data-bs-toggle="collapse" data-bs-target=".callout-5-contents" aria-controls="callout-5" aria-expanded="false" aria-label="Toggle callout">[m
 <div class="callout-icon-container">[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-<span class="screen-reader-only">Note</span>Solution Task 2: Stratigraphic effects on trait evolution[m
[32m+[m[32mSolution Task 2.2: Stratigraphic effects on trait evolution[m
 </div>[m
 <div class="callout-btn-toggle d-inline-block border-0 py-1 ps-1 pe-0 float-end"><i class="callout-toggle"></i></div>[m
 </div>[m
 <div id="callout-5" class="callout-5-contents callout-collapse collapse">[m
 <div class="callout-body-container callout-body">[m
[31m-<ol start="2" type="1">[m
[31m-<li>Transform the different modes of evolution into the stratigraphic domain and plot them.[m
[31m-<ul>[m
[31m-<li>Which modes are most/least affected by stratigraphic biases?<br>[m
[31m-</li>[m
[31m-<li>Do you see any systematic changes?</li>[m
[31m-</ul></li>[m
[31m-</ol>[m
[32m+[m[32m<p>Transform the different modes of evolution into the stratigraphic domain and plot them.</p>[m
[32m+[m[32m<p>Which modes are most/least affected by stratigraphic biases?<br>[m
[32m+[m[32mDo you see any systematic changes?</p>[m
 <p>Example code for the random walk model is provided. This can be expanded by replacing the random walk by stasis or the Ornstein-Uhlenbeck process.</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb10"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb10-1"><a href="#cb10-1" aria-hidden="true" tabindex="-1"></a>adm_list <span class="ot">=</span> <span class="fu">list</span>()                                     <span class="co"># storage for age-depth models</span></span>[m
[31m-<span id="cb10-2"><a href="#cb10-2" aria-hidden="true" tabindex="-1"></a>dist <span class="ot">=</span> <span class="fu">paste</span>(<span class="fu">seq</span>(<span class="dv">2</span>, <span class="dv">12</span>, <span class="at">by =</span> <span class="dv">2</span>), <span class="st">"km"</span>, <span class="at">sep =</span> <span class="st">""</span>)      <span class="co"># distances from shore</span></span>[m
[31m-<span id="cb10-3"><a href="#cb10-3" aria-hidden="true" tabindex="-1"></a><span class="cf">for</span> (pos <span class="cf">in</span> dist){                                    <span class="co"># construct ADMs for all distances</span></span>[m
[31m-<span id="cb10-4"><a href="#cb10-4" aria-hidden="true" tabindex="-1"></a>  adm_list[[pos]] <span class="ot">=</span> <span class="fu">tp_to_adm</span>(<span class="at">t =</span> scenarioA<span class="sc">$</span>t_myr,        </span>[m
[31m-<span id="cb10-5"><a href="#cb10-5" aria-hidden="true" tabindex="-1"></a>                             <span class="at">h =</span> scenarioA<span class="sc">$</span>h_m[,pos],</span>[m
[31m-<span id="cb10-6"><a href="#cb10-6" aria-hidden="true" tabindex="-1"></a>                             <span class="at">T_unit =</span> <span class="st">"Myr"</span>,</span>[m
[31m-<span id="cb10-7"><a href="#cb10-7" aria-hidden="true" tabindex="-1"></a>                             <span class="at">L_unit =</span> <span class="st">"m"</span>)</span>[m
[31m-<span id="cb10-8"><a href="#cb10-8" aria-hidden="true" tabindex="-1"></a>}</span>[m
[31m-<span id="cb10-9"><a href="#cb10-9" aria-hidden="true" tabindex="-1"></a></span>[m
[31m-<span id="cb10-10"><a href="#cb10-10" aria-hidden="true" tabindex="-1"></a>pos <span class="ot">=</span> <span class="st">"2km"</span>              <span class="co"># position on platform</span></span>[m
[31m-<span id="cb10-11"><a href="#cb10-11" aria-hidden="true" tabindex="-1"></a>mu <span class="ot">=</span> <span class="dv">2</span>                   <span class="co"># model parameters</span></span>[m
[31m-<span id="cb10-12"><a href="#cb10-12" aria-hidden="true" tabindex="-1"></a>sigma <span class="ot">=</span> <span class="dv">1</span>                <span class="co"># model parameters</span></span>[m
[31m-<span id="cb10-13"><a href="#cb10-13" aria-hidden="true" tabindex="-1"></a>y0 <span class="ot">=</span> <span class="dv">0</span>                   <span class="co"># model paramters</span></span>[m
[31m-<span id="cb10-14"><a href="#cb10-14" aria-hidden="true" tabindex="-1"></a>adm <span class="ot">=</span> adm_list[[pos]]    <span class="co"># select age-depth model</span></span>[m
[31m-<span id="cb10-15"><a href="#cb10-15" aria-hidden="true" tabindex="-1"></a>t_step <span class="ot">=</span> <span class="fl">0.001</span>           <span class="co"># temporal resolution [Myr]</span></span>[m
[31m-<span id="cb10-16"><a href="#cb10-16" aria-hidden="true" tabindex="-1"></a><span class="do">## plot trait evolution in the time domain</span></span>[m
[31m-<span id="cb10-17"><a href="#cb10-17" aria-hidden="true" tabindex="-1"></a><span class="fu">seq</span>(<span class="at">from  =</span> <span class="fu">min_time</span>(adm), <span class="at">to =</span> <span class="fu">max_time</span>(adm), <span class="at">by =</span> t_step) <span class="sc">|&gt;</span></span>[m
[31m-<span id="cb10-18"><a href="#cb10-18" aria-hidden="true" tabindex="-1"></a>  <span class="fu">random_walk</span>(<span class="at">sigma =</span> sigma, <span class="at">mu =</span> mu, <span class="at">y0 =</span> y0) <span class="sc">|&gt;</span></span>[m
[31m-<span id="cb10-19"><a href="#cb10-19" aria-hidden="true" tabindex="-1"></a>  <span class="fu">time_to_strat</span>(adm, <span class="at">destructive =</span> <span class="cn">FALSE</span>) <span class="sc">|&gt;</span></span>[m
[31m-<span id="cb10-20"><a href="#cb10-20" aria-hidden="true" tabindex="-1"></a>  <span class="fu">plot</span>(<span class="at">ylab =</span> <span class="st">"Trait value"</span>,</span>[m
[31m-<span id="cb10-21"><a href="#cb10-21" aria-hidden="true" tabindex="-1"></a>       <span class="at">type =</span> <span class="st">"l"</span>,</span>[m
[31m-<span id="cb10-22"><a href="#cb10-22" aria-hidden="true" tabindex="-1"></a>       <span class="at">orientation =</span> <span class="st">"lr"</span>,</span>[m
[31m-<span id="cb10-23"><a href="#cb10-23" aria-hidden="true" tabindex="-1"></a>       <span class="at">xlab =</span> <span class="st">"Height [m]"</span>,</span>[m
[31m-<span id="cb10-24"><a href="#cb10-24" aria-hidden="true" tabindex="-1"></a>       <span class="at">main =</span> <span class="fu">paste0</span>(<span class="st">"Trait evolution "</span>, pos, <span class="st">" from shore"</span>) )</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb12"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb12-1"><a href="#cb12-1" aria-hidden="true" tabindex="-1"></a>adm_list <span class="ot">=</span> <span class="fu">list</span>()                                     <span class="co"># storage for age-depth models</span></span>[m
[32m+[m[32m<span id="cb12-2"><a href="#cb12-2" aria-hidden="true" tabindex="-1"></a>dist <span class="ot">=</span> <span class="fu">paste</span>(<span class="fu">seq</span>(<span class="dv">2</span>, <span class="dv">12</span>, <span class="at">by =</span> <span class="dv">2</span>), <span class="st">"km"</span>, <span class="at">sep =</span> <span class="st">""</span>)      <span class="co"># distances from shore</span></span>[m
[32m+[m[32m<span id="cb12-3"><a href="#cb12-3" aria-hidden="true" tabindex="-1"></a><span class="cf">for</span> (pos <span class="cf">in</span> dist){                                    <span class="co"># construct ADMs for all distances</span></span>[m
[32m+[m[32m<span id="cb12-4"><a href="#cb12-4" aria-hidden="true" tabindex="-1"></a>  adm_list[[pos]] <span class="ot">=</span> <span class="fu">tp_to_adm</span>(<span class="at">t =</span> scenarioA<span class="sc">$</span>t_myr,        </span>[m
[32m+[m[32m<span id="cb12-5"><a href="#cb12-5" aria-hidden="true" tabindex="-1"></a>                             <span class="at">h =</span> scenarioA<span class="sc">$</span>h_m[,pos],</span>[m
[32m+[m[32m<span id="cb12-6"><a href="#cb12-6" aria-hidden="true" tabindex="-1"></a>                             <span class="at">T_unit =</span> <span class="st">"Myr"</span>,</span>[m
[32m+[m[32m<span id="cb12-7"><a href="#cb12-7" aria-hidden="true" tabindex="-1"></a>                             <span class="at">L_unit =</span> <span class="st">"m"</span>)</span>[m
[32m+[m[32m<span id="cb12-8"><a href="#cb12-8" aria-hidden="true" tabindex="-1"></a>}</span>[m
[32m+[m[32m<span id="cb12-9"><a href="#cb12-9" aria-hidden="true" tabindex="-1"></a></span>[m
[32m+[m[32m<span id="cb12-10"><a href="#cb12-10" aria-hidden="true" tabindex="-1"></a>pos <span class="ot">=</span> <span class="st">"2km"</span>              <span class="co"># position on platform</span></span>[m
[32m+[m[32m<span id="cb12-11"><a href="#cb12-11" aria-hidden="true" tabindex="-1"></a>mu <span class="ot">=</span> <span class="dv">2</span>                   <span class="co"># model parameters</span></span>[m
[32m+[m[32m<span id="cb12-12"><a href="#cb12-12" aria-hidden="true" tabindex="-1"></a>sigma <span class="ot">=</span> <span class="dv">1</span>                <span class="co"># model parameters</span></span>[m
[32m+[m[32m<span id="cb12-13"><a href="#cb12-13" aria-hidden="true" tabindex="-1"></a>y0 <span class="ot">=</span> <span class="dv">0</span>                   <span class="co"># model paramters</span></span>[m
[32m+[m[32m<span id="cb12-14"><a href="#cb12-14" aria-hidden="true" tabindex="-1"></a>adm <span class="ot">=</span> adm_list[[pos]]    <span class="co"># select age-depth model</span></span>[m
[32m+[m[32m<span id="cb12-15"><a href="#cb12-15" aria-hidden="true" tabindex="-1"></a>t_step <span class="ot">=</span> <span class="fl">0.001</span>           <span class="co"># temporal resolution [Myr]</span></span>[m
[32m+[m[32m<span id="cb12-16"><a href="#cb12-16" aria-hidden="true" tabindex="-1"></a><span class="do">## plot trait evolution in the time domain</span></span>[m
[32m+[m[32m<span id="cb12-17"><a href="#cb12-17" aria-hidden="true" tabindex="-1"></a><span class="fu">seq</span>(<span class="at">from  =</span> <span class="fu">min_time</span>(adm), <span class="at">to =</span> <span class="fu">max_time</span>(adm), <span class="at">by =</span> t_step) <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb12-18"><a href="#cb12-18" aria-hidden="true" tabindex="-1"></a>  <span class="fu">random_walk</span>(<span class="at">sigma =</span> sigma, <span class="at">mu =</span> mu, <span class="at">y0 =</span> y0) <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb12-19"><a href="#cb12-19" aria-hidden="true" tabindex="-1"></a>  <span class="fu">time_to_strat</span>(adm, <span class="at">destructive =</span> <span class="cn">FALSE</span>) <span class="sc">|&gt;</span></span>[m
[32m+[m[32m<span id="cb12-20"><a href="#cb12-20" aria-hidden="true" tabindex="-1"></a>  <span class="fu">plot</span>(<span class="at">ylab =</span> <span class="st">"Trait value"</span>,</span>[m
[32m+[m[32m<span id="cb12-21"><a href="#cb12-21" aria-hidden="true" tabindex="-1"></a>       <span class="at">type =</span> <span class="st">"l"</span>,</span>[m
[32m+[m[32m<span id="cb12-22"><a href="#cb12-22" aria-hidden="true" tabindex="-1"></a>       <span class="at">orientation =</span> <span class="st">"lr"</span>,</span>[m
[32m+[m[32m<span id="cb12-23"><a href="#cb12-23" aria-hidden="true" tabindex="-1"></a>       <span class="at">xlab =</span> <span class="st">"Height [m]"</span>,</span>[m
[32m+[m[32m<span id="cb12-24"><a href="#cb12-24" aria-hidden="true" tabindex="-1"></a>       <span class="at">main =</span> <span class="fu">paste0</span>(<span class="st">"Trait evolution "</span>, pos, <span class="st">" from shore"</span>) )</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output-display">[m
 <div>[m
 <figure class="figure">[m
[31m-<p><img src="trait_evol_files/figure-html/unnamed-chunk-8-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m<p><img src="trait_evol_files/figure-html/task_2_2_solution_strat_effects-1.png" class="img-fluid figure-img" width="672"></p>[m
 </figure>[m
 </div>[m
 </div>[m
[36m@@ -545,30 +564,42 @@[m [mImportant endmembers of the OU model are:</p>[m
 <li><p>There are long hiatuses or</p></li>[m
 <li><p>There are long intervals of sedimentary condensation.</p></li>[m
 </ol>[m
[31m-<p>As a result, stratigraphic biases are driven by maximum hiatus duration on the platform top, and driven by sedimentary condensation on the slope (see task on age-depth models). This effect is more pronounced the more directional evolution is.</p>[m
[32m+[m[32m<p>As a result, stratigraphic biases are driven by maximum hiatus duration on the platform top. This effect is more pronounced the more directional evolution is.</p>[m
 </div>[m
 </div>[m
 </div>[m
 <div class="callout callout-style-default callout-note callout-titled">[m
[31m-<div class="callout-header d-flex align-content-center collapsed" data-bs-toggle="collapse" data-bs-target=".callout-6-contents" aria-controls="callout-6" aria-expanded="false" aria-label="Toggle callout">[m
[32m+[m[32m<div class="callout-header d-flex align-content-center" data-bs-toggle="collapse" data-bs-target=".callout-6-contents" aria-controls="callout-6" aria-expanded="false" aria-label="Toggle callout">[m
 <div class="callout-icon-container">[m
 <i class="callout-icon"></i>[m
 </div>[m
 <div class="callout-title-container flex-fill">[m
[31m-<span class="screen-reader-only">Note</span>Solution Task 3: Model selection in the stratigraphic domain[m
[32m+[m[32mSolution Task 2.3: Model selection in the stratigraphic domain[m
 </div>[m
 <div class="callout-btn-toggle d-inline-block border-0 py-1 ps-1 pe-0 float-end"><i class="callout-toggle"></i></div>[m
 </div>[m
 <div id="callout-6" class="callout-6-contents callout-collapse collapse">[m
 <div class="callout-body-container callout-body">[m
[31m-<p>TBA</p>[m
[32m+[m[32m<p>Run model selection on your simulation using the <code>paleoTS</code> package, and compare results from the time and the stratigraphic domain.</p>[m
[32m+[m[32m<p>Do you see any systematic biases?</p>[m
[32m+[m[32m<p>We run model selection both in the stratigraphic and time domain, fitting 9 models to the fossil time series. The example code performs this analysis for simulations under the random walk model, which can be changed out to the stasis or Ornstein-Uhlenbeck model.</p>[m
 <div class="cell">[m
[31m-<div class="code-copy-outer-scaffold"><div class="sourceCode cell-code" id="cb11"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb11-1"><a href="#cb11-1" aria-hidden="true" tabindex="-1"></a>temp_res <span class="ot">=</span> <span class="fl">0.1</span>                                              <span class="co"># temporal resolution in Myr</span></span>[m
[31m-<span id="cb11-2"><a href="#cb11-2" aria-hidden="true" tabindex="-1"></a><span class="fu">seq</span>(<span class="fu">min_time</span>(adm), <span class="fu">max_time</span>(adm), <span class="at">by =</span> temp_res) <span class="sc">|&gt;</span>           <span class="co"># time steps where the trait evolution is simulated</span></span>[m
[31m-<span id="cb11-3"><a href="#cb11-3" aria-hidden="true" tabindex="-1"></a>  <span class="fu">random_walk_sl</span>(<span class="at">sigma =</span> <span class="dv">1</span>, <span class="at">mu =</span> <span class="dv">3</span>, <span class="at">y0 =</span> <span class="dv">0</span>) <span class="sc">|&gt;</span>                   <span class="co"># simulate trait evolution</span></span>[m
[31m-<span id="cb11-4"><a href="#cb11-4" aria-hidden="true" tabindex="-1"></a>  <span class="fu">time_to_strat</span>(adm, <span class="at">destructive =</span> <span class="cn">FALSE</span>) <span class="sc">|&gt;</span> </span>[m
[31m-<span id="cb11-5"><a href="#cb11-5" aria-hidden="true" tabindex="-1"></a>   <span class="fu">reduce_to_paleoTS</span>() <span class="sc">|&gt;</span></span>[m
[31m-<span id="cb11-6"><a href="#cb11-6" aria-hidden="true" tabindex="-1"></a>  <span class="fu">fit9models</span>()</span></code></pre></div><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></div>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb13"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb13-1"><a href="#cb13-1" aria-hidden="true" tabindex="-1"></a><span class="co"># time domain model selection</span></span>[m
[32m+[m[32m<span id="cb13-2"><a href="#cb13-2" aria-hidden="true" tabindex="-1"></a>temp_res <span class="ot">=</span> <span class="fl">0.1</span>                                              <span class="co"># temporal resolution in Myr</span></span>[m
[32m+[m[32m<span id="cb13-3"><a href="#cb13-3" aria-hidden="true" tabindex="-1"></a>intrapop_var <span class="ot">=</span> <span class="dv">1</span> <span class="co"># trait variance per sampling location/ fossil assemblage</span></span>[m
[32m+[m[32m<span id="cb13-4"><a href="#cb13-4" aria-hidden="true" tabindex="-1"></a>n_per_sample <span class="ot">=</span> <span class="dv">5</span> <span class="co"># number of fossils found per sampling location / fossil assemblage</span></span>[m
[32m+[m[32m<span id="cb13-5"><a href="#cb13-5" aria-hidden="true" tabindex="-1"></a>traits_time_domain <span class="ot">=</span> <span class="fu">seq</span>(<span class="fu">min_time</span>(adm), <span class="fu">max_time</span>(adm), <span class="at">by =</span> temp_res) <span class="sc">|&gt;</span>           <span class="co"># time steps where the trait evolution is simulated</span></span>[m
[32m+[m[32m<span id="cb13-6"><a href="#cb13-6" aria-hidden="true" tabindex="-1"></a>  <span class="fu">random_walk_sl</span>(<span class="at">sigma =</span> <span class="dv">1</span>, <span class="at">mu =</span> <span class="dv">3</span>, <span class="at">y0 =</span> <span class="dv">0</span>, <span class="at">intrapop_var =</span> intrapop_var, <span class="at">n_per_sample =</span> n_per_sample) <span class="sc">|&gt;</span>                   <span class="co"># simulate trait evolution</span></span>[m
[32m+[m[32m<span id="cb13-7"><a href="#cb13-7" aria-hidden="true" tabindex="-1"></a>  <span class="fu">reduce_to_paleoTS</span>() </span>[m
[32m+[m[32m<span id="cb13-8"><a href="#cb13-8" aria-hidden="true" tabindex="-1"></a><span class="fu">plot</span>(traits_time_domain, <span class="at">xlab =</span> <span class="st">"Time [Myr]"</span>)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
[32m+[m[32m<div class="cell-output-display">[m
[32m+[m[32m<div>[m
[32m+[m[32m<figure class="figure">[m
[32m+[m[32m<p><img src="trait_evol_files/figure-html/task_2_3_solution_model_selection_time_domain-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m</figure>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb14"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb14-1"><a href="#cb14-1" aria-hidden="true" tabindex="-1"></a>traits_time_domain <span class="sc">|&gt;</span> <span class="fu">fit9models</span>(<span class="at">pool =</span> <span class="cn">FALSE</span>)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
 <div class="cell-output cell-output-stdout">[m
 <pre><code>Fitting simple models...[m
 Fitting punctuational model...[m
[36m@@ -590,17 +621,72 @@[m [mTotal # hypotheses:  8[m
 Comparing 9 models [n = 21, method = Joint][m
 [m
                    logL K      AICc      dAICc Akaike.wt[m
[31m-StrictStasis -298.80769 1 599.82592 556.345453     0.000[m
[31m-Stasis        -41.80235 2  88.27137  44.790909     0.000[m
[31m-URW           -38.55600 2  81.77866  38.298199     0.000[m
[31m-GRW           -37.47915 3  82.37007  38.889609     0.000[m
[31m-Punc-1        -19.79051 4  50.08102   6.600560     0.033[m
[31m-Stasis-URW    -34.30261 4  79.10522  35.624758     0.000[m
[31m-Stasis-GRW    -31.41502 5  76.83004  33.349576     0.000[m
[31m-URW-Stasis    -17.29769 5  48.59537   5.114911     0.070[m
[31m-GRW-Stasis    -12.74023 6  43.48046   0.000000     0.897</code></pre>[m
[32m+[m[32mStrictStasis -331.25640 1 664.72333 625.412749     0.000[m
[32m+[m[32mStasis        -43.90014 2  92.46694  53.156361     0.000[m
[32m+[m[32mURW           -21.15338 2  46.97343   7.662845     0.018[m
[32m+[m[32mGRW           -19.04811 3  45.50798   6.197395     0.037[m
[32m+[m[32mPunc-1        -17.50837 4  45.51674   6.206157     0.037[m
[32m+[m[32mStasis-URW    -23.14597 4  56.79194  17.481360     0.000[m
[32m+[m[32mStasis-GRW    -22.18200 5  58.36399  19.053408     0.000[m
[32m+[m[32mURW-Stasis    -14.91349 5  43.82698   4.516401     0.086[m
[32m+[m[32mGRW-Stasis    -10.65529 6  39.31058   0.000000     0.822</code></pre>[m
 </div>[m
 </div>[m
[32m+[m[32m<div class="cell">[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb16"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb16-1"><a href="#cb16-1" aria-hidden="true" tabindex="-1"></a><span class="co"># stratigraphic domain model selection</span></span>[m
[32m+[m[32m<span id="cb16-2"><a href="#cb16-2" aria-hidden="true" tabindex="-1"></a>temp_res <span class="ot">=</span> <span class="fl">0.1</span>                                              <span class="co"># temporal resolution in Myr</span></span>[m
[32m+[m[32m<span id="cb16-3"><a href="#cb16-3" aria-hidden="true" tabindex="-1"></a>traits_strat_domain <span class="ot">=</span> <span class="fu">seq</span>(<span class="fu">min_time</span>(adm), <span class="fu">max_time</span>(adm), <span class="at">by =</span> temp_res) <span class="sc">|&gt;</span>           <span class="co"># time steps where the trait evolution is simulated</span></span>[m
[32m+[m[32m<span id="cb16-4"><a href="#cb16-4" aria-hidden="true" tabindex="-1"></a>  <span class="fu">random_walk_sl</span>(<span class="at">sigma =</span> <span class="dv">1</span>, <span class="at">mu =</span> <span class="dv">3</span>, <span class="at">y0 =</span> <span class="dv">0</span>, <span class="at">intrapop_var =</span> intrapop_var, <span class="at">n_per_sample =</span> n_per_sample) <span class="sc">|&gt;</span>                   <span class="co"># simulate trait evolution</span></span>[m
[32m+[m[32m<span id="cb16-5"><a href="#cb16-5" aria-hidden="true" tabindex="-1"></a>  <span class="fu">time_to_strat</span>(adm, <span class="at">destructive =</span> <span class="cn">FALSE</span>) <span class="sc">|&gt;</span> </span>[m
[32m+[m[32m<span id="cb16-6"><a href="#cb16-6" aria-hidden="true" tabindex="-1"></a>  <span class="fu">reduce_to_paleoTS</span>() </span>[m
[32m+[m[32m<span id="cb16-7"><a href="#cb16-7" aria-hidden="true" tabindex="-1"></a><span class="fu">plot</span>(traits_strat_domain, <span class="at">xlab =</span> <span class="st">"Stratigraphic Position [m]"</span>)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
[32m+[m[32m<div class="cell-output-display">[m
[32m+[m[32m<div>[m
[32m+[m[32m<figure class="figure">[m
[32m+[m[32m<p><img src="trait_evol_files/figure-html/task_2_3_solution_model_selection_strat_domain-1.png" class="img-fluid figure-img" width="672"></p>[m
[32m+[m[32m</figure>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m<div class="sourceCode cell-code" id="cb17"><pre class="sourceCode r code-with-copy"><code class="sourceCode r"><span id="cb17-1"><a href="#cb17-1" aria-hidden="true" tabindex="-1"></a>traits_strat_domain <span class="sc">|&gt;</span> <span class="fu">fit9models</span>(<span class="at">pool =</span> <span class="cn">FALSE</span>)</span></code><button title="Copy to Clipboard" class="code-copy-button"><i class="bi"></i></button></pre></div>[m
[32m+[m[32m<div class="cell-output cell-output-stdout">[m
[32m+[m[32m<pre><code>Fitting simple models...[m
[32m+[m[32mFitting punctuational model...[m
[32m+[m[32mTotal # hypotheses:  8[m[41m [m
[32m+[m[32m1  2  3  4  5  6  7  8[m[41m  [m
[32m+[m[32mFitting Stasis-URW model...[m
[32m+[m[32mTotal # hypotheses:  8[m[41m [m
[32m+[m[32m1  2  3  4  5  6  7  8[m[41m  [m
[32m+[m[32mFitting Stasis-GRW model...[m
[32m+[m[32mTotal # hypotheses:  8[m[41m [m
[32m+[m[32m1  2  3  4  5  6  7  8[m[41m  [m
[32m+[m[32mFitting URW-Stasis model...[m
[32m+[m[32mTotal # hypotheses:  8[m[41m [m
[32m+[m[32m1  2  3  4  5  6  7  8[m[41m  [m
[32m+[m[32mFitting GRW-Stasis model...[m
[32m+[m[32mTotal # hypotheses:  8[m[41m [m
[32m+[m[32m1  2  3  4  5  6  7  8[m[41m  [m
[32m+[m
[32m+[m[32mComparing 9 models [n = 21, method = Joint][m
[32m+[m
[32m+[m[32m                   logL K      AICc       dAICc Akaike.wt[m
[32m+[m[32mStrictStasis -480.25803 1 962.72658 889.2867613     0.000[m
[32m+[m[32mStasis        -50.79723 2 106.26113  32.8213110     0.000[m
[32m+[m[32mURW           -42.08084 2  88.82835  15.3885358     0.000[m
[32m+[m[32mGRW           -40.74554 3  88.90284  15.4630277     0.000[m
[32m+[m[32mPunc-1        -35.86133 4  82.22265   8.7828353     0.007[m
[32m+[m[32mStasis-URW    -42.06921 4  94.63842  21.1986045     0.000[m
[32m+[m[32mStasis-GRW    -41.24911 5  96.49822  23.0584083     0.000[m
[32m+[m[32mURW-Stasis    -29.71991 5  73.43982   0.0000000     0.595[m
[32m+[m[32mGRW-Stasis    -28.12606 6  74.25212   0.8123017     0.397</code></pre>[m
[32m+[m[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m<p>General observation are:</p>[m
[32m+[m[32m<ul>[m
[32m+[m[32m<li>Results are sensitive to randomness inherent in the randomness of the simulation, e.g., occasionally a random walk simulation will be identified as stasis even in the abscence of biases. This effect is additionally sensitive to parameters such as sample size and intrapopulation variance (<code>intrapop_var</code> <code>n_per_sample</code>), reducing the power of the procedure and potentially leading to “analytical stasis”, where low statistical power favors the recovery of stasis <span class="citation" data-cites="hannisdal2006">(<a href="#ref-hannisdal2006" role="doc-biblioref">Hannisdal 2006</a>)</span></li>[m
[32m+[m[32m<li>Recovery of the correct (meaning, simulated) mode of evolution is better in the time domain, whereas model selection in the stratigraphic domain favors the recognition of punctuated modes of evolution <span class="citation" data-cites="hohmann_identification_2024">(<a href="#ref-hohmann_identification_2024" role="doc-biblioref">Hohmann et al. 2024</a>)</span>. This effect is strongest in the on the platform top, and disappears on the proximal slope as stratigraphic biases disappear.</li>[m
[32m+[m[32m<li>As in the visual comparison, stratigraphic effects are strongest the more directional the mode of evolution is, and disappear for stasis.</li>[m
[32m+[m[32m<li>Stratophenetic time series will thus favor both the recogniton of stasis and punctuated modes of evolution.</li>[m
[32m+[m[32m</ul>[m
 </div>[m
 </div>[m
 </div>[m
[36m@@ -610,6 +696,12 @@[m [mGRW-Stasis    -12.74023 6  43.48046   0.000000     0.897</code></pre>[m
 </section>[m
 [m
 <div id="quarto-appendix" class="default"><section class="quarto-appendix-contents" role="doc-bibliography" id="quarto-bibliography"><h2 class="anchored quarto-appendix-heading">References</h2><div id="refs" class="references csl-bib-body hanging-indent" data-entry-spacing="0" role="list">[m
[32m+[m[32m<div id="ref-hannisdal2006" class="csl-entry" role="listitem">[m
[32m+[m[32mHannisdal, Bjarte. 2006. <span>“Phenotypic Evolution in the Fossil Record: Numerical Experiments.”</span> <em>The Journal of Geology</em> 114 (2): 133–53. <a href="https://doi.org/10.1086/499569">https://doi.org/10.1086/499569</a>.[m
[32m+[m[32m</div>[m
[32m+[m[32m<div id="ref-hohmann_identification_2024" class="csl-entry" role="listitem">[m
[32m+[m[32mHohmann, Niklas, Joël R. Koelewijn, Peter Burgess, and Emilia Jarochowska. 2024. <span>“Identification of the Mode of Evolution in Incomplete Carbonate Successions.”</span> <em>BMC Ecology and Evolution</em> 24 (1): 113. <a href="https://doi.org/10.1186/s12862-024-02287-2">https://doi.org/10.1186/s12862-024-02287-2</a>.[m
[32m+[m[32m</div>[m
 <div id="ref-hunt2006" class="csl-entry" role="listitem">[m
 Hunt, and G. 2006. <span>“Fitting and Comparing Models of Phyletic Evolution: Random Walks and Beyond.”</span> <em>Paleobiology</em> 32 (4): –23. <a href="https://doi.org/10.1666/05070.1">https://doi.org/10.1666/05070.1</a>.[m
 </div>[m
[36m@@ -665,14 +757,13 @@[m [mHunt, and G. 2006. <span>“Fitting and Comparing Models of Phyletic Evolution:[m
       e.clearSelection();[m
     }[m
     const getTextToCopy = function(trigger) {[m
[31m-      const outerScaffold = trigger.parentElement.cloneNode(true);[m
[31m-      const codeEl = outerScaffold.querySelector('code');[m
[31m-      for (const childEl of codeEl.children) {[m
[31m-        if (isCodeAnnotation(childEl)) {[m
[31m-          childEl.remove();[m
[32m+[m[32m        const codeEl = trigger.previousElementSibling.cloneNode(true);[m
[32m+[m[32m        for (const childEl of codeEl.children) {[m
[32m+[m[32m          if (isCodeAnnotation(childEl)) {[m
[32m+[m[32m            childEl.remove();[m
[32m+[m[32m          }[m
         }[m
[31m-      }[m
[31m-      return codeEl.innerText;[m
[32m+[m[32m        return codeEl.innerText;[m
     }[m
     const clipboard = new window.ClipboardJS('.code-copy-button:not([data-in-quarto-modal])', {[m
       text: getTextToCopy[m
[1mdiff --git a/docs/trait_evol_files/figure-html/unnamed-chunk-1-1.png b/docs/trait_evol_files/figure-html/unnamed-chunk-1-1.png[m
[1mindex ae37e5d..a56db9b 100644[m
Binary files a/docs/trait_evol_files/figure-html/unnamed-chunk-1-1.png and b/docs/trait_evol_files/figure-html/unnamed-chunk-1-1.png differ
[1mdiff --git a/docs/trait_evol_files/figure-html/unnamed-chunk-2-1.png b/docs/trait_evol_files/figure-html/unnamed-chunk-2-1.png[m
[1mindex 537c072..5f65dc9 100644[m
Binary files a/docs/trait_evol_files/figure-html/unnamed-chunk-2-1.png and b/docs/trait_evol_files/figure-html/unnamed-chunk-2-1.png differ
[1mdiff --git a/docs/trait_evol_files/figure-html/unnamed-chunk-3-1.png b/docs/trait_evol_files/figure-html/unnamed-chunk-3-1.png[m
[1mindex 4ace290..79fc531 100644[m
Binary files a/docs/trait_evol_files/figure-html/unnamed-chunk-3-1.png and b/docs/trait_evol_files/figure-html/unnamed-chunk-3-1.png differ
[1mdiff --git a/docs/trait_evol_files/figure-html/unnamed-chunk-5-1.png b/docs/trait_evol_files/figure-html/unnamed-chunk-5-1.png[m
[1mindex c9ace46..c851882 100644[m
Binary files a/docs/trait_evol_files/figure-html/unnamed-chunk-5-1.png and b/docs/trait_evol_files/figure-html/unnamed-chunk-5-1.png differ
[1mdiff --git a/docs/trait_evol_files/figure-html/unnamed-chunk-6-1.png b/docs/trait_evol_files/figure-html/unnamed-chunk-6-1.png[m
[1mindex e39fdaa..5c705c3 100644[m
Binary files a/docs/trait_evol_files/figure-html/unnamed-chunk-6-1.png and b/docs/trait_evol_files/figure-html/unnamed-chunk-6-1.png differ
[1mdiff --git a/docs/trait_evol_files/figure-html/unnamed-chunk-7-1.png b/docs/trait_evol_files/figure-html/unnamed-chunk-7-1.png[m
[1mindex 6372b35..de20593 100644[m
Binary files a/docs/trait_evol_files/figure-html/unnamed-chunk-7-1.png and b/docs/trait_evol_files/figure-html/unnamed-chunk-7-1.png differ
[1mdiff --git a/docs/trait_evol_files/figure-html/unnamed-chunk-8-1.png b/docs/trait_evol_files/figure-html/unnamed-chunk-8-1.png[m
[1mindex f1ab217..01db3fa 100644[m
Binary files a/docs/trait_evol_files/figure-html/unnamed-chunk-8-1.png and b/docs/trait_evol_files/figure-html/unnamed-chunk-8-1.png differ
[1mdiff --git a/event_data.qmd b/event_data.qmd[m
[1mindex 0f88457..6542764 100644[m
[1m--- a/event_data.qmd[m
[1m+++ b/event_data.qmd[m
[36m@@ -2,9 +2,10 @@[m
 title: "Event Data and Niche Modeling"[m
 format: html[m
 editor: visual[m
[32m+[m[32mbibliography: refs/refs.bib[m
 ---[m
 [m
[31m-TODO: \* write introduction \* match examples to new data \[to be done on Wed!\] \* write solution & code snippet for range offset[m
[32m+[m[32mTODO: \* write introduction[m[41m [m
 [m
 ## Fossil occurrences, niche modeling and last occurrences (45 min)[m
 [m
[36m@@ -23,7 +24,7 @@[m [mIn this practical, we explore niche models, and how you can build your own mass[m
 [m
 Fossil locations or ages can be simulated using the `p3` function if the rate of fossil occurrences is constant:[m
 [m
[31m-```{r}[m
[32m+[m[32m```{r event_data_1}[m
 library(StratPal)[m
 library(admtools)[m
 pos = "2km"[m
[36m@@ -44,7 +45,7 @@[m [mFor time-variable rates see `p3_var_rate`.[m
 [m
 You can transform fossil ages directly using `time_to_strat`:[m
 [m
[31m-```{r}[m
[32m+[m[32m```{r event_data_fossil_age_transformation}[m
 foss_per_myr = 300                                                           # fossils per Myr[m
 p3(rate = foss_per_myr, from = min_time(adm), to = max_time(adm)) |>         # constant rate in time domain[m
   time_to_strat(adm, destructive = TRUE) |>                                  # transform into depth domain[m
[36m@@ -60,7 +61,7 @@[m [mNote the option `destructive = TRUE` for `time_to_strat`. It makes sure fossils[m
 [m
 You can define simple niche models with the functions `snp_niche` or `bounded_niche`:[m
 [m
[31m-```{r}[m
[32m+[m[32m```{r event_data_define_niche}[m
 my_niche = snd_niche(opt = 10,       # preferred water depth [m
                      tol = 5,        # tolerance to water depth fluctuations[m
                      cutoff_val = 0) # cut off negative values - the taxon does not survive on land[m
[36m@@ -68,7 +69,7 @@[m [mmy_niche = snd_niche(opt = 10,       # preferred water depth[m
 [m
 To visualize the niche you can plot it using the following code:[m
 [m
[31m-```{r}[m
[32m+[m[32m```{r event_data_plot_niche}[m
 max_wd = 60                                     # maximum water depth[m
 x = seq(-2, max_wd, by = 0.1)[m
 plot(x, my_niche(x),[m
[36m@@ -83,14 +84,14 @@[m [mplot(x, my_niche(x),[m
 To apply a niche model, we need two components: A niche definition that specifies the niche of a taxon along a cline (water depth in this example - this is the function we defined above), and a function that describes how the cline changes with time.[m
 [m
 ::: callout-tip[m
[31m-## Cline[m
[32m+[m[32m### Cline[m
 [m
 A cline is an environmental gradient, e.g. altitude is a cline important for plant diversity. Ecological niches are often defined in terms of distributions of occurrence probability along a cline.[m
 :::[m
 [m
 To define a function that returns the water depth with time, you can use the following code:[m
 [m
[31m-```{r}[m
[32m+[m[32m```{r event_data_def_water_depth}[m
 pos = "2km"                 # position in the platform we want water depth from[m
 t = scenarioA$t_myr         # time steps where water depth is determined by the model[m
 wd = scenarioA$wd_m[,pos]   # water depth 2 km from shore[m
[36m@@ -99,7 +100,7 @@[m [mgc = approxfun(t, wd)       # use linear interpolation between known water depth[m
 [m
 You can visualize this function using the following code:[m
 [m
[31m-```{r}[m
[32m+[m[32m```{r event_data_plot_water_depth}[m
 plot(x = t,[m
      y = gc(t), [m
      type = "l", [m
[36m@@ -110,7 +111,7 @@[m [mplot(x = t,[m
 [m
 With both components (niche definition and cline change with time) defined, you can insert the niche model into the modeling pipeline via the function `apply_niche`:[m
 [m
[31m-```{r}[m
[32m+[m[32m```{r event_data_apply_niche}[m
 p3(rate = foss_per_myr, from = min_time(adm), to = max_time(adm)) |>         # model occurrences based on constant rate[m
   apply_niche(niche_def = my_niche, gc = gc) |>                              # apply niche model[m
   time_to_strat(adm, destructive = TRUE) |>                                  # transform into strat. domain, destroy fossils that coincide with hiatuses [m
[36m@@ -124,7 +125,7 @@[m [mp3(rate = foss_per_myr, from = min_time(adm), to = max_time(adm)) |>         # m[m
 [m
 Timing of last occurrences can be simulated using `p3` or `p3_var_rate` just as fossil occurrence (or any other type of "event" data). They can be transformed using `time_to_strat`:[m
 [m
[31m-```{r}[m
[32m+[m[32m```{r event_data_last_occ}[m
 rolo = 100                                                               # rate of last occurrences [per Myr][m
 p3(rate = rolo, from = min_time(adm), to = max_time(adm)) |>             # constant rate of last occ[m
   time_to_strat(adm, destructive = FALSE) |>                             # non-destructive transformation![m
[36m@@ -138,12 +139,23 @@[m [mNote that we use the option `destructive = FALSE` in `time_to_strat`. This is be[m
 [m
 ### Biostratigraphic precision (range offset)[m
 [m
[31m-TBA[m
[32m+[m[32mBiostratigraphic precision is expressed as *range offset*, which is the difference between the true time of extinction and the last occurrence of a taxon. To determine it, you can use the wrapper function `range_offset`:[m
[32m+[m
[32m+[m[32m```{r event_data_range_offset}[m
[32m+[m[32mt_ext = 1.5 # true time of extinction[m
[32m+[m[32mrate = 10 # fossil abundance (per Myr)[m
[32m+[m[32mr_offset = range_offset(t_ext = t_ext,[m
[32m+[m[32m             rate = rate,[m
[32m+[m[32m             adm = adm)[m
[32m+[m[32mr_offset[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThis determines the range offset both in the stratigraphic domain (height difference between the last fossil found and the extinction horizon) and the time domain (time difference between the true age of extinction and the last preserved fossil). Here the stratigraphic range offset is `r round(r_offset["h"], 2)` meters and the temporal range offset is `r round(r_offset["t"], 2)` Myr. See `?range_offset` for advanced usage, which includes the incorporation of variable rates, taphonomy, and ecology.[m
 [m
 ## Tasks[m
 [m
 ::: callout-important[m
[31m-### Task 1: Fossil abundance in the stratigraphic domain[m
[32m+[m[32m### Task 3.1: Fossil abundance in the stratigraphic domain[m
 [m
 Simulate an abundant taxon, and transform the fossil ages into the stratigraphic domain.[m
 [m
[36m@@ -152,7 +164,7 @@[m [mWith which stratigraphic effects are these peaks associated?[m
 :::[m
 [m
 ::: callout-important[m
[31m-### Task 2: Ecological controls on fossil abundance[m
[32m+[m[32m### Task 3.2: Ecological controls on fossil abundance[m
 [m
 Define a niche for a taxon, and add the niche model to your pipeline.[m
 [m
[36m@@ -161,7 +173,7 @@[m [mHow could you misinterpret the results?[m
 :::[m
 [m
 ::: callout-important[m
[31m-### Task 3: Last occurrences and artefactual mass extinctions[m
[32m+[m[32m### Task 3.3: Last occurrences and artefactual mass extinctions[m
 [m
 Simulate last occurrences based on the assumption of a constant rate of last occurrences and transform them into the stratigraphic domain.[m
 [m
[36m@@ -172,9 +184,9 @@[m [mUse your results to formulate a "stratigraphic null hypothesis" for clusters of[m
 :::[m
 [m
 ::: callout-important[m
[31m-### Task 4: Biostratigraphic precision and range offset[m
[32m+[m[32m### Task 3.4: Biostratigraphic precision and range offset[m
 [m
[31m-Explore how range offset changes with the true time of extinction and fossil abundance.[m
[32m+[m[32mExplore how range offset changes with the true time of extinction, fossil abundance, and position along shore.[m
 [m
 Where and why is biostratigraphic precision best/worst?\[m
 How do your results change when you add a niche model to your code?[m
[36m@@ -183,17 +195,15 @@[m [mHow do your results change when you add a niche model to your code?[m
 ## Solutions[m
 [m
 ::: {.callout-note collapse="true"}[m
[31m-### Solution Task 1[m
[32m+[m[32m### Solution Task 3.1: Fossil abundance in the stratigraphic domain.[m
 [m
 Simulate an abundant taxon, and transform the fossil ages into the stratigraphic domain.[m
 [m
[31m-```         [m
[31m--   At which locations and stratigraphic heights do you observe peaks in fossil abundance?[m
[32m+[m[32mAt which locations and stratigraphic heights do you observe peaks in fossil abundance?With which stratigraphic effects are these peaks associated?[m
 [m
[31m--   With which stratigraphic effects are these peaks associated?[m
[31m-```[m
[32m+[m[32mWe start by collecting all age-depth models for convenience.[m
 [m
[31m-```{r}[m
[32m+[m[32m```{r task_3_1_solution_fossil_abundance}[m
 [m
 adm_list = list()                                     # storage for age-depth models[m
 dist = paste(seq(2, 12, by = 2), "km", sep = "")      # distances from shore[m
[36m@@ -205,10 +215,10 @@[m [mfor (pos in dist){                                    # construct ADMs for all d[m
 }[m
 [m
 [m
[31m-pos = "2km"              # position in the platform, to modify[m
[32m+[m[32mpos = "12km"              # position in the platform, to modify[m
 stopifnot(pos %in% dist) # validity check[m
 adm = adm_list[[pos]]    # select ADM[m
[31m-rate = 200               # fossil occurrences per Myr[m
[32m+[m[32mrate = 2000               # fossil occurrences per Myr[m
 sampl_bin = 2            # sampling bins in m[m
 # Plot fossil abundance in the section[m
 p3(from = min_time(adm), to = max_time(adm), rate = rate) |>[m
[36m@@ -217,17 +227,16 @@[m [mp3(from = min_time(adm), to = max_time(adm), rate = rate) |>[m
        xlab = "Stratigraphic height [m]",[m
        main = paste0("Fossil abundance ", pos, " from shore"))[m
 ```[m
[31m-[m
[31m-In the slope sections (10 and 12 km), there are peaks in fossil abundance associated with the intervals with stratigraphic condensation, which are coeval to drops in sea level. These peaks are not visible on the platform top. This is because here the sea level drops result in hiatuses, which destroys the fossils (as specified by the option `destructive = TRUE`).[m
[32m+[m[32mThe constant fossil abundance in the time domain is expressed as irregular patterns in the stratigraphic domain, with increased irregularity when the number of simulated fossils (rate) is low. Peaks in fossil abundance correspond to decreased sediment accumulation as accomodation space is rapidly filled when the platform is flooded. Notably, hiatuses do not cause any peaks in fossil abundance, as we specified that fossils coindicing with gaps will be destroyed (option `destructive = TRUE`).[m
 :::[m
 [m
 ::: {.callout-note collapse="true"}[m
[31m-### Solution Task 2[m
[32m+[m[32m### Solution Task 3.2: Ecological controls on fossil abundance.[m
 [m
 Define a niche for a taxon, and add the niche model to your pipeline. - How and why do your results change? - How could you misinterpret the results?[m
 [m
[31m-```{r}[m
[31m-pos = "8km"              # select position on the platform[m
[32m+[m[32m```{r task_3_2_solution_ecology}[m
[32m+[m[32mpos = "2km"              # select position on the platform[m
 stopifnot(pos %in% dist) # check validity[m
 adm = adm_list[[pos]]    # select age-depth model[m
 rate = 200               # no. of fossils per Myr[m
[36m@@ -268,7 +277,7 @@[m [mFor example, the water depth on the platform decreases with time, as the carbona[m
 :::[m
 [m
 ::: {.callout-note collapse="true"}[m
[31m-### Solution Task 3[m
[32m+[m[32m### Solution Task 3.3: Last occurrences and artefactual mass extinctions[m
 [m
 Simulate last occurrences based on the assumption of a constant rate of last occurrences and transform them into the stratigraphic domain[m
 [m
[36m@@ -278,7 +287,7 @@[m [mSimulate last occurrences based on the assumption of a constant rate of last occ[m
 [m
 -   How would you misinterpret the results in the absence of stratigraphic information? Use your results to formulate a "stratigraphic null hypothesis" for clusters of last occurrences.[m
 [m
[31m-```{r}[m
[32m+[m[32m```{r task_3_3_last_occ}[m
 pos = "2km"               # position along the onshore-offshore gradient[m
 stopifnot(pos %in% dist)  # validity check[m
 adm = adm_list[[pos]]     # select age-depth model[m
[36m@@ -301,7 +310,46 @@[m [mA stratigraphic null hypothesis might be that times of dropping sea level cause[m
 :::[m
 [m
 ::: {.callout-note collapse="true"}[m
[31m-### Solution Task 4[m
[32m+[m[32m### Solution Task 3.4: Biostratigraphic precision and range offset.[m
[32m+[m
[32m+[m[32mExplore how range offset changes with the true time of extinction, fossil abundance, and position along shore.[m
[32m+[m
[32m+[m[32mWhere and why is biostratigraphic precision best/worst?\[m
[32m+[m[32mHow do your results change when you add a niche model to your code?[m
[32m+[m
[32m+[m[32mTo generate more simulations, we write a wrapper function that draws range offset 1000 times for any given parameter choice:[m
[32m+[m
[32m+[m[32m```{r task_3_4_solution_range_offset}[m
[32m+[m[32msample_range_offset = function(t_ext, rate, adm, n_rep = 1000){[m
[32m+[m[32m  t = rep(NA, n_rep)[m
[32m+[m[32m  h = rep(NA, n_rep)[m
[32m+[m[32m  for (i in 1:n_rep){[m
[32m+[m[32m    x = range_offset(t_ext = t_ext, rate = rate, adm = adm)[m
[32m+[m[32m    t[i] = x["t"][m
[32m+[m[32m    h[i] = x["h"][m
[32m+[m[32m  }[m
[32m+[m[32m  return(list(t = t, h = h))[m
[32m+[m[32m}[m
[32m+[m[32madm = adm_list[["2km"]][m
[32m+[m[32mt_ext = 1.5[m
[32m+[m[32mrate = 5[m
[32m+[m
[32m+[m[32mrange_offsets = sample_range_offset(t_ext, rate, adm)[m
[32m+[m
[32m+[m[32mhist(range_offsets$h,[m
[32m+[m[32m     xlab = "Range offset [m]",[m
[32m+[m[32m     main = "Biostratigraphic precision/Stratigraphic range offset")[m
[32m+[m
[32m+[m[32mhist(range_offsets$t,[m
[32m+[m[32m     xlab = "Range offset [Myr]",[m
[32m+[m[32m     main = "Biostratigraphic precision/Temporal range offset")[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mRunning this code across the platform with varying rates and true extinction times, the following patterns emerge:[m
[32m+[m
[32m+[m[32m-   Range offset increases as fossil abundance decreases - the fewer fossils there are to find the further the last observed occurrence will be from the true extinction, an effect called the Signor-Lipps effect [@signor1982][m
[32m+[m
[32m+[m[32m-   Temporal range offset is highest when the true extinction lies at the end of a gap. As a result, range offset is highest on the platform top in the presence of prolonged hiatuses caused by drops in sea level[m
 [m
[31m-TBA[m
[32m+[m[32m-   Adding niche models to the code does further increase the range offset (and, as a result, decrease stratigraphic precision) as it further decreases fossil abundance, and adds extirpation effects to range offset.[m
 :::[m
[1mdiff --git a/refs/refs.bib b/refs/refs.bib[m
[1mindex 1d7d499..09741a6 100644[m
[1m--- a/refs/refs.bib[m
[1m+++ b/refs/refs.bib[m
[36m@@ -343,3 +343,14 @@[m [mDOI = {10.5194/egusphere-2025-4561}[m
 	url = {http://dx.doi.org/10.1130/0091-7613(1999)027<0491:MFSTFR>2.3.CO;2},[m
 	langid = {en}[m
 }[m
[32m+[m
[32m+[m[32m@article{signor1982,[m
[32m+[m	[32mtitle = {Sampling bias, gradual extinction patterns and catastrophes in the fossil record},[m
[32m+[m	[32mauthor = {Signor, Philip W and Lipps, Jere H and Silver, Leon T and Schultz, Peter H and others, },[m
[32m+[m	[32myear = {1982},[m
[32m+[m	[32mdate = {1982},[m
[32m+[m	[32mjournal = {Geological Society of America Special Paper},[m
[32m+[m	[32mpages = {e296},[m
[32m+[m	[32mvolume = {190},[m
[32m+[m	[32mnumber = {291}[m
[32m+[m[32m}[m
