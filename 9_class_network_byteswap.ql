import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap() {
    exists(MacroInvocation mc | this = mc.getExpr() and mc.getMacroName().regexpMatch("ntoh.*"))
  }
}

from NetworkByteSwap n
select n, "Network byte swap"
