#Definir las funciones lambda
f = lambda x:x**2+25*x
g = lambda x:x**2+25*x

#Aplicar las funciones a una lista usando map
def apply_functions(data_list):
    list_f = list(map(f,data_list))
    list_g = list(map(g,data_list))
    return list_f,list_g
    
#Uso de ejemplo
data_list = [1,2,3,4,5]
list_f,list_g = apply_functions(data_list)
print("Listadespuésdeaplicarf(x):",list_f)
print("Listadespuésdeaplicarg(x):",list_g)