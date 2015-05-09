//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float3 g_CameraNearFarAspect;
//   sampler2D g_DepthSampler;
//   float4 g_Far_NearFadeRange_FarFadeRange;
//   float4 g_ForceAlphaColor;
//   row_major float4x4 g_MtxInvProjection;
//   float4 g_ViewportSize;
//   sampler2D s0;
//
//
// Registers:
//
//   Name                             Reg   Size
//   -------------------------------- ----- ----
//   g_MtxInvProjection               c4       4
//   g_ViewportSize                   c24      1
//   g_CameraNearFarAspect            c25      1
//   g_ForceAlphaColor                c89      1
//   g_Far_NearFadeRange_FarFadeRange c150     1
//   s0                               s0       1
//   g_DepthSampler                   s12      1
//

    ps_3_0
    def c0, 0.5, -0.5, 4, 0
    dcl_texcoord_pp v0.xyz
    dcl_texcoord1_pp v1.xyw
    dcl_texcoord2 v2.w
    dcl_color_pp v3.xyz
    dcl_2d s0
    dcl_2d s12
    rcp r0.x, v1.w
    mad r1.x, v1.x, r0.x, c24.z
    mad r1.y, v1.y, r0.x, -c24.w
    mad r0.xy, r1, c0, c0.x
    mul r0.zw, r1.y, c5
    mad r0.zw, r1.x, c4, r0
    texld r1, r0, s12
    mad r0.xy, r1.x, c6.zwzw, r0.zwzw
    add r0.xy, r0, c7.zwzw
    rcp r0.y, r0.y
    mad r0.x, r0.x, -r0.y, v2.w
    rcp r0.y, v0.z
    mul_sat_pp r0.x, r0.y, r0.x
    texld_pp r1, v0, s0
    mul_pp r0.x, r0.x, r1.w
    mul_pp r1.xyz, r1, v3
    add r0.y, -c25.x, -v2.w
    rcp r0.z, c150.y
    mul_sat_pp r0.y, r0.z, r0.y
    mul_pp r0.x, r0.y, r0.x
    add r0.y, c150.x, v2.w
    rcp r0.z, c150.z
    mul_sat_pp r0.y, r0.z, r0.y
    mul_pp r1.w, r0.y, r0.x
    mul_pp r0, r1, c89
    min_pp oC0, r0, c0.z

// approximately 26 instruction slots used (2 texture, 24 arithmetic)