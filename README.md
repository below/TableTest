# TableTest

The goal is to make the `TableViewCell_A` become the first responder, and stay the first responder after a `reloadData`. This does not seem to be working.

Any idea is appreciated. Returning `false` in `canResignFirstResponder` will cause the reload to fail, so that's no option :(