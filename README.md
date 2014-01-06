# vim-cpp-namespace

`vim-cpp-namespace` is Vim plugin. It defines `Ns`, `AnonNs` commands for linewise visual mode.

## example 

``` cpp
#include <iostream>

void say_hello() {
  std::cout << "hello!" << std::endl;
}

void say_goodbye() {
  std::cout << "goodbye!" << std::endl;
}

int main(int, char**) {
  foo::bar::say_hello();
  say_goodbye();
  return 0;
}
```

``` vim
" selection 3-5 lines at linewise visual mode.
3ggV2j

" wrap namespace foo::bar
:'<,'>Ns foo bar
```

``` cpp
#include <iostream>

namespace foo {
namespace bar {
void say_hello() {
  std::cout << "hello!" << std::endl;
}
}  // namespace bar
}  // namespace foo

void say_goodbye() {
  std::cout << "goodbye!" << std::endl;
}

int main(int, char**) {
  foo::bar::say_hello();
  say_goodbye();
  return 0;
}
```

``` vim
" selection 11-13 lines at linewise visual mode.
11ggV2j

" wrap anonymous namespace
:'<,'>AnonNs
```

``` cpp
#include <iostream>

namespace foo {
namespace bar {
void say_hello() {
  std::cout << "hello!" << std::endl;
}
}  // namespace bar
}  // namespace foo

namespace {
void say_goodbye() {
  std::cout << "goodbye!" << std::endl;
}
}  // anonymous namespace

int main(int, char**) {
  foo::bar::say_hello();
  say_goodbye();
  return 0;
}
```

