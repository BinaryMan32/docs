# Hello World Wide Web

In this tutorial we'll create a very simple web app and verify that it displays text in a web browser.

## Set Up PNPM

[Install `pnpm`](https://pnpm.io/installation) to manage installed `node` versions.
While `pnpm` is great at managing other packages used by your project, we'll keep this simple by using no external dependencies other than `node` itself.

```sh
curl -fsSL https://get.pnpm.io/install.sh | sh -
```

### Install Node

[Node.js](https://nodejs.org/en) allows us to implement a server application in javascript.

```sh
pnpm env use --global 24
```

### Add Source

Create a new file `index.js` and paste the following code.

``` js {: title=index.js linenums="1" }
--8<-- "docs/kubernetes-walkthrough/01-hello-world-wide-web/index.js"
```

Code taken from [An Example Node.js Application](https://nodejs.org/en/learn/getting-started/introduction-to-nodejs#an-example-nodejs-application).

## Run the App

```sh
pnpx node index.js
```

``` {: title=Output .no-copy }
Server running at http://127.0.0.1:3000/
```

### Viewing in Browser

Open <http://127.0.0.1:3000/> in a web browser.

![Hello World in a browser window](./browser.png)
