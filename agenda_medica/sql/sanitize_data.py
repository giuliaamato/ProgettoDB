import sys


def modifyDate(date):
	return date.replace('/','-')

def addSexField(cf):
	# caratteri 9-10
	g = int(cf[9:11])
	if g > 40:
		return 'F'
	else:
		return 'M'





def openFile(filename):

	inp_f = open(filename,'r')

	rows = []

	for i in inp_f:
		row = i.split(',')
		print row
		row[0] = row[0].replace("(","")
		row[0] = row[0].replace("'","")
		row[1] = row[1].replace("'","")
		s = addSexField(row[0])
		row[1] = modifyDate(row[1])
		row.insert(5,s)
		rows.append(row)

	inp_f.close()
	
	out_f = open(filename,'w')

	out_f.write("SET FOREIGN_KEY_CHECKS = 0;\n")
	out_f.write("TRUNCATE Citta;\n")
	out_f.write("INSERT INTO Informazioni(CodiceFiscale,DataNascita,Nome,Cognome,Email,Sesso,Telefono,CittaResidenza,CittaNascita,Indirizzo,CodiceASL) VALUES \n")

	for i in range(0,len(rows)-1):

		row = rows[i]

		out_f.write("("+"'"+row[0]+"'"+","+"'"+row[1]+"'"+","+row[2]+","+row[3]+","+row[4]+","+"'"+row[5]+"'"+","+row[6]+","+row[7]+","+row[8]+","+row[9]+","+row[10]+","+row[11])

	out_f.write(";\n")
	out_f.write("SET FOREIGN_KEY_CHECKS = 1;")




def sanitizeData():

	if len(sys.argv) > 1:
		openFile(sys.argv[1])




if __name__ == '__main__':
	sanitizeData()