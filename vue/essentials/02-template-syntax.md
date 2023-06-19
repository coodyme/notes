---
title: 'Template Syntax'
excerpt: ''
createdAt: 2023-05-21
updatedAt: 2023-05-21
author:
  name: Augusto Brito
  avatar: 'https://github.com/augustobritodev.png?size=48'
highlighted: 'false'
color: 'orange'
---

#frontend
#vue

# Template Syntax

Vue uses an HTML-based template syntax that allows you to declaratively bind the rendered DOM to underlying Vue instance's data.

The Vue Template Syntax is based on HTML and extends it with additional features and directives.

## Text Interpolation

The most basic form of data binding is text interpolation using `Double Mustache Interpolation`:

```vue
<span>Message: {{ msg }}</span>
```

where `msg` is a property value.

## Raw HTML

The `Double Mustaches` interpret the data as plain text. If you want to output real HTML, you need to use `v-html` directive:

```vue
<p v-html="rawHTML"></p>
```

## Attribute Bindings

The `v-bind` directive is used to bind values dynamically to HTML attributes, components props, or DOM properties.

- Allows you to associate a data property 
- Allows you to associate an expression
- `attribute` represents the HTML attribute or component prop you want to bind`

```vue
<div v-bind:attribute="js expression or property"></div>
```

for example:

```vue
<script setup>
import { ref } from 'vue'

const titleClass = ref('title')
</script>

<template>
  <h1 :class="titleClass">Make me red</h1>
</template>

<style>
.title {
  color: red;
}
</style>
```

Because the `v-bind` is so commonly used, we can just use a shorthand syntax:

```vue
<div :attribute="js expression or property"></div>
```

### Boolean Attributes

Indicate `true` or `false` values by their presence on an element. Using boolean attributes allows you to easily toggle the presence or absence of attributes based on the state of your component, providing a clean and intuitive way to handle conditional rendering and interaction.

For example:

```vue
<button :disabled="isButtonDisabled">Button</button>
```

or 

```vue
<input type="checkbox" :checked="isChecked">
```

In this case, the `checked` attribute of the `<input>` element is bound to the `isChecked` data property. If `isChecked` is truthy, the checkbox will be checked; otherwise, it will be unchecked.

### Dynamically Binding Multiple Attributes

With `v-bind` you can bind multiple attributes using object syntax like:

```vue
<script>
const buttonAttributes = ref({
        disabled: true,
        class: 'btn btn-primary',
        style: 'background-color: red',
        // Add more attributes as needed
      })
</script>
```

all the properties of `buttonAttributes` will be dynamically bound as attributes to the `<button>` element:

```vue
<template>
	<button disabled class="btn btn-primary" style="background-color: red">Submit</button>
</template>
```

## Using JavaScript Expressions

JavaScript expressions can be used in your templates inside double curly braces `{{ }}` or can be used directly within attribute biding `v-bind`.

```vue
<script setup>
import { ref } from 'vue'

const properties = ref({
	message: 'Hello, Vue!',
	count: 5,
	isActive: true
})
</script>

<template>
<div>
	<p>{{ properties.message }}</p>
	<p>{{ properties.count + 1 }}</p>
	<p>{{ properties.isActive ? 'Active' : 'Inactive' }}</p>
</div>
</template>
```

### Expression Only

Each binding can only container `one single expression`.

- Statement will not work `{{ var a = 1 }}
- Flow control won't work, unless you use ternary expression `{{ true ? 'true' : 'fakse' }}`

### Calling Functions 

It is possible to call a component-exposed method inside a binding expression:

```vue
<script setup>
function log(message) {
	console.log(message)
}
</script>

<template>
	<p>
		{{ log('aaaaa') }}
	</p>
</template>
```

Functions called inside binding expressions will be called every time the component updates, so they should `not` have any side effects, such as changing data or triggering asynchronous operations.

### Restricted Global Access

Template expressions have access to a restricted list of globals like `Math` and `Date`

For example, `window` will not be accessible in template expressions.

## Directives

Vue provide a number of [built-in directives](https://vuejs.org/api/built-in-directives.html) like `v-html` and `v-bind` which we have introduced above.

- Directive attribute values are expected to be a single JavaScript expression
- A directive's job is to reactively apple updates to the DOM when the value of its expression changes

Here, the `v-if` directive would remove / insert the `<p>` element based on the truthiness of the value of the expression `seen`.

```vue
<script setup>
import { ref } from 'vue';

const seen = ref(true);
</script>

<template>
	<p v-if="seen">Now you see me</p>
</template>
```

### Modifiers

Special postfixes denoted by a dot, which indicate that a directive should be bound in some special way.

For example, the `.prevent` modifier tells the `v-on` directive to call `event.preventDefault()` on the triggered event:

```vue
<form @submit.prevent="onSubmit">...</form>
```

This will prevents the event from reloading the page after the form is submitted

![[Pasted image 20230528223019.png]]

