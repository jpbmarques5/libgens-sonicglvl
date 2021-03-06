//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float3 g_CameraNearFarAspect;
//   row_major float4x4 g_MtxInvProjection;
//   sampler2D sampZBuffer;
//
//
// Registers:
//
//   Name                  Reg   Size
//   --------------------- ----- ----
//   g_MtxInvProjection    c4       4
//   g_CameraNearFarAspect c25      1
//   sampZBuffer           s0       1
//

    ps_3_0
    def c0, 255, 256, 0, 1
    def c1, 0.00392156886, 1, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xy
    dcl_2d s0
    mul r0.xy, c5.zwzw, v0.y
    mad r0.xy, v0.x, c4.zwzw, r0
    texld r1, v1, s0
    mad r0.xy, r1.x, c6.zwzw, r0
    add r0.xy, r0, c7.zwzw
    rcp r0.y, r0.y
    mul r0.x, r0.y, r0.x
    rcp r0.y, c25.y
    mul_sat r0.x, r0.y, -r0.x
    mul r0.y, r0.x, c0.x
    frc r0.z, r0.y
    add r1.w, r0.y, -r0.z
    mad r0.x, r0.x, c0.x, -r1.w
    mul r0.y, r0.x, c0.y
    frc r0.z, r0.y
    add r0.y, r0.y, -r0.z
    cmp r0.z, -r0.z, c0.z, c0.w
    cmp r0.z, r0.x, c0.z, r0.z
    add r1.x, r0.z, r0.y
    mad r1.y, r0.x, c0.y, -r1.x
    mov r1.z, c0.z
    mul_pp oC0, r1, c1.xyxx

// approximately 22 instruction slots used (1 texture, 21 arithmetic)
