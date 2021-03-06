//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   sampler2D g_FramebufferSampler;
//   float4 g_GIModeParam;
//   float4 g_ViewportSize;
//   float4 mrgGlobalLight_Diffuse;
//   sampler2D s0;
//   sampler2D sampDLScatter;
//
//
// Registers:
//
//   Name                   Reg   Size
//   ---------------------- ----- ----
//   g_ViewportSize         c24      1
//   mrgGlobalLight_Diffuse c36      1
//   g_GIModeParam          c69      1
//   s0                     s0       1
//   sampDLScatter          s9       1
//   g_FramebufferSampler   s11      1
//

    ps_3_0
    def c0, -0.5, 0.5, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xy
    dcl_color_pp v2
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s9
    dcl_2d s11
    texld_pp r0, v0, s0
    add_pp r1, r0.w, c0.x
    texkill r1
    add r1.xy, c0.y, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    mad_pp r2.xyz, c36, v2.w, v2
    mul_pp r0.xyz, r0, r2
    mov_pp oC0.w, r0.w
    texld_pp r2, v1.yxzw, s9
    mad_pp r0.xyz, r0, r2.w, r2
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v1.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 14 instruction slots used (3 texture, 11 arithmetic)
