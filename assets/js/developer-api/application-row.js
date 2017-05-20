import request from 'superagent';

export default class ApplicationRow {
  constructor({ id, app }) {
    this.app  = app,
    this.id   = id || app.id;
    this.csrf = document.querySelector('meta[name=csrf]').content;
    
    if(this.app) {
      this.render();
      this.appendRow();
    }
    this.attachEvents();
  }
  render() {
    return this.html = `
    <tr class="app-row app-row-${this.app.id}">
        <td>${this.app.name}</td>
        <td>${this.app.token}</td>
        <td class="actions">
            <a class="delete-app" href="#delete">delete</a>
        </td>
    </tr>
    `;
  }
  appendRow() {
    document.querySelector('table.applications').insertAdjacentHTML('beforeend', this.html);
  }
  attachEvents() {
    if(!this.id) {
      throw new Error("Missing Application Id");
    }
    const url    = document.querySelector('.applications').getAttribute('data-url'),
          appSel = `.app-row-${this.id}`,
          row    = document.querySelector(appSel),
          button = row.querySelector('.delete-app');

    button.addEventListener('click', (e) => {
      e.preventDefault();
      if(!confirm("Are you sure you want to delete this app token?")) {
        return;
      }

      request.del(url.replace('APP_ID', this.id)).
              set('X-CSRF-TOKEN', this.csrf).
              end((err, res) => {
                if(res.status === 200) {
                  row.remove();
                } else {
                  // erroro handlez
                }
              });
    });
  }
}
