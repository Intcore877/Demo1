# DevOps-159 - SoftServe study program
<hline>
<h2>Project description</h2>
This project is a DevOps-159 group presentation page, developed with Microsoft ASP.NET application for Demo1 DevOps Windows study programm by SoftServe company.
<hline>
<h2>Goals</h2>
The project goal is to get acquainted with the technologies of development of Web applications on the Windows platform. Automate the creation of environments to run applications based on Windows 2016 Server. Setting up the environments for application deployment, including IIS Web Server configuration, MSSQL Server and other Tools.
<hline>
<h2>Tools</h2>
<ul>
<li>Microsoft Visual Studio Community 2017 ver.15.9.7</li>
<li>Vagrant 2.2.4 by HashiCorp</li>
<li>VirtualBox 6.0.4 r128413 (Qt5.6.2) by Oracle</li>
<li>Packer 1.3.1 by HashiCorp</li>
<li>PowerShell v5</li>
</ul>
<hline>
<h2>Usage:</h2>
<ul>
<li>1. Install Vagrant engine from "https://www.vagrantup.com/";</li>
<li>1.1 Install Virtualbox software from "https://www.virtualbox.org/wiki/Downloads";</li>
<li>1.2 Install Packer v 1.3.1 from “www.packer.io”</li>
<li>2. Create directory to you future virtual environement project. For example "D:\Demo1";</li>
<li>3. git clone https://github.com/Intcore877/Demo1</li>
<li>4. Execute PowerShell command "./packer build ./windows_2016.template" from target directory.</li>
<li>5. Wait for Vagrant engine downlad virtualbox instances, install, run end provision them with provisioning script. Make some tea, you have at least 60 min.</li>
<li>6. Execute PowerShell command “vagrant box add .\windows_2016_virtualbox.box”.</li>
<li>7. Execute PowerShell command “vagrant up”</li>
<li>8. Wait for end of deployment process and check the result in web browser at adress: http:/localhost/; (To enter the admin panel at http:/localhost/admin/index you must use Login: Admin, Password: 12345</li>
  </ul>
<hline>
<h2>Deployment diagram</h2>
<div align="center"><img src="https://github.com/Intcore877/Demo1/blob/master/Deployment%20Diagram.jpg"></div>
<hline>  
