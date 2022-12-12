
install:
	ansible-playbook -i inventory manjaro.yml #-vvv

cleanup:
	ansible-playbook -i inventory cleanup.yml #-vvv

# test:
# 	@VAULT_ADDR='http://0.0.0.0:1234' \
# 	SETPASS=$(shell vault read --field=ssh cubbyhole/ansible/) \
# 	ansible-playbook -i inventory tiny.yml \
# 		--extra-vars "ansible_sudo_pass=$(shell vault read --field=sudo cubbyhole/ansible/)" \
# 		--extra-vars "ansible_ssh_pass=$(shell vault read --field=ssh cubbyhole/ansible/)"
