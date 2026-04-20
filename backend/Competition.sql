INSERT INTO Competitions(Id, Title,Description,StartDate,EndDate,IsPublished,CreatedAt)
VALUES (NEWID(), 'Brain Teaser','Evaluate arithmetic and number reasoning,Identify patterns,Test spelling, grammar','2026-04-10','2026-04-25',1,GETDATE())

INSERT INTO CompetitionQuestions (CompetitionId, QuizQuestionId)
SELECT c.Id, q.Id
FROM Competitions c
CROSS JOIN QuizQuestions q;