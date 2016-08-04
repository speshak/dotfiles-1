
ansible19-playbook ()
{
  source ~/ansible-1.9/bin/activate
  ansible-playbook $@
  deactivate
}

find_vaults ()
{
  \grep -lr ANSIBLE_VAULT *
}
