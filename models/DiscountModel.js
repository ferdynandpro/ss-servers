// models/DiscountModel.js
import { Sequelize, DataTypes } from 'sequelize';
import db from '../config/Database.js';
import Customer from './CustomerModel.js';
import Product from './ProductModel.js';

const Discount = db.define('discounts', {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  customer_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  product_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  discount_price: {
    type: DataTypes.DECIMAL(10, 2),
    allowNull: false,
  },
  discount_date: {
    type: Sequelize.DATE,
    defaultValue: Sequelize.NOW,
    allowNull: false,
  },
  last_updated: {
    type: Sequelize.DATE,
    defaultValue: Sequelize.NOW,
    allowNull: true,
    onUpdate: Sequelize.NOW, // Ensures the last_updated field is updated automatically on any update
  },
  last_edited_by: {  // New column to store who edited the discount
    type: DataTypes.STRING,
    allowNull: true,  // Allow null, in case the edit is not tracked (e.g., initial creation)
  },
  minimum_order_quantity: {  // New column to store who edited the discount
    type: DataTypes.STRING,
    allowNull: true,  // Allow null, in case the edit is not tracked (e.g., initial creation)
  },
}, {
  freezeTableName: true,
  timestamps: false,
});

// Define associations
Discount.belongsTo(Customer, { foreignKey: 'customer_id' });
Discount.belongsTo(Product, { foreignKey: 'product_id' });

export default Discount;
