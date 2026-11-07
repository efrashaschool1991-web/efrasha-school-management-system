# EFRASHA SCHOOL MANAGEMENT SYSTEM

Responsive React/Vite web application, installable as an Android PWA, using Supabase cloud authentication and PostgreSQL.

## Included foundation
- Sign-in using Supabase Auth
- Role-based profiles: director, administrator, accountant, teacher, parent, student
- Pupil and staff records
- Fee payments, attendance, examination marks, expenses and announcements
- Dashboard module navigation, search and CSV export
- Responsive phone/tablet/desktop interface

## Activate cloud database
1. Create a new project at https://supabase.com/.
2. Open SQL Editor and run all of `supabase/schema.sql`.
3. Copy `.env.example` to `.env`; fill in `VITE_SUPABASE_URL` and `VITE_SUPABASE_ANON_KEY` from Supabase Project Settings > API.
4. Create a Director account in Supabase Authentication > Users.
5. Edit `supabase/first-director.sql`, replace the email, then run it in SQL Editor.
6. Install Node.js 20+, then run `npm install` and `npm run dev`.
7. For production run `npm run build` and deploy the `dist` directory to an HTTPS host such as Vercel or Netlify. Set the same two environment variables in the host.
8. On Android Chrome open the deployed HTTPS address and choose Install app / Add to Home screen.

Never expose the Supabase service-role key in the browser. Do not enable public self-registration. Create accounts for staff and parents through a trusted administrator. Before real pupil records are entered, test access rules using separate accounts for each role and have the school review privacy, consent, backup and restore procedures.

## Important limitations of this first build
This is a deployable application foundation, not a live hosted school service. It still needs the school's Supabase project and hosting account connected. Parent-linked account workflows, PDF receipts/report cards, fee invoices and arrears calculations, editing/deleting with audit history, payroll, bulk import, automated SMS/email, and full student/parent self-service portal screens are next development items. The included role policies are a starting point and require a full security review before production use. No real student data should be loaded until then.
