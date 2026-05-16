#!/bin/bash
# Build script for Cloudflare Pages
# Generates config.js from environment variables set in Cloudflare Pages dashboard

if [ -z "$SUPABASE_URL" ] || [ -z "$SUPABASE_KEY" ]; then
    echo "ERROR: SUPABASE_URL and SUPABASE_KEY must be set in environment variables"
    exit 1
fi

cat > config.js << EOF
window.APP_CONFIG = {
    SUPABASE_URL: '${SUPABASE_URL}',
    SUPABASE_KEY: '${SUPABASE_KEY}'
};
EOF

echo "config.js generated successfully"
