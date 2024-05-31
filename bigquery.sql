CREATE TABLE `durable-pulsar-419609.banky.users` (
    phone_number STRING,
    passcode INT64
);

INSERT INTO `durable-pulsar-419609.banky.users` (phone_number, passcode)
VALUES
('1234567890', 12345),
('0987654321', 54321),
('1111111111', 11111),
('2222222222', 22222),
('3333333333', 33333),
('4444444444', 44444),
('5555555555', 55555),
('6666666666', 66666),
('7777777777', 77777),
('8888888888', 88888),
('9999999999', 99999),
('1010101010', 10101),
('2020202020', 20202),
('3030303030', 30303),
('4040404040', 40404),
('5050505050', 50505),
('6060606060', 60606),
('7070707070', 70707),
('8080808080', 80808),
('9090909090', 90909),
('1122334455', 11223),
('2233445566', 22334),
('3344556677', 33445),
('4455667788', 44556),
('5566778899', 55667),
('6677889900', 66778),
('7788990011', 77889),
('8899001122', 88990),
('9900112233', 99001),
('0011223344', 11223),
('1231231234', 12312),
('2342342345', 23423),
('3453453456', 34534),
('4564564567', 45645),
('5675675678', 56756),
('6786786789', 67867),
('7897897890', 78978),
('8908908901', 89089),
('9019019012', 90190),
('0120120123', 12301),
('3213213214', 32132),
('4324324325', 43243),
('5435435436', 54354),
('6546546547', 65465),
('7657657658', 76576),
('8768768769', 87687),
('9879879870', 98798),
('0980980981', 10980),
('1091091092', 21091);

CREATE TABLE `durable-pulsar-419609.banky.account_deatils` (
    phone_number STRING,
    passcode INT64,
    account_number STRING,
    contact_information STRING,
    date_of_birth DATE,
    account_status STRING,
    account_type STRING,
    cif_code STRING
);

INSERT INTO `durable-pulsar-419609.banky.account_deatils` (phone_number, passcode, account_number, contact_information, date_of_birth, account_status, account_type, cif_code)
VALUES
('1234567890', 12345, 'ACC123456', 'john@example.com', '1990-01-01', 'active', 'standard', 'CIF123456'),
('0987654321', 54321, 'ACC543210', 'jane@example.com', '1995-05-15', 'active', 'premium', 'CIF543210'),
('1111111111', 11111, 'ACC111111', 'alice@example.com', '1988-08-08', 'active', 'standard', 'CIF111111'),
('2222222222', 22222, 'ACC222222', 'bob@example.com', '1992-12-25', 'active', 'premium', 'CIF222222'),
('3333333333', 33333, 'ACC333333', 'charlie@example.com', '1993-07-04', 'active', 'standard', 'CIF333333'),
('4444444444', 44444, 'ACC444444', 'david@example.com', '1998-03-21', 'active', 'premium', 'CIF444444'),
-- Add more entries as needed
('6786786789', 67867, 'ACC678678', 'emma@example.com', '1994-09-18', 'active', 'standard', 'CIF678678'),
('7897897890', 78978, 'ACC789789', 'frank@example.com', '1991-11-11', 'active', 'premium', 'CIF789789'),
('8908908901', 89089, 'ACC890890', 'george@example.com', '1996-06-30', 'active', 'standard', 'CIF890890'),
('9019019012', 90190, 'ACC901901', 'hannah@example.com', '1997-04-17', 'active', 'premium', 'CIF901901');
