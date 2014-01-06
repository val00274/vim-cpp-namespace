if exists("g:loaded_vim_cpp_namespace")
  finish
endif
let g:loaded_vim_cpp_namespace = 1

command! -nargs=0 -range=% AnonNs :call vim_cpp_namespace#AnonymousNamespaces(<line1>, <line2>, <f-args>)
command! -nargs=* -range=% Ns     :call vim_cpp_namespace#Namespaces(<line1>, <line2>, <f-args>)

