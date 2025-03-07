# Zendesk

# Installing ZAT

```python
sudo apt-get install -y ruby ruby-dev build-essential dh-autoreconf zlib1g-dev nodejs

sudo gem install rake

sudo gem install zendesk_apps_tools
```

# Update ZAT

```python
sudo gem update zendesk_apps_tools
```

# Creating starter files for a new app

```python
zat new

# Scaffold
zat new --scaffold
```

# Testing your app locally in a browser

```python
zat server

# start the server from a different folder
zat server --path /tmp/test-app
```

# Validate your app

```python
zat validate
```

# Packaging your app for upload to Zendesk Support

```python
zat package
```