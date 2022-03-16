-- password is: Test1234!
INSERT INTO auth_user ("id", "password", "is_superuser", "is_staff", "username", "email", "is_active", "first_name", "last_name", "date_joined") VALUES
    (2,'pbkdf2_sha256$260000$gbppPUYGKnb6W0o7w1CVW1$PR01ycCSgSGyQWek6UjFyDDky00mZWLKbm1QrGBAcxE=',false,false,'customer1','hans.mueller@example.org',true,'','',date('now')),
    (3,'pbkdf2_sha256$260000$gbppPUYGKnb6W0o7w1CVW1$PR01ycCSgSGyQWek6UjFyDDky00mZWLKbm1QrGBAcxE=',false,false,'customer2','werner@example.org',true,'','',date('now')),
    (4,'pbkdf2_sha256$260000$gbppPUYGKnb6W0o7w1CVW1$PR01ycCSgSGyQWek6UjFyDDky00mZWLKbm1QrGBAcxE=',false,false,'customer3','bernd.s@example.org',true,'','',date('now')),
    (5,'pbkdf2_sha256$260000$gbppPUYGKnb6W0o7w1CVW1$PR01ycCSgSGyQWek6UjFyDDky00mZWLKbm1QrGBAcxE=',false,false,'customer4','gunter.meier@example.org',true,'','',date('now'));
INSERT INTO saas_product ("id", "slug", "name", "instance_prefix", "activation_url", "instance_url", "is_active", "number_of_ports") VALUES
	(1, 'kanboard', 'Kanboard', 'kb', 'https://#Prefix#Identifier.example.org/activate', 'https://#Prefix#Identifier.example.org/', true, 0);
INSERT INTO saas_plan ("id","product_id","period_length_in_months","currency_code","cost_per_period","notice_period_in_days",
    "slug",
    "name","name_en","name_de",
    "descr_target","descr_target_en","descr_target_de",
    "descr_caption","descr_caption_en","descr_caption_de",
    "descr_1","descr_1_en","descr_1_de",
    "descr_2","descr_2_en","descr_2_de",
    "descr_3","descr_3_en","descr_3_de",
    "descr_4","descr_4_en","descr_4_de") VALUES
	(1,1,12,'EUR',50,14,'basic',
        '','Basic','Basic',
        '','For everyone','Für jeden',
        '','Everything you need','Alles was man so braucht',
        '','Nightly Backups','Nächtliche Backups',
        '','Support in the public forum','Support im öffentlichen Forum',
        '','Regular Updates to latest release','Immer wieder Aktualisierungen auf die aktuelle Version',
        '','Access via automatic url','Zugriff über automatisch vergebene URL'),
	(2,1,1,'EUR',5,7,'mini',
        '','Mini','Mini',
        '','For starters','Für Anfänger',
        '','Just experimenting','Nur zum Ausprobieren',
        '','Nightly Backups','Nächtliche Backups',
        '','Support in the public forum','Support im öffentlichen Forum',
        '','Regular Updates to latest release','Immer wieder Aktualisierungen auf die aktuelle Version',
        '','Access via automatic url','Zugriff über automatisch vergebene URL'),
	(3,1,12,'EUR',300,14,'pro',
        '','Pro','Pro',
        '','For Professionals','Für Profis',
        '','With all bells and whistles','Mit allem Schnickschnack',
        '','Hourly Backups','Stündliche Backups',
        '','Support with Ticketing system, 3 hours incl.','Support über Ticket-System, mit 3 Std. inkl.',
        '','Updates coordinated with you','Aktualisierungen mit Ihnen abgesprochen',
        '','Access via your own url','Zugriff über eigene URL');
INSERT INTO saas_customer ("id","user_id","newsletter","newsletter_subscribed_on","newsletter_cancelled","language_code","verified","verification_token","verification_until","organisation_name","title","first_name","last_name","street","post_code","city","country_code","email_address","is_active") VALUES
	(1,2,true,'2021-01-01',NULL,'DE',true,'',NULL,'Kaninchenzüchter Plauen e.V.','Mr','Hans','Müller','Holzweg 3','01234','Plauen','DE','hans.mueller@example.org',true),
	(2,3,true,'2021-05-01',NULL,'DE',true,'',NULL,'Gartensparte zum Spaten','Mr','Werner','Schmidt','Am Wasser 7','01234','Plauen','DE','werner@example.org',true),
	(3,4,true,'2021-05-01',NULL,'DE',true,'',NULL,'Gartensparte Schneckenhain','Mr','Bernd','Schmitz','Am Berg 2','01234','Plauen','DE','bernd.s@example.org',true),
	(4,5,true,'2021-05-01',NULL,'DE',true,'',NULL,'Sportverein Trimm Dich','Mr','Gunter','Meier','An der Elster 22','01234','Plauen','DE','gunter.meier@example.org',true);
INSERT INTO saas_instance ("id","product_id","identifier","hostname","pacuser","channel","status","last_interaction","reserved_token","reserved_until","reserved_for_user_id","initial_password","db_password","first_port","last_port") VALUES
	(1,1,'344567','host0001','xyz00','stable','active',NULL,NULL,NULL,NULL,'','topsecret',-1,-1),
	(2,1,'238978','host0001','xyz00','stable','active',NULL,NULL,NULL,NULL,'','topsecret',-1,-1),
	(3,1,'785275','host0001','xyz00','stable','active',NULL,NULL,NULL,NULL,'','topsecret',-1,-1),
	(4,1,'862344','host0001','xyz00','stable','free',NULL,NULL,NULL,NULL,'','topsecret',-1,-1),
	(5,1,'119287','host0002','xyz01','stable','active',NULL,NULL,NULL,NULL,'','topsecret',-1,-1),
	(6,1,'239399','host0002','xyz01','stable','free',NULL,NULL,NULL,NULL,'','topsecret',-1,-1);
INSERT INTO saas_contract ("id","start_date","end_date","auto_renew","customer_id","instance_id","plan_id") VALUES
	(1,'2021-06-05',NULL,true,1,1,2),
	(2,'2021-06-01',NULL,true,2,2,1),
	(3,'2021-06-01',NULL,true,3,3,1),
	(4,'2021-06-01',NULL,true,4,5,1);
