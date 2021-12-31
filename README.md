# SNU Website

Sigma Nu CMU public website.

## Updating the site

The site is automatically updated when the `main` branch has been updated. This is as simple as calling `git push`, or manually editing/uploading/deleting a file on Github's website. If developing or working on new content, create a new branch so the site doesn't break in the meantime. When you are finished, merge into main branch.

## Content Creating

All content can be created by following the instructions for each page below (no coding or developing skills needed). All editable pages are in markdown format. See here for info: . I also wrote a few handy macros for embedding useful items (see markdown macro section).

## Developing

Anyone can develop the site by downloading Zola (the only dependency). CSS is done with SCSS which just provides some better templating features. HTML/CSS is commented throughout.

Relevant docs:

Zola:
SCSS: 

Note: As I (jordan) am a nix user, the zola dependency is managed through a nix flake. The github action builds using the nix flake lock file. So if you are using nix to develop, you are guaranteed that what you see locally is what will be built and served through github pages. If not using nix, your zola version may be incorrect and the site could fail to build/build something different. If you have no idea what a nix flake is and you are taking charge of this repo, feel free to update the github action/dependency management to your liking.


## Pages

### Homepage

Editing: This page is managed through HTML

Developing: Just some custom content

### Newsletter List

Editing:
`static/newsletters/`: Add/delete the newsletter PDFs to this folder. The link URL will be the file name.

Developing: Works by getting every file in the `static/newsletters/` folder and generates a list of links to the file name.

### Alumni Contact Form

Editing:
`content/alumni-contact.md`: No metadata. Utilize the google form macro to embed a contact form.

Developing: Nothing special, displays content of markdown file.

### Rush Page

Editing:

### About Page

Editing:

`content/about/index.md`: This page is used to generate the about description of fraternity. Metadata:
    1. [instagram-link]: 
    2. [bridge-link]: 

`content/about/person1.md`: Each person with a headshot is their own special markdown file. Metadata:
    1. [headshot]: path to the headshot photo in `static/headshots/` folder
    2. [title]: Position title
    3. [name]: Person's name


Developing:

The `index.md` file is used to get the description of the fraternity and social links. Then we get every person's page and use the metadata to generate the grid of headshots with associated position titles.

## Markdown Macros

Markdown macro for embedding google forms (so anyone can quickly embed a form on a page)


