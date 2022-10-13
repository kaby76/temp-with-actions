![CI](https://github.com/antlr/grammars-v4/workflows/CI/badge.svg)

# Grammars-v4

This repository is a collection of formal grammars written for [ANTLR v4](https://github.com/antlr/antlr4)

The root directory name is the all-lowercase name of the language or file format parsed by the grammar. For example, java, cpp, csharp, c, etc...

## FAQ

Please refer to the [grammars-v4 Wiki](https://github.com/antlr/grammars-v4/wiki)

## Code of Conduct

Please refer to [House Rules](https://github.com/antlr/grammars-v4/blob/master/House_Rules.md)

<pre>
<code class="language-clike">/*
A few requirements for configuring the table:
1. The table must have id=&quot;sortable&quot;, i.e. &lt;table id=&quot;sortable&quot;&gt;
2. The table needs to have a table header, and the table header must have
&nbsp;  onclick=&quot;sortBy(n)&quot;, where n is the column number starting with 0
&nbsp;  i.e. &lt;th onclick=&quot;sortBy(0)&quot;&gt;Title of First Column&lt;/th&gt;
*/

cPrev = -1; // global var saves the previous c, used to
            // determine if the same column is clicked again

function sortBy(c) {
&nbsp;&nbsp; &nbsp;rows = document.getElementById(&quot;sortable&quot;).rows.length; // num of rows
&nbsp;&nbsp; &nbsp;columns = document.getElementById(&quot;sortable&quot;).rows[0].cells.length; // num of columns
&nbsp;&nbsp; &nbsp;arrTable = [...Array(rows)].map(e =&gt; Array(columns)); // create an empty 2d array

&nbsp;&nbsp; &nbsp;for (ro=0; ro&lt;rows; ro++) { // cycle through rows
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;for (co=0; co&lt;columns; co++) { // cycle through columns
&nbsp;           // assign the value in each row-column to a 2d array by row-column
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;arrTable[ro][co] = document.getElementById(&quot;sortable&quot;).rows[ro].cells[co].innerHTML;
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;}
&nbsp;&nbsp; &nbsp;}

&nbsp;&nbsp; &nbsp;th = arrTable.shift(); // remove the header row from the array, and save it
&nbsp;&nbsp; &nbsp;
&nbsp;&nbsp; &nbsp;if (c !== cPrev) { // different column is clicked, so sort by the new column
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;arrTable.sort(
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;function (a, b) {
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;if (a[c] === b[c]) {
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;return 0;
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;} else {
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;return (a[c] &lt; b[c]) ? -1 : 1;
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;}
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;}
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;);
&nbsp;&nbsp; &nbsp;} else { // if the same column is clicked then reverse the array
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;arrTable.reverse();
&nbsp;&nbsp; &nbsp;}
&nbsp;&nbsp; &nbsp;
&nbsp;&nbsp; &nbsp;cPrev = c; // save in previous c

&nbsp;&nbsp; &nbsp;arrTable.unshift(th); // put the header back in to the array

    // cycle through rows-columns placing values from the array back into the html table
&nbsp;&nbsp; &nbsp;for (ro=0; ro&lt;rows; ro++) {
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;for (co=0; co&lt;columns; co++) {
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;document.getElementById(&quot;sortable&quot;).rows[ro].cells[co].innerHTML = arrTable[ro][co];
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;}
&nbsp;&nbsp; &nbsp;}
}
</code></pre>


## Grammars

| Name | Link | Split or Combined | # lexer rules | # parser rules | # examples |
| ---- | ---- | ----------------- | ------------- | -------------- | ---------- |
| abb | [abb](https://github.com/antlr/grammars-v4/tree/master/abb) | Split | 85 | 16 | 1 |
| abnf | [abnf](https://github.com/antlr/grammars-v4/tree/master/abnf) | Split | 14 | 10 | 3 |


<object name="abb" type="text/html" data="abb/readme.md"></object>
