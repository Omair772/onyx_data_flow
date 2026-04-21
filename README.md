# Onyx Flow 💎 | Data Passing Task

This is the second assignment for the Mobile Applications course. This project demonstrates how to **pass data** forward between screens and **return a result** back to the previous screen in Flutter.

## 📝 Assignment Requirements
- [x] Create a Product List Screen.
- [x] Create a Product Details Screen.
- [x] Pass a product name to the details screen via Constructor.
- [x] Return a result (e.g., 'Added to favorites') using `Navigator.pop()`.
- [x] Display the returned result using a **SnackBar**.

---

## 🎨 Design & Theme
The app uses the **Onyx Theme**—a professional dark mode aesthetic with blue accents, highlighting a "Tech Vault" feel.

- **Theme Mode:** Dark.
- **Primary Color:** Blue Grey & Electric Blue.

---

## 📱 Screenshots (Mokhrajat)

### 1. Product List Screen
![List Screen](
<img width="1440" height="3040" alt="Screenshot_٢٠٢٦٠٤٢١-١٧٣٧٤٦" src="https://github.com/user-attachments/assets/366a574d-28b3-4c29-809c-8ac44564627d" />

)

### 2. Passing Data to Details
![Details Screen](
<img width="1440" height="3040" alt="Screenshot_٢٠٢٦٠٤٢١-١٧٣٧٥٣" src="https://github.com/user-attachments/assets/bfbcd65b-1069-4b91-b4f8-0a3f6ab2986b" />

)

### 3. Returning Result (SnackBar)
![SnackBar Result](
<img width="1440" height="3040" alt="Screenshot_٢٠٢٦٠٤٢١-١٨٠٥٥١" src="https://github.com/user-attachments/assets/28fc763b-2fc7-4fd7-a3fd-a0ad7ed2ee95" />


)

---

## 🚀 Technical Flow
1. **Forward:** Data is passed through the class constructor: `ProductDetailsScreen(itemName: items[index])`.
2. **Backward:** When "Confirm" is pressed, data is sent back: `Navigator.pop(context, "Added to Inventory")`.
3. **Feedback:** The original screen awaits the result and triggers a `SnackBar` to show the confirmation.

---

**Student Name:** [omair sadeq abdulqader ahmed IT-level 3]  
**Task:** Exercise 02 - Passing and Returning Data
