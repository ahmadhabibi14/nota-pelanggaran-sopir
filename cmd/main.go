package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	// Define your API endpoints and handlers
	http.HandleFunc("/", homeHandler)
	http.HandleFunc("/users", usersHandler)

	// Start the server
	fmt.Println("Server listening on port 8080...")
	log.Fatal(http.ListenAndServe(":8080", nil))
}

// Handler for the home endpoint
func homeHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Welcome to the API!")
}

// Handler for the /users endpoint
func usersHandler(w http.ResponseWriter, r *http.Request) {
	// Handle GET requests
	if r.Method == http.MethodGet {
		// Fetch user data from a database or any other source
		users := []string{"Alice", "Bob", "Charlie"}

		// Return the user data as JSON
		w.Header().Set("Content-Type", "application/json")
		fmt.Fprint(w, users)
	} else {
		// Return a 405 Method Not Allowed for other HTTP methods
		w.WriteHeader(http.StatusMethodNotAllowed)
		fmt.Fprintf(w, "Method Not Allowed")
	}
}
