DELETE FROM FormVersions;
DELETE FROM OptionsToQuestions;
DELETE FROM Questions;
DELETE FROM Options;
DELETE FROM FormSections;
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (0, 1, 'Kliknij i wpisz', null);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('A', 11);
INSERT INTO FormSections (Id, Code, Description) VALUES (0, '0','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (0, 'A', 'A.01', 0, 2, 'Liczba wyborców w spisie OKW', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (0, 0, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (1, 'A', 'A.02', 0, 2, 'Liczba członków OKW1', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (1, 1, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (2, 'A', 'A.03', 0, 2, 'Liczba kobiet w składzie komisji', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (2, 2, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (3, 'A', 'A.04', 0, 2, 'Najniższa liczba obecnych członków OKW 1 w trakcie obserwacji', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (3, 3, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (4, 'A', 'A.05', 0, 1, 'Czy zawsze obecny był Przewodniczący lub Z-ca Przewodniczącego Komisji?', '');
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (1, 0, 'tak', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (4, 4, 1, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (2, 0, 'nie', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (5, 4, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (5, 'A', 'A.06', 0, 1, 'Czy na otwarcie komisja wyborcza stawiła się do godziny 6 rano? (jeśli byłeś obecny przed lokalem o 6:00)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (6, 5, 1, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (3, 0, 'nie wiem', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (7, 5, 3, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (4, 0, 'nie, opóźnienie 1-15 min', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (8, 5, 4, 1);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (5, 0, 'nie, opóźnienie 16-30', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (9, 5, 5, 1);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (6, 0, 'nie, opóźnienie 30-1h', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (10, 5, 6, 1);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (7, 0, 'nie opóźnienie > 1h', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (11, 5, 7, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (6, 'A', 'A.07', 0, 1, 'Czy komisja sprawdziła, że w lokalu znajduje się właściwy spis wyborców?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (12, 6, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (13, 6, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (7, 'A', 'A.08', 0, 1, 'Czy komisja przeliczyła karty do głosowania, które otrzymała?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (14, 7, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (15, 7, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (8, 'A', 'A.09', 0, 1, 'Czy komisja ostemplowała wszystkie karty do głosowania przed otwarciem lokalu wyborczego lub zaraz po otwarciu?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (16, 8, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (17, 8, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (9, 'A', 'A.10', 0, 1, 'Czy komisja sprawdziła, że urna jest pusta, a następnie zamknęła ją/je i zaplombowała/opieczętowała pieczęcią komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (18, 9, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (19, 9, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (10, 'A', 'A.11', 0, 0, 'Jaki był rodzaj plomby użytej do zabezpieczenia urny?', '');
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (8, 0, 'naklejka foliowa', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (20, 10, 8, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (9, 0, 'opaska samozaciskowa', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (21, 10, 9, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (10, 0, 'opieczętowany i podpisany pasek papieru', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (22, 10, 10, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (11, 1, 'inne', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (23, 10, 11, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (11, 'A', 'A.12', 0, 1, 'Jeśli plomba była oznaczona unikatowym numerem, czy został on wprowadzony do protokołu wewnętrznego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (24, 11, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (25, 11, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (12, 'A', 'A.13', 0, 1, 'Czy komisja sprawdziła przed rozpoczęciem głosowania czy w lokalu i na zewnątrz nie ma żadnych materiałów agitacyjnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (26, 12, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (27, 12, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (13, 'A', 'A.14', 0, 1, 'Czy karty do głosowania znajdujące się w lokalu są właściwie zabezpieczone i  nie mają do nich dostępu osoby postronne?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (28, 13, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (29, 13, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (14, 'A', 'A.15', 0, 1, 'Czy komisja realizuje procedury związane z otwarciem lokalu wyborczego ze zrozumieniem, a członkowie komisji wiedzą jakie czynności mają wykonywać?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (30, 14, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (31, 14, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (15, 'A', 'A.16', 0, 1, 'Czy komisja otworzyła lokal wyborczy dla wyborców o godz. 7.00?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (32, 15, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (33, 15, 4, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (34, 15, 5, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (35, 15, 6, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (36, 15, 7, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (16, 'A', 'A.17', 0, 1, 'Czy komisja pozwoliła obserwować procedury przygotowania lokalu wyborczego do głosowania bez problemów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (37, 16, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (38, 16, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (17, 'A', 'A.18', 0, 1, 'Czy umożliwiono obserwatorom  nagrywanie/robienie zdjęć w trakcie przygotowania lokalu wyborczego do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (39, 17, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (40, 17, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (18, 'A', 'A.19', 0, 1, 'Czy w OKW byli obecni inni obserwatorzy lub mężowie zaufania?', '');
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (12, 1, 'tak', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (41, 18, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (42, 18, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (19, 'A', 'A.20', 0, 1, 'Czy lokal był na liście dostosowanych dla os. niepełnosprawnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (43, 19, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (44, 19, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (20, 'A', 'A.21', 0, 1, 'Czy lokal rzeczywiście spełniał wymogi dla os. niepełnosprawnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (45, 20, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (46, 20, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (21, 'A', 'A.22', 0, 1, 'Czy w lokalu wyborczym lub na terenie, na którym się on znajduje była prowadzona agitacja wyborcza?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (47, 21, 12, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (48, 21, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (22, 'A', 'A.23', 0, 1, 'Jak oceniasz wiedzę OKW odnośnie procesu wyborczego?', '');
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (13, 0, 'bardzo dobra', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (49, 22, 13, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (14, 0, 'dobra', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (50, 22, 14, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (15, 0, 'zła', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (51, 22, 15, 1);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (16, 0, 'bardzo zła', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (52, 22, 16, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (23, 'A', 'A.24', 0, 1, 'Ocena pracy OKW', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (53, 23, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (54, 23, 14, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (55, 23, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (56, 23, 16, 1);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('B', 11);
INSERT INTO FormSections (Id, Code, Description) VALUES (1, '1','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (24, 'B', 'B.01', 1, 2, 'Liczba wyborców w spisie OKW', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (57, 24, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (25, 'B', 'B.02', 1, 2, 'Liczba członków OKW1', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (58, 25, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (26, 'B', 'B.03', 1, 2, 'Liczba kobiet w składzie komisji OKW1', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (59, 26, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (27, 'B', 'B.04', 1, 2, 'Najniższa liczba obecnych członków OKW 1 (w czasie obserwacji)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (60, 27, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (28, 'B', 'B.05', 1, 1, 'Czy zawsze obecny był przewodniczący lub z-ca przewodniczącego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (61, 28, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (62, 28, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (29, 'B', 'B.06', 1, 2, 'Liczba wyborców, która zagłosowała w trakcie obserwacji', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (63, 29, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (30, 'B', 'B.07', 1, 2, 'Liczba wyborców, która zagłosowała do momentu przybycia do lokalu wyb. (zapytać komisję)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (64, 30, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (31, 'B', 'B.08', 1, 1, 'Czy komisja jest prawidłowo oznaczona - na zewnątrz lokalu wyborczego, jak i wewnątrz?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (65, 31, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (66, 31, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (32, 'B', 'B.09', 1, 1, 'Czy w danym lokalu znajduje się tylko jedna OKW?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (67, 32, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (68, 32, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (33, 'B', 'B.10', 1, 1, 'Czy lokal był na liście dostosowanych dla os. niepełnosprawnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (69, 33, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (70, 33, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (34, 'B', 'B.11', 1, 1, 'Czy lokal rzeczywiście spełniał wymogi dla os. niepełnosprawnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (71, 34, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (72, 34, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (35, 'B', 'B.12', 1, 1, 'Czy w lokalu wyborczym lub terenie, na którym się on znajduje była prowadzona agitacja wyborcza?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (73, 35, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (74, 35, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (36, 'B', 'B.13', 1, 1, 'Czy w OKW byli obecni inni obserwatorzy lub mężowie zaufania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (75, 36, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (76, 36, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (37, 'B', 'B.14', 1, 1, 'Czy członkowie OKW1 sprawdzają dokument tożsamości zawierający zdjęcie głosujących?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (77, 37, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (78, 37, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (38, 'B', 'B.15', 1, 1, 'Czy członkowie komisji  korzystali z osłon na dane osobowe?', '');
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (17, 0, 'zawsze', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (79, 38, 17, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (18, 0, 'często', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (80, 38, 18, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (19, 0, 'czasami', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (81, 38, 19, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (20, 0, 'nigdy', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (82, 38, 20, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (39, 'B', 'B.16', 1, 2, 'Ilu wyborców ( w trakcie prowadzonej obserwacji) poprosiło o zaświadczenie potwierdzające udział w głosowaniu w trakcie prowadzonej obserwacji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (83, 39, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (40, 'B', 'B.17', 1, 1, 'Czy głosującym wydawana jest odpowiednia liczba kart do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (84, 40, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (85, 40, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (41, 'B', 'B.18', 1, 1, 'Czy w lokalu wyborczym znajdują się wymagane obwieszczenia i informacje o sposobie głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (86, 41, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (87, 41, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (42, 'B', 'B.19', 1, 1, 'Czy w lokalu wyborczym znajduje się wystarczająca liczba miejsc zapewniających tajność głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (88, 42, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (89, 42, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (43, 'B', 'B.20', 1, 1, 'Czy w miejscach zapewniających tajność głosowania jest wystarczająco dużo światła, aby można było oddać głos?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (90, 43, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (91, 43, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (44, 'B', 'B.21', 1, 1, 'Czy wszystkie karty do głosowania wydawane wyborcom, które zaobserwowałeś są prawidłowo opieczętowane?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (92, 44, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (93, 44, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (45, 'B', 'B.22', 1, 1, 'Czy urna jest prawidłowo zaplombowana?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (94, 45, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (95, 45, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (46, 'B', 'B.23', 1, 0, 'Jaki był rodzaj plomby użytej do zabezpieczenia urny', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (96, 46, 8, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (97, 46, 9, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (98, 46, 10, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (99, 46, 11, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (47, 'B', 'B.24', 1, 1, 'Jeśli plomba była oznaczona unikatowym numerem, czy został on wprowadzony do protokołu wewnętrznego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (100, 47, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (101, 47, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (48, 'B', 'B.25', 1, 1, 'Czy członek komisji pełni dyżur przy urnie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (102, 48, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (103, 48, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (49, 'B', 'B.26', 1, 1, 'Czy spisy wyborców są poszeregowane i uporządkowane?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (104, 49, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (105, 49, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (50, 'B', 'B.27', 1, 1, 'Czy w trakcie obserwacji nastąpiło dopisanie wyborcy do spisu?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (106, 50, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (107, 50, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (51, 'B', 'B.28', 1, 1, 'Czy dopisanie wyborcy do spisu odbyło się zgodnie z procedurą?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (108, 51, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (109, 51, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (52, 'B', 'B.29', 1, 1, 'Czy zaobserwowałeś przypadki nieuprawnionego głosowania ‘za kogoś’ lub głosowania ‘rodzinnego’?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (110, 52, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (111, 52, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (53, 'B', 'B.30', 1, 1, 'Czy zaobserwowałeś przypadki próby wyniesienia karty do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (112, 53, 12, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (113, 53, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (54, 'B', 'B.31', 1, 1, 'Czy głosujący wykonywali zdjęcia swoich kart ?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (114, 54, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (115, 54, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (55, 'B', 'B.32', 1, 1, 'Czy przestrzegana jest tajność głosowania ?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (116, 55, 1, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (21, 1, 'nie', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (117, 55, 21, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (56, 'B', 'B.33', 1, 1, 'Czy były przerwy w głosowaniu?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (118, 56, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (119, 56, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (57, 'B', 'B.34', 1, 1, 'Czy w lokalu były osoby nieuprawnione?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (120, 57, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (121, 57, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (58, 'B', 'B.35', 1, 2, 'Ilu wyborców ( w trakcie prowadzonej obserwacji) poprosiło o zaświadczenie potwierdzające udział w głosowaniu w trakcie prowadzonej obserwacji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (122, 58, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (59, 'B', 'B.36', 1, 1, 'Czy komisja pozwoliła ci obserwować proces głosowania bez problemów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (123, 59, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (124, 59, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (60, 'B', 'B.37', 1, 1, 'Jak oceniasz wiedzę OKW odnośnie procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (125, 60, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (126, 60, 14, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (127, 60, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (128, 60, 16, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (61, 'B', 'B.38', 1, 1, 'Ocena pracy OKW1', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (129, 61, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (130, 61, 14, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (131, 61, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (132, 61, 16, 1);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('C', 11);
INSERT INTO FormSections (Id, Code, Description) VALUES (2, '2','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (62, 'C', 'C.01', 2, 2, 'Liczba wyborców w spisie OKW', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (133, 62, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (63, 'C', 'C.02', 2, 2, 'Liczba członków OKW1', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (134, 63, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (64, 'C', 'C.03', 2, 2, 'Liczba kobiet wśród członków komisji wyborczej (OKW 1)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (135, 64, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (65, 'C', 'C.04', 2, 2, 'Najniższa liczba obecnych członków OKW 1 (w czasie obserwacji)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (136, 65, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (66, 'C', 'C.05', 2, 2, 'Liczba członków OKW2', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (137, 66, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (67, 'C', 'C.06', 2, 2, 'Liczba kobiet wśród członków komisji wyborczej (OKW 2)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (138, 67, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (68, 'C', 'C.07', 2, 2, 'Najniższa liczba obecnych członków OKW 2 (w czasie obserwacji)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (139, 68, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (69, 'C', 'C.08', 2, 1, 'Czy komisja ma zapewnioną obsługę informatyczną?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (140, 69, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (141, 69, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (70, 'C', 'C.09', 2, 1, 'Czy lokal wyborczy został zamknięty o godz. 21.00?
Jeśli nie to jakie było opóźnienie?
1-15 min / 16-30/30-1h/ x>1h', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (142, 70, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (143, 70, 3, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (144, 70, 4, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (145, 70, 5, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (146, 70, 6, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (147, 70, 7, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (71, 'C', 'C.10', 2, 1, 'Czy wszyscy wyborcy znajdujący się w lokalu w momencie zamknięcia mogli oddać głos?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (148, 71, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (149, 71, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (72, 'C', 'C.11', 2, 1, 'Czy w momencie zamknięcia lokalu, obecna była wymagana liczba (minimum 2/3) członków OKW1 i OKW 2?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (150, 72, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (151, 72, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (73, 'C', 'C.12', 2, 1, 'Czy po zamknięciu lokalu  i opuszczeniu go przez wszystkich wyborców w OKW były osoby nieuprawnione?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (152, 73, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (153, 73, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (74, 'C', 'C.13', 2, 1, 'Czy przewodniczący OKW1 razem z przewodniczącym OKW2 opieczętowali otwór urny wyborczej?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (154, 74, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (155, 74, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (75, 'C', 'C.14', 2, 1, 'Czy przewodniczący OKW1 w obecności wszystkich członków OKW1 i OKW2 przekazał przewodniczącemu OKW2 wszystkie wymagane materiały?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (156, 75, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (157, 75, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (76, 'C', 'C.15', 2, 1, 'Czy członkowie OKW1 w obecności członków OKW2 oraz przewodniczących OKW1 i OKW2 ustalili liczbę
Otrzymanych kart każdego rodzaju', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (158, 76, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (159, 76, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (77, 'C', 'C.16', 2, 1, 'Czy członkowie OKW1 w obecności członków OKW2 oraz przewodniczących OKW1 i OKW2 ustalili liczbę:
niewykorzystanych kart do głosowania', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (160, 77, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (161, 77, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (78, 'C', 'C.17', 2, 1, 'Czy członkowie OKW1 w obecności członków OKW2 oraz przewodniczących OKW1 i OKW2 ustalili liczbę:
aktów pełnomocnictwa', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (162, 78, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (163, 78, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (79, 'C', 'C.18', 2, 1, 'Czy członkowie OKW1 w obecności członków OKW2 oraz przewodniczących OKW1 i OKW2 ustalili liczbę:
Wyborców korzystających z nakładek w alfabecie Braile’a', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (164, 79, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (165, 79, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (80, 'C', 'C.19', 2, 1, 'Czy wystąpiła różnica pomiędzy sumą kart wydanych wyborcom i kart niewykorzystanych a liczbą kart otrzymanych przez komisję', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (166, 80, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (167, 80, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (81, 'C', 'C.20', 2, 1, 'Czy protokół przekazania był poprawiany?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (168, 81, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (169, 81, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (82, 'C', 'C.21', 2, 1, 'Czy protokół przekazania otrzymali wszyscy którzy o to poprosili?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (170, 82, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (171, 82, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (83, 'C', 'C.22', 2, 1, 'Czy członkowie OKW1 opuścili lokal wyborczy po podpisaniu protokołu przekazania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (172, 83, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (173, 83, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (84, 'C', 'C.23', 2, 2, 'Czas opuszczenia lokalu przez członków OKW 1', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (174, 84, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (85, 'C', 'C.24', 2, 1, 'Ocena pracy OKW1', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (175, 85, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (176, 85, 14, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (177, 85, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (178, 85, 16, 1);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('C2', 11);
INSERT INTO FormSections (Id, Code, Description) VALUES (3, '3','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (86, 'C2', 'C2.01', 3, 2, 'Rozpoczęcie pracy przez OKW2', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (179, 86, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (87, 'C2', 'C2.02', 3, 1, 'Czy członkowie OKW2 ustalili na podstawie spisu wyborców liczbę osób uprawnionych do głosowania oraz liczbę wyborców, którym wydano karty do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (180, 87, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (181, 87, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (88, 'C2', 'C2.03', 3, 1, 'Czy członkowie OKW2 umieścili niewykorzystane karty do głosowania w opakowaniach zbiorczych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (182, 88, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (183, 88, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (89, 'C2', 'C2.04', 3, 1, 'Czy policzona została ogólna liczba wyborców uprawnionych do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (184, 89, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (185, 89, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (90, 'C2', 'C2.05', 3, 1, 'Czy ustalona została liczba wydanych kart do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (186, 90, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (187, 90, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (91, 'C2', 'C2.06', 3, 1, 'Czy liczby oddanych głosów i niewykorzystanych kart do głosowania zgadzają się z liczbą otrzymanych kart do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (188, 91, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (189, 91, 21, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (92, 'C2', 'C2.07', 3, 1, 'Czy policzone zostały na początku głosy oddane poprzez głosowanie korespondencyjne?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (190, 92, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (191, 92, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (93, 'C2', 'C2.08', 3, 1, 'Czy w trakcie wyjmowania głosów z urny miały miejsce problemy?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (192, 93, 12, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (193, 93, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (94, 'C2', 'C2.09', 3, 1, 'Czy plomby na urnie oraz plomba otworu urny były w nienaruszonym stanie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (194, 94, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (195, 94, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (95, 'C2', 'C2.10', 3, 1, 'Czy komisja rozdzieliła prawidłowo karty do głosowania w poszczególnych wyborach (rady, sejmiki, wójtowie, itp.) i je policzyła?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (196, 95, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (197, 95, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (96, 'C2', 'C2.11', 3, 2, 'Ile było kart przedartych', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (198, 96, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (97, 'C2', 'C2.12', 3, 1, 'Czy komisja wydzieliła i policzyła karty nieważne?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (199, 97, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (200, 97, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (98, 'C2', 'C2.13', 3, 2, 'Ile było kart bez pieczątki OKW?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (201, 98, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (99, 'C2', 'C2.14', 3, 1, 'Czy komisja policzyła karty ważne?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (202, 99, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (203, 99, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (100, 'C2', 'C2.15', 3, 1, 'Czy osoby mające ołówki lub długopisy dotykają kart wyborczych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (204, 100, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (205, 100, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (101, 'C2', 'C2.16', 3, 1, 'Czy członkowie komisji pracowali wspólnie w trakcie prowadzonej obserwacji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (206, 101, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (207, 101, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (102, 'C2', 'C2.17', 3, 1, 'Jak oceniasz wiedzę OKW 2 odnośnie procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (208, 102, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (209, 102, 14, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (210, 102, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (211, 102, 16, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (103, 'C2', 'C2.18', 3, 1, 'Ocena pracy OKW2:', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (212, 103, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (213, 103, 14, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (214, 103, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (215, 103, 16, 1);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('C3', 11);
INSERT INTO FormSections (Id, Code, Description) VALUES (4, '4','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (104, 'C3', 'C3.01', 4, 2, 'Czas rozpoczęcia liczenia głosów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (216, 104, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (105, 'C3', 'C3.02', 4, 2, 'Czas zakończenia liczenia głosów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (217, 105, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (106, 'C3', 'C3.03', 4, 1, 'Czy na czas liczenia głosów, karty do głosowania w pozostałych wyborach pozostawały zapakowane, opieczętowane i odłożone w miejsce widoczne dla komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (218, 106, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (219, 106, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (107, 'C3', 'C3.04', 4, 1, 'Czy komisja ustaliła: Liczbę głosów oddanych na poszczególne listy', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (220, 107, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (221, 107, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (108, 'C3', 'C3.05', 4, 1, 'Czy komisja ustaliła: Liczbę głosów oddanych na poszczególnych kandydatów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (222, 108, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (223, 108, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (109, 'C3', 'C3.06', 4, 1, 'Czy członkowie OKW2 wspólnie oglądali wszystkie karty?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (224, 109, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (225, 109, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (110, 'C3', 'C3.07', 4, 1, 'Czy komisja miała problem z ustaleniem ważności głosów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (226, 110, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (227, 110, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (111, 'C3', 'C3.08', 4, 2, 'Ile w przybliżeniu kart zawierało rysunki i dopiski na karcie do głosowania (poza kratką)?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (228, 111, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (112, 'C3', 'C3.09', 4, 2, 'Ile w przybliżeniu kart zawierało rysunki i dopiski na karcie w obrębie kartki?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (229, 112, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (113, 'C3', 'C3.10', 4, 2, 'Ile było przypadków głosów zaczernionych które zostały uznane za ważne?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (230, 113, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (114, 'C3', 'C3.11', 4, 2, 'Ile było przypadków głosów zaczernionych, w  których zaczerniona kratka dotyczyła innego komitetu wyborczego niż głos oddany ponownie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (231, 114, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (115, 'C3', 'C3.12', 4, 1, 'Czy były problemy z wypełnieniem projektu protokołu?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (232, 115, 12, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (233, 115, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (116, 'C3', 'C3.13', 4, 1, 'Czy członkowie OKW 2 zarządzili przerwę?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (234, 116, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (235, 116, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (117, 'C3', 'C3.14', 4, 1, 'Czy w trakcie ewentualnej przerwy materiały wyborcze były zabezpieczone i widoczne dla członków komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (236, 117, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (237, 117, 21, 1);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('D', 11);
INSERT INTO FormSections (Id, Code, Description) VALUES (5, '5','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (118, 'D', 'D.01', 5, 2, 'Czas rozpoczęcia wprowadzania projektów protokołów do WOW', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (238, 118, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (119, 'D', 'D.02', 5, 2, 'Czas zakończenia pracy OKW 2', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (239, 119, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (120, 'D', 'D.03', 5, 1, 'Czy mężowie zaufania lub członkowie komisji wnieśli jakieś uwagi do protokołu?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (240, 120, 12, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (241, 120, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (121, 'D', 'D.04', 5, 1, 'Czy komisja ustosunkowała się do tych uwag?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (242, 121, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (243, 121, 2, 1);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (22, 0, 'brak uwag', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (244, 121, 22, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (122, 'D', 'D.05', 5, 1, 'Czy system elektronicznego przekazywania danych wykazał błędy?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (245, 122, 12, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (246, 122, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (123, 'D', 'D.06', 5, 1, 'Czy systemu elektronicznego przekazywania danych wykazał ostrzeżenia?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (247, 123, 12, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (248, 123, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (124, 'D', 'D.07', 5, 1, 'Czy do projektów protokołów zostały wprowadzone zmiany, które spowodowały konieczność ponownego wydrukowania wszystkich protokołów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (249, 124, 12, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (250, 124, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (125, 'D', 'D.08', 5, 1, 'Czy wszyscy obecni członkowie komisji podpisali wydrukowane protokoły', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (251, 125, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (252, 125, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (126, 'D', 'D.09', 5, 1, 'Czy każdy obserwator społeczny i mąż zaufania, który o to poprosił, otrzymał kopię protokołu ?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (253, 126, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (254, 126, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (127, 'D', 'D.10', 5, 1, 'Czy  komisja wywiesiła w widocznym miejscu protokół?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (255, 127, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (256, 127, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (128, 'D', 'D.11', 5, 1, 'Jak oceniasz wiedzę OKW 2 odnośnie procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (257, 128, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (258, 128, 14, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (259, 128, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (260, 128, 16, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (129, 'D', 'D.12', 5, 1, 'Ocena pracy OKW2:', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (261, 129, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (262, 129, 14, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (263, 129, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (264, 129, 16, 1);
