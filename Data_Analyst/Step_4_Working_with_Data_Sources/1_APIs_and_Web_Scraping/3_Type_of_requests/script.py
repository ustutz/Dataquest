import requests as Requests


class Script:

	@staticmethod
	def main():
		response = Requests.get("http://api.open-notify.org/iss-now.json")
		status_code = response.status_code
		print(str(status_code))



Script.main()