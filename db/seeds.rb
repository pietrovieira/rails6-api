# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

city01 = City.create(label: 'Presidente Prudente', isActive: true)
# neighborhood01 = Neighborhood.create(label: 'Sto Expedito 1', isActive: true, isDelivery: true, city: city01)
# neighborhood02 = Neighborhood.create(label: 'Centro', isActive: true, isDelivery: true, city: city01)
# neighborhood03 = Neighborhood.create(label: 'Mare Mansa', isActive: true, isDelivery: true, city: city01)

# Faq.create(question: Faker::Lorem.paragraph, response: Faker::Lorem.paragraph(sentence_count: 10, supplemental: false, random_sentences_to_add: 4), isActive: true, order: 1)
# Faq.create(question: Faker::Lorem.paragraph, response: Faker::Lorem.paragraph(sentence_count: 10, supplemental: false, random_sentences_to_add: 4), isActive: true, order: 2)
# Faq.create(question: Faker::Lorem.paragraph, response: Faker::Lorem.paragraph(sentence_count: 10, supplemental: false, random_sentences_to_add: 4), isActive: true, order: 3)
# Faq.create(question: Faker::Lorem.paragraph, response: Faker::Lorem.paragraph(sentence_count: 10, supplemental: false, random_sentences_to_add: 4), isActive: true, order: 4)
# Faq.create(question: Faker::Lorem.paragraph, response: Faker::Lorem.paragraph(sentence_count: 10, supplemental: false, random_sentences_to_add: 4), isActive: true, order: 5)
# Faq.create(question: Faker::Lorem.paragraph, response: Faker::Lorem.paragraph(sentence_count: 10, supplemental: false, random_sentences_to_add: 4), isActive: true, order: 6)
# Faq.create(question: Faker::Lorem.paragraph, response: Faker::Lorem.paragraph(sentence_count: 10, supplemental: false, random_sentences_to_add: 4), isActive: true, order: 7)
# Faq.create(question: Faker::Lorem.paragraph, response: Faker::Lorem.paragraph(sentence_count: 10, supplemental: false, random_sentences_to_add: 4), isActive: true, order: 8)
# Faq.create(question: Faker::Lorem.paragraph, response: Faker::Lorem.paragraph(sentence_count: 10, supplemental: false, random_sentences_to_add: 4), isActive: true, order: 9)
# Faq.create(question: Faker::Lorem.paragraph, response: Faker::Lorem.paragraph(sentence_count: 10, supplemental: false, random_sentences_to_add: 4), isActive: true, order: 10)

# categoryAll = Category.create(label: 'Todas as categorias', slug: 'todas-as-categorias', isActive: true, description: 'Descrição para todas as categorias')

# subCategory01 = SubCategory.create(label: 'Unhas', slug: 'unhas', isActive: true, description: 'Descrição para unhas', category: categoryAll)
# SubCategoryNeighborhood.create(sub_category: subCategory01, neighborhood: neighborhood01, price: Faker::Commerce.price)
# SubCategoryNeighborhood.create(sub_category: subCategory01, neighborhood: neighborhood02, price: Faker::Commerce.price)
# SubCategoryNeighborhood.create(sub_category: subCategory01, neighborhood: neighborhood03, price: Faker::Commerce.price)

# subCategory02 = SubCategory.create(label: 'Depilação', slug: 'depilacao', isActive: true, description: 'Descrição para Depilação', category: categoryAll)
# SubCategoryNeighborhood.create(sub_category: subCategory02, neighborhood: neighborhood01, price: Faker::Commerce.price)
# SubCategoryNeighborhood.create(sub_category: subCategory02, neighborhood: neighborhood02, price: Faker::Commerce.price)
# SubCategoryNeighborhood.create(sub_category: subCategory02, neighborhood: neighborhood03, price: Faker::Commerce.price)

# subCategory03 = SubCategory.create(label: 'Cabelos', slug: 'cabelos', isActive: true, description: 'Descrição para cabelos', category: categoryAll)
# SubCategoryNeighborhood.create(sub_category: subCategory03, neighborhood: neighborhood01, price: Faker::Commerce.price)
# SubCategoryNeighborhood.create(sub_category: subCategory03, neighborhood: neighborhood02, price: Faker::Commerce.price)
# SubCategoryNeighborhood.create(sub_category: subCategory03, neighborhood: neighborhood03, price: Faker::Commerce.price)

# user01 = User.create(name: 'User02', username: 'user02', email: 'example@email.com', password: '123mudar', password_confirmation: '123mudar' )
# UserInfo.create(user: user01, name: 'Pietro Vieira', indentifyId: '35531490802', birthday: '1989-03-13', isActive: true )
# userShipping01 = UserShipping.create(zipcode: Faker::Address.zip_code, lat: Faker::Address.latitude, long: Faker::Address.longitude, address: Faker::Address.street_name, num: 1, neighborhood: neighborhood01, city: city01, user: user01, uf: 'SP' )
# userShipping02 = UserShipping.create(zipcode: Faker::Address.zip_code, lat: Faker::Address.latitude, long: Faker::Address.longitude, address: Faker::Address.street_name, num: 2, neighborhood: neighborhood02, city: city01, user: user01, uf: 'SP' )
# userShipping03 = UserShipping.create(zipcode: Faker::Address.zip_code, lat: Faker::Address.latitude, long: Faker::Address.longitude, address: Faker::Address.street_name, num: 3, neighborhood: neighborhood03, city: city01, user: user01, uf: 'SP' )

# product01 = Product.create(title: Faker::Commerce.product_name, sub_title: Faker::Lorem.paragraph, price_before: Faker::Commerce.price, price: Faker::Commerce.price, sub_category: subCategory01, description: Faker::Markdown.sandwich(sentences: 12, repeat: 3))
# product02 = Product.create(title: Faker::Commerce.product_name, sub_title: Faker::Lorem.paragraph, price_before: Faker::Commerce.price, price: Faker::Commerce.price, sub_category: subCategory01, description: Faker::Markdown.sandwich(sentences: 12, repeat: 3))
# product03 = Product.create(title: Faker::Commerce.product_name, sub_title: Faker::Lorem.paragraph, price_before: Faker::Commerce.price, price: Faker::Commerce.price, sub_category: subCategory01, description: Faker::Markdown.sandwich(sentences: 12, repeat: 3))
# Product.create(title: Faker::Commerce.product_name, sub_title: Faker::Lorem.paragraph, price_before: Faker::Commerce.price, price: Faker::Commerce.price, sub_category: subCategory01, description: Faker::Markdown.sandwich(sentences: 12, repeat: 3))
# Product.create(title: Faker::Commerce.product_name, sub_title: Faker::Lorem.paragraph, price_before: Faker::Commerce.price, price: Faker::Commerce.price, sub_category: subCategory01, description: Faker::Markdown.sandwich(sentences: 12, repeat: 3))

# Product.create(title: Faker::Commerce.product_name, sub_title: Faker::Lorem.paragraph, price_before: Faker::Commerce.price, price: Faker::Commerce.price, sub_category: subCategory02, description: Faker::Markdown.sandwich(sentences: 12, repeat: 3))
# Product.create(title: Faker::Commerce.product_name, sub_title: Faker::Lorem.paragraph, price_before: Faker::Commerce.price, price: Faker::Commerce.price, sub_category: subCategory02, description: Faker::Markdown.sandwich(sentences: 12, repeat: 3))
# Product.create(title: Faker::Commerce.product_name, sub_title: Faker::Lorem.paragraph, price_before: Faker::Commerce.price, price: Faker::Commerce.price, sub_category: subCategory02, description: Faker::Markdown.sandwich(sentences: 12, repeat: 3))
# Product.create(title: Faker::Commerce.product_name, sub_title: Faker::Lorem.paragraph, price_before: Faker::Commerce.price, price: Faker::Commerce.price, sub_category: subCategory02, description: Faker::Markdown.sandwich(sentences: 12, repeat: 3))
# Product.create(title: Faker::Commerce.product_name, sub_title: Faker::Lorem.paragraph, price_before: Faker::Commerce.price, price: Faker::Commerce.price, sub_category: subCategory02, description: Faker::Markdown.sandwich(sentences: 12, repeat: 3))

# Product.create(title: Faker::Commerce.product_name, sub_title: Faker::Lorem.paragraph, price_before: Faker::Commerce.price, price: Faker::Commerce.price, sub_category: subCategory03, description: Faker::Markdown.sandwich(sentences: 12, repeat: 3))
# Product.create(title: Faker::Commerce.product_name, sub_title: Faker::Lorem.paragraph, price_before: Faker::Commerce.price, price: Faker::Commerce.price, sub_category: subCategory03, description: Faker::Markdown.sandwich(sentences: 12, repeat: 3))
# Product.create(title: Faker::Commerce.product_name, sub_title: Faker::Lorem.paragraph, price_before: Faker::Commerce.price, price: Faker::Commerce.price, sub_category: subCategory03, description: Faker::Markdown.sandwich(sentences: 12, repeat: 3))
# Product.create(title: Faker::Commerce.product_name, sub_title: Faker::Lorem.paragraph, price_before: Faker::Commerce.price, price: Faker::Commerce.price, sub_category: subCategory03, description: Faker::Markdown.sandwich(sentences: 12, repeat: 3))
# Product.create(title: Faker::Commerce.product_name, sub_title: Faker::Lorem.paragraph, price_before: Faker::Commerce.price, price: Faker::Commerce.price, sub_category: subCategory03, description: Faker::Markdown.sandwich(sentences: 12, repeat: 3))

# ########
# order01 = Order.create(total: Faker::Commerce.price, discount: Faker::Commerce.price, shipping: Faker::Commerce.price, status: 'APPROVED', status_payment: 'APPROVED', user: user01)

# OrderProduct.create(order: order01, label: product01.title, price_unit: product01.price, qty: 1)
# OrderProduct.create(order: order01, label: product02.title, price_unit: product02.price, qty: 1)
# OrderProduct.create(order: order01, label: product03.title, price_unit: product03.price, qty: 1)

# OrderShipping.create(order: order01, address: userShipping01.address, num: userShipping01.num, neighborhood: neighborhood01.label, city: city01.label, uf: userShipping01.uf)
# OrderShipping.create(order: order01, address: userShipping01.address, num: userShipping01.num, neighborhood: neighborhood01.label, city: city01.label, uf: userShipping01.uf)
# OrderShipping.create(order: order01, address: userShipping01.address, num: userShipping01.num, neighborhood: neighborhood01.label, city: city01.label, uf: userShipping01.uf)
# ########

# ########
# order02 = Order.create(total: Faker::Commerce.price, discount: Faker::Commerce.price, shipping: Faker::Commerce.price, status: 'DENIDED', status_payment: 'APPROVED', user: user01)

# OrderProduct.create(order: order02, label: product01.title, price_unit: product01.price, qty: 1)
# OrderProduct.create(order: order02, label: product02.title, price_unit: product02.price, qty: 1)
# OrderProduct.create(order: order02, label: product03.title, price_unit: product03.price, qty: 1)

# OrderShipping.create(order: order02, address: userShipping01.address, num: userShipping01.num, neighborhood: neighborhood01.label, city: city01.label, uf: userShipping01.uf)
# OrderShipping.create(order: order02, address: userShipping01.address, num: userShipping01.num, neighborhood: neighborhood01.label, city: city01.label, uf: userShipping01.uf)
# OrderShipping.create(order: order02, address: userShipping01.address, num: userShipping01.num, neighborhood: neighborhood01.label, city: city01.label, uf: userShipping01.uf)

# ########
# ########
# order03 = Order.create(total: Faker::Commerce.price, discount: Faker::Commerce.price, shipping: Faker::Commerce.price, status: 'WAITING', status_payment: 'APPROVED', user: user01)

# OrderProduct.create(order: order03, label: product01.title, price_unit: product01.price, qty: 1)
# OrderProduct.create(order: order03, label: product02.title, price_unit: product02.price, qty: 1)
# OrderProduct.create(order: order03, label: product03.title, price_unit: product03.price, qty: 1)

# OrderShipping.create(order: order03, address: userShipping01.address, num: userShipping01.num, neighborhood: neighborhood01.label, city: city01.label, uf: userShipping01.uf)
# OrderShipping.create(order: order03, address: userShipping01.address, num: userShipping01.num, neighborhood: neighborhood01.label, city: city01.label, uf: userShipping01.uf)
# OrderShipping.create(order: order03, address: userShipping01.address, num: userShipping01.num, neighborhood: neighborhood01.label, city: city01.label, uf: userShipping01.uf)

# ########
# order04 = Order.create(total: Faker::Commerce.price, discount: Faker::Commerce.price, shipping: Faker::Commerce.price, status: 'APPROVED', status_payment: 'APPROVED', user: user01)

# OrderProduct.create(order: order04, label: product01.title, price_unit: product01.price, qty: 1)
# OrderProduct.create(order: order04, label: product02.title, price_unit: product02.price, qty: 1)
# OrderProduct.create(order: order04, label: product03.title, price_unit: product03.price, qty: 1)

# OrderShipping.create(order: order04, address: userShipping01.address, num: userShipping01.num, neighborhood: neighborhood01.label, city: city01.label, uf: userShipping01.uf)
# OrderShipping.create(order: order04, address: userShipping01.address, num: userShipping01.num, neighborhood: neighborhood01.label, city: city01.label, uf: userShipping01.uf)
# OrderShipping.create(order: order04, address: userShipping01.address, num: userShipping01.num, neighborhood: neighborhood01.label, city: city01.label, uf: userShipping01.uf)

# ########
