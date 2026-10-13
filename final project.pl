% MEDICAL DIAGNOSIS EXPERT SYSTEM

% Disease Knowledge Base

disease(influenza, [fever, cough, sore_throat, headache]).
disease(common_cold, [sneezing, nasal_congestion, sore_throat, cough]).
disease(migraine, [headache, photophobia, nausea, vomiting]).
disease(gastroenteritis, [nausea, vomiting, abdominal_pain, diarrhea]).

% List of Symptoms

symptoms([
    fever, cough, sore_throat, nasal_congestion,
    sneezing, headache, photophobia, nausea,
    vomiting, abdominal_pain, diarrhea
]).

% Ask Symptoms from User

ask([], []).

ask([S|T], Selected) :-
    write('Do you have '),
    write(S),
    write('? (yes/no): '),
    read(A),
    ask(T, R),
    (
        A == yes
        ->
        Selected = [S|R]
        ;
        Selected = R
    ).

% Count Matching Symptoms

matches([], _, 0).

matches([H|T], Symptoms, N) :-
    member(H, Symptoms),
    matches(T, Symptoms, N1),
    N is N1 + 1.

matches([H|T], Symptoms, N) :-
    \+ member(H, Symptoms),
    matches(T, Symptoms, N).

% Diagnose Disease

diagnose(Symptoms, Disease, Score) :-
    disease(Disease, Required),
    matches(Required, Symptoms, Score),
    Score >= 1.

% Display Results

show_results(Symptoms) :-
    nl,
    write('===== DIAGNOSIS RESULT ====='), nl,
    write('Reported Symptoms: '),
    write(Symptoms), nl,
    findall(
        Disease-Score,
        diagnose(Symptoms, Disease, Score),
        Results
    ),
    display_assessment(Results).

% Display Assessment: No Matches

display_assessment([]) :-
    nl,
    write('ASSESSMENT NOTICE'), nl,
    write('No matching symptoms were identified.'), nl,
    write('Please consult a qualified healthcare professional.'), nl.

% Display Assessment: Sufficient Matches

display_assessment(Results) :-
    has_two_or_more(Results),
    !,
    nl,
    write('POSSIBLE CONDITIONS (RULE-BASED MATCHES)'), nl,
    print_conditions(Results),
    nl,
    write('Note: This is an educational screening result,'), nl,
    write('not a confirmed medical diagnosis.'), nl,
    write('Consult a qualified healthcare professional.'), nl.

% Display Assessment: Insufficient Matches

display_assessment(_) :-
    nl,
    write('ASSESSMENT NOTICE'), nl,
    write('Insufficient symptom matches to generate'), nl,
    write('a possible condition.'), nl,
    write('Please provide additional symptom information'), nl,
    write('or consult a qualified healthcare professional.'), nl.

% Check for Any Disease with 2 or More Matches

has_two_or_more([_-Score|_]) :-
    Score >= 2,
    !.

has_two_or_more([_|T]) :-
    has_two_or_more(T).

% Display Only Conditions with 2 or More Matches

print_conditions([]).

print_conditions([Disease-Score|T]) :-
    Score >= 2,
    !,
    write(Disease),
    write(' - Matching Symptoms: '),
    write(Score), nl,
    print_conditions(T).

print_conditions([_|T]) :-
    print_conditions(T).

% Main Program

start :-
    nl,
    write('=============================='), nl,
    write(' MEDICAL DIAGNOSIS SYSTEM'), nl,
    write('=============================='), nl,
    write('Answer yes or no.'), nl,
    symptoms(All),
    ask(All, Selected),
    show_results(Selected).