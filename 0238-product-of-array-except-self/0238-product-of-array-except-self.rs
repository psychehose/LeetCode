impl Solution {    
    pub fn product_except_self(nums: Vec<i32>) -> Vec<i32> {
        
        let mut res = vec![1];

        for index in 1..nums.len() {
            res.push(nums[index-1] * res[index-1] );
        }

        // right update
        let mut right_product = 1;
        for index in 1..=nums.len() {
            res[nums.len() - index] = right_product * res[nums.len() - index];
            right_product *= nums[nums.len() - index];
        }
        
        
        res
    }
}

/*
        // First, i will update 'result' res[i] = res[i] = res[0] * res[1] * ..... res[i-1]
        // first element is 1 (idenity of product)
        // Let' s Example
        // input = [1,2,3,4]
        // res = [1,1,2,6] i will say 'left res'
        
        // Second, update 'result' by iterating backward
        // update res[nums.len() - index] * right_product  ( 1 <= index <= nums.len() )
        // update right_product = right_product * nums[nums.len()-index]
        
        // left res is [1,1,2,6]
        // if index = 1
        // 'true result[nums.len() - 1]'=  left res[nums.len() - 1] (==6) * right_product(==1)
        // right_product = 1 * nums[nums.len()-1] = 1* 4
        
        // if index = 2
        // 'true result[nums.len() - 2]'=  left res[nums.len() - 2] (==2) * right_product(==4)
        // ...
        // done!



*/
