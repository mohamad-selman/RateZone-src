/*
    Resource: https://codepen.io/YoungElPaso/pen/RwGqEqq
*/

// Import fuseJs from skypack.
import fuseJs from "https://cdn.skypack.dev/fuse.js";

// Init a new Fuse instance
const names = [
  { name: "Hussain" },
  { name: "Hussain Almohri", directLink: true },
  { name: "Mohamad" },
  { name: "Mohamad Smaoui", directLink: true },
  { name: "Mohamad Soud", directLink: true },
  { name: "Naser AlDuaij", directLink: true },
  { name: "Maha Alabduljaleel", directLink: true },
  { name: "Hussain Ibrahim", directLink: true },
  { name: "Hussain Kamal", directLink: true },
  { name: "Mohamad Ali Almulla", directLink: true },
];

const fuse = new fuseJs(names, {
  keys: ["name"]
});

// Runs a Fuse search on query.
function doFuseSearch(query) {
  let results = fuse.search(query);
  return results;
}

// Autocomplete component.
window.autoComplete = function () {
  return {
    cursorIndex: -1,
    activeSuggestion: null,
    inputValue: "",
    active: true,
    suggestions: [],
    query: "",
    updateSuggestions: function (data) {
      this.query = data;
      this.suggestions = doFuseSearch(this.query);
    },
    getThis: function () {
      let t = this;
      return t;
    },
    getRefs(which) {
      return this.$refs[which];
    },
    moveUpList() {
      // Move up the list if there is a list and we're not at the top already.
      if (this.suggestions.length > 0 && this.cursorIndex > 0) {
        // Decrement cursorIndex.
        this.cursorIndex--;

        // Remove active status from any other suggestion.
        let oldActive = this.suggestions.find(
          (suggestion) => suggestion.active
        );
        if (oldActive) {
          oldActive.active = false;
        }

        // Add active status to suggestion at cursorIndex.
        this.suggestions[this.cursorIndex].active = true;
        this.inputValue = this.suggestions[this.cursorIndex].item.name;
        // console.log(this.suggestions[this.cursorIndex].item.name);
      }
    },
    moveDownList() {
      // Move down the list only if there is room on the list to move down.
      if (
        this.suggestions.length > 0 &&
        this.cursorIndex < this.suggestions.length - 1
      ) {
        // Just increment the cursorIndex.
        this.cursorIndex++;

        // Remove active status from any other suggestion.
        let oldActive = this.suggestions.find(
          (suggestion) => suggestion.active
        );
        if (oldActive) {
          oldActive.active = false;
        }
        // console.log(this.suggestions[this.cursorIndex].item.name);
        this.suggestions[this.cursorIndex].active = true;
        this.inputValue = this.suggestions[this.cursorIndex].item.name;
      }
    }
  };
};