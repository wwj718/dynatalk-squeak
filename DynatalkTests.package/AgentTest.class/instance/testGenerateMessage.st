as yet unclassified
testGenerateMessage
|result parentID to action args|

parentID := '123'.
to := 'LivelyDemoAgent'.
action := 'echo'.
args := {'hi'}.
result := agent generateMessage: parentID to: to actionName: action actionArgs: args.
self assert: (result meta at: 'parent_id') = parentID.
self assert: (result action args) = args.