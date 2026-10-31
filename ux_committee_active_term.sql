CREATE UNIQUE INDEX ux_committee_active_term
ON committee_terms(entity_type, entity_id)
WHERE status = 'ACTIVE';