SELECT university_email,
        suggestions,
        benefits_problems,
        comments
FROM {{ source('de_projects', 'responses') }}