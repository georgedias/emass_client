[![Generate OpenAPI Clients](https://github.com/mitre/emass_client/actions/workflows/generate-clients.yml/badge.svg)](https://github.com/mitre/emass_client/actions/workflows/generate-clients.yml) [![Generate eMASS Documentation](https://github.com/mitre/emass_client/actions/workflows/generate_docs.yml/badge.svg)](https://github.com/mitre/emass_client/actions/workflows/generate_docs.yml) [![Deploy to GitHub Pages](https://github.com/mitre/emass_client/actions/workflows/gh-pages.yml/badge.svg)](https://github.com/mitre/emass_client/actions/workflows/gh-pages.yml)

![CodeQL Vulnerabilities and Errors](https://github.com/mitre/emass_client/actions/workflows/codeql-analysis.yml/badge.svg) ![Ruby Client Testing](https://github.com/mitre/emass_client/actions/workflows/test-ruby-client.yml/badge.svg) 

![GitHub release (latest by date)](https://img.shields.io/github/v/release/mitre/emass_client?label=Release%20Version) [![Gem Version](https://badge.fury.io/rb/emass_client.svg)](https://badge.fury.io/rb/emass_client) [![npm version](https://badge.fury.io/js/@mitre%2Femass_client.svg)](https://badge.fury.io/js/@mitre%2Femass_client)

# eMASS Client
The eMASS client repository (```emass_client```) maintains the Enterprise Mission Assurance Support Service (eMASS) Representational State Transfer (REST) Application Programming Interface (API) specifications and executables. The executables packages currently provided are: RubyGem and TypeScript Node.

## [eMASS API Specification](https://mitre.github.io/emass_client/docs/redoc/)
The eMASS API is documented in YAML and can be viewed utilizing a multitude of visualization tools. Included is a dependency-free (and nice looking) rendering tool for viewing the API specification. The documentation is automatically generated using a Continuos Integration (CI) action [redoc-cli](https://www.npmjs.com/package/redoc-cli) command line tool.


## [Visualize and Interact with eMASS API](https://mitre.github.io/emass_client/docs/renderer/)
This repository allows anyone to visualize and interact with the API’s resources without having any of the implementation logic in place, via [hosted](https://mitre.stoplight.io/docs/emasser/c48309f365cf1-enterprise-mission-assurance-support-service-e-mass) or local mock servers. Please reference [Developers Instruction](docs/developers.md) on how to setup a local mock server

## eMASS API Clients Generation Process
The executable packages (APIs) generated are used to access eMASS data and functionality by external third-party developers, business partners, or internal departments.

The following ```emass_client``` executable packages are generated by this repository:
- Ruby - The ruby package is hosted and available in the [RubyGems](https://rubygems.org/gems/emass_client). 

- Typescript - The typescript package is hosted and available in the [NpmRegistry](https://www.npmjs.com/package/@mitre/emass_client).

### Clone Instruction 
To make changes, or modifications to the eMASS clients described in this repository follow these steps:
- Step 1

  [Clone](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository) the repository, preferable after generating a [pull request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests)
- Step 2

  Make the necessary updates.

  **Note**: Modifications or updates to the eMASS API specification file ```eMASSRestOpenApi.yaml``` triggers the clients' generation actions; both the ruby ```src/ruby_client```and typescript-axios ```src/typescript_client```clients are re-generated and committed to the repository when [merged](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/incorporating-changes-from-a-pull-request/merging-a-pull-request) with the main branch. 
- Step 3

  Ensure that the client(s) configuration file ```src/openapi/templates/[ruby or typescript]-generator-config.json``` reflect the correct version to be generated
- Step 4

  [Update](https://docs.github.com/en/get-started/using-git/pushing-commits-to-a-remote-repository) the repository with current changes


***NOTE***: The generated clients version does not necessary has to be synchronized with the [GitHub Release](https://github.com/mitre/emass_client/releases)


***NOTE***: A CLI tool called [emasser](https://github.com/mitre/emasser), has been developed that makes use of the ```emass_client``` RubyGem.

### Other Programming Languages
For detail information on how-to generating eMASS clients for other programming languages reference [**Developers Instructions**](docs/developers.md)


## Repository Architecture
The process provided by this repository is depicted by the architecture diagram below. In a nutshell, it provides the capability of hosting the eMAASS API documentation, generate interactive visualization tools, static/dynamic testing, and generate API clients for ```ruby``` and ```typescript``` languages. 

![Repository Architecture](images/emass_client_architecture.jpg)

### Client Application
The ``emass_client`` executable packages can be included in other projects, or used to generate  CLI tools that have a need to access an eMASS instance. This is demonstrated by the diagram below.
![Client Architecture](images/emass_client_applications.jpg)

### NOTICE

© 2020 The MITRE Corporation.

Approved for Public Release; Distribution Unlimited. Case Number 18-3678.

### NOTICE

MITRE hereby grants express written permission to use, reproduce, distribute, modify, and otherwise leverage this software to the extent permitted by the licensed terms provided in the LICENSE.md file included with this project.

### NOTICE

This software was produced for the U. S. Government under Contract Number HHSM-500-2012-00008I, and is subject to Federal Acquisition Regulation Clause 52.227-14, Rights in Data-General.

No other use other than that granted to the U. S. Government, or to those acting on behalf of the U. S. Government under that Clause is authorized without the express written permission of The MITRE Corporation.

For further information, please contact The MITRE Corporation, Contracts Management Office, 7515 Colshire Drive, McLean, VA  22102-7539, (703) 983-6000.
