# turbo-javascript
A collection of commands and ES6-ready snippets for optimizing Javascript development productivity.

## Commands

### Easy semi-colons
Snippets do not include semi-colons, but you can still add them quickly. Use the following keymaps for ending lines with semi-colons. It will insert the semi-colon only if there isn't one already.

##### End Line (CTRL + ;)
Terminates the current line with a semi-colon.

##### End New Line (CTRL + ENTER)
Terminates the current line with a semi-colon and a new line.

## Snippets

Snippets are optimized to be short and easy to remember. Some snippets are "chainable" and render differently when preceded by a ".". For example, ".fe" renders a chain-friendly version of `.forEach(iterator)`, while "fe" renders a full code block.

For example, `.map` will render `.map(function (${1:item}) {${0}})` instead of the full code block.

### Declarations

#### `v⇥` var statement
```js
var ${1:name}
```

#### `v=⇥` var assignment
```js
var ${1:name} = ${2:value}
```

#### `l⇥` let statement
```js
let ${1:name}
```

#### `l=⇥` let assignment
```js
let ${1:name} = ${2:value}
```

#### `co⇥` const statement
```js
const ${1:name}
```

#### `co=⇥` const assignment
```js
const ${1:name} = ${2:value}
```

### Flow Control

#### `b⇥` statement block
```js
{
  ${0}
}
```

#### `if⇥` if statement
```js
if (${1:condition}) {
  ${0}
}
```

#### `el⇥` else statement
```js
else {
  ${0}
}
```

#### `ife⇥` else statement
```js
if (${1:condition}) {
  ${0}
} else {

}
```

#### `ei⇥` else if statement
```js
else if (${1:condition}) {
  ${0}
}
```

#### `fl⇥` for loop
```js
for (var ${1:i} = 0, ${2:len} = ${3:iterable}.length; ${1:i} < ${2:len}; ${1:i}++) {
  ${0}
}
```

#### `fi⇥` for in loop
```js
for (var ${1:key} in ${2:source}) {
  if (${2:source}.hasOwnProperty(${1:key})) {
    ${0}
  }
}
```

#### `fo⇥` for of loop (ES6)
```js
for (var ${1:key} of ${2:source}) {
  ${0}
}
```

#### `wl⇥` while loop
```js
while (${1:condition}) {
  ${0}
}
```

#### `tc⇥` try/catch
```js
try {
 ${0}
} catch (${1:err}) {

}
```

#### `tf⇥` try/finally
```js
try {
 ${0}
} finally {

}
```

#### `tcf⇥` try/catch/finally
```js
try {
  ${0}
} catch (${1:err}) {

} finally {

}
```

### Functions

#### `f⇥` anonymous function
```js
function (${1:arguments}) {${0}}
```

#### `fn⇥` named function
```js
function ${1:name}(${2:arguments}) {
  ${0}
}
```

#### `iife⇥` immediately-invoked function expression (IIFE)
```js
(function (${1:arguments}) {
  ${0}
})(${2});
```

#### `fa⇥` function apply
```js
${1:fn}.apply(${2:this}, ${3:arguments})
```

#### `fc⇥` function call
```js
${1:fn}.call(${2:this}, ${3:arguments})
```

#### `fb⇥` function bind
```js
${1:fn}.bind(${2:this}, ${3:arguments})
```

#### `af⇥` arrow function (ES6)
```js
${1:(arguments)} => ${2:statement}
```

#### `afb⇥` arrow function with body (ES6)
```js
${1:(arguments)} => {
\t${0}
}
```

#### `gf⇥` generator function (ES6)
```js
function* (${1:arguments}) {
  ${0}
}
```

#### `gfn⇥` named generator function (ES6)
```js
function* ${1:name}(${1:arguments}) {
  ${0}
}
```

### Iterables

#### `fe⇥` forEach loop (chainable)
```js
${1:iterable}.forEach(function (${2:item}) {
  ${0}
});
```

#### `map⇥` map function (chainable)
```js
${1:iterable}.map(function (${2:item}) {
  ${0}
});
```

#### `reduce⇥` reduce function (chainable)
```js
${1:iterable}.reduce(function (${2:previous}, ${3:current}) {
  ${0}
}${4:, initial});
```

#### `filter⇥` filter function (chainable)
```js
${1:iterable}.filter(function (${2:item}) {
  ${0}
});
```

#### `find⇥` ES6 find function (chainable)
```js
${1:iterable}.find(function (${2:item}) {
  ${0}
});
```

### Objects and classes

#### `c⇥` class (ES6)
```js
class ${1:name} {
  constructor(${2:arguments}) {
    ${0}
  }
}
```

#### `cex⇥` child class (ES6)
```js
class ${1:name} extends ${2:base} {
  constructor(${2:arguments}) {
    super(${2:arguments})
    ${0}
  }
}
```

#### `:⇥` key/value pair
```js
${1:key}: ${2:'value'}
```

#### `m⇥` method (ES6 syntax)
```js
${1:method}(${2:arguments}) {
  ${0}
}
```

#### `get⇥` getter (ES6 syntax)
```js
get ${1:property}() {
  ${0}
}
```

#### `set⇥` setter (ES6 syntax)
```js
set ${1:property}(${2:value}) {
  ${0}
}
```

#### `gs⇥` getter and setter (ES6 syntax)
```js
get ${1:property}() {
  ${0}
}
set ${1:property}(${2:value}) {

}
```

#### `proto⇥` prototype method (chainable)
```js
${1:Class}.prototype.${2:methodName} = function (${3:arguments}) {
  ${0}
}
```

### Returning values

#### `r⇥` return
```js
return ${0}
```

#### `rth⇥` return this
```js
return this
```

#### `rn⇥` return null
```js
return null
```

#### `rt⇥` return true
```js
return true
```

#### `rf⇥` return false
```js
return false
```

#### `r0⇥` return 0
```js
return 0
```

#### `r-1⇥` return -1
```js
return -1
```

#### `rp⇥` return Promise (ES6)
```js
return new Promise((resolve, reject) => {
  ${0}
})
```

### Types

#### `s⇥` String
#### `n⇥` Number
#### `o⇥` Object
#### `a⇥` Array
#### `d⇥` Date
#### `rx⇥` RegExp
#### `sym⇥` Symbol (ES6)
#### `pr⇥` Proxy (ES6)

#### `tof⇥` typeof obj === 'TypeName'
```js
typeof ${1:source} === '${2:undefined}'
```

#### `iof⇥` obj instanceof Constructor
```js
${1:source} instanceof ${2:Object}
```

### Promises

#### `p⇥` new Promise (ES6)
```js
new Promise((resolve, reject) => {
  ${0}
})
```

#### `then⇥` Promise.then (chainable)
```js
${1:promise}.then(function (${2:value}) {
  ${0}
})
```

#### `catch⇥` Promise.catch (chainable)
```js
${1:promise}.catch(function (${2:err}) {
  ${0}
})
```

### ES6 modules

#### `ex⇥` module export
```js
export ${1:member}
```

#### `im⇥` module import
```js
import ${1:*} from '${2:module}'
```

#### `ima⇥` module import as
```js
import ${1:*} as ${2:name} from '${3:module}'
```

### BDD testing (Mocha, Jasmine, etc.)

#### `desc⇥` describe
```js
describe('${1:description}', function () {
  ${0}
})
```
#### `its⇥` synchronous "it"
```js
it('${1:description}', function () {
  ${0}
})
```
#### `ita⇥` asynchronous "it"
```js
it('${1:description}', function (done) {
  ${0}
});
```

### Console

#### `cl⇥` console.log
```js
console.log(${0})
```

#### `ce⇥` console.error
```js
console.error(${0})
```

#### `cw⇥` console.warn
```js
console.warn(${0})
```

### Timers

#### `st⇥` setTimeout
```js
setTimeout(function () {
  ${0}
}, ${1:delay});
```

#### `si⇥` setInterval
```js
setTimeout(function () {
  ${0}
}, ${1:delay});
```

### DOM specifics

#### `ae⇥` addEventListener
```js
${1:document}.addEventListener('${2:event}', function (e) {
  ${0}
})
```

#### `gi⇥` getElementById
```js
${1:document}.getElementById('${2:id}')
```

#### `gc⇥` getElementsByClassName (`Array.from` polyfill required for ES5)
```js
Array.from(${1:document}.getElementsByClassName('${2:class}'))
```

#### `gt⇥` getElementsByTagName (`Array.from` polyfill required for ES5)
```js
Array.from(${1:document}.getElementsByTagName('${2:tag}'))
```

#### `qs⇥` querySelector
```js
${1:document}.querySelector('${2:selector}')
```

#### `qsa⇥` querySelectorAll (`Array.from` polyfill required for ES5)
```js
Array.from(${1:document}.querySelectorAll('${2:selector}'))
```

### Node.js specifics

#### `cb⇥` Node.js style callback
```js
function (err${1:, value}) {${0}}
```

#### `re⇥` require a module
```js
require('${1:module}')
```

#### `em⇥` export member
```js
exports.${1:name} = ${2:value}
```

#### `me⇥` module.exports
```js
module.exports = ${1:name}
```

#### `on⇥` attach an event handler (chainable)
```js
${1:emitter}.on('${2:event}', function (${3:arguments}) {
  ${0}
})
```

#### `xm⇥` Express middleware
```js
function (req, res${1:, next}) {
  ${0}
}
```

#### `xerr⇥` Express error handler
```js
function (err, req, res, next) {
  ${0}
}
```

### Miscellaneous

#### `us⇥` use strict
```js
'use strict'
```

#### `debug⇥` debugger statement
```js
debugger
```

#### `y⇥` yield (ES6)
```js
yield ${1:value}
```
