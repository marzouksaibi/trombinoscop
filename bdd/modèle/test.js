let urlData = "http://localhost/omeka/api/items";

async function read(){

let data= await fetch(urlData)

let dataJson=await data.json()

for(let i=0;i<(dataJson.length-4)/4;i++){
    let tbody=document.getElementById('tt')

        tbody.innerHTML=tbody.innerHTML+ `<tr>
                                          <td>${dataJson[i]["dcterms:title"][0]["@value"]}</td>
                                        <td>${dataJson[i+6]["dcterms:title"][0]["@value"]}</td>
                                         <td>${dataJson[i+12]["dcterms:title"][0]["@value"]}</td>
                                        <td>${dataJson[i+19]["dcterms:title"][0]["@value"]}</td>
										<td>${dataJson[i+19]["dcterms:title"][0]["@value"]}</td>
                                        </tr>`
}

}
read()

