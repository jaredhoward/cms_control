# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

CmsPage.create({
  :status => 'published',
  :menu_title => 'Home',
  :cms_meta_attributes => {
    :url => 'home',
    :title => 'Mainpine',
    :description => 'default description',
    :keywords => 'default keywords',
    :cms_contents_attributes => [
      {:content => '<p align="center"> <a href="downloads/Microsoft%20Fax%20Services%20Lab%20Report_final_.pdf"><img src="/images/IQE-Banner.jpg" width="400" height="181" border="0" /></a></p>
      <p><span id="ctl00_ContentPlaceHolder1_lblDescription">The newest addition to the intelligent fax board lineup, the IQ Express fax board provides customers with the speed, reliability and performance of enterprise-class fax hardware at an exceptional price-to-performance guarantee.</span></p>
      <ul>
        <li>PCI Express </li>
        <li>Fits in 1x, 4x, 8x or 16x PCI Express (&quot;PCIe&quot;) slots </li>
        <li>Low-profile and Standard-profile bracket supplied</li>
        <li>1, 2, 4 and 8-port options </li>
        <li>V.34 fax / JBIG Compression </li>
        <li>Supports Class 1, 1.0, 2.0 and 2.1</li>
        <li>Microsoft* Windows* XP, Vista, Server 2003, Server 2008</li>
        <li>Linux* Kernels 2.4 or higher <br />
          <a href="software.html">More information...</a>
        </li>
      </ul>

      <h2>IQ Express Product Information </h2>
      <table width="423" border="0" align="center">
        <tr>
          <td width="155">
            <p class="style1">
              <a href="products_IQE.html">
                <img src="/images/IQF8-Low-150.jpg" width="150" height="120" border="0" />
              </a>
            </p>
            <p align="center" class="style1"> 8-port, Low Profile, <br />
              PCIe 1X model shown.<br />
              2.5&quot; x 6.6&quot;<br />
              168mm x 64mm
            </p>
          </td>
          <td width="258">
            <ul>
              <li>ECM Error Correction Mode </li>
              <li>MH, MR, MMR, JBIG and JPEG Compression </li>
              <li>Normal, fine, superfine, hyperfine and ultrafine resolution </li>
              <li>Color fax support<br />
                <a href="products_IQE.html"> More information....</a>
              </li>
            </ul>
          </td>
        </tr>
      </table>
      ',
      :title => 'Introducing:  IQ Express - the world\'s smallest multi-port fax board'}
    ]
  },
})

CmsPage.create({
  :status => 'published',
  :menu_title => 'Products',
  :cms_meta_attributes => {
    :url => 'products',
    :title => 'Products | Mainpine',
    :description => 'default description',
    :keywords => 'default keywords',
    :cms_contents_attributes => [
      {:content => '<p>The Mainpine  range of multi-port interface boards are used for a variety of Fax, Data and Voice applications. To find out more, please visit our <a href="applications.html">Applications</a> section that contains detailed information on what you will need.</p>
      <h2>The future of fax  communications - IQ Express</h2>
      <table width="423" border="0" align="center">
        <tr>
          <td width="155"><p class="style1"><a href="products_IQE.html"><img src="images/IQF4-Both.jpg" width="150" height="139" border="0" /></a></p>
            <div align="center" class="style2">
              <p>1, 2, 4 and 8-port<br />NOW SHIPPING!</p>
            </div>
          </td>
          <td width="258"><p>The newest addition to the intelligent fax board lineup, the IQ Express&nbsp;card   provides customers with the speed, reliability and performance of   enterprise-class fax hardware at an exceptional price-to-performance   guarantee.</p>
            <ul>
              <li>Available in Low-Profile and Standard-Profile bracket configurations </li>
              <li><a href="applications.html">Application Certified</a> </li>
              <li>Dedicated DSP and CPU per port for maximum performance </li>

              <li><strong>30-Day Satisfaction   Guarantee</strong> </li>
              <li><strong>IQ Express 5-year   Warranty</strong></li>
            </ul>
          </td>
        </tr>
      </table>
      <h2>RockForce Modems</h2>
      <table width="423" border="0" align="center">
        <tr>
          <td width="155" class="style1"><a href="products_rockforce.html"><img src="images/3boards_mini.jpg" width="150" border="0" /></a></td>
          <td width="258"><p><b>Exceptional Price to Performance. </b>Available in 4 and 8-port configurations, Mainpine\'s flagship RockForce series of intelligent fax cards providess customers with the speed, reliability and performance of \'enterprise-class\' fax hardware but an an exceptional price-to-performance guarantee.</p></td>
        </tr>
      </table>
      <h2>More Information</h2>
      <h3><a href="downloads/WP-Lobar.pdf" target="_blank">White Paper: Answering the Call with Rockforce Intelligent Fax Board </a></h3>
      <p>How Lobar, Inc., a multi-million dollar enterprise, found reliability replacing their Brooktrout fax boards with a Mainpine solution.</p>
      <h3><a href="support.html#DocDloads">Document Downloads</a></h3>
      <p>Datasheets and all other documentation for our product range.</p>
      <h3><a href="applications.html">Application Notes</a></h3>
      <p>Take a look at our application notes that provide information based on your specific application. There are also answers to some of the specific questions you may have.</p>
      <h3><a href="sales.html">How to Buy</a></h3>
      <p>Our sales section with contacts, pricing and other useful information. </p>',
      :title => 'The Mainpine Product Lineup'}
    ]
  },
})

CmsPage.create({
  :status => 'published',
  :menu_title => 'Applications',
  :cms_meta_attributes => {
    :url => 'applications',
    :title => 'Applications | Mainpine',
    :description => 'default description',
    :keywords => 'default keywords',
    :cms_contents_attributes => [
      {:content => '<p> Mainpine products have been used successfully in a wide variety of applications. To help you in getting started, we have compiled these application notes that contain useful information and links:</p>
      <ul>
        <li><a href="#fax">Fax related</a></li>
        <li><a href="#data">Data related</a></li>
        <li><a href="#other">Other applications</a></li>
      </ul>
      <h2 id="fax">Fax related</h2>
      <h3><a href="savemoneyonfax.html">Save money on Fax</a></h3>
      <p>Faxing isn\'t something you want you or your employees to spend their entire day on. Find out what kind of impact a fax server can have on your company in this document.</p>
      <h3><a href="buildfaxserver.html">Building a fax server</a></h3>
      <p>If you have a lot of people on your network who need to send faxes, this note will tell you what you need to consider. It includes links to software vendors and advice on system hardware choices.</p>
      <h3><a href="whyv34.html">Do I need V.34?</a></h3>
      <p>This note will describe what V.34 technology is, and discuss whether it\'s a technology that will give you a real benefit.</p>
      <h3><a href="whattypeofboard.html">What type of fax board do I need?</a></h3>
      <p>This document talks about the different types of fax board available, and gives a comparison for their use in a fax server system.</p>
      <h3><a href="serverfit.html">Will this board work in my server?</a></h3>
      <p>How can you be sure a solution will fit and work in your particular server? This document will tell you how...</p>
      <h2 id="data">Data related</h2>
      <h3><a href="linebonding.html">Getting a faster data connection</a></h3>
      <p>If you need to connect to the Internet using analog telephone lines, and you want more than a 56k connection, this note will tell you what you need in terms of hardware and software.</p>
      <h3><a href="ras.html">Building a dial-in remote access server (RAS)</a></h3>
      <p>If you want to provide modem connectivity to your network, this application note describes several options, and some of the security tips and tricks.</p>
      <h2 id="other">Other applications... </h2>
      <p>More application notes are coming soon. If your application is not listed here, please <a href="mailto:info@mainpine.com">contact us</a> for more information.</p>',
      :title => 'Help Getting Started '}
    ]
  },
})

CmsPage.create({
  :status => 'published',
  :menu_title => 'Sales',
  :cms_meta_attributes => {
    :url => 'sales',
    :title => 'Sales | Mainpine',
    :description => 'default description',
    :keywords => 'default keywords',
    :cms_contents_attributes => [
      {:content => '<h3>If you need more information...</h3>
      <p>If you have any final questions regarding these products, prior to purchase, please contact <a href="support.html">Support</a>, who will be happy to answer your pre-sales questions.</p>
      <h2>How to buy Mainpine Products</h2>
      <p>Mainpine products are distributed by SYNNEX Corporation which has over 15,000 authorised resellers including:</p>
      <ul>
        <li>Computerist, Inc. (<a href="http://www.computerist.com/" target="_blank">www.computerist.com</a>) 1-973-731-7979</li>
        <li>Gaither Technologies, STC (<a href="http://www.gtstc.com" target="_blank">www.gtstc.com</a>) 1-812-479-7821</li>	    
        <li>iFAX Solutions, Inc. (<a href="http://www.ifax.com/shop/hardware/analog-fax-cards.html?manufacturer=4" target="_blank">www.ifax.com</a>) 1-800-332-9750</li>
        <li>Infotech Associates (<a href="http://www.infotech1.com/" target="_blank">www.infotech1.com</a>) 1-301-595-9890</li>
        <li>Insight Technology Solutions, Inc. (<a href="http://www.insight.com/" target="_blank">www.insight.com</a>) 1-800-467-4448</li>
        <li>Kinetix Technologies (<a href="http://www.kbisp.com/" target="_blank">www.kbisp.com</a>) 1-318-487-8200</li>
        <li>Omnicomp, Inc. (<a href="http://www.omnicomp.com/" target="_blank">www.omnicomp.com</a>) 1-215-784-9900</li>
        <li>Summit IT Solutions (<a href="http://www.summititsolutions.com/" target="_blank">www.summititsolutions.com</a>) 1-330-785-9467</li>
        <li>Synergy Global Solutions, Inc. (<a href="http://www.synergy.gs/" target="_blank">www.synergy.gs</a>) 1-585-758-7264</li>
        <li>The Ergonomic Group, Inc. (<a href="http://www.ergogroup.com/" target="_blank">www.ergogroup.com</a>) 1-516-746-7777</li>
        <li>Zones (<a href="http://www.zones.com/" target="_blank">www.zones.com</a>) 1-253-205-3000</li>
      </ul>
      <h2>How to become a SYNNEX Reseller</h2>
      <p>If you are interested in becoming a SYNNEX Authorised Reseller, please take a look at their <a href="http://www.synnex.com/newCustomer/howToGetStarted.html" target="_blank">"Get Started"</a> page.</p>
      <h2>OEMs and Software Vendors</h2>
      <p>If you are interested in setting up an OEM relationship, or you have software that you would like assistance in validating on these products, please take a look at our <a href="partners.html">partner pages</a>. You will be assigned a specific contact who will guide you through the process. Our sales and engineering teams are ready to assist you with in-depth information and technical experience as required.</p>',
      :title => 'Mainpine Sales'}
    ]
  },
})

CmsPage.create({
  :status => 'published',
  :menu_title => 'Support',
  :cms_meta_attributes => {
    :url => 'support',
    :title => 'Support | Mainpine',
    :description => 'default description',
    :keywords => 'default keywords',
    :cms_contents_attributes => [
      {:content => '<p>If you need to contact our support team for assistance, please make sure you have read the section below on the information we need in order to help you. Thank you!</p>
      <h2>Driver Downloads</h2>
      <p>Here you will find drivers for our current products</p>
      <table width="416" border="0" align="center" cellpadding="1" cellspacing="2" bordercolor="#003366" class="inlineTable">
        <tr>
          <th colspan="2"> 32/64bit Windows XP, Server 2003, Server 2008, Vista Driver</th>
        </tr>
        <tr>
          <td width="42%"><strong>Revision:</strong></td>
          <td width="305" align="center"><div align="left">1.1.0.5</div></td>
        </tr>
        <tr>
          <td><strong>Date released: </strong></td>
          <td align="center"><div align="left">March 20, 2009 </div></td>
        </tr>
        <tr>
          <td><strong>Applies to: </strong></td>
          <td align="center"> <div align="left">IQ Express Rev 3 (P/N RF51**) </div></td>
        </tr>
        <tr>
          <td><strong>Download</strong></td>
          <td align="center"><div align="left"><a href="downloads/MPCD20MAR09.zip">MPCD20MAR09.zip</a></div></td>
        </tr>
      </table>
      <table width="416" border="0" align="center" cellpadding="1" cellspacing="2" bordercolor="#003366" class="inlineTable">
        <tr>
          <th colspan="2"> 32bit Windows XP, Server 2003, Server 2008, Vista Driver</th>
        </tr>
        <tr>
          <td width="42%"><strong>Revision:</strong></td>
          <td width="305" align="center"><div align="left">3.0.2.0</div></td>
        </tr>
        <tr>
          <td><strong>Date released: </strong></td>
          <td align="center"><div align="left">September 17, 2007 </div></td>
        </tr>
        <tr>
          <td><strong>Applies to: </strong></td>
          <td align="center"> <div align="left">IQ Express Rev 1 and Rev 2 (P/N RF21** & RF31**) </div>
          </td>
        </tr>
        <tr>
          <td><strong>Download</strong></td>
          <td align="center"><div align="left"><a href="downloads/MPCD17SEP07.zip">MPCD17SEP07.zip</a></div></td>
        </tr>
      </table>
      <table width="416" border="0" align="center" cellpadding="1" cellspacing="2" bordercolor="#003366" class="inlineTable">
        <tr>
          <th colspan="2"> 32bit Windows 2000, XP, Server 2003, Vista Driver</th>
        </tr>
        <tr>
          <td width="42%"><strong>Revision:</strong></td>
          <td width="305" align="center"><div align="left">3.0.0.0</div></td>
        </tr>
        <tr>
          <td><strong>Date released: </strong></td>
          <td align="center"><div align="left">March 19, 2007 </div></td>
        </tr>
        <tr>
          <td><strong>Applies to: </strong></td>
          <td align="center"> <div align="left">RockForce Rev 2.2 (all models) </div></td>
        </tr>
        <tr>
          <td><strong>Download</strong></td>
          <td align="center"><div align="left"><a href="downloads/MPCD19MAR07.zip">MPCD19MAR07.zip</a></div></td>
        </tr>
      </table>
      <table width="416" border="0" align="center" cellpadding="1" cellspacing="2" bordercolor="#003366" class="inlineTable">
        <tr>
          <th colspan="2"> 32bit Linux installation instructions </th>
        </tr>
        <tr>
          <td width="42%"><strong>Revision:</strong></td>
          <td width="305" align="center"><div align="left">2.0</div></td>
        </tr>
        <tr>
          <td><strong>Date released: </strong></td>
          <td align="center"><div align="left">3rd June 2004 </div></td>
        </tr>
        <tr>
          <td><strong>Applies to: </strong></td>
          <td align="center"> <div align="left">RockForce DUO+,  QUATRO+ and OCTO+ </div></td>
        </tr>
        <tr>
          <td height="19"><strong>Download</strong></td>
          <td align="center"><div align="left"><a href="linuxsupport.html">More information</a></div></td>
        </tr>
      </table>

      <h2>Legacy Driver Downloads</h2>
      <p><a href="legacydrivers.html"></a>Here you will find <a href="legacydrivers.html">drivers</a> for our legacy (retired) products</p>

      <h2 id="DocDloads">Document Downloads</h2>
      <p>Here you will find documentation for our current products</p>
      <table width="416" border="0" align="center" cellpadding="1" cellspacing="2" bordercolor="#003366" class="inlineTable">
        <tr>
          <th height="22" colspan="2"> Product documentation</th>
        </tr>
        <tr>
          <td width="42%"><strong>RockForce DUO+ </strong></td>
          <td width="305" align="center"><div align="left"><a href="downloads/DS2022_2_A4.PDF" target="_blank">Datasheet - A4 format </a></div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="center"><div align="left"><a href="downloads/DS2022_2_US.PDF" target="_blank">Datasheet - US Letter format</a></div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="center"> <div align="left"><a href="downloads/RockForceDUO+PCIComplianceChecklist-Issue3.pdf" target="_blank">PCI Compliance Checklist</a></div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="center"><div align="left"></div></td>
        </tr>
        <tr>
          <td><strong>RockForce QUATRO+</strong></td>
          <td align="center"><div align="left"><a href="downloads/DS2023_2_A4.PDF" target="_blank">Datasheet - A4 format</a></div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="center"><div align="left"><a href="downloads/DS2023_2_US.PDF" target="_blank">Datasheet - US Letter format</a></div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="center"> <div align="left"><a href="downloads/RockForceQUATRO+PCIComplianceChecklist-Issue3.pdf" target="_blank">PCI Compliance Checklist </a> </div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="center"><div align="left"></div></td>
        </tr>
        <tr>
          <td><strong>RockForce OCTO+</strong></td>
          <td align="center"><div align="left"><a href="downloads/DS2024_2_A4.PDF" target="_blank">Datasheet - A4 format</a></div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="center"><div align="left"><a href="downloads/DS2024_2_US.PDF" target="_blank">Datasheet - US Letter format</a></div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="center"> <div align="left"><a href="downloads/RockForceOCTO+PCIComplianceChecklist-Issue3.pdf" target="_blank">PCI Compliance Checklist</a> </div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="center"><div align="left"></div></td>
        </tr>
        <tr>
          <td><strong>RockForce Range </strong></td>
          <td align="center"> <div align="left"><a href="downloads/QS2014-2.PDF" target="_blank">RockForce Quick Start Guide </a> </div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align="center"><div align="left"><a href="downloads/DOC241204-KS1.pdf" target="_blank">RockForce Declaration of Conformity </a></div></td>
        </tr>
      </table>

      <h2>Contact our support team</h2>
      <h3>For Technical problems with purchased Mainpine hardware:</h3>
      <p>If you have purchased one of our products through one of our authorised resellers, please contact them for technical support.</p>
      <p>If you have purchased support or hardware directly from Mainpine, please fill out this <a href="supportquestionnaire.html">Support Request Form</a> and a technical support representative will be in contact with you as soon as possible.</p>
      <p><strong><a href="supportquestionnaire.html">Request Support</a></strong></p>
      <h3>For general technical or pre-sales technical questions:</h3>
      <p>Please contact us according to the area you are in:</p>
      <table width="98%"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td>&nbsp;</td>
          <td colspan="2"><strong>Asia/Pacific</strong></td>
        </tr>
        <tr>
          <td width="18">&nbsp;</td>
          <td width="38"><b>Tel</b>:</td>
          <td width="405" align="left">+1 866 363 6680</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><strong>Email</strong>:</td>
          <td align="left"><a href="mailto:support@mainpine.com">support@mainpine.com</a></td>
        </tr>
      </table>
      <br />
      <table width="98%"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td>&nbsp;</td>
          <td colspan="2"><strong>Europe, Middle East and Africa </strong></td>
        </tr>
        <tr>
          <td width="18">&nbsp;</td>
          <td width="38"><b>Tel</b>:</td>
          <td width="405" align="left">+1 866 363 6680</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><strong>Email</strong>:</td>
          <td align="left"><a href="mailto:support@mainpine.com">support@mainpine.com</a></td>
        </tr>
      </table>
      <br />
      <table width="98%"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td>&nbsp;</td>
          <td colspan="2"><strong>North &amp; South America </strong></td>
        </tr>
        <tr>
          <td width="18">&nbsp;</td>
          <td width="38"><b>Tel</b>:</td>
          <td width="405" align="left">+1 866 363 6680</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><strong>Email</strong>:</td>
          <td align="left"><a href="mailto:support@mainpine.com">support@mainpine.com</a></td>
        </tr>
      </table>',
      :title => 'Support'}
    ]
  },
})

CmsPage.create({
  :status => 'published',
  :menu_title => 'Partners',
  :cms_meta_attributes => {
    :url => 'partners',
    :title => 'Partners | Mainpine',
    :description => 'default description',
    :keywords => 'default keywords',
    :cms_contents_attributes => [
      {:content => '<p><i>&quot;Building close relationships with our partners is vital to our business. If our partners are successful, then so are we. Realizing that, we strive to give our partners the products, support and tools they need, and go the extra mile whenever we can.&quot;</i></p>
      <p align="right"><strong>- Kevin Sharpe, Managing Director, Mainpine Ltd.</strong></p>
      <p>We work very closely with our Partners to assist them in increasing existing business, expansion into new or emerging markets and ensuring successful implementation of new products and solutions.</p>

      <h2>What is special about Mainpine?</h2>
      <p>Our partners work with us for three main reasons: Firstly, because of the high levels of technical, sales and marketing support Mainpine provides. Secondly, because we bring about success for those that make us successful. Most importantly, because we have a unique set of products that provide a combination of features that cannot be obtained elsewhere.</p>
      <p>The Mainpine RockForce product line combines these features in a unique package:</p>
      <table width="445" border="1" cellpadding="2" cellspacing="0" bordercolor="#003366">
        <tr class="pageLining">
          <th width="225"><div align="left"><b>Feature</b></div></th>
          <th width="206"><div align="left"><b>Benefit</b></div></th>
        </tr>
        <tr>
          <td width="225" height="59" valign="top">V.34 / Super G3 Fax, JBIG compression</td>
          <td width="206" valign="top">The latest and greatest features in fax mean faster and more reliable transmissions, ultimately giving lower phone bills</td>
        </tr>
        <tr>
          <td width="225" height="42" valign="top">Universal PCI 3.0 PNP compliance, 3.3V and 5V signaling, and short board form factor</td>
          <td width="206" valign="top">This will fit into almost any PC on the planet, and work in any PCI or PCI-X slot!</td>
        </tr>
        <tr>
          <td width="225" height="61" valign="top">Use of built-in serial drivers in Microsoft Windows* and Linux* operating systems. Only requires simple installation scripts.</td>
          <td width="206" valign="top">Easy installation and operation, high reliability and supportability; keeping down the cost of sale!</td>
        </tr>
      </table>

      <h2><b>The Benefits of Partnership</b></h2>
      <p>We understand the important role that our Partner\'s play in positively promoting our brand and our products. To recognize this, our Partner Program offers exclusive benefits, including:</p>
      <ul>
        <li>Special Discounts</li>
        <li>Pre-qualified Leads&nbsp;</li>
        <li>Priority access to Technical Support&nbsp;and Engineering resources</li>
        <li>White Papers and Marketing Tools</li>
        <li>Advance notice on new products and initiatives</li>
        <li>On-going Communication</li>
        <li>Evaluation Equipment</li>
        <li>Features and links on the Mainpine Website</li>
        <li>Permission to use logos and graphics in websites and other promotional material.</li>
      </ul>
      <p>For more information please visit the <a href="partnerprogram.html">Partner Program</a> page or contact our <a href="mailto:sales@mainpine.com"> Partner Team</a>.</p>

      <h2>Mainpine Partners usually fall into the following categories:</h2>
      <ul>
        <li><a href="#software">Software Vendors</a></li>
        <li><a href="#resellers">Authorized Resellers</a></li>
        <li><a href="#oem">OEMs</a></li>
      </ul>

      <h3 id="software">Software Vendors</h3>
      <p>Mainpine partners with software vendors whose products are verified as compatible with the RockForce multi-port boards.</p>

      <h3 id="resellers"><b>Authorized Resellers</b></h3>
      <p>Mainpine authorized resellers actively promote and support the  RockForce range of multi-port boards, within their product portfolio.</p>
      <p>For more information, please go to our <a href="sales.html">How to Buy</a> section</p>

      <h3 id="oem">OEMs</h3>
      <p>Close OEM relationships are a cornerstone for our business. We are accustomed to providing a great deal of support, both technical and commercial, to make these relationships a success. We will quickly make engineering resource available where needed, and work with you on all commercial aspects. We appreciate that each OEM has a unique situation, and we act accordingly.</p>
      <p>You need to have confidence that any product will integrate into your solution, and we want to make it simple for you to gain that confidence. That is why we offer a 30 day money-back guarantee, allowing you to conduct your initial tests without risking your money!</p>
      <p>To kick off the process of working with us, please email our <a href="mailto:sales@mainpine.com">Sales Team</a> who will be pleased to provide you with any information you may need, and to get you a board under our standard 30-day money-back terms and conditions. We look forward to working with you!</p>

      <h2>Sign Up Today!</h2>
      <p>If you are looking to develop a close relationship with a market leading developer and supplier of multi-port boards, contact us to find out more. Please contact our <a href="mailto:sales@mainpine.com">Partners Team</a> who will be happy to help you. Once your application is processed, we will send you an Electronic Partner Pack, complete with brochures on each of our products.</p>',
      :title => 'Mainpine Partners'}
    ]
  },
})

CmsPage.create({
  :status => 'published',
  :menu_title => 'Corporate',
  :cms_meta_attributes => {
    :url => 'corporate',
    :title => 'Corporate | Mainpine',
    :description => 'default description',
    :keywords => 'default keywords',
    :cms_contents_attributes => [
      {:content => '<ul>
        <li><a href="companyhistory.html">Company History</a></li>
        <li><a href="headoffice.html">European Headquarters</a></li>
        <li><a href="naoffice.html">North American Office </a></li>
      </ul>
      <h2>Mainpine in the News</h2>

      <ul>
        <li>Aug 2007 &ndash; <a href="downloads/PR101507_MSFax_.pdf" target="_blank">Mainpine&#8482; PCI Express&reg;  Certified with Microsoft&reg; SBS Fax Server</a></li>
        <li>Aug 2007 &ndash; <a href="corporate/press/2007/Mainpine-NextGen-Aug07.pdf" target="_blank">Mainpine&#8482; Intelligent Fax Boards Supported by NextGen&reg; EMR</a></li>
        <li>May 2007 &ndash; <a href="corporate/press/2007/PR_IQ-Express.pdf" target="_blank">Mainpine&trade; Announces World&rsquo;s Smallest PCI-Express Intelligent Fax Board</a></li>
        <li>Sept 2006 &ndash; <a href="corporate/press/2006/PR_Mainpine_RockForceIQ_090606_.pdf" target="_blank">Next generation RockForce IQ product line released</a></li>
        <li>May 2006 &ndash; <a href="corporate/press/2006/Move.pdf" target="_blank">Move to New Headquarters; Adds to Mgmt</a></li>
        <li>Apr 2006 &ndash; <a href="/corporate/press/2006/Mainpine-Interbit-PR042406.pdf" target="_blank">Interbit Data  Supported by RockForce Boards </a></li>
        <li>Mar 2006 &ndash; <a href="/corporate/press/2006/isvlab.html">Mainpine&trade; Announces Certification Lab for Fax Server Manufacturers </a></li>
        <li>Mar 2006 &ndash; <a href="corporate/press/2006/newpresident.html" target="_blank">Mainpine&trade; Announces Appointment of New President and CEO</a></li>
        <li>Jan 2006 &ndash; <a href="corporate/press/2006/recordyear.html">Mainpine Announces Record Sales for 2005</a></li>
        <li>Jan 2006 &ndash; <a href="newsarchive.html#EUenvDir">Mainpine Adopts EU Environmental Directives </a></li>
        <li>Dec 2005 &ndash; <a href="newsarchive.html#expEuroDist">Mainpine Expands European Distribution</a></li>
        <li>Feb 2005 &ndash; <a href="newsarchive.html#NAOffice">Mainpine announces opening of North American Office</a></li>
        <li>Jul 2004 &ndash; <a href="newsarchive.html#PCI3">Mainpine announces full compliance to the new PCI 3.0 specification for the RockForce range</a></li>
        <li>Apr 2004 &ndash; <a href="newsarchive.html#Agnicorp1">Agnicorp Inc. selects Mainpine Technology for the Ai-4400 Convergence Gateway</a></li>
      </ul>
      <p><a href="newsarchive.html"><strong>News Archive</strong></a></p>

      <h2>About this website</h2>
      <p>If you have any comments about this website, please email us at <a href="mailto:info@mainpine.com">info@mainpine.com.</a> Please also read our <a href="legal.html">legal information</a> about this site. </p>
      ',
      :title => 'Corporate Information'}
    ]
  },
})

CmsPage.create({
  :status => 'published',
  :menu_title => 'Contact',
  :cms_meta_attributes => {
    :url => 'contact',
    :title => 'Contact | Mainpine',
    :description => 'default description',
    :keywords => 'default keywords',
    :cms_contents_attributes => [
      {:content => '<h3>North American Office</h3>
      <address>
        Mainpine, Inc.<br />
        PO Box 241<br />
        Wilsonville<br />
        Oregon, 97070-0241<br />
        USA
      </address>

      <h2>Contacting Sales</h2>
      <p>
        <label>Tel:</label>
        <span class="phone">+1 866 363 6680</span>
        <span class="phone">+1 360 462 6292</span>
        <label>Email:</label>
        <span class="email"><a href="mailto:sales@mainpine.com">sales@mainpine.com</a></span>
      </p>

      <h2>Contacting Support</h2>
      <p>
        <label>Tel:</label>
        <span class="phone">+1 866 363 6680</span>
        <span class="phone">+1 360 462 6292</span>
        <label>Email:</label>
        <span class="email"><a href="mailto:support@mainpine.com">support@mainpine.com</a></span>
      </p>

      <h2>Contacting Corporate</h2>
      <p>
        <label>Tel:</label>
        <span class="phone">+1 866 363 6680</span>
        <span class="phone">+1 360 462 6292</span>
        <label>Fax:</label>
        <span class="phone">+1 360 462 8160</span>
        <label>Email:</label>
        <span class="email"><a href="mailto:info@mainpine.com">info@mainpine.com</a></span>
      </p>',
      :title => 'Contacting Mainpine'}
    ]
  },
})

CmsPage.create({
  :status => 'published',
  :cms_meta_attributes => {
    :url => 'legal',
    :title => 'Legal | Mainpine',
    :description => 'default description',
    :keywords => 'default keywords',
    :cms_contents_attributes => [
      {:content => '<p>Please read the following information carefully: </p>
      <h2>Copyright</h2>
      <p>All contents and materials are copyright &copy; Mainpine Ltd unless specifically stated otherwise. All rights are reserved. Use of software and documentation are subject to license agreements as provided. You may download one copy of the information or software found on this site on a single computer for your personal, non-commercial use only unless specifically licensed to do otherwise by Mainpine. This is a license, not a transfer of title, and is subject to these restrictions: you may not: (a) modify the content of this site, or use it for any commercial purpose, or any public display, sale or rental; (b) decompile, reverse engineer, or disassemble software except to the extent permitted by applicable law; (c) remove any copyright or other proprietary notices; (d) transfer content to another person. You agree to prevent any unauthorized copying of the information on this website.</p>
      <p>Other names, products, and services mentioned on this website may be the property of others. Mainpine and RockForce are trademarks claimed by Mainpine Ltd.</p>
      <h2>Applicable Law</h2>
      <p>Your access to our web sites is subject to UK law and may also be subject to the laws of the country where you reside.</p>
      <h2>Limitation of Liability</h2>
      <p>The information on the Mainpine Ltd web site is presented on an &quot;AS IS&quot; basis. Mainpine PROVIDES NO WARRANTY OF ANY KIND WITH RESPECT TO THE INFORMATION ON OUR WEB SITE AND EXPRESSLY DISCLAIMS ALL WARRANTIES, WHETHER EXPRESS OR IMPLIED, INCLUDING THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, OR NON-INFRINGEMENT.</p>
      <p>Information may be changed or updated without notice, including this legal page. We recommend you check this page from time to time for updates. Mainpine takes reasonable steps to ensure that the information and other materials on our web site are accurate but provides no representations as to accuracy or completeness.</p>
      <p>Mainpine Ltd IS NOT LIABLE FOR ANY DIRECT OR INDIRECT DAMAGES ARISING FROM USE OF OUR WEB SITES. You use the information provided on this site at your own risk.</p>
      <p>It is possible that the use or implementation of any one of the concepts, applications, or ideas described in the Mainpine Ltd web site or documentation which may be accessed from this web site may infringe one or more patents or other intellectual property rights owned by third parties. Mainpine Ltd does not provide any intellectual property licenses with the sale of products other than a license to use such product in accordance with intellectual property owned or validly licensed by Mainpine Ltd. It is the responsibility of users of the products to procure the applicable intellectual property licenses to implement any concepts or applications. Mainpine Ltd encourages all users to procure necessary licenses, and does not condone license infringement. Mainpine disclaims any responsibility for licensing infringements by users of Mainpine products.</p>
      <h2>Links</h2>
      <p>This site may include links to other websites. We expressly disclaim any responsibility and make no representations whatsoever about the quality, nature or reliability of any other web sites you may access through this web site. A link to a website does not indicate that we endorse that site, the content therein or products that may be available from it. Mainpine reserves the right to remove any hyperlinks at any time without consultation or notification to any third parties.</p>
      <h2>Feedback on this Web Site</h2>
      <p>Any responses you make to Mainpine Ltd about materials presented on this web site will be non-confidential. By sending any response or feedback you grant to it an irrevocable unrestricted license to use, reproduce, distribute, and modify the information in your response and you agree that Mainpine Ltd is free to use for any purpose whatsoever any ideas or concepts contained in your response. However your name will not be released unless required by law or your prior written consent is obtained.</p>
      <h2>Privacy Policy</h2>
      <p>Mainpine Ltd make all reasonable steps to treat your information confidentially. Mainpine Ltd. Will not sell or lease your information to any other companies other than subsidiaries of Mainpine Ltd. We do not engage in sending bulk unsolicited emails to those that have not requested them. If you have any questions about emails you may have received from Mainpine Ltd or any other questions on this policy, please email <a href="mailto:info@mainpine.com">info@mainpine.com</a></p>',
      :title => 'Legal information about this website'}
    ]
  },
})