# Factory Pattern

Category: Design Patterns, JavaScript
Last edited time: July 22, 2022 1:41 PM

# JavaScript Factory

O que é uma factory? É qualquer função que não é uma classe, não é um construtor e retorna um novo objeto

Na maioria dos casos em JS classes são desnecessárias, pelo fato de que qualquer função pode retornar um novo objeto. (Quando uma função retonar um objeto sem te obrigar a usar a keyword **new** ela é uma factory function.)

## Exemplo

```jsx
class Cat {
	constructor(name) {
		this.name = name
	}

	getName() {
		return this.name
	}
}

const myCat = new Cat('Alfredo')
console.log(myCat.getName())

const createCat = (name) => ({
	name,
	getName: () => name
})

const myCat2 = createCat('Alfredo')
console.log(myCat2.getName()) 
```

## Closures

É a combinação de uma função com seu escopo léxico, sendo que o escopo léxico é todo o escopo que envolve a declaração daquela função. [Closures](Closures.md) 

## Exemplo

```jsx
const createUser = (name, age) => {
  let counter = 0

  return {
    name,
    age,
    incrementCounter: () => ++counter
  }
}

const user1 = createUser('Augusto', 'mail@mail.com')
const user2 = createUser('Augusto', 'mail@mail.com')
console.log(user1.incrementCounter()) // Expect 1
console.log(user1.incrementCounter()) // Expect 2
console.log(user2.incrementCounter()) // Expect 1
console.log(user2.incrementCounter()) // Expect 2
```

## Problema da Herança classica

Inflexibilidade no qual a classe carrega métodos no qual eu não gostaria que estivesse presente. Ver mais sobre prototypes [Prototype](Prototype.md) 

```jsx
class a {
	first () {
    return 1
	}

  second () {
    return 'Exemplo'
  }
}

class b extends a {
  third () {
    return 3
  }
}

const obj = new b()
console.log(obj.second())
```

```jsx
const a = {
  first () {
    return 1
  }
}

const b = {
  second () {
    return 'Exemplo'
  }
}

const c = {
  third () {
    return 3
  }
}

const obj = {
  ...a,
  ...c
}

console.log(obj.first())
```