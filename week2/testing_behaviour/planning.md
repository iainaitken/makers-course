# Planning

## User Stories

### Story

> As a player
>
> So I can play the game
>
> I want to be able to see the board

### Nouns/verbs

Nouns:
* Board
Verbs:
* See

### Story

> As a player
>
> So I can take my turn
>
> I want to be able to place a counter on the board

### Nouns/verbs

Nouns:
* Board
* Counter
Verbs:
* Place

## Class Diagram

| Class: Board             |
| -------                  |
| __Attributes__           |
| squares                  |
| __Methods__              |
| Board.display            |
| board.place(row, column) |

| Class: Counter |
| -------        |
| __Attributes__ |
| symbol (X or O) |
| __Methods__    |
|                |

## Sequence Diagram

[diagram.codes](https://playground.diagram.codes/d/sequence)

````ruby
alias user="User"
alias board="Board"
alias counter="Counter"

user->board: "board = Board.new"
board-->user: "new instance of board created"
user->board: "board.display"
board-->user: "show board on screen"
user->board: "board.place(row, column, symbol)"
board->counter: "counter=counter.new(symbol)"
counter-->board: "new instance of counter created"
board->board: "@squares << {position: [row, column], counter: counter}"
board-->user: "show board on screen with new counter"
```
