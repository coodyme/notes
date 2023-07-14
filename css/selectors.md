#css
#frontend 

## CSS Selectors

CSS selectors are patterns used to select and target specific HTML elements on a web page.

- Allow you to apply styles;
- Perform actions on the selected elements.

### Element Selector

Select elements based on their HTML tag name. 

For example, select all `<p>` elements:

```css
p {
  color: '#5566FF';
}
```

### Class Selector

Select elements with a specific class attribute `.my-class`. 

For example, select all elements with the class name `my-class`

```css
.my-class {
  background-color: blue;
}
```

### ID Selector

Select elements with a unique ID attribute `#my-id`. 

For example, select all elements with the id  `my-id`

```css
#my-id {
  background-color: red;
}
```


### Attribute Selector

Select elements based on their attributes `[attribute]`.

For example, select all elements with the attribute `type` equal to `text`

```css
a[target] {
  background-color: yellow;
}
```

## Descendant Selector

Select elements that are descendants of another element `ul li`.

For example, select all `<li>` element are are descendants of a `<ul>` element

```css
ul li {
  color: red;
}
```

## Child Selector

Select elements that are direct children of another element `ul > li`.

For example, select all elements that are direct children of a `<ul>` element

```css
ul > li {
  padding: '32px'
}
```

## Adjacent Sibling Selector

Select an element that comes immediately after another element.

For example, `h2 + p` will selects the `<p>` element

```css
h2 + p {
  background-color: yellow;
}
```

## General Sibling Selector

Select elements that are siblings of another element. 

For example, `h2 ~ p` selects all `<p>` elements that are siblings of an `<h2>` element.

```css
h2 ~ p {
  background-color: yellow;
}
```