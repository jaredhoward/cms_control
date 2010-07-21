# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

page = CmsPage.create({
  :status => 'draft',
  :show_in_menu => true,
  :cms_meta_attributes => {
    :url => 'home',
    :title => 'Main Pine',
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
