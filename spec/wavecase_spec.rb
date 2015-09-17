require './lib/to_wavecase'

describe String do

  it "converts a single word to wavecase" do
    expect("surfspot".to_wavecase).to eq "sUrFsPoT"
  end

  it 'converts a sentence to wavecase' do
    expect("colourless green ideas sleep furiously".to_wavecase).to eq(
      "cOlOuRlEsS gReEn IdEaS sLeEp FuRiOuSlY"
    )
  end
  
  it 'ignores existing casing' do
    expect("Colourless GreeN ideas sleEp furiOusly".to_wavecase).to eq(
      "cOlOuRlEsS gReEn IdEaS sLeEp FuRiOuSlY"
    )
  end

  it 'ignores numbers' do
    expect("endle5s 5ummer".to_wavecase).to eq "eNdLe5s 5uMmEr"
  end

end
