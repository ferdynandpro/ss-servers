import { DataTypes } from "sequelize";
import db from "../config/Database.js";

const Product = db.define("Product", {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true, // Kolom id sebagai PRIMARY KEY
  },
  name: {
    type: DataTypes.STRING,
    allowNull: false, // Kolom name wajib diisi
  },
  description: {
    type: DataTypes.TEXT,
    allowNull: true, // Deskripsi opsional
  },
  price: {
    type: DataTypes.DECIMAL(10, 2),
    allowNull: false, // Kolom price wajib diisi
  },
});

export default Product;
