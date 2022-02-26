pragma Ada_2012;

generic
   type Element is mod <>;
   type Index is range <>;
   type Element_Array is array (Index range <>) of aliased Element;
package Fastpbkdf2_Generic with
   Pure,
   Preelaborate
is
   pragma Compile_Time_Error
     (Element'Modulus /= 256,
      "'Element' type must be mod 2**8, i.e. represent a byte");

    procedure HMAC_SHA1(Password : Element_Array; Salt : Element_Array; Iterations : Natural; Output : out Element_Array);
    function HMAC_SHA1(Password : Element_Array; Salt : Element_Array; Iterations : Natural) return Element_Array;

    procedure HMAC_SHA256(Password : Element_Array; Salt : Element_Array; Iterations : Natural; Output : out Element_Array);
    function HMAC_SHA256(Password : Element_Array; Salt : Element_Array; Iterations : Natural) return Element_Array;

    procedure HMAC_SHA512(Password : Element_Array; Salt : Element_Array; Iterations : Natural; Output : out Element_Array);
    function HMAC_SHA512(Password : Element_Array; Salt : Element_Array; Iterations : Natural) return Element_Array;
end Fastpbkdf2_Generic;
