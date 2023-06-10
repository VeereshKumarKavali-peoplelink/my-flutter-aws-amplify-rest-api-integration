// const amplifyconfig = '''{
//   "UserAgent": "aws-amplify-cli/2.0",
//   "Version": "1.0",
//   "api": {
//     "plugins": {
//       "awsAPIPlugin": {
//         "dummyapi": {
//           "endpoint": "https://fakestoreapi.com/products"
//         }
//       }
//     }
//   }
// }''';

const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify/cli",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "ap-southeast-1_gQmeuuqbo",
                        "AppClientId": "7dnumq15j3q6prdv779f66q9oi",
                        "Region": "ap-southeast-1"
                    }
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "ap-southeast-1:9c91e394-c253-4f0e-947e-520b15e854be",
                            "Region": "ap-southeast-1"
                        }
                    }
                }
            }
        }
    },
     "api": {
        "plugins": {
            "awsAPIPlugin": {

               




                "invcScheduleAPI": {
                    "endpointType": "REST",
                    "endpoint": "https://ez0m7ym7vc.execute-api.ap-south-1.amazonaws.com/dev",
                    "region": "ap-south-1",
                    "authorizationType": "AWS_IAM"
                },
                "invcUserGateway": {
                    "endpointType": "REST",
                    "endpoint": "https://biwqsik8xf.execute-api.ap-south-1.amazonaws.com/dev",
                    "region": "ap-south-1",
                    "authorizationType": "AWS_IAM"
                },
                "invcEmailAPI": {
                    "endpointType": "REST",
                    "endpoint": "https://oskeksivkb.execute-api.ap-southeast-1.amazonaws.com/dev",
                    "region": "ap-southeast-1",
                    "authorizationType": "AWS_IAM"
                },
                "invcLicenseAPI": {
                    "endpointType": "REST",
                    "endpoint":  "https://zl5e9lt2li.execute-api.ap-south-1.amazonaws.com/dev",
                    "region": "ap-south-1",
                    "authorizationType": "AWS_IAM"
                },
                "invcChatAPI": {
                    "endpointType": "REST",
                    "endpoint": "https://f5ah684yh7.execute-api.ap-south-1.amazonaws.com/dev",
                    "region": "ap-south-1",
                    "authorizationType": "AWS_IAM"
                },
                "invcManageUser2021API": {
                    "endpointType": "REST",
                    "endpoint": "https://dnpiw6akg2.execute-api.ap-south-1.amazonaws.com/dev",
                    "region": "ap-south-1",
                    "authorizationType": "AWS_IAM"
                },
                "inaffiliateUserAPI": {
                    "endpointType": "REST",
                    "endpoint": "https://uq5bn4du8a.execute-api.ap-south-1.amazonaws.com/dev",
                    "region": "ap-south-1",
                    "authorizationType": "AWS_IAM"
                }
            }
        }
    },
    "storage": {
        "plugins": {
            "awsS3StoragePlugin": {
                "bucket": "instavcprofileimages",
                "region": "ap-south-1"
            }
        }
    }

}''';
