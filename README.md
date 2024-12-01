## Capstone Project: VeloCity ~ Where Speed Meets Discovery ~ A City Tours Optimization App   

VeloCity is an innovative web application that streamlines city tours by integrating advanced travel planning technologies. It enables users to explore city landmarks effectively, offering features like real-time landmark availability, advanced searching options, optimized travel routes, and personalized itineraries. The platform incorporates Google APIs such as Distance Matrix and Places API for accurate route and landmark data, leveraging a Traveling Salesman Problem (TSP) algorithm to optimize routes for minimal travel time. Built using Java, Spring Boot, Vue.js, JavaScript and PostgreSQL, the project combines efficient frontend and backend systems to deliver a seamless user experience.


---

### Problem Statement & Solution

**Problem:**  
City visitors often face challenges when trying to plan an efficient and enjoyable tour of a new city. With limited time and a lack of local knowledge, they struggle to identify the best landmarks and create an optimized travel route. The absence of a comprehensive tool that combines real-time availability, user reviews, and personalized itineraries leads to missed opportunities and inefficient travel plans.

**Solution:**  
VeloCity addresses these challenges by providing a web app that seamlessly integrates city landmarks with user-friendly features to optimize travel routes. The app allows users to plan and manage their city tours efficiently by offering:  
- Real-time Landmark Availability  
- Advanced Searching Features  
- Optimized Travel Routes  
- Personalized Itineraries  
- Efficient and Secure Management  
- User Reviews & Ratings  

---

### Technologies Used

**Backend:**  
- Java  
- Spring Boot  
- JDBC  
- ORM  
- PostgreSQL  

**Frontend:**  
- Vue.js  
- HTML  
- JavaScript  
- CSS  

---

### System Design Overview

### 1. Frontend Key Components
**Authentication:**  
- Login and registration forms.  
- Role-based access control (Visitors and Administrators).  

**Landmark Management:**  
- Landmark listing and search interface.  
- Landmark detail pages displaying information and reviews.  
- Review submission and display features.  

**Itinerary Management:**  
- Create, edit, and delete itineraries.  
- Itinerary sharing interface, providing public URLs or user-specific access.  

**Route Visualization:**  
- Integration with mapping services for route planning and display.  

**Administrator Dashboard:**  
- Interfaces for approving landmarks and managing user-submitted content.  

### 2. Backend Key Components
**User Management API:**  
- Endpoints for registration, login, and user profile management.  
- Role-based access management.  

**Landmark Management API:**  
- Endpoints for retrieving landmark details and search results.  
- Endpoints for submitting and viewing reviews.  
- Administrative endpoints for approving landmarks.  

**Itinerary Management API:**  
- Endpoints for creating, updating, deleting, and sharing itineraries.  
- Endpoints for generating travel routes.  

**Rating and Review Management API:**  
- Endpoints for submitting and retrieving reviews.  

**Mapping API Integration:**  
- Integration with services like Google Maps for routing and distance calculations.  

---

### Frontend: Vue.js Component

#### Data Fetching and Initialization
**`created()` Hook:**  
- **Purpose:** Initializes the component by fetching itinerary data and optimizing the route.  
- **Process:**  
  - Fetches the itinerary based on the ID from the route query.  
  - Retrieves the place ID for the starting point of the itinerary.  
  - Calls `itineraryService.getOptimizedRoute` to get the optimized route data.  

**`initMap()` Method:**  
- **Purpose:** Initializes and displays the Google Map with the optimized route and landmarks.  
- **Process:**  
  - **Map Initialization:** Centers the map based on the coordinates of the first landmark.  
  - **Directions Service:** Uses Google Maps Directions Service to create and display the route between landmarks.  
  - **Markers and InfoWindows:** Places markers on the map for each landmark with labels and clickable info windows.  

**`shareUrl()` Method:**  
- **Purpose:** Generates and provides a shareable URL if the itinerary is marked as shared.  

---

### Backend: Spring Boot Services

#### Distance Matrix Service
**`getDistanceMatrix(String origin, List<String> destinations)` Method:**  
- **Purpose:** Fetches distance data from Google Maps Distance Matrix API.  
- **Process:**  
  - Constructs a request URL with the origin and destination place IDs.  
  - Sends the request and processes the response to extract distance values.  
  - Returns a distance matrix representing the distances between each pair of locations.  

**`getCoordinatesForPlaceIds(List<String> placeIds)` Method:**  
- **Purpose:** Retrieves geographical coordinates (latitude and longitude) for a list of place IDs.  
- **Process:**  
  - Sends requests to the Google Places API for each place ID.  
  - Extracts and returns coordinates from the API responses.  

---

### Integration: How It All Works Together

1. **Fetching Data:**  
   - **Frontend:** Requests itinerary details, including the starting point and landmarks.  
   - **Backend:** Retrieves place IDs and distances using the Distance Matrix API. Coordinates are fetched using the Places API.  

2. **Optimizing Route:**  
   - **Backend:** Uses the TSP (Traveling Salesman Problem) algorithm to determine the shortest route based on the distance matrix.  
   - **Backend:** Returns the ordered list of destinations and their coordinates.  

3. **Displaying Route:**  
   - **Frontend:** Receives the optimized route data (order of landmarks and coordinates).  
   - **Frontend:** Initializes the Google Map, displays the route using Directions Service, and places markers for each landmark.  

---

### Route Optimization Explained

**Distance Matrix:**  
- Provides the distances between all pairs of locations, forming the basis for route optimization.  

**TSP Algorithm:**  
- A heuristic (greedy) approach to find the shortest path through all landmarks, minimizing the total travel distance.  

**Google Maps Integration:**  
- Utilizes the Directions Service to plot and visualize the optimized route on the map.  

---

### Google APIs and Their Roles

1. **Google Maps Distance Matrix API**  
   - **Purpose:** Retrieve travel distances and times between a set of locations.  

2. **Google Places API**  
   - **Purpose:** Fetch detailed information about places, including geographical coordinates.  

---

### Why This Approach?

- **Efficiency:** Combines Google Maps APIs and TSP algorithms to ensure optimal travel routes.  
- **Real-time Data:** Provides accurate and current travel plans.  
- **Advanced Algorithms:** Ensures minimal travel time and maximized landmark visits.  

---

### Database Schema Design

An ERD (Entity-Relationship Diagram) is used to structure and optimize the database design.
