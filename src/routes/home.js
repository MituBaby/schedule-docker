import express from 'express';
import getHome from '../controllers/home/getHome.js';

const homeRouter = express.Router();

homeRouter.get('/', getHome);

export default homeRouter;
