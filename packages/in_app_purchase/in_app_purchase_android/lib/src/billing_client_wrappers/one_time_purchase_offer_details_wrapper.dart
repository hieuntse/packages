// Copyright 2013 The Flutter Authors
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';

/// Dart wrapper around [`com.android.billingclient.api.ProductDetails.OneTimePurchaseOfferDetails`](https://developer.android.com/reference/com/android/billingclient/api/ProductDetails.OneTimePurchaseOfferDetails).
///
/// Represents the offer details to buy a one-time purchase product.
@immutable
class OneTimePurchaseOfferDetailsWrapper {
  /// Creates a [OneTimePurchaseOfferDetailsWrapper].
  const OneTimePurchaseOfferDetailsWrapper({
    required this.formattedPrice,
    this.offerToken,
    this.micros,
    this.offerId,
    required this.priceAmountMicros,
    required this.priceCurrencyCode,
  });

  /// Formatted price for the payment, including its currency sign.
  ///
  /// For tax exclusive countries, the price doesn't include tax.
  final String formattedPrice;

  /// The price for the payment in micro-units, where 1,000,000 micro-units
  /// equal one unit of the currency.
  ///
  /// For example, if price is "€7.99", price_amount_micros is "7990000". This
  /// value represents the localized, rounded price for a particular currency.
  final int priceAmountMicros;

  /// The ISO 4217 currency code for price.
  ///
  /// For example, if price is specified in British pounds sterling, currency
  /// code is "GBP".
  final String priceCurrencyCode;

final String? offerToken;
final int? micros;
final String? offerId;

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }

    return other is OneTimePurchaseOfferDetailsWrapper &&
        other.formattedPrice == formattedPrice &&
        other.priceAmountMicros == priceAmountMicros &&
        other.priceCurrencyCode == priceCurrencyCode &&
        other.offerToken == offerToken &&
        other.micros == micros &&
        other.offerId == offerId;
  }

  @override
  int get hashCode {
    return Object.hash(
      formattedPrice.hashCode,
      priceAmountMicros.hashCode,
      priceCurrencyCode.hashCode,
      offerToken.hashCode,
      micros.hashCode,
      offerId.hashCode,
    );
  }
}
