class cuentaBancaria {
  double _saldo;
  cuentaBancaria(this._saldo);
  void depositar(double deposito) {
    _saldo += deposito;
  }

  double obtenerSaldo() {
    return _saldo;
  }
}
