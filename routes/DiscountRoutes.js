// routes/discountRoutes.js
import express from 'express';
import { getDiscounts, createDiscount, updateDiscount, deleteDiscount } from '../controllers/DiscountController.js';

const router = express.Router();

router.get('/discounts', getDiscounts);  // Get all discounts or search discounts
router.put('/discounts/:id', updateDiscount);  // Update discount price
router.post('/discounts', createDiscount);  // Create new discount
router.delete('/discounts/:id', deleteDiscount);  // Delete discount

export default router;
