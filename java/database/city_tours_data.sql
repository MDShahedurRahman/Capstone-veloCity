BEGIN TRANSACTION;

-- Users data
INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');


-- Paris landmarks
INSERT INTO landmarks (name, city, description, venue_type, approval_status, image_url)
VALUES
('Eiffel Tower', 'Paris', 'Iconic symbol of France and a must-visit.', 'Monument', TRUE, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm-IDtfwTRzQ4ZkKsxN8I68hSY9kgw8aUCxg&s'),
('Louvre Museum', 'Paris', 'Home to the Mona Lisa and countless other masterpieces.', 'Museum', TRUE, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXSxi0V3JllREqOi5iilezupfXinx2gEqO6Q&s'),
('Notre-Dame Cathedral', 'Paris', 'Famous Gothic cathedral.', 'Church', TRUE, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSov2yUrlqw2XBlX2_8T-KX-SYmbEYhNsyxaQ&s'),
('Arc de Triomphe', 'Paris', 'Prestigious avenue ending with the triumLandphal arch.', 'Avenue', TRUE, 'https://image.jimcdn.com/app/cms/image/transf/dimension=origxorig:format=jpg/path/se80bcf7e1bbfb507/image/i54f4e905929ff6b0/version/1305989812/image.jpg'),
('Sacre Coeur Basilica', 'Paris', 'Stunning basilica on Montmartre hill.', 'Church', TRUE, 'https://static.wixstatic.com/media/68b72b_2a44b33c64d141e79bf5990d7ab10f64~mv2.jpg/v1/fill/w_980,h_653,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/68b72b_2a44b33c64d141e79bf5990d7ab10f64~mv2.jpg'),
('Palace of Versailles', 'Paris', 'Luxurious former royal residence.', 'Palace', TRUE, 'https://www.travelandleisure.com/thmb/sR2kS_tl_yz4bxFkxDWyaVv6lmw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/versailles-palace-courtyard-SECRET1216-911d9538288141a686474b1ce08a2e1a.jpg');

-- Eiffel Tower availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(1, 'Monday', '09:00:00', '00:00:00'),
(1, 'Tuesday', '09:00:00', '00:00:00'),
(1, 'Wednesday', '09:00:00', '00:00:00'),
(1, 'Thursday', '09:00:00', '00:00:00'),
(1, 'Friday', '09:00:00', '00:00:00'),
(1, 'Saturday', '09:00:00', '00:00:00'),
(1, 'Sunday', '09:00:00', '00:00:00');

-- Louvre Museum availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(2, 'Monday', '09:00:00', '18:00:00'),
(2, 'Tuesday', NULL, NULL),
(2, 'Wednesday', '09:00:00', '21:00:00'),
(2, 'Thursday', '09:00:00', '18:00:00'),
(2, 'Friday', '09:00:00', '21:00:00'),
(2, 'Saturday', '09:00:00', '18:00:00'),
(2, 'Sunday', '09:00:00', '18:00:00');

-- Notre-Dame Cathedral availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(3, 'Monday', NULL, NULL),
(3, 'Tuesday', NULL, NULL),
(3, 'Wednesday', NULL, NULL),
(3, 'Thursday', NULL, NULL),
(3, 'Friday', NULL, NULL),
(3, 'Saturday', NULL, NULL),
(3, 'Sunday', NULL, NULL);

-- Arc de Triomphe availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(4, 'Monday', '10:00:00', '23:00:00'),
(4, 'Tuesday', '10:00:00', '23:00:00'),
(4, 'Wednesday', '10:00:00', '23:00:00'),
(4, 'Thursday', '10:00:00', '23:00:00'),
(4, 'Friday', '10:00:00', '23:00:00'),
(4, 'Saturday', '10:00:00', '23:00:00'),
(4, 'Sunday', '10:00:00', '23:00:00');

-- Sacre Coeur Basilica availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(5, 'Monday', '06:30:00', '22:30:00'),
(5, 'Tuesday', '06:30:00', '22:30:00'),
(5, 'Wednesday', '06:30:00', '22:30:00'),
(5, 'Thursday', '06:30:00', '22:30:00'),
(5, 'Friday', '06:30:00', '22:30:00'),
(5, 'Saturday', '06:30:00', '22:30:00'),
(5, 'Sunday', '06:30:00', '22:30:00');

-- Palace of Versailles availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(6, 'Monday', NULL, NULL),
(6, 'Tuesday', '09:00:00', '18:30:00'),
(6, 'Wednesday', '09:00:00', '18:30:00'),
(6, 'Thursday', '09:00:00', '18:30:00'),
(6, 'Friday', '09:00:00', '18:30:00'),
(6, 'Saturday', '09:00:00', '18:30:00'),
(6, 'Sunday', '09:00:00', '18:30:00');

-- Rome landmarks
INSERT INTO landmarks (name, city, description, venue_type, approval_status, image_url)
VALUES
('Colosseum', 'Rome', 'Ancient amphitheater and symbol of Rome.', 'Amphitheater', TRUE, 'https://qph.cf2.quoracdn.net/main-qimg-922835f781d6eb3999c1a7cda092c850'),
('St. Peter''s Basilica', 'Rome', 'Seat of the Catholic Church and home to Michelangelo''s artwork.', 'Religious Site', TRUE, 'https://travelforawhile.com/wp-content/uploads/2023/05/The-Vatican-St.-Peters-Basilica.jpg'),
('Pantheon', 'Rome', 'Well-preserved ancient Roman temple.', 'Temple', TRUE, 'https://www.archeoroma.org/wp-content/uploads/2016/10/pantheon-rome-dome.jpg'),
('Trevi Fountain', 'Rome', 'Famous Baroque fountain.', 'Fountain', TRUE, 'https://www.travelandleisure.com/thmb/CKxA_iBAtx1zYw_7EevV4cuxgH0=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/trevi-fountain-rome-italy-TREVI0217-4b6f7385c7f0436ba3d5fa2c061a1791.jpg'),
('Roman Forum', 'Rome', 'Ancient center of Roman public life.', 'Historical Site', TRUE, 'https://static.wixstatic.com/media/e41b5c_8e39787f991543fd97451f50d467ae01~mv2.jpg/v1/fill/w_2500,h_1666,al_c/e41b5c_8e39787f991543fd97451f50d467ae01~mv2.jpg'),
('Piazza Navona', 'Rome', 'Elegant square with beautiful fountains and architecture.', 'Square', TRUE, 'https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/27/88/12.jpg');

-- Colosseum availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(7, 'Monday', '08:30:00', '19:15:00'),
(7, 'Tuesday', '08:30:00', '19:15:00'),
(7, 'Wednesday', '08:30:00', '19:15:00'),
(7, 'Thursday', '08:30:00', '19:15:00'),
(7, 'Friday', '08:30:00', '19:15:00'),
(7, 'Saturday', '08:30:00', '19:15:00'),
(7, 'Sunday', '08:30:00', '19:15:00');

-- St. Peter's Basilica availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(8, 'Monday', '07:00:00', '22:00:00'),
(8, 'Tuesday', '07:00:00', '22:00:00'),
(8, 'Wednesday', '07:00:00', '22:00:00'),
(8, 'Thursday', '07:00:00', '22:00:00'),
(8, 'Friday', '07:00:00', '22:00:00'),
(8, 'Saturday', '07:00:00', '23:00:00'),
(8, 'Sunday', '07:00:00', '22:00:00');

-- Pantheon availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(9, 'Monday', '09:00:00', '18:30:00'),
(9, 'Tuesday', '09:00:00', '18:30:00'),
(9, 'Wednesday', '09:00:00', '18:30:00'),
(9, 'Thursday', '09:00:00', '18:30:00'),
(9, 'Friday', '09:00:00', '18:30:00'),
(9, 'Saturday', '09:00:00', '18:30:00'),
(9, 'Sunday', '09:00:00', '18:30:00');

-- Trevi Fountain availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(10, 'Monday', '00:00:00', '23:59:59'),
(10, 'Tuesday', '00:00:00', '23:59:59'),
(10, 'Wednesday', '00:00:00', '23:59:59'),
(10, 'Thursday', '00:00:00', '23:59:59'),
(10, 'Friday', '00:00:00', '23:59:59'),
(10, 'Saturday', '00:00:00', '23:59:59'),
(10, 'Sunday', '00:00:00', '23:59:59');

-- Roman Forum availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(11, 'Monday', '09:00:00', '19:15:00'),
(11, 'Tuesday', '09:00:00', '19:15:00'),
(11, 'Wednesday', '09:00:00', '19:15:00'),
(11, 'Thursday', '09:00:00', '19:15:00'),
(11, 'Friday', '09:00:00', '19:15:00'),
(11, 'Saturday', '09:00:00', '17:30:00'),
(11, 'Sunday', '09:00:00', '19:15:00');

-- Piazza Navona availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(12, 'Monday', '00:00:00', '23:59:59'),
(12, 'Tuesday', '00:00:00', '23:59:59'),
(12, 'Wednesday', '00:00:00', '23:59:59'),
(12, 'Thursday', '00:00:00', '23:59:59'),
(12, 'Friday', '00:00:00', '23:59:59'),
(12, 'Saturday', '00:00:00', '23:59:59'),
(12, 'Sunday', '00:00:00', '23:59:59');

-- Kyoto landmarks
INSERT INTO landmarks (name, city, description, venue_type, approval_status, image_url)
VALUES
('Fushimi Inari Shrine', 'Kyoto', 'Known for its thousands of red torii gates.', 'Shrine', TRUE, 'https://static.toiimg.com/photo/55979195.cms'),
('Kinkaku-ji', 'Kyoto', 'Stunning golden temple.', 'Temple', TRUE, 'https://www.jal.co.jp/vn/en/guide-to-japan/destinations/articles/kyoto/5-must-see-temples-in-ancient-capital/_jcr_content/root/responsivegrid/sectioncontainer_cop/image_2147354233.coreimg.jpeg/1697607575940.jpeg'),
('Kiyomizu-dera', 'Kyoto', 'Historic temple with a large wooden stage.', 'Temple', TRUE, 'https://media.patheos.com/~/media/patheos-images/images/sacred-spaces/90-kiyomizu-dera-05_credit-shutterstock.jpg?as=1&w=800'),
('Arashiyama Bamboo Grove', 'Kyoto', 'Serene bamboo forest.', 'Forest', TRUE, 'https://lp-cms-production.imgix.net/2019-06/0bbf98a5a2d3a65c4e17feb1baa630ff-arashiyama-bamboo-grove.jpg'),
('Nijo Castle', 'Kyoto', 'Historic castle with beautiful gardens.', 'Castle', TRUE, 'https://tabijikan.com/kys/lang/en/wp-content/uploads/2016/02/20150309-304-20-100.jpg'),
('Gion District', 'Kyoto', 'Traditional geisha district with preserved architecture.', 'District', TRUE, 'https://media.timeout.com/images/106106593/image.jpg');

-- Fushimi Inari Shrine availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(13, 'Monday', '00:00:00', '23:59:59'),
(13, 'Tuesday', '00:00:00', '23:59:59'),
(13, 'Wednesday', '00:00:00', '23:59:59'),
(13, 'Thursday', '00:00:00', '23:59:59'),
(13, 'Friday', '00:00:00', '23:59:59'),
(13, 'Saturday', '00:00:00', '23:59:59'),
(13, 'Sunday', '00:00:00', '23:59:59');

-- Kinkaku-ji availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(14, 'Monday', '09:00:00', '17:00:00'),
(14, 'Tuesday', '09:00:00', '17:00:00'),
(14, 'Wednesday', '09:00:00', '17:00:00'),
(14, 'Thursday', '09:00:00', '17:00:00'),
(14, 'Friday', '09:00:00', '17:00:00'),
(14, 'Saturday', '09:00:00', '17:00:00'),
(14, 'Sunday', '09:00:00', '17:00:00');

-- Kiyomizu-dera availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(15, 'Monday', '06:00:00', '18:00:00'),
(15, 'Tuesday', '06:00:00', '18:00:00'),
(15, 'Wednesday', '06:00:00', '18:00:00'),
(15, 'Thursday', '06:00:00', '18:00:00'),
(15, 'Friday', '06:00:00', '18:00:00'),
(15, 'Saturday', '06:00:00', '18:00:00'),
(15, 'Sunday', '06:00:00', '18:00:00');

-- Arashiyama Bamboo Grove availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(16, 'Monday', '00:00:00', '23:59:59'),
(16, 'Tuesday', '00:00:00', '23:59:59'),
(16, 'Wednesday', '00:00:00', '23:59:59'),
(16, 'Thursday', '00:00:00', '23:59:59'),
(16, 'Friday', '00:00:00', '23:59:59'),
(16, 'Saturday', '00:00:00', '23:59:59'),
(16, 'Sunday', '00:00:00', '23:59:59');

-- Nijo Castle availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(17, 'Monday', '08:45:00', '17:00:00'),
(17, 'Tuesday', '08:45:00', '17:00:00'),
(17, 'Wednesday', '08:45:00', '17:00:00'),
(17, 'Thursday', '08:45:00', '17:00:00'),
(17, 'Friday', '08:45:00', '17:00:00'),
(17, 'Saturday', '08:45:00', '17:00:00'),
(17, 'Sunday', '08:45:00', '17:00:00');

-- Gion District availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(18, 'Monday', '10:00:00', '19:00:00'),
(18, 'Tuesday', '10:00:00', '19:00:00'),
(18, 'Wednesday', '10:00:00', '19:00:00'),
(18, 'Thursday', '10:00:00', '19:00:00'),
(18, 'Friday', '10:00:00', '21:00:00'),
(18, 'Saturday', '10:00:00', '21:00:00'),
(18, 'Sunday', '10:00:00', '19:00:00');

-- New York City landmarks
INSERT INTO landmarks (name, city, description, venue_type, approval_status, image_url)
VALUES
('Statue of Liberty', 'New York City', 'Iconic symbol of freedom and democracy.', 'Monument', TRUE, 'https://cdn1.epicgames.com/ue/product/Featured/StatueOfLiberty_featured-894x488-d1f9ab8763773da5a0cc370b753211f1.png'),
('Central Park', 'New York City', 'Large urban park offering numerous activities.', 'Park', TRUE, 'https://lik.com/cdn/shop/products/Peter-Lik-Central-Park-Spirit-Framed-Recess-Moun_1024x1024.jpg?v=1670363959'),
('Times Square', 'New York City', 'Bustling commercial and entertainment hub.', 'Square', TRUE, 'https://images.ctfassets.net/1aemqu6a6t65/46MJ6ER585Rwl3NraEIoGL/784c5eb5d87f576b5548b1a2255f08e7/tripadvisortimessquare_taggeryanceyiv_5912?w=1200&h=800&q=75'),
('Empire State Building', 'New York City', 'Famous skyscraper with observation decks.', 'Skyscraper', TRUE, 'https://assets.simpleviewinc.com/simpleview/image/upload/c_limit,h_1200,q_75,w_1200/v1/crm/newyorkstate/GettyImages-486334510_CC36FC20-0DCE-7408-77C72CD93ED4A476-cc36f9e70fc9b45_cc36fc73-07dd-b6b3-09b619cd4694393e.jpg'),
('Brooklyn Bridge', 'New York City', 'Historic suspension bridge.', 'Bridge', TRUE, 'https://muralsyourway.vtexassets.com/arquivos/ids/234586/Brooklyn-Bridge-and-NYC-Skyline-at-Night-Wall-Mural.jpg?v=638165374098470000'),
('Metropolitan Museum of Art', 'New York City', 'One of the world''s largest and finest art museums.', 'Museum', TRUE, 'https://media.cntraveler.com/photos/55d362f337284fb1079ccc4b/16:9/w_2560%2Cc_limit/metropolitan-museum-of-art-new-york-city.jpg');

-- Statue of Liberty availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(19, 'Monday', '09:00:00', '18:30:00'),
(19, 'Tuesday', '09:00:00', '18:30:00'),
(19, 'Wednesday', '09:00:00', '18:30:00'),
(19, 'Thursday', '09:00:00', '18:30:00'),
(19, 'Friday', '09:00:00', '18:30:00'),
(19, 'Saturday', '09:00:00', '18:30:00'),
(19, 'Sunday', '09:00:00', '18:30:00');

-- Central Park availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(20, 'Monday', '06:00:00', '01:00:00'),
(20, 'Tuesday', '06:00:00', '01:00:00'),
(20, 'Wednesday', '06:00:00', '01:00:00'),
(20, 'Thursday', '06:00:00', '01:00:00'),
(20, 'Friday', '06:00:00', '01:00:00'),
(20, 'Saturday', '06:00:00', '01:00:00'),
(20, 'Sunday', '06:00:00', '01:00:00');

-- Times Square availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(21, 'Monday', '00:00:00', '23:59:59'),
(21, 'Tuesday', '00:00:00', '23:59:59'),
(21, 'Wednesday', '00:00:00', '23:59:59'),
(21, 'Thursday', '00:00:00', '23:59:59'),
(21, 'Friday', '00:00:00', '23:59:59'),
(21, 'Saturday', '00:00:00', '23:59:59'),
(21, 'Sunday', '00:00:00', '23:59:59');

-- Empire State Building availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(22, 'Monday', '09:00:00', '01:00:00'),
(22, 'Tuesday', '09:00:00', '01:00:00'),
(22, 'Wednesday', '09:00:00', '01:00:00'),
(22, 'Thursday', '09:00:00', '01:00:00'),
(22, 'Friday', '09:00:00', '01:00:00'),
(22, 'Saturday', '09:00:00', '01:00:00'),
(22, 'Sunday', '09:00:00', '01:00:00');

-- Brooklyn Bridge availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(23, 'Monday', '00:00:00', '23:59:59'),
(23, 'Tuesday', '00:00:00', '23:59:59'),
(23, 'Wednesday', '00:00:00', '23:59:59'),
(23, 'Thursday', '00:00:00', '23:59:59'),
(23, 'Friday', '00:00:00', '23:59:59'),
(23, 'Saturday', '00:00:00', '23:59:59'),
(23, 'Sunday', '00:00:00', '23:59:59');

-- Metropolitan Museum of Art availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(24, 'Monday', '10:00:00', '17:00:00'),
(24, 'Tuesday', '10:00:00', '17:00:00'),
(24, 'Wednesday', NULL, NULL),  -- Closed
(24, 'Thursday', '10:00:00', '17:00:00'),
(24, 'Friday', '10:00:00', '21:00:00'),
(24, 'Saturday', '10:00:00', '21:00:00'),
(24, 'Sunday', '10:00:00', '17:00:00');

-- Sydney landmarks
INSERT INTO landmarks (name, city, description, venue_type, approval_status, image_url)
VALUES
('Sydney Opera House', 'Sydney', 'Iconic performing arts center.', 'Theater', TRUE, 'https://ychef.files.bbci.co.uk/1280x720/p0gp95cq.jpg'),
('Sydney Harbour Bridge', 'Sydney', 'Famous bridge with climbing tours.', 'Bridge', TRUE, 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Sydney_harbour_bridge_dusk.jpg/1200px-Sydney_harbour_bridge_dusk.jpg'),
('Bondi Beach', 'Sydney', 'Popular beach known for surfing.', 'Beach', TRUE, 'https://blog.forbestravelguide.com/wp-content/uploads/2013/12/FTG-AussieBeach-CreditiStock_KimPinTan.jpg'),
('Taronga Zoo', 'Sydney', 'Large zoo with diverse wildlife.', 'Zoo', TRUE, 'https://dbijapkm3o6fj.cloudfront.net/resources/1282,1004,1,6,4,0,600,450/-4601-/20150311175809/taronga-zoo.jpeg'),
('Royal Botanic Garden', 'Sydney', 'Beautiful botanical gardens by the harbor.', 'Garden', TRUE, 'https://media.istockphoto.com/id/510641020/photo/botanic-gardens-alley.jpg?s=612x612&w=0&k=20&c=Ph43mpMMUVxV7w90YlAahbGX9Z5uOVAoXCuldewvlHk='),
('The Rocks', 'Sydney', 'Historic area with markets, museums, and restaurants.', 'Historic District', TRUE, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/02/50/02/sydney-s-first-street.jpg?w=1200&h=-1&s=1');

-- Sydney Opera House availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(25, 'Monday', '09:00:00', '17:00:00'),
(25, 'Tuesday', '09:00:00', '17:00:00'),
(25, 'Wednesday', '09:00:00', '17:00:00'),
(25, 'Thursday', '09:00:00', '17:00:00'),
(25, 'Friday', '09:00:00', '17:00:00'),
(25, 'Saturday', '09:00:00', '17:00:00'),
(25, 'Sunday', '10:00:00', '18:00:00');

-- Sydney Harbour Bridge availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(26, 'Monday', '00:00:00', '23:59:59'),
(26, 'Tuesday', '00:00:00', '23:59:59'),
(26, 'Wednesday', '00:00:00', '23:59:59'),
(26, 'Thursday', '00:00:00', '23:59:59'),
(26, 'Friday', '00:00:00', '23:59:59'),
(26, 'Saturday', '00:00:00', '23:59:59'),
(26, 'Sunday', '00:00:00', '23:59:59');

-- Bondi Beach availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(27, 'Monday', '06:00:00', '21:30:00'),
(27, 'Tuesday', '06:00:00', '21:30:00'),
(27, 'Wednesday', '06:00:00', '21:30:00'),
(27, 'Thursday', '06:00:00', '21:30:00'),
(27, 'Friday', '06:00:00', '21:30:00'),
(27, 'Saturday', '06:00:00', '21:30:00'),
(27, 'Sunday', '06:00:00', '21:30:00');

-- Taronga Zoo availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(28, 'Monday', '09:30:00', '16:30:00'),
(28, 'Tuesday', '09:30:00', '16:30:00'),
(28, 'Wednesday', '09:30:00', '16:30:00'),
(28, 'Thursday', '09:30:00', '16:30:00'),
(28, 'Friday', '09:30:00', '16:30:00'),
(28, 'Saturday', '09:30:00', '16:30:00'),
(28, 'Sunday', '09:30:00', '16:30:00');

-- Royal Botanic Garden availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(29, 'Monday', '07:00:00', '17:30:00'),
(29, 'Tuesday', '07:00:00', '17:30:00'),
(29, 'Wednesday', '07:00:00', '17:30:00'),
(29, 'Thursday', '07:00:00', '17:30:00'),
(29, 'Friday', '07:00:00', '17:30:00'),
(29, 'Saturday', '07:00:00', '17:30:00'),
(29, 'Sunday', '07:00:00', '17:30:00');

-- The Rocks availability
INSERT INTO LandmarkAvailability (landmark_id, day_of_week, open_time, close_time) VALUES
(30, 'Monday', NULL, NULL),
(30, 'Tuesday', NULL, NULL),
(30, 'Wednesday', NULL, NULL),
(30, 'Thursday', NULL, NULL),
(30, 'Friday', NULL, NULL),
(30, 'Saturday', '10:00:00', '17:00:00'),
(30, 'Sunday', '10:00:00', '17:00:00');

COMMIT TRANSACTION;