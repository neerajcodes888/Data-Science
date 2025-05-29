-- Swiggy Case Study 

-- 1. Find customers who have never ordered  

select * from users where user_id not in(select user_id from orders);

-- 2. Average Price/dish
select round(avg(amount),2) from orders;


-- 3. Find top restaurant in terms of number of orders for a given month


-- 4. Restaurants with monthly sales > x for


-- 5. Show all orders with order details for a particular customer in a particular date range


-- 6. Find restaurants with max repeated customers


-- 7. Month over month revenue growth of Swiggy


-- 8. Customer → favorite food

