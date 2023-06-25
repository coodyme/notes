# Promises

- Single Thread
    - IO não bloqueante
- Assincrono
- Promises
    - Interface para gerenciar a parte async do js
    - Estados
        - PENDENTE
        - REALIZADA
        - REJEITADO
        - ESTABELECIDA
    - Promise.resolve() ela retorna um método .then()
        
        ```jsx
        function sayHelloWhenComplete() {
        	return Promise.resolve('hello')
        }
        
        sayHelloWhenComplete().then(function(data) {
        	console.log('Promise resolvida', data)
        })
        ```
        
    - Promise.reject() retorna um método .catch()
    
    - Exemplo de Promise
    
    ```jsx
    function myPromise() {
    	return new Promise(function(resolve, reject) {
    		setTimeout(function() {
    			resolve('Hello World')
    		}, 1000);
    	})
    } 
    
    myPromise().then(function(message) {
    	console.log(message);
    })
    ```
    
    - As funções sempre retorna undefined quando não existe retorno definido.
    
    ```jsx
    function myPromise() {
    	setTimeout(function() {
    			resolve('Hello World')
    		}, 1000);
    
    	// default return
    	return undefined;
    }
    
    console.log(myPromise()) // Expect undefined
    ```
    
    - Promise sempre estará em uma fila de execução preferencial, ou seja as promises serão executadas antes de funções como onClick, setTimeout, etc...
- Callback Query
- Encadeamento de Promises
    
    ```jsx
    fetch('https://viacep.com.br/ws/01001000/json/')
    .then(function(data) {
    	data.json().then(function(endereco) {
    		console.log(endereco)
    	})
    })
    
    // Como o data.json() retorna uma promise 
    // podemos reescrever
    
    fetch('https://viacep.com.br/ws/01001000/json/')
    .then(function(data) {
    	return data.json();
    })
    .then(function(endereco) {
    	console.log(endereco)
    })
    ```
    
- Catch

```jsx
// Tratamento de erros durante o o fluxo 

function jaRejeitada() {
	return Promise.reject()
}

fetch('https://viacep.com.br/ws/01001000/json/')
.then(function(data) {
	return data.json();
})
.then(function() {
	return jaRejeitada();
})
.then(function(endereco) {
	console.log(endereco)
})
.catch(function() {
	console.log('error')
})
```

- Finally

```jsx
// Sempre vai ser executado, independente do resultado
function jaRejeitada() {
	return Promise.reject()
}

fetch('https://viacep.com.br/ws/01001000/json/')
.then(function(data) {
	return data.json();
})
.then(function() {
	return jaRejeitada();
})
.then(function(endereco) {
	console.log(endereco)
})
.catch(function() {
	console.log('error')
})
.finally(function() {
	console.log('sempre executa')
})
```

- Promise.all()

```jsx
// Forma de invocar promises sendo que uma nao podera
// depender do valor da outra, pois sao
//  executadas simultaneamente 

// Retorna um array de promises quando todas
// forem resolvidas

Promise.all([
	jaRelizada(),
	pegaCep('01001000')
]).then(function(promisesResolvidas) {
	console.log(promisesResolvidas)
})

// retorna os valores sempre na mesma ordem que foi
// passado no array, independente da ordem de resolução 
// das promises
```

- Promise.race()

```jsx
// Semelhante ao Promises.all(), a diferença é que quando 
// uma promise é resolvida ou rejeitada
// ele já retorna o valor dela
```