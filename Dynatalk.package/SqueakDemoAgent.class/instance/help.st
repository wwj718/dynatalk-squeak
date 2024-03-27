help
help

"return aString(for human reading, similar to yaml?) or JsonObject"

|helpJsonString|

"helpJsonString := 'help response'."

helpJsonString := '
{
    "add:to:": {
        "description": "add a and b",
        "args": ["aNumber", "aNumber"]
    },
    "echo": {
        "description": "echo the content",
        "args": ["aString"]
    }
}
'.

self respondWith: (JsonObject new at: 'help' put:  helpJsonString parseAsJson)