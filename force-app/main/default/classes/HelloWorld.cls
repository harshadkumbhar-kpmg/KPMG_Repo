/**
 * @description Simple HelloWorld Apex class.
 * @author Agentforce
 * @group Utilities
 * @date 2026-03-12
 */
public with sharing class HelloWorld {
    /**
     * Returns a greeting message.
     * @return String greeting
     */
    public static String greet() {
        return 'Hello, World!';
    }
    
    /**
     * Prints a text string to debug log.
     * @param text The string to print
     */
    public static void printText(String text) {
        System.debug(text);
    }
}
