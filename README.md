### Holdem

***

A program that emulates a texas hold'em game.

```

      Model         Views
    +--------+    +--------+ 
    | Match  |--->| GAME   |-----,
    +--------+    +--------+     |
    | playrs |    | hands  |     |
    | hands  |    +--------+     |
    +--------+    | common |     |
    | winner |    +--------+     |
    +--------+    | winner |     |
        |         +--------+     |
        v                        |
    +--------+  +--------------+ |
    | PLAYER |->| Registration | |
    +--------+  +--------------+ |
         |      +------------+   |
         `----->| Dashboard  |<--'
                +------------+
                | statistics |
                +------------+
```


2015 © Yuriy Pitomets.
