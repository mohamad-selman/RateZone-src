/*
    Resource: https://codepen.io/YoungElPaso/pen/RwGqEqq
*/

// Import fuseJs from skypack.
import fuseJs from "https://cdn.skypack.dev/fuse.js";
////import Fuse from 'node_modules/fuse.js'
//import Fuse from 'https://deno.land/x/fuse@v6.5.3/dist/fuse.esm.min.js'

//const Fuse = require('fuse.js');

// Init a new Fuse instance
const names = [
  { name: "Hussain" },
  { name: "Hussain Almohri", directLink: true, fid: 11 },
  { name: "Mohamad" },
  { name: "Selman" },
  { name: "Mohamad Smaoui", directLink: true },
  { name: "Mohamad Soud", directLink: true },
  { name: "Naser AlDuaij", directLink: true },
  { name: "Maha Alabduljaleel", directLink: true },
  { name: "Hussain Ibrahim", directLink: true },
  { name: "Hussain Kamal", directLink: true },
  { name: "Mohamad Ali Almulla", directLink: true },
  { name:"Adel Aljomah",directLink:true},
  { name:"Ayman Alawadhi",directLink:true},
  { name:"Bader Albader",directLink:true},
  { name:"Bader Albdaiwi",directLink:true},
  { name:"Fawaz Alazemi",directLink:true},
  { name:"Hamdi Yahyaoui",directLink:true},
  { name:"Hamid Alhamadi",directLink:true},
  { name:"Hazem Raafat",directLink:true},
  { name:"Hosam AboElfotoh",directLink:true},
  { name:"Husain Ibraheem",directLink:true},
  { name:"Hussain Almohri",directLink:true},
  { name:"Khalil Abdullah",directLink:true},
  { name:"Maha Alabduljaleel",directLink:true},
  { name:"Mansour Abdulaziz",directLink:true},
  { name:"Mohammad Almutawa",directLink:true},
  { name:"Mohammad RashedAlmulla",directLink:true},
  { name:"Mohammad Smaoui",directLink:true},
  { name:"Mohammed Ali Almulla",directLink:true},
  { name:"Naser AlDuaij",directLink:true},
  { name:"Salman Aladwani",directLink:true},
  { name:"Saud Aldarmi",directLink:true},
  { name:"Zaid Hussain",directLink:true},
  { name:"Ali Alshammeri",directLink:true},
  { name:"Amani Alshaher",directLink:true},
  { name:"Amro Khattab",directLink:true},
  { name:"Asmaa Alotaibi",directLink:true},
  { name:"Fatma Albdaiwi",directLink:true},
  { name:"Galal Elhusseini",directLink:true},
  { name:"Lulwa Alshebeeb",directLink:true},
  { name:"Mahammad Suoud",directLink:true},
  { name:"Nourah Alateeqi",directLink:true},
  { name:"Rena Alzaid",directLink:true},
  { name:"Sulaiman Alkhazi",directLink:true},
  { name:"Abbas Fairouz",directLink:true},
  { name:"Abdulaziz Boujarwah",directLink:true},
  { name:"Abdullah Almutawa",directLink:true},
  { name:"Abdullah Alshaibani",directLink:true},
  { name:"Ameer Mohammed",directLink:true},
  { name:"Ammar Alhusaini",directLink:true},
  { name:"Anastasios Dimitriou",directLink:true},
  { name:"Anwar Alyatama",directLink:true},
  { name:"Asaad Alrashed",directLink:true},
  { name:"Asmaa Alsumait",directLink:true},
  { name:"Ayed Salman",directLink:true},
  { name:"Buthainah Alkazemi",directLink:true},
  { name:"Ebrahim Alrashed",directLink:true},
  { name:"Eman Alotaibi",directLink:true},
  { name:"Faridah Ali",directLink:true},
  { name:"Fatma Alali",directLink:true},
  { name:"Fawaz Alanzi",directLink:true},
  { name:"Hamed Alazmi",directLink:true},
  { name:"Imtiaz Ahmed",directLink:true},
  { name:"Jassim Aljuraidan",directLink:true},
  { name:"Khaled Alsaqabi",directLink:true},
  { name:"Khaled Alzamel",directLink:true},
  { name:"Khaled Hadi",directLink:true},
  { name:"Lulwa Alhubail",directLink:true},
  { name:"Maha Faisal",directLink:true},
  { name:"Mahmoud Bennaser",directLink:true},
  { name:"Mansour Jaragh",directLink:true},
  { name:"Maytham Safar",directLink:true},
  { name:"Mehmet Karaata",directLink:true},
  { name:"Mohammad Alfailakawi",directLink:true},
  { name:"Mohammad Alkandari",directLink:true},
  { name:"Mohammad Allaho",directLink:true},
  { name:"Mohammad Alshayeji",directLink:true},
  { name:"Mohammad Awad",directLink:true},
  { name:"Mohammad Jeragh",directLink:true},
  { name:"Munirah Almatouq",directLink:true},
  { name:"Reem Albaghli",directLink:true},
  { name:"Sabah Alfedaghi",directLink:true},
  { name:"Saeed Abed",directLink:true},
  { name:"Sami Habib",directLink:true},
  { name:"Shouq Alsubaihi",directLink:true},
  { name:"Sobeeh Almukhaizim",directLink:true},
  { name:"Sultan Alharbi",directLink:true},
  { name:"Abdullah Almutairi",directLink:true},
  { name:"Aseel Almonaies",directLink:true},
  { name:"Bader Ali",directLink:true},
  { name:"Bader Alkhazi",directLink:true},
  { name:"Dari Alhuwail",directLink:true},
  { name:"Eiman Alshammari",directLink:true},
  { name:"Fatemah Husain",directLink:true},
  { name:"Fatima Boujarwah",directLink:true},
  { name:"Hanady Abdulsalam",directLink:true},
  { name:"Helal Alhammadi",directLink:true},
  { name:"Kalim Qureshi",directLink:true},
  { name:"Kassem Saleh",directLink:true},
  { name:"Loulwah Alsumait",directLink:true},
  { name:"Naelah Aldabbous",directLink:true},
  { name:"Omar Alibrahim",directLink:true},
  { name:"Paul Manuel",directLink:true},
  { name:"Ranya Alawadhi",directLink:true},
  { name:"Safaa Zaman",directLink:true},
  { name:"Sana Buhamra",directLink:true},
  { name:"Shaikha Alduaij",directLink:true},
  { name:"Zahraa Marafie",directLink:true},
  { name:"Zainab Aljazzaf",directLink:true},
  { name:"Zainab Almeraj",directLink:true},
  { name:"Aisha Al-Houti",directLink:true},
  { name:"Altaf Al-Farhan",directLink:true},
  { name:"Aseel Al-Qemlas",directLink:true},
  { name:"Eman Al-Roumi",directLink:true},
  { name:"Fatma Al-Rashed",directLink:true},
  { name:"Heba Al-Turki",directLink:true},
  { name:"Latifa Salem",directLink:true},
  { name:"Maryam Alotaibi",directLink:true},
  { name:"Sabah Al-Madani",directLink:true},
  { name:"Hani Farran",directLink:true},
  { name:"Ismail Taqi",directLink:true},
  { name:"Marian Deaconescu",directLink:true},
  { name:"Michael Johnson",directLink:true},
  { name:"Nejib Smaoui",directLink:true},
  { name:"Salem Al-Yaqoub",directLink:true},
  { name:"Abdullah Alazemi",directLink:true},
  { name:"Ahmad Karaballi",directLink:true},
  { name:"Albert Borbely",directLink:true},
  { name:"Ali Kanso",directLink:true},
  { name:"Anton Betten",directLink:true},
  { name:"Aurelian Bejancu",directLink:true},
  { name:"Bader Al-Shammary",directLink:true},
  { name:"Boudjemaa Anchouche",directLink:true},
  { name:"Boumediene Chentouf",directLink:true},
  { name:"Fares Alazemi",directLink:true},
  { name:"Fathi Saidi",directLink:true},
  { name:"Fuat Gurcan",directLink:true},
  { name:"Khaled Qazaqzeh",directLink:true},
  { name:"Khalifa Es-Sebaiy",directLink:true},
  { name:"Latif Hanna",directLink:true},
  { name:"Mamad Ghebleh",directLink:true},
  { name:"Milica Anđelić",directLink:true},
  { name:"Zafer Mahmud",directLink:true},
  { name:"Abdulaziz Alsenafi",directLink:true},
  { name:"Abdullah Alshammari",directLink:true},
  { name:"Abdelhameed Abdo",directLink:true},
  { name:"Ahood Al-Jasser",directLink:true},
  { name:"Ameena Alzaidan",directLink:true},
  { name:"Hamid Said",directLink:true},
  { name:"Hessah Al-Motairi",directLink:true},
  { name:"Kyriakos Papadopoulos",directLink:true},
  { name:"Maryam Alkandari",directLink:true},
  { name:"Mishari Al-Foraih",directLink:true},
  { name:"Saleh Baqer",directLink:true},
  { name:"Abdulrahman Mubarak",directLink:true},
  { name:"Adnan Al-Sayed",directLink:true},
  { name:"Alaa Alqaderi",directLink:true},
  { name:"Amal Alrashdan",directLink:true},
  { name:"Ayman Ezz Elarab",directLink:true},
  { name:"Baba Amoro",directLink:true},
  { name:"Hameed Al-Fahad",directLink:true},
  { name:"Maale Al-Motairi",directLink:true},
  { name:"Mayada Yousif",directLink:true},
  { name:"Muna Aljazzaf",directLink:true},
  { name:"Rayouf Alsahli",directLink:true},
  { name:"Samer Al-Sahhar",directLink:true},
  { name:"Shorouq Al-Ghunaim",directLink:true},
  { name:"Wafa Abdulrahman",directLink:true},
  { name:"Yousef Alenazi",directLink:true}

];

const fuse = new Fuse(names, {
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
    },
    
  };
};

