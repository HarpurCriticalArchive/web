\set content `cat upload`
update field_data_body set body_value = :'content' where entity_id = 30;
update field_revision_body set body_value = :'content' where entity_id = 30;
update history set timestamp=cast(extract(epoch from current_timestamp) as integer) where nid=30;
