self: super:
{
  haskellPackages = with self.haskell.lib; super.haskellPackages.extend (hself: hsuper: {
    gi-atk = hself.gi-atk_2_0_22;
    gi-cairo = hself.gi-cairo_1_0_24;
    gi-cairo-render = overrideCabal (hsuper.gi-cairo-render) (drv: {
      src = self.fetchFromGitHub {
        owner = "thestr4ng3r";
        repo = "gi-cairo-render";
        rev = "8727c43cdf91aeedffc9cb4c5575f56660a86399";
        sha256 = "16kqh2ck0dad1l4m6q9xs5jqj9q0vgpqrzb2dc90jk8xwslmmhxd";
      };
      editedCabalFile = null;
      postUnpack = ''
        mv source all
        mv all/gi-cairo-render source
      '';
    });
    gi-dbusmenu = hself.gi-dbusmenu_0_4_8;
    gi-dbusmenugtk3 = hself.gi-dbusmenugtk3_0_4_9;
    gi-gdk = overrideSrc hsuper.gi-gdk {
      src = self.fetchurl {
        url = "https://hackage.haskell.org/package/gi-gdk-3.0.23/gi-gdk-3.0.23.tar.gz";
        sha256 = "18v3kb6kmryymmrz0d88nf25priwyh3yzh7raghc5ph2rv7n4w8m";
      };
      version = "3.0.23";
    };
    gi-gdkpixbuf = hself.gi-gdkpixbuf_2_0_24;
    gi-gdkx11 = overrideSrc hsuper.gi-gdkx11 {
      src = self.fetchurl {
        url = "https://hackage.haskell.org/package/gi-gdkx11-3.0.10/gi-gdkx11-3.0.10.tar.gz";
        sha256 = "0kfn4l5jqhllz514zw5cxf7181ybb5c11r680nwhr99b97yy0q9f";
      };
      version = "3.0.10";
    };
    gi-gio = hself.gi-gio_2_0_27;
    gi-glib = hself.gi-glib_2_0_24;
    gi-gobject = hself.gi-gobject_2_0_24;
    gi-gtk = overrideSrc hsuper.gi-gtk {
      src = self.fetchurl {
        url = "https://hackage.haskell.org/package/gi-gtk-3.0.36/gi-gtk-3.0.36.tar.gz";
        sha256 = "0bzb3xrax5k5r5fd6vv4by6hprmk77qrqr9mqn3dxqm6an8jwjn9";
      };
      version = "3.0.36";
    };
    gi-gtk-hs = hself.gi-gtk-hs_0_3_9;
    gi-harfbuzz = markUnbroken hsuper.gi-harfbuzz;
    gi-pango = hself.gi-pango_1_0_23;
    gi-xlib = hself.gi-xlib_2_0_9;
    haskell-gi = hself.haskell-gi_0_24_3;
    haskell-gi-base = addBuildDepend hself.haskell-gi-base_0_24_2 self.gobject-introspection;
    taffybar = appendPatch hsuper.taffybar (self.fetchpatch {
      url = "https://github.com/taffybar/taffybar/pull/494/commits/a7443324a549617f04d49c6dfeaf53f945dc2b98.patch";
      sha256 = "0prskimfpapgncwc8si51lf0zxkkdghn33y3ysjky9a82dsbhcqi";
    });
  });
}
