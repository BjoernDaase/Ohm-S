tests
testGrammarParsesBlockLiterals
	
	startRule := #BlockLiteral.
	self 
		shouldParseAll: { '[]' . '[:a | ]' . '[:a :b :c| ]' . '[:Ak2 :blks|]' . '[: a : b : c| ]' . '[:a ]'};
		shouldntParseAny: { '[|]' . '[:a || ]' . '[:2a | ]' }.