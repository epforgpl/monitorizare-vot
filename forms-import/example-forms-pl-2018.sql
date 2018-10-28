DELETE FROM FormVersions;
DELETE FROM Answers;
DELETE FROM OptionsToQuestions;
DELETE FROM Notes;
DELETE FROM PollingStationInfos;
DELETE FROM Questions;
DELETE FROM Options;
DELETE FROM FormSections;
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (0, 1, 'Kliknij i wpisz', null);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('A', 19.0);
INSERT INTO FormSections (Id, Code, Description) VALUES (0, '0','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (1, 'A', 'QA.01', 0, 2, 'Liczba wyborców w spisie OKW', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (0, 1, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (2, 'A', 'QA.02', 0, 2, 'Liczba członków OKW-1', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (1, 2, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (3, 'A', 'QA.03', 0, 2, 'Liczba kobiet w składzie komisji', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (2, 3, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (4, 'A', 'QA.04', 0, 2, 'Najniższa liczba obecnych członków OKW-1 (w trakcie obserwacji)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (3, 4, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (5, 'A', 'QA.05', 0, 1, 'Czy zawsze obecny był Przewodniczący lub Z-ca Przewodniczącego Komisji?', '');
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (1, 0, 'tak', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (4, 5, 1, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (2, 0, 'nie', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (5, 5, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (6, 'A', 'A.01', 0, 1, 'Czy na otwarcie komisja wyborcza stawiła się do godziny 6:00? (jeśli byłeś obecny przed lokalem o 6:00)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (6, 6, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (7, 6, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (7, 'A', 'A.01.1', 0, 1, 'Jeśli komisja nie stawiła się do godziny 6:00, jakie było opóźnienie?', '');
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (3, 0, '1-15 min', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (8, 7, 3, 1);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (4, 0, '16-30', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (9, 7, 4, 1);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (5, 0, '30-1h', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (10, 7, 5, 1);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (6, 0, 'opóźnienie > 1h', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (11, 7, 6, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (8, 'A', 'A.02', 0, 1, 'Czy komisja sprawdziła, że w lokalu znajduje się właściwy spis wyborców?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (12, 8, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (13, 8, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (9, 'A', 'A.03', 0, 1, 'Czy komisja przeliczyła karty do głosowania, które otrzymała?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (14, 9, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (15, 9, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (10, 'A', 'A.04', 0, 1, 'Czy komisja ostemplowała wszystkie karty do głosowania przed otwarciem lokalu wyborczego lub zaraz po otwarciu?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (16, 10, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (17, 10, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (11, 'A', 'A.05', 0, 1, 'Czy komisja sprawdziła, że urna jest pusta, a następnie zamknęła ją i zaplombowała/opieczętowała pieczęcią komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (18, 11, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (19, 11, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (12, 'A', 'A.06', 0, 0, 'Jaki był rodzaj plomby użytej do zabezpieczenia urny?', '');
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (7, 0, 'naklejka foliowa', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (20, 12, 7, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (8, 0, 'opaska samozaciskowa', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (21, 12, 8, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (9, 0, 'opieczętowany i podpisany pasek papieru', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (22, 12, 9, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (10, 1, 'inne', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (23, 12, 10, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (13, 'A', 'A.07', 0, 1, 'Jeśli plomba była oznaczona unikatowym numerem, czy został on wprowadzony do protokołu wewnętrznego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (24, 13, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (25, 13, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (14, 'A', 'A.08', 0, 1, 'Czy komisja sprawdziła przed rozpoczęciem głosowania czy w lokalu i na zewnątrz nie ma żadnych materiałów agitacyjnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (26, 14, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (27, 14, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (15, 'A', 'A.08.1', 0, 1, 'Czy jeśli takie materiały były, to czy komisja je usunęła?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (28, 15, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (29, 15, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (16, 'A', 'A.09', 0, 1, 'Czy karty do głosowania znajdujące się w lokalu są właściwie zabezpieczone i nie mają do nich dostępu osoby postronne?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (30, 16, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (31, 16, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (17, 'A', 'A.10', 0, 1, 'Czy komisja otworzyła lokal wyborczy dla wyborców o godz. 7.00?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (32, 17, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (33, 17, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (18, 'A', 'A.10.1', 0, 1, 'Jeśli nie, jakie było opóźnienie? (podaj przyczynę w Notatkach!)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (34, 18, 3, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (35, 18, 4, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (36, 18, 5, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (37, 18, 6, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (19, 'A', 'A.11', 0, 1, 'Czy komisja pozwoliła obserwować procedury przygotowania lokalu wyborczego do głosowania bez problemów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (38, 19, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (39, 19, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (20, 'A', 'A.12', 0, 1, 'Czy umożliwiono obserwatorom  nagrywanie/robienie zdjęć w trakcie przygotowania lokalu wyborczego do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (40, 20, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (41, 20, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (21, 'A', 'A.13', 0, 1, 'Czy w OKW byli obecni inni obserwatorzy lub mężowie zaufania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (42, 21, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (43, 21, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (22, 'A', 'A.13.1', 0, 2, 'Jeśli tak, z jakich organizacji/komitetów wyborczych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (44, 22, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (23, 'A', 'A.14', 0, 1, 'Czy lokal był na liście dostosowanych dla osób niepełnosprawnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (45, 23, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (46, 23, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (24, 'A', 'A.15', 0, 1, 'Czy lokal spełniał wymogi dostosowania dla osób niepełnosprawnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (47, 24, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (48, 24, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (25, 'A', 'A.16', 0, 1, 'Czy w lokalu wyborczym lub na terenie, na którym się on znajduje była prowadzona agitacja wyborcza?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (49, 25, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (50, 25, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (26, 'A', 'A.16.1', 0, 2, 'Jeśli tak, jakie były jej formy? (wymień)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (51, 26, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (27, 'A', 'A.16.2', 0, 1, 'Czy komisja wyborcza zareagowała odpowiednio na przejawy prowadzonej kampanii/agitacji wyborczej?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (52, 27, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (53, 27, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (28, 'A', 'A.17', 0, 1, 'Czy w lokalu przebywały osoby nieupoważnione? (osoby niebędące wyborcami, członkami komisji, obserwatorami, mężami zaufania lub dziennikarzami)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (54, 28, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (55, 28, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (29, 'A', 'A.17.1', 0, 2, 'Jeśli tak – co to były za osoby i czy zakłócały pracę komisji? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (56, 29, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (30, 'A', 'A.18', 0, 1, 'Czy wystąpiły inne problemy lub sytuacje mogące mieć wpływ na przebieg wyborów? Jeśli tak – opisz w dodatkowej notatce', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (57, 30, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (58, 30, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (31, 'A', 'A.19', 0, 2, 'Czas zakończenia obserwacji', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (59, 31, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (32, 'A', 'A.A', 0, 1, 'Jak oceniasz wiedzę OKW-1 odnośnie procesu wyborczego?', '');
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (11, 0, 'bardzo dobra', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (60, 32, 11, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (12, 0, 'dobra', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (61, 32, 12, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (13, 0, 'zła', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (62, 32, 13, 1);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (14, 0, 'bardzo zła', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (63, 32, 14, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (33, 'A', 'A.B', 0, 1, 'Jak oceniasz pracę OKW-1:', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (64, 33, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (65, 33, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (66, 33, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (67, 33, 14, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (34, 'A', 'A.C', 0, 1, 'Jak oceniasz przebieg całości procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (68, 34, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (69, 34, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (70, 34, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (71, 34, 14, 1);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('B', 19.0);
INSERT INTO FormSections (Id, Code, Description) VALUES (1, '1','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (35, 'B', 'QB.01', 1, 2, 'Liczba wyborców w spisie OKW', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (72, 35, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (36, 'B', 'QB.02', 1, 2, 'Liczba członków OKW-1', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (73, 36, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (37, 'B', 'QB.03', 1, 2, 'Liczba kobiet w składzie komisji OKW-1', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (74, 37, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (38, 'B', 'QB.04', 1, 2, 'Najniższa liczba obecnych członków OKW-1 (w czasie obserwacji)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (75, 38, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (39, 'B', 'QB.05', 1, 1, 'Czy zawsze obecny był przewodniczący lub z-ca przewodniczącego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (76, 39, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (77, 39, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (40, 'B', 'QB.06', 1, 2, 'Liczba wyborców, która zagłosowała w trakcie obserwacji', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (78, 40, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (41, 'B', 'B.00', 1, 2, 'Liczba wyborców, która zagłosowała do momentu przybycia do lokalu wyborczego? (zapytać komisję)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (79, 41, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (42, 'B', 'B.01', 1, 1, 'Czy komisja jest prawidłowo oznaczona - na zewnątrz lokalu wyborczego, jak i wewnątrz?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (80, 42, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (81, 42, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (43, 'B', 'B.02', 1, 1, 'Czy w danym lokalu wyborczym znajduje się tylko jedna OKW?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (82, 43, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (83, 43, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (44, 'B', 'B.03', 1, 1, 'Czy lokal był na liście dostosowanych dla osób niepełnosprawnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (84, 44, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (85, 44, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (45, 'B', 'B.03.1', 1, 1, 'Czy lokal spełnia wymogi dostosowania dla osób niepełnosprawnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (86, 45, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (87, 45, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (46, 'B', 'B.04', 1, 1, 'Czy w lokalu wyborczym lub terenie, na którym się on znajduje, była prowadzona agitacja wyborcza?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (88, 46, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (89, 46, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (47, 'B', 'B.04.1', 1, 2, 'Jeśli ta to jakie były jej formy? (wymień)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (90, 47, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (48, 'B', 'B.04.2', 1, 2, 'Czy komisja zareagowała na prowadzoną agitację? W jaki sposób (opisz krótko)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (91, 48, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (49, 'B', 'B.05', 1, 1, 'Czy w OKW byli obecni inni obserwatorzy lub mężowie zaufania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (92, 49, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (93, 49, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (50, 'B', 'B.05.1', 1, 2, 'Jeśli tak to z jakich organizacji / komitetów wyborczych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (94, 50, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (51, 'B', 'B.06', 1, 1, 'Czy w lokalu wyborczym znajdują się wymagane obwieszczenia i informacje dla wyborców o technice i zasadach głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (95, 51, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (96, 51, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (52, 'B', 'B.07', 1, 1, 'Czy członkowie OKW-1 sprawdzają dokument tożsamości wyborcy, zawierający zdjęcie głosujących, przed wydaniem kart do głosowania?', '');
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (15, 0, 'zawsze lub prawie zawsze', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (97, 52, 15, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (16, 0, 'często', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (98, 52, 16, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (17, 0, 'czasami', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (99, 52, 17, 1);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (18, 0, 'nigdy lub prawie nigdy', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (100, 52, 18, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (53, 'B', 'B.08', 1, 1, 'Czy członkowie komisji  korzystali z osłon na dane osobowe na spisie wyborców?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (101, 53, 15, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (102, 53, 16, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (103, 53, 17, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (104, 53, 18, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (54, 'B', 'B.09', 1, 2, 'Ilu wyborców w przybliżeniu ( w trakcie prowadzonej obserwacji) poprosiło o zaświadczenie potwierdzające udział w głosowaniu w trakcie prowadzonej obserwacji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (105, 54, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (55, 'B', 'B.10', 1, 1, 'Czy głosującym wydawana jest wymagana liczba kart do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (106, 55, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (107, 55, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (56, 'B', 'B.11', 1, 1, 'Czy w lokalu wyborczym znajduje się wystarczająca liczba miejsc zapewniających tajność głosowania? (ich liczba powinna pozwolić na głosowanie bez ‘zbytnich’ kolejek)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (108, 56, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (109, 56, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (57, 'B', 'B.12', 1, 1, 'Czy w miejscach zapewniających tajność głosowania jest wystarczająco dużo światła, aby można było oddać głos?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (110, 57, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (111, 57, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (58, 'B', 'B.13', 1, 1, 'Czy przestrzegana była tajność głosowania? (zarówno przez osoby obecne w lokalu, jak i przez samych wyborców)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (112, 58, 15, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (113, 58, 16, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (114, 58, 17, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (115, 58, 18, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (59, 'B', 'B.13.1', 1, 1, 'Czy w sytuacji braku tajności, komisja reagowała?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (116, 59, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (117, 59, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (60, 'B', 'B.14', 1, 1, 'Jeśli tajność nie była zachowana, to czy można przypuszczać, że ktoś systematycznie obserwował jak były oddawane głosy?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (118, 60, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (119, 60, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (61, 'B', 'B.15', 1, 1, 'Czy wszystkie karty do głosowania wydawane wyborcom, które zaobserwowałeś, są ostemplowane pieczęcią komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (120, 61, 15, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (121, 61, 16, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (122, 61, 17, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (123, 61, 18, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (62, 'B', 'B.16', 1, 1, 'Czy urna jest prawidłowo zaplombowana?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (124, 62, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (125, 62, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (63, 'B', 'B.16.1', 1, 0, 'Jaki jest rodzaj plomby użytej do zabezpieczenia urny?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (126, 63, 7, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (127, 63, 8, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (128, 63, 9, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (129, 63, 10, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (64, 'B', 'B.16.2', 1, 1, 'Jeśli plomba jest oznaczona unikatowym numerem, czy został on wprowadzony do protokołu wewnętrznego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (130, 64, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (131, 64, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (65, 'B', 'B.17', 1, 1, 'Czy członek komisji pełni cały czas dyżur przy urnie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (132, 65, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (133, 65, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (66, 'B', 'B.18', 1, 1, 'Czy w trakcie obserwacji nastąpiło dopisanie wyborcy/wyborców do spisu?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (134, 66, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (135, 66, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (67, 'B', 'B.18.1', 1, 1, 'Czy dopisanie wyborcy do spisu odbyło się zgodnie z procedurą?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (136, 67, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (137, 67, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (68, 'B', 'B.18.2', 1, 2, 'Jeśli tak to jaki był powód dopisania wyborcy? Jeśli nie to jakie były odstępstwa od procedury? (opisz skrótowo)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (138, 68, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (69, 'B', 'B.19', 1, 1, 'Czy zaobserwowałeś przypadki nieuprawnionego głosowania ‘za kogoś’ lub głosowania ‘rodzinnego’?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (139, 69, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (140, 69, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (70, 'B', 'B.19.1', 1, 2, 'Jeśli tak to jaka była reakcja członków komisji? (opisz skrótowo)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (141, 70, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (71, 'B', 'B.20', 1, 1, 'Czy zaobserwowałeś przypadki próby wyniesienia karty do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (142, 71, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (143, 71, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (72, 'B', 'B.20.1', 1, 2, 'Jeśli tak to jaka była reakcja członków komisji? (opisz skrótowo)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (144, 72, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (73, 'B', 'B.21', 1, 1, 'Czy zaobserwowałeś, żeby głosujący wykonywali zdjęcia swoich kart do głosowania po oddaniu głosu?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (145, 73, 15, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (146, 73, 16, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (147, 73, 17, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (148, 73, 18, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (74, 'B', 'B.22', 1, 1, 'Czy były przerwy w głosowaniu?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (149, 74, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (150, 74, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (75, 'B', 'B.22.1', 1, 2, 'Jeśli tak to jakiego rodzaju i jak długie? (opisz skrótowo)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (151, 75, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (76, 'B', 'B.22.2', 1, 1, 'Czy na czas przerwy materiały wyborcze zostały zabezpieczone, a lokal zamknięty?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (152, 76, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (153, 76, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (77, 'B', 'B.23', 1, 1, 'Czy w lokalu przebywały osoby nieuprawnione? (osoby nie będące wyborcami, obserwatorami, mężami zaufania, członkami komisji wyborczej lub dziennikarzami)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (154, 77, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (155, 77, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (78, 'B', 'B.23.1', 1, 2, 'Jeśli tak – jakie to były osoby i czy zakłócały proces wyborczy? Czy komisja zareagowała? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (156, 78, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (79, 'B', 'B.24', 1, 1, 'Czy komisja pozwoliła ci obserwować proces głosowania bez problemów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (157, 79, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (158, 79, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (80, 'B', 'B.25', 1, 1, 'Czy wystąpiły inne problemy lub sytuacje mogące mieć wpływ na przebieg wyborów? Jeśli tak – opisz w dodatkowej notatce!', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (159, 80, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (160, 80, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (81, 'B', 'B.26', 1, 2, 'Czas zakończenia obserwacji', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (161, 81, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (82, 'B', 'B.A', 1, 1, 'Jak oceniasz wiedzę OKW-1 odnośnie procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (162, 82, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (163, 82, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (164, 82, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (165, 82, 14, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (83, 'B', 'B.B', 1, 1, 'Jak oceniasz pracę OKW-1:', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (166, 83, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (167, 83, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (168, 83, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (169, 83, 14, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (84, 'B', 'B.C', 1, 1, 'Jak oceniasz przebieg całości procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (170, 84, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (171, 84, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (172, 84, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (173, 84, 14, 1);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('C1', 19.0);
INSERT INTO FormSections (Id, Code, Description) VALUES (2, '2','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (85, 'C1', 'QC1.01', 2, 2, 'Liczba wyborców w spisie OKW', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (174, 85, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (86, 'C1', 'QC1.02', 2, 2, 'Liczba członków komisji OKW-1', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (175, 86, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (87, 'C1', 'QC1.03', 2, 2, 'Liczba kobiet wśród członków komisji wyborczej (OKW-1)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (176, 87, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (88, 'C1', 'QC1.04', 2, 2, 'Najniższa liczba obecnych członków OKW-1 (w czasie obserwacji)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (177, 88, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (89, 'C1', 'QC1.08', 2, 2, 'Liczba członków komisji OKW-2', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (178, 89, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (90, 'C1', 'QC1.09', 2, 2, 'Liczba kobiet wśród członków komisji wyborczej (OKW-2)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (179, 90, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (91, 'C1', 'QC1.10', 2, 2, 'Najniższa liczba obecnych członków OKW-2 (w czasie obserwacji)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (180, 91, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (92, 'C1', 'QC1.11', 2, 1, 'Czy komisja ma zapewnioną obsługę informatyczną?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (181, 92, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (182, 92, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (93, 'C1', 'C1.01', 2, 1, 'Czy lokal wyborczy został zamknięty o godz. 21.00?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (183, 93, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (184, 93, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (94, 'C1', 'C1.01.1', 2, 1, 'Jeśli nie to jakie było opóźnienie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (185, 94, 3, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (186, 94, 4, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (187, 94, 5, 0);
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (19, 0, 'x>1h', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (188, 94, 19, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (95, 'C1', 'C1.01.2', 2, 2, 'Jaka była przyczyna opóźnienia? (opisz skrótowo)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (189, 95, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (96, 'C1', 'C1.03', 2, 1, 'Czy w momencie zamknięcia lokalu, obecna była wymagana liczba (minimum 2/3) członków obu komisji (OKW-1 i OKW-2)?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (190, 96, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (191, 96, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (97, 'C1', 'C1.04', 2, 1, 'Czy po zamknięciu lokalu  i opuszczeniu go przez wszystkich wyborców w OKW były osoby nieuprawnione? (osoby nie będące obserwatorami, mężami zaufania, członkami komisji wyborczej lub dzienikarzami)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (192, 97, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (193, 97, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (98, 'C1', 'C1.04.1', 2, 2, 'Jeśli tak to jakie? Czy zakłócały pracę komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (194, 98, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (99, 'C1', 'C1.05', 2, 1, 'Czy przewodniczący OKW-1 razem z przewodniczącym OKW-2 opieczętowali otwór urny wyborczej?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (195, 99, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (196, 99, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (100, 'C1', 'C1.06', 2, 1, 'Czy przewodniczący OKW-1, w obecności wszystkich członków OKW-1 i OKW-2, przekazał przewodniczącemu OKW-2 wymagane materiały?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (197, 100, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (198, 100, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (101, 'C1', 'C1.06.1', 2, 1, 'Czy pieczęć komisji OKW-1 była właściwie zamknięta w osobnym pakiecie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (199, 101, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (200, 101, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (102, 'C1', 'C1.07.a', 2, 1, 'Czy członkowie OKW-1, w obecności członków OKW-2, oraz przewodniczących OKW-1 i OKW-2 ustalili liczbę otrzymanych kart każdego rodzaju?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (201, 102, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (202, 102, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (103, 'C1', 'C1.07.b', 2, 1, 'Czy członkowie OKW-1 i OKW-2 ustalili liczbę niewykorzystanych kart do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (203, 103, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (204, 103, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (104, 'C1', 'C1.07.c', 2, 1, 'Czy członkowie OKW-1 i OKW-2 ustalili liczbę aktów pełnomocnictwa?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (205, 104, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (206, 104, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (105, 'C1', 'C1.07.d', 2, 1, 'Czy członkowie OKW-1 i OKW-2 ustalili liczbę wyborców korzystających z nakładek w alfabecie Braile’a?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (207, 105, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (208, 105, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (106, 'C1', 'C1.08', 2, 1, 'Czy wystąpiła różnica pomiędzy sumą kart wydanych wyborcom i kart niewykorzystanych a liczbą kart otrzymanych przez komisję?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (209, 106, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (210, 106, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (107, 'C1', 'C1.08.1', 2, 2, 'Jeśli tak to która liczba była większa i o ile? Jakie było uzasadnienie komisji? (opisz sytuację)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (211, 107, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (108, 'C1', 'C1.09', 2, 1, 'Czy sporządzony został protokół przekazania i ostemplowany pieczęcią komisji OKW-2?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (212, 108, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (213, 108, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (109, 'C1', 'C1.10', 2, 1, 'Czy protokół przekazania był poprawiany?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (214, 109, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (215, 109, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (110, 'C1', 'C1.11', 2, 1, 'Czy protokół przekazania otrzymali wszyscy którzy o to poprosili?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (216, 110, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (217, 110, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (111, 'C1', 'C1.11.1', 2, 2, 'Jeśli nie, to jaki był podany powód odmowy i wobec kogo? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (218, 111, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (112, 'C1', 'C1.12', 2, 1, 'Czy członkowie OKW-1 opuścili lokal wyborczy po podpisaniu protokołu przekazania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (219, 112, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (220, 112, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (113, 'C1', 'C1.13', 2, 2, 'Godzina opuszczenia lokalu przez członków OKW-1', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (221, 113, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (114, 'C1', 'C1.14', 2, 1, 'Czy wystąpiły inne problemy lub sytuacje mogące mieć wpływ na przebieg wyborów? Jeśli tak – opisz w dodatkowej notatce', '');
INSERT INTO Options (Id, IsFreeText, Text, Hint) VALUES (20, 1, 'tak', null);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (222, 114, 20, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (223, 114, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (115, 'C1', 'C1.A', 2, 1, 'Jak oceniasz wiedzę OKW-1 i OKW-2 odnośnie procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (224, 115, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (225, 115, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (226, 115, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (227, 115, 14, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (116, 'C1', 'C1.B', 2, 1, 'Jak oceniasz pracę OKW-1 i OKW-2:', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (228, 116, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (229, 116, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (230, 116, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (231, 116, 14, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (117, 'C1', 'C1.C', 2, 1, 'Jak oceniasz przebieg całości procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (232, 117, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (233, 117, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (234, 117, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (235, 117, 14, 1);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('C2', 19.0);
INSERT INTO FormSections (Id, Code, Description) VALUES (3, '3','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (118, 'C2', 'C2.0', 3, 2, 'Rozpoczęcie pracy przez OKW-2', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (236, 118, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (119, 'C2', 'C2.16', 3, 2, 'Najniższa liczba obecnych członków OKW-2 (w czasie obserwacji):', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (237, 119, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (120, 'C2', 'C2.01', 3, 1, 'Czy komisja ustaliła, na podstawie spisu wyborców, liczbę osób uprawnionych do głosowania (wraz z osobami dopisanymi do listy)?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (238, 120, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (239, 120, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (121, 'C2', 'C2.01.1', 3, 2, 'Ile było osób dopisanych do spisu wyborców w trakcie głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (240, 121, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (122, 'C2', 'C2.02', 3, 1, 'Czy komisja ustaliła liczbę wyborców, którym wydano karty do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (241, 122, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (242, 122, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (123, 'C2', 'C2.03', 3, 1, 'Czy ustalona została liczba wydanych kart do głosowania (lista ‘A’ i ‘B’) {z uwzględnieniem różnic związanych z poszczególnymi wyborami!}?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (243, 123, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (244, 123, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (124, 'C2', 'C2.03+', 3, 1, 'Czy członkowie OKW-2 umieścili niewykorzystane karty do głosowania w opakowaniach zbiorczych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (245, 124, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (246, 124, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (125, 'C2', 'C2.04', 3, 1, 'Czy liczby oddanych głosów i niewykorzystanych kart do głosowania zgadzają się z liczbą otrzymanych kart do głosowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (247, 125, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (248, 125, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (126, 'C2', 'C2.04.1', 3, 2, 'Jeśli nie – jak duża była różnica i która liczba była większa? Czy komisja OKW-2 podała przyczynę? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (249, 126, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (127, 'C2', 'C2.05', 3, 1, 'Czy plomby na urnie/urnach oraz plomba otworu urny/urn były w nienaruszonym stanie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (250, 127, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (251, 127, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (128, 'C2', 'C2.06', 3, 1, 'Czy w trakcie wyjmowania głosów z urny miały miejsce problemy?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (252, 128, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (253, 128, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (129, 'C2', 'C2.06.1', 3, 2, 'Jesli tak to jakie?  (np. naelektryzowana urna, karty wypadające na ziemie, inne)? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (254, 129, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (130, 'C2', 'C2.07', 3, 1, 'Czy policone zostały głosy oddane korespondencyjnie i rozdzielone na pszczególne typy wyborów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (255, 130, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (256, 130, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (131, 'C2', 'C2.08', 3, 1, 'Czy komisja oddzieliła karty przedarte i zapakowała do oddzielnych opakowań?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (257, 131, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (258, 131, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (132, 'C2', 'C2.08.1', 3, 2, 'Ile było kart przedartych', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (259, 132, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (133, 'C2', 'C2.09', 3, 1, 'Czy komisja rozdzieliła prawidłowo karty do głosowania w poszczególnych wyborach (rady, sejmiki, wójtowie, itp.) ?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (260, 133, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (261, 133, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (134, 'C2', 'C2.10', 3, 1, 'Czy komisja wydzieliła i policzyła karty nieważne? (dla każdego typu wyborów oddzielnie)?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (262, 134, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (263, 134, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (135, 'C2', 'C2.10.1', 3, 2, 'Ile było kart nieważnych dla poszczególnych typów wyborów? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (264, 135, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (136, 'C2', 'C2.11', 3, 1, 'Czy komisja policzyła karty ważne dla każdego typu wyborów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (265, 136, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (266, 136, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (137, 'C2', 'C2.12', 3, 1, 'Czy osoby mające ołówki lub długopisy dotykają kart wyborczych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (267, 137, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (268, 137, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (138, 'C2', 'C2.13', 3, 1, 'Czy członkowie komisji pracowali wspólnie w trakcie prowadzonej obserwacji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (269, 138, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (270, 138, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (139, 'C2', 'C2.14', 3, 2, 'Czy wystąpiły inne problemy lub sytuacje mogące mieć wpływ na przebieg wyborów? Jeśli tak – opisz w dodatkowej notatce.', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (271, 139, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (140, 'C2', 'C2.15', 3, 2, 'Godzina zakończenia obserwacji', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (272, 140, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (141, 'C2', 'C2.A', 3, 1, 'Jak oceniasz wiedzę OKW-2 odnośnie procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (273, 141, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (274, 141, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (275, 141, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (276, 141, 14, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (142, 'C2', 'C2.B', 3, 1, 'Jak oceniasz pracę OKW-2:', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (277, 142, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (278, 142, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (279, 142, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (280, 142, 14, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (143, 'C2', 'C2.C', 3, 1, 'Jak oceniasz przebieg całości procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (281, 143, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (282, 143, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (283, 143, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (284, 143, 14, 1);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('Cg', 19.0);
INSERT INTO FormSections (Id, Code, Description) VALUES (4, '4','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (144, 'Cg', 'Cg.00', 4, 2, 'Czas rozpoczęcia liczenia głosów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (285, 144, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (145, 'Cg', 'Cg.14', 4, 2, 'Czas zakończenia liczenia głosów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (286, 145, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (146, 'Cg', 'Cg.01', 4, 1, 'Czy na czas liczenia głosów, karty do głosowania w pozostałych wyborach pozostawały zapakowane, opieczętowane i odłożone w miejsce widoczne dla komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (287, 146, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (288, 146, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (147, 'Cg', 'Cg.02', 4, 1, 'Czy komisja ustaliła liczbę głosów ważnych i nieważnych oddanych w danych wyborach?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (289, 147, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (290, 147, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (148, 'Cg', 'Cg.02.1', 4, 1, 'Czy komisja posegregowała i zapakowała głosy nieważne wg. przyczyny ich nieważności?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (291, 148, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (292, 148, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (149, 'Cg', 'Cg.03', 4, 1, 'Czy o ważności głosu decydowali wszyscy obecni członkowie komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (293, 149, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (294, 149, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (150, 'Cg', 'Cg.04', 4, 1, 'Czy komisja miała problem z ustaleniem ważności głosów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (295, 150, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (296, 150, 16, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (297, 150, 17, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (298, 150, 18, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (151, 'Cg', 'Cg.05', 4, 2, 'Ile było przypadków głosów zaczernionych które zostały uznane za ważne?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (299, 151, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (152, 'Cg', 'Cg.05.1', 4, 2, 'Ile w przybliżeniu kart zawierało rysunki i dopiski na karcie do głosowania (poza kratką)?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (300, 152, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (153, 'Cg', 'Cg.05.2', 4, 2, 'Ile w przybliżeniu kart zawierało rysunki i dopiski na karcie w obrębie kartki?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (301, 153, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (154, 'Cg', 'Cg.05.3', 4, 2, 'Ile było przypadków głosów zaczernionych, w  których zaczerniona kratka dotyczyła innego komitetu wyborczego niż głos oddany ponownie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (302, 154, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (155, 'Cg', 'Cg.05.4', 4, 2, 'Ile było przypadków głosów z zaczernioną kratką, w których zaczerniona kratka dotyczyła innego kandydata w obrębie tej samej listy co głos oddany ponownie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (303, 155, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (156, 'Cg', 'Cg.06', 4, 1, 'Czy komisja porównała liczbę policzonych głosów ważnych i nieważnych z ilością kart ważnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (304, 156, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (305, 156, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (157, 'Cg', 'Cg.06.1', 4, 1, 'Czy jeśli liczba się nie zgadzała komisja znalazła przyczynę i skorygowała błąd?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (306, 157, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (307, 157, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (158, 'Cg', 'Cg.07.a', 4, 1, 'Czy komisja ustaliła: Liczbę głosów oddanych na poszczególne listy?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (308, 158, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (309, 158, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (159, 'Cg', 'Cg.07.b', 4, 1, 'Czy komisja ustaliła: Liczbę głosów oddanych na poszczególnych kandydatów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (310, 159, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (311, 159, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (160, 'Cg', 'Cg.08', 4, 1, 'Czy były problemy z wypełnieniem projektu protokołu danych wyborów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (312, 160, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (313, 160, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (161, 'Cg', 'Cg.08.1', 4, 2, 'Jeśli tak to jakie to były problemy? (opisz skrótowo)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (314, 161, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (162, 'Cg', 'Cg.09', 4, 1, 'Czy komisja zarządziła przerwę w liczeniu głosów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (315, 162, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (316, 162, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (163, 'Cg', 'Cg.09.1', 4, 1, 'Czy w trakcie ewentualnej przerwy materiały wyborcze były zabezpieczone i widoczne dla członków komisji, mężów zaufania i obserwatorów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (317, 163, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (318, 163, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (164, 'Cg', 'Cg.09.2', 4, 2, 'Jeśli nie to opisz sytuację (skrótowo)?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (319, 164, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (165, 'Cg', 'Cg.10', 4, 1, 'Czy obserwatorzy mieli możliwośćswobodnej obserwacji procesu liczenia głosów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (320, 165, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (321, 165, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (166, 'Cg', 'Cg.11', 4, 1, 'Czy mężowie zaufania lub członkowie komisji wnieśli uwagi do protokołu?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (322, 166, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (323, 166, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (167, 'Cg', 'Cg.11.1', 4, 2, 'Jeśli tak - jakie to były uwagi? (opisz skrótowo)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (324, 167, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (168, 'Cg', 'Cg.11.2', 4, 1, 'Czy komisja ustosunkowała się do tych uwag?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (325, 168, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (326, 168, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (169, 'Cg', 'Cg.12', 4, 1, 'Czy komisja pracowała razem w trakcie obserwacji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (327, 169, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (328, 169, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (170, 'Cg', 'Cg.13', 4, 1, 'Czy wystąpiły inne problemy lub sytuacje mogące mieć wpływ na przebieg wyborów? Jeśli tak – opisz w dodatkowej notatce', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (329, 170, 20, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (330, 170, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (171, 'Cg', 'Cg.A', 4, 1, 'Jak oceniasz wiedzę OKW-2 odnośnie procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (331, 171, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (332, 171, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (333, 171, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (334, 171, 14, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (172, 'Cg', 'Cg.B', 4, 1, 'Jak oceniasz pracę OKW-2:', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (335, 172, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (336, 172, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (337, 172, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (338, 172, 14, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (173, 'Cg', 'Cg.C', 4, 1, 'Jak oceniasz przebieg całości procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (339, 173, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (340, 173, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (341, 173, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (342, 173, 14, 1);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('Cp', 19.0);
INSERT INTO FormSections (Id, Code, Description) VALUES (5, '5','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (174, 'Cp', 'Cp.00', 5, 2, 'Czas rozpoczęcia liczenia głosów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (343, 174, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (175, 'Cp', 'Cp.14', 5, 2, 'Czas zakończenia liczenia głosów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (344, 175, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (176, 'Cp', 'Cp.01', 5, 1, 'Czy na czas liczenia głosów, karty do głosowania w pozostałych wyborach pozostawały zapakowane, opieczętowane i odłożone w miejsce widoczne dla komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (345, 176, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (346, 176, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (177, 'Cp', 'Cp.02', 5, 1, 'Czy komisja ustaliła liczbę głosów ważnych i nieważnych oddanych w danych wyborach?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (347, 177, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (348, 177, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (178, 'Cp', 'Cp.02.1', 5, 1, 'Czy komisja posegregowała i zapakowała głosy nieważne wg. przyczyny ich nieważności?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (349, 178, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (350, 178, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (179, 'Cp', 'Cp.03', 5, 1, 'Czy o ważności głosu decydowali wszyscy obecni członkowie komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (351, 179, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (352, 179, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (180, 'Cp', 'Cp.04', 5, 1, 'Czy komisja miała problem z ustaleniem ważności głosów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (353, 180, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (354, 180, 16, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (355, 180, 17, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (356, 180, 18, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (181, 'Cp', 'Cp.05', 5, 2, 'Ile było przypadków głosów zaczernionych które zostały uznane za ważne?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (357, 181, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (182, 'Cp', 'Cp.05.1', 5, 2, 'Ile w przybliżeniu kart zawierało rysunki i dopiski na karcie do głosowania (poza kratką)?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (358, 182, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (183, 'Cp', 'Cp.05.2', 5, 2, 'Ile w przybliżeniu kart zawierało rysunki i dopiski na karcie w obrębie kartki?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (359, 183, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (184, 'Cp', 'Cp.05.3', 5, 2, 'Ile było przypadków głosów zaczernionych, w  których zaczerniona kratka dotyczyła innego komitetu wyborczego niż głos oddany ponownie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (360, 184, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (185, 'Cp', 'Cp.05.4', 5, 2, 'Ile było przypadków głosów z zaczernioną kratką, w których zaczerniona kratka dotyczyła innego kandydata w obrębie tej samej listy co głos oddany ponownie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (361, 185, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (186, 'Cp', 'Cp.06', 5, 1, 'Czy komisja porównała liczbę policzonych głosów ważnych i nieważnych z ilością kart ważnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (362, 186, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (363, 186, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (187, 'Cp', 'Cp.06.1', 5, 1, 'Czy jeśli liczba się nie zgadzała komisja znalazła przyczynę i skorygowała błąd?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (364, 187, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (365, 187, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (188, 'Cp', 'Cp.07.a', 5, 1, 'Czy komisja ustaliła: Liczbę głosów oddanych na poszczególne listy?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (366, 188, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (367, 188, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (189, 'Cp', 'Cp.07.b', 5, 1, 'Czy komisja ustaliła: Liczbę głosów oddanych na poszczególnych kandydatów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (368, 189, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (369, 189, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (190, 'Cp', 'Cp.08', 5, 1, 'Czy były problemy z wypełnieniem projektu protokołu danych wyborów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (370, 190, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (371, 190, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (191, 'Cp', 'Cp.08.1', 5, 2, 'Jeśli tak to jakie to były problemy? (opisz skrótowo)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (372, 191, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (192, 'Cp', 'Cp.09', 5, 1, 'Czy komisja zarządziła przerwę w liczeniu głosów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (373, 192, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (374, 192, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (193, 'Cp', 'Cp.09.1', 5, 1, 'Czy w trakcie ewentualnej przerwy materiały wyborcze były zabezpieczone i widoczne dla członków komisji, mężów zaufania i obserwatorów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (375, 193, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (376, 193, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (194, 'Cp', 'Cp.09.2', 5, 2, 'Jeśli nie to opisz sytuację (skrótowo)?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (377, 194, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (195, 'Cp', 'Cp.10', 5, 1, 'Czy obserwatorzy mieli możliwośćswobodnej obserwacji procesu liczenia głosów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (378, 195, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (379, 195, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (196, 'Cp', 'Cp.11', 5, 1, 'Czy mężowie zaufania lub członkowie komisji wnieśli uwagi do protokołu?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (380, 196, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (381, 196, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (197, 'Cp', 'Cp.11.1', 5, 2, 'Jeśli tak - jakie to były uwagi? (opisz skrótowo)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (382, 197, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (198, 'Cp', 'Cp.11.2', 5, 1, 'Czy komisja ustosunkowała się do tych uwag?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (383, 198, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (384, 198, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (199, 'Cp', 'Cp.12', 5, 1, 'Czy komisja pracowała razem w trakcie obserwacji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (385, 199, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (386, 199, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (200, 'Cp', 'Cp.13', 5, 1, 'Czy wystąpiły inne problemy lub sytuacje mogące mieć wpływ na przebieg wyborów? Jeśli tak – opisz w dodatkowej notatce', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (387, 200, 20, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (388, 200, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (201, 'Cp', 'Cp.A', 5, 1, 'Jak oceniasz wiedzę OKW-2 odnośnie procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (389, 201, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (390, 201, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (391, 201, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (392, 201, 14, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (202, 'Cp', 'Cp.B', 5, 1, 'Jak oceniasz pracę OKW-2:', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (393, 202, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (394, 202, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (395, 202, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (396, 202, 14, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (203, 'Cp', 'Cp.C', 5, 1, 'Jak oceniasz przebieg całości procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (397, 203, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (398, 203, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (399, 203, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (400, 203, 14, 1);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('Cs', 19.0);
INSERT INTO FormSections (Id, Code, Description) VALUES (6, '6','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (204, 'Cs', 'Cs.00', 6, 2, 'Czas rozpoczęcia liczenia głosów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (401, 204, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (205, 'Cs', 'Cs.14', 6, 2, 'Czas zakończenia liczenia głosów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (402, 205, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (206, 'Cs', 'Cs.01', 6, 1, 'Czy na czas liczenia głosów, karty do głosowania w pozostałych wyborach pozostawały zapakowane, opieczętowane i odłożone w miejsce widoczne dla komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (403, 206, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (404, 206, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (207, 'Cs', 'Cs.02', 6, 1, 'Czy komisja ustaliła liczbę głosów ważnych i nieważnych oddanych w danych wyborach?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (405, 207, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (406, 207, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (208, 'Cs', 'Cs.02.1', 6, 1, 'Czy komisja posegregowała i zapakowała głosy nieważne wg. przyczyny ich nieważności?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (407, 208, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (408, 208, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (209, 'Cs', 'Cs.03', 6, 1, 'Czy o ważności głosu decydowali wszyscy obecni członkowie komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (409, 209, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (410, 209, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (210, 'Cs', 'Cs.04', 6, 1, 'Czy komisja miała problem z ustaleniem ważności głosów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (411, 210, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (412, 210, 16, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (413, 210, 17, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (414, 210, 18, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (211, 'Cs', 'Cs.05', 6, 2, 'Ile było przypadków głosów zaczernionych które zostały uznane za ważne?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (415, 211, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (212, 'Cs', 'Cs.05.1', 6, 2, 'Ile w przybliżeniu kart zawierało rysunki i dopiski na karcie do głosowania (poza kratką)?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (416, 212, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (213, 'Cs', 'Cs.05.2', 6, 2, 'Ile w przybliżeniu kart zawierało rysunki i dopiski na karcie w obrębie kartki?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (417, 213, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (214, 'Cs', 'Cs.05.3', 6, 2, 'Ile było przypadków głosów zaczernionych, w  których zaczerniona kratka dotyczyła innego komitetu wyborczego niż głos oddany ponownie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (418, 214, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (215, 'Cs', 'Cs.05.4', 6, 2, 'Ile było przypadków głosów z zaczernioną kratką, w których zaczerniona kratka dotyczyła innego kandydata w obrębie tej samej listy co głos oddany ponownie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (419, 215, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (216, 'Cs', 'Cs.06', 6, 1, 'Czy komisja porównała liczbę policzonych głosów ważnych i nieważnych z ilością kart ważnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (420, 216, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (421, 216, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (217, 'Cs', 'Cs.06.1', 6, 1, 'Czy jeśli liczba się nie zgadzała komisja znalazła przyczynę i skorygowała błąd?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (422, 217, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (423, 217, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (218, 'Cs', 'Cs.07.a', 6, 1, 'Czy komisja ustaliła: Liczbę głosów oddanych na poszczególne listy?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (424, 218, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (425, 218, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (219, 'Cs', 'Cs.07.b', 6, 1, 'Czy komisja ustaliła: Liczbę głosów oddanych na poszczególnych kandydatów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (426, 219, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (427, 219, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (220, 'Cs', 'Cs.08', 6, 1, 'Czy były problemy z wypełnieniem projektu protokołu danych wyborów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (428, 220, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (429, 220, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (221, 'Cs', 'Cs.08.1', 6, 2, 'Jeśli tak to jakie to były problemy? (opisz skrótowo)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (430, 221, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (222, 'Cs', 'Cs.09', 6, 1, 'Czy komisja zarządziła przerwę w liczeniu głosów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (431, 222, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (432, 222, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (223, 'Cs', 'Cs.09.1', 6, 1, 'Czy w trakcie ewentualnej przerwy materiały wyborcze były zabezpieczone i widoczne dla członków komisji, mężów zaufania i obserwatorów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (433, 223, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (434, 223, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (224, 'Cs', 'Cs.09.2', 6, 2, 'Jeśli nie to opisz sytuację (skrótowo)?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (435, 224, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (225, 'Cs', 'Cs.10', 6, 1, 'Czy obserwatorzy mieli możliwośćswobodnej obserwacji procesu liczenia głosów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (436, 225, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (437, 225, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (226, 'Cs', 'Cs.11', 6, 1, 'Czy mężowie zaufania lub członkowie komisji wnieśli uwagi do protokołu?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (438, 226, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (439, 226, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (227, 'Cs', 'Cs.11.1', 6, 2, 'Jeśli tak - jakie to były uwagi? (opisz skrótowo)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (440, 227, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (228, 'Cs', 'Cs.11.2', 6, 1, 'Czy komisja ustosunkowała się do tych uwag?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (441, 228, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (442, 228, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (229, 'Cs', 'Cs.12', 6, 1, 'Czy komisja pracowała razem w trakcie obserwacji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (443, 229, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (444, 229, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (230, 'Cs', 'Cs.13', 6, 1, 'Czy wystąpiły inne problemy lub sytuacje mogące mieć wpływ na przebieg wyborów? Jeśli tak – opisz w dodatkowej notatce', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (445, 230, 20, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (446, 230, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (231, 'Cs', 'Cs.A', 6, 1, 'Jak oceniasz wiedzę OKW-2 odnośnie procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (447, 231, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (448, 231, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (449, 231, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (450, 231, 14, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (232, 'Cs', 'Cs.B', 6, 1, 'Jak oceniasz pracę OKW-2:', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (451, 232, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (452, 232, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (453, 232, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (454, 232, 14, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (233, 'Cs', 'Cs.C', 6, 1, 'Jak oceniasz przebieg całości procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (455, 233, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (456, 233, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (457, 233, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (458, 233, 14, 1);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('Cw', 19.0);
INSERT INTO FormSections (Id, Code, Description) VALUES (7, '7','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (234, 'Cw', 'Cw.00', 7, 2, 'Czas rozpoczęcia liczenia głosów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (459, 234, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (235, 'Cw', 'Cw.14', 7, 2, 'Czas zakończenia liczenia głosów', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (460, 235, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (236, 'Cw', 'Cw.01', 7, 1, 'Czy na czas liczenia głosów, karty do głosowania w pozostałych wyborach pozostawały zapakowane, opieczętowane i odłożone w miejsce widoczne dla komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (461, 236, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (462, 236, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (237, 'Cw', 'Cw.02', 7, 1, 'Czy komisja ustaliła liczbę głosów ważnych i nieważnych oddanych w danych wyborach?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (463, 237, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (464, 237, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (238, 'Cw', 'Cw.02.1', 7, 1, 'Czy komisja posegregowała i zapakowała głosy nieważne wg. przyczyny ich nieważności?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (465, 238, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (466, 238, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (239, 'Cw', 'Cw.03', 7, 1, 'Czy o ważności głosu decydowali wszyscy obecni członkowie komisji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (467, 239, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (468, 239, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (240, 'Cw', 'Cw.04', 7, 1, 'Czy komisja miała problem z ustaleniem ważności głosów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (469, 240, 15, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (470, 240, 16, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (471, 240, 17, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (472, 240, 18, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (241, 'Cw', 'Cw.05', 7, 2, 'Ile było przypadków głosów zaczernionych które zostały uznane za ważne?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (473, 241, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (242, 'Cw', 'Cw.05.1', 7, 2, 'Ile w przybliżeniu kart zawierało rysunki i dopiski na karcie do głosowania (poza kratką)?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (474, 242, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (243, 'Cw', 'Cw.05.2', 7, 2, 'Ile w przybliżeniu kart zawierało rysunki i dopiski na karcie w obrębie kartki?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (475, 243, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (244, 'Cw', 'Cw.05.3', 7, 2, 'Ile było przypadków głosów zaczernionych, w  których zaczerniona kratka dotyczyła innego komitetu wyborczego niż głos oddany ponownie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (476, 244, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (245, 'Cw', 'Cw.05.4', 7, 2, 'Ile było przypadków głosów z zaczernioną kratką, w których zaczerniona kratka dotyczyła innego kandydata w obrębie tej samej listy co głos oddany ponownie?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (477, 245, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (246, 'Cw', 'Cw.06', 7, 1, 'Czy komisja porównała liczbę policzonych głosów ważnych i nieważnych z ilością kart ważnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (478, 246, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (479, 246, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (247, 'Cw', 'Cw.06.1', 7, 1, 'Czy jeśli liczba się nie zgadzała komisja znalazła przyczynę i skorygowała błąd?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (480, 247, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (481, 247, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (248, 'Cw', 'Cw.07.a', 7, 1, 'Czy komisja ustaliła: Liczbę głosów oddanych na poszczególne listy?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (482, 248, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (483, 248, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (249, 'Cw', 'Cw.07.b', 7, 1, 'Czy komisja ustaliła: Liczbę głosów oddanych na poszczególnych kandydatów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (484, 249, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (485, 249, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (250, 'Cw', 'Cw.08', 7, 1, 'Czy były problemy z wypełnieniem projektu protokołu danych wyborów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (486, 250, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (487, 250, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (251, 'Cw', 'Cw.08.1', 7, 2, 'Jeśli tak to jakie to były problemy? (opisz skrótowo)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (488, 251, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (252, 'Cw', 'Cw.09', 7, 1, 'Czy komisja zarządziła przerwę w liczeniu głosów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (489, 252, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (490, 252, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (253, 'Cw', 'Cw.09.1', 7, 1, 'Czy w trakcie ewentualnej przerwy materiały wyborcze były zabezpieczone i widoczne dla członków komisji, mężów zaufania i obserwatorów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (491, 253, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (492, 253, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (254, 'Cw', 'Cw.09.2', 7, 2, 'Jeśli nie to opisz sytuację (skrótowo)?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (493, 254, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (255, 'Cw', 'Cw.10', 7, 1, 'Czy obserwatorzy mieli możliwośćswobodnej obserwacji procesu liczenia głosów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (494, 255, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (495, 255, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (256, 'Cw', 'Cw.11', 7, 1, 'Czy mężowie zaufania lub członkowie komisji wnieśli uwagi do protokołu?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (496, 256, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (497, 256, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (257, 'Cw', 'Cw.11.1', 7, 2, 'Jeśli tak - jakie to były uwagi? (opisz skrótowo)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (498, 257, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (258, 'Cw', 'Cw.11.2', 7, 1, 'Czy komisja ustosunkowała się do tych uwag?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (499, 258, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (500, 258, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (259, 'Cw', 'Cw.12', 7, 1, 'Czy komisja pracowała razem w trakcie obserwacji?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (501, 259, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (502, 259, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (260, 'Cw', 'Cw.13', 7, 1, 'Czy wystąpiły inne problemy lub sytuacje mogące mieć wpływ na przebieg wyborów? Jeśli tak – opisz w dodatkowej notatce', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (503, 260, 20, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (504, 260, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (261, 'Cw', 'Cw.A', 7, 1, 'Jak oceniasz wiedzę OKW-2 odnośnie procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (505, 261, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (506, 261, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (507, 261, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (508, 261, 14, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (262, 'Cw', 'Cw.B', 7, 1, 'Jak oceniasz pracę OKW-2:', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (509, 262, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (510, 262, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (511, 262, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (512, 262, 14, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (263, 'Cw', 'Cw.C', 7, 1, 'Jak oceniasz przebieg całości procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (513, 263, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (514, 263, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (515, 263, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (516, 263, 14, 1);


INSERT INTO FormVersions (Code, CurrentVersion) VALUES ('D', 19.0);
INSERT INTO FormSections (Id, Code, Description) VALUES (8, '8','not used');

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (264, 'D', 'D.0', 8, 2, 'Czas rozpoczęcia wprowadzania projektów protokołów do systemu sprawdzania poprawności liczenia (Aplikacja)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (517, 264, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (265, 'D', 'D.11', 8, 2, 'Czas zakończenia pracy komisji OKW-2', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (518, 265, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (266, 'D', 'D.01', 8, 1, 'Czy komisja wprowadziła liczby i dane z ręcznie wypełnionych protokołów do Aplikacji \'Protokoły Obwodowe\'?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (519, 266, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (520, 266, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (267, 'D', 'D.02', 8, 1, 'Czy aplikacja ‘Protokoły Obwodowe’ wykazała błędy po wprowadzeniu danych z protokołów wstępnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (521, 267, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (522, 267, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (268, 'D', 'D.02.1', 8, 2, 'Jeśli tak, to jakiego typu i w jakich wyborach? (opisz najwazniejsze)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (523, 268, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (269, 'D', 'D.02.2', 8, 1, 'Czy wszyscy obecni członkowie komisji podpisali i ostemplowali wydruk wykazanych błędów?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (524, 269, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (525, 269, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (270, 'D', 'D.02.3', 8, 1, 'Czy komisja skorygowała wykazane błędy?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (526, 270, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (527, 270, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (271, 'D', 'D.03', 8, 1, 'Czy aplikacja ‘Protokoły Obwodowe’ pokazała ostrzeżenia po wprowadzeniu danych z protokołów wstępnych?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (528, 271, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (529, 271, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (272, 'D', 'D.03.1', 8, 2, 'Jeśli tak, to jakiego typu? (opisz najwazniejsze)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (530, 272, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (273, 'D', 'D.03.2', 8, 1, 'Czy wszyscy obecni członkowie komisji podpisali i ostemplowali wydruk wykazanych ostrzeżeń?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (531, 273, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (532, 273, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (274, 'D', 'D.03.3', 8, 1, 'Czy komisja skorygowała błędy będące podstawą ostrzeżeń?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (533, 274, 1, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (534, 274, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (275, 'D', 'D.04', 8, 1, 'Czy komisja wydrukowała wszystkie protokoły z aplikacji ‘Protokoły Obwodowe’?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (535, 275, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (536, 275, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (276, 'D', 'D.05', 8, 1, 'Czy do któregoś z protokołów zostały wprowadzone zmiany, które spowodowały konieczność jego ponownego wydrukowania?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (537, 276, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (538, 276, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (277, 'D', 'D.05.1', 8, 2, 'Jeśli tak, to jakiego typu były to zmiany i w którym protokole? (opisz)', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (539, 277, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (278, 'D', 'D.06', 8, 1, 'Czy wszyscy obecni członkowie komisji podpisali wydrukowane protokoły finalne?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (540, 278, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (541, 278, 2, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (279, 'D', 'D.07', 8, 1, 'Czy dane z podpisanych protokołów finalnych zostały wprowadzone do systemu elektronicznego Wsparcie Organów Wyborczych (WOW)? {o ile komisja miała obsługę informatyczną}', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (542, 279, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (543, 279, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (280, 'D', 'D.08', 8, 1, 'Czy każdy obserwator społeczny/mąż zaufania, który o to poprosił, otrzymał kopię protokołu ?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (544, 280, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (545, 280, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (281, 'D', 'D.09', 8, 1, 'Czy komisja wywiesiła protokół wyników?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (546, 281, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (547, 281, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (282, 'D', 'D.09.1', 8, 1, 'Czy protokół został wywieszony w dostępnym i widocznym miejscu?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (548, 282, 1, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (549, 282, 2, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (283, 'D', 'D.10', 8, 2, 'Czy wystąpiły inne problemy lub sytuacje mogące mieć wpływ na przebieg wyborów? Jeśli tak opisz. Jeśli nie, pomiń.', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (550, 283, 0, 0);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (284, 'D', 'D.A', 8, 1, 'Jak oceniasz wiedzę OKW-2 odnośnie procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (551, 284, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (552, 284, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (553, 284, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (554, 284, 14, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (285, 'D', 'D.B', 8, 1, 'Jak oceniasz pracę OKW-2:', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (555, 285, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (556, 285, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (557, 285, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (558, 285, 14, 1);

INSERT INTO Questions (Id, FormCode, Code, IdSection, QuestionType, Text, Hint) VALUES (286, 'D', 'D.C', 8, 1, 'Jak oceniasz przebieg całości procesu wyborczego?', '');
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (559, 286, 11, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (560, 286, 12, 0);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (561, 286, 13, 1);
INSERT INTO OptionsToQuestions (Id, IdQuestion, IdOption, Flagged) VALUES (562, 286, 14, 1);
