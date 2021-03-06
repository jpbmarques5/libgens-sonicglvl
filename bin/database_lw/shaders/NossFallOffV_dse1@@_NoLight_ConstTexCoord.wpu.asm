//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_GISampler;
//   row_major float4x4 g_MtxView;
//   float4 g_PowerGlossLevel;
//   float4 g_SonicSkinFalloffParam;
//   float4 g_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampSpe;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   g_Specular               c18      1
//   g_PowerGlossLevel        c20      1
//   g_EyePosition            c22      1
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_MtxView                c90      3
//   g_SonicSkinFalloffParam  c150     1
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampEnv                  s5       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//

    ps_3_0
    def c0, 10, 4, 0.5, -0.5
    def c1, 1, 0, 0, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5 v3.xy
    dcl_color_pp v4
    dcl_2d s0
    dcl_2d s1
    dcl_2d s5
    dcl_2d s9
    dcl_2d s10
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v4.w
    nrm_pp r1.xyz, v2
    mul r2, r1.y, c91
    mad r2, r1.x, c90, r2
    mad r2, r1.z, c92, r2
    dp4 r0.w, r2, r2
    rsq r0.w, r0.w
    mul r2.xy, r0.w, r2
    mad_pp r2.xy, r2, c0.zwzw, c0.z
    texld_pp r2, r2, s5
    texld r3, v0, s1
    mul r0.w, r3.w, c63.x
    mul r0.w, r0.w, c64.z
    mul_pp r2.xyz, r0.w, r2
    mov r4.x, c0.x
    mul_pp r0.w, r4.x, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c0.y
    add_pp r4.xyz, c22, -v1
    dp3_pp r1.w, r4, r4
    rsq_pp r1.w, r1.w
    mad_pp r5.xyz, r4, r1.w, -c10
    mul_pp r4.xyz, r1.w, r4
    dp3_pp r1.w, r1, r4
    nrm_pp r4.xyz, r5
    dp3_sat_pp r2.w, r4, r1
    dp3_sat_pp r1.x, r1, -c10
    pow_pp r1.y, r2.w, r0.w
    texld r4, v0.zwzw, s10
    mul_pp r0.w, r4.w, c20.z
    mul_pp r0.w, r1.y, r0.w
    mul_pp r5.xyz, r0.w, c37
    mad_pp r2.xyz, r5, c18, r2
    mul_pp r2.xyz, r3, r2
    mul_pp r2.xyz, r2, v2.w
    mul r0.w, r1.x, r4.w
    mul_pp r1.xyz, r4, r4
    mul_pp r3.xyz, r0.w, c36
    mad_pp r1.xyz, r1, c17, r3
    mul_pp r1.xyz, r1, c16
    mad_pp r0.xyz, r1, r0, r2
    mov_pp r0.w, c150.w
    add_pp r0.w, r0.w, c1.x
    add_sat_pp r0.w, -r1.w, r0.w
    pow_pp r1.x, r0.w, c150.z
    mad_pp r0.w, c150.y, r1.x, c150.x
    mul_pp r1.xyz, r0.w, v4
    mad_pp r0.xyz, r1, c64.w, r0
    texld_pp r1, v3.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 60 instruction slots used (5 texture, 55 arithmetic)
