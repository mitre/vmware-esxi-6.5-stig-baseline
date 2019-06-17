control "V-93999" do
  title "The ESXi host SSH daemon must set a timeout count on idle sessions."
  desc  "This ensures a user login will be terminated as soon as the
\"ClientAliveCountMax\" is reached."
  impact 0.3
  tag "severity": nil
  tag "gtitle": "SRG-OS-000480-VMM-002000"
  tag "gid": "V-93999"
  tag "rid": "SV-104085r1_rule"
  tag "stig_id": "ESXI-65-000026"
  tag "fix_id": "F-100247r1_fix"
  tag "cci": ["CCI-000366"]
  tag "nist": ["CM-6 b", "Rev_4"]
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
  tag "check": "From an SSH session connected to the ESXi host, or from the
ESXi shell, run the following command:

# grep -i \"^ClientAliveCountMax\" /etc/ssh/sshd_config

If there is no output or the output is not exactly \"ClientAliveCountMax 3\",
this is a finding."
  tag "fix": "From an SSH session connected to the ESXi host, or from the ESXi
shell, add or correct the following line in \"/etc/ssh/sshd_config\":

ClientAliveCountMax 3"
end

