const express = require("express");
const importExcelFile = require("../controller/importController");
const multer = require("multer");
const exportExcelFile = require("../controller/exportController");
const fetchfromExcelFile = require("../controller/FetchData")

const router = express.Router();

router.post("/import", multer({ dest: "uploads/" }).single("xlsx"), importExcelFile);
router.get("/fetchFile", fetchfromExcelFile);
router.get("/export", exportExcelFile);

module.exports = router;
