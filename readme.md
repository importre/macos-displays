# macos-displays

## Usage

```zsh
USAGE: displays [--output <output>]

OPTIONS:
  -o, --output <output>   Write to file instead of stdout.
  -h, --help              Show help information.
```

## Output

```json
[
  {
    "isDeepest" : true,
    "isMain" : true,
    "name" : "LG UltraFine",
    "resolution" : {
      "height" : 1296,
      "width" : 2304
    },
    "safeAreaInsets" : {
      "bottom" : 0,
      "left" : 0,
      "right" : 0,
      "top" : 0
    }
  },
  {
    "isDeepest" : false,
    "isMain" : false,
    "name" : "Built-in Retina Display",
    "resolution" : {
      "height" : 1117,
      "width" : 1728
    },
    "safeAreaInsets" : {
      "bottom" : 0,
      "left" : 0,
      "right" : 0,
      "top" : 32
    }
  },
  {
    "isDeepest" : false,
    "isMain" : false,
    "name" : "Sidecar Display (AirPlay)",
    "resolution" : {
      "height" : 1024,
      "width" : 1366
    },
    "safeAreaInsets" : {
      "bottom" : 0,
      "left" : 0,
      "right" : 0,
      "top" : 0
    }
  }
]
```
