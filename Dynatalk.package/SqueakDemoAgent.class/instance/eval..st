as yet unclassified
eval: code
	|result|
	result := Compiler evaluate: code.
	self respondWith: result.