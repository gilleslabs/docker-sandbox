package opa.example

allow_request {
    not privileged_mode
}

privileged_mode {
# Don't allow to bind / from host
pattern = "/:"
re_match(pattern,input.Body.HostConfig.Binds[_])

}

privileged_mode {
# Don't allow to bind /etc from host
pattern = "/etc:"
re_match(pattern,input.Body.HostConfig.Binds[_])

}

privileged_mode {
# Don't allow to bind / from host
pattern = "/lib:"
re_match(pattern,input.Body.HostConfig.Binds[_])

}


privileged_mode {
# Don't allow to bind / from host
pattern = "/boot:"
re_match(pattern,input.Body.HostConfig.Binds[_])

}

privileged_mode {
# Don't allow to bind / from host
pattern = "/dev:"
re_match(pattern,input.Body.HostConfig.Binds[_])

}


privileged_mode {
# Don't allow to bind / from host
pattern = "/proc:"
re_match(pattern,input.Body.HostConfig.Binds[_])

}

privileged_mode {
# Don't allow to bind / from host
pattern = "/usr:"
re_match(pattern,input.Body.HostConfig.Binds[_])

}


privileged_mode {
# Don't allow to bind / from host
pattern = "/sys:"
re_match(pattern,input.Body.HostConfig.Binds[_])

}


privileged_mode {
    # This expression asserts that the string on the right-hand side is equal
    # to true referenced on the left-hand side.
    input.Body.HostConfig.Privileged = true
}

privileged_mode {
   # Don't not use Publish all ports
   input.Body.HostConfig.PublishAllPorts = true
}

privileged_mode {
   # Don't not use PidMode host
   input.Body.HostConfig.PidMode = "host"
}

privileged_mode {
   # Don't not use IPCMode  host
   input.Body.HostConfig.IpcMode = "host"
}

privileged_mode {
   # Don't not use UTSMode  host
   input.Body.HostConfig.UTSMode = "host"
}

privileged_mode {
  #Never use --net=host
  input.Body.HostConfig.NetworkMode = "host"
}

privileged_mode {
    # This expression asserts that the string on the right-hand side is equal
    # to an element in the array SecurityOpt referenced on the left-hand side.
    input.Body.HostConfig.SecurityOpt[_] = "seccomp:unconfined"
}