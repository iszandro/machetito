# frozen_string_literal: true

require 'test_helper'

module JP
  module Verbs
    class G1Test < ActiveSupport::TestCase
      def test_dictionary_to_polite_verbs
        assert_equal 'あいます', described_class.polite('あう')
        assert_equal 'あそびます', described_class.polite('あそぶ')
        assert_equal 'あらいます', described_class.polite('あらう')
        assert_equal 'あります', described_class.polite('ある')
        assert_equal 'あるきます', described_class.polite('あるく')
        assert_equal 'いいます', described_class.polite('いう')
        assert_equal 'いきます', described_class.polite('いく')
        assert_equal 'いそぎます', described_class.polite('いそぐ')
        assert_equal 'いります', described_class.polite('いる')
        assert_equal 'うごきます', described_class.polite('うごく')
        assert_equal 'おします', described_class.polite('おす')
        assert_equal 'おもいだします', described_class.polite('おもいだす')
        assert_equal 'およぎます', described_class.polite('およぐ')
        assert_equal 'かちます', described_class.polite('かつ')
        assert_equal 'すみます', described_class.polite('すむ')
        assert_equal 'しります', described_class.polite('しる')
      end

      def test_dictionary_to_negative_verbs
        assert_equal 'あわない', described_class.negative('あう')
        assert_equal 'あそばない', described_class.negative('あそぶ')
        assert_equal 'あらわない', described_class.negative('あらう')
        assert_equal 'ない', described_class.negative('ある')
        assert_equal 'あるかない', described_class.negative('あるく')
        assert_equal 'いわない', described_class.negative('いう')
        assert_equal 'いかない', described_class.negative('いく')
        assert_equal 'いそがない', described_class.negative('いそぐ')
        assert_equal 'いらない', described_class.negative('いる')
        assert_equal 'うごかない', described_class.negative('うごく')
        assert_equal 'おさない', described_class.negative('おす')
        assert_equal 'おもいださない', described_class.negative('おもいだす')
        assert_equal 'およがない', described_class.negative('およぐ')
        assert_equal 'かたない', described_class.negative('かつ')
        assert_equal 'すまない', described_class.negative('すむ')
        assert_equal 'しらない', described_class.negative('しる')
      end

      def test_dictionary_to_negative_polite_verbs
        assert_equal 'あいません', described_class.negative_polite('あう')
        assert_equal 'あそびません', described_class.negative_polite('あそぶ')
        assert_equal 'あらいません', described_class.negative_polite('あらう')
        assert_equal 'ありません', described_class.negative_polite('ある')
        assert_equal 'あるきません', described_class.negative_polite('あるく')
        assert_equal 'いいません', described_class.negative_polite('いう')
        assert_equal 'いきません', described_class.negative_polite('いく')
        assert_equal 'いそぎません', described_class.negative_polite('いそぐ')
        assert_equal 'いりません', described_class.negative_polite('いる')
        assert_equal 'うごきません', described_class.negative_polite('うごく')
        assert_equal 'おしません', described_class.negative_polite('おす')
        assert_equal 'おもいだしません', described_class.negative_polite('おもいだす')
        assert_equal 'およぎません', described_class.negative_polite('およぐ')
        assert_equal 'かちません', described_class.negative_polite('かつ')
        assert_equal 'すみません', described_class.negative_polite('すむ')
        assert_equal 'しりません', described_class.negative_polite('しる')
      end

      def test_polite_to_dictionary_verbs
        assert_equal 'あう', described_class.dictionary('あいます')
        assert_equal 'あそぶ', described_class.dictionary('あそびます')
        assert_equal 'あらう', described_class.dictionary('あらいます')
        assert_equal 'ある', described_class.dictionary('あります')
        assert_equal 'あるく', described_class.dictionary('あるきます')
        assert_equal 'いう', described_class.dictionary('いいます')
        assert_equal 'いく', described_class.dictionary('いきます')
        assert_equal 'いそぐ', described_class.dictionary('いそぎます')
        assert_equal 'いる', described_class.dictionary('いります')
        assert_equal 'うごく', described_class.dictionary('うごきます')
        assert_equal 'おす', described_class.dictionary('おします')
        assert_equal 'おもいだす', described_class.dictionary('おもいだします')
        assert_equal 'およぐ', described_class.dictionary('およぎます')
        assert_equal 'かつ', described_class.dictionary('かちます')
        assert_equal 'すむ', described_class.dictionary('すみます')
      end

      def test_negative_to_dictionary_verbs
        assert_equal 'あう', described_class.dictionary('あわない')
        assert_equal 'あそぶ', described_class.dictionary('あそばない')
        assert_equal 'あらう', described_class.dictionary('あらわない')
        assert_equal 'ある', described_class.dictionary('ない')
        assert_equal 'あるく', described_class.dictionary('あるかない')
        assert_equal 'いう', described_class.dictionary('いわない')
        assert_equal 'いく', described_class.dictionary('いかない')
        assert_equal 'いそぐ', described_class.dictionary('いそがない')
        assert_equal 'いる', described_class.dictionary('いらない')
        assert_equal 'うごく', described_class.dictionary('うごかない')
        assert_equal 'おす', described_class.dictionary('おさない')
        assert_equal 'おもいだす', described_class.dictionary('おもいださない')
        assert_equal 'およぐ', described_class.dictionary('およがない')
        assert_equal 'かつ', described_class.dictionary('かたない')
        assert_equal 'すむ', described_class.dictionary('すまない')
        assert_equal 'しる', described_class.dictionary('しらない')
      end

      def test_dictionary_to_past_verbs
        assert_equal 'あった', described_class.past('あう')
        assert_equal 'あそんだ', described_class.past('あそぶ')
        assert_equal 'あらった', described_class.past('あらう')
        assert_equal 'あった', described_class.past('ある')
        assert_equal 'あるいた', described_class.past('あるく')
        assert_equal 'いった', described_class.past('いう')
        assert_equal 'いった', described_class.past('いく')
        assert_equal 'いそいだ', described_class.past('いそぐ')
        assert_equal 'いった', described_class.past('いる')
        assert_equal 'うごいた', described_class.past('うごく')
        assert_equal 'おした', described_class.past('おす')
        assert_equal 'おもいだした', described_class.past('おもいだす')
        assert_equal 'およいだ', described_class.past('およぐ')
        assert_equal 'かった', described_class.past('かつ')
        assert_equal 'すんだ', described_class.past('すむ')
        assert_equal 'しった', described_class.past('しる')
      end

      def test_dictionary_to_past_negative_verbs
        assert_equal 'あわなかった', described_class.past_negative('あう')
        assert_equal 'あそばなかった', described_class.past_negative('あそぶ')
        assert_equal 'あらわなかった', described_class.past_negative('あらう')
        assert_equal 'なかった', described_class.past_negative('ある')
        assert_equal 'あるかなかった', described_class.past_negative('あるく')
        assert_equal 'いわなかった', described_class.past_negative('いう')
        assert_equal 'いかなかった', described_class.past_negative('いく')
        assert_equal 'いそがなかった', described_class.past_negative('いそぐ')
        assert_equal 'いらなかった', described_class.past_negative('いる')
        assert_equal 'うごかなかった', described_class.past_negative('うごく')
        assert_equal 'おさなかった', described_class.past_negative('おす')
        assert_equal 'おもいださなかった', described_class.past_negative('おもいだす')
        assert_equal 'およがなかった', described_class.past_negative('およぐ')
        assert_equal 'かたなかった', described_class.past_negative('かつ')
        assert_equal 'すまなかった', described_class.past_negative('すむ')
        assert_equal 'しらなかった', described_class.past_negative('しる')
      end

      def test_dictionary_to_past_polite_verbs
        assert_equal 'あいました', described_class.past_polite('あう')
        assert_equal 'あそびました', described_class.past_polite('あそぶ')
        assert_equal 'あらいました', described_class.past_polite('あらう')
        assert_equal 'ありました', described_class.past_polite('ある')
        assert_equal 'あるきました', described_class.past_polite('あるく')
        assert_equal 'いいました', described_class.past_polite('いう')
        assert_equal 'いきました', described_class.past_polite('いく')
        assert_equal 'いそぎました', described_class.past_polite('いそぐ')
        assert_equal 'いりました', described_class.past_polite('いる')
        assert_equal 'うごきました', described_class.past_polite('うごく')
        assert_equal 'おしました', described_class.past_polite('おす')
        assert_equal 'おもいだしました', described_class.past_polite('おもいだす')
        assert_equal 'およぎました', described_class.past_polite('およぐ')
        assert_equal 'かちました', described_class.past_polite('かつ')
        assert_equal 'すみました', described_class.past_polite('すむ')
        assert_equal 'しりました', described_class.past_polite('しる')
      end

      def test_dictionary_to_past_polite_negative_verbs
        assert_equal 'あいませんでした', described_class.past_polite_negative('あう')
        assert_equal 'あそびませんでした', described_class.past_polite_negative('あそぶ')
        assert_equal 'あらいませんでした', described_class.past_polite_negative('あらう')
        assert_equal 'ありませんでした', described_class.past_polite_negative('ある')
        assert_equal 'あるきませんでした', described_class.past_polite_negative('あるく')
        assert_equal 'いいませんでした', described_class.past_polite_negative('いう')
        assert_equal 'いきませんでした', described_class.past_polite_negative('いく')
        assert_equal 'いそぎませんでした', described_class.past_polite_negative('いそぐ')
        assert_equal 'いりませんでした', described_class.past_polite_negative('いる')
        assert_equal 'うごきませんでした', described_class.past_polite_negative('うごく')
        assert_equal 'おしませんでした', described_class.past_polite_negative('おす')
        assert_equal 'おもいだしませんでした', described_class.past_polite_negative('おもいだす')
        assert_equal 'およぎませんでした', described_class.past_polite_negative('およぐ')
        assert_equal 'かちませんでした', described_class.past_polite_negative('かつ')
        assert_equal 'すみませんでした', described_class.past_polite_negative('すむ')
        assert_equal 'しりませんでした', described_class.past_polite_negative('しる')
      end

      def test_dictionary_to_potential_verbs
        assert_equal 'あえる', described_class.potential('あう')
        assert_equal 'あそべる', described_class.potential('あそぶ')
        assert_equal 'あらえる', described_class.potential('あらう')
        assert_nil described_class.potential('ある')
        assert_equal 'あるける', described_class.potential('あるく')
        assert_equal 'いえる', described_class.potential('いう')
        assert_equal 'いける', described_class.potential('いく')
        assert_equal 'いそげる', described_class.potential('いそぐ')
        assert_equal 'いれる', described_class.potential('いる')
        assert_equal 'うごける', described_class.potential('うごく')
        assert_equal 'おせる', described_class.potential('おす')
        assert_equal 'おもいだせる', described_class.potential('おもいだす')
        assert_equal 'およげる', described_class.potential('およぐ')
        assert_equal 'かてる', described_class.potential('かつ')
        assert_equal 'すめる', described_class.potential('すむ')
        assert_equal 'しれる', described_class.potential('しる')
      end

      def test_dictionary_to_potential_negative_verbs
        assert_equal 'あえない', described_class.potential_negative('あう')
        assert_equal 'あそべない', described_class.potential_negative('あそぶ')
        assert_equal 'あらえない', described_class.potential_negative('あらう')
        assert_nil described_class.potential_negative('ある')
        assert_equal 'あるけない', described_class.potential_negative('あるく')
        assert_equal 'いえない', described_class.potential_negative('いう')
        assert_equal 'いけない', described_class.potential_negative('いく')
        assert_equal 'いそげない', described_class.potential_negative('いそぐ')
        assert_equal 'いれない', described_class.potential_negative('いる')
        assert_equal 'うごけない', described_class.potential_negative('うごく')
        assert_equal 'おせない', described_class.potential_negative('おす')
        assert_equal 'おもいだせない', described_class.potential_negative('おもいだす')
        assert_equal 'およげない', described_class.potential_negative('およぐ')
        assert_equal 'かてない', described_class.potential_negative('かつ')
        assert_equal 'すめない', described_class.potential_negative('すむ')
        assert_equal 'しれない', described_class.potential_negative('しる')
      end

      def test_dictionary_to_potential_polite_verbs
        assert_equal 'あえます', described_class.potential_polite('あう')
        assert_equal 'あそべます', described_class.potential_polite('あそぶ')
        assert_equal 'あらえます', described_class.potential_polite('あらう')
        assert_nil described_class.potential_polite('ある')
        assert_equal 'あるけます', described_class.potential_polite('あるく')
        assert_equal 'いえます', described_class.potential_polite('いう')
        assert_equal 'いけます', described_class.potential_polite('いく')
        assert_equal 'いそげます', described_class.potential_polite('いそぐ')
        assert_equal 'いれます', described_class.potential_polite('いる')
        assert_equal 'うごけます', described_class.potential_polite('うごく')
        assert_equal 'おせます', described_class.potential_polite('おす')
        assert_equal 'おもいだせます', described_class.potential_polite('おもいだす')
        assert_equal 'およげます', described_class.potential_polite('およぐ')
        assert_equal 'かてます', described_class.potential_polite('かつ')
        assert_equal 'すめます', described_class.potential_polite('すむ')
        assert_equal 'しれます', described_class.potential_polite('しる')
      end

      def test_dictionary_to_potential_polite_negative_verbs
        assert_equal 'あえません', described_class.potential_polite_negative('あう')
        assert_equal 'あそべません', described_class.potential_polite_negative('あそぶ')
        assert_equal 'あらえません', described_class.potential_polite_negative('あらう')
        assert_nil described_class.potential_polite_negative('ある')
        assert_equal 'あるけません', described_class.potential_polite_negative('あるく')
        assert_equal 'いえません', described_class.potential_polite_negative('いう')
        assert_equal 'いけません', described_class.potential_polite_negative('いく')
        assert_equal 'いそげません', described_class.potential_polite_negative('いそぐ')
        assert_equal 'いれません', described_class.potential_polite_negative('いる')
        assert_equal 'うごけません', described_class.potential_polite_negative('うごく')
        assert_equal 'おせません', described_class.potential_polite_negative('おす')
        assert_equal 'おもいだせません', described_class.potential_polite_negative('おもいだす')
        assert_equal 'およげません', described_class.potential_polite_negative('およぐ')
        assert_equal 'かてません', described_class.potential_polite_negative('かつ')
        assert_equal 'すめません', described_class.potential_polite_negative('すむ')
        assert_equal 'しれません', described_class.potential_polite_negative('しる')
      end

      def test_dictionary_to_te_verbs
        assert_equal 'あって', described_class.te('あう')
        assert_equal 'あそんで', described_class.te('あそぶ')
        assert_equal 'あらって', described_class.te('あらう')
        assert_equal 'あって', described_class.te('ある')
        assert_equal 'あるいて', described_class.te('あるく')
        assert_equal 'いって', described_class.te('いう')
        assert_equal 'いって', described_class.te('いく')
        assert_equal 'いそいで', described_class.te('いそぐ')
        assert_equal 'いって', described_class.te('いる')
        assert_equal 'うごいて', described_class.te('うごく')
        assert_equal 'おして', described_class.te('おす')
        assert_equal 'おもいだして', described_class.te('おもいだす')
        assert_equal 'およいで', described_class.te('およぐ')
        assert_equal 'かって', described_class.te('かつ')
        assert_equal 'すんで', described_class.te('すむ')
        assert_equal 'しって', described_class.te('しる')
      end

      private

      def described_class
        JP::Verbs::G1
      end
    end
  end
end
