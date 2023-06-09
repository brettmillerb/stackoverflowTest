
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Adds new entity to users
.Description
Adds new entity to users
.Notes

.Link
https://learn.microsoft.com/powershell/module/az.resources/new-azaduser
#>
function New-AzADUser {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Models.ApiV10.IMicrosoftGraphUser])]
[CmdletBinding(DefaultParameterSetName='WithPassword', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # A freeform text entry field for the user to describe themselves.
    # Returned only on $select.
    ${AboutMe},

    [Parameter()]
    [System.Boolean]
    [Alias('EnableAccount')]
    # true for enabling the account; otherwise, false.
    ${AccountEnabled},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # Sets the age group of the user.
    # Allowed values: null, minor, notAdult and adult.
    # Refer to the legal age group property definitions for further information.
    # Supports $filter (eq, ne, NOT, and in).
    ${AgeGroup},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.DateTime]
    # The birthday of the user.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z Returned only on $select.
    ${Birthday},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # The city in which the user is located.
    # Maximum length is 128 characters.
    # Supports $filter (eq, ne, NOT, ge, le, in, startsWith).
    ${City},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # The company name which the user is associated.
    # This property can be useful for describing the company that an external user comes from.
    # The maximum length of the company name is 64 characters.Supports $filter (eq, ne, NOT, ge, le, in, startsWith).
    ${CompanyName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # Sets whether consent has been obtained for minors.
    # Allowed values: null, granted, denied and notRequired.
    # Refer to the legal age group property definitions for further information.
    # Supports $filter (eq, ne, NOT, and in).
    ${ConsentProvidedForMinor},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # The country/region in which the user is located; for example, US or UK.
    # Maximum length is 128 characters.
    # Supports $filter (eq, ne, NOT, ge, le, in, startsWith).
    ${Country},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.DateTime]
    # .
    ${DeletedDateTime},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # The name for the department in which the user works.
    # Maximum length is 64 characters.Supports $filter (eq, ne, NOT , ge, le, and in operators).
    ${Department},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.Int32]
    # The limit on the maximum number of devices that the user is permitted to enroll.
    # Allowed values are 5 or 1000.
    ${DeviceEnrollmentLimit},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # The name displayed in the address book for the user.
    # This value is usually the combination of the user's first name, middle initial, and last name.
    # This property is required when a user is created and it cannot be cleared during updates.
    # Maximum length is 256 characters.
    # Supports $filter (eq, ne, NOT , ge, le, in, startsWith), $orderBy, and $search.
    ${DisplayName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.DateTime]
    # The date and time when the user was hired or will start work in case of a future hire.
    # Supports $filter (eq, ne, NOT , ge, le, in).
    ${EmployeeHireDate},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # The employee identifier assigned to the user by the organization.
    # Supports $filter (eq, ne, NOT , ge, le, in, startsWith).
    ${EmployeeId},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # Captures enterprise worker type.
    # For example, Employee, Contractor, Consultant, or Vendor.
    # Supports $filter (eq, ne, NOT , ge, le, in, startsWith).
    ${EmployeeType},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # For an external user invited to the tenant using the invitation API, this property represents the invited user's invitation status.
    # For invited users, the state can be PendingAcceptance or Accepted, or null for all other users.
    # Supports $filter (eq, ne, NOT , in).
    ${ExternalUserState},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.DateTime]
    # Shows the timestamp for the latest change to the externalUserState property.
    # Supports $filter (eq, ne, NOT , in).
    ${ExternalUserStateChangeDateTime},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # The fax number of the user.
    # Supports $filter (eq, ne, NOT , ge, le, in, startsWith).
    ${FaxNumber},
  
    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # The given name (first name) of the user.
    # Maximum length is 64 characters.
    # Supports $filter (eq, ne, NOT , ge, le, in, startsWith).
    ${GivenName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.DateTime]
    # The hire date of the user.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    # Returned only on $select.
    # Note: This property is specific to SharePoint Online.
    # We recommend using the native employeeHireDate property to set and update hire date values using Microsoft Graph APIs.
    ${HireDate},
  
    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String[]]
    # A list for the user to describe their interests.
    # Returned only on $select.
    ${Interest},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Do not use – reserved for future use.
    ${IsResourceAccount},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # The user's job title.
    # Maximum length is 128 characters.
    # Supports $filter (eq, ne, NOT , ge, le, in, startsWith).
    ${JobTitle},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # The SMTP address for the user, for example, admin@contoso.com.
    # Changes to this property will also update the user's proxyAddresses collection to include the value as an SMTP address.
    # While this property can contain accent characters, using them can cause access issues with other Microsoft applications for the user.
    # Supports $filter (eq, ne, NOT, ge, le, in, startsWith, endsWith).
    ${Mail},
  
    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # The mail alias for the user.
    # This property must be specified when a user is created.
    # Maximum length is 64 characters.
    # Supports $filter (eq, ne, NOT, ge, le, in, startsWith).
    ${MailNickname},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # The primary cellular telephone number for the user.
    # Read-only for users synced from on-premises directory.
    # Supports $filter (eq, ne, NOT, ge, le, in, startsWith).
    ${MobilePhone},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # The URL for the user's personal site.
    # Returned only on $select.
    ${MySite},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # The office location in the user's place of business.
    # Maximum length is 128 characters.
    # Supports $filter (eq, ne, NOT, ge, le, in, startsWith).
    ${OfficeLocation},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    [Alias("OnPremisesImmutableId")]
    # This property is used to associate an on-premises Active Directory user account to their Azure AD user object.
    # This property must be specified when creating a new user account in the Graph if you are using a federated domain for the user's userPrincipalName (UPN) property.
    # NOTE: The $ and _ characters cannot be used when specifying this property.
    # Returned only on $select.
    # Supports $filter (eq, ne, NOT, ge, le, in)..
    ${ImmutableId},
  
    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String[]]
    # A list of additional email addresses for the user; for example: ['bob@contoso.com', 'Robert@fabrikam.com'].NOTE: While this property can contain accent characters, they can cause access issues to first-party applications for the user.Supports $filter (eq, NOT, ge, le, in, startsWith).
    ${OtherMail},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # Specifies password policies for the user.
    # This value is an enumeration with one possible value being DisableStrongPassword, which allows weaker passwords than the default policy to be specified.
    # DisablePasswordExpiration can also be specified.
    # The two may be specified together; for example: DisablePasswordExpiration, DisableStrongPassword.Supports $filter (ne, NOT).
    ${PasswordPolicy},

    [Parameter(ParameterSetName="WithPasswordProfile", Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Models.ApiV10.IMicrosoftGraphPasswordProfile]
    # passwordProfile
    # To construct, see NOTES section for PASSWORDPROFILE properties and create a hash table.
    ${PasswordProfile},
  
    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # The postal code for the user's postal address.
    # The postal code is specific to the user's country/region.
    # In the United States of America, this attribute contains the ZIP code.
    # Maximum length is 40 characters.
    # Supports $filter (eq, ne, NOT, ge, le, in, startsWith).
    ${PostalCode},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # The preferred language for the user.
    # Should follow ISO 639-1 Code; for example en-US.
    # Supports $filter (eq, ne, NOT, ge, le, in, startsWith).
    ${PreferredLanguage},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # The preferred name for the user.
    # Returned only on $select.
    ${PreferredName},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String[]]
    # A list for the user to enumerate their responsibilities.
    # Returned only on $select.
    ${Responsibility},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String[]]
    # A list for the user to enumerate the schools they have attended.
    # Returned only on $select.
    ${School},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # true if the Outlook global address list should contain this user, otherwise false.
    # If not set, this will be treated as true.
    # For users invited through the invitation manager, this property will be set to false.
    # Supports $filter (eq, ne, NOT, in).
    ${ShowInAddressList},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String[]]
    # A list for the user to enumerate their skills.
    # Returned only on $select.
    ${Skill},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # The state or province in the user's address.
    # Maximum length is 128 characters.
    # Supports $filter (eq, ne, NOT, ge, le, in, startsWith).
    ${State},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # The street address of the user's place of business.
    # Maximum length is 1024 characters.
    # Supports $filter (eq, ne, NOT, ge, le, in, startsWith).
    ${StreetAddress},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # The user's surname (family name or last name).
    # Maximum length is 64 characters.
    # Supports $filter (eq, ne, NOT, ge, le, in, startsWith).
    ${Surname},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # A two letter country code (ISO standard 3166).
    # Required for users that will be assigned licenses due to legal requirement to check for availability of services in countries.
    # Examples include: US, JP, and GB.
    # Not nullable.
    # Supports $filter (eq, ne, NOT, ge, le, in, startsWith).
    ${UsageLocation},
  
    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # The user principal name (UPN) of the user.
    # The UPN is an Internet-style login name for the user based on the Internet standard RFC 822.
    # By convention, this should map to the user's email name.
    # The general format is alias@domain, where domain must be present in the tenant's collection of verified domains.
    # This property is required when a user is created.
    # The verified domains for the tenant can be accessed from the verifiedDomains property of organization.NOTE: While this property can contain accent characters, they can cause access issues to first-party applications for the user.
    # Supports $filter (eq, ne, NOT, ge, le, in, startsWith, endsWith) and $orderBy.
    ${UserPrincipalName},
  
    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Body')]
    [System.String]
    # A string value that can be used to classify user types in your directory, such as Member and Guest.
    # Supports $filter (eq, ne, NOT, in,).
    ${UserType},
  
    [Parameter(ParameterSetName="WithPassword", Mandatory)]
    [SecureString]
    # Password for the user. It must meet the tenant's password complexity requirements. It is recommended to set a strong password.
    ${Password},

    [Parameter(ParameterSetName="WithPassword")]
    [System.Management.Automation.SwitchParameter]
    # It must be specified if the user must change the password on the next successful login (true). Default behavior is (false) to not change the password on the next successful login.
    ${ForceChangePasswordNextLogin},
  
    [Parameter()]
    [Alias("AzContext", "AzureRmContext", "AzureCredential")]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},
  
    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},
  
    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},
  
    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},
  
    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},
  
    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},
  
    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
  )
  
  process {
    if ($PSBoundParameters['ImmutableId']) {
      $PSBoundParameters['OnPremisesImmutableId'] = $PSBoundParameters['ImmutableId']
      $null = $PSBoundParameters.Remove('ImmutableId')
    }

    if ($PSBoundParameters.ContainsKey('Password')) {
      $passwordProfile = [Microsoft.Azure.PowerShell.Cmdlets.Resources.MSGraph.Models.ApiV10.MicrosoftGraphPasswordProfile]::New()
      $passwordProfile.ForceChangePasswordNextSignIn = $ForceChangePasswordNextLogin
      $passwordProfile.Password = . "$PSScriptRoot/../utils/Unprotect-SecureString.ps1" $PSBoundParameters['Password']
      $null = $PSBoundParameters.Remove('Password')
      $null = $PSBoundParameters.Remove('ForceChangePasswordNextLogin')
      $PSBoundParameters['AccountEnabled'] = $true
      $PSBoundParameters['PasswordProfile'] = $passwordProfile
    }

    Az.MSGraph.internal\New-AzADUser @PSBoundParameters
  }
}
# SIG # Begin signature block
# MIInogYJKoZIhvcNAQcCoIInkzCCJ48CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDBr+ggY/gyWaoI
# 97XTngDuCFdqrDxJ7dpO25jzRnQCyqCCDYUwggYDMIID66ADAgECAhMzAAADTU6R
# phoosHiPAAAAAANNMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMjMwMzE2MTg0MzI4WhcNMjQwMzE0MTg0MzI4WjB0MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMR4wHAYDVQQDExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
# AQDUKPcKGVa6cboGQU03ONbUKyl4WpH6Q2Xo9cP3RhXTOa6C6THltd2RfnjlUQG+
# Mwoy93iGmGKEMF/jyO2XdiwMP427j90C/PMY/d5vY31sx+udtbif7GCJ7jJ1vLzd
# j28zV4r0FGG6yEv+tUNelTIsFmmSb0FUiJtU4r5sfCThvg8dI/F9Hh6xMZoVti+k
# bVla+hlG8bf4s00VTw4uAZhjGTFCYFRytKJ3/mteg2qnwvHDOgV7QSdV5dWdd0+x
# zcuG0qgd3oCCAjH8ZmjmowkHUe4dUmbcZfXsgWlOfc6DG7JS+DeJak1DvabamYqH
# g1AUeZ0+skpkwrKwXTFwBRltAgMBAAGjggGCMIIBfjAfBgNVHSUEGDAWBgorBgEE
# AYI3TAgBBggrBgEFBQcDAzAdBgNVHQ4EFgQUId2Img2Sp05U6XI04jli2KohL+8w
# VAYDVR0RBE0wS6RJMEcxLTArBgNVBAsTJE1pY3Jvc29mdCBJcmVsYW5kIE9wZXJh
# dGlvbnMgTGltaXRlZDEWMBQGA1UEBRMNMjMwMDEyKzUwMDUxNzAfBgNVHSMEGDAW
# gBRIbmTlUAXTgqoXNzcitW2oynUClTBUBgNVHR8ETTBLMEmgR6BFhkNodHRwOi8v
# d3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NybC9NaWNDb2RTaWdQQ0EyMDExXzIw
# MTEtMDctMDguY3JsMGEGCCsGAQUFBwEBBFUwUzBRBggrBgEFBQcwAoZFaHR0cDov
# L3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9jZXJ0cy9NaWNDb2RTaWdQQ0EyMDEx
# XzIwMTEtMDctMDguY3J0MAwGA1UdEwEB/wQCMAAwDQYJKoZIhvcNAQELBQADggIB
# ACMET8WuzLrDwexuTUZe9v2xrW8WGUPRQVmyJ1b/BzKYBZ5aU4Qvh5LzZe9jOExD
# YUlKb/Y73lqIIfUcEO/6W3b+7t1P9m9M1xPrZv5cfnSCguooPDq4rQe/iCdNDwHT
# 6XYW6yetxTJMOo4tUDbSS0YiZr7Mab2wkjgNFa0jRFheS9daTS1oJ/z5bNlGinxq
# 2v8azSP/GcH/t8eTrHQfcax3WbPELoGHIbryrSUaOCphsnCNUqUN5FbEMlat5MuY
# 94rGMJnq1IEd6S8ngK6C8E9SWpGEO3NDa0NlAViorpGfI0NYIbdynyOB846aWAjN
# fgThIcdzdWFvAl/6ktWXLETn8u/lYQyWGmul3yz+w06puIPD9p4KPiWBkCesKDHv
# XLrT3BbLZ8dKqSOV8DtzLFAfc9qAsNiG8EoathluJBsbyFbpebadKlErFidAX8KE
# usk8htHqiSkNxydamL/tKfx3V/vDAoQE59ysv4r3pE+zdyfMairvkFNNw7cPn1kH
# Gcww9dFSY2QwAxhMzmoM0G+M+YvBnBu5wjfxNrMRilRbxM6Cj9hKFh0YTwba6M7z
# ntHHpX3d+nabjFm/TnMRROOgIXJzYbzKKaO2g1kWeyG2QtvIR147zlrbQD4X10Ab
# rRg9CpwW7xYxywezj+iNAc+QmFzR94dzJkEPUSCJPsTFMIIHejCCBWKgAwIBAgIK
# YQ6Q0gAAAAAAAzANBgkqhkiG9w0BAQsFADCBiDELMAkGA1UEBhMCVVMxEzARBgNV
# BAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jv
# c29mdCBDb3Jwb3JhdGlvbjEyMDAGA1UEAxMpTWljcm9zb2Z0IFJvb3QgQ2VydGlm
# aWNhdGUgQXV0aG9yaXR5IDIwMTEwHhcNMTEwNzA4MjA1OTA5WhcNMjYwNzA4MjEw
# OTA5WjB+MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UE
# BxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSgwJgYD
# VQQDEx9NaWNyb3NvZnQgQ29kZSBTaWduaW5nIFBDQSAyMDExMIICIjANBgkqhkiG
# 9w0BAQEFAAOCAg8AMIICCgKCAgEAq/D6chAcLq3YbqqCEE00uvK2WCGfQhsqa+la
# UKq4BjgaBEm6f8MMHt03a8YS2AvwOMKZBrDIOdUBFDFC04kNeWSHfpRgJGyvnkmc
# 6Whe0t+bU7IKLMOv2akrrnoJr9eWWcpgGgXpZnboMlImEi/nqwhQz7NEt13YxC4D
# dato88tt8zpcoRb0RrrgOGSsbmQ1eKagYw8t00CT+OPeBw3VXHmlSSnnDb6gE3e+
# lD3v++MrWhAfTVYoonpy4BI6t0le2O3tQ5GD2Xuye4Yb2T6xjF3oiU+EGvKhL1nk
# kDstrjNYxbc+/jLTswM9sbKvkjh+0p2ALPVOVpEhNSXDOW5kf1O6nA+tGSOEy/S6
# A4aN91/w0FK/jJSHvMAhdCVfGCi2zCcoOCWYOUo2z3yxkq4cI6epZuxhH2rhKEmd
# X4jiJV3TIUs+UsS1Vz8kA/DRelsv1SPjcF0PUUZ3s/gA4bysAoJf28AVs70b1FVL
# 5zmhD+kjSbwYuER8ReTBw3J64HLnJN+/RpnF78IcV9uDjexNSTCnq47f7Fufr/zd
# sGbiwZeBe+3W7UvnSSmnEyimp31ngOaKYnhfsi+E11ecXL93KCjx7W3DKI8sj0A3
# T8HhhUSJxAlMxdSlQy90lfdu+HggWCwTXWCVmj5PM4TasIgX3p5O9JawvEagbJjS
# 4NaIjAsCAwEAAaOCAe0wggHpMBAGCSsGAQQBgjcVAQQDAgEAMB0GA1UdDgQWBBRI
# bmTlUAXTgqoXNzcitW2oynUClTAZBgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTAL
# BgNVHQ8EBAMCAYYwDwYDVR0TAQH/BAUwAwEB/zAfBgNVHSMEGDAWgBRyLToCMZBD
# uRQFTuHqp8cx0SOJNDBaBgNVHR8EUzBRME+gTaBLhklodHRwOi8vY3JsLm1pY3Jv
# c29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9NaWNSb29DZXJBdXQyMDExXzIwMTFf
# MDNfMjIuY3JsMF4GCCsGAQUFBwEBBFIwUDBOBggrBgEFBQcwAoZCaHR0cDovL3d3
# dy5taWNyb3NvZnQuY29tL3BraS9jZXJ0cy9NaWNSb29DZXJBdXQyMDExXzIwMTFf
# MDNfMjIuY3J0MIGfBgNVHSAEgZcwgZQwgZEGCSsGAQQBgjcuAzCBgzA/BggrBgEF
# BQcCARYzaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9kb2NzL3ByaW1h
# cnljcHMuaHRtMEAGCCsGAQUFBwICMDQeMiAdAEwAZQBnAGEAbABfAHAAbwBsAGkA
# YwB5AF8AcwB0AGEAdABlAG0AZQBuAHQALiAdMA0GCSqGSIb3DQEBCwUAA4ICAQBn
# 8oalmOBUeRou09h0ZyKbC5YR4WOSmUKWfdJ5DJDBZV8uLD74w3LRbYP+vj/oCso7
# v0epo/Np22O/IjWll11lhJB9i0ZQVdgMknzSGksc8zxCi1LQsP1r4z4HLimb5j0b
# pdS1HXeUOeLpZMlEPXh6I/MTfaaQdION9MsmAkYqwooQu6SpBQyb7Wj6aC6VoCo/
# KmtYSWMfCWluWpiW5IP0wI/zRive/DvQvTXvbiWu5a8n7dDd8w6vmSiXmE0OPQvy
# CInWH8MyGOLwxS3OW560STkKxgrCxq2u5bLZ2xWIUUVYODJxJxp/sfQn+N4sOiBp
# mLJZiWhub6e3dMNABQamASooPoI/E01mC8CzTfXhj38cbxV9Rad25UAqZaPDXVJi
# hsMdYzaXht/a8/jyFqGaJ+HNpZfQ7l1jQeNbB5yHPgZ3BtEGsXUfFL5hYbXw3MYb
# BL7fQccOKO7eZS/sl/ahXJbYANahRr1Z85elCUtIEJmAH9AAKcWxm6U/RXceNcbS
# oqKfenoi+kiVH6v7RyOA9Z74v2u3S5fi63V4GuzqN5l5GEv/1rMjaHXmr/r8i+sL
# gOppO6/8MO0ETI7f33VtY5E90Z1WTk+/gFcioXgRMiF670EKsT/7qMykXcGhiJtX
# cVZOSEXAQsmbdlsKgEhr/Xmfwb1tbWrJUnMTDXpQzTGCGXMwghlvAgEBMIGVMH4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01p
# Y3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTECEzMAAANNTpGmGiiweI8AAAAA
# A00wDQYJYIZIAWUDBAIBBQCgga4wGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQw
# HAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIHHE
# TwxEZU3OJI9toa0LT80z2C9h85hOe8oputkYw75oMEIGCisGAQQBgjcCAQwxNDAy
# oBSAEgBNAGkAYwByAG8AcwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20wDQYJKoZIhvcNAQEBBQAEggEAaowylXFRj8e5Nod4NeVNsQGT0OfnAXgVzFmb
# l1pKjZoFZU2TkAFY7EHLYi3XFVOSpjWRvNnFq/BlYJ1xLrX/5bNlQloCroRTbLeQ
# HaslnZWyQNHJ2P0Kq9FZkQoq4pv9Y6efZk5hfQn4nY5dW7yesnz1210e5gS+hx+X
# kteckRkoZoZKdV93bjPkKTix9iK9YbdKX/pvGKxa3UQHmsde1/xZNlGsmVDH3TUi
# Dt2TFZ0bjgRGfqVRHmdAVI6LtDlYB2+KZotN/zReagge28tElKuKpwjsIev6z+Qq
# APHZ/dwAKG8l0c9eWcCfvD052XLszzGHulBsV/iDYBdj2YRiXKGCFv0wghb5Bgor
# BgEEAYI3AwMBMYIW6TCCFuUGCSqGSIb3DQEHAqCCFtYwghbSAgEDMQ8wDQYJYIZI
# AWUDBAIBBQAwggFRBgsqhkiG9w0BCRABBKCCAUAEggE8MIIBOAIBAQYKKwYBBAGE
# WQoDATAxMA0GCWCGSAFlAwQCAQUABCCQINM3rOWHSW9g0wx7JuL8gQAX+tVVIXOz
# KQKrt+1G5wIGZF0DwGgWGBMyMDIzMDUyMjExNDU1MS43OTlaMASAAgH0oIHQpIHN
# MIHKMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSUwIwYDVQQL
# ExxNaWNyb3NvZnQgQW1lcmljYSBPcGVyYXRpb25zMSYwJAYDVQQLEx1UaGFsZXMg
# VFNTIEVTTjoxMkJDLUUzQUUtNzRFQjElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgU2VydmljZaCCEVQwggcMMIIE9KADAgECAhMzAAAByk/Cs+0DDRhsAAEA
# AAHKMA0GCSqGSIb3DQEBCwUAMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNo
# aW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29y
# cG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEw
# MB4XDTIyMTEwNDE5MDE0MFoXDTI0MDIwMjE5MDE0MFowgcoxCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJTAjBgNVBAsTHE1pY3Jvc29mdCBBbWVy
# aWNhIE9wZXJhdGlvbnMxJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOjEyQkMtRTNB
# RS03NEVCMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNlMIIC
# IjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAwwGcq9j50rWEkcLSlGZLweUV
# fxXRaUjiPsyaNVxPdMRs3CVe58siu/EkaVt7t7PNTPko/s8lNtusAeLEnzki44yx
# k2c9ekm8E1SQ2YV9b8/LOxfKapZ8tVlPyxw6DmFzNFQjifVm8EiZ7lFRoY448vpc
# bBD18qjYNF/2Z3SQchcsdV1N9Y6V2WGl55VmLqFRX5+dptdjreBXzi3WW9TsoCEW
# cYCBK5wYgS9tT2SSSTzae3jmdw40g+LOIyrVPF2DozkStv6JBDPvwahXWpKGpO7r
# HrKF+o7ECN/ViQFMZyp/vxePiUABDNqzEUI8s7klYmeHXvjeQOq/CM3C/Y8bj3fJ
# ObnZH7eAXvRDnxT8R6W/uD1mGUJvv9M9BMu3nhKpKmSxzzO5LtcMEh2tMXxhMGGN
# MUP3DOEK3X+2/LD1Z03usJTk5pHNoH/gDIvbp787Cw40tsApiAvtrHYwub0TqIv8
# Zy62l8n8s/Mv/P764CTqrxcXzalBHh+Xy4XPjmadnPkZJycp3Kczbkg9QbvJp0H/
# 0FswHS+efFofpDNJwLh1hs/aMi1K/ozEv7/WLIPsDgK16fU/axybqMKk0NOxgelU
# jAYKl4wU0Y6Q4q9N/9PwAS0csifQhY1ooQfAI0iDCCSEATslD8bTO0tRtqdcIdav
# OReqzoPdvAv3Dr1XXQ8CAwEAAaOCATYwggEyMB0GA1UdDgQWBBT6x/6lS4ESQ8KZ
# hd0RgU7RYXM8fzAfBgNVHSMEGDAWgBSfpxVdAF5iXYP05dJlpxtTNRnpcjBfBgNV
# HR8EWDBWMFSgUqBQhk5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2Ny
# bC9NaWNyb3NvZnQlMjBUaW1lLVN0YW1wJTIwUENBJTIwMjAxMCgxKS5jcmwwbAYI
# KwYBBQUHAQEEYDBeMFwGCCsGAQUFBzAChlBodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20vcGtpb3BzL2NlcnRzL01pY3Jvc29mdCUyMFRpbWUtU3RhbXAlMjBQQ0ElMjAy
# MDEwKDEpLmNydDAMBgNVHRMBAf8EAjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMIMA0G
# CSqGSIb3DQEBCwUAA4ICAQDY0HkqCS3KuKefFX8/rm/dtD9066dKEleNqriwZqsM
# 4Ym8Ew4QiqOqO7mWoYYY4K5y8eXSOHKNXOfpO6RbaYj8jCOcJAB5tqLl5hiMgaMb
# AVLrl1hlix9sloO45LON0JphKva3D6AVKA7P78mA9iRHZYUVrRiyfvQjWxmUnxhi
# s8fom92+/RHcEZ1Dh5+p4gzeeL84Yl00Wyq9EcgBKKfgq0lCjWNSq1AUG1sELlgX
# OSvKZ4/lXXH+MfhcHe91WLIaZkS/Hu9wdTT6I14BC97yhDsZWXAl0IJ801I6UtEF
# pCsTeOyZBJ7CF0rf5lxJ8tE9ojNsyqXJKuwVn0ewCMkZqz/cEwv9FEx8QmsZ0ZNo
# dTtsl+V9dZm+eUrMKZk6PKsKArtQ+jHkfVsHgKODloelpOmHqgX7UbO0NVnIlpP5
# 5gQTqV76vU7wRXpUfz7KhE3BZXNgwG05dRnCXDwrhhYz+Itbzs1K1R8I4YMDJjW9
# 0ASCg9Jf+xygRKZGKHjo2Bs2XyaKuN1P6FFCIVXN7KgHl/bZiakGq7k5TQ4OXK5x
# khCHhjdgHuxj3hK5AaOy+GXxO/jbyqGRqeSxf+TTPuWhDWurIo33RMDGe5DbImjc
# bcj6dVhQevqHClR1OHSfr+8m1hWRJGlC1atcOWKajArwOURqJSVlThwVgIyzGNmj
# zjCCB3EwggVZoAMCAQICEzMAAAAVxedrngKbSZkAAAAAABUwDQYJKoZIhvcNAQEL
# BQAwgYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQH
# EwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xMjAwBgNV
# BAMTKU1pY3Jvc29mdCBSb290IENlcnRpZmljYXRlIEF1dGhvcml0eSAyMDEwMB4X
# DTIxMDkzMDE4MjIyNVoXDTMwMDkzMDE4MzIyNVowfDELMAkGA1UEBhMCVVMxEzAR
# BgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1p
# Y3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3Rh
# bXAgUENBIDIwMTAwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDk4aZM
# 57RyIQt5osvXJHm9DtWC0/3unAcH0qlsTnXIyjVX9gF/bErg4r25PhdgM/9cT8dm
# 95VTcVrifkpa/rg2Z4VGIwy1jRPPdzLAEBjoYH1qUoNEt6aORmsHFPPFdvWGUNzB
# RMhxXFExN6AKOG6N7dcP2CZTfDlhAnrEqv1yaa8dq6z2Nr41JmTamDu6GnszrYBb
# fowQHJ1S/rboYiXcag/PXfT+jlPP1uyFVk3v3byNpOORj7I5LFGc6XBpDco2LXCO
# Mcg1KL3jtIckw+DJj361VI/c+gVVmG1oO5pGve2krnopN6zL64NF50ZuyjLVwIYw
# XE8s4mKyzbnijYjklqwBSru+cakXW2dg3viSkR4dPf0gz3N9QZpGdc3EXzTdEonW
# /aUgfX782Z5F37ZyL9t9X4C626p+Nuw2TPYrbqgSUei/BQOj0XOmTTd0lBw0gg/w
# EPK3Rxjtp+iZfD9M269ewvPV2HM9Q07BMzlMjgK8QmguEOqEUUbi0b1qGFphAXPK
# Z6Je1yh2AuIzGHLXpyDwwvoSCtdjbwzJNmSLW6CmgyFdXzB0kZSU2LlQ+QuJYfM2
# BjUYhEfb3BvR/bLUHMVr9lxSUV0S2yW6r1AFemzFER1y7435UsSFF5PAPBXbGjfH
# CBUYP3irRbb1Hode2o+eFnJpxq57t7c+auIurQIDAQABo4IB3TCCAdkwEgYJKwYB
# BAGCNxUBBAUCAwEAATAjBgkrBgEEAYI3FQIEFgQUKqdS/mTEmr6CkTxGNSnPEP8v
# BO4wHQYDVR0OBBYEFJ+nFV0AXmJdg/Tl0mWnG1M1GelyMFwGA1UdIARVMFMwUQYM
# KwYBBAGCN0yDfQEBMEEwPwYIKwYBBQUHAgEWM2h0dHA6Ly93d3cubWljcm9zb2Z0
# LmNvbS9wa2lvcHMvRG9jcy9SZXBvc2l0b3J5Lmh0bTATBgNVHSUEDDAKBggrBgEF
# BQcDCDAZBgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTALBgNVHQ8EBAMCAYYwDwYD
# VR0TAQH/BAUwAwEB/zAfBgNVHSMEGDAWgBTV9lbLj+iiXGJo0T2UkFvXzpoYxDBW
# BgNVHR8ETzBNMEugSaBHhkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2Ny
# bC9wcm9kdWN0cy9NaWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcmwwWgYIKwYBBQUH
# AQEETjBMMEoGCCsGAQUFBzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtp
# L2NlcnRzL01pY1Jvb0NlckF1dF8yMDEwLTA2LTIzLmNydDANBgkqhkiG9w0BAQsF
# AAOCAgEAnVV9/Cqt4SwfZwExJFvhnnJL/Klv6lwUtj5OR2R4sQaTlz0xM7U518Jx
# Nj/aZGx80HU5bbsPMeTCj/ts0aGUGCLu6WZnOlNN3Zi6th542DYunKmCVgADsAW+
# iehp4LoJ7nvfam++Kctu2D9IdQHZGN5tggz1bSNU5HhTdSRXud2f8449xvNo32X2
# pFaq95W2KFUn0CS9QKC/GbYSEhFdPSfgQJY4rPf5KYnDvBewVIVCs/wMnosZiefw
# C2qBwoEZQhlSdYo2wh3DYXMuLGt7bj8sCXgU6ZGyqVvfSaN0DLzskYDSPeZKPmY7
# T7uG+jIa2Zb0j/aRAfbOxnT99kxybxCrdTDFNLB62FD+CljdQDzHVG2dY3RILLFO
# Ry3BFARxv2T5JL5zbcqOCb2zAVdJVGTZc9d/HltEAY5aGZFrDZ+kKNxnGSgkujhL
# mm77IVRrakURR6nxt67I6IleT53S0Ex2tVdUCbFpAUR+fKFhbHP+CrvsQWY9af3L
# wUFJfn6Tvsv4O+S3Fb+0zj6lMVGEvL8CwYKiexcdFYmNcP7ntdAoGokLjzbaukz5
# m/8K6TT4JDVnK+ANuOaMmdbhIurwJ0I9JZTmdHRbatGePu1+oDEzfbzL6Xu/OHBE
# 0ZDxyKs6ijoIYn/ZcGNTTY3ugm2lBRDBcQZqELQdVTNYs6FwZvKhggLLMIICNAIB
# ATCB+KGB0KSBzTCByjELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24x
# EDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlv
# bjElMCMGA1UECxMcTWljcm9zb2Z0IEFtZXJpY2EgT3BlcmF0aW9uczEmMCQGA1UE
# CxMdVGhhbGVzIFRTUyBFU046MTJCQy1FM0FFLTc0RUIxJTAjBgNVBAMTHE1pY3Jv
# c29mdCBUaW1lLVN0YW1wIFNlcnZpY2WiIwoBATAHBgUrDgMCGgMVAKOO55cMT4sy
# PP6nClg2IWfajMqkoIGDMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldh
# c2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBD
# b3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIw
# MTAwDQYJKoZIhvcNAQEFBQACBQDoFVibMCIYDzIwMjMwNTIyMTA1NzMxWhgPMjAy
# MzA1MjMxMDU3MzFaMHQwOgYKKwYBBAGEWQoEATEsMCowCgIFAOgVWJsCAQAwBwIB
# AAICKoAwBwIBAAICEbQwCgIFAOgWqhsCAQAwNgYKKwYBBAGEWQoEAjEoMCYwDAYK
# KwYBBAGEWQoDAqAKMAgCAQACAwehIKEKMAgCAQACAwGGoDANBgkqhkiG9w0BAQUF
# AAOBgQBMmIOHSyq81JIPeL28x8qqr5dMUoV4fK1ejvDycMNoDy98FH8zJ+qJMdDG
# KsK6I3sjH15lXD97gVsh3Hn3lYwqE9TfjB5aw/eJMoFGRJV6+wRwvhhs5c9C4Ce5
# F6GuSOmt8FQYPLG9aOtMXQF3IwZ3snNDHWJeNmMHee+i/nKcuDGCBA0wggQJAgEB
# MIGTMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQH
# EwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNV
# BAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAAByk/Cs+0DDRhs
# AAEAAAHKMA0GCWCGSAFlAwQCAQUAoIIBSjAaBgkqhkiG9w0BCQMxDQYLKoZIhvcN
# AQkQAQQwLwYJKoZIhvcNAQkEMSIEIDodTziyLKSKnvtl2XF0dkIebP5++Bhl4U8N
# 5lUcpgMMMIH6BgsqhkiG9w0BCRACLzGB6jCB5zCB5DCBvQQgEz0b85vrVU2slZAk
# 4jt1SDEk6IzZAwVCoWwF3KzcGuAwgZgwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEG
# A1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWlj
# cm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFt
# cCBQQ0EgMjAxMAITMwAAAcpPwrPtAw0YbAABAAAByjAiBCAb3uJOxBWLOdby6cIi
# tU+x1+7k/e54onHzEk2mAmSvpDANBgkqhkiG9w0BAQsFAASCAgB6Njo6WfJM1E0i
# 3k+NUIOnk1FKfH2e4/zodpKcHsKeIXZGjCxGWim4zQR3ViaW2OlpvsZiieP0vo6G
# WsHk+7W1qVTs2abcrSJBPHnUWoMGztVf2byqD/MjQjVffy4KJBZ4uqEicC+b7bjR
# 1sAX0KPzEowTBr4kz6Bri2sIWqO1uSk6gZOzNak30SHaV2ihMfcGz/RRSl353Z79
# 0E4Nt1WjGM+Fj9XLDkJiinhE4Os20F9BdrPeNe7h2jFHAm6Bw3TqSq4BpfmyK+7+
# hnWfobgQfSY22wqYDE2IlNhMxZDowyiWMZ8LD7icxmM2OkqHdaAqRlCI4frUu/nZ
# s+THQMFDw5O6qLr8vTHhRORZXhDZKmy9Z5iTIu47dBfTNRZl3lqjIknoRUj/WQtx
# 1542D9Zw5wl3eYVmuEmCKHRozFfp0wRi/iyB5Rj7GPj5cmWPX2jRXr9PBQoL56MH
# LMTpevyWWd0XgSc5dR7Dg4SL3RD5rvHLOk2FhwKQrL9OI/rUMQk81XF6P7yCJcZT
# 3kp7uz6tZHEJnq/Ni1rtL8XwiaR8P2rLwOFYaHvFvwuo6KyTVcj7SXJqqDHXVauz
# n7FACiR/qA9p+6D1G3hO/AzFAAnfnNbbusLdSZYXkdmgMnL+P32VOWm1BHfawpbh
# 1Yuw0kpXpYXhk2Rn55l+QYBXS0OfTQ==
# SIG # End signature block
