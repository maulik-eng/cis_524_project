import java.util.Scanner;

public class contact_bookSearch {

    // Binary Search function to find a contact by name in a sorted array
    public static String binarySearch(String[][] contact_book, String contact_name) {
        int start = 0;
        int end = contact_book.length - 1;
        
        // Perform binary search
        while (start <= end) {
            int mid = (start + end) / 2;  // Calculate the middle index
            String mid_name = contact_book[mid][0];  // Get the name of the contact at mid index
            
            // If the target name matches the contact at the mid index, return the phone number
            if (mid_name.equals(contact_name)) {
                return "Contact found: " + contact_book[mid][0] + " - " + contact_book[mid][1];
            }
            
            // If the target name is alphabetically less than mid_name, search the left half
            if (contact_name.compareTo(mid_name) < 0) {
                end = mid - 1;
            }
            // If the target name is alphabetically greater than mid_name, search the right half
            else {
                start = mid + 1;
            }
        }
        
        // If the name is not found, return a not found message
        return "Contact not found.";
    }
    
    // Real-time Example: Phone Book Search
    public static void phone_bookSearch() {
        String[][] contact_book = {
            {"Maulik", "123-456-7890"},
            {"Priyank", "234-567-8901"},
            {"Tirth", "345-678-9012"},
            {"Pratik", "456-789-0123"},
            {"Dhruv", "567-890-1234"},
            {"Shubham", "678-901-2345"}
        };
        
        // Scanner to read user input
        Scanner scanner = new Scanner(System.in);
        
        // Ask user for the contact name to search
        System.out.print("Enter the name of the contact you want to search for: ");
        String contact_name = scanner.nextLine();
        
        // Perform binary search to find the contact
        String result = binarySearch(contact_book, contact_name);
        System.out.println(result);
        
        scanner.close();
    }

    // Main method to run the program
    public static void main(String[] args) {
        phone_bookSearch();
    }
}
