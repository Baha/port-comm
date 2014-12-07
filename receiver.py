import sys

if __name__ == "__main__":
  port_data = sys.stdin.readline()
  num_list = [int(num) for num in port_data.strip().split(',')]
  sys.stdout.write(str(sum(num_list)))
