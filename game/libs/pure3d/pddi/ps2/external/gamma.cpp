//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <math.h>
#include <pddi/ps2/external/gamma.hpp>

#ifdef PS2_USE_GAMMA_TABLES


// gamma of 2.2 for NTSC
const unsigned char gammaTableNTSC32[] = {
    0,21,28,34,39,43,46,50,53,56,59,61,64,66,68,70,72,
    74,76,78,80,82,84,85,87,89,90,92,93,95,96,98,99,
    101,102,103,105,106,107,109,110,111,112,114,115,116,117,118,119,
    120,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,
    137,138,139,140,141,142,143,144,144,145,146,147,148,149,150,151,
    151,152,153,154,155,156,156,157,158,159,160,160,161,162,163,164,
    164,165,166,167,167,168,169,170,170,171,172,173,173,174,175,175,
    176,177,178,178,179,180,180,181,182,182,183,184,184,185,186,186,
    187,188,188,189,190,190,191,192,192,193,194,194,195,195,196,197,
    197,198,199,199,200,200,201,202,202,203,203,204,205,205,206,206,
    207,207,208,209,209,210,210,211,212,212,213,213,214,214,215,215,
    216,217,217,218,218,219,219,220,220,221,221,222,223,223,224,224,
    225,225,226,226,227,227,228,228,229,229,230,230,231,231,232,232,
    233,233,234,234,235,235,236,236,237,237,238,238,239,239,240,240,
    241,241,242,242,243,243,244,244,245,245,246,246,247,247,248,248,
    249,249,249,250,250,251,251,252,252,253,253,254,254,255,255
};

const unsigned char gammaTableNTSC16[] = {
    0,54,73,88,101,111,121,130,138,145,152,159,166,172,178,183,189,
    194,199,204,209,214,218,223,227,231,235,239,243,247,251,255
};

// gamma of 2.6 for PAL
const unsigned char gammaTablePAL32[] = {
    0,30,40,46,52,56,60,64,67,70,73,76,79,81,84,86,88,
    90,92,94,96,98,99,101,103,104,106,108,109,111,112,113,115,
    116,117,119,120,121,123,124,125,126,127,129,130,131,132,133,134,
    135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,
    151,152,153,153,154,155,156,157,158,158,159,160,161,162,162,163,
    164,165,166,166,167,168,169,169,170,171,172,172,173,174,174,175,
    176,177,177,178,179,179,180,181,181,182,183,183,184,185,185,186,
    186,187,188,188,189,190,190,191,191,192,193,193,194,194,195,196,
    196,197,197,198,199,199,200,200,201,201,202,202,203,204,204,205,
    205,206,206,207,207,208,208,209,210,210,211,211,212,212,213,213,
    214,214,215,215,216,216,217,217,218,218,219,219,220,220,221,221,
    222,222,223,223,224,224,224,225,225,226,226,227,227,228,228,229,
    229,230,230,230,231,231,232,232,233,233,234,234,234,235,235,236,
    236,237,237,238,238,238,239,239,240,240,241,241,241,242,242,243,
    243,243,244,244,245,245,245,246,246,247,247,248,248,248,249,249,
    250,250,250,251,251,252,252,252,253,253,253,254,254,255,255
};

const unsigned char gammaTablePAL16[] = {
    0,68,89,104,116,126,136,144,151,158,165,171,177,183,188,193,198,
    202,207,211,215,220,223,227,231,235,238,242,245,249,252,255
};

void GammaCorrectionTable256(double gamma, unsigned char gtable[256])
{
    for (int i=0; i<256; i++)
    {
        double y = (double)(i)/255.0;
        y = pow(y, 1.0/gamma);
        gtable[i] = (int) floor(255.0 * y + 0.5);
    }
}

void GammaCorrectionTable32(double gamma, unsigned char gtable[32])
{
    for (int i=0; i<32; i++)
    {
        double y = (double)(i)/31.0;
        y = pow(y, 1.0/gamma);
        gtable[i] = (int) floor(255.0 * y + 0.5);
    }
}

#endif // PS2_USE_GAMMA_TABLES
