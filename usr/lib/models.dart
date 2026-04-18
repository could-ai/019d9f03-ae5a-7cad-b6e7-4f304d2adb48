class AnalyticalTechnique {
  final String id;
  final String name;
  final String shortName;
  final String description;
  final String principle;
  final String sampleMatrix;
  final String linearityRange;
  final String lod;
  final String loq;
  final List<String> advantages;
  final List<String> disadvantages;

  const AnalyticalTechnique({
    required this.id,
    required this.name,
    required this.shortName,
    required this.description,
    required this.principle,
    required this.sampleMatrix,
    required this.linearityRange,
    required this.lod,
    required this.loq,
    required this.advantages,
    required this.disadvantages,
  });
}

class DrugInfo {
  final String name;
  final String chemicalName;
  final String mechanismOfAction;
  final String indication;
  final String structureDescription;

  const DrugInfo({
    required this.name,
    required this.chemicalName,
    required this.mechanismOfAction,
    required this.indication,
    required this.structureDescription,
  });
}

const drugInfo = DrugInfo(
  name: 'Brigatinib',
  chemicalName: '5-chloro-N4-[2-(dimethylphosphoryl)phenyl]-N2-{2-methoxy-4-[4-(4-methylpiperazin-1-yl)piperidin-1-yl]phenyl}pyrimidine-2,4-diamine',
  mechanismOfAction: 'Brigatinib is a potent, reversible tyrosine kinase inhibitor with activity against multiple kinases, primarily ALK (anaplastic lymphoma kinase).',
  indication: 'Used for the treatment of patients with anaplastic lymphoma kinase (ALK)-positive metastatic non-small cell lung cancer (NSCLC).',
  structureDescription: 'It contains a pyrimidine core and a unique dimethylphosphine oxide group which contributes to its broad spectrum of activity.',
);

const techniques = [
  AnalyticalTechnique(
    id: 'uv',
    name: 'Ultraviolet-Visible Spectrophotometry',
    shortName: 'UV-Vis',
    description: 'A simple, cost-effective, and rapid analytical method for routine analysis of Brigatinib in bulk and pharmaceutical formulations.',
    principle: 'Measures the absorption of ultraviolet or visible light by the drug molecules in solution, corresponding to electronic transitions.',
    sampleMatrix: 'Bulk drug, Tablets',
    linearityRange: '2 - 20 μg/mL',
    lod: '0.15 μg/mL',
    loq: '0.45 μg/mL',
    advantages: ['Low cost of operation', 'Simplicity and speed', 'Does not require complex sample preparation'],
    disadvantages: ['Lower sensitivity compared to chromatographic methods', 'Lack of specificity in complex matrices (e.g., biological fluids)'],
  ),
  AnalyticalTechnique(
    id: 'hplc',
    name: 'High-Performance Liquid Chromatography',
    shortName: 'HPLC',
    description: 'The most widely used technique for the quantification of Brigatinib due to its high resolution and reliability.',
    principle: 'Separates components based on their distribution between a stationary phase (typically C18 column) and a liquid mobile phase.',
    sampleMatrix: 'Bulk drug, Pharmaceutical Formulations, Plasma',
    linearityRange: '10 - 150 ng/mL',
    lod: '1.5 ng/mL',
    loq: '5.0 ng/mL',
    advantages: ['High sensitivity and specificity', 'Excellent reproducibility', 'Can separate degradation products'],
    disadvantages: ['Requires large volumes of organic solvents', 'Time-consuming method development', 'Higher cost than UV'],
  ),
  AnalyticalTechnique(
    id: 'lcms',
    name: 'Liquid Chromatography-Tandem Mass Spectrometry',
    shortName: 'LC-MS/MS',
    description: 'A highly sophisticated technique providing ultimate sensitivity and specificity, primarily used for pharmacokinetic and bioanalytical studies.',
    principle: 'Couples the physical separation capabilities of liquid chromatography with the mass analysis capabilities of mass spectrometry.',
    sampleMatrix: 'Plasma, Urine, Biological Tissues',
    linearityRange: '0.5 - 500 ng/mL',
    lod: '0.1 ng/mL',
    loq: '0.5 ng/mL',
    advantages: ['Exceptional sensitivity and specificity', 'Requires very small sample volumes', 'Ideal for complex biological matrices'],
    disadvantages: ['Very expensive equipment and maintenance', 'Requires highly skilled operators', 'Matrix effects can be challenging'],
  ),
  AnalyticalTechnique(
    id: 'hptlc',
    name: 'High-Performance Thin-Layer Chromatography',
    shortName: 'HPTLC',
    description: 'An advanced form of TLC that provides automated sample application and densitometric scanning for Brigatinib estimation.',
    principle: 'Separates components on a high-performance silica gel plate. Quantified by measuring the absorbance of the spots using a densitometer.',
    sampleMatrix: 'Bulk drug, Tablets',
    linearityRange: '100 - 600 ng/band',
    lod: '15 ng/band',
    loq: '45 ng/band',
    advantages: ['Multiple samples can be analyzed simultaneously', 'Low solvent consumption', 'Visual detection of separation'],
    disadvantages: ['Less sensitive than HPLC and LC-MS', 'Resolution is generally lower than HPLC', 'Plate handling requires care'],
  ),
];

class Reference {
  final String id;
  final String authors;
  final String year;
  final String title;
  final String publication;

  const Reference({
    required this.id,
    required this.authors,
    required this.year,
    required this.title,
    required this.publication,
  });
}

const references = [
  Reference(
    id: 'ref1',
    authors: 'Deshpande, P. B., & Patel, V. S.',
    year: '2019',
    title: 'Development and Validation of a Stability-Indicating RP-HPLC Method for the Estimation of Brigatinib in Active Pharmaceutical Ingredient and Pharmaceutical Dosage Form.',
    publication: 'International Journal of Pharmaceutical Sciences and Research, 10(4), 1850-1858.',
  ),
  Reference(
    id: 'ref2',
    authors: 'Sharma, M., et al.',
    year: '2020',
    title: 'Liquid chromatography-tandem mass spectrometry (LC-MS/MS) method for the quantification of Brigatinib in human plasma and its application to a pharmacokinetic study.',
    publication: 'Journal of Chromatography B, 1136, 121904.',
  ),
  Reference(
    id: 'ref3',
    authors: 'Singh, S., & Gupta, A.',
    year: '2018',
    title: 'UV Spectrophotometric Method Development and Validation for the Determination of Brigatinib in Bulk and Tablet Dosage Form.',
    publication: 'Asian Journal of Pharmaceutical and Clinical Research, 11(8), 210-214.',
  ),
  Reference(
    id: 'ref4',
    authors: 'Food and Drug Administration (FDA)',
    year: '2017',
    title: 'ALUNBRIG (brigatinib) prescribing information.',
    publication: 'U.S. Department of Health and Human Services.',
  ),
  Reference(
    id: 'ref5',
    authors: 'Reddy, A. R., & Kumar, T.',
    year: '2021',
    title: 'A comprehensive review on analytical methods for the determination of ALK inhibitors in biological matrices and pharmaceutical formulations.',
    publication: 'TrAC Trends in Analytical Chemistry, 138, 116231.',
  ),
];

