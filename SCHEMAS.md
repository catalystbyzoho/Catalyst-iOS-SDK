# Schema Reference

## 1) TopBar Configuration Schema

| Key | JSON Key | JSON Type | Mandatory | Default | Accepted Values | Description |
|-----|----------|-----------|-----------|---------|-----------------|-------------|
| ID | `id` | String | ✅ Yes | — | Any string e.g. `"DEALS"` | Unique identifier for the TopBar configuration. |
| Version | `version` | String | ✅ Yes | — | `"1.0.0"`, etc. | Schema version of the configuration. |
| View Items | `tb_view_items` | Object | ✅ Yes | — | — | Container object holding all TopBar view components. |

## 2) configurations Schema

| Key | JSON Key | JSON Type | Mandatory | Default | Accepted Values | Description |
|-----|----------|-----------|-----------|---------|-----------------|-------------|
| Number of Tabs in iPad | `number_of_tabs_in_ipad` | Number (Int) | No | `7` | Integer, max `7` | Max visible/allowed tab count for iPad. |
| Number of Tabs in iPhone | `number_of_tabs_in_iphone` | Number (Int) | No | `5` | Integer, max `5` (including More) | Max visible/allowed tab count for iPhone. |
| Supports Double Tap | `supports_double_tap` | Boolean | No | `true` | `true`, `false` | Enables/disables double-tap behavior. |
| Supports Long Press | `supports_long_press` | Boolean | No | `true` | `true`, `false` | Enables/disables long-press behavior. |
| Show Recently Accessed Module | `show_recently_accessed_module` | Boolean | No | `true` | `true`, `false` | Shows/hides recently accessed module entry/behavior. |
| Margin | `margin` | String | No | — | Theme spacing token (sample: `bottom_margin_4xl`) | Bottom spacing token used for layout margin behavior. |

## 3) selected_tabs Schema

| Key | JSON Key | JSON Type | Mandatory | Default | Accepted Values | Description |
|-----|----------|-----------|-----------|---------|-----------------|-------------|
| Item IDs | `item_ids` | Array\<String\> | ✅ Yes | — | Unique identifiers of selected tabs (e.g., `HOME`, `MEETINGS`, `Custom_1`, `DEALS`) | Ordered list of selected tab module IDs; values must be unique. |

## 4) item_organiser Root Schema

| Key | JSON Key | JSON Type | Mandatory | Default | Accepted Values | Description |
|-----|----------|-----------|-----------|---------|-----------------|-------------|
| Configurations | `configurations` | Object | ✅ Yes | — | Object (can be empty) | Item-organiser specific configuration container. |
| Drop Down View Items | `drop_down_view_items` | Array\<Object\> | ✅ Yes | — | Array (can be empty) | Teamspace/group dropdown definitions. |
| Quick Actions | `quick_actions` | Object | ✅ Yes | — | Object (can be empty) | Quick action presentation + layout settings. |
| Profile | `profile` | Object | ✅ Yes | — | Object (can be empty) | Profile visibility and behavior settings. |

## 5) item_organiser.configurations.searchbar Schema

| Key | JSON Key | JSON Type | Mandatory | Default | Accepted Values | Description |
|-----|----------|-----------|-----------|---------|-----------------|-------------|
| Searchbar | `searchbar` | Object | No | — | Object | Searchbar display configuration. |
| Visible States | `visible_states` | Array\<String\> | No | — | `top`, `up` | States in which searchbar is visible. |

## 6) item_organiser.drop_down_view_items[] Schema

| Key | JSON Key | JSON Type | Mandatory | Default | Accepted Values | Description |
|-----|----------|-----------|-----------|---------|-----------------|-------------|
| Teamspace ID | `id` | String | ✅ Yes | — | Any string (e.g., `Teamspace_2`, `Design_Teamspace`) | Identifier/name for dropdown group/teamspace. |
| Sections | `sections` | Array\<Object\> | ✅ Yes | — | Array (can be empty) | Section blocks shown inside a dropdown item. |

## 6a) item_organiser.drop_down_view_items[].sections[] Schema

| Key | JSON Key | JSON Type | Mandatory | Default | Accepted Values | Description |
|-----|----------|-----------|-----------|---------|-----------------|-------------|
| Section ID | `id` | String | ✅ Yes | — | Any string, including empty string (`""`) | Section label/identifier (empty means unlabeled section). |
| Item IDs | `item_ids` | Array\<String\> | ✅ Yes | — | Module IDs (e.g., `HOME`, `CONTACTS`, `DEALS`, `MEETINGS`, `Custom_1`) | Modules listed under the section. |

## 7) item_organiser.quick_actions Schema

| Key | JSON Key | JSON Type | Mandatory | Default | Accepted Values | Description |
|-----|----------|-----------|-----------|---------|-----------------|-------------|
| Action IDs | `action_ids` | Array\<String\> | No | — | `ZIA`, `FEEDBACK`, `NOTIFICATIONS`, `DIALPAD`, `UNSYNC`, `SETTINGS` | Ordered quick actions to display. |
| Visible States | `visible_states` | Array\<String\> | No | — | `top`, `down`, `up` | States in which quick actions are visible. |
| Item Style | `item_style` | String | No | — | `title_and_icon`, `icon_only` | Visual style for quick-action items. |
| Item Alignment | `item_alignment` | String | No | — | `leading`, `trailing`, `center` | Alignment of quick-action items in container. |
| Layout | `layout` | String | No | — | `fit_by_width`, `fit_by_count`, `scrollable`, `custom_grid` | Layout strategy for quick-action rendering. |
| Custom Grid Column Count | `custom_grid_column_count` | Number (Int) | No | — | Positive integer (sample: `5`) | Used when `layout` = `custom_grid`. |

## 8) item_organiser.profile Schema

| Key | JSON Key | JSON Type | Mandatory | Default | Accepted Values | Description |
|-----|----------|-----------|-----------|---------|-----------------|-------------|
| Visible States | `visible_states` | Array\<String\> | No | — | `top` | States in which profile entry is visible. |
