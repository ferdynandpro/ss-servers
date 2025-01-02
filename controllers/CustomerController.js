import Customer from "../models/CustomerModel.js";
import Discount from "../models/DiscountModel.js";

// Function to validate phone number
const validatePhoneNumber = (phone_number) => {
    const phoneRegex = /^08\d+$/; // Phone number should start with '08' and only contain numbers
    return phoneRegex.test(phone_number);
};

// Get All Customers
export const getCustomers = async (req, res, next) => {
    try {
        const customers = await Customer.findAll();
        res.status(200).json(customers);
    } catch (error) {
        next(error);
    }
};

// Get Customer by ID
export const getCustomerById = async (req, res, next) => {
    try {
        const customer = await Customer.findOne({ where: { id: req.params.id } });
        if (!customer) {
            return res.status(404).json({ message: "Customer not found" });
        }
        res.status(200).json(customer);
    } catch (error) {
        next(error);
    }
};

// Create Customer
export const createCustomer = async (req, res, next) => {
    try {
        console.log("Request body:", req.body); // Debug: Cetak body request
        const { customer_name, phone_number } = req.body; // Menambahkan phone_number
        if (!customer_name) {
            return res.status(400).json({ message: "Customer name is required" }); // Validasi input
        }
        
        // Validate phone number
        if (!validatePhoneNumber(phone_number)) {
            return res.status(400).json({ message: "Phone number must start with '08' and contain only numbers" });
        }
        
        const customer = await Customer.create({ customer_name, phone_number }); // Simpan phone_number
        res.status(201).json({ message: "Customer created successfully", customer });
    } catch (error) {
        console.error("Error creating customer:", error);
        next(error);
    }
};

// Update Customer
export const updateCustomer = async (req, res, next) => {
    try {
        const { customer_name, phone_number } = req.body; // Menambahkan phone_number

        // Validate phone number
        if (phone_number && !validatePhoneNumber(phone_number)) {
            return res.status(400).json({ message: "Phone number must start with '08' and contain only numbers" });
        }
        
        const [updated] = await Customer.update(
            { customer_name, phone_number, last_updated: new Date() }, // Perbarui nama dan nomor telepon
            { where: { id: req.params.id } }
        );
        if (!updated) {
            return res.status(404).json({ message: "Customer not found" });
        }
        res.status(200).json({ message: "Customer updated successfully" });
    } catch (error) {
        next(error);
    }
};


// Function to delete a customer
// Function to delete a customer
export const deleteCustomer = async (req, res, next) => {
    try {
      const customerId = req.params.id;
  
      // Check if the customer is associated with any discounts
      const discountCount = await Discount.count({ where: { customer_id: customerId } });
  
      if (discountCount > 0) {
        return res.status(400).json({ message: "Cannot delete customer with associated discounts." });
      }
  
      // Proceed to delete the customer
      const deleted = await Customer.destroy({ where: { id: customerId } });
      if (!deleted) {
        return res.status(404).json({ message: "Customer not found" });
      }
  
      res.status(200).json({ message: "Customer deleted successfully" });
    } catch (error) {
      console.error("Error deleting customer:", error);
      next(error);
    }
  };
  