-- --------------------------------------------------------
-- USERS (1 admin + 3 customers)
-- password is 'password' hashed with bcrypt
-- --------------------------------------------------------
INSERT INTO `users` (`name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
('Admin User',    'admin@shop.com',   NOW(), '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NOW(), NOW()),
('Alice Johnson', 'alice@gmail.com',  NOW(), '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NOW(), NOW()),
('Bob Smith',     'bob@gmail.com',    NOW(), '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NOW(), NOW()),
('Carol White',   'carol@gmail.com',  NOW(), '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NOW(), NOW());

-- --------------------------------------------------------
-- ROLES
-- --------------------------------------------------------
INSERT INTO `roles` (`name`, `created_at`, `updated_at`) VALUES
('admin',    NOW(), NOW()),
('user',     NOW(), NOW()),
('editor',   NOW(), NOW());

-- --------------------------------------------------------
-- ROLE_USERS (user 1 = admin, others = regular users)
-- --------------------------------------------------------
INSERT INTO `role_users` (`role_id`, `user_id`) VALUES
(1, 1),
(2, 2),
(2, 3),
(2, 4);

-- --------------------------------------------------------
-- SETTINGS
-- --------------------------------------------------------
INSERT INTO `settings` (`title`, `keywords`, `description`, `company`, `address`, `phone`, `fax`, `email`, `smtpserver`, `smtpemail`, `smtppassword`, `smtpport`, `facebook`, `instagram`, `twitter`, `youtube`, `aboutus`, `contact`, `icon`, `status`, `created_at`, `updated_at`) VALUES
('My Shop', 'ecommerce, shop, online store', 'The best online shop', 'My Shop LLC', '123 Main Street, New York, NY', '+1-555-0100', '+1-555-0101', 'info@myshop.com', 'smtp.mailtrap.io', 'smtp@myshop.com', 'smtppassword123', 587, 'https://facebook.com/myshop', 'https://instagram.com/myshop', 'https://twitter.com/myshop', 'https://youtube.com/myshop', 'We are a leading online store offering quality products.', 'Contact us at info@myshop.com or call +1-555-0100.', 'icon.png', 'True', NOW(), NOW());

-- --------------------------------------------------------
-- CATEGORIES
-- --------------------------------------------------------
INSERT INTO `categories` (`title`, `keywords`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
('Electronics',   'electronics, gadgets, tech',      'Latest electronic gadgets and devices', 'electronics.jpg',  'True',  NOW(), NOW()),
('Clothing',      'clothing, fashion, apparel',       'Trendy clothing for all seasons',       'clothing.jpg',     'True',  NOW(), NOW()),
('Books',         'books, novels, education',         'Wide selection of books and novels',    'books.jpg',        'True',  NOW(), NOW()),
('Home & Garden', 'home, garden, furniture',          'Everything for your home and garden',   'home.jpg',         'True',  NOW(), NOW()),
('Sports',        'sports, fitness, outdoor',         'Sports and fitness equipment',          'sports.jpg',       'False', NOW(), NOW());

-- --------------------------------------------------------
-- PRODUCTS
-- --------------------------------------------------------
INSERT INTO `products` (`category_id`, `user_id`, `title`, `keywords`, `description`, `image`, `detail`, `pirce`, `quantity`, `minquantity`, `tax`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'iPhone 14 Pro',        'iphone, apple, smartphone',   'Latest Apple smartphone',          'iphone14.jpg',   'A15 Bionic chip, 48MP camera, Dynamic Island', 999.99, 50,  1, 10, 'True',  NOW(), NOW()),
(1, 1, 'Samsung Galaxy S23',   'samsung, android, phone',     'Flagship Samsung smartphone',      'galaxys23.jpg',  'Snapdragon 8 Gen 2, 200MP camera, 5G',        849.99, 30,  1, 10, 'True',  NOW(), NOW()),
(1, 1, 'Sony WH-1000XM5',      'sony, headphones, wireless',  'Noise cancelling headphones',      'sony_wh.jpg',    '30hr battery, industry-leading noise cancel',  349.99, 100, 1, 10, 'True',  NOW(), NOW()),
(2, 1, 'Classic Denim Jacket', 'denim, jacket, fashion',      'Timeless denim jacket for all',    'denim.jpg',      '100% cotton, available in S/M/L/XL',           79.99,  200, 1,  5, 'True',  NOW(), NOW()),
(2, 1, 'Running Sneakers',     'shoes, running, sport',       'Lightweight running shoes',        'sneakers.jpg',   'Breathable mesh, cushioned sole',               59.99,  150, 1,  5, 'True',  NOW(), NOW()),
(3, 1, 'Clean Code',           'programming, book, software', 'A handbook of agile software',     'cleancode.jpg',  'By Robert C. Martin, 431 pages',                34.99,  75,  1,  0, 'True',  NOW(), NOW()),
(3, 1, 'The Pragmatic Programmer', 'programming, book',      'Your journey to mastery',          'pragmatic.jpg',  'By Hunt & Thomas, 352 pages',                   39.99,  60,  1,  0, 'True',  NOW(), NOW()),
(4, 1, 'Ergonomic Office Chair','chair, office, furniture',   'Comfortable ergonomic chair',      'chair.jpg',      'Lumbar support, adjustable height, mesh back',  249.99, 40,  1,  8, 'True',  NOW(), NOW()),
(5, 1, 'Yoga Mat',             'yoga, fitness, mat',          'Non-slip premium yoga mat',        'yogamat.jpg',    '6mm thick, eco-friendly material',              29.99,  300, 1,  5, 'False', NOW(), NOW()),
(1, 1, 'Dell Monitor 27"',     'dell, monitor, display',      '4K UHD monitor for professionals', 'dellmonitor.jpg','IPS panel, 144Hz, USB-C, HDR400',              429.99, 25,  1, 10, 'True',  NOW(), NOW());

-- --------------------------------------------------------
-- IMAGES (extra product images)
-- --------------------------------------------------------
INSERT INTO `images` (`product_id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'iPhone 14 Pro Front',   'iphone14_front.jpg',   NOW(), NOW()),
(1, 'iPhone 14 Pro Back',    'iphone14_back.jpg',    NOW(), NOW()),
(2, 'Galaxy S23 Front',      'galaxys23_front.jpg',  NOW(), NOW()),
(3, 'Sony Headphones Side',  'sony_wh_side.jpg',     NOW(), NOW()),
(8, 'Chair Side View',       'chair_side.jpg',       NOW(), NOW()),
(10,'Monitor Side View',     'monitor_side.jpg',     NOW(), NOW());

-- --------------------------------------------------------
-- COMMENTS (reviews on products)
-- --------------------------------------------------------
INSERT INTO `comments` (`user_id`, `product_id`, `subject`, `review`, `IP`, `rate`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'Amazing phone!',       'Best iPhone yet, camera is outstanding',    '192.168.1.10', 5, 'True',  NOW(), NOW()),
(3, 1, 'Good but pricey',      'Great features but very expensive',         '192.168.1.11', 4, 'True',  NOW(), NOW()),
(4, 2, 'Love my Galaxy',       'Smooth performance, excellent display',     '192.168.1.12', 5, 'True',  NOW(), NOW()),
(2, 3, 'Best headphones ever', 'Noise cancellation is phenomenal',         '192.168.1.10', 5, 'True',  NOW(), NOW()),
(3, 6, 'Must read!',           'Changed how I write code completely',       '192.168.1.11', 5, 'True',  NOW(), NOW()),
(4, 8, 'Very comfortable',     'Back pain gone after using this chair',     '192.168.1.12', 4, 'New',   NOW(), NOW()),
(2, 5, 'Great value',          'Lightweight and very comfortable to wear',  '192.168.1.10', 4, 'New',   NOW(), NOW());

-- --------------------------------------------------------
-- MESSAGES (contact form submissions)
-- --------------------------------------------------------
INSERT INTO `messages` (`name`, `email`, `phone`, `subject`, `message`, `note`, `ip`, `status`, `created_at`, `updated_at`) VALUES
('John Doe',    'john@gmail.com',   '+1-555-0111', 'Order Inquiry',       'When will my order #5 arrive?',             NULL,              '10.0.0.1', 'New',  NOW(), NOW()),
('Jane Roe',    'jane@gmail.com',   '+1-555-0112', 'Return Request',      'I would like to return my sneakers',        'Awaiting reply',  '10.0.0.2', 'Read', NOW(), NOW()),
('Mike Brown',  'mike@outlook.com', '+1-555-0113', 'Product Availability','Do you have Galaxy S23 in blue?',           NULL,              '10.0.0.3', 'New',  NOW(), NOW()),
('Sara Lee',    'sara@yahoo.com',   NULL,           'Feedback',            'Your website is very easy to use, thanks!', 'Positive',        '10.0.0.4', 'Read', NOW(), NOW());

-- --------------------------------------------------------
-- FAQS
-- --------------------------------------------------------
INSERT INTO `faqs` (`question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
('How long does shipping take?',        'Standard shipping takes 3-5 business days.',                       'True',  NOW(), NOW()),
('Can I return a product?',             'Yes, returns are accepted within 30 days of purchase.',            'True',  NOW(), NOW()),
('Do you offer international shipping?','Yes, we ship to over 50 countries worldwide.',                     'True',  NOW(), NOW()),
('How do I track my order?',            'You will receive a tracking email once your order is dispatched.', 'True',  NOW(), NOW()),
('What payment methods are accepted?',  'We accept Visa, MasterCard, PayPal, and bank transfers.',          'False', NOW(), NOW());

-- --------------------------------------------------------
-- SHOP CARTS (active carts for users)
-- --------------------------------------------------------
INSERT INTO `shop_carts` (`user_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(2, 1,  1, NOW(), NOW()),
(2, 3,  1, NOW(), NOW()),
(3, 4,  2, NOW(), NOW()),
(4, 6,  1, NOW(), NOW()),
(4, 10, 1, NOW(), NOW());

-- --------------------------------------------------------
-- ORDERS
-- --------------------------------------------------------
INSERT INTO `orders` (`user_id`, `name`, `email`, `address`, `phone`, `total`, `note`, `IP`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Alice Johnson', 'alice@gmail.com', '456 Oak Ave, Boston, MA 02101',      '+1-555-0200', 1349.98, NULL,            '10.0.1.1', 'Delivered', NOW(), NOW()),
(3, 'Bob Smith',     'bob@gmail.com',   '789 Pine Rd, Chicago, IL 60601',     '+1-555-0201', 159.98,  'Leave at door', '10.0.1.2', 'Shipped',   NOW(), NOW()),
(4, 'Carol White',   'carol@gmail.com', '321 Elm St, Houston, TX 77001',      '+1-555-0202', 34.99,   NULL,            '10.0.1.3', 'New',       NOW(), NOW()),
(2, 'Alice Johnson', 'alice@gmail.com', '456 Oak Ave, Boston, MA 02101',      '+1-555-0200', 429.99,  NULL,            '10.0.1.1', 'New',       NOW(), NOW());

-- --------------------------------------------------------
-- ORDER_PRODUCTS (line items per order)
-- --------------------------------------------------------
INSERT INTO `order_products` (`user_id`, `name`, `email`, `address`, `phone`, `total`, `note`, `IP`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Alice Johnson', 'alice@gmail.com', '456 Oak Ave, Boston, MA 02101',  '+1-555-0200', 999.99, NULL,            '10.0.1.1', 'Delivered', NOW(), NOW()),
(2, 'Alice Johnson', 'alice@gmail.com', '456 Oak Ave, Boston, MA 02101',  '+1-555-0200', 349.99, NULL,            '10.0.1.1', 'Delivered', NOW(), NOW()),
(3, 'Bob Smith',     'bob@gmail.com',   '789 Pine Rd, Chicago, IL 60601', '+1-555-0201', 79.99,  'Leave at door', '10.0.1.2', 'Shipped',   NOW(), NOW()),
(3, 'Bob Smith',     'bob@gmail.com',   '789 Pine Rd, Chicago, IL 60601', '+1-555-0201', 79.99,  'Leave at door', '10.0.1.2', 'Shipped',   NOW(), NOW()),
(4, 'Carol White',   'carol@gmail.com', '321 Elm St, Houston, TX 77001',  '+1-555-0202', 34.99,  NULL,            '10.0.1.3', 'New',       NOW(), NOW()),
(2, 'Alice Johnson', 'alice@gmail.com', '456 Oak Ave, Boston, MA 02101',  '+1-555-0200', 429.99, NULL,            '10.0.1.1', 'New',       NOW(), NOW());