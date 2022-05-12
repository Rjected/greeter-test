# greeter-test

Used for testing [forge scripting](https://github.com/foundry-rs/foundry/pull/1208) - deploy the `GreeterV1337` contract with:
```
forge script ./src/test/GreeterV1337.t.sol -i 1 --tc GreeterTest --sig "deployGreeter()" --fork-url <RPC URL> --execute
```

Additionally, [GreeterV1337.t.sol](./src/test/GreeterV1337.t.sol) would need to be changed to include the address you'd like to broadcast the deploy transaction from.

```
//    __       ___ ___
//  /'_ `\   /' __` __`\
// /\ \L\ \  /\ \/\ \/\ \
// \ \____ \ \ \_\ \_\ \_\
//  \/___L\ \ \/_/\/_/\/_/
//    /\____/
//    \_/__/
```