//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   row_major float4x4 g_MtxView;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_aLightField[6];
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
//   g_aLightField            c77      6
//   g_MtxView                c90      3
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampEnv                  s5       1
//   sampDLScatter            s9       1
//

    ps_3_0
    def c0, -1, 1, 0, 0
    def c1, 0.5, 10, 4, -0.5
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5 v3.xy
    dcl_color_pp v4
    dcl_2d s0
    dcl_2d s1
    dcl_2d s5
    dcl_2d s9
    mul r0.x, c64.z, c64.x
    mov r1.xz, c64
    mad r0.y, r1.x, -r1.z, r1.z
    mad_pp r0.x, c77.w, r0.y, r0.x
    texld r1, v0, s1
    mul r0.y, r1.w, c63.x
    mul r0.x, r0.x, r0.y
    nrm_pp r2.xyz, v2
    mul r3, r2.y, c91
    mad r3, r2.x, c90, r3
    mad r3, r2.z, c92, r3
    dp4 r0.y, r3, r3
    rsq r0.y, r0.y
    mul r0.yz, r0.y, r3.xxyw
    mad_pp r0.yz, r0, c1.xxww, c1.x
    texld_pp r3, r0.yzzw, s5
    mul_pp r0.xyz, r0.x, r3
    mov r3.y, c1.y
    mul_pp r0.w, r3.y, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c1.z
    add_pp r3.xyz, c22, -v1
    dp3_pp r1.w, r3, r3
    rsq_pp r1.w, r1.w
    mad_pp r3.xyz, r3, r1.w, -c10
    nrm_pp r4.xyz, r3
    dp3_sat_pp r1.w, r4, r2
    pow_pp r2.w, r1.w, r0.w
    mov r3, c77
    mul_pp r0.w, r3.w, c20.z
    mul_pp r0.w, r2.w, r0.w
    mul_pp r4.xyz, r0.w, c37
    mad_pp r0.xyz, r4, c18, r0
    mul_pp r0.xyz, r1, r0
    mul_pp r0.xyz, r0, v2.w
    mad_pp r1.xyz, r2, c1.x, c1.x
    mov r4.xyz, c80
    mad r4.xyz, r4, r1.y, c79
    mul_pp r5.xyz, r2, r2
    dp3_sat_pp r0.w, r2, -c10
    mul r0.w, r0.w, c77.w
    mul_pp r2.xyz, r0.w, c36
    mul r4.xyz, r4, r5.y
    mad r1.xyw, c78.xyzz, r1.x, r3.xyzz
    mov r3.xyz, c82
    mad r3.xyz, r3, r1.z, c81
    mad_pp r1.xyz, r5.x, r1.xyww, r4
    mad_pp r1.xyz, r5.z, r3, r1
    mad_pp r1.xyz, r1, c17, r2
    mul_pp r1.xyz, r1, c16
    texld_pp r2, v0, s0
    mad_pp r0.xyz, r1, r2, r0
    mul_pp r0.w, r2.w, c16.w
    mad r0.w, r0.w, v4.w, c0.x
    mov r1.y, c16.y
    mad_pp oC0.w, r1.y, r0.w, c0.y
    mul_pp r0.xyz, r0, v4
    texld_pp r1, v3.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    mul_pp oC0.xyz, r0, c16

// approximately 66 instruction slots used (4 texture, 62 arithmetic)
