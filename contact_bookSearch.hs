import Data.List (sort) -- Import the sort function to sort the contact book
import Data.Maybe (isNothing) -- Import isNothing to check for missing values
import System.IO -- Import for I/O operations (though not strictly needed here)

-- Define the contact book type as a list of tuples where each tuple has (name, phone)
type ContactBook = [(String, String)]

-- Function to perform a binary search in the contact book
binarySearch :: ContactBook -> String -> Maybe String
binarySearch [] _ = Nothing -- Base case: if the list is empty, return Nothing
binarySearch contact_book contact_name
    | mid_name == contact_name = Just mid_phone -- If the middle name matches, return the phone number
    | contact_name < mid_name  = binarySearch (take mid_index contact_book) contact_name -- Search in the left half
    | otherwise                = binarySearch (drop (mid_index + 1) contact_book) contact_name -- Search in the right half
  where
    mid_index = length contact_book `div` 2 -- Calculate the middle index of the list
    (mid_name, mid_phone) = contact_book !! mid_index -- Get the name and phone number at the middle index

-- Function to handle the phone book search
phoneBookSearch :: IO ()
phoneBookSearch = do
    -- Define the contact book as a sorted list of tuples (name, phone)
    let contact_book = sort [("Maulik", "123-456-7890"),
                             ("Priyank", "234-567-8901"),
                             ("Tirth", "345-678-9012"),
                             ("Pratik", "456-789-0123"),
                             ("Dhruv", "567-890-1234"),
                             ("Shubham", "678-901-2345")]

    -- Prompt the user to enter a contact name to search for
    putStrLn "Enter the name of the contact you want to search for:"
    contact_name <- getLine -- Read user input from the console

    -- Perform a binary search in the contact book for the entered name
    let result = binarySearch contact_book contact_name

    -- Check if the contact was found or not
    if isNothing result
        then putStrLn "Contact not found." -- If no match, display "Contact not found"
        else putStrLn $ "Contact found: " ++ contact_name ++ " - " ++ maybe "" id result -- Display the contact details

-- Main function to run the program
main :: IO ()
main = phoneBookSearch -- Call the phone book search function
