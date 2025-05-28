-- Swiggy Case Study 

-- 1. Find customers who have never ordered  

select * from users where user_id not in(select user_id from orders);
