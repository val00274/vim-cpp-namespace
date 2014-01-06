function vim_cpp_namespace#AnonymousNamespaces(start, end, ...)
  call append(a:start-1, ["namespace {"])
  call append(a:end+1, ["}  // anonymous namespace"])
endfunction

function vim_cpp_namespace#Namespace(start, end, name)
  call append(a:start-1, ["namespace ".a:name." {"])
  call append(a:end+1, ["}  // namespace ".a:name])
endfunction

function vim_cpp_namespace#Namespaces(start, end, ...)
  let l:i = 0
  for arg in a:000
    call vim_cpp_namespace#Namespace(a:start+l:i, a:end+l:i, arg)
    let l:i += 1
  endfor
endfunction

