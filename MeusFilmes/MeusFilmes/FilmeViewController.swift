//
//  ViewController.swift
//  MeusFilmes
//
//  Created by Nubio Knupp on 08/01/17.
//  Copyright © 2017 Nubio Knupp. All rights reserved.
//

import UIKit

class FilmeViewController: UITableViewController {
    var filmes : [Filme] = [];
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var descricao = "Uma mensagem enigmática do passado de Bond o envia a uma caçada para descobrir uma organização sinistra. Enquanto M batalha contra forças políticas para manter o serviço secreto vivo, Bond desmascara as fraudes para revelar a terrível verdade por trás de SPECTRE.";
        
        var filme = Filme(titulo:"007 - Spectre", descricao: descricao, imagem: #imageLiteral(resourceName: "filme1"));
        filmes.append( filme );
        
        descricao = "Star Wars é o título de uma franquia de ópera espacial estadunidense criada pelo cineasta George Lucas. A franquia conta com uma série de sete filmes de fantasia científica e um spin-off.";
        
        filme = Filme(titulo:"Star Wars", descricao: descricao, imagem: #imageLiteral(resourceName: "filme2"));
        filmes.append( filme );
        
        descricao = "Um filme de Ken Sanzel com Mickey Rourke, Ryan Kwanten, Freida Pinto, Maruia Shelton. Colt (Freida Pinto) e John (Ryan Kwanten) são pistoleiros, amantes e companheiros num controverso e obscuro mundo de duelos perigosos, e contam com a ajuda um do outro para encontrar e eliminar o assassino do irmão de Colt, vingando assim sua morte.";
        
        filme = Filme(titulo:"Impacto Mortal", descricao: descricao, imagem: #imageLiteral(resourceName: "filme3"));
        filmes.append( filme );
        
        descricao = "Baseado no anti-herói não convencional da Marvel Comics, Deadpool conta a história da origem do ex-agente das Forças Especiais que se tornou o mercenário Wade Wilson. Depois de ser submetido a um desonesto experimento que o deixa com poderes de cura acelerada, Wade adota o alter ego de Deadpool.";
        
        filme = Filme(titulo:"Deadpool", descricao: descricao, imagem: #imageLiteral(resourceName: "filme4"));
        filmes.append( filme );
        
        descricao = "Inspirado em eventos reais, O Regresso é uma experiência cinematográfica imersiva e visceral que capta a épica aventura de um homem por sobrevivência e o extraordinário poder do espírito humano. Em uma expedição pelo desconhecido deserto americano, o lendário explorador Hugh Glass (Leonardo DiCaprio) é brutalmente atacado por um urso e deixado como morto pelos membros de sua própria equipe de caça. Em uma luta para sobreviver, Glass resiste à dor inimaginável, bem como à traição de seu confidente, John Fitzgerald (Tom Hardy). Guiado pela força de vontade e pelo amor de sua família, Glass deve navegar um inverno brutal em uma incessante busca por sobrevivência e redenção.";
        
        filme = Filme(titulo:"O Regresso", descricao: descricao, imagem: #imageLiteral(resourceName: "filme5"));
        filmes.append( filme );
        
        descricao = "Um filme de Kenneth Kainz com Rebecca Emilie Sattrup, Maria Bonnevie, Jakob Oftebro, Peter Plaugborg. Dina (Rebecca Emilie Sattrup) herdou da mãe a habilidade sobrenatural de olhar a alma das pessoas, fazendo com que os observados tenham vergonha. Ela é requisitada para fazer com que o herdeiro de um trono confesse ter assassinado sua família, mas se recusa a usar seu dom para fins malignos e acaba presa, o que faz com que ela precise descobrir quem é o verdadeiro culpado dos crimes para salvar a si própria.";
        
        filme = Filme(titulo:"A Herdeira", descricao: descricao, imagem: #imageLiteral(resourceName: "filme6"));
        filmes.append( filme );
        
        descricao = "Um jovem do F.B.I., Johnny Utah, se infiltra em um grupo de atletas de elite que amam a adrenalina. Liderado pelo carismático Bhodi, o grupo de atletas radicais é suspeito de ter cometido crimes de maneiras incomuns.";
        
        filme = Filme(titulo:"Caçadores de emoção", descricao: descricao, imagem: #imageLiteral(resourceName: "filme7"));
        filmes.append( filme );
        
        descricao = "Assombrado por imagens assustadoras e mensagens inexplicáveis, um homem tenta descobrir o mistério por trás do desaparecimento de seu filho.";
        
        filme = Filme(titulo:"Regresso do mal", descricao: descricao, imagem: #imageLiteral(resourceName: "filme8"));
        filmes.append( filme );
        
        descricao = "Tarzan deixou as florestas da África para viver uma vida pacata como John Clayton III, o Lorde Greystoke, ao lado de sua esposa, Jane, na Inglaterra. Agora, ele é convidado para voltar ao Congo para servir como emissário de troca do Parlamento, sem saber que está se dirigindo para uma armadilha mortal, fruto da vingança do Capitão belga Leon Rom.";
        
        filme = Filme(titulo:"Tarzan", descricao: descricao, imagem: #imageLiteral(resourceName: "filme9"))
        filmes.append( filme );
        
        descricao = "Um filme de Ilya Naishuller com Sharlto Copley, Danila Kozlovsky, Haley Bennett, Dasha Charusha. Henry, um ciborgue recém-ressucitado deve salvar sua esposa/criadora das garras de um tirano psicótico com poderes telecináticos, Akan, e seu exército de mercenários. Lutando ao lado dele, Jimmy é a única esperança de Henry para realizar tal feito até o final do dia.";
        
        filme = Filme(titulo:"Hardcore: Missão Extrema", descricao: descricao, imagem: #imageLiteral(resourceName: "filme10"));
        filmes.append( filme );
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "celulaFilmeId", for: indexPath) as! FilmeCelula;
        let filme = filmes[indexPath.row];
        
        celula.tituloLabel.text = filme.Titulo;
        celula.descricaoLabel.text = filme.Descricao;
        celula.filmeImageView?.image = filme.Imagem;
        
        return celula;
    }


}

