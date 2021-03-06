//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_GISampler;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_TransColorMask;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampNrm;
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
//   mrgTexcoordIndex         c26      2
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   g_TransColorMask         c150     1
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampNrm                  s2       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//

    ps_3_0
    def c0, 2, -1, 500, 5
    def c1, 1024, 0, 0, 0
    def c2, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl vFace
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s9
    dcl_2d s10
    frc r0.xy, c26.xzzw
    cmp r0.zw, -r0.xyxy, c2.x, c2.y
    add r0.xy, -r0, c26.xzzw
    mov r1.x, c2.x
    cmp r0.zw, c26.xyxz, r1.x, r0
    add r0.xy, r0.zwzw, r0
    add r2, r0.x, -c2
    add r0, r0.y, -c2
    cmp r1.yz, -r2_abs.x, v0.xxyw, c2.x
    cmp r1.yz, -r2_abs.y, v0.xzww, r1
    cmp r1.yz, -r2_abs.z, v1.xxyw, r1
    cmp r1.yz, -r2_abs.w, v1.xzww, r1
    texld_pp r2, r1.yzzw, s0
    mul_pp oC0.w, r2.w, c16.w
    cmp r1.yz, -r0_abs.x, v0.xxyw, c2.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r1.yzzw
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s1
    frc r0.w, c27.x
    cmp r1.y, -r0.w, c2.x, c2.y
    add r0.w, -r0.w, c27.x
    cmp r1.x, c27.x, r1.x, r1.y
    add r0.w, r0.w, r1.x
    add r1, r0.w, -c2
    cmp r3.xy, -r1_abs.x, v0, c2.x
    cmp r1.xy, -r1_abs.y, v0.zwzw, r3
    cmp r1.xy, -r1_abs.z, v1, r1
    cmp r1.xy, -r1_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s2
    mul_pp r1.x, r1.w, r1.x
    mad_pp r1.xy, r1, c0.x, c0.y
    nrm_pp r3.xyz, v6
    mul_pp r3.xyz, r1.y, r3
    nrm_pp r4.xyz, v5
    mad_pp r3.xyz, r1.x, r4, r3
    dp2add_sat_pp r0.w, r1, r1, c2.x
    add r0.w, -r0.w, c2.y
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    cmp r1.xyz, vFace, v3, -v3
    nrm_pp r4.xyz, r1
    mad_pp r1.xyz, r0.w, r4, r3
    add_pp r3.xyz, c22, -v2
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    mad_pp r3.xyz, r3, r0.w, -c10
    nrm_pp r4.xyz, r3
    dp3_sat_pp r0.w, r4, r1
    dp3 r1.x, r1, -c10
    mov_pp r1.zw, c0
    mul_pp r1.yz, r1.xzww, c20
    max_pp r2.w, r1.y, c2.y
    mul_pp r1.yzw, r1.z, c18.xxyz
    min r3.x, r2.w, c1.x
    pow_pp r2.w, r0.w, r3.x
    mov_sat_pp r0.w, r1.x
    mov_sat_pp r1.x, -r1.x
    texld_pp r3, v0.zwzw, s10
    mul r4.xyz, r3.w, c37
    mul r4.xyz, r0.w, r4
    mul_pp r4.xyz, r2.w, r4
    mul_pp r1.yzw, r1, r4.xxyz
    mul_pp r0.xyz, r0, r1.yzww
    mul r1.yzw, r3.w, c36.xxyz
    mul_pp r3.xyz, r3, r3
    mul_pp r4.xyz, r0.w, r1.yzww
    mul_pp r1.xyz, r1.x, r1.yzww
    mul_pp r1.xyz, r1, c16
    mul_pp r1.xyz, r2, r1
    mul r1.xyz, r1, c150
    mul_pp r4.xyz, r4, c16
    mad_pp r3.xyz, r3, c17, r4
    mad_pp r1.xyz, r3, r2, r1
    mad_pp r0.xyz, r0, v3.w, r1
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 88 instruction slots used (5 texture, 83 arithmetic)
