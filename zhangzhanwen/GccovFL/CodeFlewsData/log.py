import logging
import sys,os

def _init():
    global log
    log = Log()

class Log:
    def __init__(self):
        if os.path.exists('./report/c/log.txt'):
            os.remove('./report/c/log.txt')
        logging.basicConfig(level=logging.INFO,
                        filename='./report/c/log.txt',
                        filemode='a+',
                        format='%(asctime)s - %(filename)s[line:%(lineno)d] - %(levelname)s: %(message)s')
        logging.basicConfig(level=logging.DEBUG,
                            filename='./report/c/error.txt',
                            filemode='w',
                            format='%(asctime)s - %(filename)s[line:%(lineno)d] - %(levelname)s: %(message)s')

    def prt(self, *args):
        outlist = ''
        for i, out in enumerate(args):
            if sys.getsizeof(outlist) > 1000:
                logging.error('长度超限')
                return 0
            outlist += str(out)
        print(outlist)
        logging.info(outlist)

    def info(self, *args):
        outlist = ''
        for i, out in enumerate(args):
            if sys.getsizeof(outlist) > 1000:
                logging.error('长度超限')
                return 0
            outlist += str(out)
        logging.info(outlist)


    def error(self, *e):
        logging.error(e)






