require './lib/to_wavecase'

describe String do

  it "converts a single word to wavecase" do
    expect("surfspot".to_wavecase).to eq "SuRfSpOt"
  end

  it 'converts a sentence to wavecase' do
    expect("Colourless green ideas sleep furiously".to_wavecase).to eq "CoLoUrLeSs GrEeN iDeAs SlEeP fUrIoUsLy."
  end

  it 'ignores over numbers' do
    expect("endle5s 5ummer".to_wavecase).to eq "eNdLe5s 5uMmEr"
  end

end
