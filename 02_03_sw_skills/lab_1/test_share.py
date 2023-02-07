import shared as sh
import re
sh.afunction()


def space_compress(str_in:str):
	"""
	Take a spring and return a string a string with no whitespaces

	Args:
		- str_in(str): string to remove whitespace
	"""
	assert isinstance(str_in, str), "Expected string but got {}".format(dtype(str_in))

	# replace multiline string with one-line string
	str_out = str_in.replace('\n',"")

	# reduce multiple whitespaces into one white space
	str_out = " ".join(str_in.split())

	return str_out

# if __name__=="__main__":
# 	txt = input("test inputs: ")
# 	print(space_compress(txt))