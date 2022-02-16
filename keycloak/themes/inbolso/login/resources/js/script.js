const fields = document.querySelectorAll('[required]');

for (const field of fields) {
  field.addEventListener('invalid', (event) => {
    formValidation(event);
  });

  field.addEventListener('blur', (event) => {
    formValidation(event)
  });
}

function formValidation(event) {
  const field = event.target;
  const parent = field.parentElement;
  const hasError = !field.validity.valid

  parent.classList.toggle('field--error', hasError);
  
  event.preventDefault();
}

function showPass() {
  const field = document.getElementById('password');
  const eye = document.querySelector('[class*=olho]')

  if(field.type === 'password') {
    field.type = 'text';
    eye.classList.add('in-olho-cortado')
    eye.classList.remove('in-olho');
  } else {
    field.type = 'password';
    eye.classList.add('in-olho')
    eye.classList.remove('in-olho-cortado');
  }
}