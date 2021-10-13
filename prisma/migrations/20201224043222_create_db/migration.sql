-- CreateTable
CREATE TABLE `Post` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `content` MEDIUMTEXT,
    `published` BOOLEAN DEFAULT true,
    `publisher` VARCHAR(191),
    `source_article_id` VARCHAR(191),
    `link` VARCHAR(1000),
    `image_link` VARCHAR(255),
    `language` VARCHAR(5) DEFAULT 'en',
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `categoryId` INT,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Category` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191),
UNIQUE INDEX `Category.code_unique`(`code`),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `_CategoryToPost` (
    `A` INT NOT NULL,
    `B` INT NOT NULL,
UNIQUE INDEX `_CategoryToPost_AB_unique`(`A`, `B`),
INDEX `_CategoryToPost_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `_CategoryToPost` ADD FOREIGN KEY (`A`) REFERENCES `Category`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_CategoryToPost` ADD FOREIGN KEY (`B`) REFERENCES `Post`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- Insert categories
INSERT INTO `Category`(`code`, `name`, `updatedAt`) VALUES 
  ('ar', 'arts', NOW()), 
  ('sp', 'sports', NOW()), 
  ('bu', 'business', NOW()), 
  ('en', 'entertainment', NOW()), 
  ('fo', 'food', NOW()), 
  ('he', 'health', NOW()), 
  ('li', 'lifestyle', NOW()), 
  ('lv', 'living', NOW()), 
  ('mo', 'motoring', NOW()), 
  ('ne', 'news', NOW()), 
  ('sc', 'science', NOW()), 
  ('te', 'technologie', NOW()), 
  ('tr', 'travel', NOW()), 
  ('ga', 'game', NOW());