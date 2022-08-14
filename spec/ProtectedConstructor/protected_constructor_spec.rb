# frozen_string_literal: true

# rubocop:disable Metrics/BlockLength
describe 'ProtectedConstructor', type: :module do
  let(:id) { 1 }

  describe 'when the module is included in a class' do
    subject do
      KlassFactory
    end

    describe '.new' do
      context 'when calling .new' do
        it 'raises an error' do
          expect { subject.new(id) }.to raise_error NoMethodError
        end
      end
    end

    describe '.<class factory method>' do
      let(:factory_class_object) { subject.create(id) }

      context 'when wrapped in a factory' do
        it 'creates an object' do
          expect(factory_class_object).to be_kind_of subject
          expect(factory_class_object.id).to eq id
        end
      end
    end
  end

  describe 'multiple inheritance' do
    subject do
      KlassFactoryTwo
    end

    let(:name) { 'john' }

    describe '.new' do
      context 'when calling .new' do
        it 'raises an error' do
          expect { subject.new(name, id) }.to raise_error NoMethodError
        end
      end
    end

    describe '.<class factory method>' do
      context 'when calling .<class factory method>' do
        let(:factory_class_object) { subject.create(name, id) }

        it 'does not raise an error' do
          expect { factory_class_object }.to_not raise_error
        end

        it 'returns a factory class object' do
          expect(factory_class_object).to be_kind_of subject
          expect(factory_class_object.name).to eq name
          expect(factory_class_object.id).to eq id
        end
      end
    end
  end
end
# rubocop:enable Metrics/BlockLength
