class App::GetterSetter
  getter: (prop, get) ->
    Object.defineProperty @prototype, prop, {get, configurable: yes}

  setter: (prop, set) ->
    Object.defineProperty @prototype, prop, {set, configurable: yes}

Function::getter = App::GetterSetter::getter
Function::setter = App::GetterSetter::setter
