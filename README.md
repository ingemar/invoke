# Object#invoke

```ruby
require 'invoke'

car.invoke(:unload, car.parked?)

car.invoke(:honk, car.speed.positve?)&.wave_at_children
```

## Do not
Be a rebel and run this in production or any other mission-critical code. 😜
