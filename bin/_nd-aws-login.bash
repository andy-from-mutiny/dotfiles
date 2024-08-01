main() {
	aws sso login
	aws ecr get-login-password | docker login -u AWS --password-stdin "https://436267919886.dkr.ecr.us-east-1.amazonaws.com"
}

main "$@"
