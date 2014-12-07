import sys

if __name__ == "__main__":
  # Get data from port and clean it
  port_data = sys.stdin.readline()
  clean_data = port_data.strip().split(',')

  # Integer conversion of numbers from list
  num_list = [int(num) for num in clean_data]
  # String conversion of the sum result
  reply_data = str(sum(num_list))

  # Send reply to standard output
  sys.stdout.write(reply_data)
