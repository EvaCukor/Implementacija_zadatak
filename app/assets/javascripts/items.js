function addItemsField() {
    
    /*global idAttributName */
    /*global nameAttributName */
    /*global idAttributPrice */
    /*global nameAttributPrice */
 
    //create Date object
    var date = new Date();
 
    //get number of milliseconds since midnight Jan 1, 1970 
    //and use it for item key
    var mSec = date.getTime(); 
 
    //Replace 0 with milliseconds
    idAttributName = "receipt_items_attributes_0_name".replace("0", mSec);
    nameAttributName = "receipt[items_attributes][0][name]".replace("0", mSec);
 
    idAttributPrice = "receipt_items_attributes_0_price".replace("0", mSec);
    nameAttributPrice = "receipt[items_attributes][0][price]".replace("0", mSec);
        
    //create <div> tag
    var div = document.createElement("div");
    
    div.className = "form-group";
    div.classList.add("form-inline");

    //create label for Name, set it's for attribute, 
    //and append it to <div> element
    var labelName = document.createElement("label");
    labelName.setAttribute("for", idAttributName);
    var nameLabelText = document.createTextNode("Naziv artikla");
    labelName.appendChild(nameLabelText);
    div.appendChild(labelName);
    
    div.innerHTML += ' ';
 
    //create input for Name, set it's type, id and name attribute, 
    //and append it to <div> element
    var inputName = document.createElement("input");
    inputName.setAttribute("type", "text");
    inputName.setAttribute("id", idAttributName);
    inputName.setAttribute("name", nameAttributName);
    div.appendChild(inputName);
    
    inputName.className = "form-control"        
    inputName.setAttribute("data-autocomplete", "/receipts/autocomplete_item_name");
    div.innerHTML += ' ';
 
    //create label for Price, set it's for attribute, 
    //and append it to <div> element
    var labelPrice = document.createElement("label");
    labelPrice.setAttribute("for", idAttributPrice);
    var priceLabelText = document.createTextNode("Cijena");
    labelPrice.appendChild(priceLabelText);
    div.appendChild(labelPrice);
    
    div.innerHTML += ' ';
 
    //create input for Street, set it's type, id and name attribute, 
    //and append it to <li> element
    var inputPrice = document.createElement("input");
    inputPrice.setAttribute("type", "number");
    inputPrice.setAttribute("id", idAttributPrice);
    inputPrice.setAttribute("name", nameAttributPrice);
    div.appendChild(inputPrice);
    
    inputPrice.className = "form-control"

    //add created <div> element with its child elements 
    document.getElementById("new-articles").appendChild(div);
}