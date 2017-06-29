# Criando nossos Users --- OBS: Depois que adicionarmos o devise precisamos incluir o email e senha dos users
u1 = User.create name: 'jose', kind: :salesman, email: 'salesman@teste.com', password: 123456
u2 = User.create name: 'pedro', kind: :salesman, email: 'salesman2@teste.com', password: 123456
u3 = User.create name: 'marcos', kind: :manager, email: 'manager@teste.com', password: 123456

# Criando alguns produtos de exemplo
s1 = u1.services.create name: 'Opa festa!', description:'Um smartphone novo ...'
s2 = u2.services.create name: 'Cupcakeria', description:'Um tablet novo ...'
s3 = u2.services.create name: 'Ham Lanches', description: 'Melhor hamburgeria da cidade'