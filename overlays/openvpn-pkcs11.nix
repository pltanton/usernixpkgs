self: super: 

{
  openvpn = super.lib.overrideDerivation super.openvpn (drv: {
    configureFlags = drv.configureFlags ++ ["--enable-pkcs11"];
    patches = [ ./patches/openvpn-2.4.5_bug-538.patch ];
    buildInputs = drv.buildInputs ++ [ self.pkcs11helper ];
  });
}
