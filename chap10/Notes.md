### Easy way to print and see the steps of 

```
xs = map show [1..5]

:{
foldr (\x y -> concat ["(",x,"+",y,")"])
"0" xs
:}
```