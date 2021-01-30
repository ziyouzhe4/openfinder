describe Fastlane::Actions::OpenfinderAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The openfinder plugin is working!")

      Fastlane::Actions::OpenfinderAction.run(nil)
    end
  end
end
