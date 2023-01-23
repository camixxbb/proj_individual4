# proj_individual4
Projeto Individual do Módulo 4 do curso Programadores Cariocas: Sistema Resilia
<br>
<br>
Objetivo: Montar um banco de dados com as seguintes identidades iniciais: cursos, turmas e alunos e responder à três perguntas.

 (つ✧ω✧)つPerguntas e Respostas:
 <br>
 Existem outras entidades além dessas três? Sim! Foram adicionadas às entidades Professores e Salas.
 <br>
 <br>
☆*:.｡.o(≧▽≦)o.｡.:*☆ 
<br>
<br>
 Quais são os principais campos e tipos? 
   („• ᴗ •„) Cursos => CodCurso(PRIMARY KEY, INT), Turno(VARCHAR), CodProf(FOREIGN KEY, INT), NomeCurso (VARCHAR)
   <br>
   („• ᴗ •„) Professores => CodProf(PRIMARY KEY, INT), Nome(VARCHAR), Cpf(VARCHAR), Endereço(VARCHAR),Especializacao(VARCHAR)
   <br>
   („• ᴗ •„) Turmas => CodTurma(PRIMARY KEY, INT), CodCurso(FOREIGN KEY, INT), CodProf(FOREIGN KEY, INT), Turno(VARCHAR),DataInicio(DATE),DataConclui(DATE)
   <br>
   („• ᴗ •„) Alunos => CodAluno(PRIMARY KEY, INT), Nome(VARCHAR), Cpf(VARCHAR),NascData(DATE), Endereço(VARCHAR),CodTurma(FOREIGN KEY, INT)
   <br>
   („• ᴗ •„) Salas => CodSala(PRIMARY KEY, INT),CodTurma(FOREIGN KEY, INT),Turno(VARCHAR)
   <br>
   <br>
 ☆*:.｡.o(≧▽≦)o.｡.:*☆  
 <br>
 <br>
 Como essas entidades estão relacionadas? A entidade CURSOS está relacionada à entidade PROFESSORES; a entidade TURMAS está relacionada à CURSOS e PROFESSORES; a entidade ALUNOS está relacionada à TURMAS; a entidade SALAS esrá relacionada à TURMA.
  <br>
   <br>
 ☆*:.｡.o(≧▽≦)o.｡.:*☆  
