---
title: "HSS-4: Getting a Better Sense of Population"
include_toc: false
showpagemeta: true
postNavigation: false
---

**Disclaimer: This calculator assumes that the population is spread out perfectly in every country.**

Select Country:

<select id='country-selector'>
</select>

Input number of effected people:

<input type="number" id="number-people" value="40000000">

Total in country: <span id="nation-total"></span>

Number of effected in country: <span id="nation-effected"></span>

<script>
    let countrySelector = document.getElementById('country-selector');
    let numberInput = document.getElementById('number-people');
    let nationTotal = document.getElementById('nation-total');
    let nationEffected = document.getElementById('nation-effected');
    let data = [];
    let total = 0;
    async function pageRun() {
        data = await (await fetch('https://raw.githubusercontent.com/samayo/country-json/master/src/country-by-population.json')).json();
        data.forEach(c => {
            let o = document.createElement('option');
            o.value = c.country;
            o.innerText = c.country;
            countrySelector.appendChild(o);
            total += c.population;
        });

        countrySelector.addEventListener('change', onChange);
        numberInput.addEventListener('change', onChange);
        onChange();
    }
    function onChange() {
        let cs = countrySelector.value;
        let ni = numberInput.value;
        let pop = data.find(d => d.country === cs).population;
        let percent = pop / total;
        nationTotal.innerText = pop.toLocaleString('en-US');
        nationEffected.innerText = Math.round(percent * ni).toLocaleString('en-US');
    }
    pageRun();
</script>
