/*
  Warnings:

  - The migration will add a unique constraint covering the columns `[source_article_id]` on the table `Post`. If there are existing duplicate values, the migration will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX `Post.source_article_id_unique` ON `Post`(`source_article_id`);
