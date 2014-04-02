# turbo-javascript
A collection of commands and snippets for optimizing Javascript development productivity.

## Commands

### Easy semi-colons
Use the following keymaps for quickly ending lines with semi-colons. It will insert the semi-colon only if there isn't one already.

##### End Line (CTRL + ;)
Terminates the current line with a semi-colon.

##### End New Line (CTRL + ENTER)
Terminates the current line with a semi-colon and a new line.

## Snippets

Snippets are optimized to be short and easy to remember. Some snippets are "chainable" and render differently when preceded by a ".". For example, ".fe" renders a chain-friendly version of `.forEach(iterator)`, while "fe" renders a full code block.

### Console

Quickly log things to the console

#### cl: console.log
```js
console.log(${0});
```

#### ce: console.error
```js
console.error(${0});
```

#### cw: console.warn
```js
console.warn(${0});
```

### Flow Control

Fast expansion for common flow control statements

#### if: if statement
```js
if (${1:condition}) {
  ${0}
}
```

#### el: else statement
```js
else {
  ${0}
}
```

#### ei: else if statement
```js
else if (${1:condition}) {
  ${0}
}
```

#### fl: for loop
```js
for (var ${1:i} = 0, ${2:len} = ${3:iterable}.length; ${1:i} < ${2:len}; ${1:i}++) {
  ${0}
});
```

#### fi: for in loop
```js
for (var ${1:key} in ${2:source}) {
  if (${2:source}.hasOwnProperty(${1:key})) {
    ${0}
  }
}
```

#### wl: while loop
```js
while (${1:condition}) {
  ${0}
}
```

### Functions

Declare and manipulate functions with ease

#### f: single-line anonymous function
```js
function (${1:arguments}) {${0}}
```

#### fn: named function
```js
function ${1:name}(${2:arguments}) {
  ${0}
}
```

#### iife: immediately-invoked function expression
```js
(function (${1:arguments}) {
  ${0}
})(${2});
```

#### fa: function apply
```js
${1:fn}.apply(${2:this}, ${3:arguments})
```

#### fc: function call
```js
${1:fn}.call(${2:this}, ${3:arguments})
```

#### fb: function bind
```js
${1:fn}.bind(${2:this}, ${3:arguments})
```

### Iterables

Quickly add functional-style call chains with Javascript Array.prototype methods. All iterable snippets have a chainable version. To use the chain-optimized version, type a "." before the snippet. For example, `.map` will render `.map(function (${1:item}) {${0}})` instead of the full version.

#### fe: for each loop (chainable)
```js
${1:iterable}.forEach(function (${2:item}) {
  ${0}
});
```

#### map: map function (chainable)
```js
${1:iterable}.map(function (${2:item}) {
  ${0}
});
```

#### reduce: reduce function (chainable)
```js
${1:iterable}.reduce(function (${2:previous}, ${3:current}) {
  ${0}
}${4:, initial});
```

#### filter: filter function (chainable)
```js
${1:iterable}.filter(function (${2:item}) {
  ${0}
});
```

### Objects and types

Shortcuts for dealing with types, objects, classes and inheritance.

#### :`:key/value pair
```js
${1:key}: ${2:'value'}
```

#### proto: prototype method (chainable)
```js
${1:Class}.prototype.${2:methodName} = function (${3:arguments}) {
  ${0}
}
```

#### tof: typeof obj === 'TypeName'
```js
typeof ${1:source} === '${2:undefined}'
```

#### iof: obj instanceof Constructor
```js
${1:source} instanceof ${2:Object}
```

#### Built-in types shortcuts:
  * st: String
  * nu: Number
  * ob: Object
  * ar: Array
  * da: Date
  * rx: RegExp

### Returning values

Quickly return values from your functions with these commonly used return statements

#### r: return
```js
return ${0};
```

#### rth: return this
```js
return this;
```

#### rn: return null
```js
return null;
```

#### rt: return true
```js
return true;
```

#### rf: return false
```js
return false;
```

#### r0: return 0
```js
return 0;
```

### Promises

Using Promises/A+? Quickly connect your promise flow with the following snippets.

#### then: Promise.then (chainable)
```js
${1:promise}.then(function (${2:value}) {
  ${0}
});
```

#### catch: Promise.catch (chainable)
```js
${1:promise}.catch(function (${2:err}) {
  ${0}
});
```

### BDD testing

BDD-style testing shortcuts for Mocha, Jasmine and others

#### desc: describe
```js
describe('${1:description}', function () {
  ${0}
});
```
#### its: synchronous "it"
```js
it('${1:description}', function () {
  ${0}
});
```
#### ita: asynchronous "it"
```js
it('${1:description}', function (done) {
  ${0}
});
```

### Timers

Timer shortcuts

#### st: setTimeout
```js
setTimeout(function () {
  ${0}
}, ${1:delay});
```

#### si: setInterval
```js
setTimeout(function () {
  ${0}
}, ${1:delay});
```

### Node.js specifics

The following snippets apply only within Node.js or scripts with Browserify

#### cb: Node.js style callback
```js
function (err${1:, value}) {${0}}
```

#### re: require a module
```js
require('${1:module}');
```

#### ex: export member
```js
exports.${1:name} = ${2:value};
```

#### me: module.exports
```js
module.exports = ${1:name};
```

#### on: attach an event handler (chainable)
```js
${1:emitter}.on('${2:event}', function (${3:arguments}) {
  ${0}
});
```

#### nt: Process.nextTick
```js
process.nextTick(function () {
  ${0}
});
```

#### pe: Process.exit
```js
process.exit(${1:code});
```

#### Asserts
  * ase: assert.equal
  * asn: assert.notEqual
  * asd: assert.deepEqual
