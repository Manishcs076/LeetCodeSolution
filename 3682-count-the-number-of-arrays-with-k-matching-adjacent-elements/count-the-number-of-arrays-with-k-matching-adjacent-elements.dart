class Solution {
    static const int MOD = 1000000007;
  int countGoodArrays(int n, int m, int k) {
        List<int> fact = List.filled(n, 1);
    List<int> invFact = List.filled(n, 1);


    for (int i = 1; i < n; i++) {
      fact[i] = (fact[i - 1] * i) % MOD;
    }
    invFact[n - 1] = modInverse(fact[n - 1]);
    for (int i = n - 2; i >= 0; i--) {
      invFact[i] = (invFact[i + 1] * (i + 1)) % MOD;
    }

    int comb = (((fact[n - 1] * invFact[k]) % MOD) * invFact[n - 1 - k]) % MOD;
    int pow = modPow(m - 1, n - 1 - k);
    return (((m * comb) % MOD) * pow) % MOD;
  }

  int modPow(int base, int exp) {
    int result = 1;
    base %= MOD;
    while (exp > 0) {
      if (exp % 2 == 1) {
        result = (result * base) % MOD;
      }
      base = (base * base) % MOD;
      exp ~/= 2;
    }
    return result;
  }

  int modInverse(int x) {
    return modPow(x, MOD - 2);
  }
}