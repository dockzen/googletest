
# gtest library build for dockzen-launcher
> Docker-launcher uses gtest library for unit test.
> Refer the build options to make static libraries.
> Source is based on 2017-07-26(master).

## source
<pre>
$ git clone -b 20170726-dockzen https://github.com/dockzen/googletest.git
</pre>  
## for arm (Cross Build - static library)
<pre>
googletest$ ./build.sh arm
</pre>
### outputs
<pre>
build
├── arm
│   └── lib
│       ├── libgmock.a
│       ├── libgmock_main.a
│       ├── libgtest.a
│       └── libgtest_main.a
└── include
    ├── gmock
    │   ├── gmock-actions.h
    │   ├── gmock-cardinalities.h
    │   ├── gmock-generated-actions.h
    │   ├── gmock-generated-actions.h.pump
    │   ├── gmock-generated-function-mockers.h
    │   ├── gmock-generated-function-mockers.h.pump
    │   ├── gmock-generated-matchers.h
    │   ├── gmock-generated-matchers.h.pump
    │   ├── gmock-generated-nice-strict.h
    │   ├── gmock-generated-nice-strict.h.pump
    │   ├── gmock.h
    │   ├── gmock-matchers.h
    │   ├── gmock-more-actions.h
    │   ├── gmock-more-matchers.h
    │   ├── gmock-spec-builders.h
    │   └── internal
    │       ├── custom
    │       │   ├── gmock-generated-actions.h
    │       │   ├── gmock-generated-actions.h.pump
    │       │   ├── gmock-matchers.h
    │       │   └── gmock-port.h
    │       ├── gmock-generated-internal-utils.h
    │       ├── gmock-generated-internal-utils.h.pump
    │       ├── gmock-internal-utils.h
    │       └── gmock-port.h
    └── gtest
        ├── gtest-death-test.h
        ├── gtest.h
        ├── gtest-message.h
        ├── gtest-param-test.h
        ├── gtest-param-test.h.pump
        ├── gtest_pred_impl.h
        ├── gtest-printers.h
        ├── gtest_prod.h
        ├── gtest-spi.h
        ├── gtest-test-part.h
        ├── gtest-typed-test.h
        └── internal
            ├── custom
            │   ├── gtest.h
            │   ├── gtest-port.h
            │   └── gtest-printers.h
            ├── gtest-death-test-internal.h
            ├── gtest-filepath.h
            ├── gtest-internal.h
            ├── gtest-linked_ptr.h
            ├── gtest-param-util-generated.h
            ├── gtest-param-util-generated.h.pump
            ├── gtest-param-util.h
            ├── gtest-port-arch.h
            ├── gtest-port.h
            ├── gtest-string.h
            ├── gtest-tuple.h
            ├── gtest-tuple.h.pump
            ├── gtest-type-util.h
            └── gtest-type-util.h.pump

</pre>

## for amd64 (install gtest library into Linux Host PC )
<pre>
googletest$ ./build.sh
</pre>
