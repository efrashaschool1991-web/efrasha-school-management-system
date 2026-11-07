-- First create the Director user under Supabase Authentication > Users.
-- Replace the email and name before running this query.
insert into public.profiles(id,full_name,role) select id,'School Director','director' from auth.users where email='REPLACE_WITH_DIRECTOR_EMAIL' on conflict(id) do update set role='director';
