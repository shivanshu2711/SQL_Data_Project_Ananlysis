CREATE TABLE job_applied(
    job_Id INT,
    application_sent_date Date,
    custom_resume Boolean,
    resume_file_name VarChar(20),
    cover_letter_sent Boolean,
    cover_letter_file_name VarChar(255),
    status VarChar(50)
);    




INSERT INTO job_applied(
    job_Id,
    application_sent_date,
    custom_resume,
    resume_file_name,
    cover_letter_sent,
    cover_letter_file_name,
    status)

    Values (1,
    '2024-02-01',
    true,
    'resume_01',
    true,
    'cover_letter_01.pdf',
    'submitted'),
    (2,
    '2024-02-21',
    true,
    'resume_02',
    true,
    'cover_letter_02.pdf',
        'submitted'),
    (3,
    '2024-02-6',
    false,
    'resume_03',
    null,
    'cover_letter_03',
        'interview scheduled'),
        (4,
    '2024-02-10',
    false,
    'resume_04',
    null,
    'cover_letter_04.pdf',
        'ghosted'),
        (5,
    '2024-02-21',
    false,
    'resume_05',
    null,
    'cover_letter_03.pdf',
        'rejected');

        
ALTER TABLE job_applied
Add contact VarChar(50);

SELECT *
FROM job_applied;

UPDATE job_applied
SET contact = 'Mr.Tomar'
Where job_id = 1; 

UPDATE job_applied
SET contact = 'Mr.Tomar'
Where job_id = 2; 

UPDATE job_applied
SET contact = 'Mr.Panday'
Where job_id = 3; 
UPDATE job_applied
SET contact = 'Mr.Tiwari'
Where job_id = 4; 
UPDATE job_applied
SET contact = 'Mr.Bhushan'
Where job_id = 5; 

ALTER TABLE job_applied
Rename Column contact to contact_name;

ALTER TABLE job_applied
ALTER Column contact_name type Text;

ALTER TABLE job_applied
Drop Column contact_name;

