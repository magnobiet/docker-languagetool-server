# 🐳 LanguageTool Server

> LanguageTool Server Docker image

## Build

```bash
docker build . -t magnobiet/languagetool-server
```

## Run

```bash
docker run -p 8081:8081 --name=languagetool-server magnobiet/languagetool-server
```

### Test

```bash
curl --data "language=en-US&text=a simple test" http://localhost:8081/v2/check
```

#### Expected response

```json
{
  "software": {
    "name": "LanguageTool",
    "version": "4.6",
    "buildDate": "2019-06-26 07:28",
    "apiVersion": 1,
    "premium": false,
    "premiumHint": "You might be missing errors only the Premium version can find. Contact us at support<at>languagetoolplus.com.",
    "status": ""
  },
  "warnings": {
    "incompleteResults": false
  },
  "language": {
    "name": "English (US)",
    "code": "en-US",
    "detectedLanguage": {
      "name": "French",
      "code": "fr",
      "confidence": 0.815771
    }
  },
  "matches": [{
    "message": "This sentence does not start with an uppercase letter",
    "shortMessage": "",
    "replacements": [{
      "value": "A"
    }],
    "offset": 0,
    "length": 1,
    "context": {
      "text": "a simple test",
      "offset": 0,
      "length": 1
    },
    "sentence": "a simple test",
    "type": {
      "typeName": "Other"
    },
    "rule": {
      "id": "UPPERCASE_SENTENCE_START",
      "description": "Checks that a sentence starts with an uppercase letter",
      "issueType": "typographical",
      "category": {
        "id": "CASING",
        "name": "Capitalization"
      }
    },
    "ignoreForIncompleteSentence": true,
    "contextForSureMatch": -1
  }]
}
```

## Supported languages

- English (en)
- Spanish (es)
- Portuguese (pt)
- [...and several other languages](https://www.languagetool.org/languages/)

## References

- [LanguageTool](https://www.languagetool.org/)
- [LanguageTool HTTP Server](http://wiki.languagetool.org/http-server)
- [LanguageTool API](https://languagetool.org/http-api/swagger-ui/)

## License

This project is licensed under the [MIT License](https://magno.mit-license.org/2019). Copyright © Magno Biét
