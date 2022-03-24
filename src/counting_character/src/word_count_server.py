#!/usr/bin/env python3
import rospy
from counting_character.srv import WordCount
from counting_character.srv import WordCountResponse

def count_words(request):
    count = len(request.words.split())
    print ("Responded [Count:%s]" %count)
    return WordCountResponse(count)

def word_count_server():
    rospy.init_node('word_count_server')
    service = rospy.Service('word_count', WordCount, count_words)
    print("Ready to count words")
    rospy.spin()

if __name__ == '__main__':
    try:
        word_count_server()
    except rospy.ROSInterruptException:
        pass
