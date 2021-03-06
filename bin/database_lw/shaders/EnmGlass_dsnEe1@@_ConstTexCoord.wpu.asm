//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EmissionParam;
//   float4 g_EyePosition;
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   float4 mrgLocalLight4_Color;
//   float4 mrgLocalLight4_Position;
//   float4 mrgLocalLight4_Range;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEmi;
//   sampler2D sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampSpec;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_Specular                            c18      1
//   g_PowerGlossLevel                     c20      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgLocalLight1_Position               c42      1
//   mrgLocalLight1_Color                  c43      1
//   mrgLocalLight1_Range                  c44      1
//   mrgLocalLight2_Position               c46      1
//   mrgLocalLight2_Color                  c47      1
//   mrgLocalLight2_Range                  c48      1
//   mrgLocalLight3_Position               c50      1
//   mrgLocalLight3_Color                  c51      1
//   mrgLocalLight3_Range                  c52      1
//   mrgLocalLight4_Position               c54      1
//   mrgLocalLight4_Color                  c55      1
//   mrgLocalLight4_Range                  c56      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_aLightField                         c77      6
//   g_MtxView                             c90      3
//   g_EmissionParam                       c150     1
//   sampDif                               s0       1
//   sampSpec                              s1       1
//   sampNrm                               s2       1
//   sampEnv                               s3       1
//   sampEmi                               s4       1
//   sampDLScatter                         s9       1
//

    ps_3_0
    def c0, 2, -1, 0, 1
    def c1, 0.5, -0.0500000007, 1.05263162, 10
    def c2, 4, 0.5, -0.5, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s4
    dcl_2d s9
    add_pp r0.xyz, -c50, v2
    dp3_pp r0.w, r0, r0
    rsq_pp r0.w, r0.w
    rcp_pp r1.x, r0.w
    mul_pp r0.xyz, r0.w, r0
    mad_sat_pp r0.w, -r1.x, c52.z, c52.w
    mul r1.xyz, r0.w, c51
    add_pp r2.xyz, -c42, v2
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    mad_sat_pp r0.w, -r1.w, c44.z, c44.w
    mul r3.xyz, r0.w, c43
    add_pp r4.xyz, -c46, v2
    dp3_pp r0.w, r4, r4
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r4.xyz, r0.w, r4
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r5.xyz, r0.w, c47
    add_pp r6.xyz, c22, -v2
    dp3_pp r0.w, r6, r6
    rsq_pp r0.w, r0.w
    mad_pp r7.xyz, r6, r0.w, -r4
    nrm_pp r8.xyz, r7
    nrm_pp r7.xyz, v6
    texld_pp r9, v1, s2
    mul_pp r9.x, r9.w, r9.x
    mad_pp r9.xy, r9, c0.x, c0.y
    mul_pp r7.xyz, r7, r9.y
    nrm_pp r10.xyz, v5
    mad_pp r7.xyz, r9.x, r10, r7
    dp2add_sat_pp r1.w, r9, r9, c0.z
    add r1.w, -r1.w, c0.w
    rsq r1.w, r1.w
    rcp_pp r1.w, r1.w
    nrm_pp r9.xyz, v3
    mad_pp r7.xyz, r1.w, r9, r7
    dp3_sat_pp r1.w, r8, r7
    mov r2.w, c1.w
    mul_pp r2.w, r2.w, c20.y
    exp_pp r2.w, r2.w
    mul_pp r2.w, r2.w, c2.x
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mul_pp r8.xyz, r5, r1.w
    mad_pp r9.xyz, r6, r0.w, -r2
    dp3_pp r1.w, r7, -r2
    add_pp r1.w, r1.w, c1.y
    mul_sat_pp r1.w, r1.w, c1.z
    nrm_pp r2.xyz, r9
    dp3_sat_pp r2.x, r2, r7
    pow_pp r3.w, r2.x, r2.w
    mul_pp r2.x, r3.w, c20.z
    mad_pp r2.xyz, r2.x, r3, r8
    mad_pp r8.xyz, r6, r0.w, -r0
    dp3_pp r0.x, r7, -r0
    add_pp r0.x, r0.x, c1.y
    nrm_pp r9.xyz, r8
    dp3_sat_pp r0.y, r9, r7
    pow_pp r3.w, r0.y, r2.w
    mul_pp r0.y, r3.w, c20.z
    mad_pp r2.xyz, r0.y, r1, r2
    add_pp r8.xyz, -c54, v2
    dp3_pp r0.y, r8, r8
    rsq_pp r0.y, r0.y
    rcp_pp r0.z, r0.y
    mul_pp r8.xyz, r0.y, r8
    mad_sat_pp r0.y, -r0.z, c56.z, c56.w
    mul r9.xyz, r0.y, c55
    mad_pp r10.xyz, r6, r0.w, -r8
    dp3_pp r0.y, r7, -r8
    add_pp r0.y, r0.y, c1.y
    mad_pp r6.xyz, r6, r0.w, -c10
    nrm_pp r8.xyz, r6
    dp3_sat_pp r0.z, r8, r7
    pow_pp r3.w, r0.z, r2.w
    mul_pp r0.z, r3.w, c20.z
    nrm_pp r6.xyz, r10
    dp3_sat_pp r0.w, r6, r7
    pow_pp r3.w, r0.w, r2.w
    mul_pp r0.w, r3.w, c20.z
    mad_pp r2.xyz, r0.w, r9, r2
    mad_pp r2.xyz, r0.z, c37, r2
    mul_pp r2.xyz, r2, c18
    texld_pp r6, v0, s1
    mul_pp r2.xyz, r2, r6
    mul r8, r7.y, c91
    mad r8, r7.x, c90, r8
    mad r8, r7.z, c92, r8
    dp4 r0.z, r8, r8
    rsq r0.z, r0.z
    mul r0.zw, r0.z, r8.xyxy
    mad_pp r0.zw, r0, c2.xyyz, c2.y
    texld_pp r8, r0.zwzw, s3
    mul_pp r6.xyz, r8, c63.x
    mul_pp r6.xyz, r6.w, r6
    mad_pp r2.yzw, r6.xxyz, c64.z, r2.xxyz
    mul_pp r2.yzw, r2, v3.w
    dp3_pp r0.z, r7, -r4
    add_pp r0.z, r0.z, c1.y
    mul_sat_pp r0.xyz, r0, c1.z
    mul_pp r4.xyz, r0.z, r5
    mad_pp r3.xyz, r3, r1.w, r4
    mad_pp r0.xzw, r1.xyyz, r0.x, r3.xyyz
    mad_pp r0.xyz, r9, r0.y, r0.xzww
    dp3_pp r0.w, r7, -c10
    add_pp r0.w, r0.w, c1.y
    mul_sat_pp r0.w, r0.w, c1.z
    mad_pp r0.xyz, c36, r0.w, r0
    mad_pp r1.xyz, r7, c1.x, c1.x
    mul_pp r3.xyz, r7, r7
    mov r4.xyz, c80
    mad r4.xyz, r4, r1.y, c79
    mul r4.xyz, r3.y, r4
    mov r5.xyz, c78
    mad r1.xyw, r5.xyzz, r1.x, c77.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r1.z, c81
    mad_pp r1.xyz, r3.x, r1.xyww, r4
    mad_pp r1.xyz, r3.z, r5, r1
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    texld_pp r1, v0, s0
    add_sat_pp r0.w, r8.w, r1.w
    mul_pp r3.w, r0.w, c16.w
    mad_pp r0.xyz, r0, r1, r2.yzww
    texld r1, v1.zwzw, s4
    add_pp r1.xyz, r1, c150
    mul_pp r1.xyz, r1, c17
    mad_pp r3.xyz, r1, c150.w, r0
    mul_pp r0, r3, v7
    mad_pp oC0.w, r0.w, c21.x, r2.x
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 163 instruction slots used (6 texture, 157 arithmetic)
