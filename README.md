# vue-helpers

[![Master Branch Build Status](https://img.shields.io/travis/elpete/vue-helpers/master.svg?style=flat-square&label=master)](https://travis-ci.org/elpete/vue-helpers)

## A collection of helpers for interacting with VueJS

### prop

Correctly serialize all values from CFML for use in Vue props:

#### API:
`prop( value )`

#### Usage:
`<my-custom-component :my-prop="#prop( myCFMLValue )#"></my-custom-component>`

