# Schema Reference

## 1) TopBar Configuration Schema

| Key | JSON Key | JSON Type | Mandatory | Default | Accepted Values | Description |
|-----|----------|-----------|-----------|---------|-----------------|-------------|
| ID | `id` | String | ✅ Yes | — | Any string e.g. "DEALS" | Unique identifier for the TopBar configuration |
| Version | `version` | String | ✅ Yes | — | "1.0.0", etc. | Schema version of the configuration |
| View Items | `tb_view_items` | Object | ✅ Yes | — | — | Container object holding all TopBar view components |

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
