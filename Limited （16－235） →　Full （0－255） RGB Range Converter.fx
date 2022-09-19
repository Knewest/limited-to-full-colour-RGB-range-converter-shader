// Levels=ps_2_0
// Code from MPC

texture2D g_Texture;
float2    g_StepXY;
float2    g_viewPort;

SamplerState RGBSampler : IMMUTABLE
{
  AddressU = CLAMP;
  AddressV = CLAMP;
  Filter = MIN_MAG_MIP_POINT;
};

struct VS_INPUT
{
  float4 Position   : POSITION;
  float2 TextureUV  : TEXCOORD0;
};

struct VS_OUTPUT
{
  float2 TextureUV  : TEXCOORD0;
  float4 Position   : SV_POSITION;
};

//
// VS for rendering in screen space
//
VS_OUTPUT VS(VS_INPUT In)
{
  VS_OUTPUT output = (VS_OUTPUT)0;
  output.Position.x = (In.Position.x / (g_viewPort.x / 2.0)) - 1;
  output.Position.y = -(In.Position.y / (g_viewPort.y / 2.0)) + 1;
  output.Position.z = output.Position.z;
  output.Position.w = 1.0;
  output.TextureUV = In.TextureUV;

  return output;
}

sampler s0 : register(s0);

#define const_1 (16.0/255.0)
#define const_2 (255.0/219.0)

#define width  (g_StepXY[0])
#define height (g_StepXY[1])

#define val0 (2.0)
#define val1 (-0.125)
#define effect_width (0.0)

float4 Enhance(float2 tex : TEXCOORD0) : SV_TARGET
{
  float dx = effect_width / width;
  float dy = effect_width / height;

	float4 c1 = g_Texture.Sample(RGBSampler, tex + float2(-dx,-dy)) * val1; 
	float4 c2 = g_Texture.Sample(RGBSampler, tex + float2(0,-dy)) * val1; 
	float4 c3 = g_Texture.Sample(RGBSampler, tex + float2(-dx,0)) * val1; 
	float4 c4 = g_Texture.Sample(RGBSampler, tex + float2(dx,0)) * val1; 
	float4 c5 = g_Texture.Sample(RGBSampler, tex + float2(0,dy)) * val1; 
	float4 c6 = g_Texture.Sample(RGBSampler, tex + float2(dx,dy)) * val1; 
	float4 c7 = g_Texture.Sample(RGBSampler, tex + float2(-dx,+dy)) * val1; 
	float4 c8 = g_Texture.Sample(RGBSampler, tex + float2(+dx,-dy)) * val1; 
	float4 c9 = g_Texture.Sample(RGBSampler, tex) * val0; 
  float4 c0 = (c1 + c2 + c3 + c4 + c5 + c6 + c7 + c8 + c9);

	return((c0 - const_1) * const_2);
}

technique11 SCALER_T
{
  pass P0
  {
    SetVertexShader(CompileShader(vs_4_0_level_9_1, VS()));
    SetPixelShader(CompileShader(ps_5_0, Enhance()));
  }
};

