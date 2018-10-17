DELETE FROM FormVersions;
DELETE FROM Answers;
DELETE FROM OptionsToQuestions;
DELETE FROM Notes;
DELETE FROM PollingStationInfos;
DELETE FROM Questions;
DELETE FROM Options;
DELETE FROM FormSections;
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (0, 1, 'Kliknij i wpisz', null);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('A', 12.0);
INSERT INTO FormSections (Id, Code, Description) VALUES (0, '0','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (1, 'A', 'A.01', 0, 2, 'Liczba wyborców w spisie OKW', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (0, 1, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (2, 'A', 'A.02', 0, 2, 'Liczba członków OKW1', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (1, 2, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (3, 'A', 'A.03', 0, 2, 'Liczba kobiet w składzie komisji', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (2, 3, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (4, 'A', 'A.04', 0, 2, 'Najniższa liczba obecnych członków OKW 1 w trakcie obserwacji', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (3, 4, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (5, 'A', 'A.05', 0, 1, 'Czy zawsze obecny był Przewodniczący lub Z-ca Przewodniczącego Komisji?', '');
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (1, 0, 'tak', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (4, 5, 1, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (2, 0, 'nie', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (5, 5, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (6, 'A', 'A.06', 0, 1, 'Czy na otwarcie komisja wyborcza stawiła się do godziny 6 rano? (jeśli byłeś obecny przed lokalem o 6:00)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (6, 6, 1, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (3, 0, 'nie wiem', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (7, 6, 3, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (8, 6, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (7, 'A', 'A.07', 0, 1, 'Jeśli komisja nie stawiła się do godziny 6 rano, jakie było opóźnienie?', '');
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (4, 0, '1-15 min', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (9, 7, 4, 1);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (5, 0, '16-30', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (10, 7, 5, 1);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (6, 0, '30-1h', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (11, 7, 6, 1);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (7, 0, 'opóźnienie > 1h', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (12, 7, 7, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (8, 'A', 'A.08', 0, 1, 'Czy komisja sprawdziła, że w lokalu znajduje się właściwy spis wyborców?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (13, 8, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (14, 8, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (9, 'A', 'A.09', 0, 1, 'Czy komisja przeliczyła karty do głosowania, które otrzymała?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (15, 9, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (16, 9, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (10, 'A', 'A.10', 0, 1, 'Czy komisja ostemplowała wszystkie karty do głosowania przed otwarciem lokalu wyborczego lub zaraz po otwarciu?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (17, 10, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (18, 10, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (11, 'A', 'A.11', 0, 1, 'Czy komisja sprawdziła, że urna jest pusta, a następnie zamknęła ją/je i zaplombowała/opieczętowała pieczęcią komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (19, 11, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (20, 11, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (12, 'A', 'A.12', 0, 0, 'Jaki był rodzaj plomby użytej do zabezpieczenia urny?', '');
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (8, 0, 'naklejka foliowa', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (21, 12, 8, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (9, 0, 'opaska samozaciskowa', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (22, 12, 9, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (10, 0, 'opieczętowany i podpisany pasek papieru', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (23, 12, 10, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (11, 1, 'inne', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (24, 12, 11, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (13, 'A', 'A.13', 0, 1, 'Jeśli plomba była oznaczona unikatowym numerem, czy został on wprowadzony do protokołu wewnętrznego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (25, 13, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (26, 13, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (14, 'A', 'A.14', 0, 1, 'Czy komisja sprawdziła przed rozpoczęciem głosowania czy w lokalu i na zewnątrz nie ma żadnych materiałów agitacyjnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (27, 14, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (28, 14, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (15, 'A', 'A.15', 0, 1, 'Czy karty do głosowania znajdujące się w lokalu są właściwie zabezpieczone i  nie mają do nich dostępu osoby postronne?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (29, 15, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (30, 15, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (16, 'A', 'A.16', 0, 1, 'Czy komisja realizuje procedury związane z otwarciem lokalu wyborczego ze zrozumieniem, a członkowie komisji wiedzą jakie czynności mają wykonywać?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (31, 16, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (32, 16, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (17, 'A', 'A.17', 0, 1, 'Czy komisja otworzyła lokal wyborczy dla wyborców o godz. 7.00?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (33, 17, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (34, 17, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (18, 'A', 'A.18', 0, 1, 'Jeśli nie, jakie było opóźnienie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (35, 18, 4, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (36, 18, 5, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (37, 18, 6, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (38, 18, 7, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (19, 'A', 'A.19', 0, 1, 'Czy komisja pozwoliła obserwować procedury przygotowania lokalu wyborczego do głosowania bez problemów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (39, 19, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (40, 19, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (20, 'A', 'A.20', 0, 1, 'Czy umożliwiono obserwatorom  nagrywanie/robienie zdjęć w trakcie przygotowania lokalu wyborczego do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (41, 20, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (42, 20, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (21, 'A', 'A.21', 0, 1, 'Czy w OKW byli obecni inni obserwatorzy lub mężowie zaufania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (43, 21, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (44, 21, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (22, 'A', 'A.22', 0, 2, 'Jeśli tak, z jakich organizacji/komitetów wyborczych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (45, 22, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (23, 'A', 'A.23', 0, 1, 'Czy lokal był na liście dostosowanych dla os. niepełnosprawnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (46, 23, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (47, 23, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (24, 'A', 'A.24', 0, 1, 'Czy lokal spełniał wymogi dostosowania dla os. niepełnosprawnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (48, 24, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (49, 24, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (25, 'A', 'A.25', 0, 1, 'Czy w lokalu wyborczym lub na terenie, na którym się on znajduje była prowadzona agitacja wyborcza?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (50, 25, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (51, 25, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (26, 'A', 'A.26', 0, 2, 'Jeśli tak, jakie były jej formy? (wymień)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (52, 26, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (27, 'A', 'A.27', 0, 1, 'Czy komisja wyborcza zareagowała odpowiednio na przejawy prowadzonej kampanii?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (53, 27, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (54, 27, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (28, 'A', 'A.28', 0, 1, 'Czy w lokalu przebywały osoby nieupoważnione? (osoby nie będące wyborcami, obserwatorami, mężami zaufania i członkami komisji wyborczej)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (55, 28, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (56, 28, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (29, 'A', 'A.29', 0, 2, 'Jeśli tak – co to były za osoby i czy zakłócały pracę komisji? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (57, 29, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (30, 'A', 'A.30', 0, 1, 'Czy wystąpiły inne problemy lub sytuacje mogące mieć wpływ na przebieg wyborów? Jeśli tak – opisz w dodatkowej notatce', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (58, 30, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (59, 30, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (31, 'A', 'A.31', 0, 2, 'Czas zakończenia obserwacji', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (60, 31, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (32, 'A', 'A.32', 0, 0, 'Jak oceniasz wiedzę OKW 1 odnośnie procesu wyborczego?', '');
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (12, 0, 'bardzo dobra', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (61, 32, 12, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (13, 0, 'dobra', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (62, 32, 13, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (14, 0, 'zła', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (63, 32, 14, 1);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (15, 0, 'bardzo zła', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (64, 32, 15, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (33, 'A', 'A.33', 0, 0, 'Jak oceniasz pracę OKW 1:', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (65, 33, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (66, 33, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (67, 33, 14, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (68, 33, 15, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (34, 'A', 'A.34', 0, 0, 'Jak oceniasz przebieg całości procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (69, 34, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (70, 34, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (71, 34, 14, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (72, 34, 15, 1);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('B', 12.0);
INSERT INTO FormSections (Id, Code, Description) VALUES (1, '1','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (35, 'B', 'B.01', 1, 2, 'Liczba wyborców w spisie OKW', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (73, 35, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (36, 'B', 'B.02', 1, 2, 'Liczba członków OKW1', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (74, 36, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (37, 'B', 'B.03', 1, 2, 'Liczba kobiet w składzie komisji OKW1', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (75, 37, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (38, 'B', 'B.04', 1, 2, 'Najniższa liczba obecnych członków OKW 1 (w czasie obserwacji)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (76, 38, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (39, 'B', 'B.05', 1, 1, 'Czy zawsze obecny był przewodniczący lub z-ca przewodniczącego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (77, 39, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (78, 39, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (40, 'B', 'B.06', 1, 2, 'Liczba wyborców, która zagłosowała w trakcie obserwacji', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (79, 40, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (41, 'B', 'B.07', 1, 2, 'Liczba wyborców, która zagłosowała do momentu przybycia do lokalu wyb. (zapytać komisję)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (80, 41, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (42, 'B', 'B.08', 1, 1, 'Czy komisja jest prawidłowo oznaczona - na zewnątrz lokalu wyborczego, jak i wewnątrz?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (81, 42, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (82, 42, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (43, 'B', 'B.09', 1, 1, 'Czy w danym lokalu znajduje się tylko jedna OKW?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (83, 43, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (84, 43, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (44, 'B', 'B.10', 1, 1, 'Czy lokal był na liście dostosowanych dla os. niepełnosprawnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (85, 44, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (86, 44, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (45, 'B', 'B.11', 1, 1, 'Czy lokal spełnia wymogi dostosowania dla os. niepełnosprawnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (87, 45, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (88, 45, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (46, 'B', 'B.12', 1, 1, 'Czy w lokalu wyborczym lub terenie, na którym się on znajduje była prowadzona agitacja wyborcza?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (89, 46, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (90, 46, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (47, 'B', 'B.13', 1, 2, 'Jakie były jej formy? (wymień)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (91, 47, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (48, 'B', 'B.14', 1, 1, 'Czy w OKW byli obecni inni obserwatorzy lub mężowie zaufania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (92, 48, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (93, 48, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (49, 'B', 'B.15', 1, 2, 'Jeśli tak to z jakich organizacji / komitetów wyborczych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (94, 49, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (50, 'B', 'B.16', 1, 1, 'Czy w lokalu wyborczym znajdują się wymagane obwieszczenia i informacje dla wyborców o technice i zasadach głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (95, 50, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (96, 50, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (51, 'B', 'B.17', 1, 0, 'Czy członkowie OKW1 sprawdzają dokument tożsamości zawierający zdjęcie głosujących?', '');
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (16, 0, 'zawsze lub prawie zawsze', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (97, 51, 16, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (17, 0, 'często', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (98, 51, 17, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (18, 0, 'czasami', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (99, 51, 18, 1);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (19, 0, 'nigdy lub prawie nigdy', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (100, 51, 19, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (52, 'B', 'B.18', 1, 0, 'Czy członkowie komisji  korzystali z osłon na dane osobowe?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (101, 52, 16, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (102, 52, 17, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (103, 52, 18, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (104, 52, 19, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (53, 'B', 'B.19', 1, 2, 'Ilu wyborców w przybliżeniu ( w trakcie prowadzonej obserwacji) poprosiło o zaświadczenie potwierdzające udział w głosowaniu w trakcie prowadzonej obserwacji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (105, 53, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (54, 'B', 'B.20', 1, 1, 'Czy głosującym wydawana jest wymagana liczba kart do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (106, 54, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (107, 54, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (55, 'B', 'B.21', 1, 1, 'Czy w lokalu wyborczym znajduje się wystarczająca liczba miejsc zapewniających tajność głosowania? (ich liczba powinna pozwolić na głosowanie bez ‘zbytnich’ kolejek)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (108, 55, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (109, 55, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (56, 'B', 'B.22', 1, 1, 'Czy w miejscach zapewniających tajność głosowania jest wystarczająco dużo światła, aby można było oddać głos?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (110, 56, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (111, 56, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (57, 'B', 'B.23', 1, 0, 'Czy przestrzegana była tajność głosowania? (zarówno przez osoby obecne w lokalu, jak i przez samych wyborców)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (112, 57, 16, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (113, 57, 17, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (114, 57, 18, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (115, 57, 19, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (58, 'B', 'B.24', 1, 1, 'Czy w sytuacji braku tajności, komisja reagowała?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (116, 58, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (117, 58, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (59, 'B', 'B.25', 1, 1, 'Jeśli tajność nie była zachowana, to czy można przypuszczać, że ktoś systematycznie obserwował jak były oddawane głosy?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (118, 59, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (119, 59, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (60, 'B', 'B.26', 1, 0, 'Czy wszystkie karty do głosowania wydawane wyborcom, które zaobserwowałeś są prawidłowo opieczętowane?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (120, 60, 16, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (121, 60, 17, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (122, 60, 18, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (123, 60, 19, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (61, 'B', 'B.27', 1, 1, 'Czy urna jest prawidłowo zaplombowana?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (124, 61, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (125, 61, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (62, 'B', 'B.28', 1, 0, 'Jaki był rodzaj plomby użytej do zabezpieczenia urny', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (126, 62, 8, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (127, 62, 9, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (128, 62, 10, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (129, 62, 11, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (63, 'B', 'B.29', 1, 1, 'Jeśli plomba jest oznaczona unikatowym numerem, czy został on wprowadzony do protokołu wewnętrznego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (130, 63, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (131, 63, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (64, 'B', 'B.30', 1, 1, 'Czy członek komisji pełni dyżur przy urnie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (132, 64, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (133, 64, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (65, 'B', 'B.31', 1, 1, 'Czy w trakcie obserwacji nastąpiło dopisanie wyborcy do spisu?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (134, 65, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (135, 65, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (66, 'B', 'B.32', 1, 1, 'Czy dopisanie wyborcy do spisu odbyło się zgodnie z procedurą?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (136, 66, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (137, 66, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (67, 'B', 'B.33', 1, 2, 'Jeśli tak to jaki był powód dopisania wyborcy? Jeśli nie to jakie były odstępstwa od procedury?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (138, 67, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (68, 'B', 'B.34', 1, 1, 'Czy zaobserwowałeś przypadki nieuprawnionego głosowania ‘za kogoś’ lub głosowania ‘rodzinnego’?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (139, 68, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (140, 68, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (69, 'B', 'B.35', 1, 2, 'Jeśli tak to jaka była reakcja członków OKW1?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (141, 69, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (70, 'B', 'B.36', 1, 1, 'Czy zaobserwowałeś przypadki próby wyniesienia karty do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (142, 70, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (143, 70, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (71, 'B', 'B.37', 1, 2, 'Jeśli tak to jaka była reakcja członków OKW1?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (144, 71, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (72, 'B', 'B.38', 1, 0, 'Czy głosujący wykonywali zdjęcia swoich kart ?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (145, 72, 16, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (146, 72, 17, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (147, 72, 18, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (148, 72, 19, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (73, 'B', 'B.39', 1, 1, 'Czy przestrzegana jest tajność głosowania ?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (149, 73, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (150, 73, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (74, 'B', 'B.40', 1, 2, 'Jeśli nie to czy można przypuszczać, że ktoś obserwował jak były oddawane głosy?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (151, 74, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (75, 'B', 'B.41', 1, 1, 'Czy były przerwy w głosowaniu?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (152, 75, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (153, 75, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (76, 'B', 'B.42', 1, 2, 'Jeśli tak to jakie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (154, 76, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (77, 'B', 'B.43', 1, 1, 'Czy w lokalu przebywały osoby nieuprawnione? (osoby nie będące wyborcami, obserwatorami, mężami zaufania i członkami komisji wyborczej)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (155, 77, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (156, 77, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (78, 'B', 'B.44', 1, 2, 'Jeśli tak – jakie to były osoby i czy zakłócały proces wyborczy? Czy komisja zareagowała? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (157, 78, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (79, 'B', 'B.45', 1, 1, 'Czy komisja pozwoliła ci obserwować proces głosowania bez problemów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (158, 79, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (159, 79, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (80, 'B', 'B.46', 1, 1, 'Czy wystąpiły inne problemy lub sytuacje mogące mieć wpływ na przebieg wyborów? Jeśli tak – opisz w dodatkowej notatce', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (160, 80, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (161, 80, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (81, 'B', 'B.47', 1, 2, 'Czas zakończenia obserwacji', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (162, 81, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (82, 'B', 'B.48', 1, 0, 'Jak oceniasz wiedzę OKW 1 odnośnie procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (163, 82, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (164, 82, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (165, 82, 14, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (166, 82, 15, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (83, 'B', 'B.49', 1, 0, 'Jak oceniasz pracę OKW 1:', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (167, 83, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (168, 83, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (169, 83, 14, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (170, 83, 15, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (84, 'B', 'B.50', 1, 0, 'Jak oceniasz przebieg całości procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (171, 84, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (172, 84, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (173, 84, 14, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (174, 84, 15, 1);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('C1', 12.0);
INSERT INTO FormSections (Id, Code, Description) VALUES (2, '2','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (85, 'C1', 'C1.01', 2, 2, 'Liczba wyborców w spisie OKW', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (175, 85, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (86, 'C1', 'C1.02', 2, 2, 'Liczba członków OKW1', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (176, 86, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (87, 'C1', 'C1.03', 2, 2, 'Liczba kobiet wśród członków komisji wyborczej (OKW 1)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (177, 87, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (88, 'C1', 'C1.04', 2, 2, 'Najniższa liczba obecnych członków OKW 1 (w czasie obserwacji)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (178, 88, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (89, 'C1', 'C1.05', 2, 2, 'Liczba członków OKW2', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (179, 89, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (90, 'C1', 'C1.06', 2, 2, 'Liczba kobiet wśród członków komisji wyborczej (OKW 2)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (180, 90, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (91, 'C1', 'C1.07', 2, 2, 'Najniższa liczba obecnych członków OKW 2 (w czasie obserwacji)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (181, 91, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (92, 'C1', 'C1.08', 2, 1, 'Czy komisja ma zapewnioną obsługę informatyczną?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (182, 92, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (183, 92, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (93, 'C1', 'C1.09', 2, 1, 'Czy lokal wyborczy został zamknięty o godz. 21.00?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (184, 93, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (185, 93, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (94, 'C1', 'C1.10', 2, 0, 'Jeśli nie to jakie było opóźnienie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (186, 94, 4, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (187, 94, 5, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (188, 94, 6, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (20, 0, 'x>1h', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (189, 94, 20, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (95, 'C1', 'C1.11', 2, 1, 'Czy wszyscy wyborcy znajdujący się w lokalu w momencie zamknięcia mogli oddać głos?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (190, 95, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (191, 95, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (96, 'C1', 'C1.12', 2, 1, 'Czy w momencie zamknięcia lokalu, obecna była wymagana liczba (minimum 2/3) członków OKW1 i OKW 2?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (192, 96, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (193, 96, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (97, 'C1', 'C1.13', 2, 1, 'Czy po zamknięciu lokalu  i opuszczeniu go przez wszystkich wyborców w OKW były osoby nieuprawnione? (osoby nie będące wyborcami, obserwatorami, mężami zaufania i członkami komisji wyborczej)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (194, 97, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (195, 97, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (98, 'C1', 'C1.14', 2, 2, 'Jeśli tak to jakie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (196, 98, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (99, 'C1', 'C1.15', 2, 1, 'Czy przewodniczący OKW1 razem z przewodniczącym OKW2 opieczętowali otwór urny wyborczej?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (197, 99, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (198, 99, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (100, 'C1', 'C1.16', 2, 1, 'Czy przewodniczący OKW1 w obecności wszystkich członków OKW1 i OKW2 przekazał przewodniczącemu OKW2 wszystkie wymagane materiały?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (199, 100, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (200, 100, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (101, 'C1', 'C1.17', 2, 1, 'Czy członkowie OKW1 w obecności członków OKW2 oraz przewodniczących OKW1 i OKW2 ustalili liczbę
Otrzymanych kart każdego rodzaju', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (201, 101, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (202, 101, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (102, 'C1', 'C1.18', 2, 1, 'Czy członkowie OKW1 i OKW2 ustalili liczbę:
niewykorzystanych kart do głosowania', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (203, 102, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (204, 102, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (103, 'C1', 'C1.19', 2, 1, 'Czy członkowie OKW1 i OKW2 ustalili liczbę:
aktów pełnomocnictwa', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (205, 103, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (206, 103, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (104, 'C1', 'C1.20', 2, 1, 'Czy członkowie OKW1 i OKW2 ustalili liczbę:
Wyborców korzystających z nakładek w alfabecie Braile’a', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (207, 104, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (208, 104, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (105, 'C1', 'C1.21', 2, 1, 'Czy wystąpiła różnica pomiędzy sumą kart wydanych wyborcom i kart niewykorzystanych a liczbą kart otrzymanych przez komisję', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (209, 105, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (210, 105, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (106, 'C1', 'C1.22', 2, 2, 'Jeśli tak to jakie było uzasadnienie komisji? Która liczba była większa (opisz sytuację)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (211, 106, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (107, 'C1', 'C1.23', 2, 1, 'Czy protokół przekazania był poprawiany?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (212, 107, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (213, 107, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (108, 'C1', 'C1.24', 2, 1, 'Czy protokół przekazania otrzymali wszyscy którzy o to poprosili?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (214, 108, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (215, 108, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (109, 'C1', 'C1.25', 2, 2, 'Jeśli nie, to jaki był podany powód odmowy i wobec kogo? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (216, 109, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (110, 'C1', 'C1.26', 2, 1, 'Czy członkowie OKW1 opuścili lokal wyborczy po podpisaniu protokołu przekazania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (217, 110, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (218, 110, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (111, 'C1', 'C1.27', 2, 2, 'Godzina opuszczenia lokalu przez członków OKW 1', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (219, 111, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (112, 'C1', 'C1.28', 2, 1, 'Czy wystąpiły inne problemy lub sytuacje mogące mieć wpływ na przebieg wyborów? Jeśli tak – opisz w dodatkowej notatce', '');
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (21, 1, 'tak', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (220, 112, 21, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (221, 112, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (113, 'C1', 'C1.29', 2, 0, 'Jak oceniasz wiedzę OKW 1 odnośnie procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (222, 113, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (223, 113, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (224, 113, 14, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (225, 113, 15, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (114, 'C1', 'C1.30', 2, 0, 'Jak oceniasz pracę OKW 1:', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (226, 114, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (227, 114, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (228, 114, 14, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (229, 114, 15, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (115, 'C1', 'C1.31', 2, 0, 'Jak oceniasz przebieg całości procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (230, 115, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (231, 115, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (232, 115, 14, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (233, 115, 15, 1);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('C2', 12.0);
INSERT INTO FormSections (Id, Code, Description) VALUES (3, '3','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (116, 'C2', 'C2.01', 3, 2, 'Rozpoczęcie pracy przez OKW2', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (234, 116, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (117, 'C2', 'C2.02', 3, 2, 'Najniższa liczba obecnych członków OKW 2 (w czasie obserwacji):', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (235, 117, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (118, 'C2', 'C2.03', 3, 1, 'Czy komisja ustaliła, na podstawie spisu wyborców, liczbę osób uprawnionych do głosowania (wraz z osobami dopisanymi do listy)?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (236, 118, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (237, 118, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (119, 'C2', 'C2.04', 3, 1, 'Czy komisja ustaliła liczbę wyborców, którym wydano karty do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (238, 119, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (239, 119, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (120, 'C2', 'C2.05', 3, 1, 'Czy członkowie OKW2 umieścili niewykorzystane karty do głosowania w opakowaniach zbiorczych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (240, 120, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (241, 120, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (121, 'C2', 'C2.06', 3, 1, 'Czy ustalona została liczba wydanych kart do głosowania (lista ‘A’ i ‘B’) {z uwzględnieniem różnic związanych z poszczególnymi wyborami!}?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (242, 121, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (243, 121, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (122, 'C2', 'C2.07', 3, 1, 'Czy ustalona została liczba wydanych kart do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (244, 122, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (245, 122, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (123, 'C2', 'C2.08', 3, 1, 'Czy liczby oddanych głosów i niewykorzystanych kart do głosowania zgadzają się z liczbą otrzymanych kart do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (246, 123, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (247, 123, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (124, 'C2', 'C2.09', 3, 2, 'Jeśli nie – jak duża była różnica i która liczba była większa? Czy komisja OKW 2 podała przyczynę? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (248, 124, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (125, 'C2', 'C2.10', 3, 1, 'Czy plomby na urnie oraz plomba otworu urny były w nienaruszonym stanie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (249, 125, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (250, 125, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (126, 'C2', 'C2.11', 3, 1, 'Czy w trakcie wyjmowania głosów z urny miały miejsce problemy?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (251, 126, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (252, 126, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (127, 'C2', 'C2.12', 3, 2, 'Jesli tak to jakie?  (np. naelektryzowana urna, karty wypadające na ziemie, inne)? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (253, 127, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (128, 'C2', 'C2.13', 3, 1, 'Czy komisja oddzieliła karty przedarte i zapakowała do oddzielnych opakowań?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (254, 128, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (255, 128, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (129, 'C2', 'C2.14', 3, 2, 'Ile było kart przedartych', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (256, 129, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (130, 'C2', 'C2.15', 3, 1, 'Czy policzone zostały na początku głosy oddane poprzez głosowanie korespondencyjne?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (257, 130, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (258, 130, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (131, 'C2', 'C2.16', 3, 1, 'Czy komisja rozdzieliła prawidłowo karty do głosowania w poszczególnych wyborach (rady, sejmiki, wójtowie, itp.) ?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (259, 131, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (260, 131, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (132, 'C2', 'C2.17', 3, 1, 'Czy komisja wydzieliła i policzyła karty nieważne? (dla każdego typu wyborów oddzielnie)?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (261, 132, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (262, 132, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (133, 'C2', 'C2.18', 3, 2, 'Ile było kart nieważnych dla poszczególnych typów wyborów? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (263, 133, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (134, 'C2', 'C2.19', 3, 2, 'Ile było kart bez pieczątki OKW?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (264, 134, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (135, 'C2', 'C2.20', 3, 1, 'Czy komisja policzyła karty ważne dla każdego typu wyborów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (265, 135, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (266, 135, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (136, 'C2', 'C2.21', 3, 1, 'Czy osoby mające ołówki lub długopisy dotykają kart wyborczych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (267, 136, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (268, 136, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (137, 'C2', 'C2.22', 3, 1, 'Czy członkowie komisji pracowali wspólnie w trakcie prowadzonej obserwacji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (269, 137, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (270, 137, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (138, 'C2', 'C2.23', 3, 2, 'Godzina zakończenia obserwacji', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (271, 138, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (139, 'C2', 'C2.24', 3, 1, 'Czy wystąpiły inne problemy lub sytuacje mogące mieć wpływ na przebieg wyborów? Jeśli tak – opisz w dodatkowej notatce', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (272, 139, 21, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (273, 139, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (140, 'C2', 'C2.25', 3, 0, 'Jak oceniasz wiedzę OKW 1 odnośnie procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (274, 140, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (275, 140, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (276, 140, 14, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (277, 140, 15, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (141, 'C2', 'C2.26', 3, 0, 'Jak oceniasz pracę OKW 1:', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (278, 141, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (279, 141, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (280, 141, 14, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (281, 141, 15, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (142, 'C2', 'C2.27', 3, 0, 'Jak oceniasz przebieg całości procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (282, 142, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (283, 142, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (284, 142, 14, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (285, 142, 15, 1);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('Cg', 12.0);
INSERT INTO FormSections (Id, Code, Description) VALUES (4, '4','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (143, 'Cg', 'Cg.01', 4, 2, 'Czas rozpoczęcia liczenia głosów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (286, 143, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (144, 'Cg', 'Cg.02', 4, 2, 'Czas zakończenia liczenia głosów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (287, 144, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (145, 'Cg', 'Cg.03', 4, 1, 'Czy na czas liczenia głosów, karty do głosowania w pozostałych wyborach pozostawały zapakowane, opieczętowane i odłożone w miejsce widoczne dla komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (288, 145, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (289, 145, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (146, 'Cg', 'Cg.04', 4, 1, 'Czy komisja ustaliła liczbę głosów ważnych i nieważnych oddanych w danych wyborach?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (290, 146, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (291, 146, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (147, 'Cg', 'Cg.05', 4, 1, 'Czy komisja posegregowała i zapakowała głosy nieważne wg. przyczyny ich nieważności?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (292, 147, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (293, 147, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (148, 'Cg', 'Cg.06', 4, 1, 'Czy o ważności głosu decydowali wszyscy obecni członkowie komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (294, 148, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (295, 148, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (149, 'Cg', 'Cg.07', 4, 0, 'Czy komisja miała problem z ustaleniem ważności głosów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (296, 149, 16, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (297, 149, 17, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (298, 149, 18, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (299, 149, 19, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (150, 'Cg', 'Cg.08', 4, 2, 'Ile w przybliżeniu kart zawierało rysunki i dopiski na karcie do głosowania (poza kratką)?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (300, 150, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (151, 'Cg', 'Cg.09', 4, 2, 'Ile w przybliżeniu kart zawierało rysunki i dopiski na karcie w obrębie kartki?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (301, 151, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (152, 'Cg', 'Cg.10', 4, 2, 'Ile było przypadków głosów zaczernionych które zostały uznane za ważne?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (302, 152, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (153, 'Cg', 'Cg.11', 4, 2, 'Ile było przypadków głosów zaczernionych, w  których zaczerniona kratka dotyczyła innego komitetu wyborczego niż głos oddany ponownie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (303, 153, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (154, 'Cg', 'Cg.12', 4, 2, 'Ile było przypadków głosów z zaczernioną kratką, w których zaczerniona kratka dotyczyła innego kandydata w obrębie tej samej listy co głos oddany ponownie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (304, 154, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (155, 'Cg', 'Cg.13', 4, 1, 'Czy komisja porównała liczbę policzonych głosów ważnych i nieważnych z ilością kart ważnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (305, 155, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (306, 155, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (156, 'Cg', 'Cg.14', 4, 1, 'Czy jeśli liczba się nie zgadzała komisja znalazła przyczynę i skorygowała błąd?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (307, 156, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (308, 156, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (157, 'Cg', 'Cg.15', 4, 1, 'Czy komisja ustaliła: Liczbę głosów oddanych na poszczególne listy', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (309, 157, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (310, 157, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (158, 'Cg', 'Cg.16', 4, 1, 'Czy komisja ustaliła: Liczbę głosów oddanych na poszczególnych kandydatów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (311, 158, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (312, 158, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (159, 'Cg', 'Cg.17', 4, 1, 'Czy były problemy z wypełnieniem projektu protokołu danych wyborów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (313, 159, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (314, 159, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (160, 'Cg', 'Cg.18', 4, 2, 'Jeśli tak to jakie problemy?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (315, 160, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (161, 'Cg', 'Cg.19', 4, 1, 'Czy komisja zarządziła przerwę w liczeniu głosów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (316, 161, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (317, 161, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (162, 'Cg', 'Cg.20', 4, 1, 'Czy w trakcie ewentualnej przerwy materiały wyborcze były zabezpieczone i widoczne dla członków komisji, mężów zaufania i obserwatorów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (318, 162, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (319, 162, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (163, 'Cg', 'Cg.21', 4, 2, 'Jeśli nie to prosimy o komentarz', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (320, 163, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (164, 'Cg', 'Cg.22', 4, 1, 'Czy komisja pracowała razem w trakcie obserwacji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (321, 164, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (322, 164, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (165, 'Cg', 'Cg.23', 4, 1, 'Czy wystąpiły inne problemy lub sytuacje mogące mieć wpływ na przebieg wyborów? Jeśli tak – opisz w dodatkowej notatce', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (323, 165, 21, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (324, 165, 2, 0);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('Cp', 12.0);
INSERT INTO FormSections (Id, Code, Description) VALUES (5, '5','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (166, 'Cp', 'Cp.01', 5, 2, 'Czas rozpoczęcia liczenia głosów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (325, 166, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (167, 'Cp', 'Cp.02', 5, 2, 'Czas zakończenia liczenia głosów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (326, 167, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (168, 'Cp', 'Cp.03', 5, 1, 'Czy na czas liczenia głosów, karty do głosowania w pozostałych wyborach pozostawały zapakowane, opieczętowane i odłożone w miejsce widoczne dla komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (327, 168, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (328, 168, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (169, 'Cp', 'Cp.04', 5, 1, 'Czy komisja ustaliła liczbę głosów ważnych i nieważnych oddanych w danych wyborach?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (329, 169, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (330, 169, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (170, 'Cp', 'Cp.05', 5, 1, 'Czy komisja posegregowała i zapakowała głosy nieważne wg. przyczyny ich nieważności?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (331, 170, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (332, 170, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (171, 'Cp', 'Cp.06', 5, 1, 'Czy o ważności głosu decydowali wszyscy obecni członkowie komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (333, 171, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (334, 171, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (172, 'Cp', 'Cp.07', 5, 0, 'Czy komisja miała problem z ustaleniem ważności głosów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (335, 172, 16, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (336, 172, 17, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (337, 172, 18, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (338, 172, 19, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (173, 'Cp', 'Cp.08', 5, 2, 'Ile w przybliżeniu kart zawierało rysunki i dopiski na karcie do głosowania (poza kratką)?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (339, 173, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (174, 'Cp', 'Cp.09', 5, 2, 'Ile w przybliżeniu kart zawierało rysunki i dopiski na karcie w obrębie kartki?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (340, 174, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (175, 'Cp', 'Cp.10', 5, 2, 'Ile było przypadków głosów zaczernionych które zostały uznane za ważne?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (341, 175, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (176, 'Cp', 'Cp.11', 5, 2, 'Ile było przypadków głosów zaczernionych, w  których zaczerniona kratka dotyczyła innego komitetu wyborczego niż głos oddany ponownie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (342, 176, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (177, 'Cp', 'Cp.12', 5, 2, 'Ile było przypadków głosów z zaczernioną kratką, w których zaczerniona kratka dotyczyła innego kandydata w obrębie tej samej listy co głos oddany ponownie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (343, 177, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (178, 'Cp', 'Cp.13', 5, 1, 'Czy komisja porównała liczbę policzonych głosów ważnych i nieważnych z ilością kart ważnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (344, 178, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (345, 178, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (179, 'Cp', 'Cp.14', 5, 1, 'Czy jeśli liczba się nie zgadzała komisja znalazła przyczynę i skorygowała błąd?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (346, 179, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (347, 179, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (180, 'Cp', 'Cp.15', 5, 1, 'Czy komisja ustaliła: Liczbę głosów oddanych na poszczególne listy', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (348, 180, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (349, 180, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (181, 'Cp', 'Cp.16', 5, 1, 'Czy komisja ustaliła: Liczbę głosów oddanych na poszczególnych kandydatów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (350, 181, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (351, 181, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (182, 'Cp', 'Cp.17', 5, 1, 'Czy były problemy z wypełnieniem projektu protokołu danych wyborów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (352, 182, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (353, 182, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (183, 'Cp', 'Cp.18', 5, 2, 'Jeśli tak to jakie problemy?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (354, 183, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (184, 'Cp', 'Cp.19', 5, 1, 'Czy komisja zarządziła przerwę w liczeniu głosów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (355, 184, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (356, 184, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (185, 'Cp', 'Cp.20', 5, 1, 'Czy w trakcie ewentualnej przerwy materiały wyborcze były zabezpieczone i widoczne dla członków komisji, mężów zaufania i obserwatorów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (357, 185, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (358, 185, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (186, 'Cp', 'Cp.21', 5, 2, 'Jeśli nie to prosimy o komentarz', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (359, 186, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (187, 'Cp', 'Cp.22', 5, 1, 'Czy komisja pracowała razem w trakcie obserwacji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (360, 187, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (361, 187, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (188, 'Cp', 'Cp.23', 5, 1, 'Czy wystąpiły inne problemy lub sytuacje mogące mieć wpływ na przebieg wyborów? Jeśli tak – opisz w dodatkowej notatce', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (362, 188, 21, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (363, 188, 2, 0);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('Cs', 12.0);
INSERT INTO FormSections (Id, Code, Description) VALUES (6, '6','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (189, 'Cs', 'Cs.01', 6, 2, 'Czas rozpoczęcia liczenia głosów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (364, 189, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (190, 'Cs', 'Cs.02', 6, 2, 'Czas zakończenia liczenia głosów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (365, 190, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (191, 'Cs', 'Cs.03', 6, 1, 'Czy na czas liczenia głosów, karty do głosowania w pozostałych wyborach pozostawały zapakowane, opieczętowane i odłożone w miejsce widoczne dla komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (366, 191, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (367, 191, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (192, 'Cs', 'Cs.04', 6, 1, 'Czy komisja ustaliła liczbę głosów ważnych i nieważnych oddanych w danych wyborach?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (368, 192, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (369, 192, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (193, 'Cs', 'Cs.05', 6, 1, 'Czy komisja posegregowała i zapakowała głosy nieważne wg. przyczyny ich nieważności?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (370, 193, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (371, 193, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (194, 'Cs', 'Cs.06', 6, 1, 'Czy o ważności głosu decydowali wszyscy obecni członkowie komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (372, 194, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (373, 194, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (195, 'Cs', 'Cs.07', 6, 0, 'Czy komisja miała problem z ustaleniem ważności głosów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (374, 195, 16, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (375, 195, 17, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (376, 195, 18, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (377, 195, 19, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (196, 'Cs', 'Cs.08', 6, 2, 'Ile w przybliżeniu kart zawierało rysunki i dopiski na karcie do głosowania (poza kratką)?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (378, 196, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (197, 'Cs', 'Cs.09', 6, 2, 'Ile w przybliżeniu kart zawierało rysunki i dopiski na karcie w obrębie kartki?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (379, 197, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (198, 'Cs', 'Cs.10', 6, 2, 'Ile było przypadków głosów zaczernionych które zostały uznane za ważne?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (380, 198, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (199, 'Cs', 'Cs.11', 6, 2, 'Ile było przypadków głosów zaczernionych, w  których zaczerniona kratka dotyczyła innego komitetu wyborczego niż głos oddany ponownie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (381, 199, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (200, 'Cs', 'Cs.12', 6, 2, 'Ile było przypadków głosów z zaczernioną kratką, w których zaczerniona kratka dotyczyła innego kandydata w obrębie tej samej listy co głos oddany ponownie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (382, 200, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (201, 'Cs', 'Cs.13', 6, 1, 'Czy komisja porównała liczbę policzonych głosów ważnych i nieważnych z ilością kart ważnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (383, 201, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (384, 201, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (202, 'Cs', 'Cs.14', 6, 1, 'Czy jeśli liczba się nie zgadzała komisja znalazła przyczynę i skorygowała błąd?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (385, 202, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (386, 202, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (203, 'Cs', 'Cs.15', 6, 1, 'Czy komisja ustaliła: Liczbę głosów oddanych na poszczególne listy', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (387, 203, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (388, 203, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (204, 'Cs', 'Cs.16', 6, 1, 'Czy komisja ustaliła: Liczbę głosów oddanych na poszczególnych kandydatów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (389, 204, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (390, 204, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (205, 'Cs', 'Cs.17', 6, 1, 'Czy były problemy z wypełnieniem projektu protokołu danych wyborów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (391, 205, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (392, 205, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (206, 'Cs', 'Cs.18', 6, 2, 'Jeśli tak to jakie problemy?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (393, 206, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (207, 'Cs', 'Cs.19', 6, 1, 'Czy komisja zarządziła przerwę w liczeniu głosów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (394, 207, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (395, 207, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (208, 'Cs', 'Cs.20', 6, 1, 'Czy w trakcie ewentualnej przerwy materiały wyborcze były zabezpieczone i widoczne dla członków komisji, mężów zaufania i obserwatorów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (396, 208, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (397, 208, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (209, 'Cs', 'Cs.21', 6, 2, 'Jeśli nie to prosimy o komentarz', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (398, 209, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (210, 'Cs', 'Cs.22', 6, 1, 'Czy komisja pracowała razem w trakcie obserwacji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (399, 210, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (400, 210, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (211, 'Cs', 'Cs.23', 6, 1, 'Czy wystąpiły inne problemy lub sytuacje mogące mieć wpływ na przebieg wyborów? Jeśli tak – opisz w dodatkowej notatce', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (401, 211, 21, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (402, 211, 2, 0);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('Cw', 12.0);
INSERT INTO FormSections (Id, Code, Description) VALUES (7, '7','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (212, 'Cw', 'Cw.01', 7, 2, 'Czas rozpoczęcia liczenia głosów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (403, 212, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (213, 'Cw', 'Cw.02', 7, 2, 'Czas zakończenia liczenia głosów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (404, 213, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (214, 'Cw', 'Cw.03', 7, 1, 'Czy na czas liczenia głosów, karty do głosowania w pozostałych wyborach pozostawały zapakowane, opieczętowane i odłożone w miejsce widoczne dla komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (405, 214, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (406, 214, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (215, 'Cw', 'Cw.04', 7, 1, 'Czy komisja ustaliła liczbę głosów ważnych i nieważnych oddanych w danych wyborach?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (407, 215, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (408, 215, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (216, 'Cw', 'Cw.05', 7, 1, 'Czy komisja posegregowała i zapakowała głosy nieważne wg. przyczyny ich nieważności?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (409, 216, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (410, 216, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (217, 'Cw', 'Cw.06', 7, 1, 'Czy o ważności głosu decydowali wszyscy obecni członkowie komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (411, 217, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (412, 217, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (218, 'Cw', 'Cw.07', 7, 0, 'Czy komisja miała problem z ustaleniem ważności głosów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (413, 218, 16, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (414, 218, 17, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (415, 218, 18, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (416, 218, 19, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (219, 'Cw', 'Cw.08', 7, 2, 'Ile w przybliżeniu kart zawierało rysunki i dopiski na karcie do głosowania (poza kratką)?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (417, 219, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (220, 'Cw', 'Cw.09', 7, 2, 'Ile w przybliżeniu kart zawierało rysunki i dopiski na karcie w obrębie kartki?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (418, 220, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (221, 'Cw', 'Cw.10', 7, 2, 'Ile było przypadków głosów zaczernionych które zostały uznane za ważne?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (419, 221, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (222, 'Cw', 'Cw.11', 7, 2, 'Ile było przypadków głosów zaczernionych, w  których zaczerniona kratka dotyczyła innego komitetu wyborczego niż głos oddany ponownie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (420, 222, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (223, 'Cw', 'Cw.12', 7, 2, 'Ile było przypadków głosów z zaczernioną kratką, w których zaczerniona kratka dotyczyła innego kandydata w obrębie tej samej listy co głos oddany ponownie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (421, 223, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (224, 'Cw', 'Cw.13', 7, 1, 'Czy komisja porównała liczbę policzonych głosów ważnych i nieważnych z ilością kart ważnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (422, 224, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (423, 224, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (225, 'Cw', 'Cw.14', 7, 1, 'Czy jeśli liczba się nie zgadzała komisja znalazła przyczynę i skorygowała błąd?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (424, 225, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (425, 225, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (226, 'Cw', 'Cw.15', 7, 1, 'Czy komisja ustaliła: Liczbę głosów oddanych na poszczególne listy', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (426, 226, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (427, 226, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (227, 'Cw', 'Cw.16', 7, 1, 'Czy komisja ustaliła: Liczbę głosów oddanych na poszczególnych kandydatów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (428, 227, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (429, 227, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (228, 'Cw', 'Cw.17', 7, 1, 'Czy były problemy z wypełnieniem projektu protokołu danych wyborów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (430, 228, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (431, 228, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (229, 'Cw', 'Cw.18', 7, 2, 'Jeśli tak to jakie problemy?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (432, 229, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (230, 'Cw', 'Cw.19', 7, 1, 'Czy komisja zarządziła przerwę w liczeniu głosów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (433, 230, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (434, 230, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (231, 'Cw', 'Cw.20', 7, 1, 'Czy w trakcie ewentualnej przerwy materiały wyborcze były zabezpieczone i widoczne dla członków komisji, mężów zaufania i obserwatorów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (435, 231, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (436, 231, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (232, 'Cw', 'Cw.21', 7, 2, 'Jeśli nie to prosimy o komentarz', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (437, 232, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (233, 'Cw', 'Cw.22', 7, 1, 'Czy komisja pracowała razem w trakcie obserwacji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (438, 233, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (439, 233, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (234, 'Cw', 'Cw.23', 7, 1, 'Czy wystąpiły inne problemy lub sytuacje mogące mieć wpływ na przebieg wyborów? Jeśli tak – opisz w dodatkowej notatce', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (440, 234, 21, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (441, 234, 2, 0);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('D', 12.0);
INSERT INTO FormSections (Id, Code, Description) VALUES (8, '8','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (235, 'D', 'D.01', 8, 2, 'Czas rozpoczęcia wprowadzania projektów protokołów do systemu sprawdzania poprawności liczenia', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (442, 235, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (236, 'D', 'D.02', 8, 2, 'Czas publicznego wywieszenia protokołu', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (443, 236, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (237, 'D', 'D.03', 8, 1, 'Czy aplikacja ‘Protokoły Obwodowe’ wykazała błędy po wprowadzeniu danych z protokołów wstępnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (444, 237, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (445, 237, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (238, 'D', 'D.04', 8, 2, 'Jeśli tak, to jakiego typu i w jakich wyborach? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (446, 238, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (239, 'D', 'D.05', 8, 1, 'Czy wszyscy obecni członkowie komisji podpisali i ostemplowali wydruk wykazanych błędów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (447, 239, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (448, 239, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (240, 'D', 'D.06', 8, 1, 'Czy komisja skorygowała wykazane błędy?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (449, 240, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (450, 240, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (241, 'D', 'D.07', 8, 1, 'Czy aplikacja ‘Protokoły Obwodowe’ pokazała ostrzeżenia po wprowadzeniu danych z protokołów wstępnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (451, 241, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (452, 241, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (242, 'D', 'D.08', 8, 2, 'Jeśli tak, to jakiego typu? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (453, 242, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (243, 'D', 'D.09', 8, 1, 'Czy wszyscy obecni członkowie komisji podpisali i ostemplowali wydruk wykazanych ostrzeżeń', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (454, 243, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (455, 243, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (244, 'D', 'D.10', 8, 1, 'Czy komisja skorygowała błędy będące podstawą ostrzeżeń?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (456, 244, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (457, 244, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (245, 'D', 'D.11', 8, 1, 'Czy komisja wydrukowała wszystkie protokoły z aplikacji ‘Protokoły Obwodowe’', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (458, 245, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (459, 245, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (246, 'D', 'D.12', 8, 1, 'Czy do któregoś z protokołów zostały wprowadzone zmiany, które spowodowały konieczność jego ponownego wydrukowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (460, 246, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (461, 246, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (247, 'D', 'D.13', 8, 2, 'Jeśli tak, to jakiego typu były to zmiany i w którym protokole? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (462, 247, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (248, 'D', 'D.14', 8, 1, 'Czy wszyscy obecni członkowie komisji podpisali wydrukowane protokoły finalne?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (463, 248, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (464, 248, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (249, 'D', 'D.15', 8, 1, 'Czy dane z podpisanych protokołów finalnych zostały wprowadzone do systemu elektronicznego Wsparcie Organów Wyborczych (WOW)? {o ile komisja miała obsługę informatyczną}', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (465, 249, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (466, 249, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (250, 'D', 'D.16', 8, 1, 'Czy każdy obserwator społeczny/mąż zaufania, który o to poprosił, otrzymał kopię protokołu ?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (467, 250, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (468, 250, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (251, 'D', 'D.17', 8, 1, 'Czy komisja wywiesiła protokół wyników?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (469, 251, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (470, 251, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (252, 'D', 'D.18', 8, 1, 'Czy protokół został wywieszony w dostępnym i widocznym miejscu?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (471, 252, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (472, 252, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (253, 'D', 'D.19', 8, 0, 'Jak oceniasz wiedzę OKW 2 odnośnie procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (473, 253, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (474, 253, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (475, 253, 14, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (476, 253, 15, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (254, 'D', 'D.20', 8, 0, 'Jak oceniasz pracę OKW 2:', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (477, 254, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (478, 254, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (479, 254, 14, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (480, 254, 15, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (255, 'D', 'D.21', 8, 0, 'Jak oceniasz przebieg całości procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (481, 255, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (482, 255, 13, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (483, 255, 14, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (484, 255, 15, 1);
