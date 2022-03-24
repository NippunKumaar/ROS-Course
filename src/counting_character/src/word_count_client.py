#!/usr/bin/env python3
import rospy
from counting_character.srv import WordCount
from counting_character.srv import WordCountResponse
import sys

def count_client(words):
    rospy.init_node('service_client')
    rospy.wait_for_service('word_count')
    word_counter = rospy.ServiceProxy('word_count', WordCount)
    word_count = word_counter(words)
    print (words, '->', word_count.count, "words")

if __name__ == '__main__':
    if len(sys.argv ) > 1:
        words = ' '.join(sys.argv[1:])
    else:
        print("%s [Words]" %sys.argv[0])
        sys.exit(1)
    print ("Requesting to count: %s" %words)
    count_client(words)
