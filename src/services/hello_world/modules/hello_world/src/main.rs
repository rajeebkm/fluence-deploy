// main.rs
use marine_rs_sdk::marine;             // 1

#[marine]                              // 2
pub struct Hello {
  pub response: String
}

pub fn main() {}                       // 3

#[marine]                              // 4
pub fn hello_world() -> Hello {        // 5
    let response = format!("Hello, Fluence!");
    Hello { response }
}

//  main.rs
// <...>
#[cfg(test)]
mod tests {
    use marine_rs_sdk_test::marine_test;                                        // 1

    #[marine_test(config_path = "../../../../../../.fluence/tmp/Config.toml")]  // 2
    fn test_hello_world(hw: marine_test_env::hello_world::ModuleInterface) {    // 3
        let greeting = hw.hello_world();
        assert_eq!(greeting.response, "Hello, Fluence!".to_string());
    }
}