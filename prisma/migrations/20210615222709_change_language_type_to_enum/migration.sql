/*
  Warnings:

  - You are about to alter the column `language` on the `Post` table. The data in that column could be lost. The data in that column will be cast from `String` to `Enum("Post_language")`.

*/
-- AlterTable
ALTER TABLE `Post` MODIFY `language` ENUM('en') DEFAULT 'en';
