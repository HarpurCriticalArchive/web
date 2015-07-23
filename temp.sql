\set content `cat upload`
update field_data_body set body_value = :'content' where entity_id = 39;
