"use strict";

const getVersion = (packageName) => {
  try{
    return require(packageName).version
  }catch{
    return null
  }
}

console.log("from react-router-dom: react@" + getVersion('react'))
console.log("from react-router-dom: react-dom@" + getVersion('react-dom'))
console.log()

if (process.env.NODE_ENV === "production") {
  module.exports = require("./cjs/react-router-dom.min.js");
} else {
  module.exports = require("./cjs/react-router-dom.js");
}
