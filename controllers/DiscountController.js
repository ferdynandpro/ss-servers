import { Op } from 'sequelize';  // Import Op untuk melakukan pencarian dengan operator Sequelize
import Discount from '../models/DiscountModel.js';
import Customer from '../models/CustomerModel.js';
import Product from '../models/ProductModel.js';


// Helper function to format price to IDR (Rupiah)
const formatToRupiah = (price) => {
  return `Rp.${Math.floor(price).toLocaleString('id-ID')}`;
};


// Get all discounts or search discounts
export const getDiscounts = async (req, res, next) => {
  try {
    const { search } = req.query;  // Mengambil query parameter search
    const whereClause = {};  // Kondisi pencarian

    if (search) {
      // Kondisi pencarian untuk customer_name, product_name, atau discount_price
      whereClause[Op.or] = [
        {
          '$Customer.customer_name$': {
            [Op.like]: `%${search}%`,  // Pencarian nama customer
          },
        },
        {
          '$Product.name$': {
            [Op.like]: `%${search}%`,  // Pencarian nama produk
          },
        },
        {
          discount_price: {
            [Op.like]: `%${search}%`,  // Pencarian harga diskon
          },
        },
      ];
    }

    // Mengambil data discount dengan kondisi pencarian jika ada
    const discounts = await Discount.findAll({
      where: whereClause,  // Apply search filter
      include: [Customer, Product],  // Sertakan informasi customer dan produk
    });

    res.status(200).json(discounts);  // Kirimkan data diskon
  } catch (error) {
    console.error('Error fetching discounts:', error);
    next(error);
  }
};

// Create discount with customer and product name
export const createDiscount = async (req, res, next) => {
  try {
    const { customer_name, product_name, discount_price, minimum_order_quantity } = req.body;

    // Validasi input
    if (!customer_name || !product_name || !discount_price || minimum_order_quantity === undefined) {
      return res.status(400).json({ message: 'All fields are required.' });
    }

    // Cari customer dan produk berdasarkan nama
    const customer = await Customer.findOne({ where: { customer_name: customer_name } });
    const product = await Product.findOne({ where: { name: product_name } });

    if (!customer || !product) {
      return res.status(404).json({ message: 'Customer or product not found' });
    }

    // Buat discount baru dengan customer dan product ID
    const discount = await Discount.create({
      customer_id: customer.id,
      product_id: product.id,
      discount_price,
      minimum_order_quantity,  // Include minimum_order_quantity
    });

    res.status(201).json({ message: 'Discount created successfully', discount });
  } catch (error) {
    console.error('Error creating discount:', error);
    next(error);
  }
};

export const updateDiscount = async (req, res, next) => {
  try {
    const { discount_price, minimum_order_quantity, last_edited_by } = req.body;
    const discountId = req.params.id;

    // Validate input fields
    if (!discount_price || !last_edited_by) {
      return res.status(400).json({ message: 'Discount price and last edited by are required.' });
    }

    // Find the discount by ID
    const discount = await Discount.findByPk(discountId);

    if (!discount) {
      return res.status(404).json({ message: 'Discount not found' });
    }

    // Update the discount details
    discount.discount_price = discount_price;

    // If minimum_order_quantity is provided, update it
    if (minimum_order_quantity !== undefined) {
      discount.minimum_order_quantity = minimum_order_quantity;
    }

    // Set the last updated timestamp and who made the edit
    discount.last_updated = new Date();  // Set last_updated to current date and time
    discount.last_edited_by = last_edited_by;  // Set who made the edit

    // Save the updated discount entry
    await discount.save();

    res.status(200).json({ message: 'Discount updated successfully', discount });
  } catch (error) {
    console.error('Error updating discount:', error);
    next(error);  // Pass the error to the next middleware for handling
  }
};



// Delete discount
export const deleteDiscount = async (req, res, next) => {
  try {
    const deleted = await Discount.destroy({ where: { id: req.params.id } });
    if (!deleted) {
      return res.status(404).json({ message: 'Discount not found' });
    }
    res.status(200).json({ message: 'Discount deleted successfully' });
  } catch (error) {
    console.error('Error deleting discount:', error);
    next(error);
  }
};
