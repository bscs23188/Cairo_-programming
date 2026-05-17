#[starknet::interface]
trait ICalculator<TContractState> {
    fn add(self: @TContractState, a: u32, b: u32) -> u32;
    fn subtract(self: @TContractState, a: u32, b: u32) -> u32;
    fn multiply(self: @TContractState, a: u32, b: u32) -> u32;
}

#[starknet::contract]
mod CalculatorContract {

    use super::ICalculator;

    #[storage]
    struct Storage {}

    #[abi(embed_v0)]
    impl CalculatorImpl of ICalculator<ContractState> {

        // Function to add two numbers
        fn add(self: @ContractState, a: u32, b: u32) -> u32 {
            a + b
        }

        // Function to subtract two numbers
        fn subtract(self: @ContractState, a: u32, b: u32) -> u32 {
            a - b
        }

        // Function to multiply two numbers
        fn multiply(self: @ContractState, a: u32, b: u32) -> u32 {
            a * b
        }
    }
}