import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'yale_model.dart';
export 'yale_model.dart';

class YaleWidget extends StatefulWidget {
  const YaleWidget({super.key});

  @override
  State<YaleWidget> createState() => _YaleWidgetState();
}

class _YaleWidgetState extends State<YaleWidget> {
  late YaleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => YaleModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'At Yale, new FedEx-supported center to focus on climate change solutions',
            style: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: 'Inter',
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 44.0,
                        height: 44.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).accent1,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'assets/images/6jl7va2N.jpg',
                              width: 44.0,
                              height: 44.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Haily Brown',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 0.0),
                                child: Text(
                                  '3 Days Ago - 5 Min Read',
                                  style: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 240.0,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: Image.asset(
                          'assets/images/ynews-environment-cc.jpg',
                          width: double.infinity,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 0.0, 8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 6.0,
                                sigmaY: 2.0,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  width: 64.0,
                                  height: 64.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Icon(
                                    Icons.document_scanner_outlined,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 44.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Text(
                    'A \$100 million gift from FedEx will help fund a new center at Yale University focused on developing natural solutions for reducing atmospheric carbon.',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Inter Tight',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                        child: Container(
                          height: 32.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).accent1,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: Text(
                                '#colaboration',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                        child: Container(
                          height: 32.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).accent2,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).secondary,
                            ),
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: Text(
                                '#science&technology',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]
                        .divide(const SizedBox(width: 8.0))
                        .addToStart(const SizedBox(width: 16.0))
                        .addToEnd(const SizedBox(width: 16.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Text(
                    'Introduction',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Text(
                    '\n\nA \$100 million gift from FedEx will help fund a new center at Yale University focused on developing natural solutions for reducing atmospheric carbon. The Center for Natural Carbon Capture will support and accelerate research across academic disciplines, helping to establish a more sustainable and healthier future for our planet.\n\nThe center is a key aspect of both Yale’s broader Planetary Solutions Project — a campus-wide effort to develop integrated, powerful solutions to Earth’s climate and biodiversity crises — and the ambitious goal from FedEx to achieve carbon neutral operations globally by 2040.\n\n“At FedEx, we have a responsibility to take action in addressing climate change,” said Frederick W. Smith ’66, chairman and CEO, FedEx Corp. “We have created a roadmap to achieve our carbon neutral goal that includes helping to establish the Center for Natural Carbon Capture. Yale has a deep reservoir of expertise and researchers working on this shared problem, which makes it the ideal place for this important work.”\n\nThe Center for Natural Carbon Capture … epitomizes Yale’s approach to tackling global problems.\n\nPeter Salovey, Yale President\n\n“Yale’s efforts to address climate change build upon a rich history of research on the environment, scholarship with policy implications, and education. Our legacy includes faculty members who have defined their fields, Nobel laureates, and students who have gone on to lead meaningful change around the world,” said Yale President Peter Salovey. “The Center for Natural Carbon Capture is part of this history, and it epitomizes Yale’s approach to tackling global problems — bridging disciplines to foster truly collaborative, innovative problem-solving. I am thrilled that FedEx shares our vision for this important work, and I am deeply thankful for its support.”\nA center for applied research\n\nThe goal of the Center for Natural Carbon Capture will be to develop interventions that enhance the Earth’s abilities to store carbon and other methods that model natural processes. The center will develop a portfolio of natural carbon removal strategies that combines both rapid and long-term approaches.\n\nInitial funding from FedEx will support four new professorships in science and engineering across the Yale School of the Environment (YSE) and the Faculty of Arts and Sciences, as well as postdoctoral fellows and graduate students. It also will provide research funding and essential instrumentation, support Yale’s Environmental Leadership & Training Initiative’s outreach work, and enable Yale to bring together researchers, corporations, policymakers, and others through conferences and events.\n\n“My hope is that others will recognize the scale and importance of this problem and the significance of this center’s mission by joining in our efforts to address a global challenge,” said Smith.\nEnhancing natural solutions\n\nThe path to sustainability will require new strategies for removing carbon dioxide from the atmosphere and safely sequestering it, strategies that balance and maximize how quickly carbon can be absorbed, how much can be contained, and how long it can be stored. Earth absorbs and stores carbon through several natural processes: plants take in carbon dioxide during photosynthesis and store the carbon in biomass, for example, and mineral weathering locks carbon in rocks. Expanding the capacities of these natural processes offers enormous potential for reducing atmospheric carbon. Nature also provides models for capturing carbon dioxide and creating carbon-rich materials that may be stored through industrial processes.\n\n“Developing natural solutions for carbon sequestration is an ambitious but realistic strategy,” said Ingrid C. “Indy” Burke, the Carl W. Knobloch, Jr. Dean of the Yale School of the Environment. “It will have an immense impact on our ability to reduce atmospheric carbon dioxide and mitigate the effects of global warming. Earth’s natural systems are ripe with opportunities, and the Center for Natural Carbon Capture will enable research that transforms these opportunities into real-world, applicable solutions. These natural solutions must be used as part of a portfolio of methods to reduce net greenhouse gas emissions.”\n\nThe Center for Natural Carbon Capture will enable research that transforms … opportunities into real-world, applicable solutions.\n\nIndy Burke, Dean, Yale School of the Environment\n\nEcosystems are one part of Earth’s natural carbon storage system, offering an ability to absorb carbon dioxide quickly. Forested ecosystems have the highest rates of carbon dioxide uptake, but deforestation — often through deliberate burning — contributes substantial quantities of carbon dioxide to the atmosphere. Boosting the amount of carbon that can be stored in Earth’s ecosystems — through reforestation of formerly forested lands, more efficient photosynthesis, and the integration of regenerative agriculture practices, for example — can provide large and immediate increases in carbon sequestration.\n\nThe geological carbon cycle is another method by which Earth stores carbon. Through mineral weathering, carbon dioxide dissolved in water reacts with minerals on Earth’s surface to produce carbonate minerals, which make up rocks such as limestone and marble. Most of the carbon on Earth’s surface is contained in these minerals, which do not decay as plants do.\n\n“Enhancing geological storage of carbon has extensive advantages,” said David Bercovici, the Frederick William Beinecke Professor and chair of Yale’s Department of Earth and Planetary Sciences. “There is essentially a limitless supply of weatherable rocks, and storing carbon in this manner is effectively permanent. Developing these strategies has enormous potential for making a global impact.”\n\nA third aspect of the center, to be supported through additional funding, will focus on ways to mimic Earth’s carbon storage processes through engineered solutions that capture carbon dioxide and convert it into fuels, plastics, and building materials. Carbon dioxide is one of the greatest industrial wastes of our time and, accordingly, reimagining industrial processes to create new methods to store carbon is a substantial opportunity for enhanced carbon storage. Yale scientists aspire to build upon prior work using nature as a model to produce industrial-scale processes for capturing and storing carbon dioxide.\n\nEcosystems absorb carbon quickly but have a lower capacity to store it and they hold onto it for relatively short periods of time. Minerals take longer to absorb carbon but have a tremendous storage capacity and the ability to sequester carbon for extremely long periods of time. Improving both processes — expanding ecosystems’ capacities and speeding up minerals’ carbon absorption — can yield both immediate and long-term gains in carbon sequestration. And finally, chemical and engineering strategies for capturing carbon can be commercialized to achieve them at scale. Together, these three strategies represent a powerful set of potential solutions toward sustainability.\nA multi-disciplinary, campus-wide effort\n\nThe Center for Natural Carbon Capture will unite research endeavors taking place across Yale and focus them on a shared end. It will foster closer connections among researchers in YSE, the Faculty of Arts and Sciences, the School of Engineering & Applied Science, and particularly among key departments such as Earth and planetary sciences, ecology and evolutionary biology, chemistry, and chemical and environmental engineering. Yale is also home to renowned centers and institutes, such as the Center for Green Chemistry & Green Engineering, the Yale Energy Sciences Institute, and the Yale Institute for Biospheric Studies, which represent extensive expertise in the disciplines required to advance these efforts. The Center for Natural Carbon Capture will accelerate, bolster, and broadcast activity across all these areas.\n\nThere is essentially a limitless supply of weatherable rocks, and storing carbon in this manner is effectively permanent.\n\nDavid Bercovici, Chair, Dept. of Earth and Planetary Sciences\n\n“The advantage of this center is that it draws in and bridges the many disciplines and perspectives we need to address this colossal challenge and change the trajectory our planet is on,” said Bercovici.\n\nYale researchers are committed to developing solutions and, importantly, implementing them.\n\nCraig Brodersen, associate professor of plant physiological ecology at YSE, and Erika Edwards, professor of ecology and evolutionary biology, are designing plants that can take in and store more carbon dioxide from the atmosphere, with the ultimate goal of deploying them at large scales — through agriculture, for example. Paul Anastas, the Teresa and H. John Heinz III Professor in YSE and the Yale School of Public Health, is a leader in the field of green chemistry who has both started and advised companies focused on creating sustainable products. Noah Planavsky, associate professor of Earth and planetary sciences, studies the geochemistry of mineral weathering and carbon cycling, and has developed an extensive global database for weathering in a multitude of terrestrial environments. Nilay Hazari, professor of chemistry, is an expert on carbon reuse, and has developed methods by which transition metals are used as catalysts to efficiently convert carbon dioxide to carbon feedstocks for commodity chemicals. Mark Bradford, professor of soils and ecosystem ecology at YSE, is a leading researcher on soil carbon storage and regeneration in agricultural and forested systems. These researchers and many others across Yale’s campus will both expand the number of solutions available and determine how to best implement them at scale.\n\n“Yale has researchers doing groundbreaking work throughout all of the disciplines the Center for Natural Carbon Capture aims to unite,” said Burke. “Increasing carbon capture, storage, and reuse is a complex challenge that Yale is prepared to meet.”\n\nThe center will be a component of Yale’s rapidly growing Planetary Solutions Project, which encompasses three major goals: to mitigate global warming and environmental concerns, adapt to a changing planet, and engage individuals, organizations, and governments to facilitate action. Capturing and storing carbon is a key pillar of the mitigation goal, and the Center for Natural Carbon Capture will be an essential part of that effort, as well as related work in energy efficiency and alternative energy.\n\n“The support we have already seen for the Planetary Solutions Project speaks to the importance and potential of this type of research,” said Yale University Provost Scott Strobel. “The Center for Natural Carbon Capture will be a place for our researchers to bring their big ideas to the same table and work to find meaningful solutions together. The generous gift from FedEx has enabled us to launch the center, and future support will allow us to expand its capacity to innovate and implement solutions.”\n',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ].divide(const SizedBox(height: 12.0)),
            ),
          ),
        ),
      ),
    );
  }
}
