





# filenames = ['11-47-BenchExe-base.log', '11-47-BenchExe-blade.log', '11-47-BenchExe-naive.log']
# filenames = ['14-35-BenchExe-base.log', '14-35-BenchExe-blade.log', '14-35-BenchExe-naive.log']
filenames = ['17-52-BenchExe-base.log', '17-52-BenchExe-blade.log', '17-52-BenchExe-naive.log']

base = []
blade = []
naive = []

def print_avg(some_list):
	current = []
	for i, num in enumerate(some_list):
		current.append(num)
		if (i+1) % 20 == 0:
			print('%.3f'%(sum(current) / len(current)))
			current = []
		
		

for filename in filenames:
	file = open(filename,'r')
	for i in file.readlines():
		if "Running" in i:
			continue

		i = i.strip()

		if not i.replace('.','',1).isdigit():
			continue

		if "blade" in filename:
			blade.append(float(i))

		if "base" in filename:
			base.append(float(i))

		if "naive" in filename:
			naive.append(float(i))



print("---base---")
print_avg(base)

print("---blade---")
print_avg(blade)

print("---naive---")
print_avg(naive)


