const cafe_list = document.querySelector('#cafe-list');
const form = document.querySelector('#add-cafe-form');

function readData(doc){
    var li = document.createElement('li');
    var name = document.createElement('span');
    var city = document.createElement('span');
    var cross = document.createElement('div')

    li.setAttribute('data-id',doc.id);
    name.textContent = doc.data().name;
    city.textContent = doc.data().city;
    cross.textContent = 'x';

    li.appendChild(name);
    li.appendChild(city);
    li.appendChild(cross);

    cafe_list.appendChild(li);

    //delete evet
    cross.addEventListener('click',(e)=>{
        e.stopPropagation();
        let id = e.target.parentElement.getAttribute('data-id');
        db.collection('cafes').doc(id).delete();
    })
}



// var cafes = db.collection('cafes').where('city','==','saigon').orderBy('name').get().then((snapshot)=>{
//     snapshot.docs.forEach(doc => {
//         readData(doc);
//     })
// })

db.collection('cafes').orderBy('city').onSnapshot(snapshot=>{
    let changes = snapshot.docChanges();
    console.log(changes);
    changes.forEach(change=>{
        if(change.type == 'added'){
            readData(change.doc)
        }
        else if(change.type == 'removed'){
            let li = cafe_list.querySelector('[data-id='+change.doc.id+']');
            cafe_list.removeChild(li);
        }
    })
})

form.addEventListener('submit',(e)=>{
    e.preventDefault();
    db.collection('cafes').add({
        'name':form.name.value,
        'city':form.city.value
    })
    form.name.value = '';
    form.city.value = '';
})