CREATE DATABASE library;
USE library;
CREATE TABLE author (
    id INT AUTO_INCREMENT,
    name VARCHAR(50),
    PRIMARY KEY(id)
);
CREATE TABLE book (
    id INT AUTO_INCREMENT,
    title VARCHAR(200),
    description TEXT,
    author_id INT,
    PRIMARY KEY(id)
    
);
GRANT ALL PRIVILEGES ON library.* TO 'usertest'@'%' IDENTIFIED BY 'password';

INSERT INTO author (name) VALUES ("Flavia Mayo");
INSERT INTO author (name) VALUES ("Caldwell Baird");
INSERT INTO author (name) VALUES ("Finn Cunningham");
INSERT INTO author (name) VALUES ("Ebony Olson");
INSERT INTO author (name) VALUES ("Stuart Norman");
INSERT INTO author (name) VALUES ("Lara Oneil");
INSERT INTO author (name) VALUES ("Lane Raymond");
INSERT INTO author (name) VALUES ("Anika Cummings");
INSERT INTO author (name) VALUES ("Unity Moody");
INSERT INTO author (name) VALUES ("Daquan Harrison");
INSERT INTO author (name) VALUES ("Keefe Santana");

INSERT INTO book (title,description,author_id) VALUES ("Nonummy Ac Feugiat Ltd","imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at",4);
INSERT INTO book (title,description,author_id) VALUES ("Arcu Sed Et Corp.","Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi",3);
INSERT INTO book (title,description,author_id) VALUES ("Ligula Foundation","vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci",4);
INSERT INTO book (title,description,author_id) VALUES ("Metus Vitae Velit Corporation","vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit",3);
INSERT INTO book (title,description,author_id) VALUES ("Nunc Laoreet Industries","elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec",2);
INSERT INTO book (title,description,author_id) VALUES ("Maecenas Malesuada Fringilla Foundation","Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae,",3);
INSERT INTO book (title,description,author_id) VALUES ("Velit Eget PC","auctor, velit eget laoreet posuere, enim nisl elementum purus, accumsan",3);
INSERT INTO book (title,description,author_id) VALUES ("Mollis Industries","eu tellus eu augue porttitor interdum. Sed auctor odio a",4);
INSERT INTO book (title,description,author_id) VALUES ("Iaculis Odio Nam Corporation","libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis",3);
INSERT INTO book (title,description,author_id) VALUES ("Lacus Pede Ltd","erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse",3);
INSERT INTO book (title,description,author_id) VALUES ("Donec LLC","Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed",4);
INSERT INTO book (title,description,author_id) VALUES ("Ante Associates","ac mattis velit justo nec ante. Maecenas mi felis, adipiscing",4);
INSERT INTO book (title,description,author_id) VALUES ("Consequat Auctor Inc.","nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed",4);
INSERT INTO book (title,description,author_id) VALUES ("Molestie Tortor Ltd","dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc",1);
INSERT INTO book (title,description,author_id) VALUES ("Curabitur Vel Corp.","lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at",2);
INSERT INTO book (title,description,author_id) VALUES ("Ipsum Dolor Sit LLC","tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a",3);
INSERT INTO book (title,description,author_id) VALUES ("Massa Foundation","tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante",2);
INSERT INTO book (title,description,author_id) VALUES ("Magna Corp.","in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit",4);
INSERT INTO book (title,description,author_id) VALUES ("Facilisis Vitae Orci Company","quam quis diam. Pellentesque habitant morbi tristique senectus et netus",1);
INSERT INTO book (title,description,author_id) VALUES ("Condimentum Donec At Corp.","iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac,",2);
INSERT INTO book (title,description,author_id) VALUES ("Vel Nisl Foundation","Donec nibh enim, gravida sit amet, dapibus id, blandit at,",1);
INSERT INTO book (title,description,author_id) VALUES ("Nulla Industries","ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit",2);
INSERT INTO book (title,description,author_id) VALUES ("Duis A LLP","enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus.",2);
INSERT INTO book (title,description,author_id) VALUES ("Velit Cras Lorem Incorporated","varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem",2);
INSERT INTO book (title,description,author_id) VALUES ("Malesuada Inc.","mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed",1);
INSERT INTO book (title,description,author_id) VALUES ("Libero Morbi Incorporated","ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus.",2);
INSERT INTO book (title,description,author_id) VALUES ("Cras Eu Tellus Industries","nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem",1);
INSERT INTO book (title,description,author_id) VALUES ("Leo In Lobortis LLC","Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum",2);
INSERT INTO book (title,description,author_id) VALUES ("Tincidunt Vehicula Incorporated","dui lectus rutrum urna, nec luctus felis purus ac tellus.",2);
INSERT INTO book (title,description,author_id) VALUES ("Ligula Tortor Dictum LLP","urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum",4);
INSERT INTO book (title,description,author_id) VALUES ("Libero LLC","Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate,",4);
INSERT INTO book (title,description,author_id) VALUES ("Faucibus Consulting","elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu",3);
INSERT INTO book (title,description,author_id) VALUES ("Est Nunc Ullamcorper PC","mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet,",3);
INSERT INTO book (title,description,author_id) VALUES ("Eu Arcu Consulting","sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris",1);
INSERT INTO book (title,description,author_id) VALUES ("Erat Consulting","arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida",4);
INSERT INTO book (title,description,author_id) VALUES ("Mauris Corp.","at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum",1);
INSERT INTO book (title,description,author_id) VALUES ("Hendrerit Incorporated","malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis",4);
INSERT INTO book (title,description,author_id) VALUES ("Porttitor Foundation","orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna",4);
INSERT INTO book (title,description,author_id) VALUES ("Arcu Incorporated","lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu,",4);
INSERT INTO book (title,description,author_id) VALUES ("Semper Nam Tempor Associates","euismod est arcu ac orci. Ut semper pretium neque. Morbi",3);
INSERT INTO book (title,description,author_id) VALUES ("Erat Vitae Foundation","posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse",3);
INSERT INTO book (title,description,author_id) VALUES ("Quam Quis Consulting","pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien,",3);
INSERT INTO book (title,description,author_id) VALUES ("Commodo Company","nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus",2);
INSERT INTO book (title,description,author_id) VALUES ("Vel PC","pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero",3);
INSERT INTO book (title,description,author_id) VALUES ("Sit Amet LLC","vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim.",4);
INSERT INTO book (title,description,author_id) VALUES ("Erat Sed Corp.","per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel",3);
INSERT INTO book (title,description,author_id) VALUES ("Vel Venenatis Vel Inc.","dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur",3);
INSERT INTO book (title,description,author_id) VALUES ("Aliquam Eros PC","a neque. Nullam ut nisi a odio semper cursus. Integer",3);
INSERT INTO book (title,description,author_id) VALUES ("Dictum Foundation","sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et",4);
INSERT INTO book (title,description,author_id) VALUES ("Nunc Ullamcorper Velit PC","tellus justo sit amet nulla. Donec non justo. Proin non",2);
INSERT INTO book (title,description,author_id) VALUES ("Netus Ltd","porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor",3);
INSERT INTO book (title,description,author_id) VALUES ("Consectetuer Mauris Inc.","nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut",2);
INSERT INTO book (title,description,author_id) VALUES ("Curabitur Institute","eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis,",3);
INSERT INTO book (title,description,author_id) VALUES ("Vitae Posuere Inc.","nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra.",1);
INSERT INTO book (title,description,author_id) VALUES ("Ridiculus Mus Proin Institute","lorem, eget mollis lectus pede et risus. Quisque libero lacus,",3);
INSERT INTO book (title,description,author_id) VALUES ("Vehicula Risus Consulting","Nullam velit dui, semper et, lacinia vitae, sodales at, velit.",1);
INSERT INTO book (title,description,author_id) VALUES ("Nisi A Ltd","eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed",1);
INSERT INTO book (title,description,author_id) VALUES ("Donec Consulting","leo, in lobortis tellus justo sit amet nulla. Donec non",2);
INSERT INTO book (title,description,author_id) VALUES ("Cum Sociis Company","sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus",2);
INSERT INTO book (title,description,author_id) VALUES ("Neque Et Consulting","Proin sed turpis nec mauris blandit mattis. Cras eget nisi",4);
INSERT INTO book (title,description,author_id) VALUES ("Orci Foundation","netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus",2);
INSERT INTO book (title,description,author_id) VALUES ("Lectus Rutrum Foundation","nisi. Cum sociis natoque penatibus et magnis dis parturient montes,",2);
INSERT INTO book (title,description,author_id) VALUES ("Turpis Egestas Aliquam Associates","ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo",4);
INSERT INTO book (title,description,author_id) VALUES ("Nunc Sit LLC","dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue,",1);
INSERT INTO book (title,description,author_id) VALUES ("Lacinia Sed Congue Ltd","Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean",4);
INSERT INTO book (title,description,author_id) VALUES ("Erat LLC","eget, dictum placerat, augue. Sed molestie. Sed id risus quis",3);
INSERT INTO book (title,description,author_id) VALUES ("Fringilla Mi LLP","penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec",3);
INSERT INTO book (title,description,author_id) VALUES ("Est Ac Mattis LLC","magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna.",3);
INSERT INTO book (title,description,author_id) VALUES ("Natoque Ltd","aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.",3);
INSERT INTO book (title,description,author_id) VALUES ("Nulla LLP","commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa",3);
INSERT INTO book (title,description,author_id) VALUES ("Nec Limited","Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor,",3);
INSERT INTO book (title,description,author_id) VALUES ("Dolor PC","Mauris blandit enim consequat purus. Maecenas libero est, congue a,",3);
INSERT INTO book (title,description,author_id) VALUES ("Porttitor Eros Associates","massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius",2);
INSERT INTO book (title,description,author_id) VALUES ("Ut Quam Corp.","neque sed sem egestas blandit. Nam nulla magna, malesuada vel,",4);
INSERT INTO book (title,description,author_id) VALUES ("Vitae Purus Associates","turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus.",3);
INSERT INTO book (title,description,author_id) VALUES ("Urna LLP","odio. Phasellus at augue id ante dictum cursus. Nunc mauris",4);
INSERT INTO book (title,description,author_id) VALUES ("Feugiat Institute","ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula.",3);
INSERT INTO book (title,description,author_id) VALUES ("Enim Etiam Gravida Corp.","in faucibus orci luctus et ultrices posuere cubilia Curae; Donec",3);
INSERT INTO book (title,description,author_id) VALUES ("Dapibus Associates","mi, ac mattis velit justo nec ante. Maecenas mi felis,",1);
INSERT INTO book (title,description,author_id) VALUES ("Metus Consulting","sit amet ornare lectus justo eu arcu. Morbi sit amet",3);
INSERT INTO book (title,description,author_id) VALUES ("Proin LLC","Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam",4);
INSERT INTO book (title,description,author_id) VALUES ("Scelerisque Mollis Phasellus Associates","posuere, enim nisl elementum purus, accumsan interdum libero dui nec",4);
INSERT INTO book (title,description,author_id) VALUES ("Egestas Industries","dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur",2);
INSERT INTO book (title,description,author_id) VALUES ("A Mi Fringilla Associates","dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus",2);
INSERT INTO book (title,description,author_id) VALUES ("Nunc In At Institute","lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus",2);
INSERT INTO book (title,description,author_id) VALUES ("Vitae Institute","Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi",4);
INSERT INTO book (title,description,author_id) VALUES ("Lorem Luctus Ut Foundation","iaculis odio. Nam interdum enim non nisi. Aenean eget metus.",1);
INSERT INTO book (title,description,author_id) VALUES ("Eget Consulting","at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare",1);
INSERT INTO book (title,description,author_id) VALUES ("Gravida Industries","amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing",4);
INSERT INTO book (title,description,author_id) VALUES ("Mi Pede Nonummy Industries","velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices.",3);
INSERT INTO book (title,description,author_id) VALUES ("Vehicula Et Rutrum Associates","hendrerit neque. In ornare sagittis felis. Donec tempor, est ac",2);
INSERT INTO book (title,description,author_id) VALUES ("Venenatis Vel Limited","non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh.",4);
INSERT INTO book (title,description,author_id) VALUES ("Tellus Suspendisse Sed Foundation","dapibus id, blandit at, nisi. Cum sociis natoque penatibus et",3);
INSERT INTO book (title,description,author_id) VALUES ("Bibendum Fermentum Industries","aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu",1);
INSERT INTO book (title,description,author_id) VALUES ("Sed Consulting","habitant morbi tristique senectus et netus et malesuada fames ac",4);
INSERT INTO book (title,description,author_id) VALUES ("Purus Gravida Sagittis Foundation","tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris.",4);
INSERT INTO book (title,description,author_id) VALUES ("Ipsum Nunc Id Inc.","dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet",2);
INSERT INTO book (title,description,author_id) VALUES ("Eu Incorporated","fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor,",4);
INSERT INTO book (title,description,author_id) VALUES ("Eros PC","sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing",2);
INSERT INTO book (title,description,author_id) VALUES ("Phasellus Vitae Mauris PC","penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean",2);
