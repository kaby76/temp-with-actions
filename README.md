![CI](https://github.com/antlr/grammars-v4/workflows/CI/badge.svg)

# Grammars-v4

This repository is a collection of formal grammars written for [ANTLR v4](https://github.com/antlr/antlr4)

The root directory name is the all-lowercase name of the language or file format parsed by the grammar. For example, java, cpp, csharp, c, etc...

## FAQ

Please refer to the [grammars-v4 Wiki](https://github.com/antlr/grammars-v4/wiki)

## Code of Conduct

Please refer to [House Rules](https://github.com/antlr/grammars-v4/blob/master/House_Rules.md)

<script>
cPrev = -1;
function sortBy(c) {
	rows = document.getElementById("sortable").rows.length;
	columns = document.getElementById("sortable").rows[0].cells.length;
	arrTable = [...Array(rows)].map(e => Array(columns));

	for (ro=0; ro<rows; ro++) {
		for (co=0; co<columns; co++) {
			arrTable[ro][co] = document.getElementById("sortable").rows[ro].cells[co].innerHTML;
		}
	}

	th = arrTable.shift();
	
	if (c !== cPrev) {
		arrTable.sort(
			function (a, b) {
				if (a[c] === b[c]) {
					return 0;
				} else {
					return (a[c] < b[c]) ? -1 : 1;
				}
			}
		);
	} else {
		arrTable.reverse();
	}
	
	cPrev = c;
	
	arrTable.unshift(th);
	
	for (ro=0; ro<rows; ro++) {
		for (co=0; co<columns; co++) {
			document.getElementById("sortable").rows[ro].cells[co].innerHTML = arrTable[ro][co];
		}
	}
}
</script>

## Grammars

| Name | Link | Split or Combined | # lexer rules | # parser rules | # examples |
| ---- | ---- | ----------------- | ------------- | -------------- | ---------- |
| abb | [abb](https://github.com/antlr/grammars-v4/tree/master/abb) | Split | 85 | 16 | 1 |
| abnf | [abnf](https://github.com/antlr/grammars-v4/tree/master/abnf) | Split | 14 | 10 | 3 |


<object name="abb" type="text/html" data="abb/readme.md"></object>
