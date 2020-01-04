# frozen_string_literal: true

require 'test_helper'

module JP
  module Verbs
    class G3Test < ActiveSupport::TestCase
      def test_dictionary_to_polite_verbs
        assert_equal 'きます', described_class.polite('くる')
        assert_equal 'します', described_class.polite('する')
        assert_equal 'べんきょうします', described_class.polite('べんきょうする')
        assert_equal 'うんてんします', described_class.polite('うんてんする')
        assert_equal 'もってきます', described_class.polite('もってくる')
      end

      def test_dictionary_to_negative_verbs
        assert_equal 'こない', described_class.negative('くる')
        assert_equal 'しない', described_class.negative('する')
        assert_equal 'べんきょうしない', described_class.negative('べんきょうする')
        assert_equal 'うんてんしない', described_class.negative('うんてんする')
        assert_equal 'もってこない', described_class.negative('もってくる')
      end

      def test_dictionary_to_negative_polite_verbs
        assert_equal 'きません', described_class.negative_polite('くる')
        assert_equal 'しません', described_class.negative_polite('する')
        assert_equal 'べんきょうしません', described_class.negative_polite('べんきょうする')
        assert_equal 'うんてんしません', described_class.negative_polite('うんてんする')
        assert_equal 'もってきません', described_class.negative_polite('もってくる')
      end

      def test_polite_to_dictionary_verbs
        assert_equal 'くる', described_class.dictionary('きます')
        assert_equal 'する', described_class.dictionary('します')
        assert_equal 'べんきょうする', described_class.dictionary('べんきょうします')
        assert_equal 'うんてんする', described_class.dictionary('うんてんします')
        assert_equal 'もってくる', described_class.dictionary('もってきます')
      end

      def test_dictionary_to_past_verbs
        assert_equal 'きた', described_class.past('くる')
        assert_equal 'した', described_class.past('する')
        assert_equal 'べんきょうした', described_class.past('べんきょうする')
        assert_equal 'うんてんした', described_class.past('うんてんする')
        assert_equal 'もってきた', described_class.past('もってくる')
      end

      def test_dictionary_to_past_negative_verbs
        assert_equal 'こなかった', described_class.past_negative('くる')
        assert_equal 'しなかった', described_class.past_negative('する')
        assert_equal 'べんきょうしなかった', described_class.past_negative('べんきょうする')
        assert_equal 'うんてんしなかった', described_class.past_negative('うんてんする')
      end

      def test_dictionary_to_past_polite_verbs
        assert_equal 'きました', described_class.past_polite('くる')
        assert_equal 'しました', described_class.past_polite('する')
        assert_equal 'べんきょうしました', described_class.past_polite('べんきょうする')
        assert_equal 'うんてんしました', described_class.past_polite('うんてんする')
      end

      def test_dictionary_to_past_polite_negative_verbs
        assert_equal 'きませんでした', described_class.past_polite_negative('くる')
        assert_equal 'しませんでした', described_class.past_polite_negative('する')
        assert_equal 'べんきょうしませんでした', described_class.past_polite_negative('べんきょうする')
        assert_equal 'うんてんしませんでした', described_class.past_polite_negative('うんてんする')
      end

      def test_dictionary_to_potential_verbs
        assert_equal 'こられる', described_class.potential('くる')
        assert_equal 'できる', described_class.potential('する')
        assert_equal 'べんきょうできる', described_class.potential('べんきょうする')
        assert_equal 'うんてんできる', described_class.potential('うんてんする')
      end

      def test_dictionary_to_potential_negative_verbs
        assert_equal 'こられない', described_class.potential_negative('くる')
        assert_equal 'できない', described_class.potential_negative('する')
        assert_equal 'べんきょうできない', described_class.potential_negative('べんきょうする')
        assert_equal 'うんてんできない', described_class.potential_negative('うんてんする')
      end

      def test_dictionary_to_potential_polite_verbs
        assert_equal 'こられます', described_class.potential_polite('くる')
        assert_equal 'できます', described_class.potential_polite('する')
        assert_equal 'べんきょうできます', described_class.potential_polite('べんきょうする')
        assert_equal 'うんてんできます', described_class.potential_polite('うんてんする')
      end

      def test_dictionary_to_potential_polite_negative_verbs
        assert_equal 'こられません', described_class.potential_polite_negative('くる')
        assert_equal 'できません', described_class.potential_polite_negative('する')
        assert_equal 'べんきょうできません', described_class.potential_polite_negative('べんきょうする')
        assert_equal 'うんてんできません', described_class.potential_polite_negative('うんてんする')
      end

      def test_dictionary_to_te_verbs
        assert_equal 'きて', described_class.te('くる')
        assert_equal 'して', described_class.te('する')
        assert_equal 'べんきょうして', described_class.te('べんきょうする')
        assert_equal 'うんてんして', described_class.te('うんてんする')
        assert_equal 'もってきて', described_class.te('もってくる')
      end

      private

      def described_class
        JP::Verbs::G3
      end
    end
  end
end
