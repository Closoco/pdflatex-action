# pdflatex-action

## Local Development

Usage: 

```
docker run -ti --volume $(pwd):/workspace -e GITHUB_WORKSPACE=/workspace pdflatex example.tex
```

## Github Action

```yaml
on: [push]

jobs:
  build-resume:
    runs-on: ubuntu-latest
    name: Create document
    steps:
    - name: Checkout
      uses: actions/checkout@v1
    - name: Convert to pdf
      id: convert-to-pdf
      uses: closoco/pdflatex-action@v1.0.0
      with:
        texFile: ./file.tex
    - name: Store pdf
      uses: actions/upload-artifact@v2
      with:
        name: file.pdf
        path: file.pdf
```

