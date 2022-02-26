pragma Ada_2012;

with Interfaces.C; use Interfaces.C;

generic
   type U8 is mod <>;
   type U32 is mod <>;
package fastpbkdf2_h_generic with
   Pure,
   Preelaborate
is
   pragma Compile_Time_Error (U8'Modulus /= 256, "'U8' type must be mod 2**8");
   pragma Compile_Time_Error
     (U32'Modulus /= 4_294_967_296, "'U32' type must be mod 2**32");

   procedure fastpbkdf2_hmac_sha1
     (pw    : access constant U8; npw : size_t; salt : access constant U8;
      nsalt : size_t; iterations : U32; c_out : access U8; nout : size_t) with
      Import        => True,
      Convention    => C,
      External_Name => "fastpbkdf2_hmac_sha1";

   procedure fastpbkdf2_hmac_sha256
     (pw    : access constant U8; npw : size_t; salt : access constant U8;
      nsalt : size_t; iterations : U32; c_out : access U8; nout : size_t) with
      Import        => True,
      Convention    => C,
      External_Name => "fastpbkdf2_hmac_sha256";

   procedure fastpbkdf2_hmac_sha512
     (pw    : access constant U8; npw : size_t; salt : access constant U8;
      nsalt : size_t; iterations : U32; c_out : access U8; nout : size_t) with
      Import        => True,
      Convention    => C,
      External_Name => "fastpbkdf2_hmac_sha512";
end fastpbkdf2_h_generic;
