import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'princeton_model.dart';
export 'princeton_model.dart';

class PrincetonWidget extends StatefulWidget {
  const PrincetonWidget({super.key});

  @override
  State<PrincetonWidget> createState() => _PrincetonWidgetState();
}

class _PrincetonWidgetState extends State<PrincetonWidget> {
  late PrincetonModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrincetonModel());

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
            ' A Princeton-Microsoft project is tracing the digital fingerprints of disinformation ',
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
                              'assets/images/jo38jqxe.jpg',
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
                                'Ann Applebaum',
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
                                  '3 Months Ago - 3 Min Read',
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
                          'assets/images/MisinformationBattle2600x1600_b.jpg',
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
                    'With reports of foreign interference during the 2016 presidential election campaign still circulating in the media and in political and academic circles.',
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
                                '#disinformation',
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
                    'That idea evolved into “Defending Democracy: Civil and Military Responses to Weaponized Information\n\n(Link is external).” The April 7, 2018, Veterans Summit featured national speakers from the military, law, computer science, policy, journalism and social science.  Washington Post foreign affairs columnist David Ignatius, delivering opening remarks, dubbed the conference the “Davos of disinformation.”\n\nAs Shapiro recalled, the conference burnished his belief that misinformation would be a huge factor in the 2018 elections. But how to track it?\n\n“We realized there was a basic piece of technology that we wanted to try and build,” said Shapiro, who directs the Princeton-based Empirical Studies of Conflict Project\n\n(Link is external) (ESOC), a multi-university consortium that compiles and analyzes data on politically motivated violence.\n\nShapiro asked Coleen Burrus, University director of corporate engagement and foundation relations, if her team could find a company interested in collaborating on the project. Richard “Chip” Hay Jr., Princeton’s senior associate director for corporate relations, had an idea and introduced Shapiro to a contact at Microsoft Corp.\n\nDisinformation campaigns were very much on the minds of executives and researchers at Microsoft when they formed the company’s Democracy Forward Initiative. This team has two key pillars: advancing open and secure democratic processes and contributing to a healthy information ecosystem. Furthering a healthier exchange of accurate information means, in part, combatting rampant mis- and disinformation. In particular, Microsoft was aiming to root out bad actors trying to game search engine results and abuse advertising networks to propagate their misinformation.\nNathan Evans\n\nNathan Evans. Photo courtesy of Nathan Evans\n\nEventually, the Princeton and Microsoft programs converged to examine the digital fingerprints of misinformation generated by foreign trolls, detecting patterns that enable researchers to smoke out subsequent campaigns.\n\n“That was the start of the relationship,” Shapiro said. Princeton connected to the Democracy Forward project within Microsoft’s Corporate, External and Legal Affairs division, as well as Nathan Evans, a team lead studying misinformation within the Special Projects group at Microsoft Research.\n\n“We wanted to understand, does the industrialized production of disinformation leave a clear signature? Can I find the things they’re doing tomorrow?”\n\nThe answer, Shapiro said, had to be yes.\nBuilding the tool\n\nWith funding from Microsoft, Shapiro and then-postdoctoral associate Meysam Alizadeh teamed up to develop a tool to analyze the linguistics and timing of social media posts and compare their source URLs with other troll accounts. With co-authors Cody Buntain of the Department of Informatics at the New Jersey Institute of Technology and Joshua Tucker at the Department of Politics and Center for Social Media and Politics at New York University, the team focused on tracking Chinese, Russian and Venezuelan troll activity targeting the United States on Twitter as well as Russian influence efforts on Reddit. The data were drawn from publicly available English-language material from January 2015 to 2018.\n\nThe study’s findings were reported in ScienceAdvances\n\n(Link is external) in July 2020.\n\n“The same features that make social media useful to activists — low barriers to entry, scalability, easy division of labor, and freedom to produce media targeted at any given country from almost anywhere in the world — also render it vulnerable to industrialized manipulation campaigns by well-resourced actors, including domestic and foreign governments,” the authors wrote.\n\n“Industrialized production of influence campaign content leaves a distinctive signal in user-generated content that allows tracking of campaigns from month to month and across different accounts,” the paper concluded.\n\nMicrosoft’s Evans described the close collaboration with Shapiro as a “fruitful partnership,” lauding the professor for bringing a rigorous approach to the work. “Microsoft Research has a mission to advance the state of computer science,” Evans said. “The academic angle is important as well.”\n\nSaid Shapiro, “We’ve just had this very productive relationship that involves both trying to identify research projects that can only be executed jointly … as well as generally brainstorming around things that can be done analytically or technologically to address misinformation.”\nPowered by students\n\nThe Shapiro-Microsoft collaboration took a turn in early 2020 as the coronavirus began raging around the globe: it was time to pivot.\n\n“When COVID hit, I was traveling overseas, completely out of contact with the world, literally on a boat in the middle of the ocean,” recalled Shapiro. He and his family returned home as the world was starting to shut down.\n\nGetting back to work, Shapiro was on a regular call with Microsoft collaborators when they mentioned they were seeking help in rooting out misinformation on COVID. The idea was to take the tools used for studying political disinformation and apply them to the chaotic information stream on the coronavirus.\n\n“As the world’s shutting down, we have students who speak a lot of different languages who are going to have a lot of time on their hands,” Shapiro noted. “One thing we could do was pull together a group of them to get after this problem and start collecting data on it.”\n\nWithin a few weeks, Shapiro gathered a diverse group of students from Princeton and other colleges and universities involved in ESOC, many of them who had scattered to their home states and countries as campuses shut down.\n\nShapiro said he realized that putting the students to work would give them “a strong sense of agency, a sense that they can contribute to (solving) this problem at this time when the whole world is getting reorganized.”\n\nThe students monitored news media reports and social media posts, and the data were collected and sent to Microsoft daily. By December 2020, the students had recorded more than 5,600 misinformation stories from more than 80 countries, in 35 languages.\n\n“That has since led to a series of publications that students have contributed to,” he said. In the Bulletin of the Atomic Scientist, for example, the ESOC group reported on June 17: “(I)n Russia, which has a long-standing state-sponsored disinformation sector\n\n(Link is external), the vast majority of the 171 stories we recorded appeared to come from state-sponsored sources, with nearly 70 percent seeking to undermine institutions in rival countries and the West.”\n\nThe report continued, “A key takeaway of our research is that misinformation is being identified and debunked at the grassroots level by civil society organizations all over the world.”\n\nShapiro is a co-author with ESOC participants Isra Thange, a member of Princeton’s Class of 2022, and Samikshya Siwakoti, a graduate student at Columbia University.\n\nShapiro said his collaborators at Microsoft were extremely enthusiastic about the data being gathered. “Ultimately it was about addressing a public policy problem together,” he said.\n\nThat joint approach to problem-solving for the public good is fully in sync with the University’s unofficial motto, “Princeton in the nation’s service, and the service of humanity.” The joint approach also matches well with the ethos of Microsoft’s Democracy Forward Initiative.\n\n“We’re coalition builders,” Evans said. “We’re looking to bring together groups of people who can solve problems.”\n\nShapiro referred to colleagues at Microsoft Research as the company’s “internal good ideas fairies,” who bring challenges and opportunities for product developers. He enjoys the continuous interactions with them.\n\n“We’ve just had this very productive relationship that involves both trying to find research projects that can only be executed jointly … as well as generally brainstorming around things that can be done analytically or technologically to address misinformation,” Shapiro said. “Those conversations serve to help us better select research projects and research directions than would otherwise be the case,” Shapiro continued. “We learn about some of the barriers, in particular the barriers to scaling certain concepts or processes, which are sometimes related to things we would never think about.”\n\nSaid Shapiro, “It’s really been quite synergistic.”',
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
