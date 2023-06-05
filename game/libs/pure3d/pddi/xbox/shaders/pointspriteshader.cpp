//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "context.hpp"
#include "display.hpp"
#include "texture.hpp"
#include "shaderdata.hpp"
#include "shader.hpp"
#include "pointspriteshader.hpp"
#include "direct3d.hpp"

#ifdef _XBOX
static const int usePass = 3;
#else
static const int usePass = 0;
#endif

pddiShadeTextureTable d3dPointSpriteShader::textureTable[] = 
{
    {PDDI_SP_BASETEX , SHADE_TEXTURE(SetTexture)},
    {PDDI_SP_NULL , NULL}
};

pddiShadeIntTable d3dPointSpriteShader::intTable[] = 
{
    {PDDI_SP_POINTSPRITESCALEENABLE , SHADE_INT(SetScaleEnable)},
    {PDDI_SP_BLENDMODE , SHADE_INT(SetBlendMode)},
    {PDDI_SP_ALPHATEST , SHADE_INT(EnableAlphaTest)},
    {PDDI_SP_ALPHACOMPARE , SHADE_INT(SetAlphaCompare)},
    {PDDI_SP_NULL , NULL}
};

pddiShadeFloatTable d3dPointSpriteShader::floatTable[] = 
{
    {PDDI_SP_POINTSPRITESIZE , SHADE_FLOAT(SetSize)},
    {PDDI_SP_POINTSPRITESIZEMIN , SHADE_FLOAT(SetSizeMin)},
    {PDDI_SP_POINTSPRITESIZEMAX , SHADE_FLOAT(SetSizeMax)},
    {PDDI_SP_POINTSPRITESCALEA , SHADE_FLOAT(SetScaleA)},
    {PDDI_SP_POINTSPRITESCALEB , SHADE_FLOAT(SetScaleB)},
    {PDDI_SP_POINTSPRITESCALEC , SHADE_FLOAT(SetScaleC)},
    {PDDI_SP_POINTSPRITESCALEOFFSET , SHADE_FLOAT(SetScaleOffset)},
    {PDDI_SP_NULL , NULL}
};

d3dPointSpriteShader::d3dPointSpriteShader(d3dContext* c) :
    d3dShader(c),
    texture(NULL),
    scale(true),
    size(1.0f),
    minSize(0.0f),
    maxSize(100.0f),
    a(1.0f),
    b(0.0f),
    c(0.0f),
    scaleOffset(20.0f)
{
    uvMode = PDDI_UV_CLAMP;
}

d3dPointSpriteShader::~d3dPointSpriteShader()
{
    if(texture)
        texture->Release();
}

const char* d3dPointSpriteShader::GetType(void)
{
    static char type [] = "pointsprite";
    return type;
}

int  d3dPointSpriteShader::GetPasses()
{
    return 1;
}
    
void d3dPointSpriteShader::SetPass(int pass)
{
    // setup the pointsprite specific parameters
    LPDIRECT3DDEVICE8 d3ddev = context->GetDisplay()->GetD3DDevice();
    d3ddev->SetRenderState( D3DRS_POINTSPRITEENABLE, TRUE );
    d3ddev->SetRenderState( D3DRS_POINTSCALEENABLE,  scale );
    d3ddev->SetRenderState( D3DRS_POINTSIZE,         *((DWORD*)&size) );
    d3ddev->SetRenderState( D3DRS_POINTSIZE_MIN,     *((DWORD*)&minSize) );
    d3ddev->SetRenderState( D3DRS_POINTSIZE_MAX,     *((DWORD*)&maxSize) );
    d3ddev->SetRenderState( D3DRS_POINTSCALE_A,      *((DWORD*)&a) );
    d3ddev->SetRenderState( D3DRS_POINTSCALE_B,      *((DWORD*)&b) );
    d3ddev->SetRenderState( D3DRS_POINTSCALE_C,      *((DWORD*)&c) );

    // Set the render states for using point sprites. Note that pointsprites
    // use texture stage 3 only on xbox
#ifdef _XBOX
    // set up the point sprite stage
    d3d->SetTextures(4, NULL, NULL, NULL, texture);
    SetupTextureSampling(3);
    d3d->SetTextureCombine( 3, D3DTOP_MODULATE, D3DTA_DIFFUSE, D3DTA_TEXTURE);

    // clear out pther texture stages
    d3d->SetTextureCombine( 0, D3DTOP_MODULATE, D3DTA_DIFFUSE, D3DTA_TEXTURE);
    d3d->SetTextureCombine( 1, D3DTOP_MODULATE, D3DTA_DIFFUSE, D3DTA_TEXTURE);
    d3d->SetTextureCombine( 2, D3DTOP_MODULATE, D3DTA_DIFFUSE, D3DTA_TEXTURE);
#else
    // not exbox, just use stage 0
    // set up the point sprite stage
    d3d->SetTextures(1, texture);
    SetupTextureSampling(0);
    d3d->SetTextureCombine( 0, D3DTOP_MODULATE, D3DTA_DIFFUSE, D3DTA_TEXTURE);
#endif

    // point sprites shouldn't be using lights
    d3d->SetMaterial(false, false, NULL);

    SetupAlphaBlend();
}

void d3dPointSpriteShader::PreRender(void)
{
    d3dShader::PreRender();

#ifdef _XBOX
    LPDIRECT3DDEVICE8 m_pd3dDevice = context->GetDisplay()->GetD3DDevice();

    // Some basic constants
    float vZero[4] = {0.0f,1.0f,255.0f,scaleOffset};

    // Vertex shader operations use transposed matrices
    pddiMatrix matWorld, matView, matProj, matWV, matWVP, matWVPTranspose;
    m_pd3dDevice->GetTransform( D3DTS_WORLD, (D3DMATRIX*)&matWorld );
    m_pd3dDevice->GetTransform( D3DTS_VIEW, (D3DMATRIX*)&matView );
    m_pd3dDevice->GetTransform( D3DTS_PROJECTION, (D3DMATRIX*)&matProj );

    matWV.Mult(matWorld, matView);
    matWVP.Mult(matWV,matProj);
    matWVPTranspose.Transpose(matWVP);

    // Set the vertex shader constants
    m_pd3dDevice->SetVertexShaderConstant(  0, &vZero,    1 );
    m_pd3dDevice->SetVertexShaderConstant(  2, &matWVPTranspose, 4 );
#endif
}

void d3dPointSpriteShader::PostRender(void)
{
    d3dShader::PostRender();

    // undo point sprite enabling
    LPDIRECT3DDEVICE8 d3d = context->GetDisplay()->GetD3DDevice();
    d3d->SetRenderState( D3DRS_POINTSPRITEENABLE, FALSE );
    d3d->SetRenderState( D3DRS_POINTSCALEENABLE,  FALSE );
}

void d3dPointSpriteShader::SetTexture(pddiTexture* t)
{
    if(t)
    {
        t->AddRef();
    }

    if(texture)
    {
        texture->Release();
    }

    texture = (d3dTexture*)t;
}

void d3dPointSpriteShader::SetScaleEnable(int e)
{
    scale = (e != 0);
}

void d3dPointSpriteShader::SetSize(float s)
{
    size = s;
}

void d3dPointSpriteShader::SetSizeMin(float s)
{
    minSize = s;
}

void d3dPointSpriteShader::SetSizeMax(float s)
{
    maxSize = s;
}

void d3dPointSpriteShader::SetScaleA(float A)
{
    a = A;
}

void d3dPointSpriteShader::SetScaleB(float B)
{
    b = B;
}

void d3dPointSpriteShader::SetScaleC(float C)
{
    c = C;
}

void d3dPointSpriteShader::SetScaleOffset(float offset)
{
    scaleOffset = offset;
}


