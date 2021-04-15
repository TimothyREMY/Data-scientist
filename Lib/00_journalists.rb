
    def number_journalists (journalists)
        puts ""
        puts "Le nombre de journalistes qui parlent mal de notre guide suprême est de #{journalists.count}"
        menu_bis (journalists)
    end

    def handle_min (journalists)
        handle_min = journalists.sort_by{|journalists| journalists.length }[0]
        puts ""
        puts "Le nom du journaliste parlant mal de notre parti avec le plus petit nombre de caractères est #{handle_min}, il y a #{handle_min.length} caractères dans son nom, ce qui est ridicule..."
        menu_bis (journalists)
    end

    def handle_5 (journalists)
        handle_5 = journalists.select {|journalists| journalists.length == 6}
        puts ""
        puts "Le nombre de journalistes qui se disent << objectifs >> ayant un nom de 5 caractères est de #{handle_5.count}"
        
        menu_bis (journalists)
    end

    def majuscule (journalists)
        puts ""
        majuscule = journalists.grep(/@[A-Z]/).length
        puts "Le nombre de journalistes, donnant des Fake News, qui ont un nom commençant par une majuscule est de #{majuscule}"
        menu_bis (journalists)
    end

    def alphabet (journalists)
        puts ""
        alphabet = journalists.sort_by {|journalists| journalists.downcase}
        puts "Voici la liste par ordre alphabétique des journalistes menaçant notre ordre :"
        puts alphabet
        menu_bis (journalists)
    end

    def size (journalists)
        puts ""
        size = journalists.sort_by{|journalists| journalists.length}
        puts "Voici la liste par ordre de taille des journalistes menaçant notre ordre :"
        puts size
        menu_bis (journalists)
    end

    def position (journalists)
        puts ""
        position = journalists.find_index("@epenser")
        puts "E-penser est leur chef, sa position est à la position n°#{position}"
        menu_bis (journalists)
    end


    def repartition (journalists)
        puts ""
        handle_max = journalists.max_by{|journalists| journalists.length}
        handle_max_length = handle_max.length + 1
        puts handle_max
        puts handle_max_length

        puts "Voici la liste repartissant ces ignobles journalistes par nombre de caractères :"
        handle_max_length.times do |i|
        list_size = journalists.select{|journalists| journalists.length == i}
            if list_size != []
            
            puts "La liste de ces crapules avec #{i - 1} caractères dans leurs maudits noms :
             #{list_size}"
            puts " "
            end
        end 
   
        menu_bis (journalists)
    end


    def menu (journalists)
        puts "Bienvenue dans notre logiciel de contrôle de masse et de propagande !"
        puts "Nous avons répertorié les journalistes sur Twitter qui ont critiqué le parti."
        puts "Vous pouvez avec ce logiciel, les compter, les classer et bien des choses. Pour cela veuillez consulter notre menu et entrer le numéro correspondant à l'information que vous souhaitez avoir."
        puts ""
        puts "Avez-vous compris jusque-là les consignes ci-dessus ? Si oui, dites Oui "
        puts ">"
        oui = gets.chomp

        while oui != "Oui"
        puts "Avez-vous compris jusque-là les consignes ci-dessus ? Si oui, dites Oui"
        oui = gets.chomp
        end
        puts ""
        puts "Nous vous félicitons d'avoir compris"
        menu_bis(journalists)
    end

    def menu_bis(journalists)
        puts ""
        puts "Voici notre menu :"
        puts "      Pour compter les journalistes qui sont nos ennemis, tapez 1."
        puts "      Pour le journaliste avec le nom le plus court, tapez 2."
        puts "      Pour répertorier les journalistes ayant un nom de 5 caractères, tapez 3."
        puts "      Pour compter les journalistes ayant une majuscule comme première lettre, tapez 4."
        puts "      Pour répertorier les journalistes par ordre alphabétique, tapez 5."
        puts "      Pour répertorier les journalistes par ordre de taille, tapez 6."
        puts "      Pour repérer la position du chef de ces journalistes dans notre base de données, tapez 7."
        puts "      Pour avoir des listes selon la taille du nom de ces saletés de journalistes, tapez 8."
        puts "      Pour quitter notre superbe logiciel, tapez 9."
        puts ">"
        user_choice = gets.chomp.to_i
        if user_choice == 1
            number_journalists (journalists)
            
        elsif user_choice == 2
            handle_min (journalists)
            
        elsif user_choice == 3
            handle_5 (journalists)
            
        elsif user_choice == 4
            majuscule (journalists)
            
        elsif user_choice == 5
            alphabet (journalists)
            
        elsif user_choice == 6
            size (journalists)
            
        elsif user_choice == 7
            position (journalists)
            
        elsif user_choice == 8
            repartition (journalists)
            
        elsif user_choice == 9
            exit
        else 
            puts "Veuillez sélectionner un des choix du menu"
            menu_bis
        end
    
    end
journalists = ["@jcunniet","@PaulLampon","@Aziliz31","@ssoumier","@marionsouzeau","@gaellombart","@bendarag","@AurelieLebelle","@julienduffe","@thomaspoupeau","@LilyRossignol","@ClairGuedon","@stephanieauguy","@claw_prolongeau","@_JulieMenard","@LColcomb","@Zlauwereys","@MeLonguet","@DorotheeLN","@NolwennCosson","@ADaboval","@Remibaldy","@bderveaux","@amandechap","@ELODIESOULIE","@nbongarcon","@HeloAb","@Panamorama","@gregplou","@BenoitBerthe","@LauraBruneau89","@Anthony_Lieures","@Sharonwaj","@mcsonkin","@pverduzier","@emiliel3","@Julien_MARION","@SophiFay","@bdelombre","@annalecerf","@AdriaBudry","@DejNikolic","@iJaffre","@CyrusleVirus","@GPardigon","@e_vallerey","@IsabelleSouquet","@AudeDavidRossi","@Yoann_Pa","@CeliaPenavaire","@perraultvincent","@cboulate","@JustineWeyl","@Paulinejacot","@juliechab","@aslechevallier","@phnou","@Seb_Pommier","@Alex_Bensaid","@GuillaumeGaven","@annelaurechouin","@Oliviader","@guerricp","@JMMarchaut","@cyceron","@gregory_raymond","@vhunsinger","@l_peillon","@fannyguinochet","@EAssayag","@KibweAdom","@YvonHerry","@JohanGarciajg","@saidlabidi","@lauranneprov","@LeaDavy","@francois_remy","@CGuicheteau","@FloMaillet","@m_perroud","@oBrunet_TSMF","@MoonVdc","@jc2taille","@NellyMoussu","@VirginK","@b_misa","@FabriceCouste","@barbara_prose","@lelia2m","@brunoaskenazi","@laurenechamp","@ysisbox","@juliengagliardi","@PierreLel","@kdeniau","@_TerraInc","@DominicArpin","@antoinfonteneau","@nanotousch","@jb_roch","@YaniKhezzar","@Anne_Bechet","@NCapart","@SamyBenNaceur","@Joumany","@Julietteraynal","@TGiraudet","@SaraTanit","@HappeFrederic","@antoinellorca","@michelpicot","@Sev_Ryne","@bobdobolino","@murdever","@YGrandmontagne","@Mnyo","@EdKOSCIANSKI","@tnoisette","@jankari","@delbello_rom","@rflechaux","@NadiaSorelli","@IT_Digital","@abarbaux","@PhilippeLeroy","@schaptal","@marionspee","@lisavignoli","@ChloeAeberhardt","@MartineJacot","@JuliaPascualita","@curieusedetout","@sgraveleau","@bif_o","@ElisaPineau","@zinebdryef","@apiquard","@pierrehaski","@StephanieDelmas","@Blandine_Garot","@vergara_i","@evan_lebastard","@SophieVclt","@OlivierLevrault","@alicedorgeval","@LouiseMalnoy","@alix_fx","@pierre_baudis","@LucMagoutier","@AgatheMuller","@SGianninelli","@PaulineBoyer33","@NaomiHalll","@romaindlx","@marionbr","@Burtschy","@JacobEtienne","@as_lizzani","@marie_simon","@LaureDaussy","@FabriceAmedeo","@min","@LoubnaChlaikhy","@PlummerWilliam","@OlivierMarin1","@alaurefremont","@mwesfreid","@ChBaDe","@pmathon","@theobaldmarie","@Lnpagesy","@marclandre","@paoliniesther","@Feertchak","@JBLitzler","@GuillaumeErrard","@quentinperinel","@TristanQM","@mlbo","@constancejamet","@LoraTerrazas","@emiliegeffray","@Mathilde_Sd","@CaroPiquet","@DCanivez","@TIM_7375","@blandinelc","@ivanrioufol","@arthurberdah","@SarahLecoeuvre","@guillaume_gui","@DamienMercereau","@W_Chloe","@Assma_MD","@EugenieBastie","@HiTech_lexpress","@bcondominas","@Laurie_Z_","@jeanfrancgerard","@MathieuPagura","@BGUYF","@AlainPiffaretti","@AudreyKucinskas","@julienhory","@Pierrefalga","@TiphThuillier","@cdaniez","@LigerBaptiste","@D_Peras","@julie_dlb","@Fatiha_Temmouri","@julian2lamancha","@GaetaneDeljurie","@JulianMattei","@M_Vicuna","@DeBruynOlivier","@Nehed_Jendoubi","@antoine_grenapi","@ColonnaGen","@VictoriaGairin","@Clement_Lacombe","@TVigoureux","@MargauxObriot","@solinedelos","@RocheSabine","@dangerkens","@EdouardDutour","@MDondeyne","@DupuisNathalie1","@bouscarel","@Mathieu2jean","@Sophie_T_J","@laurentcalixte","@patrockwilliams","@PascaleKremer","@AlexJaquin","@LauraIsaaz","@cath_robin","@Del_Gautherin","@Isaduriez","@lucietuile","@AugeyBastien","@mcastagnet","@AminaKalache","@mvaudano","@CParrot","@ombelinetips","@_JoinLion","@BarbolosiRose","@ToiBruno1","@FloraClodic","@xjbdx","@ceci_est_un_handle_vraiment_long","@AlexiaEy","@Emjy_STARK","@elcoco01","@rabilebon","@pflovens_","@FabriceFrossard","@MorganeSERRES","@MarjolaineKoch","@edgarsnow","@SRNLF","@CChassigneux","@KerinecMoran","@NassiraELM","@NewsRicard","@Sandreene","@Emilezrt","@Pierre_Do","@Micode","@CColumelli","@DavidAbiker","@ClementBergantz","@benjaminrabier","@celinekallmann","@edwyplenel","@C_Barbier","@JJBourdin_RMC","@LaurenceFerrari","@aslapix","@IsaMillet","@MaximeSwitek","@tomjoubert","@jszanchi","@roqueeva","@XavierBiseul","@florencesantrot","@AntoineCrochet","@freeman59","@MaudeML","@philippe_gulpi","@mathieum76","@kiouari","@imanemoustakir","@BenedicteMallet","@Emilie_Brouze","@antoinebarret","@_nicolasbocquet","@remibuhagiar","@CourretB","@AymericRobert","@miraelmartins","@pmaniere","@jesuisraphk","@David_Ingram","@pcelerier","@technomedia","@Geraldinedauver","@ThierryLabro","@Newsdusud","@nrauline","@gbregeras","@SCouasnonBFM","@actualites_nrv","@dimitrimoulins","@oli_aura","@FabieChiche","@Vincent_Raimblt","@ChristophGreuet","@PAlbuchay","@MarrauddesGrot","@vtalmon","@cedric","@olivierfrigara","@Julien_Jay","@LydiaBerroyer","@Shuua","@datisdaz","@Steuph","@ameliecharnay","@Bruno_LesNums","@LelloucheNico","@CciliaDiQuinzio","@Elodie_C","@SylvRolland","@Kocobe","@FL_Debes","@jdupontcalbo","@GarciaVictor_","@NicoRichaud","@RHoueix","@simottel","@DamienLicata","@annabelle_L","@Lea_Lejeune","@axel_deb","@marin_eben","@ptiberry","@MatthieuDelach","@sandrinecassini","@benjaminferran","@ppgarcia75","@NotPatrick","@ivalerio","@FabienneSchmitt","@alexgoude","@JeromeColombain","@manhack","@Capucine_Cousin","@Fsorel","@oliviertesquet","@marjoriepaillon","@ginades","@PierreTran","@DelphineCuny","@reesmarc","@lauratenoudji","@ldupin","@carolinedescham","@Lucile_Quillet","@cgabizon","@Allocab","@epenser","@JAGventeprivee","@frwrds","@Laure__Bourdon","@Xavier75","@maximeverner","@s_jourdain","@LoriHelloc"]

menu (journalists)