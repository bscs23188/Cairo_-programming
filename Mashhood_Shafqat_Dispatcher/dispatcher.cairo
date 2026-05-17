#[starknet::interface]
trait ICalculator<TContractState> {
    fn add(self: @TContractState, a: u32, b: u32) -> u32;
}

#[starknet::contract]
mod DispatcherContract {

    use super::ICalculatorDispatcher;
    use starknet::ContractAddress;

    #[storage]
    struct Storage {}

    #[external(v0)]
    fn call_add(
        ref self: ContractState,
        calculator_address: ContractAddress,
        a: u32,
        b: u32
    ) -> u32 {

        // Creating dispatcher instance
        let dispatcher = ICalculatorDispatcher {
            contract_address: calculator_address
        };

        // Calling add function from Calculator contract
        dispatcher.add(a, b)
    }
}