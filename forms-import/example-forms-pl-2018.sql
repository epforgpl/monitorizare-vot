DELETE FROM FormVersions;
DELETE FROM OptionsToQuestions;
DELETE FROM Questions;
DELETE FROM Options;
DELETE FROM FormSections;
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (0, 1, 'Kliknij i wpisz', null);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('A', 1);
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
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (4, 0, 'nie,', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (8, 5, 4, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (6, 'A', 'A.07', 0, 0, 'Jeśli komisja nie stawiła się do godziny 6 rano, jakie było opóźnienie?', '');
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (5, 0, '1-15 min', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (9, 6, 5, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (6, 0, '16-30', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (10, 6, 6, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (7, 0, '30-1h', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (11, 6, 7, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (8, 0, 'opóźnienie > 1h', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (12, 6, 8, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (7, 'A', 'A.08', 0, 1, 'Czy komisja sprawdziła, że w lokalu znajduje się właściwy spis wyborców?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (13, 7, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (14, 7, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (8, 'A', 'A.09', 0, 1, 'Czy komisja przeliczyła karty do głosowania, które otrzymała?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (15, 8, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (16, 8, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (9, 'A', 'A.10', 0, 1, 'Czy komisja ostemplowała wszystkie karty do głosowania przed otwarciem lokalu wyborczego lub zaraz po otwarciu?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (17, 9, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (18, 9, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (10, 'A', 'A.11', 0, 1, 'Czy komisja sprawdziła, że urna jest pusta, a następnie zamknęła ją/je i zaplombowała/opieczętowała pieczęcią komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (19, 10, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (20, 10, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (11, 'A', 'A.12', 0, 0, 'Jaki był rodzaj plomby użytej do zabezpieczenia urny?', '');
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (9, 0, 'naklejka foliowa', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (21, 11, 9, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (10, 0, 'opaska samozaciskowa', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (22, 11, 10, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (11, 0, 'opieczętowany i podpisany pasek papieru', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (23, 11, 11, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (12, 1, 'inne', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (24, 11, 12, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (12, 'A', 'A.13', 0, 1, 'Jeśli plomba była oznaczona unikatowym numerem, czy został on wprowadzony do protokołu wewnętrznego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (25, 12, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (26, 12, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (13, 'A', 'A.14', 0, 1, 'Czy komisja sprawdziła przed rozpoczęciem głosowania czy w lokalu i na zewnątrz nie ma żadnych materiałów agitacyjnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (27, 13, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (28, 13, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (14, 'A', 'A.15', 0, 1, 'Czy karty do głosowania znajdujące się w lokalu są właściwie zabezpieczone i  nie mają do nich dostępu osoby postronne?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (29, 14, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (30, 14, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (15, 'A', 'A.16', 0, 1, 'Czy komisja realizuje procedury związane z otwarciem lokalu wyborczego ze zrozumieniem, a członkowie komisji wiedzą jakie czynności mają wykonywać?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (31, 15, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (32, 15, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (16, 'A', 'A.17', 0, 1, 'Czy komisja otworzyła lokal wyborczy dla wyborców o godz. 7.00?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (33, 16, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (34, 16, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (17, 'A', 'A.18', 0, 1, 'Jeśli nie, jakie było opóźnienie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (35, 17, 5, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (36, 17, 6, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (37, 17, 7, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (38, 17, 8, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (18, 'A', 'A.19', 0, 1, 'Czy komisja pozwoliła obserwować procedury przygotowania lokalu wyborczego do głosowania bez problemów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (39, 18, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (40, 18, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (19, 'A', 'A.20', 0, 1, 'Czy umożliwiono obserwatorom  nagrywanie/robienie zdjęć w trakcie przygotowania lokalu wyborczego do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (41, 19, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (42, 19, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (20, 'A', 'A.21', 0, 1, 'Czy w OKW byli obecni inni obserwatorzy lub mężowie zaufania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (43, 20, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (44, 20, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (21, 'A', 'A.22', 0, 2, 'Jeśli tak, z jakich organizacji/komitetów wyborczych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (45, 21, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (22, 'A', 'A.23', 0, 1, 'Czy lokal był na liście dostosowanych dla os. niepełnosprawnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (46, 22, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (47, 22, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (23, 'A', 'A.24', 0, 1, 'Czy lokal spełniał wymogi dostosowania dla os. niepełnosprawnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (48, 23, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (49, 23, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (24, 'A', 'A.25', 0, 1, 'Czy w lokalu wyborczym lub na terenie, na którym się on znajduje była prowadzona agitacja wyborcza?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (50, 24, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (51, 24, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (25, 'A', 'A.26', 0, 2, 'Jeśli tak, jakie były jej formy? (wymień)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (52, 25, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (26, 'A', 'A.27', 0, 1, 'Czy komisja wyborcza zareagowała odpowiednio na przejawy prowadzonej kampanii?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (53, 26, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (54, 26, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (27, 'A', 'A.28', 0, 1, 'Czy w lokalu przebywały osoby nieupoważnione? (osoby nie będące wyborcami, obserwatorami, mężami zaufania i członkami komisji wyborczej)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (55, 27, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (56, 27, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (28, 'A', 'A.29', 0, 2, 'Jeśli tak – co to były za osoby i czy zakłócały pracę komisji? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (57, 28, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (29, 'A', 'A.30', 0, 1, 'Czy wystąpiły inne problemy lub sytuacje mogące mieć wpływ na przebieg wyborów? Jeśli tak – opisz w dodatkowej notatce', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (58, 29, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (59, 29, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (30, 'A', 'A.31', 0, 2, 'Czas zakończenia obserwacji', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (60, 30, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (31, 'A', 'A.32', 0, 0, 'Jak oceniasz wiedzę OKW 1 odnośnie procesu wyborczego?', '');
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (13, 0, 'bardzo dobra', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (61, 31, 13, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (14, 0, 'dobra', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (62, 31, 14, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (15, 0, 'zła', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (63, 31, 15, 1);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (16, 0, 'bardzo zła', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (64, 31, 16, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (32, 'A', 'A.33', 0, 0, 'Jak oceniasz pracę OKW 1:', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (65, 32, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (66, 32, 14, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (67, 32, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (68, 32, 16, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (33, 'A', 'A.34', 0, 0, 'Jak oceniasz przebieg całości procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (69, 33, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (70, 33, 14, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (71, 33, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (72, 33, 16, 1);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('B', 1);
INSERT INTO FormSections (Id, Code, Description) VALUES (1, '1','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (34, 'B', 'B.01', 1, 2, 'Liczba wyborców w spisie OKW', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (73, 34, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (35, 'B', 'B.02', 1, 2, 'Liczba członków OKW1', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (74, 35, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (36, 'B', 'B.03', 1, 2, 'Liczba kobiet w składzie komisji OKW1', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (75, 36, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (37, 'B', 'B.04', 1, 2, 'Najniższa liczba obecnych członków OKW 1 (w czasie obserwacji)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (76, 37, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (38, 'B', 'B.05', 1, 1, 'Czy zawsze obecny był przewodniczący lub z-ca przewodniczącego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (77, 38, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (78, 38, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (39, 'B', 'B.06', 1, 2, 'Liczba wyborców, która zagłosowała w trakcie obserwacji', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (79, 39, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (40, 'B', 'B.07', 1, 2, 'Liczba wyborców, która zagłosowała do momentu przybycia do lokalu wyb. (zapytać komisję)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (80, 40, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (41, 'B', 'B.08', 1, 1, 'Czy komisja jest prawidłowo oznaczona - na zewnątrz lokalu wyborczego, jak i wewnątrz?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (81, 41, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (82, 41, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (42, 'B', 'B.09', 1, 1, 'Czy w danym lokalu znajduje się tylko jedna OKW?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (83, 42, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (84, 42, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (43, 'B', 'B.10', 1, 1, 'Czy lokal był na liście dostosowanych dla os. niepełnosprawnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (85, 43, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (86, 43, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (44, 'B', 'B.11', 1, 1, 'Czy lokal spełnia wymogi dostosowania dla os. niepełnosprawnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (87, 44, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (88, 44, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (45, 'B', 'B.12', 1, 1, 'Czy w lokalu wyborczym lub terenie, na którym się on znajduje była prowadzona agitacja wyborcza?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (89, 45, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (90, 45, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (46, 'B', 'B.13', 1, 2, 'Jakie były jej formy? (wymień)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (91, 46, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (47, 'B', 'B.14', 1, 1, 'Czy w OKW byli obecni inni obserwatorzy lub mężowie zaufania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (92, 47, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (93, 47, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (48, 'B', 'B.15', 1, 2, 'Jeśli tak to z jakich organizacji / komitetów wyborczych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (94, 48, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (49, 'B', 'B.16', 1, 1, 'Czy w lokalu wyborczym znajdują się wymagane obwieszczenia i informacje dla wyborców o technice i zasadach głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (95, 49, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (96, 49, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (50, 'B', 'B.17', 1, 0, 'Czy członkowie OKW1 sprawdzają dokument tożsamości zawierający zdjęcie głosujących?', '');
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (17, 0, 'zawsze lub prawie zawsze', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (97, 50, 17, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (18, 0, 'często', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (98, 50, 18, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (19, 0, 'czasami', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (99, 50, 19, 1);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (20, 0, 'nigdy lub prawie nigdy', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (100, 50, 20, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (51, 'B', 'B.18', 1, 0, 'Czy członkowie komisji  korzystali z osłon na dane osobowe?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (101, 51, 17, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (102, 51, 18, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (103, 51, 19, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (104, 51, 20, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (52, 'B', 'B.19', 1, 2, 'Ilu wyborców w przybliżeniu ( w trakcie prowadzonej obserwacji) poprosiło o zaświadczenie potwierdzające udział w głosowaniu w trakcie prowadzonej obserwacji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (105, 52, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (53, 'B', 'B.20', 1, 1, 'Czy głosującym wydawana jest wymagana liczba kart do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (106, 53, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (107, 53, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (54, 'B', 'B.21', 1, 1, 'Czy w lokalu wyborczym znajduje się wystarczająca liczba miejsc zapewniających tajność głosowania? (ich liczba powinna pozwolić na głosowanie bez ‘zbytnich’ kolejek)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (108, 54, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (109, 54, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (55, 'B', 'B.22', 1, 1, 'Czy w miejscach zapewniających tajność głosowania jest wystarczająco dużo światła, aby można było oddać głos?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (110, 55, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (111, 55, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (56, 'B', 'B.23', 1, 0, 'Czy przestrzegana była tajność głosowania? (zarówno przez osoby obecne w lokalu, jak i przez samych wyborców)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (112, 56, 17, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (113, 56, 18, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (114, 56, 19, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (115, 56, 20, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (57, 'B', 'B.24', 1, 1, 'Czy w sytuacji braku tajności, komisja reagowała?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (116, 57, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (117, 57, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (58, 'B', 'B.25', 1, 1, 'Jeśli tajność nie była zachowana, to czy można przypuszczać, że ktoś systematycznie obserwował jak były oddawane głosy?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (118, 58, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (119, 58, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (59, 'B', 'B.26', 1, 0, 'Czy wszystkie karty do głosowania wydawane wyborcom, które zaobserwowałeś są prawidłowo opieczętowane?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (120, 59, 17, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (121, 59, 18, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (122, 59, 19, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (123, 59, 20, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (60, 'B', 'B.27', 1, 1, 'Czy urna jest prawidłowo zaplombowana?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (124, 60, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (125, 60, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (61, 'B', 'B.28', 1, 0, 'Jaki był rodzaj plomby użytej do zabezpieczenia urny', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (126, 61, 9, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (127, 61, 10, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (128, 61, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (129, 61, 12, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (62, 'B', 'B.29', 1, 1, 'Jeśli plomba jest oznaczona unikatowym numerem, czy został on wprowadzony do protokołu wewnętrznego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (130, 62, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (131, 62, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (63, 'B', 'B.30', 1, 1, 'Czy członek komisji pełni dyżur przy urnie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (132, 63, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (133, 63, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (64, 'B', 'B.31', 1, 1, 'Czy w trakcie obserwacji nastąpiło dopisanie wyborcy do spisu?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (134, 64, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (135, 64, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (65, 'B', 'B.32', 1, 1, 'Czy dopisanie wyborcy do spisu odbyło się zgodnie z procedurą?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (136, 65, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (137, 65, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (66, 'B', 'B.33', 1, 2, 'Jeśli tak to jaki był powód dopisania wyborcy? Jeśli nie to jakie były odstępstwa od procedury?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (138, 66, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (67, 'B', 'B.34', 1, 1, 'Czy zaobserwowałeś przypadki nieuprawnionego głosowania ‘za kogoś’ lub głosowania ‘rodzinnego’?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (139, 67, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (140, 67, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (68, 'B', 'B.35', 1, 2, 'Jeśli tak to jaka była reakcja członków OKW1?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (141, 68, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (69, 'B', 'B.36', 1, 1, 'Czy zaobserwowałeś przypadki próby wyniesienia karty do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (142, 69, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (143, 69, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (70, 'B', 'B.37', 1, 2, 'Jeśli tak to jaka była reakcja członków OKW1?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (144, 70, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (71, 'B', 'B.38', 1, 0, 'Czy głosujący wykonywali zdjęcia swoich kart ?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (145, 71, 17, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (146, 71, 18, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (147, 71, 19, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (148, 71, 20, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (72, 'B', 'B.39', 1, 1, 'Czy przestrzegana jest tajność głosowania ?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (149, 72, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (150, 72, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (73, 'B', 'B.40', 1, 2, 'Jeśli nie to czy można przypuszczać, że ktoś obserwował jak były oddawane głosy?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (151, 73, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (74, 'B', 'B.41', 1, 1, 'Czy były przerwy w głosowaniu?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (152, 74, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (153, 74, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (75, 'B', 'B.42', 1, 2, 'Jeśli tak to jakie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (154, 75, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (76, 'B', 'B.43', 1, 1, 'Czy w lokalu przebywały osoby nieuprawnione? (osoby nie będące wyborcami, obserwatorami, mężami zaufania i członkami komisji wyborczej)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (155, 76, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (156, 76, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (77, 'B', 'B.44', 1, 2, 'Jeśli tak – jakie to były osoby i czy zakłócały proces wyborczy? Czy komisja zareagowała? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (157, 77, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (78, 'B', 'B.45', 1, 1, 'Czy komisja pozwoliła ci obserwować proces głosowania bez problemów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (158, 78, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (159, 78, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (79, 'B', 'B.46', 1, 1, 'Czy wystąpiły inne problemy lub sytuacje mogące mieć wpływ na przebieg wyborów? Jeśli tak – opisz w dodatkowej notatce', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (160, 79, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (161, 79, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (80, 'B', 'B.47', 1, 2, 'Czas zakończenia obserwacji', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (162, 80, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (81, 'B', 'B.48', 1, 0, 'Jak oceniasz wiedzę OKW 1 odnośnie procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (163, 81, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (164, 81, 14, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (165, 81, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (166, 81, 16, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (82, 'B', 'B.49', 1, 0, 'Jak oceniasz pracę OKW 1:', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (167, 82, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (168, 82, 14, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (169, 82, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (170, 82, 16, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (83, 'B', 'B.50', 1, 0, 'Jak oceniasz przebieg całości procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (171, 83, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (172, 83, 14, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (173, 83, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (174, 83, 16, 1);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('C1', 1);
INSERT INTO FormSections (Id, Code, Description) VALUES (2, '2','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (84, 'C1', 'C1.01', 2, 2, 'Liczba wyborców w spisie OKW', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (175, 84, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (85, 'C1', 'C1.02', 2, 2, 'Liczba członków OKW1', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (176, 85, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (86, 'C1', 'C1.03', 2, 2, 'Liczba kobiet wśród członków komisji wyborczej (OKW 1)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (177, 86, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (87, 'C1', 'C1.04', 2, 2, 'Najniższa liczba obecnych członków OKW 1 (w czasie obserwacji)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (178, 87, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (88, 'C1', 'C1.05', 2, 2, 'Liczba członków OKW2', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (179, 88, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (89, 'C1', 'C1.06', 2, 2, 'Liczba kobiet wśród członków komisji wyborczej (OKW 2)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (180, 89, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (90, 'C1', 'C1.07', 2, 2, 'Najniższa liczba obecnych członków OKW 2 (w czasie obserwacji)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (181, 90, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (91, 'C1', 'C1.08', 2, 1, 'Czy komisja ma zapewnioną obsługę informatyczną?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (182, 91, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (183, 91, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (92, 'C1', 'C1.09', 2, 1, 'Czy lokal wyborczy został zamknięty o godz. 21.00?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (184, 92, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (185, 92, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (93, 'C1', 'C1.10', 2, 0, 'Jeśli nie to jakie było opóźnienie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (186, 93, 5, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (187, 93, 6, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (188, 93, 7, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (21, 0, 'x>1h', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (189, 93, 21, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (94, 'C1', 'C1.11', 2, 1, 'Czy wszyscy wyborcy znajdujący się w lokalu w momencie zamknięcia mogli oddać głos?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (190, 94, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (191, 94, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (95, 'C1', 'C1.12', 2, 1, 'Czy w momencie zamknięcia lokalu, obecna była wymagana liczba (minimum 2/3) członków OKW1 i OKW 2?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (192, 95, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (193, 95, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (96, 'C1', 'C1.13', 2, 1, 'Czy po zamknięciu lokalu  i opuszczeniu go przez wszystkich wyborców w OKW były osoby nieuprawnione? (osoby nie będące wyborcami, obserwatorami, mężami zaufania i członkami komisji wyborczej)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (194, 96, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (195, 96, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (97, 'C1', 'C1.14', 2, 2, 'Jeśli tak to jakie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (196, 97, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (98, 'C1', 'C1.15', 2, 1, 'Czy przewodniczący OKW1 razem z przewodniczącym OKW2 opieczętowali otwór urny wyborczej?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (197, 98, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (198, 98, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (99, 'C1', 'C1.16', 2, 1, 'Czy przewodniczący OKW1 w obecności wszystkich członków OKW1 i OKW2 przekazał przewodniczącemu OKW2 wszystkie wymagane materiały?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (199, 99, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (200, 99, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (100, 'C1', 'C1.17', 2, 1, 'Czy członkowie OKW1 w obecności członków OKW2 oraz przewodniczących OKW1 i OKW2 ustalili liczbę
Otrzymanych kart każdego rodzaju', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (201, 100, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (202, 100, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (101, 'C1', 'C1.18', 2, 1, 'Czy członkowie OKW1 i OKW2 ustalili liczbę:
niewykorzystanych kart do głosowania', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (203, 101, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (204, 101, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (102, 'C1', 'C1.19', 2, 1, 'Czy członkowie OKW1 i OKW2 ustalili liczbę:
aktów pełnomocnictwa', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (205, 102, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (206, 102, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (103, 'C1', 'C1.20', 2, 1, 'Czy członkowie OKW1 i OKW2 ustalili liczbę:
Wyborców korzystających z nakładek w alfabecie Braile’a', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (207, 103, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (208, 103, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (104, 'C1', 'C1.21', 2, 1, 'Czy wystąpiła różnica pomiędzy sumą kart wydanych wyborcom i kart niewykorzystanych a liczbą kart otrzymanych przez komisję', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (209, 104, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (210, 104, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (105, 'C1', 'C1.22', 2, 2, 'Jeśli tak to jakie było uzasadnienie komisji? Która liczba była większa (opisz sytuację)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (211, 105, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (106, 'C1', 'C1.23', 2, 1, 'Czy protokół przekazania był poprawiany?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (212, 106, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (213, 106, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (107, 'C1', 'C1.24', 2, 1, 'Czy protokół przekazania otrzymali wszyscy którzy o to poprosili?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (214, 107, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (215, 107, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (108, 'C1', 'C1.25', 2, 2, 'Jeśli nie, to jaki był podany powód odmowy i wobec kogo? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (216, 108, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (109, 'C1', 'C1.26', 2, 1, 'Czy członkowie OKW1 opuścili lokal wyborczy po podpisaniu protokołu przekazania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (217, 109, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (218, 109, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (110, 'C1', 'C1.27', 2, 2, 'Godzina opuszczenia lokalu przez członków OKW 1', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (219, 110, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (111, 'C1', 'C1.28', 2, 1, 'Czy wystąpiły inne problemy lub sytuacje mogące mieć wpływ na przebieg wyborów? Jeśli tak – opisz w dodatkowej notatce', '');
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (22, 1, 'tak', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (220, 111, 22, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (221, 111, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (112, 'C1', 'C1.29', 2, 0, 'Jak oceniasz wiedzę OKW 1 odnośnie procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (222, 112, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (223, 112, 14, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (224, 112, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (225, 112, 16, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (113, 'C1', 'C1.30', 2, 0, 'Jak oceniasz pracę OKW 1:', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (226, 113, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (227, 113, 14, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (228, 113, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (229, 113, 16, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (114, 'C1', 'C1.31', 2, 0, 'Jak oceniasz przebieg całości procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (230, 114, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (231, 114, 14, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (232, 114, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (233, 114, 16, 1);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('C2', 1);
INSERT INTO FormSections (Id, Code, Description) VALUES (3, '3','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (115, 'C2', 'C2.01', 3, 2, 'Rozpoczęcie pracy przez OKW2', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (234, 115, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (116, 'C2', 'C2.02', 3, 2, 'Najniższa liczba obecnych członków OKW 2 (w czasie obserwacji):', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (235, 116, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (117, 'C2', 'C2.03', 3, 1, 'Czy komisja ustaliła, na podstawie spisu wyborców, liczbę osób uprawnionych do głosowania (wraz z osobami dopisanymi do listy)?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (236, 117, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (237, 117, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (118, 'C2', 'C2.04', 3, 1, 'Czy komisja ustaliła liczbę wyborców, którym wydano karty do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (238, 118, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (239, 118, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (119, 'C2', 'C2.05', 3, 1, 'Czy członkowie OKW2 umieścili niewykorzystane karty do głosowania w opakowaniach zbiorczych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (240, 119, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (241, 119, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (120, 'C2', 'C2.06', 3, 1, 'Czy ustalona została liczba wydanych kart do głosowania (lista ‘A’ i ‘B’) {z uwzględnieniem różnic związanych z poszczególnymi wyborami!}?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (242, 120, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (243, 120, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (121, 'C2', 'C2.07', 3, 1, 'Czy ustalona została liczba wydanych kart do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (244, 121, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (245, 121, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (122, 'C2', 'C2.08', 3, 1, 'Czy liczby oddanych głosów i niewykorzystanych kart do głosowania zgadzają się z liczbą otrzymanych kart do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (246, 122, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (247, 122, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (123, 'C2', 'C2.09', 3, 2, 'Jeśli nie – jak duża była różnica i która liczba była większa? Czy komisja OKW 2 podała przyczynę? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (248, 123, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (124, 'C2', 'C2.10', 3, 1, 'Czy plomby na urnie oraz plomba otworu urny były w nienaruszonym stanie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (249, 124, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (250, 124, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (125, 'C2', 'C2.11', 3, 1, 'Czy w trakcie wyjmowania głosów z urny miały miejsce problemy?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (251, 125, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (252, 125, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (126, 'C2', 'C2.12', 3, 2, 'Jesli tak to jakie?  (np. naelektryzowana urna, karty wypadające na ziemie, inne)? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (253, 126, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (127, 'C2', 'C2.13', 3, 1, 'Czy komisja oddzieliła karty przedarte i zapakowała do oddzielnych opakowań?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (254, 127, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (255, 127, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (128, 'C2', 'C2.14', 3, 2, 'Ile było kart przedartych', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (256, 128, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (129, 'C2', 'C2.15', 3, 1, 'Czy policzone zostały na początku głosy oddane poprzez głosowanie korespondencyjne?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (257, 129, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (258, 129, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (130, 'C2', 'C2.16', 3, 1, 'Czy komisja rozdzieliła prawidłowo karty do głosowania w poszczególnych wyborach (rady, sejmiki, wójtowie, itp.) ?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (259, 130, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (260, 130, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (131, 'C2', 'C2.17', 3, 1, 'Czy komisja wydzieliła i policzyła karty nieważne? (dla każdego typu wyborów oddzielnie)?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (261, 131, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (262, 131, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (132, 'C2', 'C2.18', 3, 2, 'Ile było kart nieważnych dla poszczególnych typów wyborów? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (263, 132, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (133, 'C2', 'C2.19', 3, 2, 'Ile było kart bez pieczątki OKW?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (264, 133, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (134, 'C2', 'C2.20', 3, 1, 'Czy komisja policzyła karty ważne dla każdego typu wyborów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (265, 134, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (266, 134, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (135, 'C2', 'C2.21', 3, 1, 'Czy osoby mające ołówki lub długopisy dotykają kart wyborczych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (267, 135, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (268, 135, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (136, 'C2', 'C2.22', 3, 1, 'Czy członkowie komisji pracowali wspólnie w trakcie prowadzonej obserwacji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (269, 136, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (270, 136, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (137, 'C2', 'C2.23', 3, 2, 'Godzina zakończenia obserwacji', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (271, 137, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (138, 'C2', 'C2.24', 3, 1, 'Czy wystąpiły inne problemy lub sytuacje mogące mieć wpływ na przebieg wyborów? Jeśli tak – opisz w dodatkowej notatce', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (272, 138, 22, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (273, 138, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (139, 'C2', 'C2.25', 3, 0, 'Jak oceniasz wiedzę OKW 1 odnośnie procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (274, 139, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (275, 139, 14, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (276, 139, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (277, 139, 16, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (140, 'C2', 'C2.26', 3, 0, 'Jak oceniasz pracę OKW 1:', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (278, 140, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (279, 140, 14, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (280, 140, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (281, 140, 16, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (141, 'C2', 'C2.27', 3, 0, 'Jak oceniasz przebieg całości procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (282, 141, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (283, 141, 14, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (284, 141, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (285, 141, 16, 1);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('C3', 1);
INSERT INTO FormSections (Id, Code, Description) VALUES (4, '4','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (142, 'C3', 'C3.01', 4, 2, 'Czas rozpoczęcia liczenia głosów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (286, 142, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (143, 'C3', 'C3.02', 4, 2, 'Czas zakończenia liczenia głosów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (287, 143, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (144, 'C3', 'C3.03', 4, 1, 'Czy na czas liczenia głosów, karty do głosowania w pozostałych wyborach pozostawały zapakowane, opieczętowane i odłożone w miejsce widoczne dla komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (288, 144, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (289, 144, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (145, 'C3', 'C3.04', 4, 1, 'Czy komisja ustaliła liczbę głosów ważnych i nieważnych oddanych w danych wyborach?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (290, 145, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (291, 145, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (146, 'C3', 'C3.05', 4, 1, 'Czy komisja posegregowała i zapakowała głosy nieważne wg. przyczyny ich nieważności?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (292, 146, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (293, 146, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (147, 'C3', 'C3.06', 4, 1, 'Czy o ważności głosu decydowali wszyscy obecni członkowie komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (294, 147, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (295, 147, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (148, 'C3', 'C3.07', 4, 0, 'Czy komisja miała problem z ustaleniem ważności głosów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (296, 148, 17, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (297, 148, 18, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (298, 148, 19, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (299, 148, 20, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (149, 'C3', 'C3.08', 4, 2, 'Ile w przybliżeniu kart zawierało rysunki i dopiski na karcie do głosowania (poza kratką)?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (300, 149, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (150, 'C3', 'C3.09', 4, 2, 'Ile w przybliżeniu kart zawierało rysunki i dopiski na karcie w obrębie kartki?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (301, 150, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (151, 'C3', 'C3.10', 4, 2, 'Ile było przypadków głosów zaczernionych które zostały uznane za ważne?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (302, 151, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (152, 'C3', 'C3.11', 4, 2, 'Ile było przypadków głosów zaczernionych, w  których zaczerniona kratka dotyczyła innego komitetu wyborczego niż głos oddany ponownie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (303, 152, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (153, 'C3', 'C3.12', 4, 2, 'Ile było przypadków głosów z zaczernioną kratką, w których zaczerniona kratka dotyczyła innego kandydata w obrębie tej samej listy co głos oddany ponownie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (304, 153, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (154, 'C3', 'C3.13', 4, 1, 'Czy komisja porównała liczbę policzonych głosów ważnych i nieważnych z ilością kart ważnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (305, 154, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (306, 154, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (155, 'C3', 'C3.14', 4, 1, 'Czy jeśli liczba się nie zgadzała komisja znalazła przyczynę i skorygowała błąd?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (307, 155, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (308, 155, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (156, 'C3', 'C3.15', 4, 1, 'Czy komisja ustaliła: Liczbę głosów oddanych na poszczególne listy', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (309, 156, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (310, 156, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (157, 'C3', 'C3.16', 4, 1, 'Czy komisja ustaliła: Liczbę głosów oddanych na poszczególnych kandydatów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (311, 157, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (312, 157, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (158, 'C3', 'C3.17', 4, 1, 'Czy były problemy z wypełnieniem projektu protokołu danych wyborów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (313, 158, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (314, 158, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (159, 'C3', 'C3.18', 4, 2, 'Jeśli tak to jakie problemy?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (315, 159, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (160, 'C3', 'C3.19', 4, 1, 'Czy komisja zarządziła przerwę w liczeniu głosów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (316, 160, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (317, 160, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (161, 'C3', 'C3.20', 4, 1, 'Czy w trakcie ewentualnej przerwy materiały wyborcze były zabezpieczone i widoczne dla członków komisji, mężów zaufania i obserwatorów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (318, 161, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (319, 161, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (162, 'C3', 'C3.21', 4, 2, 'Jeśli nie to prosimy o komentarz', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (320, 162, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (163, 'C3', 'C3.22', 4, 1, 'Czy komisja pracowała razem w trakcie obserwacji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (321, 163, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (322, 163, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (164, 'C3', 'C3.23', 4, 1, 'Czy wystąpiły inne problemy lub sytuacje mogące mieć wpływ na przebieg wyborów? Jeśli tak – opisz w dodatkowej notatce', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (323, 164, 22, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (324, 164, 2, 0);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('D', 1);
INSERT INTO FormSections (Id, Code, Description) VALUES (5, '5','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (165, 'D', 'D.01', 5, 2, 'Czas rozpoczęcia wprowadzania projektów protokołów do systemu sprawdzania poprawności liczenia', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (325, 165, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (166, 'D', 'D.02', 5, 2, 'Czas publicznego wywieszenia protokołu', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (326, 166, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (167, 'D', 'D.03', 5, 1, 'Czy aplikacja ‘Protokoły Obwodowe’ wykazała błędy po wprowadzeniu danych z protokołów wstępnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (327, 167, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (328, 167, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (168, 'D', 'D.04', 5, 2, 'Jeśli tak, to jakiego typu i w jakich wyborach? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (329, 168, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (169, 'D', 'D.05', 5, 1, 'Czy wszyscy obecni członkowie komisji podpisali i ostemplowali wydruk wykazanych błędów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (330, 169, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (331, 169, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (170, 'D', 'D.06', 5, 1, 'Czy komisja skorygowała wykazane błędy?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (332, 170, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (333, 170, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (171, 'D', 'D.07', 5, 1, 'Czy aplikacja ‘Protokoły Obwodowe’ pokazała ostrzeżenia po wprowadzeniu danych z protokołów wstępnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (334, 171, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (335, 171, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (172, 'D', 'D.08', 5, 2, 'Jeśli tak, to jakiego typu? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (336, 172, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (173, 'D', 'D.09', 5, 1, 'Czy wszyscy obecni członkowie komisji podpisali i ostemplowali wydruk wykazanych ostrzeżeń', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (337, 173, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (338, 173, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (174, 'D', 'D.10', 5, 1, 'Czy komisja skorygowała błędy będące podstawą ostrzeżeń?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (339, 174, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (340, 174, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (175, 'D', 'D.11', 5, 1, 'Czy komisja wydrukowała wszystkie protokoły z aplikacji ‘Protokoły Obwodowe’', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (341, 175, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (342, 175, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (176, 'D', 'D.12', 5, 1, 'Czy do któregoś z protokołów zostały wprowadzone zmiany, które spowodowały konieczność jego ponownego wydrukowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (343, 176, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (344, 176, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (177, 'D', 'D.13', 5, 2, 'Jeśli tak, to jakiego typu były to zmiany i w którym protokole? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (345, 177, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (178, 'D', 'D.14', 5, 1, 'Czy wszyscy obecni członkowie komisji podpisali wydrukowane protokoły finalne?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (346, 178, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (347, 178, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (179, 'D', 'D.15', 5, 1, 'Czy dane z podpisanych protokołów finalnych zostały wprowadzone do systemu elektronicznego Wsparcie Organów Wyborczych (WOW)? {o ile komisja miała obsługę informatyczną}', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (348, 179, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (349, 179, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (180, 'D', 'D.16', 5, 1, 'Czy każdy obserwator społeczny/mąż zaufania, który o to poprosił, otrzymał kopię protokołu ?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (350, 180, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (351, 180, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (181, 'D', 'D.17', 5, 1, 'Czy komisja wywiesiła protokół wyników?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (352, 181, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (353, 181, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (182, 'D', 'D.18', 5, 1, 'Czy protokół został wywieszony w dostępnym i widocznym miejscu?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (354, 182, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (355, 182, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (183, 'D', 'D.19', 5, 0, 'Jak oceniasz wiedzę OKW 2 odnośnie procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (356, 183, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (357, 183, 14, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (358, 183, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (359, 183, 16, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (184, 'D', 'D.20', 5, 0, 'Jak oceniasz pracę OKW 2:', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (360, 184, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (361, 184, 14, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (362, 184, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (363, 184, 16, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (185, 'D', 'D.21', 5, 0, 'Jak oceniasz przebieg całości procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (364, 185, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (365, 185, 14, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (366, 185, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (367, 185, 16, 1);
