from faker import Faker
fake = Faker()

import bcrypt

def get_hashed_pass(password):
    hashed = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed

def factory_user(target):

    data = {
        'faker': {
            'name':fake.first_name(),
            'lastname':fake.last_name(),
            'email':fake.free_email(),
            'password':'pwd123'
        },
        'wrong_email': {
            'name': 'Marilene',
            'lastname': 'Candido',
            'email': 'marilene%gmail.com',
            'password': 'pwd123'
        },
        'login': {
            'name':'Antonio',
            'lastname':'Moreira',
            'email':'antonio@gmail.com',
            'password':'123456'
        },
        'be_geek': {
            'name':'Karlos',
            'lastname':'Rafael',
            'email':'carlos@gmail.com',
            'password':'123456',
            'geek_profile': {
                'whats': '34999999999',
                'desc': 'Seu computador está muito lento? Reiniciando? Posso resolver seu problema. Seu computador está muito lento? Reiniciando? Posso resolver seu problema. Seu computador está muito lento? Reiniciando? Posso resolver seu problema.',
                'printer_repair': 'Sim',
                'work': 'Remoto',
                'cost': '150'
            }
        },
        'attempt_be_geek': {
            'name':'Dio',
            'lastname':'Linux',
            'email':'dio@linux.com',
            'password':'pwd123',
            'geek_profile': {
                'whats': '11999999999',
                'desc': 'Instalo Distros Ubuntu, Debian, ElementaryOS, PopOs, Linux Mint, Kurumin, Mandrake, Connectiva, Fedora, RedHat, CentOS, Slackware, Gentoo, Archlinux, Kubuntu, Xubuntu, Suze, Mandriva, Edubuntu, KateOS, Sabayon Linux, Manjaro Linux, BigLinux, ZorinOS, Unit',
                'printer_repair': 'Não',
                'work': 'Remoto',
                'cost': '150'
            }
        }
    }

    return data[target]