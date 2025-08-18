SELECT 
    COLUMN_NAME,
    COLUMN_TYPE,
    IS_NULLABLE,
    COLUMN_KEY,
    EXTRA,
    COLUMN_DEFAULT,
    CHARACTER_MAXIMUM_LENGTH,
    NUMERIC_PRECISION,
    NUMERIC_SCALE,
    COLUMN_COMMENT
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_SCHEMA = 'your_database_name' -- replace with your database name
    AND TABLE_NAME = 'books'
ORDER BY 
    ORDINAL_POSITION;
    # Check if 'task_4.sql' exists
[ -f "task_4.sql" ] && echo "File exists." || echo "File does not exist."

# Check if 'task_4.sql' is not empty
[ -s "task_4.sql" ] && echo "File is not empty." || echo "File is empty."

# Check if 'task_4.sql' contains 'ANALYZE' (case-insensitive)
grep -iq 'ANALYZE' task_4.sql && echo "Contains ANALYZE" || echo "Does not contain ANALYZE"