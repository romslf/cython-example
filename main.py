import time

def main():
    print('This is a cython test')
    
    # Print hello world 10 times using a for loop
    for i in range(10):
        print(i + 1, ' - Hello World')
        time.sleep(1)

main()