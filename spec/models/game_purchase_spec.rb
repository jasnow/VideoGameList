# typed: false
require 'rails_helper'

RSpec.describe GamePurchase, type: :model do
  subject(:game_purchase) { FactoryBot.create(:game_purchase) }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(game_purchase).to be_valid
    end

    it { should validate_length_of(:comments).is_at_most(500) }
    it { should validate_uniqueness_of(:game_id).scoped_to(:user_id) }
    it 'validates the rating' do
      expect(game_purchase).to validate_numericality_of(:rating)
        .only_integer
        .allow_nil
        .is_greater_than_or_equal_to(0)
        .is_less_than_or_equal_to(100)
    end

    it 'validates the hours_played' do
      expect(game_purchase).to validate_numericality_of(:hours_played)
        .allow_nil
        .is_greater_than_or_equal_to(0)
    end

    it 'validates the completion status enum' do
      expect(game_purchase).to define_enum_for(:completion_status)
        .with_values(
          [
            :unplayed,
            :in_progress,
            :dropped,
            :completed,
            :fully_completed,
            :not_applicable,
            :paused
          ]
        )
        .backed_by_column_of_type(:integer)
    end
  end

  describe "Associations" do
    it { should belong_to(:game) }
    it { should belong_to(:user) }
    it { should have_many(:game_purchase_platforms) }
    it { should have_many(:platforms).through(:game_purchase_platforms).source(:platform) }
  end

  describe 'Destructions' do
    let(:game) { create(:game) }
    let(:user) { create(:confirmed_user) }
    let(:game_purchase) { create(:game_purchase, user: user, game: game) }
    let(:game_purchase_platform) { create(:game_purchase_platform) }
    let(:game_purchase_with_platform) { create(:game_purchase, game_purchase_platforms: [game_purchase_platform]) }

    it 'User should not be deleted when game purchase is deleted' do
      game_purchase
      expect { game_purchase.destroy }.to change(User, :count).by(0)
    end

    it 'Game should not be deleted when game purchase is deleted' do
      game_purchase
      expect { game_purchase.destroy }.to change(Game, :count).by(0)
    end

    it 'Platform should not be deleted when game purchase is deleted' do
      game_purchase_with_platform
      expect { game_purchase_with_platform.destroy }.to change(Platform, :count).by(0)
    end

    it 'GamePurchasePlatform should be deleted when game purchase is deleted' do
      game_purchase_with_platform
      expect { game_purchase_with_platform.destroy }.to change(GamePurchasePlatform, :count).by(-1)
    end
  end
end
