# proj_individual4
Projeto Individual do Módulo 4 do curso Programadores Cariocas: Sistema Resilia
<br>
<br>
Objetivo: Montar um banco de dados com as seguintes identidades iniciais: cursos, turmas e alunos e responder à três perguntas.

 <h3> (つ✧ω✧)つPerguntas e Respostas: <h3>
 Existem outras entidades além dessas três? Sim! Foram adicionadas às entidades Professores e Salas.
☆*:.｡.o(≧▽≦)o.｡.:*☆ 
 Quais são os principais campos e tipos? 
   („• ᴗ •„) Cursos => CodCurso(PRIMARY KEY, INT), Turno(VARCHAR), CodProf(FOREIGN KEY, INT), NomeCurso (VARCHAR)
   („• ᴗ •„) Professores => CodProf(PRIMARY KEY, INT), Nome(VARCHAR), Cpf(VARCHAR), Endereço(VARCHAR),Especializacao(VARCHAR)
   („• ᴗ •„) Turmas => CodTurma(PRIMARY KEY, INT), CodCurso(FOREIGN KEY, INT), CodProf(FOREIGN KEY, INT), Turno(VARCHAR),DataInicio(DATE),DataConclui(DATE)
   („• ᴗ •„) Alunos => CodAluno(PRIMARY KEY, INT), Nome(VARCHAR), Cpf(VARCHAR),NascData(DATE), Endereço(VARCHAR),CodTurma(FOREIGN KEY, INT)
   („• ᴗ •„) Salas => CodSala(PRIMARY KEY, INT),CodTurma(FOREIGN KEY, INT),Turno(VARCHAR)
 ☆*:.｡.o(≧▽≦)o.｡.:*☆  
 Como essas entidades estão relacionadas?
