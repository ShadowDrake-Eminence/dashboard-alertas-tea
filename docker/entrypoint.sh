#!/bin/sh
set -eu

cat > /usr/share/nginx/html/config.js <<EOF
const SUPABASE_URL = '${SUPABASE_URL:-https://TU_PROYECTO.supabase.co}';
const SUPABASE_KEY = '${SUPABASE_KEY:-anon_key}';
EOF
