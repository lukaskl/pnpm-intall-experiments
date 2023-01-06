const getVersion = (packageName) => {
  try{
    return require(packageName).version
  }catch{
    return null
  }
}

console.log("from @workspace/routes: react@" + getVersion('react'))
console.log("from @workspace/routes: react-dom@" + getVersion('react-dom'))
console.log()
require("react-router-dom");