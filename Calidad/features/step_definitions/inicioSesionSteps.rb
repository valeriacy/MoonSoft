inputNames = {"Carátula" => "coverPage", 
              "CarátulaIC" => "customCheck1" ,
              "Índice generalI" => "generalIndexStartPage", 
              "Índice generalF" => "generalIndexEndPage" ,
              "Índice generalIC" => "customCheck1" ,
              "Índice de FigurasI" => "figureIndexStartPage" ,
              "Índice de FigurasF" => "figureIndexEndPage",
              "Índice de FigurasIC" => "customCheck1" , 
              "Índice de TablasI" => "tableIndexStartPage" ,
              "Índice de TablasF" => "tableIndexEndPage",
              "Índice de TablasIC" => "customCheck1" , 
              "BibliografíaI" => "bibliographyStartPage" ,
              "BibliografíaF" => "bibliographyEndPage",
              "BibliografíaIC" => "customCheck2" , 
              "AnexosI" => "annexesStartPage" ,
              "AnexosF" => "annexesEndPage",
              "AnexosIC" => "customCheck1" ,}

When("I see that the {string} section is at page {int}") do |sectionName, pageIndex|
    inputName = inputNames[sectionName]
    inputValue = find_field(inputName).value
    expect(inputValue.to_i).to eq pageIndex
end
  
When("I see that the {string} section starts at page {int} and finishes at page {int}") do |sectionName, initialPageIndex, finalPageIndex|
    initialInputName = inputNames[sectionName+"I"]
    finalInputName = inputNames[sectionName+"F"]
    initialInputValue = find_field(initialInputName).value
    finalInputValue = find_field(finalInputName).value
    expect(initialInputValue.to_i).to eq initialPageIndex
    expect(finalInputValue.to_i).to eq finalPageIndex
end

When("I see that the {string} section is disabled") do |sectionName|
    checkBoxId = inputNames[sectionName+"IC"]
    disableSectionValue = page.find("#"+checkBoxId, visible: :all).value
    expect(disableSectionValue).to eq "on"
end
