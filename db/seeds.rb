# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

### CMS Pages ###

page_home = CmsPage.create!({
  :status => 'published',
  :menu_title => 'Home',
  :cms_meta_attributes => {
    :url => 'home',
    :title => 'Mainpine',
    :description => 'default description',
    :keywords => 'default keywords',
    :cms_contents_attributes => [
      {
        :status => 'published',
        :title => 'Introducing:  IQ Express - the world\'s smallest multi-port fax board',
        :content => '<p align="center"><a href="/downloads/Microsoft%20Fax%20Services%20Lab%20Report_final_.pdf"><img src="/images/IQE-Banner.jpg" width="400" height="181" border="0" /></a></p>
<p><span id="ctl00_ContentPlaceHolder1_lblDescription">The newest addition to the intelligent fax board lineup, the IQ Express fax board provides customers with the speed, reliability and performance of enterprise-class fax hardware at an exceptional price-to-performance guarantee.</span></p>
<ul>
  <li>PCI Express</li>
  <li>Fits in 1x, 4x, 8x or 16x PCI Express (&quot;PCIe&quot;) slots</li>
  <li>Low-profile and Standard-profile bracket supplied</li>
  <li>1, 2, 4 and 8-port options</li>
  <li>V.34 fax / JBIG Compression</li>
  <li>Supports Class 1, 1.0, 2.0 and 2.1</li>
  <li>Microsoft* Windows* XP, Vista, Server 2003, Server 2008</li>
  <li>Linux* Kernels 2.4 or higher<br /><a href="/software.html">More information...</a></li>
</ul>

<h2>IQ Express Product Information </h2>
<table width="423" border="0" align="center">
  <tr>
    <td width="155">
      <p class="style1"><a href="/products_IQE.html"><img src="/images/IQF8-Low-150.jpg" width="150" height="120" border="0" /></a></p>
      <p align="center" class="style1">8-port, Low Profile,<br />PCIe 1X model shown.<br />2.5&quot; x 6.6&quot;<br />168mm x 64mm</p>
    </td>
    <td width="258">
      <ul>
        <li>ECM Error Correction Mode</li>
        <li>MH, MR, MMR, JBIG and JPEG Compression</li>
        <li>Normal, fine, superfine, hyperfine and ultrafine resolution</li>
        <li>Color fax support<br /><a href="/products_IQE.html"> More information....</a></li>
      </ul>
    </td>
  </tr>
</table>'
      }
    ]
  }
})

page_products = CmsPage.create!({
  :status => 'published',
  :menu_title => 'Products',
  :cms_meta_attributes => {
    :url => 'products',
    :title => 'Products | Mainpine',
    :description => 'default description',
    :keywords => 'default keywords',
    :cms_contents_attributes => [
      {
        :status => 'published',
        :title => 'The Mainpine Product Lineup',
        :content => '<p>The Mainpine range of multi-port interface boards are used for a variety of Fax, Data and Voice applications. To find out more, please visit our <a href="/applications.html">Applications</a> section that contains detailed information on what you will need.</p>
<h2>The future of fax communications - IQ Express</h2>
<table width="423" border="0" align="center">
  <tr>
    <td width="155"><p class="style1"><a href="/products_IQE.html"><img src="/images/IQF4-Both.jpg" width="150" height="139" border="0" /></a></p>
      <div align="center" class="style2">
        <p>1, 2, 4 and 8-port<br />NOW SHIPPING!</p>
      </div>
    </td>
    <td width="258"><p>The newest addition to the intelligent fax board lineup, the IQ Express&nbsp;card provides customers with the speed, reliability and performance of enterprise-class fax hardware at an exceptional price-to-performance guarantee.</p>
      <ul>
        <li>Available in Low-Profile and Standard-Profile bracket configurations</li>
        <li><a href="/applications.html">Application Certified</a></li>
        <li>Dedicated DSP and CPU per port for maximum performance</li>
        <li><strong>30-Day Satisfaction Guarantee</strong></li>
        <li><strong>IQ Express 5-year Warranty</strong></li>
      </ul>
    </td>
  </tr>
</table>
<h2>RockForce Modems</h2>
<table width="423" border="0" align="center">
  <tr>
    <td width="155" class="style1"><a href="/products_rockforce.html"><img src="/images/3boards_mini.jpg" width="150" border="0" /></a></td>
    <td width="258"><p><b>Exceptional Price to Performance.</b> Available in 4 and 8-port configurations, Mainpine\'s flagship RockForce series of intelligent fax cards providess customers with the speed, reliability and performance of \'enterprise-class\' fax hardware but an an exceptional price-to-performance guarantee.</p></td>
  </tr>
</table>
<h2>More Information</h2>
<h3><a href="/downloads/WP-Lobar.pdf" target="_blank">White Paper: Answering the Call with Rockforce Intelligent Fax Board</a></h3>
<p>How Lobar, Inc., a multi-million dollar enterprise, found reliability replacing their Brooktrout fax boards with a Mainpine solution.</p>
<h3><a href="/support.html#DocDloads">Document Downloads</a></h3>
<p>Datasheets and all other documentation for our product range.</p>
<h3><a href="/applications.html">Application Notes</a></h3>
<p>Take a look at our application notes that provide information based on your specific application. There are also answers to some of the specific questions you may have.</p>
<h3><a href="/sales.html">How to Buy</a></h3>
<p>Our sales section with contacts, pricing and other useful information.</p>'
      }
    ]
  }
})

page_applications = CmsPage.create!({
  :status => 'published',
  :menu_title => 'Applications',
  :cms_meta_attributes => {
    :url => 'applications',
    :title => 'Applications | Mainpine',
    :description => 'default description',
    :keywords => 'default keywords',
    :cms_contents_attributes => [
      {
        :status => 'published',
        :title => 'Help Getting Started',
        :content => '<p>Mainpine products have been used successfully in a wide variety of applications. To help you in getting started, we have compiled these application notes that contain useful information and links:</p>
<ul>
  <li><a href="#fax">Fax related</a></li>
  <li><a href="#data">Data related</a></li>
  <li><a href="#other">Other applications</a></li>
</ul>
<h2 id="fax">Fax related</h2>
<h3><a href="/savemoneyonfax.html">Save money on Fax</a></h3>
<p>Faxing isn\'t something you want you or your employees to spend their entire day on. Find out what kind of impact a fax server can have on your company in this document.</p>
<h3><a href="/buildfaxserver.html">Building a fax server</a></h3>
<p>If you have a lot of people on your network who need to send faxes, this note will tell you what you need to consider. It includes links to software vendors and advice on system hardware choices.</p>
<h3><a href="/whyv34.html">Do I need V.34?</a></h3>
<p>This note will describe what V.34 technology is, and discuss whether it\'s a technology that will give you a real benefit.</p>
<h3><a href="/whattypeofboard.html">What type of fax board do I need?</a></h3>
<p>This document talks about the different types of fax board available, and gives a comparison for their use in a fax server system.</p>
<h3><a href="/serverfit.html">Will this board work in my server?</a></h3>
<p>How can you be sure a solution will fit and work in your particular server? This document will tell you how...</p>
<h2 id="data">Data related</h2>
<h3><a href="/linebonding.html">Getting a faster data connection</a></h3>
<p>If you need to connect to the Internet using analog telephone lines, and you want more than a 56k connection, this note will tell you what you need in terms of hardware and software.</p>
<h3><a href="/ras.html">Building a dial-in remote access server (RAS)</a></h3>
<p>If you want to provide modem connectivity to your network, this application note describes several options, and some of the security tips and tricks.</p>
<h2 id="other">Other applications... </h2>
<p>More application notes are coming soon. If your application is not listed here, please <a href="mailto:info@mainpine.com">contact us</a> for more information.</p>'
      }
    ]
  }
})

page_sales = CmsPage.create!({
  :status => 'published',
  :menu_title => 'Sales',
  :cms_meta_attributes => {
    :url => 'sales',
    :title => 'Sales | Mainpine',
    :description => 'default description',
    :keywords => 'default keywords',
    :cms_contents_attributes => [
      {
        :status => 'published',
        :title => 'Mainpine Sales',
        :content => '<h3>If you need more information...</h3>
<p>If you have any final questions regarding these products, prior to purchase, please contact <a href="/support.html">Support</a>, who will be happy to answer your pre-sales questions.</p>
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
<p>If you are interested in setting up an OEM relationship, or you have software that you would like assistance in validating on these products, please take a look at our <a href="/partners.html">partner pages</a>. You will be assigned a specific contact who will guide you through the process. Our sales and engineering teams are ready to assist you with in-depth information and technical experience as required.</p>'
      }
    ]
  }
})

page_support = CmsPage.create!({
  :status => 'published',
  :menu_title => 'Support',
  :cms_meta_attributes => {
    :url => 'support',
    :title => 'Support | Mainpine',
    :description => 'default description',
    :keywords => 'default keywords',
    :cms_contents_attributes => [
      {
        :status => 'published',
        :title => 'Support',
        :content => '<p>If you need to contact our support team for assistance, please make sure you have read the section below on the information we need in order to help you. Thank you!</p>
<h2>Driver Downloads</h2>
<p>Here you will find drivers for our current products</p>
<table width="416" border="0" align="center" cellpadding="1" cellspacing="2" bordercolor="#003366" class="inlineTable">
  <tr>
    <th colspan="2">32/64bit Windows XP, Server 2003, Server 2008, Vista Driver</th>
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
    <td align="center"><div align="left"><a href="/downloads/MPCD20MAR09.zip">MPCD20MAR09.zip</a></div></td>
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
    <td align="center"><div align="left"><a href="/downloads/MPCD17SEP07.zip">MPCD17SEP07.zip</a></div></td>
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
    <td align="center"><div align="left"><a href="/downloads/MPCD19MAR07.zip">MPCD19MAR07.zip</a></div></td>
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
    <td align="center"><div align="left"><a href="/linuxsupport.html">More information</a></div></td>
  </tr>
</table>

<h2>Legacy Driver Downloads</h2>
<p><a href="/legacydrivers.html"></a>Here you will find <a href="/legacydrivers.html">drivers</a> for our legacy (retired) products</p>

<h2 id="DocDloads">Document Downloads</h2>
<p>Here you will find documentation for our current products</p>
<table width="416" border="0" align="center" cellpadding="1" cellspacing="2" bordercolor="#003366" class="inlineTable">
  <tr>
    <th height="22" colspan="2"> Product documentation</th>
  </tr>
  <tr>
    <td width="42%"><strong>RockForce DUO+ </strong></td>
    <td width="305" align="center"><div align="left"><a href="/downloads/DS2022_2_A4.PDF" target="_blank">Datasheet - A4 format </a></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="center"><div align="left"><a href="/downloads/DS2022_2_US.PDF" target="_blank">Datasheet - US Letter format</a></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="center"> <div align="left"><a href="/downloads/RockForceDUO+PCIComplianceChecklist-Issue3.pdf" target="_blank">PCI Compliance Checklist</a></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="center"><div align="left"></div></td>
  </tr>
  <tr>
    <td><strong>RockForce QUATRO+</strong></td>
    <td align="center"><div align="left"><a href="/downloads/DS2023_2_A4.PDF" target="_blank">Datasheet - A4 format</a></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="center"><div align="left"><a href="/downloads/DS2023_2_US.PDF" target="_blank">Datasheet - US Letter format</a></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="center"> <div align="left"><a href="/downloads/RockForceQUATRO+PCIComplianceChecklist-Issue3.pdf" target="_blank">PCI Compliance Checklist </a> </div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="center"><div align="left"></div></td>
  </tr>
  <tr>
    <td><strong>RockForce OCTO+</strong></td>
    <td align="center"><div align="left"><a href="/downloads/DS2024_2_A4.PDF" target="_blank">Datasheet - A4 format</a></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="center"><div align="left"><a href="/downloads/DS2024_2_US.PDF" target="_blank">Datasheet - US Letter format</a></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="center"> <div align="left"><a href="/downloads/RockForceOCTO+PCIComplianceChecklist-Issue3.pdf" target="_blank">PCI Compliance Checklist</a> </div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="center"><div align="left"></div></td>
  </tr>
  <tr>
    <td><strong>RockForce Range </strong></td>
    <td align="center"> <div align="left"><a href="/downloads/QS2014-2.PDF" target="_blank">RockForce Quick Start Guide </a> </div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="center"><div align="left"><a href="/downloads/DOC241204-KS1.pdf" target="_blank">RockForce Declaration of Conformity </a></div></td>
  </tr>
</table>

<h2>Contact our support team</h2>
<h3>For Technical problems with purchased Mainpine hardware:</h3>
<p>If you have purchased one of our products through one of our authorised resellers, please contact them for technical support.</p>
<p>If you have purchased support or hardware directly from Mainpine, please fill out this <a href="/supportquestionnaire.html">Support Request Form</a> and a technical support representative will be in contact with you as soon as possible.</p>
<p><strong><a href="/supportquestionnaire.html">Request Support</a></strong></p>
<h3>For general technical or pre-sales technical questions:</h3>
<p>Please contact us according to the area you are in:</p>
<table width="98%" border="0" cellpadding="0" cellspacing="0">
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
</table>'
      }
    ]
  }
})

page_partners = CmsPage.create!({
  :status => 'published',
  :menu_title => 'Partners',
  :cms_meta_attributes => {
    :url => 'partners',
    :title => 'Partners | Mainpine',
    :description => 'default description',
    :keywords => 'default keywords',
    :cms_contents_attributes => [
      {
        :status => 'published',
        :title => 'Mainpine Partners',
        :content => '<p><i>&quot;Building close relationships with our partners is vital to our business. If our partners are successful, then so are we. Realizing that, we strive to give our partners the products, support and tools they need, and go the extra mile whenever we can.&quot;</i></p>
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
<p>For more information please visit the <a href="/partnerprogram.html">Partner Program</a> page or contact our <a href="mailto:sales@mainpine.com"> Partner Team</a>.</p>

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
<p>For more information, please go to our <a href="/sales.html">How to Buy</a> section</p>

<h3 id="oem">OEMs</h3>
<p>Close OEM relationships are a cornerstone for our business. We are accustomed to providing a great deal of support, both technical and commercial, to make these relationships a success. We will quickly make engineering resource available where needed, and work with you on all commercial aspects. We appreciate that each OEM has a unique situation, and we act accordingly.</p>
<p>You need to have confidence that any product will integrate into your solution, and we want to make it simple for you to gain that confidence. That is why we offer a 30 day money-back guarantee, allowing you to conduct your initial tests without risking your money!</p>
<p>To kick off the process of working with us, please email our <a href="mailto:sales@mainpine.com">Sales Team</a> who will be pleased to provide you with any information you may need, and to get you a board under our standard 30-day money-back terms and conditions. We look forward to working with you!</p>

<h2>Sign Up Today!</h2>
<p>If you are looking to develop a close relationship with a market leading developer and supplier of multi-port boards, contact us to find out more. Please contact our <a href="mailto:sales@mainpine.com">Partners Team</a> who will be happy to help you. Once your application is processed, we will send you an Electronic Partner Pack, complete with brochures on each of our products.</p>'
      }
    ]
  }
})

page_corporate = CmsPage.create!({
  :status => 'published',
  :menu_title => 'Corporate',
  :cms_meta_attributes => {
    :url => 'corporate',
    :title => 'Corporate | Mainpine',
    :description => 'default description',
    :keywords => 'default keywords',
    :cms_contents_attributes => [
      {
        :status => 'published',
        :title => 'Corporate Information',
        :content => '<ul>
  <li><a href="/companyhistory.html">Company History</a></li>
  <li><a href="/headoffice.html">European Headquarters</a></li>
  <li><a href="/naoffice.html">North American Office</a></li>
</ul>
<h2>Mainpine in the News</h2>

<ul>
  <li>Aug 2007 &ndash; <a href="/downloads/PR101507_MSFax_.pdf" target="_blank">Mainpine&#8482; PCI Express&reg;  Certified with Microsoft&reg; SBS Fax Server</a></li>
  <li>Aug 2007 &ndash; <a href="/corporate/press/2007/Mainpine-NextGen-Aug07.pdf" target="_blank">Mainpine&#8482; Intelligent Fax Boards Supported by NextGen&reg; EMR</a></li>
  <li>May 2007 &ndash; <a href="/corporate/press/2007/PR_IQ-Express.pdf" target="_blank">Mainpine&trade; Announces World&rsquo;s Smallest PCI-Express Intelligent Fax Board</a></li>
  <li>Sept 2006 &ndash; <a href="/corporate/press/2006/PR_Mainpine_RockForceIQ_090606_.pdf" target="_blank">Next generation RockForce IQ product line released</a></li>
  <li>May 2006 &ndash; <a href="/corporate/press/2006/Move.pdf" target="_blank">Move to New Headquarters; Adds to Mgmt</a></li>
  <li>Apr 2006 &ndash; <a href="/corporate/press/2006/Mainpine-Interbit-PR042406.pdf" target="_blank">Interbit Data  Supported by RockForce Boards </a></li>
  <li>Mar 2006 &ndash; <a href="/corporate/press/2006/isvlab.html">Mainpine&trade; Announces Certification Lab for Fax Server Manufacturers </a></li>
  <li>Mar 2006 &ndash; <a href="/corporate/press/2006/newpresident.html" target="_blank">Mainpine&trade; Announces Appointment of New President and CEO</a></li>
  <li>Jan 2006 &ndash; <a href="/corporate/press/2006/recordyear.html">Mainpine Announces Record Sales for 2005</a></li>
  <li>Jan 2006 &ndash; <a href="/newsarchive.html#EUenvDir">Mainpine Adopts EU Environmental Directives </a></li>
  <li>Dec 2005 &ndash; <a href="/newsarchive.html#expEuroDist">Mainpine Expands European Distribution</a></li>
  <li>Feb 2005 &ndash; <a href="/newsarchive.html#NAOffice">Mainpine announces opening of North American Office</a></li>
  <li>Jul 2004 &ndash; <a href="/newsarchive.html#PCI3">Mainpine announces full compliance to the new PCI 3.0 specification for the RockForce range</a></li>
  <li>Apr 2004 &ndash; <a href="/newsarchive.html#Agnicorp1">Agnicorp Inc. selects Mainpine Technology for the Ai-4400 Convergence Gateway</a></li>
</ul>
<p><a href="/newsarchive.html"><strong>News Archive</strong></a></p>

<h2>About this website</h2>
<p>If you have any comments about this website, please email us at <a href="mailto:info@mainpine.com">info@mainpine.com.</a> Please also read our <a href="/legal.html">legal information</a> about this site.</p>'
      }
    ]
  }
})

page_contact = CmsPage.create!({
  :status => 'published',
  :menu_title => 'Contact',
  :cms_meta_attributes => {
    :url => 'contact',
    :title => 'Contact | Mainpine',
    :description => 'default description',
    :keywords => 'default keywords',
    :cms_contents_attributes => [
      {
        :status => 'published',
        :title => 'Contacting Mainpine',
        :content => '<h3>North American Office</h3>
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
</p>'
      }
    ]
  }
})

page_legal = CmsPage.create!({
  :status => 'published',
  :cms_meta_attributes => {
    :url => 'legal',
    :title => 'Legal | Mainpine',
    :description => 'default description',
    :keywords => 'default keywords',
    :cms_contents_attributes => [
      {
        :status => 'published',
        :title => 'Legal information about this website',
        :content => '<p>Please read the following information carefully:</p>
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
<p>Mainpine Ltd make all reasonable steps to treat your information confidentially. Mainpine Ltd. Will not sell or lease your information to any other companies other than subsidiaries of Mainpine Ltd. We do not engage in sending bulk unsolicited emails to those that have not requested them. If you have any questions about emails you may have received from Mainpine Ltd or any other questions on this policy, please email <a href="mailto:info@mainpine.com">info@mainpine.com</a></p>'
      }
    ]
  }
})

page_whyv34 = CmsPage.create!({
  :status => 'published',
  :cms_meta_attributes => {
    :url => 'whyv34',
    :title => 'Why V.34 | Mainpine',
    :cms_contents_attributes => [
      {
        :status => 'published',
        :title => 'Do I need V.34 Fax?',
        :content => '<p>When presented with a range of confusing standards and features, it is sometimes hard to get at the really important information: What does this do for me, and is it really important? Is there a clear cost-benefit in my situation?</p>
<p>In the case of V.34, there is a simple answer: V.34 makes faxing faster and more reliable, so it\'s likely that you will see real savings in an environment where a fax server is in use.</p>
<p>Let\'s take a look at some of the reasons behind these savings:</p>

<h2 id="whatisv34">What is V.34?</h2>
<p>V.34 fax is an ITU standard that describes how fax machines connect to each other. V.34 specifies connection rates of up to 33.6kbps compared with the previous standard, V.17, at 14.4kbps. Essentially, V.34 provides the following benefits:</p>
<ul>
  <li>Faster connection speed (over twice)</li>
  <li>Faster handshaking - the process when fax machines connect to each other at the start of a call. This can produce a time saving of approximately 6 seconds per call regardless of the size of fax.</li>
  <li>Less re-sending - V.34 is less likely to lose a connection through a minor line error, due to better error correction.</li>
</ul>
<p>V.34 has been around since 1998, and it has become a key feature for office fax machines. It is sometimes referred to as \'Super G3\'. Panasonic*, for example, refers to it as a \'3 second page\' feature because of the dramatically lower transmission times.</p>
<p>The technical benefits are clear, but only realized if both ends support the same protocols. A V.34 device can send and receive faxes to a V.17 device, but at the speeds supported by the slower device. Therefore it\'s important to get a feel for how many V.34 fax machines are out there.</p>

<h2 id="v34intherelaworld">V.34 in the real world</h2>
<p>The number of V.34-capable fax machines in use today is significant, and growing quickly. The amount shipped per year has grown from over a million in 2001 to an estimated four million in 2003, and it is predicted that in 2005 there will be a total of around 16 million installed V.34-capable machines.&sup1;</p>
<p>The percentage of machines that you send to that are V.34 enabled will depend on where you are in the world, and what type of recipient you send faxes to. Large and medium sized businesses are more likely to have a V.34 device, as it has been a standard feature on high-end fax machines for much longer. For several years the fax machines available in popular retail outlets in the USA have almost all supported V.34. So within the USA and Canada, a conservative estimate of the percentage would be somewhere between 20% and 30%.</p>

<h2 id="compression">Compression</h2>
<p>Before we go into V.34 deployments, it is worth noting the difference fax compression makes. There are several different standards for compression. They are, in order of effectiveness: MH, MR, MMR and JBIG. The impact that compression has varies depending on the document it is compressing, but it can be dramatic. JBIG is the most effective compression (up to 80% better), and an average document when compressed using JBIG becomes 1/20th of the original size! High-end fax machines will support all of these standards, and over time so will most fax machines.</p>
<p>The important thing to understand with compression is that this makes a huge difference to transmission times, but it varies dramatically depending on the type of content being faxed and the system configuration. A suitable solution should at the very least support MH, MR and MMR to see a cost saving. JBIG is an extremely powerful feature, and so it is a good idea to include that in a solution as well.</p>

<h2 id="awordoncolor">A word on color</h2>
<p>It is now possible to send faxes using color. High-end fax machines support this, as do most MFP (multi-function printer) devices. They are also color printers anyway, so supporting color fax is logical. A color fax is dramatically larger in data terms than simple black and white, and so it would be prohibitively expensive without V.34.</p>
<p>Color may have limited appeal for some organizations, but if you are faxing brochures, the impact of receiving it in color is tremendous! To make use of this, the board and software you are using must support color, and V.34 is a must-have to make it cost-effective.</p>

<h2 id="countingthecost">Counting the cost</h2>
<p align="center"><img src="/images/v34_chart1.gif" width="300" height="323" /></p>
<p>Let us start with an average fax that would usually take 3 minutes for us to send using a V.17 device that supported MH and MR compression. Of course, the cost of this call will vary depending on your provider and the ratio of local, national and international calls you make. In this case, lets assume that the average price is $0.05 per minute. That gives us:</p>
<p align="center"><strong><em>$0.15 per fax, with a V.17 device</em></strong></p>
<p>Let\'s then look at an equivalent fax sent using V.34 and more advanced compression such as MMR or JBIG. V.34 is 2.3 times faster, so we immediately reduce our 3 minute call to 1 minute 17 seconds. We also can take off 6 seconds per call for the reduced handshake time, so we are down to 1 minute 11 seconds. Then we use MMR or JBIG to reduce the size of what we send, and to be cautious we will assume that the extra benefit is just a 10% reduction in size rather than the potential 80% improvement we could see. This then reduces our call time down to 1 minute from the original 3 minutes, giving us:</p>
<p align="center"><strong><em>$0.05 per fax, with a V.34 device</em></strong></p>
<p>So straight away we\'re saving 0.10c every time we send a fax. If your organization sends 10,000 faxes per year (easier than you might think!) then this starts to be a significant cost saving. The actual figure can vary quite dramatically depending on average fax size and type, and telephony charges.</p>

<table border="1" align="center" cellspacing="0" class="inlineTable">
  <tr class="pageLining">
    <th width="117"><p>Number of faxes per year</p></th>
    <th width="124"><p>Yearly saving if 20% of calls use V.34</p></th>
    <th width="153"><p>Yearly saving if 100% of calls use V.34</p></th>
  </tr>
  <tr class="pageLining">
    <td><p align="center">10,000</p></td>
    <td><p align="center">$200</p></td>
    <td width="153"><p align="center">$1,000</p></td>
  </tr>
  <tr class="pageLining">
    <td><p align="center">50,000</p></td>
    <td><p align="center">$1,000</p></td>
    <td width="153"><p align="center">$5,000</p></td>
  </tr>
  <tr class="pageLining">
    <td><p align="center">100,000</p></td>
    <td><p align="center">$2,000</p></td>
    <td width="153"><p align="center">$10,000</p></td>
  </tr>
  <tr class="pageLining">
    <td height="47"><p align="center">1 Million</p></td>
    <td><p align="center">$20,000</p></td>
    <td width="153"><p align="center">$100,000</p></td>
  </tr>
</table>

<p>It is also worth mentioning two other benefits. The shorter call times may also mean you don\'t require additional lines; the point where you need to upgrade your server will be further out, again reducing your total costs. There is also a clear benefit to people who send you faxes, as this reduces their bill, and gives them a better experience of dealing with your company. Neither of these benefits are as compelling as the sheer cost savings, but are a part of the attraction of this technology.</p>
<p>Of course, the overall impact to your organization will depend on how many faxes you send, and how many are to a V.34 device. Figures from IDC indicate that around 40% of long distance charges are from faxing in the average corporation, so there are large savings to be made.&nbsp;You could save the entire cost of your system in less than a year, just by making sure it is V.34 enabled!</p>
<p>As well as the year one savings, the percentage of V.34 devices in use will be significantly increasing each year, so the rate you save will also increase. Over the life of a system, the savings could mount up into the tens of thousands of dollars!</p>
<p>If this is such a good idea, why don\'t all fax server solutions support V.34?</p>
<p>While V.34 has been available for some time, it is only in the last few years that it has become widely used. Consequently, there are only a handful of fax boards that have mature V.34 support. In some corners of the industry, the perception was that few users would be aware of the benefits of V.34. Consequently few board and software vendors have invested in adding this support and instead have played down the need to move from V.17.</p>

<h2 id="buyingav34solution">Buying a V.34 solution</h2>
<p>Now you have an idea how much you could save, how much will it actually cost you to buy a suitable solution? This solution will consist of hardware and software that supports V.34. Let\'s take a further look at these two components:</p>

<h2 id="gettingtherightsoftware">Getting the right software</h2>
<p>Whether you are using V.17 or V.34, you are going to need mature and reliable fax software that provides the right user and administration features for your network. On this basis you would probably end up considering a software solution that includes V.34 support, as most serious packages already do.</p>
<p>For information on suitable fax software, please go to our <a href="software.html#fax">software compatibility page</a>.</p>

<h2 id="gettingtherighthardware">Getting the right hardware</h2>
<p>Just as with fax server software, you need to choose a product that has the right features to match your requirements. It is important to buy a board that is designed for use inside servers. Single-user products have major build quality and reliability issues that will become apparent very quickly in a server environment. Some vendors suggest that Class 1 or 1.0 fax interfaces are insufficient for server use. However, this is not the case: They are very comprehensive, widely deployed and stable standards from the International Telecommunication Union (ITU). Class 1 and 1.0 interfaces are, in fact, ideal for server applications when used with the right hardware implementation.</p>
<p>Reliability, form factor and supportability are all very important. For example, when evaluating a board it is important to check that it has a low heat output, good build quality, and that it will fit in your system.</p>
<p>When you have found products that meet these basic requirements, take a look and see how much our V.34 fax board actually costs. We hope you will be pleasantly surprised!</p>
<p align="center"><img src="/images/3boardssmall.gif" width="200" height="114" /></p>
<p><b>The Mainpine RockForceT multi-port boards for fax, data and voice applications are the only products available that meet all the following requirements:</b></p>
<ul>
  <li>2, 4 or 8 RJ11 ports</li>
  <li>Super G3 V.34 Fax and JBIG compression</li>
  <li>V.92 56kbps data connections, line bonding</li>
  <li>Short board form factor</li>
  <li>Low thermal output (7W maximum)</li>
  <li>Universal PCI (5v and 3.3v)</li>
  <li>PCI 3.0 compliant fitting in ANY PCI or PCI-X slot!</li>
</ul>
<p>Prices start from $499 MSRP!</p>
<ul>
  <li><a href="/products.html">Products</a></li>
  <li><a href="/sales.html">How to Buy</a></li>
  <li><a href="/applications.html">More application notes</a></li>
</ul>
<p><font size="1">1: Source: Davidson Consulting</font></p>'
      }
    ]
  }
})

page_software = CmsPage.create!({
  :status => 'published',
  :cms_meta_attributes => {
    :url => 'software',
    :title => 'Software | Mainpine',
    :cms_contents_attributes => [
      {
        :status => 'published',
        :title => 'Software verified with Mainpine IQ Express boards',
        :content => '<p>The Mainpine IQ Express boards make use of standard serial drivers, and support standard interfaces. Therefore a huge range of software exists that will work with these products without any changes. If an application supports one of the following, then it is likely to function correctly:</p>
<ul>
  <li>Generic Unimodem</li>
  <li>TAPI Telephony API</li>
  <li>Class 1.x or Class 2.x fax interface</li>
</ul>
<p>However, we aim to provide you with good support for the products that you use, to provide you with certainty that your complete solution will operate reliably. To this end, we regularly undergo functional and long-term soak testing with applications that our customers use.</p>
<p>If there is an application or a software package that you are specifically interested in, or if you are unsure of the suitability of a package for your needs, please contact our <a href="/support.html">support team</a> who will be happy to assist you.</p>'
      }
    ]
  }
})

### CMS Blocks ###

block_default = CmsBlock.create!({
  :title => '(Default) More Information',
  :cms_contents_attributes => [
    {
      :status => 'published',
      :title => 'More Information',
      :content => '<ul>
  <li><a href="/applications.html">Other applications</a></li>
  <li><a href="/products.html">Products</a></li>
  <li><a href="/sales.html">How to buy</a></li>
</ul>'
    }
  ]
})

block_home_iq_express_information = CmsBlock.create!({
  :title => '(Home) IQ Express Information',
  :cms_contents_attributes => [
    {
      :status => 'published',
      :title => 'IQ Express Information',
      :content => '<ul>
  <li>IQ Express Datasheet, format: <a href="/downloads/Mainpine_IQ_Express_Data_Sheet_19DEC08-TP1.pdf">Letter</a>, <a href="/downloads/Mainpine_IQ_Express_Data_Sheet_19DEC08-TP1.pdf">A-4</a></li>
  <li>Dimensions: <a href="/downloads/IQDimensions-mm.jpg">metric</a> or <a href="/downloads/IQDimensions-in.jpg">inches</a></li>
  <li><a href="/applications.html">Application notes</a></li>
  <li><a href="/whyv34.html">Do I need V.34?</a></li>
  <li><a href="/software.html">Software Compatibility</a></li>
  <li><a href="/support.html">Support</a></li>
</ul>'
    }
  ]
})

block_home_how_do_i = CmsBlock.create!({
  :title => '(Home) How do I?',
  :cms_contents_attributes => [
    {
      :status => 'published',
      :title => 'How do I?',
      :content => '<ul>
  <li><a href="/savemoneyonfax.html">Save money on faxing?</a></li>
  <li><a href="/buildfaxserver.html">Build a Fax Server or Broadcast server?</a></li>
  <li><a href="/linebonding.html">Get a faster data connection on multiple lines?</a></li>
  <li><a href="/ras.html">Build a dial-in server</a></li>
  <li><a href="/tr114comparison.html">Compare QUATRO+ &amp; Brooktrout* TR114*</a></li>
  <li><a href="/tr1034comparison.html">Compare QUATRO+ &amp; Brooktrout* TR1034*</a></li>
</ul>'
    }
  ]
})

block_home_latest_news = CmsBlock.create!({
  :title => '(Home) Latest News...',
  :cms_contents_attributes => [
    {
      :status => 'published',
      :title => 'Latest News...',
      :content => '<ul>
  <li><a href="/corporate/press/2007/PR101507_MSFax_.pdf" target="_blank">Mainpine&trade; certifies Microsoft&reg; SBS Fax Server</a></li>
  <li><a href="/corporate/press/2007/Mainpine-NextGen-Aug07.pdf" target="_blank">Mainpine&trade; boards offered with NextGen&reg;</a></li>
  <li><a href="/corporate/press/2007/PR_IQ-Express.pdf" target="_blank">Mainpine&trade; Announces PCI-Express Fax Board</a></li>
  <li><a href="/corporate/press/2006/Move.pdf" target="_blank">Move to New Headquarters; Adds to Mgmt</a></li>
  <li><a href="/corporate/press/2006/Mainpine-Interbit-PR042406.pdf" target="_blank">Interbit Data Supported by RockForce Boards</a></li>
  <li><a href="/corporate/press/2006/isvlab.html">Mainpine&trade; Announces ISV Certification Lab </a></li>
  <li><a href="/corporate/press/2006/newpresident.html" target="_blank">Mainpine&trade; Appoints New President and CEO</a></li>
  <li><a href="/corporate/press/2006/recordyear.html" target="_blank">Mainpine Announces Record Sales for 2005</a></li>
  <li><a href="/downloads/WP-Lobar.pdf" target="_blank">Lobar, Inc. Replace Brooktrout* with Mainpine</a></li>
  <li><a href="/newsarchive.html#EUenvDir">Mainpine Adopts EU Environmental Directives</a></li>
  <li><a href="/newsarchive.html#expEuroDist">Mainpine Expands European Distribution</a></li>
  <li><a href="/newsarchive.html#NAOffice">Mainpine Opens North American Office</a></li>
</ul>'
    }
  ]
})

block_home_how_to_buy = CmsBlock.create!({
  :title => '(Home) How to Buy',
  :cms_contents_attributes => [
    {
      :status => 'published',
      :title => 'How to Buy',
      :content => '<ul>
  <li><a href="/sales.html">For End Users</a></li>
  <li><a href="/partners.html">For Resellers and OEMs</a></li>
</ul>'
    }
  ]
})

block_products_more_infomation = CmsBlock.create!({
  :title => '(Products) More Information',
  :cms_contents_attributes => [
    {
      :status => 'published',
      :title => 'More Information',
      :content => '<ul>
  <li><a href="/applications.html">Application notes</a></li>
  <li><a href="/whyv34.html">Do I need V.34?</a></li>
  <li><a href="/whattypeofboard.html">What type of fax board to I need?</a></li>
  <li><a href="/software.html">Software Compatibility</a></li>
  <li><a href="/support.html">Support</a></li>
</ul>'
    }
  ]
})

block_applications_more_information = CmsBlock.create!({
  :title => '(Applications) More Information',
  :cms_contents_attributes => [
    {
      :status => 'published',
      :title => 'More Information',
      :content => '<ul>
  <li><a href="/products.html">Products</a></li>
  <li><a href="/sales.html">How to Buy</a></li>
  <li><a href="/software.html">Software Compatibility</a></li>
</ul>'
    }
  ]
})

block_sales_more_information = CmsBlock.create!({
  :title => '(Sales) More Information',
  :cms_contents_attributes => [
    {
      :status => 'published',
      :title => 'More Information',
      :content => '<ul>
  <li><a href="/products.html">Products</a></li>
  <li><a href="/corporate.html">Corporate Information</a></li>
  <li><a href="/partners.html">Partners</a></li>
</ul>'
    }
  ]
})

block_support_more_information = CmsBlock.create!({
  :title => '(Support) More Information',
  :cms_contents_attributes => [
    {
      :status => 'published',
      :title => 'More Information',
      :content => '<ul>
  <li><a href="/products.html">Products</a></li>
  <li><a href="/corporate.html">Corporate Information</a></li>
  <li><a href="/software.html">Software Compatibility</a></li>
  <li><a href="/developers.html">What are the board\'s enhanced features?</a></li>
  <li><a href="/q_a.html">Frequently Asked Questions</a></li>
</ul>'
    }
  ]
})

block_partners_more_information = CmsBlock.create!({
  :title => '(Partners) More Information',
  :cms_contents_attributes => [
    {
      :status => 'published',
      :title => 'More Information',
      :content => '<ul>
  <li><a href="/corporate.html">Corporate Information</a> </li>
  <li><a href="/products.html">Products</a></li>
  <li><a href="/applications.html">Applications</a></li>
</ul>'
    }
  ]
})

block_corporate_more_information = CmsBlock.create!({
  :title => '(Corporate) More Information',
  :cms_contents_attributes => [
    {
      :status => 'published',
      :title => 'More Information',
      :content => '<ul>
  <li><a href="/products.html">Products</a></li>
  <li><a href="/partners.html">Partners</a></li>
  <li><a href="/applications.html">Applications</a></li>
</ul>'
    }
  ]
})

block_contact_more_information = CmsBlock.create!({
  :title => '(Contact) More Information',
  :cms_contents_attributes => [
    {
      :status => 'published',
      :title => 'More Information',
      :content => '<ul>
  <li><a href="/corporate.html">Corporate Information</a></li>
  <li><a href="/products.html">Products</a></li>
  <li><a href="/sales.html">How to buy</a></li>
</ul>'
    }
  ]
})

block_legal_more_information = CmsBlock.create!({
  :title => '(Legal) More Information',
  :cms_contents_attributes => [
    {
      :status => 'published',
      :title => 'More Information',
      :content => '<ul>
  <li><a href="/corporate.html">Corporate Information</a></li>
  <li><a href="/contact.html">Contact us</a></li>
</ul>'
    }
  ]
})

block_whyv34_in_this_document = CmsBlock.create!({
  :title => '(WhyV34) In this document',
  :cms_contents_attributes => [
    {
      :status => 'published',
      :title => 'In this document',
      :content => '<ul>
  <li><a href="#V34Fax">Do I need V.34?</a> </li>
  <li><a href="#whatisv34">What is V.34?</a></li>
  <li><a href="#v34intherelaworld">V.34 in the real world</a></li>
  <li><a href="#compression">Compression</a></li>
  <li><a href="#awordoncolor">A word on colour</a></li>
  <li><a href="#countingthecost">Counting the cost</a></li>
  <li><a href="#buyingav34solution">Buying a V.34 solution</a></li>
  <li><a href="#gettingtherightsoftware">Getting the right Software</a></li>
  <li><a href="#gettingtherighthardware">Getting the right Hardware</a></li>
</ul>'
    }
  ]
})

block_software_more_information = CmsBlock.create!({
  :title => '(Software) More Information',
  :cms_contents_attributes => [
    {
      :status => 'published',
      :title => 'More Information',
      :content => '<ul>
  <li><a href="/applications.html">Applications</a></li>
  <li><a href="/support.html">Support information</a></li>
  <li><a href="/products.html">Products</a></li>
</ul>'
    }
  ]
})

block_software_operating_systems = CmsBlock.create!({
  :title => '(Software) Operating systems',
  :cms_contents_attributes => [
    {
      :status => 'published',
      :title => 'Operating systems',
      :content => '<p><strong>Mainpine IQ Express products are tested with and support the following operating systems</strong></p>
<ul>
  <li>Microsoft Windows*
    <ul>
      <li>Windows XP</li>
      <li>Windows Vista</li>
      <li>Windows Server 2003</li>
      <li>Windows Server 2008</li>
    </ul>
  </li>
  <li>Linux
    <ul>
      <li>Kernel versions 2.4 and greater tested</li>
    </ul>
  </li>
</ul>
<p><a href="/support.html">More information</a></p>'
    }
  ]
})

page_home.cms_blocks << block_home_iq_express_information
page_home.cms_blocks << block_home_how_do_i
page_home.cms_blocks << block_home_latest_news
page_home.cms_blocks << block_home_how_to_buy

page_products.cms_blocks << block_products_more_infomation

page_applications.cms_blocks << block_applications_more_information

page_sales.cms_blocks << block_sales_more_information

page_support.cms_blocks << block_support_more_information

page_partners.cms_blocks << block_partners_more_information

page_corporate.cms_blocks << block_corporate_more_information

page_contact.cms_blocks << block_contact_more_information

page_legal.cms_blocks << block_legal_more_information

page_whyv34.cms_blocks << block_default
page_whyv34.cms_blocks << block_whyv34_in_this_document

page_software.cms_blocks << block_software_more_information
page_software.cms_blocks << block_software_operating_systems

product_iqe = Product.create!({
  :name => 'IQ Express',
  :cms_meta_attributes => {
    :url => 'products_IQE',
    :title => 'IQ Express',
    :cms_contents_attributes => [
      {
        :status => 'published',
        :title => "IQ Express - The World&rsquo;s Smallest PCI-Express Intelligent Fax Board",
        :content => '<p align="center"><a href="/images/IQF4-Low-600.jpg" target="_blank"><img src="/images/IQF4-Low-200.jpg" alt="asdf" width="200" height="174" border="0" /></a><a href="/images/IQF4-Std-600.jpg" target="_blank"><img src="/images/IQF4-Std-200.jpg" width="200" height="167" border="0" /></a></p>
<ul>
  <li>PCI Express boards for compact-sized computers</li>
  <li>Fits in 1X, 4X, 8X or 16X PCIe slots </li>
  <li>Low-profile or Standard-profile brackets</li>
  <li>1, 2, 4 and 8-port configurations</li>
  <li>V.34 fax / JBIG Compression</li>
  <li>Supports Class 1, 1.0, 2.0 and 2.1</li>
</ul>
<h2><b>Specifications</b></h2>
<p><strong>Fax Specifications</strong></p>
<ul>
  <li>ITU-T V.34 (Super G3), V.17, V.29, V.27 ter, V.21 ch. 2, and V.8 Call Establishment</li>
  <li>ITU-T T.30, T.31 (Service Class 1, 1.0, 2.0, 2.1)</li>
  <li>ECM Error Correction Mode</li>
  <li>MH, MR, MMR, JBIG and JPEG Compression</li>
  <li>Normal, fine, superfine, hyperfine and ultrafine resolution</li>
  <li>Color fax support</li>
</ul>
<p><strong>Hardware</strong></p>
<ul>
  <li>POTS: One RJ11 Connector</li>
  <li>56 MIPS CPU per port</li>
  <li>120 MIPS DSP per port</li>
  <li>Global DAA</li>
  <li>Software controlled hardware reset per port</li>
  <li>Software readable 48bit serial number</li>
  <li>Single interrupt per board</li>
  <li>Power consumption: Less than 1 Watt</li>
  <li> Mix-and-match Mainpine and third-party hardware</li>
</ul>
<p><strong>Physical Description</strong> - 167mm x 80mm (6.60&quot; x 2.52&quot;) Low Profile bracket</p>
<p><strong>Environmental</strong></p>
<ul>
  <li>Operating temperature: 0 - 50 C</li>
  <li>Storage temperature: -20 - 85 C</li>
  <li>Relative humidity: 10% - 80%</li>
  <li>Non-condensing Altitude: 0 - 3660m</li>
</ul>
<p><strong>Operating Systems</strong></p>
<ul>
  <li>Windows XP</li>
  <li>Windows Vista</li>
  <li>Windows Server 2003</li>
  <li>Windows Server 2008</li>
  <li>Linux</li>
</ul>
<p><strong>Standards and Approvals</strong></p>
<ul>
  <li>Manufacturing: BS EN ISO 9001:2000</li>
  <li>Telecom: TIA 968-A (FCC Part 68), IC CS03, TS 103 021 (TBR21)</li>
  <li>EMC: FCC Part 15, ICES-003, EN 55022, EN 55024</li>
  <li>Safety: UL 60950, CSA 60950, EN 60950</li>
  <li>Environmental: EU 2002/95/EC (&quot;RoHS&quot;), EU 2002/96/EC (&quot;WEEE&quot;), EN 50419</li>
  <li>CE Mark</li>
  <li>PCI Express Base 1.0a</li>
</ul>
<p><strong>Service and Warranty</strong></p>
<ul>
  <li>30-Day satisfaction guarantee</li>
  <li>5-Year hardware warranty</li>
  <li>Express Replacement hardware option</li>
</ul>
<h2>More Information</h2>
<p align="left"><a href="/applications.html">Application Notes</a></p>
<p>Take a look at our application notes that provide information based on your specific application. There are also answers to some of the specific questions you may have.</p>
<h3><a href="/sales.html">How to Buy</a></h3>
<p>Our sales section with contacts, pricing and other useful information.</p>'
      }
    ]
  }
})

product_rockforce = Product.create!({
  :name => 'RockForce',
  :cms_meta_attributes => {
    :url => 'products_rockforce',
    :title => 'RockForce',
    :cms_contents_attributes => [
      {
        :status => 'published',
        :title => "The Mainpine RockForce range",
        :content => '<p>The Mainpine RockForce range of multi-port interface cards are used for a variety of Fax, Data and Voice applications. To find out more, please visit our <a href="/applications.html">Applications</a> section that contains detailed information on what you will need.</p>
<p align="center"><img src="/images/3boardssmall.gif" width="200" height="114" /></p>
<h2><b>Features:</b></h2>
<table width="311" border="1" align="center" cellpadding="6" cellspacing="0" class="inlineTable">
  <tr>
    <td width="83" valign="top"><strong>Fax</strong></td>
    <td width="186" valign="top">V.34 Super G3 33600bps<br />JBIG compression and colour</td>
  </tr>
  <tr>
    <td valign="top"><strong>Data</strong></td>
    <td valign="top">V.92 (56kbps)<br />V.44 Web Data Compression<br />Line bonding<br />Modem-on-hold</td>
  </tr>
  <tr>
    <td valign="top"><strong>Voice</strong></td>
    <td valign="top">AT+V Commands</td>
  </tr>
  <tr>
    <td valign="top"><strong>Physical</strong></td>
    <td valign="top">Universal PCI 3.0<br />Short board form factor<br />2, 4 or 8 RJ11 analog ports</td>
  </tr>
  <tr>
    <td valign="top"><strong>O/S Support</strong></td>
    <td valign="top">Windows* XP, 2000 and 2003<br />Linux*</td>
  </tr>
  <tr>
    <td valign="top"><strong>Models</strong></td>
    <td align="center" valign="top">2 ports: RockForce DUO+<br />4 ports: RockForce QUATRO+<br />8 ports: RockForce OCTO+</td>
  </tr>
</table>
<br />
<h2>More Information</h2>
<h3><a href="/downloads/WP-Lobar.pdf" target="_blank">White Paper: Answering the Call with Rockforce Intelligent Fax Board</a></h3>
<p>How Lobar, Inc., a multi-million dollar enterprise, found reliability replacing their Brooktrout fax boards with a Mainpine solution.</p>
<h3><a href="/support.html#DocDloads">Document Downloads</a></h3>
<p>Datasheets and all other documentation for our product range.</p>
<h3><a href="/applications.html">Application Notes</a></h3>
<p>Take a look at our application notes that provide information based on your specific application. There are also answers to some of the specific questions you may have.</p>
<h3><a href="/sales.html">How to Buy</a></h3>
<p>Our sales section with contacts, pricing and other useful information.</p>'
      }
    ]
  }
})
