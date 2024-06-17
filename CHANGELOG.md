## Unreleased

### Feat

- **core**: add pokemon type models
- **ui**: updated pokemon detail tab with various sections
- add shiny pokemon artwork url provider
- **core**: add pokemon habitat models
- **core**: add pokemon species model for use in pokemon details tab
- **i18n**: update stats text labels with localized versions
- **ui**: create initial pokemon detail component

### Fix

- **core**: update main to initilize some services
- **i18n**: add local for intl arb files
- **ui**: add error page to routes
- **i18n**: update labels with localizations on sprites, details and weaknesses
- **ui**: add splashscreen widget
- **router**: add splashscreen for loading ui
- **ui**: update current species on pokemon list item click
- **i18n**: update localizastions with missing labels
- **android**: update kotlin main activity

### Refactor

- update dependancies

### Perf

- **flutter**: update to new web bootsrap
- add correct dependancies to providers

## 0.1.0 (2024-05-14)

### Feat

- **ui**: create pokemon list ui and list item widget
- **core**: add pokemonList and currentPokemon providers
- **core**: add named api response list model
- **core**: add dio, pokemon repositories and initial pokemon provider
- **asset**: add type icon svg assets
- **core**: add pokemon and some utility models
- **ui**: add common ui widgets and pokemon colors
- **routes**: add shell routes for pokemon, items and moves
- **routes**: use go_router instead of bart for bottom bar rendering
- **i18n**: update translations
- **i18n**: update translation descriptions
- **i18n**: initial localizations created

### Fix

- **core**: add correct mappings for pokemon repository
- **git**: add .gitattributes to mark generated files on git
- **firebase**: change firebase project to yapdex

### Refactor

- change app namespace to match applicationId
- **routes**: remove remnants of previous router
- rename environment file
- **imports**: refactor and reorganize imports
- **builds**: remove macos and ios builds
- **appname**: change app name to YAPDex
