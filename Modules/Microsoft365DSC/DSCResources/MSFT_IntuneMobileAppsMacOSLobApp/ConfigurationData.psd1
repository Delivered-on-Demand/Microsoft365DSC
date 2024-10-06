@{
    AllNodes = @(
        @{
            NodeName                    = "localhost"
            PSDscAllowPlainTextPassword = $true;
            PSDscAllowDomainUser        = $true;
            #region Parameters
            # Default Value Used to Ensure a Configuration Data File is Generated
            ServerNumber = "0"

        }
    )
    NonNodeData = @(
        @{
            # Tenant's default verified domain name
            OrganizationName = "M365x22684512.onmicrosoft.com"

            # Azure AD Application Id for Authentication
            ApplicationId = "c115934f-b491-4fe1-bc5f-1cfac95069e7"

            # The Id or Name of the tenant to authenticate against
            TenantId = "M365x22684512.onmicrosoft.com"

            # Azure AD Application Secret for Authentication
            ApplicationSecret = "C2o8Q~0s7tEKP-SGw43dIItEYijV9WQRwbLjHb90"

        }
    )
}
