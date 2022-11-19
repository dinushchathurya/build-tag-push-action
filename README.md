<p align="center">
    <img src="https://img.shields.io/scrutinizer/build/g/dinushchathurya/build-tag-push-action/master">
    <img src="https://img.shields.io/github/v/release/dinushchathurya/build-tag-push-action?include_prereleases">
    <img src="https://img.shields.io/github/license/dinushchathurya/build-tag-push-action">
    <img src="https://img.shields.io/github/issues-raw/dinushchathurya/build-tag-push-action">
    <img src="https://img.shields.io/badge/dependencies-up%20to%20date-orange">
    <img src="https://img.shields.io/badge/coverage-100%25-yellowgreen">
    <img src="https://img.shields.io/badge/rating-★★★★★-brightgreen">
    <img src="https://img.shields.io/badge/uptime-100%25-brightgreen">
</p>

## GitHub Action to Login, Build, Tag & Publish Docker Images to Docker Registries

This action allow you to login, build, tag & publish Docker image to a Docker Registries.

## Usage


#### DockerHub
```yaml
on: [push]

jobs:
  docker-build-tag-push:
    runs-on: ubuntu-latest
    name: Docker Build, Tag & Publish
    steps:
      - name: Build, Tag & Publish Image to DockerHub
        uses: dinushchathurya/build-tag-push-action@v1.2.1
        with:
          username: ${{ secrets.DOCKER_USERNAME }}
          password: ${{ secrets.DOCKER_PASSWORD }}
          context: .
          file: Dockerfile
          repoOwner: ${{ secrets.DOCKER_USERNAME }}
          repository:  nodejs-docker
          tag: 1.0.0
```

#### GitHub Container Registry

```yaml
on: [push]

jobs:
  docker-build-tag-push:
    runs-on: ubuntu-latest
    name: Docker Build, Tag & Publish
    steps:
      - name: Docker Login, Build, Tag and Push to GitHub Container Registry
        uses: dinushchathurya/build-tag-push-action@v1.2.1
        with:
          username: ${{ github.actor }}
          password: ${{ secrets.TOKEN }}
          context: .
          file: Dockerfile
          repoOwner: ${{ github.actor }}
          repository: nodejs-github
          tag: 1.0.0
          registry: ghcr.io
```

## Secrets

Setup the following secrets in your repository settings:

<b>settings->secrets->actions->New repository secret</b><br><br>
#### DockerHub

|      Name       |      Value       |  Required  | 
|-----------------|------------------| ---------- |
| DOCKER_USERNAME | Docker username  |    True    |
| DOCKER_PASSWORD | Docker password  |    True    |

#### GitHub Container Registry

|      Name       |      Value       |  Required  | 
|-----------------|------------------| ---------- |
|      TOKEN      | GitHub PAT       |    True    |

## Inputs

#### DockerHub

| Name       |          Description        | Required |
|------------|-----------------------------| -------- |
| context    | Docker build context        | True     |
| file       | Docker build file           | True     |
| repoOwner  | Docker Hub repository owner | True     |
| repository | Docker Hub repository name  | True     |
| tag        | Image tag                   | True     |

#### GitHub Container Registry

| Name       |          Description     | Required |
|------------|--------------------------| -------- |
| context    | Docker build context     | True     |
| file       | Docker build file        | True     |
| repoOwner  | GitHub CR owner          | True     |
| repository | GitHub CR repository name| True     |
| tag        | Image tag                | True     |
| registry   | GitHub registry          | True     |

## Supported Docker Registries


<li>Docker Hub</li>
<li>GitHub Container Registry (<span class="color-fg-attention"><svg class="octicon octicon-alert mr-2" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M8.22 1.754a.25.25 0 00-.44 0L1.698 13.132a.25.25 0 00.22.368h12.164a.25.25 0 00.22-.368L8.22 1.754zm-1.763-.707c.659-1.234 2.427-1.234 3.086 0l6.082 11.378A1.75 1.75 0 0114.082 15H1.918a1.75 1.75 0 01-1.543-2.575L6.457 1.047zM9 11a1 1 0 11-2 0 1 1 0 012 0zm-.25-5.25a.75.75 0 00-1.5 0v2.5a.75.75 0 001.5 0v-2.5z"></path></svg>Warning</span> From version 1.2.0)</li>

## Example

You can find a working example for this GitHub Action from the [following repository](https://github.com/dinushchathurya/build-tag-push-action-example).

## Troubleshooting

For troubleshooting & get technical support, please head over to <a href="https://github.com/dinushchathurya/build-tag-push-action/discussions">Discussions section</a>.

## Author

Author [Dinush Chathurya](https://dinushchathurya.github.io/)

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Copyright (c) 2022 <a href="https://dinushchathurya.github.io/">Dinush Chathurya</a> and <a href="https://codingtricks.io/">codingtricks.io</a>


