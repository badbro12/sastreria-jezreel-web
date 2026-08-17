// ⚠️ CONFIGURACIÓN — Sastrería Jezreel
// Pega aquí tu URL y tu "anon public key" de Supabase.
// Los encuentras en: tu proyecto de Supabase > Project Settings > API

const SUPABASE_URL = "https://lmiuethgfsuoxmrimspl.supabase.co";
const SUPABASE_ANON_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxtaXVldGhnZnN1b3htcmltc3BsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3ODY2Mjk3NzYsImV4cCI6MjEwMjIwNTc3Nn0.Tm7euWcPckr-3BX03bwt6CldH5p0sfENdfuX8u19wpo";

window.sb = supabase.createClient(SUPABASE_URL, SUPABASE_ANON_KEY);
