# Binary Search function to find a contact by name in a sorted list
def binary_search(phone_book, target_name):
    """
    This function implements the binary search algorithm to search for a contact in a sorted phone book.
    """
    # Start and end indices for the search
    Start = 0
    end = len(phone_book) - 1
    
    # Binary search loop
    while Start <= end:
        mid = (Start + end) // 2  # Calculate middle index
        
        mid_name = phone_book[mid][0]  # Get the name of the contact at mid index
        # If the target name matches the contact at the mid index, return the phone number
        if mid_name == target_name:
            return f"Contact found: {phone_book[mid][0]} - {phone_book[mid][1]}"
        
        # If the target name is alphabetically less than mid_name, search the left half
        elif target_name < mid_name:
            end = mid - 1
        
        # If the target name is alphabetically greater than mid_name, search the right half
        else:
            Start = mid + 1
    
    # If the name is not found, return a not found message
    return "Contact not found."

# Real-time Example: Phone Book Search
def phone_book_search():
    """
    This function works on a real-time example of using binary search to find a contact 
    in a sorted phone book.
    """
    # Sorted phone book (sorted by contact names)
    phone_book = [
        ("Maulik", "123-456-7890"),
        ("Priyank", "234-567-8901"),
        ("Tirth", "345-678-9012"),
        ("Dhruv", "456-789-0123"),
        ("Viru", "567-890-1234"),
        ("Shubham", "678-901-2345")
    ]
    
    # Ask user for the contact name to search
    target_name = input("Enter the name of the contact you want to search for: ")
    
    # Perform binary search to find the contact
    result = binary_search(phone_book, target_name)
    print(result)

# Run the phone book search function
if __name__ == "__main__":
    phone_book_search()
