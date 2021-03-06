//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_offsets[2];
//   float4 g_weights;
//   sampler2D s0;
//
//
// Registers:
//
//   Name         Reg   Size
//   ------------ ----- ----
//   g_offsets    c150     2
//   g_weights    c166     1
//   s0           s0       1
//

    ps_3_0
    dcl_texcoord v0.xy
    dcl_2d s0
    add r0, c150, v0.xyxy
    texld r1, r0.zwzw, s0
    texld r0, r0, s0
    mul r1, r1, c166.y
    mad r0, r0, c166.x, r1
    add r1.xy, c151, v0
    texld r1, r1, s0
    mad_pp oC0, r1, c166.z, r0

// approximately 8 instruction slots used (3 texture, 5 arithmetic)
