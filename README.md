<div align="center">
	<p>
	<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/ThoughtWorks-DPS/static/master/thoughtworks_flamingo_wave.png?sanitize=true" width=200 /><br />
	<img alt="DPS Title" src="https://raw.githubusercontent.com/ThoughtWorks-DPS/static/master/EMPCPlatformStarterKitsImage.png?sanitize=true" width=350/><br />
	<h2>psk-aws-iam-profiles</h2>
	<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/ThoughtWorks-DPS/lab-iam-profiles"></a> <a href="https://aws.amazon.com"><img src="https://img.shields.io/badge/-deployed-blank.svg?style=social&logo=amazon"></a>
	</p>
</div>

Go [here] for the arachitectural overview of an AWS-based Engineering Platform.  

This pipeline manages:  

**Product service accounts**  

main.tf  

<div align="center">
	<img alt="architecture1.png" src="https://github.com/ThoughtWorks-DPS/psk-aws-iam-profiles/raw/main/doc/architecture1.png" width=700 />
</div>

**Pipeline Roles (permissions)**  

Each pipeline role has a matching, named role file.  
<div align="center">
	<img alt="architecture2.png" src="https://github.com/ThoughtWorks-DPS/psk-aws-iam-profiles/raw/main/doc/architecture2.png" width=700 />
</div>

### about access permissions  

In general, it is only the Engineering Platform product development team(s) that will have direct access to the product AWS accounts. Customers of the platform will not have AWS IAM identities but rather will have access defined and maintained as part of the overall product capabilities, through an external idp.  

Even though EP product team members have direct access, apart from the Development account, you should not expect to see actual human write-access taking place. All change is brought about through software-defined process and via a service account persona.  

As you can see from the above diagram, account level roles are ubiquitous. Each account used by the product has the same set of roles defined. A service account's group membership then determines which accounts in which the svc identity may assume any role.  

### maintainers notes

1. specific .gitignore entries

* Ignore all extensions of .auto.tfvars.json. These are autogenerated during the pipeline run and are ignored so that any local testing doesn't accidently cuase problem to the pipeline.  
* Ignore all .terraform files that might be created from local init steps.  

2. Use of python  

Python used only for the local git commit-hook configuration; e.g., use of pre-commit, checkov, etc.  

3. pre-commit

* check the common file-types in the repo for syntax
* check for aws credentials
* scan terraform files for syntax, standard style, and secure configuration

4. static analysis performed

* [tflint](https://github.com/terraform-linters/tflint)
* [tfsec](https://github.com/aquasecurity/tfsec)
* terraform fmt
* terraform validate
* [checkov](https://github.com/bridgecrewio/checkov)
