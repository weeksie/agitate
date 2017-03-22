import 'phoenix_html';
// Brunch is missing `process` for some reason. Importing here to force it.
import process from "process"; 
import request from "superagent";
import ApplicationRow from './application-row';

// All this is a bit slop, but I didn't see a need for a framework to get involved in a documentation site.

const signInButton = document.getElementById('sign-in');
const signUpButton = document.getElementById('sign-up');

const signInForm   = getForm('sign-in-form');
const signUpForm   = getForm('sign-up-form');
const appForm      = getForm('add-application');

if(signUpButton) {
  signInButton.addEventListener('click', (e) => {
    e.preventDefault();
    showHide(signInForm.parentElement, signUpForm.parentElement);
  });
  
  signUpButton.addEventListener('click', (e) => {
    e.preventDefault();
    showHide(signUpForm.parentElement, signInForm.parentElement);
  });
}

if(appForm) {
  appForm.addEventListener('submit', handleAppSubmit);
  initApplicationTable();
}

function handleAppSubmit(e) {
  e.preventDefault();
  
  const action   = this.action,
        method   = this.method,
        // gather CSRF inputs too
        inputs   = this.querySelectorAll('input');

  let i,l = inputs.length, fields = { };
  for(i=0;i<l;i++) {
    let name  = inputs[i].name,
        value = inputs[i].value,
        match, base;
    
    if(match = name.match(/\[(.+)\]/)) {
      base                   = name.substr(0, name.indexOf('['));
      fields[base]           = fields[base] || { };
      fields[base][match[1]] = value;
    } else {
      fields[name]           = value;
    }
  }

  request[method](action).send(fields).end((err, res) => {
    const row = new ApplicationRow({ app: JSON.parse(res.text) });
  });
}

function getForm(divId) {
  const enclosing = document.getElementById(divId);
  return enclosing && enclosing.firstChild;
}

function showHide(show, hide) {
  show.style.display = 'block';
  hide.style.display = 'none';
}

function initApplicationTable() {
  const rows = document.querySelectorAll("tr.app-row");
  rows.forEach((row) => {
    const appRow = new ApplicationRow({ id: row.getAttribute('data-app-id') });
  });
}
