require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  context '購入本数＝０本' do
    specify { expect(BonusDrink.total_count_for(0)).to eq 0 }
  end
  context '購入本数＜空瓶３本' do
    specify { expect(BonusDrink.total_count_for(1)).to eq 1 }
  end
  context '購入本数＝空瓶３本' do
    specify { expect(BonusDrink.total_count_for(3)).to eq 4 }
  end
  context '購入本数＞空瓶３本' do
    specify { expect(BonusDrink.total_count_for(11)).to eq 16 }
    specify { expect(BonusDrink.total_count_for(100)).to eq 149 }
  end
end
