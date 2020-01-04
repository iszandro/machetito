# frozen_string_literal: true

require 'test_helper'

module JP
  module Verbs
    class G2Test < ActiveSupport::TestCase
      def test_dictionary_to_polite_verbs
        assert_equal 'あけます', described_class.polite('あける')
        assert_equal 'います', described_class.polite('いる')
        assert_equal 'いれます', described_class.polite('いれる')
        assert_equal 'きます', described_class.polite('きる')
        assert_equal 'みます', described_class.polite('みる')
        assert_equal 'きをつけます', described_class.polite('きをつける')
      end

      def test_dictionary_to_negative_verbs
        assert_equal 'あけない', described_class.negative('あける')
        assert_equal 'いない', described_class.negative('いる')
        assert_equal 'いれない', described_class.negative('いれる')
        assert_equal 'きない', described_class.negative('きる')
        assert_equal 'みない', described_class.negative('みる')
        assert_equal 'きをつけない', described_class.negative('きをつける')
      end

      def test_dictionary_to_negative_polite_verbs
        assert_equal 'あけません', described_class.negative_polite('あける')
        assert_equal 'いません', described_class.negative_polite('いる')
        assert_equal 'いれません', described_class.negative_polite('いれる')
        assert_equal 'きません', described_class.negative_polite('きる')
        assert_equal 'きをつけません', described_class.negative_polite('きをつける')
      end

      def test_polite_to_dictionary_verbs
        assert_equal 'あける', described_class.dictionary('あけます')
        assert_equal 'いる', described_class.dictionary('います')
        assert_equal 'いれる', described_class.dictionary('いれます')
        assert_equal 'きる', described_class.dictionary('きます')
        assert_equal 'きをつける', described_class.dictionary('きをつけます')
      end

      def test_negative_to_dictionary_verbs
        assert_equal 'あける', described_class.dictionary('あけない')
        assert_equal 'いる', described_class.dictionary('いない')
        assert_equal 'いれる', described_class.dictionary('いれない')
        assert_equal 'きる', described_class.dictionary('きない')
        assert_equal 'きをつける', described_class.dictionary('きをつけない')
      end

      def test_dictionary_to_past_verbs
        assert_equal 'あけた', described_class.past('あける')
        assert_equal 'いた', described_class.past('いる')
        assert_equal 'いれた', described_class.past('いれる')
        assert_equal 'きた', described_class.past('きる')
        assert_equal 'きをつけた', described_class.past('きをつける')
      end

      def test_dictionary_to_past_negative_verbs
        assert_equal 'あけなかった', described_class.past_negative('あける')
        assert_equal 'いなかった', described_class.past_negative('いる')
        assert_equal 'いれなかった', described_class.past_negative('いれる')
        assert_equal 'きなかった', described_class.past_negative('きる')
        assert_equal 'きをつけなかった', described_class.past_negative('きをつける')
      end

      def test_dictionary_to_past_polite_verbs
        assert_equal 'あけました', described_class.past_polite('あける')
        assert_equal 'いました', described_class.past_polite('いる')
        assert_equal 'いれました', described_class.past_polite('いれる')
        assert_equal 'きました', described_class.past_polite('きる')
        assert_equal 'きをつけました', described_class.past_polite('きをつける')
      end

      def test_dictionary_to_past_polite_negative_verbs
        assert_equal 'あけませんでした', described_class.past_polite_negative('あける')
        assert_equal 'いませんでした', described_class.past_polite_negative('いる')
        assert_equal 'いれませんでした', described_class.past_polite_negative('いれる')
        assert_equal 'きませんでした', described_class.past_polite_negative('きる')
        assert_equal 'きをつけませんでした', described_class.past_polite_negative('きをつける')
      end

      def test_dictionary_to_potential_verbs
        assert_equal 'あけられる', described_class.potential('あける')
        assert_equal 'いられる', described_class.potential('いる')
        assert_equal 'いれられる', described_class.potential('いれる')
        assert_equal 'きられる', described_class.potential('きる')
        assert_equal 'きをつけられる', described_class.potential('きをつける')
      end

      def test_dictionary_to_potential_negative_verbs
        assert_equal 'あけられない', described_class.potential_negative('あける')
        assert_equal 'いられない', described_class.potential_negative('いる')
        assert_equal 'いれられない', described_class.potential_negative('いれる')
        assert_equal 'きられない', described_class.potential_negative('きる')
        assert_equal 'きをつけられない', described_class.potential_negative('きをつける')
      end

      def test_dictionary_to_potential_polite_verbs
        assert_equal 'あけられます', described_class.potential_polite('あける')
        assert_equal 'いられます', described_class.potential_polite('いる')
        assert_equal 'いれられます', described_class.potential_polite('いれる')
        assert_equal 'きられます', described_class.potential_polite('きる')
        assert_equal 'きをつけられます', described_class.potential_polite('きをつける')
      end

      def test_dictionary_to_potential_polite_negative_verbs
        assert_equal 'あけられません', described_class.potential_polite_negative('あける')
        assert_equal 'いられません', described_class.potential_polite_negative('いる')
        assert_equal 'いれられません', described_class.potential_polite_negative('いれる')
        assert_equal 'きられません', described_class.potential_polite_negative('きる')
        assert_equal 'きをつけられません', described_class.potential_polite_negative('きをつける')
      end

      def test_dictionary_to_te_verbs
        assert_equal 'あけて', described_class.te('あける')
        assert_equal 'いて', described_class.te('いる')
        assert_equal 'いれて', described_class.te('いれる')
        assert_equal 'きて', described_class.te('きる')
        assert_equal 'きをつけて', described_class.te('きをつける')
      end

      private

      def described_class
        JP::Verbs::G2
      end
    end
  end
end
