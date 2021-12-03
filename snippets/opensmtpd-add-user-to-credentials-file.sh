# 1. Encrypt user pw
smtpctl encrypt

# 2. Add "<USER_NAME> <USER_ENCRYPTED_PW>" to credentials file

# 3. Update opensmtpd credentials
smtpctl update table credentials