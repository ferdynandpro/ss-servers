// models/CustomerModel.js
import { Sequelize, DataTypes } from 'sequelize';
import db from '../config/Database.js';

const Customer = db.define(
  "customers",
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    customer_name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    phone_number: {
      type: DataTypes.STRING,
      allowNull: true,
    },
  },
  {
    freezeTableName: true,
    timestamps: true,
  }
);

export default Customer;
