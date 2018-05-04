# -*- coding: utf-8 -*-

# Cassidy Carpenter
# Summer 2018
# CSCI 3308
# University of Colorado
# Text Processing Module

"""
A simple module with various Text Processing Capabilities

"""

# Imports

import re

# Exceptions

class TextProcError(Exception):
    """
    Base Class for TextProc Exceptions

    """

    def __init__(self, msg):
        """
        TextProcError Constructor

        :param msg: error message
        :return: TextProcError instance

        """

        super().__init__(msg)

# Public Classes

class Processor:
    """
    Class for Processing Strings

    """

    def __init__(self, text):
        """
        Test Processor Constructor

        :param str text: text string to process
        :return: Processor instance

        """

        if type(text) is not str:
            raise TextProcError("Processors require strings")

        self.text = text

    def __len__(self):
        """
        Length of text

        :return: Length

        """

        return len(self.text)

 

    def is_realname(self):
        """
       Checks if the given input for the form is an actual
       name or if it just returns gibberish.
       Returns true if the name passes the requirments
       Returns false otherwise

        """

        nameVerify = re.compile(r'^[a-z]([-]?[a-z]+)*( [a-z]([-]?[a-z]+)*)+$')
        if nameVerify.match(self.text) is None:
            return False
        else:
            return True

    def is_coloradoEmail(self):

        """
        Checks to see if in the form the user is submitting an email
        with the domain name of @colorado.edu
        If the email submitted int he form is a colorado email it returns true
        Otherwise it returns false
        """

        emailVerify = re.compile(r'^[A-Za-z0-9._%+-]+@colorado.edu$')
        if emailVerify.match(self.text) is None:
            return False
        else:
            return True


    def is_passwordLength(self):

    	"""
    	Checks to see if the password typed is long enough when creating
    	an account
    	"""

    	passwordLength = re.compile(r'"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$')
    	if passwordLength.match(self.text) is None:
    		return False
    	else:
    		return True
        
        
    def is_loggedIn(self):
    tester = app.test_client(self)
    response = tester.post(
      '/login',
      data = dict(username="test@gmail.com", password="test", login_form=""),
      follow_redirects=True
      )
    self.assertIn(b'you are logged in', response.data)
