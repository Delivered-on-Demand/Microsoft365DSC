# Generated with Microsoft365DSC version 1.24.904.1
# For additional information on how to use Microsoft365DSC, please visit https://aka.ms/M365DSC
param (
)

Configuration M365TenantConfig
{
    param (
    )

    $OrganizationName = $ConfigurationData.NonNodeData.OrganizationName

    Import-DscResource -ModuleName 'Microsoft365DSC'

    Node localhost
    {
        IntuneMobileAppsMacOSLobApp "IntuneMobileAppsMacOSLobApp-SkypeForBusinessInstaller_Mac_DF_16.15.41_16.15.41.pkg"
        {
            ApplicationId          = $ConfigurationData.NonNodeData.ApplicationId;
            ApplicationSecret      = New-Object System.Management.Automation.PSCredential ('ApplicationSecret', (ConvertTo-SecureString $ConfigurationData.NonNodeData.ApplicationSecret -AsPlainText -Force));
            Assignments            = @(
                MSFT_DeviceManagementMobileAppAssignment{
                    source = 'direct'
                    deviceAndAppManagementAssignmentFilterType = 'none'
                    groupDisplayName = 'All users'
                    dataType = '#microsoft.graph.allLicensedUsersAssignmentTarget'
                    intent = 'available'
                }
                MSFT_DeviceManagementMobileAppAssignment{
                    source = 'direct'
                    deviceAndAppManagementAssignmentFilterType = 'none'
                    groupDisplayName = 'All devices'
                    dataType = '#microsoft.graph.allDevicesAssignmentTarget'
                    intent = 'required'
                }
            );
            Categories             = @(
                MSFT_DeviceManagementMobileAppCategory { 
                    id  = '1bff2652-03ec-4a48-941c-152e93736515'
                    displayName = 'Kajal 3'
                }
                MSFT_DeviceManagementMobileAppCategory { 
                    id  = 'ed899483-3019-425e-a470-28e901b9790e'
                    displayName = 'Productivity'
                });
            ChildApps              = @(
                MSFT_DeviceManagementMobileAppChildApp { 
                    bundleId  = 'com.microsoft.SkypeForBusiness'
                    buildNumber = '16.15.41'
                    versionNumber  = '0.0'
                }
                MSFT_DeviceManagementMobileAppChildApp { 
                    bundleId  = 'com.microsoft.SkypeForBusiness.MeetingJoinPlugin'
                    buildNumber = '1.0'
                    versionNumber  = '0.0'
                });
            Description            = "SkypeForBusinessInstaller_Mac_DF_16.15.41_16.15.41.pkg";
            Developer              = "";
            DisplayName            = "SkypeForBusinessInstaller_Mac_DF_16.15.41_16.15.41.pkg";
            Ensure                 = "Present";
            Id                     = "aac51f68-7e34-47f0-880e-924069f60d14";
            IgnoreVersionDetection = $True;
            IsFeatured             = $False;
            Notes                  = "";
            Owner                  = "";
            Publisher              = "Kajal";
            PublishingState        = "published";
            RoleScopeTagIds        = @();
            TenantId               = $OrganizationName;
        }
    }
}

M365TenantConfig -ConfigurationData .\ConfigurationData.psd1
