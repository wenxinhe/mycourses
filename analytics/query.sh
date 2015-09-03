curl "https://api.keen.io/3.0/projects/55e813d596773d386d83adc3/queries/count?\
api_key=3d80c07565b2b54bdd86a97ab34e8b52f16ccae3b5e15f994d46d05f402d4e4c757759f2903cf1f786f9f32d1e36ff5febda77f7c34eabf7966a89db1f66a69af7a8364b4d07c3f64ba28a1de0c0c6fb0b4570d574d1e88eb45b88fd1e46fa3f811bd4cad02db6f83ddf6c57b2c46123\
&event_collection=visits\
&timeframe=this_7_days"


curl https://api.keen.io/3.0/projects/55e813d596773d386d83adc3/queries/extraction \
-H "Authorization: 3d80c07565b2b54bdd86a97ab34e8b52f16ccae3b5e15f994d46d05f402d4e4c757759f2903cf1f786f9f32d1e36ff5febda77f7c34eabf7966a89db1f66a69af7a8364b4d07c3f64ba28a1de0c0c6fb0b4570d574d1e88eb45b88fd1e46fa3f811bd4cad02db6f83ddf6c57b2c46123" \
-H 'Content-Type: application/json' \
-d "{
\"event_collection\": \"visits\",
\"timeframe\": \"this_7_days\",
\"email\": \"wenxin.he1983@icloud.com\"
}"