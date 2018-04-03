# Práctica Markdown

### Instal·lació dels paquets: 

	dnf -y install pandoc texlive git gitg meld

### Conversió de documents amb pandoc

Utilitzant pandoc converteix qualsevol exemple de MarkDown a HTML, PDF, ODT, etc.

1.Amb un document exemple amb format markdown, convertir-lo als formats indicats: 

Exemples de sintaxis pandoc: 

	pandoc -o sortida.html input.md
	pandoc -t odt -o sortida.odt input.md
	pandoc -o sortida pdf input.md
	pandoc -t latex -o sortida.pdf input.md
	pandoc -t latex --toc -o sortida.pdf input-md
	
Conversió dels fitxers: 

	A HTML: 
		pandoc -o ldap_html.html teoria_ldap.md 
	A ODT: 
		pandoc -t odt -o ldap_odt.odt teoria_ldap.md 
	A PDF: 
		pandoc -o ldap_pdf.pdf teoria_ldap.md	
	A PDF (altres opcions):
		pandoc -t latex -o ldap_pdf2.pdf teoria_ldap.md

Explora el repositori de GitHub fadado/gitet. En particular, fes una còpia local tal com s’indica més avall i visita la presentació sobre MarkDown del directori slides.

Instal·lació dels plugins markdown al geany: 

	dnf -y install geany-plugins-markdown

***

Còpies: 

	[isx41536245@i14 M09]$ mkdir GitHub
	[isx41536245@i14 M09]$ cd GitHub/
	[isx41536245@i14 GitHub]$ git clone https://github.com/fadado/gitet.git
	Cloning into 'gitet'...
	remote: Counting objects: 72, done.
	remote: Total 72 (delta 0), reused 0 (delta 0), pack-reused 72
	Unpacking objects: 100% (72/72), done.
	Checking connectivity... done.
	[isx41536245@i14 GitHub]$ ^C
	[isx41536245@i14 GitHub]$ git clone https://github.com/fadado/literate.git
	Cloning into 'literate'...
	remote: Counting objects: 81, done.
	remote: Compressing objects: 100% (27/27), done.
	remote: Total 81 (delta 48), reused 81 (delta 48), pack-reused 0
	Unpacking objects: 100% (81/81), done.
	Checking connectivity... done.

Si et decideixes a editar el contingut li pots corregir l’ortografia amb aquesta eina:

	sudo yum -y install aspell aspell-ca

i ordres com ara aquesta:

	aspell --lang=ca check README.md
***

	sudo yum -y install git pandoc make
	git clone https://github.com/fadado/gitet.git
	cd gitet
	make

El make executa Makefile: crea els fitxers html dintre de la carpeta slides. 
Si els esborrem i tornem a executar la comanda make veiem que es creen els dos fitxers de nou: 

	[isx41536245@i14 gitet]$ rm -rf slides/*.html
	[isx41536245@i14 gitet]$ ll slides/
	total 48
	-rw-r--r-- 1 isx41536245 hisx2 34814 Mar 12 12:06 end.jpg
	-rw-r--r-- 1 isx41536245 hisx2  9555 Mar 12 12:06 monday.jpg
	[isx41536245@i14 gitet]$ make
	[isx41536245@i14 gitet]$ ll slides/
	total 96
	-rw-r--r-- 1 isx41536245 hisx2 34814 Mar 12 12:06 end.jpg
	-rw-r--r-- 1 isx41536245 hisx2 21749 Mar 12 12:32 git.html
	-rw-r--r-- 1 isx41536245 hisx2 21044 Mar 12 12:32 markdown.html
	-rw-r--r-- 1 isx41536245 hisx2  9555 Mar 12 12:06 monday.jpg

#### Gitet

- _Gitet_ és un petitet primer contacte amb Git i el seu ecosistema
- _Gitet_ consta de dues presentacions:
    1. **Git i el seu ecosistema**
    2. **Markdown**
- _Gitet_ està disponible en un repositori de [GitHub](https://github.com/fadado/gitet) i un de [GitLab](https://gitlab.com/jordinas/gitet/)
- _Gitet_ està escrit amb [Markdown](http://daringfireball.net/projects/markdown/) i generat amb [Pandoc](http://pandoc.org/)
- _Gitet_ és un exemple de la filosofia [Eating your own dog food](https://en.wikipedia.org/wiki/Eating_your_own_dog_food)

#### Què és Git?

>- _Git_ és un gestor de continguts,
>- una mena de sistema de fitxers en el [userspace](https://en.wikipedia.org/wiki/User_space),
>- que resulta ser un excel·lent gestor de codi font ([SCM](https://en.wikipedia.org/wiki/Version_control))
>- i que ha generat tot un ecosistema de serveis al seu voltant.

#### Alternatives a Git

Podem considerar aquestes alternatives com totalment _deprecated_.

- [Mercurial](https://mercurial.selenic.com/)
- [CVS](http://www.nongnu.org/cvs/)
- [Subversion](https://subversion.apache.org/)
- [SourceForge](http://sourceforge.net/)

#### És Git realment important?

- Mira per exemple aquesta [comparativa](http://tinyurl.com/nr6grb3) a Google Trends
- O el que li ha passat a [Google Code](http://www.engadget.com/2015/03/13/google-code-closing/)
- O la llista de [publicacions](http://tinyurl.com/pn79lgc) a Amazon

------------------------------------------------------------------------

#### Documentació sobre Git

- [The simple guide. no deep shit ;)](http://rogerdudler.github.io/git-guide/)
- [Tutorials a Atlassian](https://www.atlassian.com/git/tutorials/)
- [Pro Git Book](http://git-scm.com/)
- [Git Internals](http://opcode.org/peepcode-git.pdf)
- [Diversos tutorials](http://git-scm.com/doc/ext)
- [Git Flow](http://nvie.com/posts/a-successful-git-branching-model/)
- &c.

------------------------------------------------------------------------

#### Software a usar

A executar en un terminal com _root_:

    yum -y install git
    yum -y install tig gitk gitg
    yum -y install meld
    yum -y install etckeeper

------------------------------------------------------------------------

#### Configuració personal de Git

A executar en un terminal (edita el nom i email de l&rsquo;usuari):

    git config --global user.email <juanpalomo@...>
    git config --global user.name <juanpalomo>
    git config --global color.ui true
    git config --global color.status auto
    git config --global color.branch auto
    git config --global core.editor vim
    git config --global diff.tool meld
    git config --global merge.tool meld
    git config --global merge.conflictstyle diff3
    git config --global mergetool.prompt false

------------------------------------------------------------------------

#### Què veurem?

- Repositoris locals, a [GitHub](https://github.com/) o [GitLab](https://gitlab.com/)
- Backup de [projecte personal](https://gitlab.com/jordinas/gitet)
- Backup de `/etc` amb [etckeeper](http://etckeeper.branchable.com/)
- Preparació i publicació de [llibres](https://github.com/leandono/librojquery)
- Backup de [fitxers de configuració](https://gitlab.com/jordinas/dotfiles)
- Flux de treball per desenvolupadors ([nvie](http://nvie.com/posts/a-successful-git-branching-model/), [atlassian](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow))
- Wiki estàtic
- Documentació de projectes de software
- &c.

------------------------------------------------------------------------

#### Cicle de treball amb Git

    # Crear directori de projecte
    mkdir PROJECTE; cd PROJECTE
    git init

    # Crear fitxers de text a desenvolupar
    touch FITXER
    git add FITXER

    # Repetir:
        # editar FITXER...
        # si FITXER ok i estable
            git commit -am 'Missatge'
        # si caos absolut
            git checkout FITXER


### Gestionar repositoris amb git

**Tutorial Git**

1. Creem el nou repositori de git: 

		[isx41536245@i14 tmp]$ cd github/
		[isx41536245@i14 github]$ git init
		Initialized empty Git repository in /var/tmp/github/.git/

2. Crear un fitxer de proves i afegir-lo a l'índex de git: 

		[isx41536245@i14 github]$ git add fitxer
		[isx41536245@i14 github]$ git status
		On branch master

		Initial commit

		Changes to be committed:
		  (use "git rm --cached <file>..." to unstage)

			new file:   fitxer

3. Afegir els fitxers en el head de git usant **commit**: 

		[isx41536245@i14 github]$ git commit -m 'nous fitxers'
		[master (root-commit) ec96c57] nous fitxers
		 3 files changed, 0 insertions(+), 0 deletions(-)
		 create mode 100644 fitxer
		 create mode 100644 fitxer2
		 create mode 100644 fitxer3

Ara els arxius están inclosos en el HEAD però encara no es troben en el nostre repositori remot. 

4. Enviar els canvis: per enviar aquests canvis al nostre repositori remot ejecutem la següent comanda: 
















