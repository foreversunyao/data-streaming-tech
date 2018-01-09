from fabric.operations import put, run, local, settings, sudo
from fabric.context_managers import cd


def upload():
    put(local_path='./Build/gdsd', remote_path='/data/release/gds/', use_sudo=True)
    sudo('chmod a+x /data/release/gds/gdsd')


def unzip():
    pass

def start():
    pass

def deploy():
    pass

def restart():
    pass
