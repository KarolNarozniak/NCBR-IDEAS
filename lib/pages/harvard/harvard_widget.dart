import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'harvard_model.dart';
export 'harvard_model.dart';

class HarvardWidget extends StatefulWidget {
  const HarvardWidget({super.key});

  @override
  State<HarvardWidget> createState() => _HarvardWidgetState();
}

class _HarvardWidgetState extends State<HarvardWidget> {
  late HarvardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HarvardModel());

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
              context.pushNamed('AllStories');
            },
          ),
          title: Text(
            'A quantum world on a silicon chip',
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
                              'assets/images/4v5wo0-9.jpg',
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
                                'Zhu Hang',
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
                          'assets/images/DiodeArt_1.png',
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
                    'Researchers develop a platform to probe, control qubits in silicon for quantum networks ',
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
                                '#quantum computers',
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
                    '\n\nThe quantum internet would be a lot easier to build if we could use existing telecommunications technologies and infrastructure. Over the past few years, researchers have discovered defects in silicon — a ubiquitous semiconductor material — that could be used to send and store quantum information over widely-used telecommunications wavelengths. Could these defects in silicon be the best choice among all the promising candidates to host qubits for quantum communications?\n\n\"It’s still a Wild West out there,” said Evelyn Hu, the Tarr-Coyne Professor of Applied Physics and of Electrical Engineering at the Harvard John A. Paulson School of Engineering and Applied Sciences (SEAS). “Even though new candidate defects are a promising quantum memory platform, there is often almost nothing known about why certain recipes are used to create them, and how you can rapidly characterize them and their interactions, even in ensembles. And ultimately, how can we fine-tune their behavior so they exhibit identical characteristics? If we are ever to make a technology out of this wide world of possibilities, we must have ways to characterize them better, faster and more efficiently.”\n\nNow, Hu and a team of researchers have developed a platform to probe, interact with and control these potentially powerful quantum systems. The device uses a simple electric diode, one of the most common components in semiconductor chips, to manipulate qubits inside a commercial silicon wafer. Using this device, the researchers were able to explore how the defect responds to changes in the electric field, tune its wavelength within the telecommunications band and even turn it on and off.\n\n    \"If we are ever to make a technology out of this wide world of possibilities, we must have ways to characterize them better, faster and more efficiently.\"\n\n    —Evelyn Hu, Tarr-Coyne Professor of Applied Physics and of Electrical Engineering\n\n“One of the most exciting things about having these defects in silicon is that you can use well-understood devices like diodes in this familiar material to understand a whole new quantum system and do something new with it,” said Aaron Day, a Ph.D. candidate at SEAS. Day co-led the work with Madison Sutula, a research fellow at Harvard.\n\nWhile the research team used this approach to characterize defects in silicon, it could be used as a diagnostic and control tool for defects in other material systems.\n\nThe research is published in Nature Communications.\n\nQuantum defects, also known as color centers or quantum emitters, are imperfections in otherwise perfect crystal lattices that can trap single electrons. When those electrons are hit with a laser, they emit photons in specific wavelengths. The defects in silicon that researchers are most interested in for quantum communications are known as G-centers and T-centers. When these defects trap electrons, the electrons emit photons in a wavelength called the O-band, which is widely used in telecommunications.\n\nIn this research, the team focused on G-center defects. The first thing they needed to figure out was how to make them. Unlike other types of defects, in which an atom is removed from a crystal lattice, G-center defects are made by adding atoms to the lattice, specifically carbon. But Hu, Day and the rest of the research team found that adding hydrogen atoms is also critical to consistently forming the defect.\n\nNext, the researchers fabricated electrical diodes using a new approach which optimally sandwiches the defect at the center of every device without degrading the performance of either the defect or the diode. The fabrication method can create hundreds of devices with embedded defects across a commercial wafer. Hooking the whole device up to apply a voltage, or electric field, the team found that when a negative voltage was applied across the device, the defects turned off and went dark.\n\n“Understanding when a change in environment leads to a loss of signal is important for engineering stable systems in networking applications,” said Day,\n\nThe researchers also found that by using a local electric field, they could tune the wavelengths being emitted by the defect, which is important for quantum networking when disparate quantum systems need to be aligned.\n\nThe team also developed a diagnostic tool to image how the millions of defects embedded in the device change in space as the electric field is applied.\n\n“We found that the way we’re modifying the electric environment for the defects has a spatial profile, and we can image it directly by seeing the changes in the intensity of light being emitted by the defects,” said Day. “By using so many emitters and getting statistics on their performance, we now have a good understanding of how defects respond to changes in their environment. We can use that information to inform how to build the best environments for these defects in future devices. We have a better understanding of what makes these defects happy and unhappy.”\n\nNext, the team aims to use the same techniques to understand the T-center defects in silicon.\n\nThe research was co-authored by Sutula, Jonathan R. Dietz, Alexander Raun from SEAS, and AWS research scientists Denis D. Sukachev and Mihir K. Bhaskar.\n\nThis work was supported by AWS Center for Quantum Networking and the Harvard Quantum Initiative. Harvard’s Office of Technology Development has protected the intellectual property associated with this project and is pursuing commercialization opportunities.\n',
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
