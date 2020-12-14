---
title: Analysis
author: 
date: "14 dicembre, 2020"
output: 
  prettydoc::html_pretty:
    theme: tactile
    highlight: github
---



## Analysis through Regressions: Selection and Justification

To further study the impact of the different factor on criminality we try to exploit econometric regressions.

We start with a standard OLS for a model, where we consider total criminality per 1000 people, as the sum of rape, homicide, violent crime and aggravated assault, all in per 1000 terms.
The OLS model is:

<span class="math display"><span class="MathJax_Preview" style="color: inherit; display: none;"></span><div class="MathJax_Display" style="text-align: center;"><span class="MathJax" id="MathJax-Element-1-Frame" tabindex="0" data-mathml="<math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot; display=&quot;block&quot;><mtable columnalign=&quot;right left right left right left right left right left right left&quot; rowspacing=&quot;3pt&quot; columnspacing=&quot;0em 2em 0em 2em 0em 2em 0em 2em 0em 2em 0em&quot; displaystyle=&quot;true&quot;><mtr><mtd><mi>C</mi><mi>r</mi><mi>i</mi><mi>m</mi><mi>i</mi><mi>n</mi><mi>a</mi><mi>l</mi><mi>i</mi><mi>t</mi><mi>y</mi><mspace width=&quot;thinmathspace&quot; /><mi>p</mi><mi>e</mi><mi>r</mi><mspace width=&quot;thinmathspace&quot; /><mn>1000</mn><mspace width=&quot;thinmathspace&quot; /><mi>i</mi><mi>n</mi><mi>h</mi><mi>a</mi><mi>b</mi><mi>i</mi><mi>t</mi><mi>a</mi><mi>n</mi><mi>t</mi><mi>s</mi></mtd><mtd><mi></mi><mo>=</mo><mi>&amp;#x03B1;</mi><mo>+</mo><msub><mi>&amp;#x03B2;</mi><mn>1</mn></msub><mi>l</mi><mi>o</mi><mi>g</mi><mo stretchy=&quot;false&quot;>(</mo><mi>G</mi><mi>D</mi><mi>P</mi><mo stretchy=&quot;false&quot;>)</mo><mo>+</mo><msub><mi>&amp;#x03B2;</mi><mn>2</mn></msub><mi>m</mi><mi>h</mi><mi mathvariant=&quot;normal&quot;>&amp;#x005F;</mi><mi>e</mi><mi>x</mi><mi>p</mi><mi mathvariant=&quot;normal&quot;>&amp;#x005F;</mi><mi>p</mi><mi>c</mi><mo>+</mo><msub><mi>&amp;#x03B2;</mi><mn>3</mn></msub><mi>p</mi><mi>e</mi><mi>r</mi><mi>c</mi><mi mathvariant=&quot;normal&quot;>&amp;#x005F;</mi><mi>b</mi><mi>s</mi><mi>c</mi><mi>h</mi><mi>o</mi><mi>l</mi><mi>d</mi><mi>e</mi><mi>r</mi><mi mathvariant=&quot;normal&quot;>&amp;#x005F;</mi><mn>25</mn><mi mathvariant=&quot;normal&quot;>&amp;#x005F;</mi><mn>44</mn><mo>+</mo></mtd></mtr><mtr><mtd /><mtd><mi></mi><mspace width=&quot;thinmathspace&quot; /><mspace width=&quot;thinmathspace&quot; /><mo>+</mo><msub><mi>&amp;#x03B2;</mi><mn>4</mn></msub><mi>W</mi><mi>h</mi><mi>i</mi><mi>t</mi><mi>e</mi><mo>+</mo><msub><mi>&amp;#x03B2;</mi><mn>5</mn></msub><mi>B</mi><mi>l</mi><mi>a</mi><mi>c</mi><mi>k</mi><mi>A</mi><mi>f</mi><mi>r</mi><mi>i</mi><mi>c</mi><mi>a</mi><mi>n</mi><mi>A</mi><mi>m</mi><mi>e</mi><mi>r</mi><mi>i</mi><mi>c</mi><mi>a</mi><mi>n</mi><mo>+</mo><msub><mi>&amp;#x03B2;</mi><mn>6</mn></msub><mi>A</mi><mi>s</mi><mi>i</mi><mi>a</mi><mi>n</mi><mo>+</mo></mtd></mtr><mtr><mtd /><mtd><mi></mi><mspace width=&quot;thinmathspace&quot; /><mspace width=&quot;thinmathspace&quot; /><mo>+</mo><msub><mi>&amp;#x03B2;</mi><mn>7</mn></msub><mi>A</mi><mi>g</mi><mi>e</mi><mi mathvariant=&quot;normal&quot;>&amp;#x005F;</mi><mn>0</mn><mi mathvariant=&quot;normal&quot;>&amp;#x005F;</mi><mn>17</mn><mo>+</mo><msub><mi>&amp;#x03B2;</mi><mn>8</mn></msub><mi>A</mi><mi>g</mi><mi>e</mi><mi mathvariant=&quot;normal&quot;>&amp;#x005F;</mi><mn>18</mn><mi mathvariant=&quot;normal&quot;>&amp;#x005F;</mi><mn>24</mn><mo>+</mo><msub><mi>&amp;#x03B2;</mi><mn>9</mn></msub><mi>A</mi><mi>g</mi><mi>e</mi><mi mathvariant=&quot;normal&quot;>&amp;#x005F;</mi><mn>25</mn><mi mathvariant=&quot;normal&quot;>&amp;#x005F;</mi><mn>44</mn><mo>+</mo></mtd></mtr><mtr><mtd /><mtd><mi></mi><mspace width=&quot;thinmathspace&quot; /><mspace width=&quot;thinmathspace&quot; /><mo>+</mo><msub><mi>&amp;#x03B2;</mi><mrow class=&quot;MJX-TeXAtom-ORD&quot;><mn>10</mn></mrow></msub><mi>A</mi><mi>g</mi><mi>e</mi><mi mathvariant=&quot;normal&quot;>&amp;#x005F;</mi><mn>45</mn><mi mathvariant=&quot;normal&quot;>&amp;#x005F;</mi><mn>64</mn><mo>+</mo><msub><mi>&amp;#x03B2;</mi><mrow class=&quot;MJX-TeXAtom-ORD&quot;><mn>11</mn></mrow></msub><mi>A</mi><mi>g</mi><mi>e</mi><mi mathvariant=&quot;normal&quot;>&amp;#x005F;</mi><mn>65</mn><mi mathvariant=&quot;normal&quot;>&amp;#x005F;</mi><mn>84</mn><mo>+</mo><msub><mi>&amp;#x03B2;</mi><mrow class=&quot;MJX-TeXAtom-ORD&quot;><mn>12</mn></mrow></msub><mi>l</mi><mi>o</mi><mi>g</mi><mo stretchy=&quot;false&quot;>(</mo><mi>p</mi><mi>o</mi><mi>p</mi><mi>u</mi><mi>l</mi><mi>a</mi><mi>t</mi><mi>i</mi><mi>o</mi><mi>n</mi><mo stretchy=&quot;false&quot;>)</mo></mtd></mtr></mtable></math>" role="presentation" style="text-align: center; position: relative;"><nobr aria-hidden="true"><span class="math" id="MathJax-Span-1" style="width: 53.476em; display: inline-block;"><span style="display: inline-block; position: relative; width: 43.12em; height: 0px; font-size: 124%;"><span style="position: absolute; clip: rect(-0.502em, 1042.89em, 4.768em, -999.998em); top: -2.38em; left: 0em;"><span class="mrow" id="MathJax-Span-2"><span class="mtable" id="MathJax-Span-3" style="padding-right: 0.186em; padding-left: 0.186em;"><span style="display: inline-block; position: relative; width: 42.753em; height: 0px;"><span style="position: absolute; clip: rect(2.889em, 1014.44em, 7.838em, -999.998em); top: -5.68em; left: 0em;"><span style="display: inline-block; position: relative; width: 14.482em; height: 0px;"><span style="position: absolute; clip: rect(3.164em, 1014.44em, 4.309em, -999.998em); top: -5.954em; right: 0em;"><span class="mtd" id="MathJax-Span-4"><span class="mrow" id="MathJax-Span-5"><span class="mi" id="MathJax-Span-6" style="font-family: MathJax_Math-italic;">C<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.048em;"></span></span><span class="mi" id="MathJax-Span-7" style="font-family: MathJax_Math-italic;">r</span><span class="mi" id="MathJax-Span-8" style="font-family: MathJax_Math-italic;">i</span><span class="mi" id="MathJax-Span-9" style="font-family: MathJax_Math-italic;">m</span><span class="mi" id="MathJax-Span-10" style="font-family: MathJax_Math-italic;">i</span><span class="mi" id="MathJax-Span-11" style="font-family: MathJax_Math-italic;">n</span><span class="mi" id="MathJax-Span-12" style="font-family: MathJax_Math-italic;">a</span><span class="mi" id="MathJax-Span-13" style="font-family: MathJax_Math-italic;">l</span><span class="mi" id="MathJax-Span-14" style="font-family: MathJax_Math-italic;">i</span><span class="mi" id="MathJax-Span-15" style="font-family: MathJax_Math-italic;">t</span><span class="mi" id="MathJax-Span-16" style="font-family: MathJax_Math-italic;">y<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.002em;"></span></span><span class="mspace" id="MathJax-Span-17" style="height: 0em; vertical-align: 0em; width: 0.186em; display: inline-block; overflow: hidden;"></span><span class="mi" id="MathJax-Span-18" style="font-family: MathJax_Math-italic;">p</span><span class="mi" id="MathJax-Span-19" style="font-family: MathJax_Math-italic;">e</span><span class="mi" id="MathJax-Span-20" style="font-family: MathJax_Math-italic;">r</span><span class="mspace" id="MathJax-Span-21" style="height: 0em; vertical-align: 0em; width: 0.186em; display: inline-block; overflow: hidden;"></span><span class="mn" id="MathJax-Span-22" style="font-family: MathJax_Main;">1000</span><span class="mspace" id="MathJax-Span-23" style="height: 0em; vertical-align: 0em; width: 0.186em; display: inline-block; overflow: hidden;"></span><span class="mi" id="MathJax-Span-24" style="font-family: MathJax_Math-italic;">i</span><span class="mi" id="MathJax-Span-25" style="font-family: MathJax_Math-italic;">n</span><span class="mi" id="MathJax-Span-26" style="font-family: MathJax_Math-italic;">h</span><span class="mi" id="MathJax-Span-27" style="font-family: MathJax_Math-italic;">a</span><span class="mi" id="MathJax-Span-28" style="font-family: MathJax_Math-italic;">b</span><span class="mi" id="MathJax-Span-29" style="font-family: MathJax_Math-italic;">i</span><span class="mi" id="MathJax-Span-30" style="font-family: MathJax_Math-italic;">t</span><span class="mi" id="MathJax-Span-31" style="font-family: MathJax_Math-italic;">a</span><span class="mi" id="MathJax-Span-32" style="font-family: MathJax_Math-italic;">n</span><span class="mi" id="MathJax-Span-33" style="font-family: MathJax_Math-italic;">t</span><span class="mi" id="MathJax-Span-34" style="font-family: MathJax_Math-italic;">s</span></span></span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span><span style="position: absolute; clip: rect(3.851em, 1000em, 4.126em, -999.998em); top: -4.58em; right: 0em;"><span class="mtd" id="MathJax-Span-88"><span class="mrow" id="MathJax-Span-89"></span></span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span><span style="position: absolute; clip: rect(3.851em, 1000em, 4.126em, -999.998em); top: -3.297em; right: 0em;"><span class="mtd" id="MathJax-Span-138"><span class="mrow" id="MathJax-Span-139"></span></span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span><span style="position: absolute; clip: rect(3.851em, 1000em, 4.126em, -999.998em); top: -1.968em; right: 0em;"><span class="mtd" id="MathJax-Span-179"><span class="mrow" id="MathJax-Span-180"></span></span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span></span><span style="display: inline-block; width: 0px; height: 5.684em;"></span></span><span style="position: absolute; clip: rect(3.118em, 1028.23em, 8.342em, -999.998em); top: -5.954em; left: 14.482em;"><span style="display: inline-block; position: relative; width: 28.274em; height: 0px;"><span style="position: absolute; clip: rect(3.118em, 1028.23em, 4.355em, -999.998em); top: -5.954em; left: 0em;"><span class="mtd" id="MathJax-Span-35"><span class="mrow" id="MathJax-Span-36"><span class="mi" id="MathJax-Span-37"></span><span class="mo" id="MathJax-Span-38" style="font-family: MathJax_Main; padding-left: 0.277em;">=</span><span class="mi" id="MathJax-Span-39" style="font-family: MathJax_Math-italic; padding-left: 0.277em;">α</span><span class="mo" id="MathJax-Span-40" style="font-family: MathJax_Main; padding-left: 0.231em;">+</span><span class="msubsup" id="MathJax-Span-41" style="padding-left: 0.231em;"><span style="display: inline-block; position: relative; width: 1.01em; height: 0px;"><span style="position: absolute; clip: rect(3.164em, 1000.6em, 4.309em, -999.998em); top: -3.984em; left: 0em;"><span class="mi" id="MathJax-Span-42" style="font-family: MathJax_Math-italic;">β<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.002em;"></span></span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span><span style="position: absolute; top: -3.847em; left: 0.552em;"><span class="mn" id="MathJax-Span-43" style="font-size: 70.7%; font-family: MathJax_Main;">1</span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span></span></span><span class="mi" id="MathJax-Span-44" style="font-family: MathJax_Math-italic;">l</span><span class="mi" id="MathJax-Span-45" style="font-family: MathJax_Math-italic;">o</span><span class="mi" id="MathJax-Span-46" style="font-family: MathJax_Math-italic;">g<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.002em;"></span></span><span class="mo" id="MathJax-Span-47" style="font-family: MathJax_Main;">(</span><span class="mi" id="MathJax-Span-48" style="font-family: MathJax_Math-italic;">G</span><span class="mi" id="MathJax-Span-49" style="font-family: MathJax_Math-italic;">D</span><span class="mi" id="MathJax-Span-50" style="font-family: MathJax_Math-italic;">P<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.094em;"></span></span><span class="mo" id="MathJax-Span-51" style="font-family: MathJax_Main;">)</span><span class="mo" id="MathJax-Span-52" style="font-family: MathJax_Main; padding-left: 0.231em;">+</span><span class="msubsup" id="MathJax-Span-53" style="padding-left: 0.231em;"><span style="display: inline-block; position: relative; width: 1.01em; height: 0px;"><span style="position: absolute; clip: rect(3.164em, 1000.6em, 4.309em, -999.998em); top: -3.984em; left: 0em;"><span class="mi" id="MathJax-Span-54" style="font-family: MathJax_Math-italic;">β<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.002em;"></span></span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span><span style="position: absolute; top: -3.847em; left: 0.552em;"><span class="mn" id="MathJax-Span-55" style="font-size: 70.7%; font-family: MathJax_Main;">2</span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span></span></span><span class="mi" id="MathJax-Span-56" style="font-family: MathJax_Math-italic;">m</span><span class="mi" id="MathJax-Span-57" style="font-family: MathJax_Math-italic;">h</span><span class="mi" id="MathJax-Span-58" style="font-family: MathJax_Main;">_</span><span class="mi" id="MathJax-Span-59" style="font-family: MathJax_Math-italic;">e</span><span class="mi" id="MathJax-Span-60" style="font-family: MathJax_Math-italic;">x</span><span class="mi" id="MathJax-Span-61" style="font-family: MathJax_Math-italic;">p</span><span class="mi" id="MathJax-Span-62" style="font-family: MathJax_Main;">_</span><span class="mi" id="MathJax-Span-63" style="font-family: MathJax_Math-italic;">p</span><span class="mi" id="MathJax-Span-64" style="font-family: MathJax_Math-italic;">c</span><span class="mo" id="MathJax-Span-65" style="font-family: MathJax_Main; padding-left: 0.231em;">+</span><span class="msubsup" id="MathJax-Span-66" style="padding-left: 0.231em;"><span style="display: inline-block; position: relative; width: 1.01em; height: 0px;"><span style="position: absolute; clip: rect(3.164em, 1000.6em, 4.309em, -999.998em); top: -3.984em; left: 0em;"><span class="mi" id="MathJax-Span-67" style="font-family: MathJax_Math-italic;">β<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.002em;"></span></span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span><span style="position: absolute; top: -3.847em; left: 0.552em;"><span class="mn" id="MathJax-Span-68" style="font-size: 70.7%; font-family: MathJax_Main;">3</span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span></span></span><span class="mi" id="MathJax-Span-69" style="font-family: MathJax_Math-italic;">p</span><span class="mi" id="MathJax-Span-70" style="font-family: MathJax_Math-italic;">e</span><span class="mi" id="MathJax-Span-71" style="font-family: MathJax_Math-italic;">r</span><span class="mi" id="MathJax-Span-72" style="font-family: MathJax_Math-italic;">c</span><span class="mi" id="MathJax-Span-73" style="font-family: MathJax_Main;">_</span><span class="mi" id="MathJax-Span-74" style="font-family: MathJax_Math-italic;">b</span><span class="mi" id="MathJax-Span-75" style="font-family: MathJax_Math-italic;">s</span><span class="mi" id="MathJax-Span-76" style="font-family: MathJax_Math-italic;">c</span><span class="mi" id="MathJax-Span-77" style="font-family: MathJax_Math-italic;">h</span><span class="mi" id="MathJax-Span-78" style="font-family: MathJax_Math-italic;">o</span><span class="mi" id="MathJax-Span-79" style="font-family: MathJax_Math-italic;">l</span><span class="mi" id="MathJax-Span-80" style="font-family: MathJax_Math-italic;">d<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.002em;"></span></span><span class="mi" id="MathJax-Span-81" style="font-family: MathJax_Math-italic;">e</span><span class="mi" id="MathJax-Span-82" style="font-family: MathJax_Math-italic;">r</span><span class="mi" id="MathJax-Span-83" style="font-family: MathJax_Main;">_</span><span class="mn" id="MathJax-Span-84" style="font-family: MathJax_Main;">25</span><span class="mi" id="MathJax-Span-85" style="font-family: MathJax_Main;">_</span><span class="mn" id="MathJax-Span-86" style="font-family: MathJax_Main;">44</span><span class="mo" id="MathJax-Span-87" style="font-family: MathJax_Main;">+</span></span></span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span><span style="position: absolute; clip: rect(3.118em, 1023.92em, 4.309em, -999.998em); top: -4.58em; left: 0em;"><span class="mtd" id="MathJax-Span-90"><span class="mrow" id="MathJax-Span-91"><span class="mi" id="MathJax-Span-92"></span><span class="mspace" id="MathJax-Span-93" style="height: 0em; vertical-align: 0em; width: 0.186em; display: inline-block; overflow: hidden;"></span><span class="mspace" id="MathJax-Span-94" style="height: 0em; vertical-align: 0em; width: 0.186em; display: inline-block; overflow: hidden;"></span><span class="mo" id="MathJax-Span-95" style="font-family: MathJax_Main; padding-left: 0.231em;">+</span><span class="msubsup" id="MathJax-Span-96" style="padding-left: 0.231em;"><span style="display: inline-block; position: relative; width: 1.01em; height: 0px;"><span style="position: absolute; clip: rect(3.164em, 1000.6em, 4.309em, -999.998em); top: -3.984em; left: 0em;"><span class="mi" id="MathJax-Span-97" style="font-family: MathJax_Math-italic;">β<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.002em;"></span></span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span><span style="position: absolute; top: -3.847em; left: 0.552em;"><span class="mn" id="MathJax-Span-98" style="font-size: 70.7%; font-family: MathJax_Main;">4</span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span></span></span><span class="mi" id="MathJax-Span-99" style="font-family: MathJax_Math-italic;">W<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.094em;"></span></span><span class="mi" id="MathJax-Span-100" style="font-family: MathJax_Math-italic;">h</span><span class="mi" id="MathJax-Span-101" style="font-family: MathJax_Math-italic;">i</span><span class="mi" id="MathJax-Span-102" style="font-family: MathJax_Math-italic;">t</span><span class="mi" id="MathJax-Span-103" style="font-family: MathJax_Math-italic;">e</span><span class="mo" id="MathJax-Span-104" style="font-family: MathJax_Main; padding-left: 0.231em;">+</span><span class="msubsup" id="MathJax-Span-105" style="padding-left: 0.231em;"><span style="display: inline-block; position: relative; width: 1.01em; height: 0px;"><span style="position: absolute; clip: rect(3.164em, 1000.6em, 4.309em, -999.998em); top: -3.984em; left: 0em;"><span class="mi" id="MathJax-Span-106" style="font-family: MathJax_Math-italic;">β<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.002em;"></span></span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span><span style="position: absolute; top: -3.847em; left: 0.552em;"><span class="mn" id="MathJax-Span-107" style="font-size: 70.7%; font-family: MathJax_Main;">5</span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span></span></span><span class="mi" id="MathJax-Span-108" style="font-family: MathJax_Math-italic;">B</span><span class="mi" id="MathJax-Span-109" style="font-family: MathJax_Math-italic;">l</span><span class="mi" id="MathJax-Span-110" style="font-family: MathJax_Math-italic;">a</span><span class="mi" id="MathJax-Span-111" style="font-family: MathJax_Math-italic;">c</span><span class="mi" id="MathJax-Span-112" style="font-family: MathJax_Math-italic;">k</span><span class="mi" id="MathJax-Span-113" style="font-family: MathJax_Math-italic;">A</span><span class="mi" id="MathJax-Span-114" style="font-family: MathJax_Math-italic;">f<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.048em;"></span></span><span class="mi" id="MathJax-Span-115" style="font-family: MathJax_Math-italic;">r</span><span class="mi" id="MathJax-Span-116" style="font-family: MathJax_Math-italic;">i</span><span class="mi" id="MathJax-Span-117" style="font-family: MathJax_Math-italic;">c</span><span class="mi" id="MathJax-Span-118" style="font-family: MathJax_Math-italic;">a</span><span class="mi" id="MathJax-Span-119" style="font-family: MathJax_Math-italic;">n</span><span class="mi" id="MathJax-Span-120" style="font-family: MathJax_Math-italic;">A</span><span class="mi" id="MathJax-Span-121" style="font-family: MathJax_Math-italic;">m</span><span class="mi" id="MathJax-Span-122" style="font-family: MathJax_Math-italic;">e</span><span class="mi" id="MathJax-Span-123" style="font-family: MathJax_Math-italic;">r</span><span class="mi" id="MathJax-Span-124" style="font-family: MathJax_Math-italic;">i</span><span class="mi" id="MathJax-Span-125" style="font-family: MathJax_Math-italic;">c</span><span class="mi" id="MathJax-Span-126" style="font-family: MathJax_Math-italic;">a</span><span class="mi" id="MathJax-Span-127" style="font-family: MathJax_Math-italic;">n</span><span class="mo" id="MathJax-Span-128" style="font-family: MathJax_Main; padding-left: 0.231em;">+</span><span class="msubsup" id="MathJax-Span-129" style="padding-left: 0.231em;"><span style="display: inline-block; position: relative; width: 1.01em; height: 0px;"><span style="position: absolute; clip: rect(3.164em, 1000.6em, 4.309em, -999.998em); top: -3.984em; left: 0em;"><span class="mi" id="MathJax-Span-130" style="font-family: MathJax_Math-italic;">β<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.002em;"></span></span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span><span style="position: absolute; top: -3.847em; left: 0.552em;"><span class="mn" id="MathJax-Span-131" style="font-size: 70.7%; font-family: MathJax_Main;">6</span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span></span></span><span class="mi" id="MathJax-Span-132" style="font-family: MathJax_Math-italic;">A</span><span class="mi" id="MathJax-Span-133" style="font-family: MathJax_Math-italic;">s</span><span class="mi" id="MathJax-Span-134" style="font-family: MathJax_Math-italic;">i</span><span class="mi" id="MathJax-Span-135" style="font-family: MathJax_Math-italic;">a</span><span class="mi" id="MathJax-Span-136" style="font-family: MathJax_Math-italic;">n</span><span class="mo" id="MathJax-Span-137" style="font-family: MathJax_Main;">+</span></span></span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span><span style="position: absolute; clip: rect(3.118em, 1021.36em, 4.309em, -999.998em); top: -3.297em; left: 0em;"><span class="mtd" id="MathJax-Span-140"><span class="mrow" id="MathJax-Span-141"><span class="mi" id="MathJax-Span-142"></span><span class="mspace" id="MathJax-Span-143" style="height: 0em; vertical-align: 0em; width: 0.186em; display: inline-block; overflow: hidden;"></span><span class="mspace" id="MathJax-Span-144" style="height: 0em; vertical-align: 0em; width: 0.186em; display: inline-block; overflow: hidden;"></span><span class="mo" id="MathJax-Span-145" style="font-family: MathJax_Main; padding-left: 0.231em;">+</span><span class="msubsup" id="MathJax-Span-146" style="padding-left: 0.231em;"><span style="display: inline-block; position: relative; width: 1.01em; height: 0px;"><span style="position: absolute; clip: rect(3.164em, 1000.6em, 4.309em, -999.998em); top: -3.984em; left: 0em;"><span class="mi" id="MathJax-Span-147" style="font-family: MathJax_Math-italic;">β<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.002em;"></span></span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span><span style="position: absolute; top: -3.847em; left: 0.552em;"><span class="mn" id="MathJax-Span-148" style="font-size: 70.7%; font-family: MathJax_Main;">7</span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span></span></span><span class="mi" id="MathJax-Span-149" style="font-family: MathJax_Math-italic;">A</span><span class="mi" id="MathJax-Span-150" style="font-family: MathJax_Math-italic;">g<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.002em;"></span></span><span class="mi" id="MathJax-Span-151" style="font-family: MathJax_Math-italic;">e</span><span class="mi" id="MathJax-Span-152" style="font-family: MathJax_Main;">_</span><span class="mn" id="MathJax-Span-153" style="font-family: MathJax_Main;">0</span><span class="mi" id="MathJax-Span-154" style="font-family: MathJax_Main;">_</span><span class="mn" id="MathJax-Span-155" style="font-family: MathJax_Main;">17</span><span class="mo" id="MathJax-Span-156" style="font-family: MathJax_Main; padding-left: 0.231em;">+</span><span class="msubsup" id="MathJax-Span-157" style="padding-left: 0.231em;"><span style="display: inline-block; position: relative; width: 1.01em; height: 0px;"><span style="position: absolute; clip: rect(3.164em, 1000.6em, 4.309em, -999.998em); top: -3.984em; left: 0em;"><span class="mi" id="MathJax-Span-158" style="font-family: MathJax_Math-italic;">β<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.002em;"></span></span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span><span style="position: absolute; top: -3.847em; left: 0.552em;"><span class="mn" id="MathJax-Span-159" style="font-size: 70.7%; font-family: MathJax_Main;">8</span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span></span></span><span class="mi" id="MathJax-Span-160" style="font-family: MathJax_Math-italic;">A</span><span class="mi" id="MathJax-Span-161" style="font-family: MathJax_Math-italic;">g<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.002em;"></span></span><span class="mi" id="MathJax-Span-162" style="font-family: MathJax_Math-italic;">e</span><span class="mi" id="MathJax-Span-163" style="font-family: MathJax_Main;">_</span><span class="mn" id="MathJax-Span-164" style="font-family: MathJax_Main;">18</span><span class="mi" id="MathJax-Span-165" style="font-family: MathJax_Main;">_</span><span class="mn" id="MathJax-Span-166" style="font-family: MathJax_Main;">24</span><span class="mo" id="MathJax-Span-167" style="font-family: MathJax_Main; padding-left: 0.231em;">+</span><span class="msubsup" id="MathJax-Span-168" style="padding-left: 0.231em;"><span style="display: inline-block; position: relative; width: 1.01em; height: 0px;"><span style="position: absolute; clip: rect(3.164em, 1000.6em, 4.309em, -999.998em); top: -3.984em; left: 0em;"><span class="mi" id="MathJax-Span-169" style="font-family: MathJax_Math-italic;">β<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.002em;"></span></span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span><span style="position: absolute; top: -3.847em; left: 0.552em;"><span class="mn" id="MathJax-Span-170" style="font-size: 70.7%; font-family: MathJax_Main;">9</span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span></span></span><span class="mi" id="MathJax-Span-171" style="font-family: MathJax_Math-italic;">A</span><span class="mi" id="MathJax-Span-172" style="font-family: MathJax_Math-italic;">g<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.002em;"></span></span><span class="mi" id="MathJax-Span-173" style="font-family: MathJax_Math-italic;">e</span><span class="mi" id="MathJax-Span-174" style="font-family: MathJax_Main;">_</span><span class="mn" id="MathJax-Span-175" style="font-family: MathJax_Main;">25</span><span class="mi" id="MathJax-Span-176" style="font-family: MathJax_Main;">_</span><span class="mn" id="MathJax-Span-177" style="font-family: MathJax_Main;">44</span><span class="mo" id="MathJax-Span-178" style="font-family: MathJax_Main;">+</span></span></span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span><span style="position: absolute; clip: rect(3.118em, 1024.1em, 4.355em, -999.998em); top: -1.968em; left: 0em;"><span class="mtd" id="MathJax-Span-181"><span class="mrow" id="MathJax-Span-182"><span class="mi" id="MathJax-Span-183"></span><span class="mspace" id="MathJax-Span-184" style="height: 0em; vertical-align: 0em; width: 0.186em; display: inline-block; overflow: hidden;"></span><span class="mspace" id="MathJax-Span-185" style="height: 0em; vertical-align: 0em; width: 0.186em; display: inline-block; overflow: hidden;"></span><span class="mo" id="MathJax-Span-186" style="font-family: MathJax_Main; padding-left: 0.231em;">+</span><span class="msubsup" id="MathJax-Span-187" style="padding-left: 0.231em;"><span style="display: inline-block; position: relative; width: 1.331em; height: 0px;"><span style="position: absolute; clip: rect(3.164em, 1000.6em, 4.309em, -999.998em); top: -3.984em; left: 0em;"><span class="mi" id="MathJax-Span-188" style="font-family: MathJax_Math-italic;">β<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.002em;"></span></span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span><span style="position: absolute; top: -3.847em; left: 0.552em;"><span class="texatom" id="MathJax-Span-189"><span class="mrow" id="MathJax-Span-190"><span class="mn" id="MathJax-Span-191" style="font-size: 70.7%; font-family: MathJax_Main;">10</span></span></span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span></span></span><span class="mi" id="MathJax-Span-192" style="font-family: MathJax_Math-italic;">A</span><span class="mi" id="MathJax-Span-193" style="font-family: MathJax_Math-italic;">g<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.002em;"></span></span><span class="mi" id="MathJax-Span-194" style="font-family: MathJax_Math-italic;">e</span><span class="mi" id="MathJax-Span-195" style="font-family: MathJax_Main;">_</span><span class="mn" id="MathJax-Span-196" style="font-family: MathJax_Main;">45</span><span class="mi" id="MathJax-Span-197" style="font-family: MathJax_Main;">_</span><span class="mn" id="MathJax-Span-198" style="font-family: MathJax_Main;">64</span><span class="mo" id="MathJax-Span-199" style="font-family: MathJax_Main; padding-left: 0.231em;">+</span><span class="msubsup" id="MathJax-Span-200" style="padding-left: 0.231em;"><span style="display: inline-block; position: relative; width: 1.331em; height: 0px;"><span style="position: absolute; clip: rect(3.164em, 1000.6em, 4.309em, -999.998em); top: -3.984em; left: 0em;"><span class="mi" id="MathJax-Span-201" style="font-family: MathJax_Math-italic;">β<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.002em;"></span></span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span><span style="position: absolute; top: -3.847em; left: 0.552em;"><span class="texatom" id="MathJax-Span-202"><span class="mrow" id="MathJax-Span-203"><span class="mn" id="MathJax-Span-204" style="font-size: 70.7%; font-family: MathJax_Main;">11</span></span></span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span></span></span><span class="mi" id="MathJax-Span-205" style="font-family: MathJax_Math-italic;">A</span><span class="mi" id="MathJax-Span-206" style="font-family: MathJax_Math-italic;">g<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.002em;"></span></span><span class="mi" id="MathJax-Span-207" style="font-family: MathJax_Math-italic;">e</span><span class="mi" id="MathJax-Span-208" style="font-family: MathJax_Main;">_</span><span class="mn" id="MathJax-Span-209" style="font-family: MathJax_Main;">65</span><span class="mi" id="MathJax-Span-210" style="font-family: MathJax_Main;">_</span><span class="mn" id="MathJax-Span-211" style="font-family: MathJax_Main;">84</span><span class="mo" id="MathJax-Span-212" style="font-family: MathJax_Main; padding-left: 0.231em;">+</span><span class="msubsup" id="MathJax-Span-213" style="padding-left: 0.231em;"><span style="display: inline-block; position: relative; width: 1.331em; height: 0px;"><span style="position: absolute; clip: rect(3.164em, 1000.6em, 4.309em, -999.998em); top: -3.984em; left: 0em;"><span class="mi" id="MathJax-Span-214" style="font-family: MathJax_Math-italic;">β<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.002em;"></span></span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span><span style="position: absolute; top: -3.847em; left: 0.552em;"><span class="texatom" id="MathJax-Span-215"><span class="mrow" id="MathJax-Span-216"><span class="mn" id="MathJax-Span-217" style="font-size: 70.7%; font-family: MathJax_Main;">12</span></span></span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span></span></span><span class="mi" id="MathJax-Span-218" style="font-family: MathJax_Math-italic;">l</span><span class="mi" id="MathJax-Span-219" style="font-family: MathJax_Math-italic;">o</span><span class="mi" id="MathJax-Span-220" style="font-family: MathJax_Math-italic;">g<span style="display: inline-block; overflow: hidden; height: 1px; width: 0.002em;"></span></span><span class="mo" id="MathJax-Span-221" style="font-family: MathJax_Main;">(</span><span class="mi" id="MathJax-Span-222" style="font-family: MathJax_Math-italic;">p</span><span class="mi" id="MathJax-Span-223" style="font-family: MathJax_Math-italic;">o</span><span class="mi" id="MathJax-Span-224" style="font-family: MathJax_Math-italic;">p</span><span class="mi" id="MathJax-Span-225" style="font-family: MathJax_Math-italic;">u</span><span class="mi" id="MathJax-Span-226" style="font-family: MathJax_Math-italic;">l</span><span class="mi" id="MathJax-Span-227" style="font-family: MathJax_Math-italic;">a</span><span class="mi" id="MathJax-Span-228" style="font-family: MathJax_Math-italic;">t</span><span class="mi" id="MathJax-Span-229" style="font-family: MathJax_Math-italic;">i</span><span class="mi" id="MathJax-Span-230" style="font-family: MathJax_Math-italic;">o</span><span class="mi" id="MathJax-Span-231" style="font-family: MathJax_Math-italic;">n</span><span class="mo" id="MathJax-Span-232" style="font-family: MathJax_Main;">)</span></span></span><span style="display: inline-block; width: 0px; height: 3.989em;"></span></span></span><span style="display: inline-block; width: 0px; height: 5.959em;"></span></span></span></span></span><span style="display: inline-block; width: 0px; height: 2.385em;"></span></span></span><span style="display: inline-block; overflow: hidden; vertical-align: -2.838em; border-left: 0px solid; width: 0px; height: 6.31em;"></span></span></nobr><span class="MJX_Assistive_MathML MJX_Assistive_MathML_Block" role="presentation"><math xmlns="http://www.w3.org/1998/Math/MathML" display="block"><mtable columnalign="right left right left right left right left right left right left" rowspacing="3pt" columnspacing="0em 2em 0em 2em 0em 2em 0em 2em 0em 2em 0em" displaystyle="true"><mtr><mtd><mi>C</mi><mi>r</mi><mi>i</mi><mi>m</mi><mi>i</mi><mi>n</mi><mi>a</mi><mi>l</mi><mi>i</mi><mi>t</mi><mi>y</mi><mspace width="thinmathspace"></mspace><mi>p</mi><mi>e</mi><mi>r</mi><mspace width="thinmathspace"></mspace><mn>1000</mn><mspace width="thinmathspace"></mspace><mi>i</mi><mi>n</mi><mi>h</mi><mi>a</mi><mi>b</mi><mi>i</mi><mi>t</mi><mi>a</mi><mi>n</mi><mi>t</mi><mi>s</mi></mtd><mtd><mi></mi><mo>=</mo><mi>α</mi><mo>+</mo><msub><mi>β</mi><mn>1</mn></msub><mi>l</mi><mi>o</mi><mi>g</mi><mo stretchy="false">(</mo><mi>G</mi><mi>D</mi><mi>P</mi><mo stretchy="false">)</mo><mo>+</mo><msub><mi>β</mi><mn>2</mn></msub><mi>m</mi><mi>h</mi><mi mathvariant="normal">_</mi><mi>e</mi><mi>x</mi><mi>p</mi><mi mathvariant="normal">_</mi><mi>p</mi><mi>c</mi><mo>+</mo><msub><mi>β</mi><mn>3</mn></msub><mi>p</mi><mi>e</mi><mi>r</mi><mi>c</mi><mi mathvariant="normal">_</mi><mi>b</mi><mi>s</mi><mi>c</mi><mi>h</mi><mi>o</mi><mi>l</mi><mi>d</mi><mi>e</mi><mi>r</mi><mi mathvariant="normal">_</mi><mn>25</mn><mi mathvariant="normal">_</mi><mn>44</mn><mo>+</mo></mtd></mtr><mtr><mtd></mtd><mtd><mi></mi><mspace width="thinmathspace"></mspace><mspace width="thinmathspace"></mspace><mo>+</mo><msub><mi>β</mi><mn>4</mn></msub><mi>W</mi><mi>h</mi><mi>i</mi><mi>t</mi><mi>e</mi><mo>+</mo><msub><mi>β</mi><mn>5</mn></msub><mi>B</mi><mi>l</mi><mi>a</mi><mi>c</mi><mi>k</mi><mi>A</mi><mi>f</mi><mi>r</mi><mi>i</mi><mi>c</mi><mi>a</mi><mi>n</mi><mi>A</mi><mi>m</mi><mi>e</mi><mi>r</mi><mi>i</mi><mi>c</mi><mi>a</mi><mi>n</mi><mo>+</mo><msub><mi>β</mi><mn>6</mn></msub><mi>A</mi><mi>s</mi><mi>i</mi><mi>a</mi><mi>n</mi><mo>+</mo></mtd></mtr><mtr><mtd></mtd><mtd><mi></mi><mspace width="thinmathspace"></mspace><mspace width="thinmathspace"></mspace><mo>+</mo><msub><mi>β</mi><mn>7</mn></msub><mi>A</mi><mi>g</mi><mi>e</mi><mi mathvariant="normal">_</mi><mn>0</mn><mi mathvariant="normal">_</mi><mn>17</mn><mo>+</mo><msub><mi>β</mi><mn>8</mn></msub><mi>A</mi><mi>g</mi><mi>e</mi><mi mathvariant="normal">_</mi><mn>18</mn><mi mathvariant="normal">_</mi><mn>24</mn><mo>+</mo><msub><mi>β</mi><mn>9</mn></msub><mi>A</mi><mi>g</mi><mi>e</mi><mi mathvariant="normal">_</mi><mn>25</mn><mi mathvariant="normal">_</mi><mn>44</mn><mo>+</mo></mtd></mtr><mtr><mtd></mtd><mtd><mi></mi><mspace width="thinmathspace"></mspace><mspace width="thinmathspace"></mspace><mo>+</mo><msub><mi>β</mi><mrow class="MJX-TeXAtom-ORD"><mn>10</mn></mrow></msub><mi>A</mi><mi>g</mi><mi>e</mi><mi mathvariant="normal">_</mi><mn>45</mn><mi mathvariant="normal">_</mi><mn>64</mn><mo>+</mo><msub><mi>β</mi><mrow class="MJX-TeXAtom-ORD"><mn>11</mn></mrow></msub><mi>A</mi><mi>g</mi><mi>e</mi><mi mathvariant="normal">_</mi><mn>65</mn><mi mathvariant="normal">_</mi><mn>84</mn><mo>+</mo><msub><mi>β</mi><mrow class="MJX-TeXAtom-ORD"><mn>12</mn></mrow></msub><mi>l</mi><mi>o</mi><mi>g</mi><mo stretchy="false">(</mo><mi>p</mi><mi>o</mi><mi>p</mi><mi>u</mi><mi>l</mi><mi>a</mi><mi>t</mi><mi>i</mi><mi>o</mi><mi>n</mi><mo stretchy="false">)</mo></mtd></mtr></mtable></math></span></span></div><script type="math/tex; mode=display" id="MathJax-Element-1">
\begin{align*}
Criminality \, per \, 1000 \, inhabitants&=\alpha+\beta_1log(GDP)+\beta_2mh\_exp\_pc+\beta_3perc\_bscholder\_25\_44+\\ & \,\,+\beta_4 White+\beta_5 BlackAfricanAmerican+\beta_6Asian + \\
& \,\, + \beta_7Age\_0\_17 + \beta_8Age\_18\_24+ \beta_9Age\_25\_44+ \\ & \,\,+\beta_{10}Age\_45\_64+ \beta_{11}Age\_65\_84+\beta_{12}log(population)
\end{align*}
</script></span>


Running the regression we obtain the following coefficients' estimates:

<table style="border-collapse:collapse; border:none;">
<caption style="font-weight: bold; text-align:left;">Standard OLS, dependent variable: Total Criminality per 1000 inhabitants</caption>
<tr>
<th style="border-top: double; text-align:center; font-style:normal; font-weight:bold; padding:0.2cm;  text-align:left; ">&nbsp;</th>
<th colspan="3" style="border-top: double; text-align:center; font-style:normal; font-weight:bold; padding:0.2cm; ">total_criminality</th>
</tr>
<tr>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  text-align:left; ">Predictors</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">Estimates</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">CI</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">p</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">(Intercept)</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;146.90</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;254.92&nbsp;&ndash;&nbsp;-38.88</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>0.008</strong></td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Current_dollar_GDP_millions<br>[log]</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">4.73</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">3.52&nbsp;&ndash;&nbsp;5.94</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>&lt;0.001</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">mh_exp_pc [log]</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;0.30</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;0.73&nbsp;&ndash;&nbsp;0.12</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.162</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">perc_bscholder_25_44</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;0.09</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;0.15&nbsp;&ndash;&nbsp;-0.03</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>0.002</strong></td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">White</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;30.76</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;36.96&nbsp;&ndash;&nbsp;-24.57</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>&lt;0.001</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">BlackAfricanAmerican</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;19.52</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;25.57&nbsp;&ndash;&nbsp;-13.48</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>&lt;0.001</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Asian</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;58.17</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;69.43&nbsp;&ndash;&nbsp;-46.90</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>&lt;0.001</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Age_0_17</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">158.71</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">50.56&nbsp;&ndash;&nbsp;266.85</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>0.004</strong></td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Age_18_24</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">197.17</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">78.31&nbsp;&ndash;&nbsp;316.04</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>0.001</strong></td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Age_25_44</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">241.96</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">142.86&nbsp;&ndash;&nbsp;341.06</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>&lt;0.001</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Age_45_64</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">161.16</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">55.17&nbsp;&ndash;&nbsp;267.14</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>0.003</strong></td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Age_65_84</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">255.53</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">128.73&nbsp;&ndash;&nbsp;382.32</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>&lt;0.001</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">population [log]</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;4.20</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;5.41&nbsp;&ndash;&nbsp;-2.98</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>&lt;0.001</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; padding-top:0.1cm; padding-bottom:0.1cm; border-top:1px solid;">Observations</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left; border-top:1px solid;" colspan="3">505</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; padding-top:0.1cm; padding-bottom:0.1cm;">R<sup>2</sup> / R<sup>2</sup> adjusted</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left;" colspan="3">0.648 / 0.639</td>
</tr>

</table>

We notice that GDP, mh_exp_pc and education's proxy have coefficients which we could have expected by the EDA we have done previously. Indeed, GDP increases criminality while mental health expenditure and education seems to decrease it. 
Although, among them only $log(GDP)$ and education are statistically significant.
Surprisingly, all races have a negative effect on criminality. This doesn't sound a convincing result since the correlation of criminality with black-african american seemed positive in the corrplot in the EDA section. 
By looking at the table, we see that all groups of age in percentage of the population are significant. Although, being all coefficients positive, we think there could be some mi-specification leading to biased estimators.
In general, we don't think this regression can be informative for us, since we are not considering characteristics specific to the country and the year. Indeed, using a standard OLS we ignore the fact that our data-set is a panel data.

Therefore, we tried to identify our data-frame as a panel data and to compute regression with fixed effect, random effect and first difference. 
Before proceeding we will explain briefly each of them:

* <b>Fixed Effect: </b> using a "within" method allows to control for variables which remain constant over time. In our case, any change given from being a certain state in US to criminality, is the same.
* <b>Random Effect:</b> these are the opposite of the one above. Taking random effects into account, is like taking into account effects which are unpredictable.
* <b>First Difference:</b> this method is used to deal with omitted variable problem in panel data and it is consistent under the same assumption of the fixed effect method. As the fixed effect method it accounts for effects which are constant over time, indeed with T=2 the two should give the same result.

We try to run all regressions, but after some consideration we think the most appropriate for our case is <b>fixed effect</b> method and the reasons are:

* Doing an Hausman test between the fixed effect and the random effect regressions we end up selecting the first one. Indeed, the random effect method includes additional strong assumptions (such as unobserved heterogeneity and independent variables being uncorrelated) than the fixed effect. If these are true, then it would be more efficient to accept the coefficients resulting from the random effect regression. Although, if these assumptions don't hold we would have wrong results. 
We try the Hausman test for many regression (with dependent variable: each crime separately and total crimes as well as total crimes minus rape) and for all it turns out that we should favor the fixed effect regression.
i.e.: for total criminality as dependent variable we obtain a low p-value. This means that we can reject the hypothesis of the two regressions giving same results with a 1% statistical significance. Thus, the random effect method would give us biased results.
(Notice that when computing the regression with Random Effects you can include also control variables which are constant overtime; indeed, we include also region when trying the RE regression).
* Both fixed effect and first difference take into account fixed effect, allowing us to deal with possible omitted variable which are constant overtime. This holds since these method deals with time invariant unobserved variables. Indeed, first difference method is another way to remove unobserved heterogeneities subtracting the lagged observation rather than group mean, as in fixed effect.
First differencing is usually suggested when the number of observations N is small, and you have observation for a long time framework (i.e. T is large).
Although, in our case, we only have T=10, while we have 52 different unit, if we consider the total United States too, 51 otherwise. For this reason we decide to use Fixed Effect.

An additional consideration we do is whether to use or not clustered standard errors. 
The advantage of using them would be to account for within-cluster correlation or heteroskedasticity which the fixed-effects estimator alone does not take into account. Notice that cluster-adjusted standard error take into account standard error but leave your point estimates unchanged. 
The results are not changing in a relevant way considering clustered-adjusted standard errors or not, though.

We would like to point out also another thought we had while running regressions. 
In the EDA part we have seen how Rape seems to be the only kind of crime, among the one we are considering, to behave and to be influenced differently by GDP and slightly also by the other variables. 
For this reason we tried to run different regressions, with as dependent variable (in per 1000 term):

* a group of all crimes but rape 
* all crimes
* each single crime on its own

In all the regressions we don't consider Unites States since would be redundant, being a total of the other states.

## Analysis through Regressions: Methodolody and Results

We report here the results which are worth mentioning in our opinion. As said above, we select the fixed effect method. 
The model is:

$$
\begin{align*}
Y_{i,t} &=\alpha+\beta_1log(GDP)+\beta_2mh\_exp\_pc+\beta_3perc\_bscholder\_25\_44+\\ & \,\,+\beta_4 White+\beta_5 BlackAfricanAmerican+\beta_6Asian + \\
& \,\, + \beta_7Age\_0\_17 + \beta_8Age\_18\_24+ \beta_9Age\_25\_44+ \\ & \,\,+\beta_{10}Age\_45\_64+ \beta_{11}Age\_65\_84+\beta_{12}log(population)
\end{align*}
$$
$Y_{i,t}$ refers to the dependent variable for state $i$ at time $t$.
The estimation is done considering $Y_{i,t}-\bar{Y_i}$, where $\bar{Y_i}$ is the mean dependent variable for the state $i$. Indeed, $\alpha$ will not appear among the estimates, as it is constant overtime and cancels out.

For total criminality regression's results are:

<table style="border-collapse:collapse; border:none;">
<caption style="font-weight: bold; text-align:left;">Fixed Effect, dependent variable: Total Criminality per 1000 inhabitants</caption>
<tr>
<th style="border-top: double; text-align:center; font-style:normal; font-weight:bold; padding:0.2cm;  text-align:left; ">&nbsp;</th>
<th colspan="3" style="border-top: double; text-align:center; font-style:normal; font-weight:bold; padding:0.2cm; ">total_criminality</th>
</tr>
<tr>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  text-align:left; ">Predictors</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">Estimates</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">CI</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">p</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Current_dollar_GDP_millions<br>[log]</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">3.88</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">2.74&nbsp;&ndash;&nbsp;5.01</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>&lt;0.001</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">mh_exp_pc [log]</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.16</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;0.20&nbsp;&ndash;&nbsp;0.51</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.392</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">perc_bscholder_25_44</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;0.05</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;0.13&nbsp;&ndash;&nbsp;0.02</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.149</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">White</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;33.85</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;81.35&nbsp;&ndash;&nbsp;13.64</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.163</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">BlackAfricanAmerican</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;3.33</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;53.89&nbsp;&ndash;&nbsp;47.23</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.897</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Asian</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;75.27</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;131.71&nbsp;&ndash;&nbsp;-18.83</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>0.009</strong></td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Age_0_17</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">268.59</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">87.68&nbsp;&ndash;&nbsp;449.50</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>0.004</strong></td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Age_18_24</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">242.92</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">42.55&nbsp;&ndash;&nbsp;443.30</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>0.018</strong></td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Age_25_44</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">260.26</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">69.73&nbsp;&ndash;&nbsp;450.78</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>0.008</strong></td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Age_45_64</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">267.36</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">70.77&nbsp;&ndash;&nbsp;463.94</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>0.008</strong></td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Age_65_84</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">246.68</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">50.23&nbsp;&ndash;&nbsp;443.12</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>0.014</strong></td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">population [log]</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;15.85</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;20.10&nbsp;&ndash;&nbsp;-11.59</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>&lt;0.001</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; padding-top:0.1cm; padding-bottom:0.1cm; border-top:1px solid;">Observations</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left; border-top:1px solid;" colspan="3">505</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; padding-top:0.1cm; padding-bottom:0.1cm;">R<sup>2</sup> / R<sup>2</sup> adjusted</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left;" colspan="3">0.471 / 0.397</td>
</tr>

</table>

We can notice that the $R^2$, which is a statistical measure representing the proportion of the variance for a dependent variable that's explained by independent variables in a regression model, is lower here with respect to the standard OLS.
With respect to the standard OLS estimations, magnitudes changes but not of sign. The only exception is mental health expenditure which, here, appears having a positive effect on criminality. Although, mh_exp_pc and education's proxy are not statistically significant anymore. 
Additionally, among races, only the percentage of asian in the population seems statistically significant and still negative influencing criminality.
As in the OLS estimates, $log(population)$ decreases criminality: as population increases by 1%, criminality decreases by 16 crimes per 1000 inhabitants circa.

Among the various regressions we run, only the ones with rape and homicide as dependent variables have different results from the one just presented above. 

For Rape:

<table style="border-collapse:collapse; border:none;">
<caption style="font-weight: bold; text-align:left;">Fixed Effect, dependent variable: Rapes per 1000 inhabitants</caption>
<tr>
<th style="border-top: double; text-align:center; font-style:normal; font-weight:bold; padding:0.2cm;  text-align:left; ">&nbsp;</th>
<th colspan="3" style="border-top: double; text-align:center; font-style:normal; font-weight:bold; padding:0.2cm; ">rape_legacy</th>
</tr>
<tr>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  text-align:left; ">Predictors</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">Estimates</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">CI</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">p</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Current_dollar_GDP_millions<br>[log]</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.0762</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.0087&nbsp;&ndash;&nbsp;0.1438</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>0.027</strong></td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">mh_exp_pc [log]</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.0131</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;0.0081&nbsp;&ndash;&nbsp;0.0343</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.226</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">perc_bscholder_25_44</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;0.0001</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;0.0044&nbsp;&ndash;&nbsp;0.0043</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.976</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">White</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">1.2084</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;1.6239&nbsp;&ndash;&nbsp;4.0407</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.403</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">BlackAfricanAmerican</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">1.5597</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;1.4553&nbsp;&ndash;&nbsp;4.5746</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.311</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Asian</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;0.2739</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;3.6396&nbsp;&ndash;&nbsp;3.0918</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.873</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Age_0_17</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">2.8333</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;7.9549&nbsp;&ndash;&nbsp;13.6216</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.607</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Age_18_24</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">3.3037</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;8.6452&nbsp;&ndash;&nbsp;15.2527</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.588</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Age_25_44</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">5.9642</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;5.3975&nbsp;&ndash;&nbsp;17.3260</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.304</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Age_45_64</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">4.9356</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;6.7876&nbsp;&ndash;&nbsp;16.6588</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.410</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Age_65_84</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">3.1876</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;8.5273&nbsp;&ndash;&nbsp;14.9025</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.594</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">population [log]</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;0.3180</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;0.5715&nbsp;&ndash;&nbsp;-0.0644</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>0.014</strong></td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; padding-top:0.1cm; padding-bottom:0.1cm; border-top:1px solid;">Observations</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left; border-top:1px solid;" colspan="3">505</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; padding-top:0.1cm; padding-bottom:0.1cm;">R<sup>2</sup> / R<sup>2</sup> adjusted</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left;" colspan="3">0.216 / 0.106</td>
</tr>

</table>

From the FE regression with Rape per 1000 inhabitants as dependent variable we learn that:

* Rape appears, in magnitude, less impacted by GDP and population than whole criminality, but still respectively positively and negatively,
* $R^2$ is very low, so probably the regression does not explain the variance in Rape in a state in a certain year,
* Only GDP and $log(Population)$ are statistically significant, the other variables' estimated coefficients are not.

For Homicides:

<table style="border-collapse:collapse; border:none;">
<caption style="font-weight: bold; text-align:left;">Fixed Effect, dependent variable: Homicides per 1000 inhabitants</caption>
<tr>
<th style="border-top: double; text-align:center; font-style:normal; font-weight:bold; padding:0.2cm;  text-align:left; ">&nbsp;</th>
<th colspan="3" style="border-top: double; text-align:center; font-style:normal; font-weight:bold; padding:0.2cm; ">homicide</th>
</tr>
<tr>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  text-align:left; ">Predictors</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">Estimates</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">CI</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">p</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Current_dollar_GDP_millions<br>[log]</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.051</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.037&nbsp;&ndash;&nbsp;0.065</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>&lt;0.001</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">mh_exp_pc [log]</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.004</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;0.001&nbsp;&ndash;&nbsp;0.008</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.084</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">perc_bscholder_25_44</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;0.001</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;0.002&nbsp;&ndash;&nbsp;-0.000</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>0.004</strong></td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">White</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;0.061</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;0.661&nbsp;&ndash;&nbsp;0.539</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.842</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">BlackAfricanAmerican</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">1.212</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.574&nbsp;&ndash;&nbsp;1.851</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>&lt;0.001</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Asian</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;0.820</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;1.533&nbsp;&ndash;&nbsp;-0.107</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>0.025</strong></td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Age_0_17</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">2.520</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.235&nbsp;&ndash;&nbsp;4.805</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>0.031</strong></td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Age_18_24</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">1.483</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;1.048&nbsp;&ndash;&nbsp;4.014</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.251</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Age_25_44</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.931</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;1.475&nbsp;&ndash;&nbsp;3.338</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.448</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Age_45_64</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">1.394</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;1.088&nbsp;&ndash;&nbsp;3.877</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.272</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">Age_65_84</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">2.087</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;0.394&nbsp;&ndash;&nbsp;4.568</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">0.100</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">population [log]</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;0.209</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">&#45;0.262&nbsp;&ndash;&nbsp;-0.155</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  "><strong>&lt;0.001</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; padding-top:0.1cm; padding-bottom:0.1cm; border-top:1px solid;">Observations</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left; border-top:1px solid;" colspan="3">505</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; padding-top:0.1cm; padding-bottom:0.1cm;">R<sup>2</sup> / R<sup>2</sup> adjusted</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left;" colspan="3">0.683 / 0.638</td>
</tr>

</table>

From the FE regression with Homicides per 1000 inhabitants as dependent variable we learn that:

* Homicides appear, in magnitude, less impacted by GDP and population than whole criminality, but still respectively positively and negatively,
* $R^2=0.683$, so the variables in the regression explain 68% of the variance in homicides per 1000 people in a state in a certain year,
* Black African American and Asian percentages in the population have a, respectively, statistically significant positive and negative effect on criminality per 1000 terms.
* Having a high percentage of very young population appears to increase homicides at 5% significance, but this is difficult to explain through social mechanism in a community for us.

## Answers to the research questions

### Is there any relationship between expenditure for mental health by the government and criminality?

The answer is <b>inconclusive</b>.
Our study and analysis reports slightly <b>positive</b> correlations with crimes if we look at the Corrplot's Figure (only exception is with Rape), but from the regression it doesn't result statistically significant.
Moreover, the relationship between mental health expenditure and crimes appears <b>negative</b> from the scatterplot and the time series we have seen in some section above rather than <b>positive</b>.

### Is the level of education and wealth (through GDP) of a State relevant for its level of criminality?

For <b>GDP</b> we can say that:

* Its relationship with criminality is coherent throughout all our analysis. The outcome of our study is a <b>positive</b> effect of GDP on criminality.
* For Rape the answer is more dubious. From the regression we learn that the impact is positive but much lower than for total criminality as a whole. Instead, from the following scatterplot we would say that as GDP increases, Rape decreases

preserveeda7d7d113c4600e

* Looking at the Fixed Effect (FE)'s estimation for total criminality we can interpret the coefficient as, if GDP in millions of dollars increases by 1%, the number of crimes in a state in a given year increases by 3.88 per 1000 inhabitants. This is <b>statistically significant</b>.

For <b>Education</b> we can say that:

* its relationship with criminality is <b>negative</b>, so the higher the percentage of population with age between 25 and 44 years old holding a Bachelor's Degree, the lower the number of crimes per 1000 people. This was confirmed from scatterplots, corrplot, time series plot and regressions.
* FE's regressions report it to be significant only for homicides. In this one the magnitude of the effect is very small, though.
* OLS's estimations interpretation is that for an 1 percentage point increase in the amount of population with age between 25 and 44 years old holding a Bachelor's Degree, total criminality would decrease by 0.09 per 1000 inhabitants. It doesn't seem a big number.
* A consideration we can make by looking at the barplot presented in the univariate visualization section is that, North-East and Mid-West regions have the highest percentage of educated population and lower incidence of crimes with respect to South and West.

### Is the composition of the population, in terms of both age and ethnicity, relevant for criminality in the area?

* Population's <b>age</b> among different states and regions does not vary significantly, therefore, through our study we can't say much. The only thing we can extrapolate from our project regarding age-distribution comes from the corrplot. A younger population (18-44) leads to higher homicides, aggravated assaults and violent crimes. Meanwhile, older population (45+) appears negatively related with crimes. But, regressions' output are inconclusive since estimates are all positive and with great magnitudes.

* Population's <b>race</b> composition could play a role. Indeed, we see that South region in US has the highest percentage of Black-African American and the highest incidence of crimes, supporting the positive correlation found on the corrplot between all kinds of crimes and Black-African American. White population is positively correlated with rape. Although from the regressions we observe that the coefficients for all races are negative when looking at total criminality. For homicides, the significant estimates for race are for black african american (1 percentage point increase in black-african american population leads to 1 homicide more in 1000 inhabitants) and asian (1 percentage point increase in asiatic population leads to 0.8 homicide less in 1000 inhabitants). 

### Is mental health expenditure affected by how much the population is educated or by GDP of the country?

By looking at correlations and the time series reported in previous section, we would answer <b>yes</b>. It exists a <b>positive</b> relationship between the two variables, thus, the more educated the population, the higher the expenditure on mental health in the state.
We can represent this findings also in the following scatterplot with the linear regression.

preservef46070c9129b8686
