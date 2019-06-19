control "V-94501" do
  title "The ESXi host must enforce password complexity by requiring that at
least one lower-case character be used."
  desc  "To enforce the use of complex passwords, minimum numbers of characters
of different classes are mandated. The use of complex passwords reduces the
ability of attackers to successfully obtain valid passwords using guessing or
exhaustive search techniques. Complexity requirements increase the password
search space by requiring users to construct passwords from a larger character
set than they may otherwise use."
  impact 0.5
  tag "severity": nil
  tag "gtitle": "SRG-OS-000070-VMM-000370"
  tag "gid": "V-94501"
  tag "rid": "SV-104331r1_rule"
  tag "stig_id": "ESXI-65-100031"
  tag "fix_id": "F-100617r1_fix"
  tag "cci": ["CCI-000193"]
  tag "nist": ["IA-5 (1) (a)", "Rev_4"]
  tag "false_negatives": nil
  tag "false_positives": nil
  tag "documentable": false
  tag "mitigations": nil
  tag "severity_override_guidance": false
  tag "potential_impacts": nil
  tag "third_party_tools": nil
  tag "mitigation_controls": nil
  tag "responsibility": nil
  tag "ia_controls": nil
  tag "check": "From the vSphere Client select the ESXi host and go to
Configuration >> Advanced Settings.  Select the
\"Security.PasswordQualityControl\" value and verify it is set to
\"similar=deny retry=3 min=disabled,disabled,disabled,disabled,15\"

or

From a PowerCLI command prompt while connected to the ESXi host run the
following command:

Get-VMHost | Get-AdvancedSetting -Name Security.PasswordQualityControl

If the \"Security.PasswordQualityControl\" value is not set to \"similar=deny
retry=3 min=disabled,disabled,disabled,disabled,15\", this is a finding."
  tag "fix": "From the vSphere Client select the ESXi host and go to
Configuration >> Advanced Settings.  Select the
\"Security.PasswordQualityControl\" value and configure it to \"similar=deny
retry=3 min=disabled,disabled,disabled,disabled,15\".

or

From a PowerCLI command prompt while connected to the ESXi host run the
following commands:

Get-VMHost | Get-AdvancedSetting -Name Security.PasswordQualityControl |
Set-AdvancedSetting -Value \"similar=deny retry=3
min=disabled,disabled,disabled,disabled,15\""
end
