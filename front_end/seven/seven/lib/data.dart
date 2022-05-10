class services {
  String? image;
  String? title;
  services({this.image, this.title});
}

List<services> service = [
  services(image: 'assets/images/rna1.png', title: 'DNA Analysis'),
  services(image: 'assets/images/rna1.png', title: 'RNA Analysis'),
  services(image: 'assets/images/rna1.png', title: 'Protein Analysis'),
  services(image: 'assets/images/rna1.png', title: 'Dna Analysis'),
];

class Articles {
  String title;
  List img;
  List text;
  List authors;
  Articles(
      {required this.text,
      required this.img,
      required this.authors,
      required this.title,
      required this.publicher});
  String publicher;
}

List<Articles> articlesDetails = [
  Articles(publicher: 'Fatma Esmail', title: 'DNA Edition', img: [
    'assets/images/a1.jpg',
    'assets/images/a2.jpg',
    'assets/images/dnaa.jpg',
    'assets/images/dnaa.jpg',
    'assets/images/dnab.jpg'
  ], text: [
    'DNA1 analysis is the name given to the interpretation of genetic sequences, and can be used for a wide variety of purposes. It can be used to identify a species, but can also differentiate individuals within a species.',
    '''
Targeted genome editing has rapidly become a vital tool across the entire research continuum from early discovery to therapeutic application. By enabling scientists to selectively disrupt, recover, repress, or activate gene expression, modern gene editing methods allow for unprecedented exploration of genetic mechanisms governing biological processes. Application of genome engineering ranges from curing developmental disorders to developing disease-resistant crops
      ''',
    'DNA2 analysis is the name given to the interpretation of genetic sequences, and can be used for a wide variety of purposes. It can be used to identify a species, but can also differentiate individuals within a species.',
    'DNA analysis is the name given to the interpretation of genetic sequences, and can be used for a wide variety of purposes. It can be used to identify a species, but can also differentiate individuals within a species.',
    'DNA analysis is the name given to the interpretation of genetic sequences, and can be used for a wide variety of purposes. It can be used to identify a species, but can also differentiate individuals within a species.',
    '''
Gene editing is a specific and targeted change to a DNA sequence and involves the addition, removal or modification of the DNA. The CRISPR-Cas system (evolved in microbes as a defense mechanism) is the basis for a class of gene-editing tools that are enabling advances from health and diagnostics to agriculture and energy. Using CRISPR, researchers have the power to target a specific gene, gene family, or even screen an entire genome.
'''
  ], authors: [
    'assets/images/person2.jpg',
    'assets/images/person1.jpg',
    'assets/images/person3.jpg',
    'assets/images/person4.jpg',
    'assets/images/person5.jpg'
  ]),
  Articles(publicher: 'Yasmeen Tarek', title: 'RNA Anylsis', img: [
    'assets/images/r1.jpg',
    'assets/images/r2.jpg',
    'assets/images/r3.jpg',
    'assets/images/r4.jpg',
    'assets/images/r5.jpg'
  ], text: [
    'DNA analysis is the name given to the interpretation of genetic sequences, and can be used for a wide variety of purposes. It can be used to identify a species, but can also differentiate individuals within a species.',
    'DNA analysis is the name given to the interpretation of genetic sequences, and can be used for a wide variety of purposes. It can be used to identify a species, but can also differentiate individuals within a species.',
    'DNA analysis is the name given to the interpretation of genetic sequences, and can be used for a wide variety of purposes. It can be used to identify a species, but can also differentiate individuals within a species.',
    'DNA analysis is the name given to the interpretation of genetic sequences, and can be used for a wide variety of purposes. It can be used to identify a species, but can also differentiate individuals within a species.',
    'DNA analysis is the name given to the interpretation of genetic sequences, and can be used for a wide variety of purposes. It can be used to identify a species, but can also differentiate individuals within a species.',
    'DNA analysis is the name given to the interpretation of genetic sequences, and can be used for a wide variety of purposes. It can be used to identify a species, but can also differentiate individuals within a species.',
  ], authors: [
    'assets/images/person3.jpg',
    'assets/images/person4.jpg',
    'assets/images/person6.jpg',
    'assets/images/person7.jpg',
    'assets/images/person8.jpg'
  ]),
  Articles(publicher: 'Nada Monir    ', title: 'Transcription', img: [
    'assets/images/t1.png',
    'assets/images/t2.jpg',
    'assets/images/t3.jpg',
    'assets/images/dnaa.jpg',
    'assets/images/dnab.jpg'
  ], text: [
    'DNA analysis is the name given to the interpretation of genetic sequences, and can be used for a wide variety of purposes. It can be used to identify a species, but can also differentiate individuals within a species.',
    'DNA analysis is the name given to the interpretation of genetic sequences, and can be used for a wide variety of purposes. It can be used to identify a species, but can also differentiate individuals within a species.',
    'DNA analysis is the name given to the interpretation of genetic sequences, and can be used for a wide variety of purposes. It can be used to identify a species, but can also differentiate individuals within a species.',
    'DNA analysis is the name given to the interpretation of genetic sequences, and can be used for a wide variety of purposes. It can be used to identify a species, but can also differentiate individuals within a species.',
    'DNA analysis is the name given to the interpretation of genetic sequences, and can be used for a wide variety of purposes. It can be used to identify a species, but can also differentiate individuals within a species.',
    'DNA analysis is the name given to the interpretation of genetic sequences, and can be used for a wide variety of purposes. It can be used to identify a species, but can also differentiate individuals within a species.',
  ], authors: [
    'assets/images/person7.jpg',
    'assets/images/person9.jpg',
    'assets/images/person10.jpg',
    'assets/images/person1.jpg',
    'assets/images/person5.jpg'
  ]),
  Articles(publicher: 'Shimaa Esmail', title: 'Machine Learning', img: [
    'assets/images/m1.jpg',
    'assets/images/m2.jpg',
    'assets/images/m3.jpg',
    'assets/images/m4.jpg',
    'assets/images/dnab.jpg'
  ], text: [
    'DNA analysis is the name given to the interpretation of genetic sequences, and can be used for a wide variety of purposes. It can be used to identify a species, but can also differentiate individuals within a species.',
    'DNA analysis is the name given to the interpretation of genetic sequences, and can be used for a wide variety of purposes. It can be used to identify a species, but can also differentiate individuals within a species.',
    'DNA analysis is the name given to the interpretation of genetic sequences, and can be used for a wide variety of purposes. It can be used to identify a species, but can also differentiate individuals within a species.',
    'DNA analysis is the name given to the interpretation of genetic sequences, and can be used for a wide variety of purposes. It can be used to identify a species, but can also differentiate individuals within a species.',
    'DNA analysis is the name given to the interpretation of genetic sequences, and can be used for a wide variety of purposes. It can be used to identify a species, but can also differentiate individuals within a species.',
    'DNA analysis is the name given to the interpretation of genetic sequences, and can be used for a wide variety of purposes. It can be used to identify a species, but can also differentiate individuals within a species.',
  ], authors: [
    'assets/images/person3.jpg',
    'assets/images/person5.jpg',
    'assets/images/person7.jpg',
    'assets/images/person9.jpg',
    'assets/images/person2.jpg'
  ])
];




