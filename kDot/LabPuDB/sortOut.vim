
def main():
    print(is_prime(7))


if __name__ == '__main__':
    main()




        else:
            print("break1 \n")
            break
        break
        return False


#logger.warn('Login attempt to %s from IP %s', user_name, ip_address)
#logger.warn('Login attempt to %s from IP %s', user_name, ip_address)

#Not handler.setLevel(logging.INFO)
#Not handler.setLevel(logging.DEBUG)



➜ python test_primes.py 
.EE
======================================================================
ERROR: test_is_zero_not_prime (__main__.PrimesTestCase)
Is zero correctly determined not to be prime?
----------------------------------------------------------------------
Traceback (most recent call last):
  File "test_primes.py", line 29, in test_is_zero_not_prime
    self.assertFalse(is_prime(0))
  File "/home/red/git/bTest/kDot/LabPuDB/primes.py", line 41, in is_prime
    exit()
  File "/usr/lib/python2.7/site.py", line 366, in __call__
    raise SystemExit(code)
SystemExit: None

======================================================================
ERROR: test_negative_number (__main__.PrimesTestCase)
Is a negative number correctly determined not to be prime?
----------------------------------------------------------------------
Traceback (most recent call last):
  File "test_primes.py", line 25, in test_negative_number
    self.assertFalse(is_prime(index))
  File "/home/red/git/bTest/kDot/LabPuDB/primes.py", line 41, in is_prime
    exit()
  File "/usr/lib/python2.7/site.py", line 366, in __call__
    raise SystemExit(code)
SystemExit: None

----------------------------------------------------------------------
Ran 3 tests in 0.002s







import logging.config
if __name__ == '__main__':
    # Configure the logger
    # loggerConfigFileName: The name and path of your configuration file
    logging.config.fileConfig(path.normpath(loggerConfigFileName))

    # Create the logger
    # Admin_Client: The name of a logger defined in the config file
    mylogger = logging.getLogger('Admin_Client')

    msg='Bite Me'
    myLogger.debug(msg)
    myLogger.info(msg)
    myLogger.warn(msg)
    myLogger.error(msg)
    myLogger.critical(msg)

    # Shut down the logger
    logging.shutdown()

"....+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....8....+....9....+...10

#These are the loggers that are available from the code
#Each logger requires a handler, but can have more than one
[loggers]
keys=root,Admin_Client


#Each handler requires a single formatter
[handlers]
keys=fileHandler, consoleHandler


[formatters]
keys=logFormatter, consoleFormatter


[logger_root]
level=DEBUG
handlers=fileHandler


[logger_Admin_Client]
level=DEBUG
handlers=fileHandler, consoleHandler
qualname=Admin_Client
#propagate=0 Does not pass messages to ancestor loggers(root)
propagate=0


# Do not use a console logger when running scripts from a bat file without a console
# because it hangs!
[handler_consoleHandler]
class=StreamHandler
level=DEBUG
formatter=consoleFormatter
args=(sys.stdout,)# The comma is correct, because the parser is looking for args


[handler_fileHandler]
class=FileHandler
level=DEBUG
formatter=logFormatter
# This causes a new file to be created for each script
# Change time.strftime("%Y%m%d%H%M%S") to time.strftime("%Y%m%d")
# And only one log per day will be created. All messages will be amended to it.
args=("D:\\Logs\\PyLogs\\" + time.strftime("%Y%m%d%H%M%S")+'.log', 'a')


[formatter_logFormatter]
#name is the name of the logger root or Admin_Client
#levelname is the log message level debug, warn, ect 
#lineno is the line number from where the call to log is made
#04d is simple formatting to ensure there are four numeric places with leading zeros
#4s would work as well, but would simply pad the string with leading spaces, right justify
#-4s would work as well, but would simply pad the string with trailing spaces, left justify
#filename is the file name from where the call to log is made
#funcName is the method name from where the call to log is made
#format=%(asctime)s | %(lineno)d | %(message)s
#format=%(asctime)s | %(name)s | %(levelname)s | %(message)s
#format=%(asctime)s | %(name)s | %(module)s-%(lineno) | %(levelname)s | %(message)s
#format=%(asctime)s | %(name)s | %(module)s-%(lineno)04d | %(levelname)s | %(message)s
#format=%(asctime)s | %(name)s | %(module)s-%(lineno)4s | %(levelname)-8s | %(message)s

format=%(asctime)s | %(levelname)-8s | %(lineno)04d | %(message)s


#Use a separate formatter for the console if you want
[formatter_consoleFormatter]
format=%(asctime)s | %(levelname)-8s | %(filename)s-%(funcName)s-%(lineno)04d | %(message)s
