insert into carts (user_id, created_at, updated_at, status) values
('da6766f6-19d4-410c-81ff-a0f0e9f755e3', '2023-06-02', '2023-06-04', 'OPEN'),
('50802b6b-503e-4bec-9410-a7ba6abea368', '2023-06-03', '2023-06-04', 'OPEN'),
('0b48b0ed-7ac0-44eb-aaff-205ed7c40bf3', '2023-06-01', '2023-06-02', 'ORDERED');

insert into cart_items (cart_id, product_id, count) values
('154fea15-0db8-4310-ae5b-5d7063151406', 'efa044e7-9e57-40f6-9246-026f0bd545d5', 5),
('a5c5867b-f5ef-487f-8542-cc3e5c2f681b', '8a9ef562-3128-4021-a252-9c734c4742ef', 18),
('a5c5867b-f5ef-487f-8542-cc3e5c2f681b', 'be500e8d-9af1-48f3-bcca-d4ed4a01d67e', 1),
('54117202-373d-4519-b969-48914271daba', '587ff278-14c6-457b-9afd-476070248ae7', 33);
