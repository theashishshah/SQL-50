SELECT DISTINCT
    author_id AS id
FROM
    Views
WHERE
    author_id = viewer_id
ORDER BY author_id ASC
/* How is it working
The query looks at the Views table and filters rows where author_id is equal to viewer_id.

From these filtered rows, it selects only the author_id, renaming it as id.

DISTINCT ensures that if an author_id appears multiple times (where author_id = viewer_id), it will only appear once in the result.

The results are sorted in ascending order by author_id.
*/