## 🧩 Section A: Basic SQL Queries

1️⃣ Show all columns for the show titled **"Blood & Water"**  
2️⃣ List all shows that are rated **TV-MA**  
3️⃣ Display titles of all shows added after **September 1, 2021**  
4️⃣ List the **top 5 most recent shows** based on `date_added`  
5️⃣ Show all **TV Shows** released in **2021**  

---

## 🔍 Section B: Filtering & Pattern Matching

6️⃣ Find all titles that contain the word **"Dead"**  
7️⃣ List shows where the genre (`listed_in`) includes **"Crime"**  
8️⃣ Find all titles with a description that starts with **"To protect"**  
9️⃣ List all shows where the `cast` includes the word **"Khosi"**  
🔟 Show titles with a rating that starts with **'TV'**  

---

## 🧹 Section C: NULL Handling & Sorting

1️⃣1️⃣ List shows with missing `director` sorted by `title`  
1️⃣2️⃣ Show all entries with missing `country` values  
1️⃣3️⃣ Find shows with non-null `cast` but null `director`  
1️⃣4️⃣ Sort shows by `release_year` in descending order  
1️⃣5️⃣ Show the oldest show (earliest `release_year`)  

---

## 🧮 Section D: Aggregate Functions

1️⃣6️⃣ How many total shows are there?  
1️⃣7️⃣ What is the most recent release year?  
1️⃣8️⃣ Count how many shows have a **"PG-13"** rating  
1️⃣9️⃣ What is the average number of minutes for all **Movies**?  
2️⃣0️⃣ Count how many unique countries are represented  

---

## 🧱 Section E: GROUP BY & HAVING

2️⃣1️⃣ Count how many shows exist per `type` (Movie vs TV Show)  
2️⃣2️⃣ Find the number of shows grouped by `rating`  
2️⃣3️⃣ Which genres have more than 1 show?  
2️⃣4️⃣ Find countries with more than 1 show  
2️⃣5️⃣ For each `type`, what is the average release year?  

---

## ✂️ Section F: String Functions

2️⃣6️⃣ Extract the number of minutes from `duration` (e.g., "90 min")  
2️⃣7️⃣ Extract the number of seasons from `duration` (e.g., "2 Seasons")  
2️⃣8️⃣ Find shows where `duration` contains "Season"  
2️⃣9️⃣ Count shows with more than **2 genres** in `listed_in`  
3️⃣0️⃣ Find the longest word used in any `title`  

---

## 📅 Section G: Date Functions

3️⃣1️⃣ Extract the **month** and **year** from `date_added`  
3️⃣2️⃣ Count how many shows were added in **September 2021**  
3️⃣3️⃣ Group shows by `added_year` and count  
3️⃣4️⃣ Find how many shows were added in each month  
3️⃣5️⃣ What day of the week are most shows added on?  

---

## 🕵️ Section H: Subqueries

3️⃣6️⃣ Find the most common `rating` using a subquery  
3️⃣7️⃣ List all shows that match the most common genre  
3️⃣8️⃣ Find all shows that were released in the same year as **"Ganglands"**  
3️⃣9️⃣ List shows whose duration is **greater than the average**  
4️⃣0️⃣ Return shows that were added **on the same date** as any show from **South Africa**  

---

## 🔗 Section I: Self-Joins

4️⃣1️⃣ Find shows that share the same `director` as **"Dick Johnson Is Dead"**  
4️⃣2️⃣ Find pairs of shows released in the same year but different types  
4️⃣3️⃣ Find shows from the same `country` and `rating`  
4️⃣4️⃣ Compare Movie and TV Show that have the same `title`  

---

## 🪜 Section J: Window Functions

4️⃣5️⃣ Assign row number to shows ordered by `date_added`  
4️⃣6️⃣ Show the running total of shows added over time  
4️⃣7️⃣ Find the most recent show per `country`  
4️⃣8️⃣ Calculate days between consecutive additions  
4️⃣9️⃣ Rank shows within each rating by `release_year`  

---

## 🧠 Section K: CASE & Conditional Aggregates

5️⃣0️⃣ Count how many shows are:
- 🟩 Short (< 60 min for Movies or < 2 Seasons for TV Shows)  
- 🟨 Medium (60–120 min or 2–3 Seasons)  
- 🟥 Long (> 120 min or > 3 Seasons)  


