
ansible19-playbook ()
{
  source ~/ansible-1.9/bin/activate
  ansible-playbook $@
  deactivate
}
