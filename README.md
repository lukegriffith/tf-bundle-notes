# How to use terraform-bundle 

First the bundler needs to be compiled, following the Terraform dev setup guide, on the main README in the repo show you how to do this.

```bash

# set GOPATH, unless using ~/go
GOPATH=/opt/go

git clone https://github.com/hashicorp/terraform

go get -v ./terraform/tools/terraform-bundle

cd $GOPATH/src/github.com/hashicorp/terraform

# a test was causing problems, due to an unknown type, I had to disable a config go file
mv ./config/testing.go ./config/testing.go.disabled
go install -v ./tools/terraform-bundle/

```

Once this is completed, $GOPATH/bin will have the binary in. Ensure this is added to your path then created the hcl file (bundle.hcl)

Then run the bundle command, explicitly pulling down linux x86_64 arch.

```bash
terraform-bundle  package -os=linux -arch=amd64 bundle.hcl 
```