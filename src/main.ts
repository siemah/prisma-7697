import {PrismaClient} from '@prisma/client';

const prisma = new PrismaClient();

(async function () {
  const res = await prisma.category.findMany();
  console.log(res);
})()