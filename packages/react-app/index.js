const getVersion = (packageName) => {
  try{
    return require(packageName).version
  }catch{
    return null
  }
}

console.log("from @workspace/react-app: react@" + getVersion('react'))
console.log("from @workspace/react-app: react-dom@" + getVersion('react-dom'))
console.log()

require('@workspace/routes')