//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   float4 g_LightScatteringColor;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_ViewportSize;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgPlayableParam;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampNrm;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_EyeDirection                        c23      1
//   g_ViewportSize                        c24      1
//   mrgTexcoordIndex                      c26      2
//   mrgGlobalLight_Diffuse                c36      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   g_LightScatteringColor                c75      1
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampNrm                               s3       1
//

    ps_3_0
    def c0, 0.5, 2, -1, -3
    def c1, 4, 0, 0, 0
    def c2, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord5_pp v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl vPos.y
    dcl_2d s0
    dcl_2d s3
    frc r0.x, c27.x
    cmp r0.y, -r0.x, c2.x, c2.y
    add r0.x, -r0.x, c27.x
    mov r1.xy, c2
    cmp r0.y, c27.x, r1.x, r0.y
    add r0.x, r0.y, r0.x
    add r0, r0.x, -c2
    cmp r1.zw, -r0_abs.x, v0.xyxy, c2.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r1.zwzw
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s3
    mul_pp r0.x, r0.w, r0.x
    mad_pp r0.xy, r0, c0.y, c0.z
    nrm_pp r2.xyz, v6
    mul_pp r2.xyz, r0.y, r2
    nrm_pp r3.xyz, v5
    mad_pp r2.xyz, r0.x, r3, r2
    dp2add_pp r0.x, r0, -r0, c2.y
    rsq_pp r0.x, r0.x
    rcp_pp r0.x, r0.x
    nrm_pp r3.xyz, v3
    mad_pp r0.xyz, r0.x, r3, r2
    dp3_pp r0.w, r0, -c10
    mul r2.xyz, r0.w, c36
    mul_pp r2.xyz, r2, v1.w
    cmp_pp r2.xyz, r0.w, r2, c2.x
    add_pp r0.w, -c61.z, c61.y
    rcp_pp r0.w, r0.w
    add r3.xyz, -c22, v2
    dp3 r1.z, r3, r3
    rsq r1.z, r1.z
    mul_pp r3.xyz, r1.z, r3
    rcp r1.z, r1.z
    add r1.z, r1.z, -c60.z
    dp3_pp r1.w, r3, c23
    dp3_pp r0.x, r0, -r3
    add_pp r0.y, r1.w, -c61.z
    mul_sat_pp r0.y, r0.w, r0.y
    mad_pp r0.z, r0.y, -c0.y, -c0.w
    mul_pp r0.y, r0.y, r0.y
    mul_pp r0.y, r0.y, r0.z
    pow_sat_pp r1.w, r0.y, c61.w
    add r0.y, r1.y, -c61.x
    cmp_pp r0.y, r0.y, c2.y, r1.w
    add r0.z, -c60.z, c60.w
    rcp r0.z, r0.z
    mul_sat r0.z, r0.z, r1.z
    add_pp r0.z, -r0.z, c2.y
    cmp_pp r0.z, -c61.x, r1.y, r0.z
    mul_pp r0.y, r0.y, r0.z
    mul_pp r1.yzw, c58.w, c58.xxyz
    mul_pp r1.yzw, r0.x, r1
    cmp_pp r0.xzw, r0.x, r1.yyzw, c2.x
    mad_pp r0.xyz, r0.y, r0.xzww, r2
    mad_pp r0.xyz, c17, v1, r0
    mul_pp r0.xyz, r0, c16
    frc r0.w, c26.x
    cmp r1.y, -r0.w, c2.x, c2.y
    add r0.w, -r0.w, c26.x
    cmp r1.x, c26.x, r1.x, r1.y
    add r0.w, r0.w, r1.x
    add r1, r0.w, -c2
    cmp r2.xy, -r1_abs.x, v0, c2.x
    cmp r1.xy, -r1_abs.y, v0.zwzw, r2
    cmp r1.xy, -r1_abs.z, v1, r1
    cmp r1.xy, -r1_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s0
    mul_pp r0.w, r1.w, c16.w
    mul_pp r0.w, r0.w, v7.w
    mul_pp r2.w, r0.w, c21.x
    add r0.w, c0.x, vPos.y
    mov r3.x, c86.x
    mad r0.w, r0.w, c24.w, -r3.x
    mul_sat_pp r0.w, r0.w, c86.y
    lrp_pp r3.xyz, r0.w, r1, c2.y
    mul_pp r0.xyz, r0, r3
    mul_pp r2.xyz, r0, v7
    mul_pp r0, r2, c89
    min_pp r1, r0, c1.x
    mul_pp r0.xyz, c75, v4.y
    mad_pp oC0.xyz, r1, v4.x, r0
    mov_pp oC0.w, r1.w

// approximately 92 instruction slots used (2 texture, 90 arithmetic)