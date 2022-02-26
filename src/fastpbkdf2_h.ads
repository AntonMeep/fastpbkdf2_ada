pragma Ada_2012;

with Interfaces; use Interfaces;

with fastpbkdf2_h_generic;

package fastpbkdf2_h is new fastpbkdf2_h_generic(Unsigned_8, Unsigned_32);
