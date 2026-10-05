const BASEURL = "https://swapi.dev/api";
let route = "people";
let endpoint = `${BASEURL}/${route}`;
let container = document.getElementById("container")
fetch(endpoint)
    .then(response => {
        if (!response.ok) {
            throw new Error("Failed to fetch people");
        }

        return response.json();
    })
    .then(parsedData => {

        for(i = 0; i < parsedData["results"].length; i++)
        console.log(parsedData.results[i].hair_color);
        let starship = parsedData.results[0].starships[1];
        return fetch(starship);

    })
    .then(response => {

        if (!response.ok) {
            throw new Error("Failed to fetch starship");
        }

        return response.json();

    })

    .then(starship => {
        console.log(starship.name); // Just its name
    })
    .catch(err => console.error(err));