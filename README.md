<!-- TOC -->
* [aws-opensearch-proxy](#aws-opensearch-proxy)
  * [Maintain](#maintain)
  * [Usage](#usage)
    * [Prerequisites](#prerequisites)
    * [Step 1 - clone this repo](#step-1---clone-this-repo)
    * [Step 2 - create `.env` file](#step-2---create-env-file)
    * [Step 3 - run](#step-3---run)
<!-- TOC -->

# aws-opensearch-proxy

Is a small web server application sitting between your HTTP client (browser, curl, etc...) and Amazon OpenSearch service.
It will sign your requests using latest [AWS Signature Version 4](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html) before sending the request to Amazon OpenSearch.
When the response is back from Amazon OpenSearch, this response will be sent back to your HTTP client.

OpenSearch Dashboards requests are also signed automatically.

## Maintain

```shell
go fmt
```

## Usage

### Prerequisites

* AWS SDK
* Docker Desktop

### Step 1 - clone this repo

Clone this repo to your local machine.

### Step 2 - create `.env` file

Create inside cloned repo `.env` file. As an example, you can use file `.evn.example`.

### Step 3 - run

```shell
docker compose up -d --build
```

To connect to OpenSearch Dashboard, use: http://localhost:9201/_dashboards/app/home#/
To connect to OpenSearch, use: http://localhost:9201/