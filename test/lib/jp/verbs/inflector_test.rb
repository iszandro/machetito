# frozen_string_literal: true

require 'test_helper'

module JP
  module Verbs
    class InflectorTest < ActiveSupport::TestCase
      #  Group 1
      def test_dictionary_to_masu_verbs
        assert_equal 'あいます', described_class.masu('あう', 1)
        assert_equal 'あそびます', described_class.masu('あそぶ', 1)
        assert_equal 'あらいます', described_class.masu('あらう', 1)
        assert_equal 'あります', described_class.masu('ある', 1)
        assert_equal 'あるきます', described_class.masu('あるく', 1)
        assert_equal 'いいます', described_class.masu('いう', 1)
        assert_equal 'いきます', described_class.masu('いく', 1)
        assert_equal 'いそぎます', described_class.masu('いそぐ', 1)
        assert_equal 'いります', described_class.masu('いる', 1)
        assert_equal 'うごきます', described_class.masu('うごく', 1)
        assert_equal 'おします', described_class.masu('おす', 1)
        assert_equal 'おもいだします', described_class.masu('おもいだす', 1)
        assert_equal 'およぎます', described_class.masu('およぐ', 1)
        assert_equal 'かちます', described_class.masu('かつ', 1)
        assert_equal 'すみます', described_class.masu('すむ', 1)
      end

      def test_dictionary_to_te_verbs
        assert_equal 'あって', described_class.te('あう', 1)
        assert_equal 'あそんで', described_class.te('あそぶ', 1)
        assert_equal 'あらって', described_class.te('あらう', 1)
        assert_equal 'あって', described_class.te('ある', 1)
        assert_equal 'あるいて', described_class.te('あるく', 1)
        assert_equal 'いって', described_class.te('いう', 1)
        assert_equal 'いって', described_class.te('いく', 1)
        assert_equal 'いそいで', described_class.te('いそぐ', 1)
        assert_equal 'いって', described_class.te('いる', 1)
        assert_equal 'うごいて', described_class.te('うごく', 1)
        assert_equal 'おして', described_class.te('おす', 1)
        assert_equal 'おもいだして', described_class.te('おもいだす', 1)
        assert_equal 'およいで', described_class.te('およぐ', 1)
        assert_equal 'かって', described_class.te('かつ', 1)
        assert_equal 'すんで', described_class.te('すむ', 1)
        assert_equal 'しって', described_class.te('しる', 1)
      end

      def test_dictionary_to_ta_verbs
        assert_equal 'あった', described_class.ta('あう', 1)
        assert_equal 'あそんだ', described_class.ta('あそぶ', 1)
        assert_equal 'あらった', described_class.ta('あらう', 1)
        assert_equal 'あった', described_class.ta('ある', 1)
        assert_equal 'あるいた', described_class.ta('あるく', 1)
        assert_equal 'いった', described_class.ta('いう', 1)
        assert_equal 'いった', described_class.ta('いく', 1)
        assert_equal 'いそいだ', described_class.ta('いそぐ', 1)
        assert_equal 'いった', described_class.ta('いる', 1)
        assert_equal 'うごいた', described_class.ta('うごく', 1)
        assert_equal 'おした', described_class.ta('おす', 1)
        assert_equal 'おもいだした', described_class.ta('おもいだす', 1)
        assert_equal 'およいだ', described_class.ta('およぐ', 1)
        assert_equal 'かった', described_class.ta('かつ', 1)
        assert_equal 'すんだ', described_class.ta('すむ', 1)
        assert_equal 'しった', described_class.ta('しる', 1)
      end

      def test_dictionary_to_nai_verbs
        assert_equal 'あわない', described_class.nai('あう', 1)
        assert_equal 'あそばない', described_class.nai('あそぶ', 1)
        assert_equal 'あらわない', described_class.nai('あらう', 1)
        assert_equal 'ない', described_class.nai('ある', 1)
        assert_equal 'あるかない', described_class.nai('あるく', 1)
        assert_equal 'いわない', described_class.nai('いう', 1)
        assert_equal 'いかない', described_class.nai('いく', 1)
        assert_equal 'いそがない', described_class.nai('いそぐ', 1)
        assert_equal 'いらない', described_class.nai('いる', 1)
        assert_equal 'うごかない', described_class.nai('うごく', 1)
        assert_equal 'おさない', described_class.nai('おす', 1)
        assert_equal 'おもいださない', described_class.nai('おもいだす', 1)
        assert_equal 'およがない', described_class.nai('およぐ', 1)
        assert_equal 'かたない', described_class.nai('かつ', 1)
        assert_equal 'すまない', described_class.nai('すむ', 1)
        assert_equal 'しらない', described_class.nai('しる', 1)
      end

      private

      def described_class
        JP::Verbs::Inflector
      end
    end
  end
end
