package main

import "fmt"
import "strconv"

func main() {
  a := ""
  fmt.Scanf("%s", &a)

  for i := 1; i < 50; i++ {
    first := a[0]
    count := 0
    result := ""

    for j := 0; j < len(a); j++ {
      if first == a[j] {
        count = count + 1
      } else {
        result += strconv.Itoa(count)
        result += a[j-1:j]
        first = a[j]
        count = 1
      }
    }
    result += strconv.Itoa(count)
    result += a[len(a)-1:len(a)]
    a = result
  }

  res := 0
  for i := 0; i < len(a); i++ {
    res += int(a[i]) - 48 
  }
  fmt.Println(res)
}
