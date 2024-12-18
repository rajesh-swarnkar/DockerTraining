-- Create flight_schedule table if it doesn't exist
DO $$ 
BEGIN
    IF NOT EXISTS (SELECT FROM pg_tables WHERE tablename = 'flight_schedule') THEN
        CREATE TABLE flight_schedule (
            flight_id VARCHAR(10) PRIMARY KEY,
            departure_city VARCHAR(50) NOT NULL,
            arrival_city VARCHAR(50) NOT NULL,
            departure_time varchar(255) NOT NULL,
            arrival_time varchar(255) NOT NULL
        );
    END IF;
END
$$
;

-- Clear existing data if any
TRUNCATE TABLE flight_schedule;

-- Insert flight schedule data
INSERT INTO flight_schedule (flight_id, departure_city, arrival_city, departure_time, arrival_time) VALUES 
('FL001', 'Phoenix', 'Los Angeles', '2024-01-01 06:03:00', '2024-01-01 07:06:00'),
('FL002', 'Chicago', 'New York', '2024-01-01 07:54:00', '2024-01-01 08:06:00'),
('FL003', 'Chicago', 'Los Angeles', '2024-01-01 07:40:00', '2024-01-01 09:19:00'),
('FL004', 'Phoenix', 'Los Angeles', '2024-01-01 06:52:00', '2024-01-01 08:15:00'),
('FL005', 'Phoenix', 'Houston', '2024-01-01 07:18:00', '2024-01-01 07:19:00'),
('FL006', 'New York', 'Chicago', '2024-01-01 08:30:00', '2024-01-01 10:15:00'),
('FL007', 'Houston', 'Phoenix', '2024-01-01 09:45:00', '2024-01-01 11:30:00'),
('FL008', 'Los Angeles', 'Chicago', '2024-01-01 10:20:00', '2024-01-01 16:05:00'),
('FL009', 'New York', 'Houston', '2024-01-01 11:15:00', '2024-01-01 14:30:00'),
('FL010', 'Chicago', 'Phoenix', '2024-01-01 12:40:00', '2024-01-01 15:25:00'),
('FL011', 'Los Angeles', 'New York', '2024-01-01 13:30:00', '2024-01-01 21:45:00'),
('FL012', 'Houston', 'Chicago', '2024-01-01 14:20:00', '2024-01-01 16:45:00'),
('FL013', 'Phoenix', 'New York', '2024-01-01 15:10:00', '2024-01-01 22:30:00'),
('FL014', 'Chicago', 'Houston', '2024-01-01 16:25:00', '2024-01-01 19:10:00'),
('FL015', 'New York', 'Los Angeles', '2024-01-01 17:40:00', '2024-01-01 21:15:00'),
('FL016', 'Houston', 'Los Angeles', '2024-01-01 18:30:00', '2024-01-01 20:45:00'),
('FL017', 'Los Angeles', 'Phoenix', '2024-01-01 19:15:00', '2024-01-01 20:30:00'),
('FL018', 'Chicago', 'Los Angeles', '2024-01-01 20:00:00', '2024-01-01 22:45:00'),
('FL019', 'Phoenix', 'Chicago', '2024-01-01 21:30:00', '2024-01-02 00:15:00'),
('FL020', 'New York', 'Phoenix', '2024-01-01 22:45:00', '2024-01-02 02:30:00');

-- Verify data insertion
SELECT COUNT(*) as total_records FROM flight_schedule;
