/**
 * Copyright (c) 2018 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
 * distribute, sublicense, create a derivative work, and/or sell copies of the
 * Software in any work that is designed, intended, or marketed for pedagogical or
 * instructional purposes related to programming, coding, application development,
 * or information technology.  Permission for such use, copying, modification,
 * merger, publication, distribution, sublicensing, creation of derivative works,
 * or sale is expressly withheld.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import Foundation

struct MorseData {
  // String representation of each morse signal
  enum Signal: String {
    case dot = "."
    case dash = "-"
    case unknown = "?"
    case a = "a"
    case b = "b"
    case c = "c"
    case d = "d"
    case e = "e"
    case f = "f"
    case g = "g"
    case h = "h"
    case i = "i"
    case j = "j"
    case k = "k"
    case l = "l"
    case m = "m"
    case n = "n"
    case o = "o"
    case p = "p"
    case r = "r"
    case s = "s"
    case t = "t"
    case u = "u"
    case w = "w"
    case y = "y"
    case z = "z"
    
    //you need to add additional cases here to cover for different letters
    // once this is done
  }

  // Letter to morse signal dictionary
  static var code: [String: [Signal]] = [
    "a": [.a],
    "b": [.b],
    "c": [.c],
    "d": [.d],
    "e": [.e],
    "f": [.f],
    "g": [.f],
    "h": [.h],
    "i": [.i],
    "j": [.j],
    "k": [.k],
    "l": [.l],
    "m": [.m],
    "n": [.n],
    "o": [.o],
    "p": [.p],
    "q": [.dash,.dash,.dot,.dash],
    "r": [.r],
    "s": [.s],
    "t": [.t],
    "u": [.u],
    "v": [.dot],
    "w": [.w],
    "x": [.dot,.dot],
    "y": [.y],
    "z": [.z],
    "1": [.dot,.dash,.dash,.dash,.dash],
    "2": [.dot,.dot,.dash,.dash,.dash],
    "3": [.dot,.dot,.dot,.dash,.dash],
    "4": [.dot,.dot,.dot,.dot,.dash],
    "5": [.dot,.dot,.dot,.dot,.dot],
    "6": [.dash,.dot,.dot,.dot,.dot],
    "7": [.dash,.dash,.dot,.dot,.dot],
    "8": [.dash,.dash,.dash,.dot,.dot],
    "9": [.dash,.dash,.dash,.dash,.dot],
    "0": [.dash,.dash,.dash,.dash,.dash]
  ]

  /// Converts an array of signals into the associated letter if it exists
  static func letter(fromSignals signals: [Signal]) -> String? {
    return code.filter {
      $0.value == signals
      }.map {
        $0.key
      }.first
  }
}
