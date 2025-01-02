import Product from "../models/ProductModel.js";

// Helper function to format price to IDR (Rupiah)
const formatToRupiah = (price) => {
  return `Rp.${Math.floor(price).toLocaleString('id-ID')}`;
};

// Get all products
export const getProducts = async (req, res) => {
  try {
    const products = await Product.findAll();
    const formattedProducts = products.map(product => ({
      ...product.toJSON(),
      price: formatToRupiah(product.price),
    }));
    res.json(formattedProducts);
  } catch (error) {
    res.status(500).json({ message: "Failed to fetch products.", error });
  }
};

// Get a single product by ID
export const getProductById = async (req, res) => {
  try {
    const product = await Product.findByPk(req.params.id);
    if (!product) return res.status(404).json({ message: "Product not found." });

    const formattedProduct = {
      ...product.toJSON(),
      price: formatToRupiah(product.price),
    };
    res.json(formattedProduct);
  } catch (error) {
    res.status(500).json({ message: "Failed to fetch product.", error });
  }
};

// Create a new product
export const createProduct = async (req, res) => {
  try {
    const { name, description, price } = req.body;

    if (!name || !price) {
      return res.status(400).json({ message: "Name and price are required." });
    }

    const product = await Product.create({ name, description, price: Math.floor(price) });
    const formattedProduct = {
      ...product.toJSON(),
      price: formatToRupiah(product.price),
    };
    res.status(201).json(formattedProduct);
  } catch (error) {
    res.status(500).json({ message: "Failed to create product.", error });
  }
};

// Update a product
export const updateProduct = async (req, res) => {
  try {
    const product = await Product.findByPk(req.params.id);
    if (!product) return res.status(404).json({ message: "Product not found." });

    const { name, description, price } = req.body;
    await product.update({ name, description, price: Math.floor(price) });
    const formattedProduct = {
      ...product.toJSON(),
      price: formatToRupiah(product.price),
    };
    res.json(formattedProduct);
  } catch (error) {
    res.status(400).json({ message: "Failed to update product.", error });
  }
};

// Delete a product
export const deleteProduct = async (req, res) => {
  try {
    const product = await Product.findByPk(req.params.id);
    if (!product) return res.status(404).json({ message: "Product not found." });

    await product.destroy();
    res.json({ message: "Product deleted successfully." });
  } catch (error) {
    res.status(500).json({ message: "Failed to delete product.", error });
  }
};
