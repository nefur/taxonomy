#!/bin/bash
#EDirect script
while read org
	do
	esearch -db taxonomy -query "$org[SCIN]" < /dev/null |
	efetch -format docsum |
	xtract -pattern DocumentSummary -lbl "$org" -element Id  ScientificName CommonName Division GenBankDivision
	done
