import 'jquery';

let search = "";


const searchCards = () => {
  const searchBar = document.getElementById('search-bar');
  searchBar.addEventListener('keyup', (event) => {
    search = searchBar.value.toLowerCase();
    filterCards(search);
    console.log(search);
  });
};


const filterCards = (string) => {
  const cards = document.querySelectorAll('.card-body');
  cards.forEach(card => {
    console.log(card.innerText);
    if (!card.innerText.toLowerCase().includes(string)) {
      ancestor3(card).style.display = 'none';
    } else {
      ancestor3(card).style.display = 'initial';
    }
  });
};

const ancestor3 = (elmt) => {
  return elmt.parentElement.parentElement.parentElement;
};

export { searchCards };
