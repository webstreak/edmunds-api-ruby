## Vehicle API

### Makes
[Makes EdmundsApi docs](http://developer.edmunds.com/api-documentation/vehicle/spec_make/v2/)  

| Endpoint  | Description |
|-----------|-------------|
| `Edmunds::Api.new.vehicles.makes.count(options)` | Total Count of Car Makes |
| `Edmunds::Api.new.vehicles.makes.all_makes(options)` | A List of Car Makes |
| `Edmunds::Api.new.vehicles.makes.make("Make", options)` | Details on a Specific Car Make |

### Models
[Models EdmundsApi docs](http://developer.edmunds.com/api-documentation/vehicle/spec_model/v2/)  

| Endpoint  | Description |
|-----------|-------------|
| `Edmunds::Api.new.vehicles.models.count("Make", options)` | Total Count of Models for a Car Make |
| `Edmunds::Api.new.vehicles.models.models("Make", options)` | Get a List of Car Models for a Specific Car Make |
| `Edmunds::Api.new.vehicles.models.model("Make", "Model", options)` | Get Details on a Specific Car Model |

### Styles
[Styles EdmundsApi docs](http://developer.edmunds.com/api-documentation/vehicle/spec_style/v2/)  

| Endpoint  | Description |
|-----------|-------------|
| `Edmunds::Api.new.vehicles.styles.count(options)` | Styles Count |
| `Edmunds::Api.new.vehicles.styles.make_count("Make", options)` | Style Count by Car Make |
| `Edmunds::Api.new.vehicles.styles.make_model_count("Make", "Model", options)` | Style Count by Car Make and Model |
| `Edmunds::Api.new.vehicles.styles.make_model_year_count("Make", "Model", "Year", options)` | Style Count by Car Make/Model/Year |
| `Edmunds::Api.new.vehicles.styles.id(style_id, options)` | Car Style Details by Car Style ID |
| `Edmunds::Api.new.vehicles.styles.make_model_year("Make", "Model", "Year", options)` | Car Style Details by Car Make/Model/Year |
| `Edmunds::Api.new.vehicles.styles.chrome_data(chrome_id, options)` | Car Style Details by Car Chrome Data ID |

### Engines
[Engines EdmundsApi docs](http://developer.edmunds.com/api-documentation/vehicle/spec_engine_and_transmission/v2/)  

| Endpoint  | Description |
|-----------|-------------|
| `Edmunds::Api.new.vehicles.engines.details(engine_id)` | Engine Details by ID |
| `Edmunds::Api.new.vehicles.engines.by_style_id(style_id, options)` | Engines for a Car Style |

### Transmissions
[Transmissions EdmundsApi docs](http://developer.edmunds.com/api-documentation/vehicle/spec_engine_and_transmission/v2/)  

| Endpoint  | Description |
|-----------|-------------|
| `Edmunds::Api.new.vehicles.transmissions.details(transmission_id)` | Transmission Details by ID |
| `Edmunds::Api.new.vehicles.transmissions.by_style_id(style_id, options)` | Transmissions for a Car Style |

### Colors
[Colors EdmundsApi docs](http://developer.edmunds.com/api-documentation/vehicle/spec_colors_and_options/v2/)  

| Endpoint  | Description |
|-----------|-------------|
| `Edmunds::Api.new.vehicles.colors.details(color_id)` | Color Details by ID |
| `Edmunds::Api.new.vehicles.colors.by_style_id(style_id, options)` | Colors for a Car Style |

### Options
[Options EdmundsApi docs](http://developer.edmunds.com/api-documentation/vehicle/spec_colors_and_options/v2/)  

| Endpoint  | Description |
|-----------|-------------|
| `Edmunds::Api.new.vehicles.options.details(option_id)` | Option Details by ID |
| `Edmunds::Api.new.vehicles.options.by_style_id(style_id, options)` | Options for a Car Style |

### Equipment
[Equipment EdmundsApi docs](http://developer.edmunds.com/api-documentation/vehicle/spec_equipment/v2/)  

| Endpoint  | Description |
|-----------|-------------|
| `Edmunds::Api.new.vehicles.equipment.details(equipment_id)` | Equipment Details by ID |
| `Edmunds::Api.new.vehicles.equipment.by_style_id(style_id, options)` | Equipment for a Car Style |

### Squish vin
[Squish vin EdmundsApi docs](http://developer.edmunds.com/api-documentation/vehicle/spec_squishvin/v2/)  

| Endpoint  | Description |
|-----------|-------------|
| `Edmunds::Api.new.vehicles.squishvins.decode(VIN)` | Vehicle Details by Squish VIN |

### VIN Decoding
[VIN decoding EdmundsApi docs](http://developer.edmunds.com/api-documentation/vehicle/spec_vin_decoding/v2/)  

| Endpoint  | Description |
|-----------|-------------|
| `Edmunds::Api.new.vehicles.vin.decode(VIN, options)` | Vehicle Details by VIN |

### Safety
[Safety EdmundsApi docs](http://developer.edmunds.com/api-documentation/vehicle/service_safety/v2/)  

| Endpoint  | Description |
|-----------|-------------|
| `Edmunds::Api.new.vehicles.safety.ratings(style_id)` | Safety ratings by Style ID |
| `Edmunds::Api.new.vehicles.safety.ratings("Make", "Model", "Year")` | Safety ratings by Make/Model/Year |

### Letter Grade Rating
[Grades rating EdmundsApi docs](http://developer.edmunds.com/api-documentation/vehicle/content_letter_grade/v2/)  

| Endpoint  | Description |
|-----------|-------------|
| `Edmunds::Api.new.vehicles.grades.by_style_id(style_id)` | Rating Details by Style ID |
| `Edmunds::Api.new.vehicles.grades.details("Make", "Model", "Year")` | All Rating Details Reviews by Make/Model/Year |
| `Edmunds::Api.new.vehicles.grades.rating("Make", "Model", "Year")` | Letter Grade Rating by Make/Model/Year |
| `Edmunds::Api.new.vehicles.grades.by_review_id("Make", "Model", "Year", review_id)` | Rating Details by Make/Model/Year and Review ID |

## Media API

### Photos
[Photos EdmundsApi docs](http://developer.edmunds.com/api-documentation/media/photos/v2/)  

| Endpoint  | Description |
|-----------|-------------|
| `Edmunds::Api.new.media.photos.by_year_make_model("Year", "Make", "Model", options)` | Find photos by Make/Model/Year |
| `Edmunds::Api.new.media.photos.by_tag(tag, options)` | Find photos by Tag |
| `Edmunds::Api.new.media.photos.by_style_id(style_id, options)` | Find photos by Style ID |
| `Edmunds::Api.new.media.photos.by_make_model("Make", "Model", options)` | Find photos by Make/Model |
