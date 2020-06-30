import 'package:flutter/foundation.dart';

class Shirts  {
  String name;
  String type;
  double price;
  String country;
  String worldProblems;
  String imageURL;
  String material;
  String description;
  String originalImage;
  bool poverty;
  bool animals;
  bool refugees;
  bool climate;
  bool peaceJ;
  bool hunger;
  bool education;
  bool health;
  bool gender;




  Shirts({this.name, this.type, this.price, this.country, this.imageURL, this.worldProblems, this.material, this.description, this.originalImage, this.poverty });


}


List<Shirts> shirtList =[
  Shirts(name: 'The G.O.A.T', type: 'V Neck ', material: 'Cotton', price: 24.99, country: 'Indonesia', worldProblems: 'Child Poverty', imageURL: 'images/TheGoat.png', originalImage:'images/TheGoatFull.png', poverty: true),
  Shirts(name: 'SoccerKid', type: 'Crew Neck', material: 'Cotton', price: 24.99, country: 'Brazil', worldProblems: 'Child Poverty', imageURL: 'images/soccerkid.png', originalImage: 'images/soccerkid-full.png', poverty: true),
  Shirts(name: 'Bag Ladies', type: 'Crew Neck', material: 'Cotton', price: 24.99, country: 'Yemen', worldProblems: 'Refugee', imageURL: 'images/Yemen V-Neck 3.png', originalImage: 'images/Yemen V-Neck 3 Full.png', poverty: true),
  Shirts(name: 'Attachment Nana', type: 'Crew Neck', material: 'Cotton', price: 24.99, country:'Liberia', worldProblems: 'Poverty', imageURL: 'images/attachmentNana.png',poverty: true),
  Shirts(name: 'On Rock Us', type: 'Crew Neck', material: 'Cotton', price: 24.99, country: 'Iraq', worldProblems: 'Poverty', imageURL:'images/onRockUs.png', poverty: true),
  Shirts(name: 'Attachment Mom', type: 'Crew Neck', material: 'Cotton', price: 24.99, country: 'Zimbabwe', worldProblems: 'Child Poverty', imageURL:'images/attachmentMom.png', poverty: true),
  Shirts(name: 'Attachment Baby', type: 'Crew Neck', material: 'Cotton', price: 24.99, country: 'Georgia', worldProblems: 'Child Poverty', imageURL: 'images/attachmentbaby.png', poverty: true)

];


class Atrocities {
  String title;
  String region;
  String info;
  String image;
  String flagpic;
  List<String> shirts;


  Atrocities({this.title, this.region, this.info, this.image, this.flagpic, this.shirts});

}

List<Atrocities>atrocityList=[
  Atrocities(
      title: 'Yemen Crisis The Biggest Ever', region: 'Middle East',
      info: 'Yemen is the largest humanitarian crisis in the world, with more than 24 million people – some 80 per cent of the population – in need of humanitarian assistance, including more than 12 million children. Since the conflict escalated in March 2015, the country has become a living hell for the country’s children',
  image: 'images/yemencrisis.jpg', flagpic:'images/flags/flag90.png',
    shirts: ['images/Yemen V Neck.png',
      'images/Yemen V Neck 2.png,',
      'images/Yemen V-Neck 3.png',
      'images/Asia V-Neck.png',
      'images/Asia V-Neck 3.png',
      'images/Indonesia V-Neck.png'

    ],
  ),
  Atrocities(title: 'Central Africa is on Fire', region: 'Sub-Saharan Africa',
      info: "More than one in four of the country's population have been forced from their homes, leaving 600,000 people internally displaced and 600,000 more fleeing to neighboring countries like Cameroon, the Democratic Republic of Congo (DRC), and Chad, according to UN statistics. The country is also susceptible to bad flooding, and people are at risk of food insecurity and contracting the Ebola virus from the neighboring DRC.",
  image: 'images/centralAfrica.jpeg', flagpic: 'images/flags/flag135.png',
  shirts: ['images/Yemen V Neck.png',
    'images/Yemen V Neck 2.png,',
    'images/Yemen V-Neck 3.png',
    'images/Asia V-Neck.png',
    'images/Asia V-Neck 3.png',
    'images/Indonesia V-Neck.png'

  ],
  ),
  Atrocities(title: 'The Somalian Civil War', region: 'East Africa',
      info: "Somalia has witnessed persistent conflict since the 1990s, leaving large parts of the population internally displaced or having fled to neighboring countries. Drought in the Horn of Africa region has driven displacements and left the population facing the risk of having no more food. The country also faces violence from groups including al-Shabab, which has ties to Al Qaeda, and local ISIS affiliates. In early January, three Americans — one service member and two Department of Defense contractors — were killed in an al-Shabab attack at an airfield in Kenya.",
  image: 'images/SomaliSchool.jpeg', flagpic: 'images/flags/flag156.png',
  shirts: [
    'images/Yemen V Neck.png',
    'images/Yemen V Neck 2.png,',
    'images/Yemen V-Neck 3.png',
    'images/Asia V-Neck.png',
    'images/Asia V-Neck 3.png',
    'images/Indonesia V-Neck.png'
  ],
  ),
  Atrocities(title: 'Afghanistan is Still in Turrmoil', region: 'Middle East',
  info: "Afghanistan still faces political instability after the 2001 US-led invasion, which is still ongoing and has cost American taxpayers 1 trillion. Clashes between armed groups, including the Taliban and ISIS, continue with the government. The conflict has produced nearly almost 2.5 million refugees outside the country, according to the UN. The country continues to face risks of drought, landslides, and seismic activity, which are exacerbated by poor infrastructure.",
  image: 'images/AfghaniImage.jpeg', flagpic: 'images/flags/flag130.png',
  shirts: [
    'images/Yemen V Neck.png',
    'images/Yemen V Neck 2.png,',
    'images/Yemen V-Neck 3.png',
    'images/Asia V-Neck.png',
    'images/Asia V-Neck 3.png',
    'images/Indonesia V-Neck.png'
  ]
  ),
  Atrocities(title: 'Venezuela is upside down! Again ', region: 'South America',
      info: "Venezuela's socialist president Nicolás Maduro has presided over an economic crisis that has seen hyperinflation hit 10,000,000%, food and medicine shortages, and a continuing exodus of people. The ongoing crisis left has 94% of households in poverty and 90% of hospitals reporting a shortage of supplies, according to the US State Department's 2018 statistics. Some 7 million people — or about one in four of the population — are also in need of humanitarian assistance, the UN said. Photos from the region, published by Business Insider last year, also showed leaking sewer pipes, rotting meat in fridges, and a Happy Meal costing more than a year's salary. The government has also put up restrictions for humanitarian groups and some imports entering the country. It also imposes internet blackouts as a way to stifle dissent. Some 4.6 million other Venezuelans have fled the country as of November 2019, and the number is rising, the IRC said. Many of them have gone to neighboring countries like Colombia and Brazil, which have in turn tightened their borders.",
  image: 'images/venPoverty.jpg',flagpic: 'images/flags/flag114.png',
  shirts: [
    'images/Yemen V Neck.png',
    'images/Yemen V Neck 2.png,',
    'images/Yemen V-Neck 3.png',
    'images/Asia V-Neck.png',
    'images/Asia V-Neck 3.png',
    'images/Indonesia V-Neck.png'
  ],
  ),
  Atrocities(title:'War in Syria Continues', region: 'Middle East',
      info: "The Syrian civil war has raged on since 2013, with multiple world powers using the country as a battleground for their proxy wars. The constant fighting and airstrikes have damaged a huge amount of civilian infrastructure, leaving less than half of the country's health facilities remaining fully functional, and more than one in three schools damaged, the UN said in March 2019. The conflict has also produced more than 6 million internally-displaced people and 5.7 million refugees, making this the biggest refugee crisis in the world, the IRC said. At the same time, Turkey and multiple European countries have shut their doors on these migrants. In October 2019, President Donald Trump controversially announced the withdrawal of 1,000 US troops from northern Syria.",
  image: 'images/syrianWar.jpeg', flagpic: 'images/flags/flag112.png',
  shirts: [
    'images/Yemen V Neck.png',
    'images/Yemen V Neck 2.png,',
    'images/Yemen V-Neck 3.png',
    'images/Asia V-Neck.png',
    'images/Asia V-Neck 3.png',
    'images/Indonesia V-Neck.png'
  ]
  ),
  Atrocities(title: 'Bolivians Are Not Happy', region: 'South America',
      info: "Approximately 39 percent of Bolivians live in poverty, one of the highest rates in South America. The Bolivian government's work toward a stronger economy has helped reduce poverty from 59 percent, but poverty rates remain significantly higher in rural areas. Most of Bolivia's people live in rural villages.",
  image: 'images/boliviaPoverty.jpg', flagpic: 'images/flags/flag06.png',
  shirts: [
    'images/Yemen V Neck.png',
    'images/Yemen V Neck 2.png,',
    'images/Yemen V-Neck 3.png',
    'images/Asia V-Neck.png',
    'images/Asia V-Neck 3.png',
    'images/Indonesia V-Neck.png'
  ],
  )





];


final List<String>labels=[
  'New Shirts',
  'New Causes',
  'New Events',
  'Special Offers',

];

final List<String>newShirts=[
  'images/Yemen V Neck.png',
  'images/Yemen V Neck 2.png,',
  'images/Yemen V-Neck 3.png',
  'images/SouthAmerica V-Neck.png',
  'images/Asia V-Neck.png',
  'images/Asia V-Neck 2.png',
  'images/Asia V-Neck 3.png',
  'images/African V-Neck 1.png',
  'images/Indonesia V-Neck.png'
];


class NonProfits{
  String name;
  String logo;
  int yearStarted;
  String website;
  String category;

  NonProfits({this.name, this.logo, this.yearStarted, this.website, this.category});
}

List <NonProfits> nonProfit=[
  NonProfits(name: 'United Way', )
];

class Countries{
  String name;
  int population;
  String flagImage;
  String continent;
  String capital;

  Countries({this.name, this.population, this.flagImage, this.continent, this.capital});

}

List <Countries> country =[
  Countries(name: 'Syria', population: 16190000, capital: 'Damascus', continent: 'Asia', flagImage: 'images/flags/flag112.png' ),
  Countries(name: 'Venezuela', population: 28870000, capital: 'Caracas', continent: 'South America', )
];




class Causes extends Shirts {
  String causeName;
  String causeInformation;
  String causeImage;



  Causes({this.causeName, this.causeInformation, this.causeImage});
}

List<Causes> cause = [
  Causes(causeName: 'Poverty', causeInformation: "Nearly 1/2 of the world's population — more than 3 billion people — live on less than 2.50 a day. More than 1.3 billion live in extreme poverty — less than 1.25 a day. ... According to UNICEF, 22,000 children die each day due to poverty. 805 million people worldwide do not have enough food to eat.", causeImage: 'images/2 Refugee Kids.png'  ),
  Causes(causeName: 'Hunger', causeInformation:  'Around the world, more than enough food is produced to feed the global population—but more than 820 million people go hungry each year. [4] After steadily declining for a decade, world hunger is on the rise, affecting 11 percent of people globally.', causeImage: 'images/2 Kids 1 Fish.png'),
  Causes(causeName: 'Health & Well Being', causeInformation: 'There is ample evidence that social factors, including education, employment status, income level, gender and ethnicity have a marked influence on how healthy a person is. In all countries – whether low-, middle- or high-income – there are wide disparities in the health status of different social groups. The lower an individual’s socio-economic position, the higher their risk of poor health.', causeImage: 'images/African Lady Pregnant.png'),
  Causes(causeName: 'Education', causeInformation: 'Research shows that in countries where there is more of a gap between rich and poor families who have children in early childhood education, fewer children overall attend. ... Educational inequalities are also worse when there is more segregation of rich and poor children in schools', causeImage: 'images/asianSchool.png'),
  Causes(causeName: 'Gender Equality', causeInformation: 'Women and girls represent half of the world’s population and, therefore, also half of its potential. Gender equality, besides being a fundamental human right, is essential to achieve peaceful societies, with full human potential and sustainable development. Moreover, it has been shown that empowering women spurs productivity and economic growth.', causeImage: 'images/feminist.png'),
  Causes(causeName: 'Clean Water', causeInformation: 'Fresh water sustains human life and is vital for human health. There is enough fresh water for everyone on Earth. However, due to bad economics or poor infrastructure, millions of people (most of them children) die from diseases associated with inadequate water supply, sanitation and hygiene.', causeImage:'images/blackWater.png'),
  Causes(causeName: 'Climate Action', causeInformation: "Climate Change is the defining issue of our time and we are at a defining moment. From shifting weather patterns that threaten food production, to rising sea levels that increase the risk of catastrophic flooding, the impacts of climate change are global in scope and unprecedented in scale. Without drastic action today, adapting to these impacts in the future will be more difficult and costly.Climate Change is the defining issue of our time and we are at a defining moment. From shifting weather patterns that threaten food production, to rising sea levels that increase the risk of catastrophic flooding, the impacts of climate change are global in scope and unprecedented in scale. Without drastic action today, adapting to these impacts in the future will be more difficult and costly.", causeImage: 'images/Rock Head.png'),
  Causes(causeName: 'Peace & Justice', causeInformation: "Saving succeeding generations from the scourge of war was the main motivation for creating the United Nations, whose founders lived through the devastation of two world wars.", causeImage:'Syrian Mother With Kid.png' ),
  Causes(causeName: 'Refugees', causeInformation: "The world is witnessing the highest levels of displacement on record. An unprecedented 59.5 million people around the world have been forced from home. Among them are nearly 20 million refugees, over half of whom are under the age of 18.", causeImage: 'images/Refugee Boat To Greece Syrians.png'),
  Causes(causeName: 'Animals', causeInformation: 'Wildlife conservation is the practice of protecting wild species and their habitats in order to prevent species from going extinct. Major threats to wildlife include habitat destruction/degradation/fragmentation, overexploitation, poaching, pollution and climate change.', causeImage:'images/Kid WIth Goat.png' ),

];
