import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'terms_and_conditions_model.dart';
export 'terms_and_conditions_model.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({super.key});

  static String routeName = 'TermsAndConditions';
  static String routePath = '/TermsAndConditions';

  @override
  State<TermsAndConditionsWidget> createState() =>
      _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  late TermsAndConditionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsAndConditionsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.sizeOf(context).height * 0.1),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            title: Container(
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'The Open Practice',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontStyle,
                                ),
                                color: Colors.white,
                                fontSize: 32.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontStyle,
                              ),
                    ),
                  ),
                ],
              ),
            ),
            background: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHx0cmVlfGVufDB8fHx8MTc1NjMwMTQ2OHww&ixlib=rb-4.1.0&q=80&w=1080',
                fit: BoxFit.cover,
              ),
            ),
            centerTitle: true,
            expandedTitleScale: 1.0,
            titlePadding: EdgeInsets.all(10.0),
          ),
          elevation: 2.0,
        ),
      ),
      body: SafeArea(
        top: true,
        child: Container(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 0.713,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(0.0),
            ),
            shape: BoxShape.rectangle,
          ),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'Terms and Conditions\nExample',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 28.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'Updated September 4, 2025',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'Agreement between user and Ki Konnect\n\nWelcome to Ki Konnect. The Ki Konnect iOS and Android applications (the \"App\") are comprised of the apps operated by HD Labs Ltd. Ki Konnect is offered to you conditioned on your acceptance without modification of the terms, conditions, and notices contained herein (the \"Terms\"). Your use of Ki Konnect constitutes your agreement to all such Terms. Please read these terms carefully, and keep a copy of them for your reference, if needed. Ki Konnect is an Information App to help users understand yoga better.\n\nPrivacy policy\n\nWe advise you to read our privacy policy regarding our user data collection. It will help you better understand our practices.\n\nEligibility\n\nYou represent and warrant that you are at least 13 years of age. If you are under the age of 13, you may not, under any circumstances or for any reason, use the Services. We may, in our sole discretion, refuse to offer the Services to any person or entity and change its eligibility criteria at any time. These Terms of Use are void where prohibited by law. You are solely responsible for ensuring that these Terms of Use are in compliance with all laws, rules and regulations applicable to you. The right to access the Services is revoked where these Terms of Use or use of the Services is prohibited or to the extent offering, sale, or provision of the Services conflicts with any applicable law, rule, or regulation. Further, the Services are offered only for your use, and not for the use or benefit of any third party.\n\nNOTICE TO PARENTS AND GUARDIANS: Users are responsible for monitoring and supervising their child\'s use of the Services. If your child is using the Services and is under the age of 13, please contact us immediately so that we can disable his or her access. If you have questions about the Services, please contact us at info@hilltopdigitallab.com.\n\nHealth Disclaimer & Warning\n\nThis App offers health and fitness information designed for educational purposes only. You should not rely on the information in this application as a substitute for professional medical advice, diagnoses, or treatment. You should consult your physician or other health care professional before practicing the techniques featured in this application, or any other health or fitness program. If you experience faintness, dizziness, pain, or shortness of breath at any time while practicing these techniques, you should stop immediately. The use of any information provided in this application is solely at your own risk. We assume no responsibility for injuries suffered while practicing these techniques.\n\nElectronic Communications\n\nVisiting Ki Konnect or sending emails to HD Labs Ltd. constitutes electronic communications. You consent to receive electronic communications and you agree that all agreements, notices, disclosures, and other communications that we provide to you electronically, via email, and on the App, satisfy any legal requirement that such communications be in writing.\n\nYour account\n\nIf you use this App, you are responsible for maintaining the confidentiality of your account and password and for restricting access to your computer or device of choice, and you agree to accept responsibility for all activities that occur under your account or password. You may not assign or otherwise transfer your account to any other person or entity. You acknowledge that HD Labs Ltd. is not responsible for third party access to your account that results from theft or misappropriation of your account. HD Labs Ltd. and its associates reserve the right to refuse or cancel service, terminate accounts, or remove or edit content at our sole discretion.\n\nHD Labs Ltd. does not knowingly collect, either online or offline, personal information from persons under the age of thirteen. If you are under 18, you may use Ki Konnect only with the permission of a parent or guardian.\n\nIn-App Purchases\n\nThrough the Services, you may purchase (\"In App Purchase\") certain goods or additional features or Applications designed to enhance the performance of the Services (\"Goods\"). When you purchase Goods, you are doing so through Apple iTunes service or Google Play service and you are agreeing to Apple\'s iTunes\' Terms and Conditions or Google Play Terms and Conditions respectively.\n\nPayments and Billing\n\n1. Paid Services: Certain of our Services may be subject to payments now or in the future (the \"Paid Services\"). Please note that any payment terms presented to you in the process of using or signing up for a Paid Service are deemed part of this Agreement.\n2. Billing: We use a third-party payment processor (the \"Payment Processor\") to bill you through a payment account (your \"Billing Account\") for use of the Paid Services. The processing of payments will be subject to the terms, conditions, and privacy policies of the Payment Processor in addition to this Agreement. We are not responsible for errors by the Payment Processor. By choosing to use Paid Services, you agree to pay us, through the Payment Processor, all charges at the prices then in effect for any use of such Paid Services in accordance with the applicable payment terms and you authorize us, through the Payment Processor, to charge your chosen payment provider (your \"Payment Method\"). You agree to make payment using that selected Payment Method. We reserve the right to correct any errors or mistakes that it makes even if it has already requested or received payment.\n3. Payment Method: The terms of your payment will be based on your Payment Method and may be determined by agreements between you and the financial institution, credit card issuer, or other providers of your chosen Payment Method. If we, through the Payment Processor, do not receive payment from you, you agree to pay all amounts due on your Billing Account upon demand.\n4. Recurring Billing: Some of the Paid Services may consist of an initial period, for which there is a one-time charge, followed by recurring period charges as agreed to by you. By choosing a recurring payment plan, you acknowledge that such Services have an initial and recurring payment feature and you accept responsibility for all recurring charges prior to cancellation. WE MAY SUBMIT PERIODIC CHARGES (E.G., MONTHLY) WITHOUT FURTHER AUTHORIZATION FROM YOU, UNTIL YOU PROVIDE PRIOR NOTICE (RECEIPT OF WHICH IS CONFIRMED BY US) THAT YOU HAVE TERMINATED THIS AUTHORIZATION OR WISH TO CHANGE YOUR PAYMENT METHOD. SUCH NOTICE WILL NOT AFFECT CHARGES SUBMITTED BEFORE WE REASONABLY COULD ACT. TO TERMINATE YOUR AUTHORIZATION OR CHANGE YOUR PAYMENT METHOD, CONTACT US AT iinfo@hilltopdigitallab.com.\n5. Current Information Required: YOU MUST PROVIDE CURRENT, COMPLETE, AND ACCURATE INFORMATION FOR YOUR BILLING ACCOUNT. YOU MUST PROMPTLY UPDATE ALL INFORMATION TO KEEP YOUR BILLING ACCOUNT CURRENT, COMPLETE AND ACCURATE (SUCH AS A CHANGE IN BILLING ADDRESS, CREDIT CARD NUMBER, OR CREDIT CARD EXPIRATION DATE), AND YOU MUST PROMPTLY NOTIFY US OR OUR PAYMENT PROCESSOR IF YOUR PAYMENT METHOD IS CANCELLED (E.G., FOR LOSS OR THEFT) OR IF YOU BECOME AWARE OF A POTENTIAL BREACH OF SECURITY, SUCH AS THE UNAUTHORIZED DISCLOSURE OR USE OF YOUR USER NAME OR PASSWORD. CHANGES TO SUCH INFORMATION CAN BE MADE BY CONTACTING US AT info@hilltopdigitallab.com IF YOU FAIL TO PROVIDE ANY OF THE AFOREMENTIONED INFORMATION, YOU AGREE THAT WE MAY CONTINUE CHARGING YOU FOR ANY USE OF PAID SERVICES UNDER YOUR BILLING ACCOUNT UNLESS YOU HAVE TERMINATED YOUR PAID SERVICES AS SET FORTH ABOVE.\n6. Change in Amount Authorized: If the amount to be charged to your Billing Account varies from the amount you preauthorized (other than due to the imposition or change in the amount of state sales taxes), you have the right to receive, and we shall provide, a notice of the amount to be charged and the date of the charge before the scheduled date of the transaction. Any agreement you have with your payment provider will govern your use of your Payment Method. You agree that we may accumulate charges incurred and submit them as one or more aggregate charges during or at the end of each billing cycle.\n7. Reaffirmation of Authorization: Your non-termination or continued use of a Paid Service reaffirms that we are authorized to charge your Payment Method for that Paid Service. We may submit those charges for payment and you will be responsible for such charges. This does not waive our right to seek payment directly from you. Your charges may be payable in advance, in arrears, per usage, or as otherwise described when you initially selected to use the Paid Service.\n8. Free Trials and Other Promotions: Any free trial or other promotion that provides access to a Paid Service must be used within the specified time of the trial. You must stop using a Paid Service before the end of the trial period in order to avoid being charged for that Paid Service. If you cancel prior to the end of the trial period and are inadvertently charged for a Paid Service, please contact us at info@hilltopdigitallab.com \n\nCancellation/Refund Policy\n\nPremium users may cancel your subscription at any time on Apple iTunes or Google play. iTunes and Google play is responsible for the refund.\n\nLinks to third-party Apps/Third-party services\n\nKi Konnect may contain links to other applications or websites (\"Linked Apps\"). The Linked Apps are not under the control of HD Labs Ltd. and HD Labs Ltd. is not responsible for the contents of any Linked App, including without limitation any link contained in a Linked App, or any changes or updates to a Linked App. HD Labs Ltd. is providing these links to you only as a convenience, and the inclusion of any link does not imply endorsement by HD Labs Ltd. of the App or any association with its operators.\n\nCertain services made available via Ki Konnect are delivered by third-party Apps and organizations. By using any product, service, or functionality originating from the Ki Konnect domain, you hereby acknowledge and consent that HD Labs Ltd. may share such information and data with any third party with whom HD Labs Ltd. has a contractual relationship to provide the requested product, service or functionality on behalf of Ki Konnect users and customers.\n\nNo unlawful or prohibited use/Intellectual Property\n\nYou are granted a non-exclusive, non-transferable, revocable license to access and use Ki Konnect strictly in accordance with these terms of use. As a condition of your use of the App, you warrant to HD Labs Ltd. that you will not use the App for any purpose that is unlawful or prohibited by these Terms. You may not use the App in any manner which could damage, disable, overburden, or impair the App or interfere with any other party\'s use and enjoyment of the App. You may not obtain or attempt to obtain any materials or information through any means not intentionally made available or provided for through the App.\n\nAll content included as part of the Service, such as yoga videos, text, graphics, logos, images, as well as the compilation thereof, and any software used on the App, is the property of HD Labs Ltd. or its suppliers and protected by copyright and other laws that protect intellectual property and proprietary rights. You agree to observe and abide by all copyright and other proprietary notices, legends, or other restrictions contained in any such content and will not make any changes thereto.\n\nYou will not modify, publish, transmit, reverse engineer, participate in the transfer or sale, create derivative works, or in any way exploit any of the content, in whole or in part, found on the App. HD Labs Ltd. content is not for resale. Your use of the App does not entitle you to make any unauthorized use of any protected content, and in particular, you will not delete or alter any proprietary rights or attribution notices in any content. You will use protected content solely for your personal use and will make no other use of the content without the express written permission of HD Labs Ltd. and the copyright owner. You agree that you do not acquire any ownership rights in any protected content. We do not grant you any licenses, express or implied, to the intellectual property of HD Labs Ltd. or our licensors except as expressly authorized by these Terms.\n\nThird-Party Accounts\n\nYou will be able to connect your HD Labs Ltd. account to third-party accounts. By connecting your HD Labs Ltd. account to your third-party account, you acknowledge and agree that you are consenting to the continuous release of information about you to others (in accordance with your privacy settings on those third party Apps). If you do not want information about you to be shared in this manner, do not use this feature.\n\nInternational Users\n\nDue to the global nature of the Internet, you agree to comply with all local rules regarding online conduct and acceptable Content. Specifically, you agree to comply with all applicable laws regarding the transmission of technical data exported from the EU or the country in which you reside.\n\nIndemnification\n\nYou agree to indemnify, defend and hold harmless HD Labs Ltd., its officers, directors, employees, agents, and third parties, for any losses, costs, liabilities, and expenses (including reasonable attorney\'s fees) relating to or arising out of your use of or inability to use the App or services, any user postings made by you, your violation of any terms of this Agreement or your violation of any rights of a third party, or your violation of any applicable laws, rules or regulations. HD Labs Ltd. reserves the right, at its own cost, to assume the exclusive defense and control of any matter otherwise subject to indemnification by you, in which event you will fully cooperate with HD Labs Ltd. in asserting any available defenses.\n\nArbitration\n\nIn the event the parties are not able to resolve any dispute between them arising out of or concerning these Terms and Conditions, or any provisions hereof, whether in contract, tort, or otherwise at law or in equity for damages or any other relief, then such dispute shall be resolved only by final and binding arbitration pursuant to the Federal Arbitration Act, conducted by a single neutral arbitrator and administered by the American Arbitration Association, or a similar arbitration service selected by the parties, in a location mutually agreed upon by the parties. The arbitrators\' award shall be final, and judgment may be entered upon it in any court having jurisdiction. In the event that any legal or equitable action, proceeding, or arbitration arises out of or concerns these Terms and Conditions, the prevailing party shall be entitled to recover its costs and reasonable attorney\'s fees. The parties agree to arbitrate all disputes and claims in regard to these Terms and Conditions or any disputes arising as a result of these Terms and Conditions, whether directly or indirectly, including Tort claims that are a result of these Terms and Conditions. The parties agree that the Federal Arbitration Act governs the interpretation and enforcement of this provision. The entire dispute, including the scope and enforceability of this arbitration provision, shall be determined by the Arbitrator. This arbitration provision shall survive the termination of these Terms and Conditions.\n\nClass Action Waiver\n\nAny arbitration under these Terms and Conditions will take place on an individual basis; class arbitrations and class/representative/collective actions are not permitted. THE PARTIES AGREE THAT A PARTY MAY BRING CLAIMS AGAINST THE OTHER ONLY IN EACH\'S INDIVIDUAL CAPACITY, AND NOT AS A PLAINTIFF OR CLASS MEMBER IN ANY PUTATIVE CLASS, COLLECTIVE, AND/ OR REPRESENTATIVE PROCEEDING, SUCH AS IN THE FORM OF A PRIVATE ATTORNEY GENERAL ACTION AGAINST THE OTHER. Furthermore, unless both you and the Employer agree otherwise, the arbitrator may not consolidate more than one person\'s claims, and may not otherwise preside over any form of a representative or class proceeding.\n\nLiability disclaimer\n\nTHE INFORMATION, SOFTWARE, PRODUCTS, AND SERVICES INCLUDED IN OR AVAILABLE THROUGH THE APP MAY INCLUDE INACCURACIES OR TYPOGRAPHICAL ERRORS. CHANGES ARE PERIODICALLY ADDED TO THE INFORMATION HEREIN. HD Labs Ltd. AND/OR ITS SUPPLIERS MAY MAKE IMPROVEMENTS AND/OR CHANGES IN THE APP AT ANY TIME.\n\nHD Labs Ltd. AND/OR ITS SUPPLIERS MAKE NO REPRESENTATIONS ABOUT THE SUITABILITY, RELIABILITY, AVAILABILITY, TIMELINESS, AND ACCURACY OF THE INFORMATION, SOFTWARE, PRODUCTS, SERVICES, AND RELATED GRAPHICS CONTAINED ON THE App FOR ANY PURPOSE. TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, ALL SUCH INFORMATION, SOFTWARE, PRODUCTS, SERVICES AND RELATED GRAPHICS ARE PROVIDED \"AS IS\" WITHOUT WARRANTY OR CONDITION OF ANY KIND. HD Labs Ltd. AND/OR ITS SUPPLIERS HEREBY DISCLAIM ALL WARRANTIES AND CONDITIONS WITH REGARD TO THIS INFORMATION, SOFTWARE, PRODUCTS, SERVICES AND RELATED GRAPHICS, INCLUDING ALL IMPLIED WARRANTIES OR CONDITIONS OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT.\n\nTO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, IN NO EVENT SHALL HD Labs Ltd. AND/OR ITS SUPPLIERS BE LIABLE FOR ANY DIRECT, INDIRECT, PUNITIVE, INC.IDENTAL, SPECIAL, CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER INCLUDING, WITHOUT LIMITATION, DAMAGES FOR LOSS OF USE, DATA OR PROFITS, ARISING OUT OF OR IN ANY WAY CONNECTED WITH THE USE OR PERFORMANCE OF THE APP, WITH THE DELAY OR INABILITY TO USE THE APP OR RELATED SERVICES, THE PROVISION OF OR FAILURE TO PROVIDE SERVICES, OR FOR ANY INFORMATION, SOFTWARE, PRODUCTS, SERVICES AND RELATED GRAPHICS OBTAINED THROUGH THE APP, OR OTHERWISE ARISING OUT OF THE USE OF THE APP, WHETHER BASED ON CONTRACT, TORT, NEGLIGENCE, STRICT LIABILITY OR OTHERWISE, EVEN IF HD Labs Ltd. OR ANY OF ITS SUPPLIERS HAS BEEN ADVISED OF THE POSSIBILITY OF DAMAGES. BECAUSE SOME STATES/JURISDICTIONS DO NOT ALLOW THE EXCLUSION OR LIMITATION OF LIABILITY FOR CONSEQUENTIAL OR INCIDENTAL DAMAGES, THE ABOVE LIMITATION MAY NOT APPLY TO YOU. IF YOU ARE DISSATISFIED WITH ANY PORTION OF THE APP, OR WITH ANY OF THESE TERMS OF USE, YOUR SOLE AND EXCLUSIVE REMEDY IS TO DISCONTINUE USING THE APP.\n\nTermination/access restriction\n\nHD Labs Ltd. reserves the right, in its sole discretion, to terminate your access to the App and the related services or any portion thereof at any time, without notice. To the maximum extent permitted by law, this agreement is governed by the laws of the European Union and you hereby consent to the exclusive jurisdiction and venue of courts in the European Union in all disputes arising out of or relating to the use of the App. Use of the App is unauthorized in any jurisdiction that does not give effect to all provisions of these Terms, Including, without limitation, this section.\n\nYou agree that no joint venture, partnership, employment, or agency relationship exists between you and HD Labs Ltd. as a result of this agreement or use of the App. HD Labs Ltd.\'s performance of this agreement is subject to existing laws and legal process, and nothing contained in this agreement is in derogation of HD Labs Ltd.\'s right to comply with governmental, court, and law enforcement requests or requirements relating to your use of the App or information provided to or gathered by HD Labs Ltd. with respect to such use. If any part of this agreement is determined to be invalid or unenforceable pursuant to applicable law Including, but not limited to, the warranty disclaimers and liability limitations set forth above, then the invalid or unenforceable provision will be deemed superseded by a valid, enforceable provision that most closely matches the intent of the original provision and the remainder of the agreement shall continue in effect.\n\nUnless otherwise specified herein, this agreement constitutes the entire agreement between the user and HD Labs Ltd. with respect to the App and it supersedes all prior or contemporaneous communications and proposals, whether electronic, oral, or written, between the user and HD Labs Ltd. with respect to the App. A printed version of this agreement and of any notice given in electronic form shall be admissible in judicial or administrative proceedings based upon or relating to this agreement to the same extent and subject to the same conditions as other business documents and records originally generated and maintained in printed form. It is the express wish of the parties that this agreement and all related documents be written in English.\n\nChanges to Terms\n\nHD Labs Ltd. reserves the right, in its sole discretion, to change the Terms under which Ki Konnect is offered. The most current version of the Terms will supersede all previous versions. HD Labs Ltd. encourages you to periodically review the Terms to stay informed of our updates.\n',
                              style: TextStyle(),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                    ),
                  ]
                      .divide(SizedBox(height: 20.0))
                      .addToStart(SizedBox(height: 20.0))
                      .addToEnd(SizedBox(height: 20.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
