#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# Cassidy Carpenter
# Summer 2016
# CSCI 3308
# Univerity of Colorado
# Text Processing Module

import unittest
import testcases

class TextprocTestCase(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        pass

    @classmethod
    def tearDownClass(cls):
        pass

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def test_init(self):
        text = "tesing123"
        p = testcases.Processor(text)
        self.assertEqual(p.text, text, "'text' does not match input")

    # Add Your Test Cases Here..

    def test_realname(self):
    	text2 = "John Smith"
    	text = "Jac00)))b Tan&&&7"
    	text3 = "163538353"
    	text4 = "Small Pox"

        test1 = testcases.Processor(text)
        self.assertEqual(test1.text, text, "'text' is not a real name")
    
    def test_coloradoEmail(self):
        text = "capo9991@colorado.edu"
        text1 = "Cassandra.Picaso@colorado.edu"
        text2 = "capo9991@gmail.com"
        text3 = "capo992847"
        text4 = "heyyy"

        test1 = testcases.Processor(text)
        self.assertEqual(test1.text, text, "'text' does not meet email requirements")

    def test_passWord(self):
        text = "password123"
        text1 = "man12"
        text2 = "sjkdhks"
        text3 = "123456789"
        text4 = "coolman12345" 

        test1 = testcases.Processor(text)
        self.assertEqual(test1.text, text, "'text' does not meet password requirements")


# Main: Run Test Cases
if __name__ == '__main__':
    unittest.main()
