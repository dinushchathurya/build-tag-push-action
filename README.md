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

## GitHub Action to Login, Build, Tag & Publish Docker Images to DockerHub 

This action allow you to login, build, tag & publish Docker image to a DockerHub.

### Usage

```yaml
on: [push]

jobs:
  docker-build-tag-push:
    runs-on: ubuntu-latest
    name: Docker Build, Tag & Publish
    steps:
      - name: Build, Tag & Publish Image to DockerHub
        uses: dinushchathurya/build-tag-push-action@v1.0.4
        with:
          username: ${{ secrets.DOCKER_USERNAME }}
          password: ${{ secrets.DOCKER_PASSWORD }}
          context: .
          file: Dockerfile
          repoOwner: ${{ secrets.DOCKER_USERNAME }}
          repository:  nodejs-docker
          tag: 1.0.0
```

### Secrets

Setup the following secrets in your repository settings:

<b>settings->secrets->actions->New repository secret</b><br><br>

|      Name       |      Value       |  Required  | 
|-----------------|------------------| ---------- |
| DOCKER_USERNAME | Docker username  |    True    |
| DOCKER_PASSWORD | Docker password  |    True    |

### Inputs

| Name       |          Description    |         Default          | Required |
|------------|-------------------------|--------------------------| -------- |
| context    | Docker build context    |           .              | True     |
| file       | Docker build file       |   {context}/Dockerfile   | True     |
| repoOwner  | Docker repository owner |   Docker Username        | True     |
| repository | Docker repository name  |                          | True     |
| tag        | Docker image tag        |                          | True     |


### Example

You can find a working example in the [example](https://github.com/dinushchathurya/build-tag-push-action-example) repository.

### Troubleshooting

For troubleshooting & get technical support, please head over to <a href="https://github.com/dinushchathurya/build-tag-push-action/discussions">Discussions section</a>.

### Author

Author [Dinush Chathurya](https://dinushchathurya.github.io/)

### Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### License

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


