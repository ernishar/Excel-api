const xlsx = require("xlsx");
const { QueryTypes } = require("sequelize");
const sequelize = require("../utils/sequelize");

const fetchfromExcelFile = async (req, res) => {
  try {
    const query = `
      SELECT p.ProductName, p.ID, p.SKU, p.VariantID, v.VariantName, p.Price, p.DiscountPercentage,
      (p.Price - (p.Price * p.DiscountPercentage / 100)) AS DiscountedPrice,
      p.Description
      FROM products AS p
      INNER JOIN variants AS v ON p.VariantID = v.VariantID
    `;

    const products = await sequelize.query(query, { type: QueryTypes.SELECT });

    const data = products.map((product) => ({
      ...product,
      DiscountedPrice:
        product.Price - (product.Price * product.DiscountPercentage) / 100,
    }));

    res.status(200).json(data);
  } catch (error) {
    console.error("Error exporting data:", error);
    res.status(500).send("An error occurred while exporting data.");
  }
};

module.exports = fetchfromExcelFile;
