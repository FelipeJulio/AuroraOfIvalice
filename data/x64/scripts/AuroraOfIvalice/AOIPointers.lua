-- Aurora of Ivalice: Made by FehDead
-------------------------------------
-- PRESETS AND POINTERS
-------------------------------------
-- address          full address
-- offset           offset of address
-- type             decrement or increment value
-- value            floating number
-- limit            limit of value to apply
-------------------------------------
local presets = {

    breezy = {
        pointers = {
            [0x01F81300] = { -- (First Basic Info)
                offsets = {
                    mGlareLuminance = {
                        offset = 0xF4,
                        type = "decrement",
                        value = 4,
                        limit = 0
                    },
                    mColorR = {
                        offset = 0x170,
                        type = "decrement",
                        value = 0.035,
                        limit = nil
                    },
                    mColorG = {
                        offset = 0x174,
                        type = "decrement",
                        value = 0.025,
                        limit = nil
                    },
                    mColorB = {
                        offset = 0x178,
                        type = "decrement",
                        value = 0.01,
                        limit = nil
                    },
                    mContrastR = {
                        offset = 0x17C,
                        type = "increment",
                        value = 0.02,
                        limit = nil
                    }
                }
            },
            [0x01F82EA8] = { -- (First Extended Info)
                offsets = {
                    ["? (0x001F08E5)"] = {
                        offset = 0xDC,
                        type = "increment",
                        value = 0.8999,
                        limit = nil
                    }, -- Cast shadow
                    ["? (0x001F092C)"] = {
                        offset = 0x100,
                        type = "increment",
                        value = 0.0999,
                        limit = nil
                    },
                    ["? (0x001F0921)"] = {
                        offset = 0x104,
                        type = "increment",
                        value = 0.1999,
                        limit = nil
                    },
                    ["? (0x001F0937)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.1999,
                        limit = 0.0009
                    },
                    ["? (0x001F0916)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.8999,
                        limit = nil
                    },
                    mShadowValueLerpMinForMap = {
                        offset = 0x140,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    },
                    mShadowValueLerpMinForChr = {
                        offset = 0x144,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    }
                }
            },
            [0x01F81168] = { -- (Second Basic Info)
                offsets = {
                    mMapIrrCubemapFactor = {
                        offset = 0x2DC,
                        type = "decrement",
                        value = 0.8,
                        limit = 0
                    },
                    mMapLightColorR = {
                        offset = 0x2C0,
                        type = "decrement",
                        value = 0.35,
                        limit = nil
                    },
                    mMapLightColorG = {
                        offset = 0x2C4,
                        type = "decrement",
                        value = 0.25,
                        limit = nil
                    },
                    mMapLightColorB = {
                        offset = 0x2C8,
                        type = "decrement",
                        value = 0.1,
                        limit = nil
                    }
                }
            }
        },
        staticAddresses = {{
            address = 0x02CB8080,
            type = "increment",
            value = 0.13,
            description = "mMapAmbientColorCutPercent",
            limit = nil
        }, {
            address = 0x02CB806C,
            type = "decrement",
            value = 0.22,
            description = "mMapIrrCubemapIntensity",
            limit = 1.7
        }, {
            address = 0x02CB8138,
            type = "decrement",
            value = 0.22,
            description = "mCubemapIntensity",
            limit = nil
        }, {
            address = 0x01F82EF8,
            type = "decrement",
            value = 0.22,
            description = "mMapChrDirLightColorIntensityR",
            limit = nil
        }, {
            address = 0x02CB8070,
            type = "decrement",
            value = 0.35,
            description = "mMapAmbientColorR",
            limit = nil
        }, {
            address = 0x02CB8074,
            type = "decrement",
            value = 0.25,
            description = "mMapAmbientColorG",
            limit = nil
        }, {
            address = 0x02CB8078,
            type = "decrement",
            value = 0.1,
            description = "mMapAmbientColorB",
            limit = nil
        }, {
            address = 0x01F82EE8,
            type = "decrement",
            value = 0.035,
            description = "mMapChrAmbientOffsetR",
            limit = nil
        }, {
            address = 0x01F82EEC,
            type = "decrement",
            value = 0.025,
            description = "mMapChrAmbientOffsetG",
            limit = nil
        }, {
            address = 0x01F82EF0,
            type = "decrement",
            value = 0.01,
            description = "mMapChrAmbientOffsetB",
            limit = nil
        }}
    },
    sunny = {
        pointers = {
            [0x01F81300] = { -- (First Basic Info)
                offsets = {
                    mGlareLuminance = {
                        offset = 0xF4,
                        type = "decrement",
                        value = 4,
                        limit = 0
                    },
                    mColorR = {
                        offset = 0x170,
                        type = "decrement",
                        value = 0.030,
                        limit = nil
                    },
                    mColorG = {
                        offset = 0x174,
                        type = "decrement",
                        value = 0.025,
                        limit = nil
                    },
                    mColorB = {
                        offset = 0x178,
                        type = "decrement",
                        value = 0.01,
                        limit = nil
                    },
                    mContrastR = {
                        offset = 0x17C,
                        type = "increment",
                        value = 0.02,
                        limit = nil
                    }
                }
            },
            [0x01F82EA8] = { -- (First Extended Info)
                offsets = {
                    ["? (0x001F08E5)"] = {
                        offset = 0xDC,
                        type = "increment",
                        value = 0.8999,
                        limit = nil
                    }, -- Cast shadow
                    ["? (0x001F092C)"] = {
                        offset = 0x100,
                        type = "increment",
                        value = 0.0999,
                        limit = nil
                    },
                    ["? (0x001F0921)"] = {
                        offset = 0x104,
                        type = "increment",
                        value = 0.1999,
                        limit = nil
                    },
                    ["? (0x001F0937)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.1999,
                        limit = 0.0009
                    },
                    ["? (0x001F0916)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.8999,
                        limit = nil
                    },
                    mShadowValueLerpMinForMap = {
                        offset = 0x140,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    },
                    mShadowValueLerpMinForChr = {
                        offset = 0x144,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    }
                }
            },
            [0x01F81168] = { -- (Second Basic Info)
                offsets = {
                    mMapIrrCubemapFactor = {
                        offset = 0x2DC,
                        type = "increment",
                        value = 0.8,
                        limit = 2
                    },
                    mMapLightColorR = {
                        offset = 0x2C0,
                        type = "decrement",
                        value = 0.30,
                        limit = nil
                    },
                    mMapLightColorG = {
                        offset = 0x2C4,
                        type = "decrement",
                        value = 0.25,
                        limit = nil
                    },
                    mMapLightColorB = {
                        offset = 0x2C8,
                        type = "decrement",
                        value = 0.1,
                        limit = nil
                    }
                }
            }
        },
        staticAddresses = {{
            address = 0x02CB8080,
            type = "increment",
            value = 0.13,
            description = "mMapAmbientColorCutPercent",
            limit = nil
        }, {
            address = 0x02CB806C,
            type = "decrement",
            value = 0.22,
            description = "mMapIrrCubemapIntensity",
            limit = 1.7
        }, {
            address = 0x02CB8138,
            type = "decrement",
            value = 0.22,
            description = "mCubemapIntensity",
            limit = nil
        }, {
            address = 0x01F82EF8,
            type = "decrement",
            value = 0.22,
            description = "mMapChrDirLightColorIntensityR",
            limit = nil
        }, {
            address = 0x02CB8070,
            type = "decrement",
            value = 0.30,
            description = "mMapAmbientColorR",
            limit = nil
        }, {
            address = 0x02CB8074,
            type = "decrement",
            value = 0.25,
            description = "mMapAmbientColorG",
            limit = nil
        }, {
            address = 0x02CB8078,
            type = "decrement",
            value = 0.1,
            description = "mMapAmbientColorB",
            limit = nil
        }, {
            address = 0x01F82EE8,
            type = "decrement",
            value = 0.030,
            description = "mMapChrAmbientOffsetR",
            limit = nil
        }, {
            address = 0x01F82EEC,
            type = "decrement",
            value = 0.025,
            description = "mMapChrAmbientOffsetG",
            limit = nil
        }, {
            address = 0x01F82EF0,
            type = "decrement",
            value = 0.01,
            description = "mMapChrAmbientOffsetB",
            limit = nil
        }}
    },
    ambar = {
        pointers = {
            [0x01F81300] = { -- (First Basic Info)
                offsets = {
                    mGlareLuminance = {
                        offset = 0xF4,
                        type = "decrement",
                        value = 4,
                        limit = 0
                    },
                    mColorR = {
                        offset = 0x170,
                        type = "decrement",
                        value = 0.028,
                        limit = nil
                    },
                    mColorG = {
                        offset = 0x174,
                        type = "decrement",
                        value = 0.025,
                        limit = nil
                    },
                    mColorB = {
                        offset = 0x178,
                        type = "decrement",
                        value = 0.012,
                        limit = nil
                    },
                    mContrastR = {
                        offset = 0x17C,
                        type = "increment",
                        value = 0.02,
                        limit = nil
                    }
                }
            },
            [0x01F82EA8] = { -- (First Extended Info)
                offsets = {
                    ["? (0x001F08E5)"] = {
                        offset = 0xDC,
                        type = "increment",
                        value = 0.8999,
                        limit = nil
                    }, -- Cast shadow
                    ["? (0x001F092C)"] = {
                        offset = 0x100,
                        type = "increment",
                        value = 0.0999,
                        limit = nil
                    },
                    ["? (0x001F0921)"] = {
                        offset = 0x104,
                        type = "increment",
                        value = 0.1999,
                        limit = nil
                    },
                    ["? (0x001F0937)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.1999,
                        limit = 0.0009
                    },
                    ["? (0x001F0916)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.8999,
                        limit = nil
                    },
                    mShadowValueLerpMinForMap = {
                        offset = 0x140,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    },
                    mShadowValueLerpMinForChr = {
                        offset = 0x144,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    }
                }
            },
            [0x01F81168] = { -- (Second Basic Info)
                offsets = {
                    mMapIrrCubemapFactor = {
                        offset = 0x2DC,
                        type = "increment",
                        value = 0.8,
                        limit = 2
                    },
                    mMapLightColorR = {
                        offset = 0x2C0,
                        type = "decrement",
                        value = 0.28,
                        limit = nil
                    },
                    mMapLightColorG = {
                        offset = 0x2C4,
                        type = "decrement",
                        value = 0.25,
                        limit = nil
                    },
                    mMapLightColorB = {
                        offset = 0x2C8,
                        type = "decrement",
                        value = 0.12,
                        limit = nil
                    }
                }
            }
        },
        staticAddresses = {{
            address = 0x02CB8080,
            type = "increment",
            value = 0.13,
            description = "mMapAmbientColorCutPercent",
            limit = nil
        }, {
            address = 0x02CB806C,
            type = "decrement",
            value = 0.22,
            description = "mMapIrrCubemapIntensity",
            limit = 1.7
        }, {
            address = 0x02CB8138,
            type = "decrement",
            value = 0.22,
            description = "mCubemapIntensity",
            limit = nil
        }, {
            address = 0x01F82EF8,
            type = "decrement",
            value = 0.22,
            description = "mMapChrDirLightColorIntensityR",
            limit = nil
        }, {
            address = 0x02CB8070,
            type = "decrement",
            value = 0.30,
            description = "mMapAmbientColorR",
            limit = nil
        }, {
            address = 0x02CB8074,
            type = "decrement",
            value = 0.32,
            description = "mMapAmbientColorG",
            limit = nil
        }, {
            address = 0x02CB8078,
            type = "decrement",
            value = 0.15,
            description = "mMapAmbientColorB",
            limit = nil
        }, {
            address = 0x01F82EE8,
            type = "decrement",
            value = 0.030,
            description = "mMapChrAmbientOffsetR",
            limit = nil
        }, {
            address = 0x01F82EEC,
            type = "decrement",
            value = 0.025,
            description = "mMapChrAmbientOffsetG",
            limit = nil
        }, {
            address = 0x01F82EF0,
            type = "decrement",
            value = 0.01,
            description = "mMapChrAmbientOffsetB",
            limit = nil
        }}
    },
    cloudy = {
        pointers = {
            [0x01F81300] = { -- (First Basic Info)
                offsets = {
                    mGlareLuminance = {
                        offset = 0xF4,
                        type = "decrement",
                        value = 4,
                        limit = 0
                    },

                    mColorR = {
                        offset = 0x170,
                        type = "decrement",
                        value = 0.024,
                        limit = nil
                    },
                    mColorG = {
                        offset = 0x174,
                        type = "decrement",
                        value = 0.016,
                        limit = nil
                    },
                    mColorB = {
                        offset = 0x178,
                        type = "decrement",
                        value = 0.008,
                        limit = nil
                    }
                }
            },
            [0x01F82EA8] = { -- (First Extended Info)
                offsets = {
                    ["? (0x001F08E5)"] = {
                        offset = 0xDC,
                        type = "increment",
                        value = 0.1999,
                        limit = nil
                    }, -- Cast shadow
                    ["? (0x001F092C)"] = {
                        offset = 0x100,
                        type = "increment",
                        value = 0.0999,
                        limit = nil
                    },
                    ["? (0x001F0921)"] = {
                        offset = 0x104,
                        type = "increment",
                        value = 0.0999,
                        limit = nil
                    },
                    ["? (0x001F0937)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.0999,
                        limit = 0.0009
                    },
                    ["? (0x001F0916)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.1999,
                        limit = nil
                    },
                    mShadowValueLerpMinForMap = {
                        offset = 0x140,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    },
                    mShadowValueLerpMinForChr = {
                        offset = 0x144,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    }
                }
            },
            [0x01F81168] = { -- (Second Basic Info)
                offsets = {
                    mMapIrrCubemapFactor = {
                        offset = 0x2DC,
                        type = "increment",
                        value = 0.4,
                        limit = 2
                    },

                    mMapLightColorR = {
                        offset = 0x2C0,
                        type = "decrement",
                        value = 0.24,
                        limit = nil
                    },
                    mMapLightColorG = {
                        offset = 0x2C4,
                        type = "decrement",
                        value = 0.16,
                        limit = nil
                    },
                    mMapLightColorB = {
                        offset = 0x2C8,
                        type = "decrement",
                        value = 0.08,
                        limit = nil
                    }
                }
            }
        },
        staticAddresses = {{
            address = 0x02CB8080,
            type = "increment",
            value = 0.13,
            description = "mMapAmbientColorCutPercent",
            limit = nil
        }, {
            address = 0x02CB806C,
            type = "decrement",
            value = 0.5,
            description = "mMapIrrCubemapIntensity",
            limit = 1.7
        }, {
            address = 0x02CB8138,
            type = "decrement",
            value = 0.22,
            description = "mCubemapIntensity",
            limit = nil
        }, {
            address = 0x01F82EF8,
            type = "decrement",
            value = 0.22,
            description = "mMapChrDirLightColorIntensityR",
            limit = nil
        }, {
            address = 0x02CB8070,
            type = "decrement",
            value = 0.55,
            description = "mMapAmbientColorR",
            limit = nil
        }, {
            address = 0x02CB8074,
            type = "decrement",
            value = 0.5,
            description = "mMapAmbientColorG",
            limit = nil
        }, {
            address = 0x02CB8078,
            type = "decrement",
            value = 0.4,
            description = "mMapAmbientColorB",
            limit = nil
        }, {
            address = 0x01F82EE8,
            type = "decrement",
            value = 0.024,
            description = "mMapChrAmbientOffsetR",
            limit = nil
        }, {
            address = 0x01F82EEC,
            type = "decrement",
            value = 0.016,
            description = "mMapChrAmbientOffsetG",
            limit = nil
        }, {
            address = 0x01F82EF0,
            type = "decrement",
            value = 0.008,
            description = "mMapChrAmbientOffsetB",
            limit = nil
        }}
    },
    overcast = {
        pointers = {
            [0x01F81300] = { -- (First Basic Info)
                offsets = {
                    mGlareLuminance = {
                        offset = 0xF4,
                        type = "decrement",
                        value = 4,
                        limit = 0
                    },
                    mColorR = {
                        offset = 0x170,
                        type = "decrement",
                        value = 0.030,
                        limit = nil
                    },
                    mColorG = {
                        offset = 0x174,
                        type = "decrement",
                        value = 0.025,
                        limit = nil
                    },
                    mColorB = {
                        offset = 0x178,
                        type = "decrement",
                        value = 0.01,
                        limit = nil
                    },
                    mContrastR = {
                        offset = 0x17C,
                        type = "increment",
                        value = 0.02,
                        limit = nil
                    }
                }
            },
            [0x01F82EA8] = { -- (First Extended Info)
                offsets = {
                    ["? (0x001F08E5)"] = {
                        offset = 0xDC,
                        type = "increment",
                        value = 0.8999,
                        limit = nil
                    }, -- Cast shadow
                    ["? (0x001F092C)"] = {
                        offset = 0x100,
                        type = "increment",
                        value = 0.0999,
                        limit = nil
                    },
                    ["? (0x001F0921)"] = {
                        offset = 0x104,
                        type = "increment",
                        value = 0.1999,
                        limit = nil
                    },
                    ["? (0x001F0937)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.1999,
                        limit = 0.0009
                    },
                    ["? (0x001F0916)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.8999,
                        limit = nil
                    },
                    mShadowValueLerpMinForMap = {
                        offset = 0x140,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    },
                    mShadowValueLerpMinForChr = {
                        offset = 0x144,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    }
                }
            },
            [0x01F81168] = { -- (Second Basic Info)
                offsets = {
                    mMapIrrCubemapFactor = {
                        offset = 0x2DC,
                        type = "increment",
                        value = 0.8,
                        limit = 2
                    },
                    mMapLightColorR = {
                        offset = 0x2C0,
                        type = "decrement",
                        value = 0.30,
                        limit = nil
                    },
                    mMapLightColorG = {
                        offset = 0x2C4,
                        type = "decrement",
                        value = 0.25,
                        limit = nil
                    },
                    mMapLightColorB = {
                        offset = 0x2C8,
                        type = "decrement",
                        value = 0.1,
                        limit = nil
                    }
                }
            }
        },
        staticAddresses = {{
            address = 0x02CB8080,
            type = "increment",
            value = 0.13,
            description = "mMapAmbientColorCutPercent",
            limit = nil
        }, {
            address = 0x02CB806C,
            type = "decrement",
            value = 0.22,
            description = "mMapIrrCubemapIntensity",
            limit = 1.7
        }, {
            address = 0x02CB8138,
            type = "decrement",
            value = 0.22,
            description = "mCubemapIntensity",
            limit = nil
        }, {
            address = 0x01F82EF8,
            type = "decrement",
            value = 0.22,
            description = "mMapChrDirLightColorIntensityR",
            limit = nil
        }, {
            address = 0x02CB8070,
            type = "decrement",
            value = 0.30,
            description = "mMapAmbientColorR",
            limit = nil
        }, {
            address = 0x02CB8074,
            type = "decrement",
            value = 0.25,
            description = "mMapAmbientColorG",
            limit = nil
        }, {
            address = 0x02CB8078,
            type = "decrement",
            value = 0.1,
            description = "mMapAmbientColorB",
            limit = nil
        }, {
            address = 0x01F82EE8,
            type = "decrement",
            value = 0.030,
            description = "mMapChrAmbientOffsetR",
            limit = nil
        }, {
            address = 0x01F82EEC,
            type = "decrement",
            value = 0.025,
            description = "mMapChrAmbientOffsetG",
            limit = nil
        }, {
            address = 0x01F82EF0,
            type = "decrement",
            value = 0.01,
            description = "mMapChrAmbientOffsetB",
            limit = nil
        }}
    },

    -- special presets

    zertinanCaverns = {
        pointers = {
            [0x01F81300] = { -- (First Basic Info)
                offsets = {
                    mGlareLuminance = {
                        offset = 0xF4,
                        type = "decrement",
                        value = 4,
                        limit = 0
                    },

                    mColorR = {
                        offset = 0x170,
                        type = "decrement",
                        value = 0.024,
                        limit = nil
                    },
                    mColorG = {
                        offset = 0x174,
                        type = "decrement",
                        value = 0.016,
                        limit = nil
                    },
                    mColorB = {
                        offset = 0x178,
                        type = "decrement",
                        value = 0.008,
                        limit = nil
                    }
                }
            },
            [0x01F82EA8] = { -- (First Extended Info)
                offsets = {
                    ["? (0x001F08E5)"] = {
                        offset = 0xDC,
                        type = "increment",
                        value = 0.1999,
                        limit = nil
                    }, -- Cast shadow
                    ["? (0x001F092C)"] = {
                        offset = 0x100,
                        type = "increment",
                        value = 0.0999,
                        limit = nil
                    },
                    ["? (0x001F0921)"] = {
                        offset = 0x104,
                        type = "increment",
                        value = 0.0999,
                        limit = nil
                    },
                    ["? (0x001F0937)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.0999,
                        limit = 0.0009
                    },
                    ["? (0x001F0916)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.1999,
                        limit = nil
                    },
                    mShadowValueLerpMinForMap = {
                        offset = 0x140,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    },
                    mShadowValueLerpMinForChr = {
                        offset = 0x144,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    }
                }
            },
            [0x01F81168] = { -- (Second Basic Info)
                offsets = {
                    mMapIrrCubemapFactor = {
                        offset = 0x2DC,
                        type = "increment",
                        value = 0.4,
                        limit = 2
                    },

                    mMapLightColorR = {
                        offset = 0x2C0,
                        type = "decrement",
                        value = 0.24,
                        limit = nil
                    },
                    mMapLightColorG = {
                        offset = 0x2C4,
                        type = "decrement",
                        value = 0.16,
                        limit = nil
                    },
                    mMapLightColorB = {
                        offset = 0x2C8,
                        type = "decrement",
                        value = 0.08,
                        limit = nil
                    }
                }
            }
        },
        staticAddresses = {{
            address = 0x02CB8080,
            type = "increment",
            value = 0.13,
            description = "mMapAmbientColorCutPercent",
            limit = nil
        }, {
            address = 0x02CB806C,
            type = "decrement",
            value = 0.5,
            description = "mMapIrrCubemapIntensity",
            limit = 1.7
        }, {
            address = 0x02CB8138,
            type = "decrement",
            value = 0.22,
            description = "mCubemapIntensity",
            limit = nil
        }, {
            address = 0x01F82EF8,
            type = "decrement",
            value = 0.22,
            description = "mMapChrDirLightColorIntensityR",
            limit = nil
        }, {
            address = 0x02CB8070,
            type = "decrement",
            value = 0.55,
            description = "mMapAmbientColorR",
            limit = nil
        }, {
            address = 0x02CB8074,
            type = "decrement",
            value = 0.5,
            description = "mMapAmbientColorG",
            limit = nil
        }, {
            address = 0x02CB8078,
            type = "decrement",
            value = 0.4,
            description = "mMapAmbientColorB",
            limit = nil
        }, {
            address = 0x01F82EE8,
            type = "decrement",
            value = 0.024,
            description = "mMapChrAmbientOffsetR",
            limit = nil
        }, {
            address = 0x01F82EEC,
            type = "decrement",
            value = 0.016,
            description = "mMapChrAmbientOffsetG",
            limit = nil
        }, {
            address = 0x01F82EF0,
            type = "decrement",
            value = 0.008,
            description = "mMapChrAmbientOffsetB",
            limit = nil
        }}
    },

    bhujerba = {
        pointers = {
            [0x01F81300] = { -- (First Basic Info)
                offsets = {
                    mGlareLuminance = {
                        offset = 0xF4,
                        type = "decrement",
                        value = 4,
                        limit = 0
                    },
                    mColorR = {
                        offset = 0x170,
                        type = "decrement",
                        value = 0.035,
                        limit = nil
                    },
                    mColorG = {
                        offset = 0x174,
                        type = "decrement",
                        value = 0.025,
                        limit = nil
                    },
                    mColorB = {
                        offset = 0x178,
                        type = "decrement",
                        value = 0.01,
                        limit = nil
                    },
                    mContrastR = {
                        offset = 0x17C,
                        type = "increment",
                        value = 0.03,
                        limit = nil
                    }
                }
            },
            [0x01F82EA8] = { -- (First Extended Info)
                offsets = {
                    ["? (0x001F08E5)"] = {
                        offset = 0xDC,
                        type = "increment",
                        value = 0.8999,
                        limit = nil
                    }, -- Cast shadow
                    ["? (0x001F092C)"] = {
                        offset = 0x100,
                        type = "increment",
                        value = 0.0999,
                        limit = nil
                    },
                    ["? (0x001F0921)"] = {
                        offset = 0x104,
                        type = "increment",
                        value = 0.1999,
                        limit = nil
                    },
                    ["? (0x001F0937)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.1999,
                        limit = 0.0009
                    },
                    ["? (0x001F0916)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.8999,
                        limit = nil
                    },
                    mShadowValueLerpMinForMap = {
                        offset = 0x140,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    },
                    mShadowValueLerpMinForChr = {
                        offset = 0x144,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    }
                }
            },
            [0x01F81168] = { -- (Second Basic Info)
                offsets = {
                    mMapIrrCubemapFactor = {
                        offset = 0x2DC,
                        type = "decrement",
                        value = 0.8,
                        limit = 0
                    },
                    mMapLightColorR = {
                        offset = 0x2C0,
                        type = "decrement",
                        value = 0.35,
                        limit = nil
                    },
                    mMapLightColorG = {
                        offset = 0x2C4,
                        type = "decrement",
                        value = 0.25,
                        limit = nil
                    },
                    mMapLightColorB = {
                        offset = 0x2C8,
                        type = "decrement",
                        value = 0.1,
                        limit = nil
                    }
                }
            }
        },
        staticAddresses = {{
            address = 0x02CB8080,
            type = "increment",
            value = 0.13,
            description = "mMapAmbientColorCutPercent",
            limit = nil
        }, {
            address = 0x02CB806C,
            type = "decrement",
            value = 0.22,
            description = "mMapIrrCubemapIntensity",
            limit = 1.7
        }, {
            address = 0x02CB8138,
            type = "decrement",
            value = 0.22,
            description = "mCubemapIntensity",
            limit = nil
        }, {
            address = 0x01F82EF8,
            type = "decrement",
            value = 0.2,
            description = "mMapChrDirLightColorIntensityR",
            limit = nil
        }, {
            address = 0x01F82ED8,
            type = "decrement",
            value = 0.03,
            description = "mMapChrAmbientIntensityR",
            limit = nil
        }, {
            address = 0x01F82EDC,
            type = "decrement",
            value = 0.02,
            description = "mMapChrAmbientIntensityG",
            limit = nil
        }, {
            address = 0x01F82EE0,
            type = "decrement",
            value = 0.01,
            description = "mMapChrAmbientIntensityB",
            limit = nil
        }, {
            address = 0x01F82EE8,
            type = "increment",
            value = 0.01,
            description = "mMapChrAmbientOffsetR",
            limit = nil
        }, {
            address = 0x01F82EEC,
            type = "increment",
            value = 0.05,
            description = "mMapChrAmbientOffsetG",
            limit = nil
        }, {
            address = 0x01F82EF0,
            type = "increment",
            value = 0.1,
            description = "mMapChrAmbientOffsetB",
            limit = nil
        }, {
            address = 0x02CB8070,
            type = "decrement",
            value = 0.3,
            description = "mMapAmbientColorR",
            limit = nil
        }, {
            address = 0x02CB8074,
            type = "decrement",
            value = 0.2,
            description = "mMapAmbientColorG",
            limit = nil
        }, {
            address = 0x02CB8078,
            type = "decrement",
            value = 0.1,
            description = "mMapAmbientColorB",
            limit = nil
        }}
    },

    rabanastre = {
        pointers = {
            [0x01F81300] = { -- (First Basic Info)
                offsets = {
                    mGlareLuminance = {
                        offset = 0xF4,
                        type = "decrement",
                        value = 4,
                        limit = 0
                    },
                    mColorR = {
                        offset = 0x170,
                        type = "decrement",
                        value = 0.035,
                        limit = nil
                    },
                    mColorG = {
                        offset = 0x174,
                        type = "decrement",
                        value = 0.025,
                        limit = nil
                    },
                    mColorB = {
                        offset = 0x178,
                        type = "decrement",
                        value = 0.01,
                        limit = nil
                    },
                    mContrastR = {
                        offset = 0x17C,
                        type = "increment",
                        value = 0.02,
                        limit = nil
                    }
                }
            },
            [0x01F82EA8] = { -- (First Extended Info)
                offsets = {
                    ["? (0x001F08E5)"] = {
                        offset = 0xDC,
                        type = "increment",
                        value = 0.8999,
                        limit = nil
                    },
                    ["? (0x001F092C)"] = {
                        offset = 0x100,
                        type = "increment",
                        value = 0.0999,
                        limit = nil
                    },
                    ["? (0x001F0921)"] = {
                        offset = 0x104,
                        type = "increment",
                        value = 0.1999,
                        limit = nil
                    },
                    ["? (0x001F0937)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.1999,
                        limit = 0.0009
                    },
                    ["? (0x001F0916)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.8999,
                        limit = nil
                    },
                    mShadowValueLerpMinForMap = {
                        offset = 0x140,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    },
                    mShadowValueLerpMinForChr = {
                        offset = 0x144,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    }
                }
            },
            [0x01F81168] = { -- (Second Basic Info)
                offsets = {
                    mMapIrrCubemapFactor = {
                        offset = 0x2DC,
                        type = "decrement",
                        value = 0.8,
                        limit = 0
                    },
                    mMapLightColorR = {
                        offset = 0x2C0,
                        type = "decrement",
                        value = 0.35,
                        limit = nil
                    },
                    mMapLightColorG = {
                        offset = 0x2C4,
                        type = "decrement",
                        value = 0.25,
                        limit = nil
                    },
                    mMapLightColorB = {
                        offset = 0x2C8,
                        type = "decrement",
                        value = 0.1,
                        limit = nil
                    }
                }
            }
        },
        staticAddresses = {{
            address = 0x02CB8080,
            type = "increment",
            value = 0.13,
            description = "mMapAmbientColorCutPercent",
            limit = nil
        }, {
            address = 0x02CB806C,
            type = "decrement",
            value = 0.22,
            description = "mMapIrrCubemapIntensity",
            limit = 1.7
        }, {
            address = 0x02CB8138,
            type = "decrement",
            value = 0.22,
            description = "mCubemapIntensity",
            limit = nil
        }, {
            address = 0x01F82EF8,
            type = "decrement",
            value = 0.22,
            description = "mMapChrDirLightColorIntensityR",
            limit = nil
        }, {
            address = 0x02CB8070,
            type = "decrement",
            value = 0.35,
            description = "mMapAmbientColorR",
            limit = nil
        }, {
            address = 0x02CB8074,
            type = "decrement",
            value = 0.25,
            description = "mMapAmbientColorG",
            limit = nil
        }, {
            address = 0x02CB8078,
            type = "decrement",
            value = 0.1,
            description = "mMapAmbientColorB",
            limit = nil
        }, {
            address = 0x01F82EE8,
            type = "decrement",
            value = 0.035,
            description = "mMapChrAmbientOffsetR",
            limit = nil
        }, {
            address = 0x01F82EEC,
            type = "decrement",
            value = 0.025,
            description = "mMapChrAmbientOffsetG",
            limit = nil
        }, {
            address = 0x01F82EF0,
            type = "decrement",
            value = 0.01,
            description = "mMapChrAmbientOffsetB",
            limit = nil
        }}
    },

    rabanastreGates = {
        pointers = {
            [0x01F81300] = { -- (First Basic Info)
                offsets = {
                    mGlareLuminance = {
                        offset = 0xF4,
                        type = "decrement",
                        value = 4,
                        limit = 0
                    },
                    mColorR = {
                        offset = 0x170,
                        type = "decrement",
                        value = 0.035,
                        limit = nil
                    },
                    mColorG = {
                        offset = 0x174,
                        type = "decrement",
                        value = 0.025,
                        limit = nil
                    },
                    mColorB = {
                        offset = 0x178,
                        type = "decrement",
                        value = 0.01,
                        limit = nil
                    },
                    mContrastR = {
                        offset = 0x17C,
                        type = "increment",
                        value = 0.03,
                        limit = nil
                    }
                }
            },
            [0x01F82EA8] = { -- (First Extended Info)
                offsets = {
                    ["? (0x001F08E5)"] = {
                        offset = 0xDC,
                        type = "increment",
                        value = 0.8999,
                        limit = nil
                    }, -- Cast shadow
                    ["? (0x001F092C)"] = {
                        offset = 0x100,
                        type = "increment",
                        value = 0.0999,
                        limit = nil
                    },
                    ["? (0x001F0921)"] = {
                        offset = 0x104,
                        type = "increment",
                        value = 0.1999,
                        limit = nil
                    },
                    ["? (0x001F0937)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.1999,
                        limit = 0.0009
                    },
                    ["? (0x001F0916)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.8999,
                        limit = nil
                    },
                    mShadowValueLerpMinForMap = {
                        offset = 0x140,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    },
                    mShadowValueLerpMinForChr = {
                        offset = 0x144,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    }
                }
            },
            [0x01F81168] = { -- (Second Basic Info)
                offsets = {
                    mMapIrrCubemapFactor = {
                        offset = 0x2DC,
                        type = "decrement",
                        value = 0.8,
                        limit = 0
                    },
                    mMapLightColorR = {
                        offset = 0x2C0,
                        type = "decrement",
                        value = 0.35,
                        limit = nil
                    },
                    mMapLightColorG = {
                        offset = 0x2C4,
                        type = "decrement",
                        value = 0.25,
                        limit = nil
                    },
                    mMapLightColorB = {
                        offset = 0x2C8,
                        type = "decrement",
                        value = 0.1,
                        limit = nil
                    }
                }
            }
        },
        staticAddresses = {{
            address = 0x02CB8080,
            type = "increment",
            value = 0.13,
            description = "mMapAmbientColorCutPercent",
            limit = nil
        }, {
            address = 0x02CB806C,
            type = "decrement",
            value = 0.22,
            description = "mMapIrrCubemapIntensity",
            limit = 1.7
        }, {
            address = 0x02CB8138,
            type = "decrement",
            value = 0.22,
            description = "mCubemapIntensity",
            limit = nil
        }, {
            address = 0x01F82EF8,
            type = "decrement",
            value = 0.2,
            description = "mMapChrDirLightColorIntensityR",
            limit = nil
        }, {
            address = 0x01F82ED8,
            type = "decrement",
            value = 0.03,
            description = "mMapChrAmbientIntensityR",
            limit = nil
        }, {
            address = 0x01F82EDC,
            type = "decrement",
            value = 0.02,
            description = "mMapChrAmbientIntensityG",
            limit = nil
        }, {
            address = 0x01F82EE0,
            type = "decrement",
            value = 0.01,
            description = "mMapChrAmbientIntensityB",
            limit = nil
        }, {
            address = 0x01F82EE8,
            type = "increment",
            value = 0.01,
            description = "mMapChrAmbientOffsetR",
            limit = nil
        }, {
            address = 0x01F82EEC,
            type = "increment",
            value = 0.05,
            description = "mMapChrAmbientOffsetG",
            limit = nil
        }, {
            address = 0x01F82EF0,
            type = "increment",
            value = 0.1,
            description = "mMapChrAmbientOffsetB",
            limit = nil
        }, {
            address = 0x02CB8070,
            type = "decrement",
            value = 0.3,
            description = "mMapAmbientColorR",
            limit = nil
        }, {
            address = 0x02CB8074,
            type = "decrement",
            value = 0.2,
            description = "mMapAmbientColorG",
            limit = nil
        }, {
            address = 0x02CB8078,
            type = "decrement",
            value = 0.1,
            description = "mMapAmbientColorB",
            limit = nil
        }}
    },

    phonCoast = {
        pointers = {
            [0x01F81300] = { -- (First Basic Info)
                offsets = {
                    mGlareLuminance = {
                        offset = 0xF4,
                        type = "decrement",
                        value = 4,
                        limit = 0
                    },

                    mColorR = {
                        offset = 0x170,
                        type = "decrement",
                        value = 0.024,
                        limit = nil
                    },
                    mColorG = {
                        offset = 0x174,
                        type = "decrement",
                        value = 0.016,
                        limit = nil
                    },
                    mColorB = {
                        offset = 0x178,
                        type = "decrement",
                        value = 0.008,
                        limit = nil
                    }
                }
            },
            [0x01F82EA8] = { -- (First Extended Info)
                offsets = {
                    ["? (0x001F08E5)"] = {
                        offset = 0xDC,
                        type = "increment",
                        value = 0.8999,
                        limit = nil
                    }, -- Cast shadow
                    ["? (0x001F092C)"] = {
                        offset = 0x100,
                        type = "increment",
                        value = 0.0999,
                        limit = nil
                    },
                    ["? (0x001F0921)"] = {
                        offset = 0x104,
                        type = "increment",
                        value = 0.1999,
                        limit = nil
                    },
                    ["? (0x001F0937)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.1999,
                        limit = 0.0009
                    },
                    ["? (0x001F0916)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.8999,
                        limit = nil
                    },
                    mShadowValueLerpMinForMap = {
                        offset = 0x140,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    },
                    mShadowValueLerpMinForChr = {
                        offset = 0x144,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    }
                }
            },
            [0x01F81168] = { -- (Second Basic Info)
                offsets = {
                    mMapIrrCubemapFactor = {
                        offset = 0x2DC,
                        type = "decrement",
                        value = 0.8,
                        limit = 0
                    },
                    mMapLightColorR = {
                        offset = 0x2C0,
                        type = "decrement",
                        value = 0.35,
                        limit = nil
                    },
                    mMapLightColorG = {
                        offset = 0x2C4,
                        type = "decrement",
                        value = 0.25,
                        limit = nil
                    },
                    mMapLightColorB = {
                        offset = 0x2C8,
                        type = "decrement",
                        value = 0.1,
                        limit = nil
                    }
                }
            }
        },
        staticAddresses = {{
            address = 0x02CB8080,
            type = "increment",
            value = 0.13,
            description = "mMapAmbientColorCutPercent",
            limit = nil
        }, {
            address = 0x02CB806C,
            type = "decrement",
            value = 0.5,
            description = "mMapIrrCubemapIntensity",
            limit = 1.7
        }, {
            address = 0x02CB8138,
            type = "decrement",
            value = 0.22,
            description = "mCubemapIntensity",
            limit = nil
        }, {
            address = 0x01F82EF8,
            type = "decrement",
            value = 0.22,
            description = "mMapChrDirLightColorIntensityR",
            limit = nil
        }, {
            address = 0x02CB8070,
            type = "decrement",
            value = 0.55,
            description = "mMapAmbientColorR",
            limit = nil
        }, {
            address = 0x02CB8074,
            type = "decrement",
            value = 0.5,
            description = "mMapAmbientColorG",
            limit = nil
        }, {
            address = 0x02CB8078,
            type = "decrement",
            value = 0.4,
            description = "mMapAmbientColorB",
            limit = nil
        }, {
            address = 0x01F82EE8,
            type = "decrement",
            value = 0.024,
            description = "mMapChrAmbientOffsetR",
            limit = nil
        }, {
            address = 0x01F82EEC,
            type = "decrement",
            value = 0.016,
            description = "mMapChrAmbientOffsetG",
            limit = nil
        }, {
            address = 0x01F82EF0,
            type = "decrement",
            value = 0.008,
            description = "mMapChrAmbientOffsetB",
            limit = nil
        }}
    },

    gizaPlainsDry = {
        pointers = {
            [0x01F81300] = { -- (First Basic Info)
                offsets = {
                    mGlareLuminance = {
                        offset = 0xF4,
                        type = "decrement",
                        value = 4,
                        limit = 0
                    },

                    mColorR = {
                        offset = 0x170,
                        type = "decrement",
                        value = 0.024,
                        limit = nil
                    },
                    mColorG = {
                        offset = 0x174,
                        type = "decrement",
                        value = 0.016,
                        limit = nil
                    },
                    mColorB = {
                        offset = 0x178,
                        type = "decrement",
                        value = 0.008,
                        limit = nil
                    }
                }
            },
            [0x01F82EA8] = { -- (First Extended Info)
                offsets = {
                    ["? (0x001F08E5)"] = {
                        offset = 0xDC,
                        type = "increment",
                        value = 0.8999,
                        limit = nil
                    }, -- Cast shadow
                    ["? (0x001F092C)"] = {
                        offset = 0x100,
                        type = "increment",
                        value = 0.0999,
                        limit = nil
                    },
                    ["? (0x001F0921)"] = {
                        offset = 0x104,
                        type = "increment",
                        value = 0.1999,
                        limit = nil
                    },
                    ["? (0x001F0937)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.1999,
                        limit = 0.0009
                    },
                    ["? (0x001F0916)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.8999,
                        limit = nil
                    },
                    mShadowValueLerpMinForMap = {
                        offset = 0x140,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    },
                    mShadowValueLerpMinForChr = {
                        offset = 0x144,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    }
                }
            },
            [0x01F81168] = { -- (Second Basic Info)
                offsets = {
                    mMapIrrCubemapFactor = {
                        offset = 0x2DC,
                        type = "decrement",
                        value = 0.8,
                        limit = 0
                    },
                    mMapLightColorR = {
                        offset = 0x2C0,
                        type = "decrement",
                        value = 0.35,
                        limit = nil
                    },
                    mMapLightColorG = {
                        offset = 0x2C4,
                        type = "decrement",
                        value = 0.25,
                        limit = nil
                    },
                    mMapLightColorB = {
                        offset = 0x2C8,
                        type = "decrement",
                        value = 0.1,
                        limit = nil
                    }
                }
            }
        },
        staticAddresses = {{
            address = 0x02CB8080,
            type = "increment",
            value = 0.13,
            description = "mMapAmbientColorCutPercent",
            limit = nil
        }, {
            address = 0x02CB806C,
            type = "decrement",
            value = 0.5,
            description = "mMapIrrCubemapIntensity",
            limit = 1.7
        }, {
            address = 0x02CB8138,
            type = "decrement",
            value = 0.22,
            description = "mCubemapIntensity",
            limit = nil
        }, {
            address = 0x01F82EF8,
            type = "decrement",
            value = 0.22,
            description = "mMapChrDirLightColorIntensityR",
            limit = nil
        }, {
            address = 0x02CB8070,
            type = "decrement",
            value = 0.35,
            description = "mMapAmbientColorR",
            limit = nil
        }, {
            address = 0x02CB8074,
            type = "decrement",
            value = 0.35,
            description = "mMapAmbientColorG",
            limit = nil
        }, {
            address = 0x02CB8078,
            type = "decrement",
            value = 0.3,
            description = "mMapAmbientColorB",
            limit = nil
        }, {
            address = 0x01F82EE8,
            type = "decrement",
            value = 0.024,
            description = "mMapChrAmbientOffsetR",
            limit = nil
        }, {
            address = 0x01F82EEC,
            type = "decrement",
            value = 0.016,
            description = "mMapChrAmbientOffsetG",
            limit = nil
        }, {
            address = 0x01F82EF0,
            type = "decrement",
            value = 0.008,
            description = "mMapChrAmbientOffsetB",
            limit = nil
        }}
    },

    gizaPlainsRainy = {
        pointers = {
            [0x01F81300] = { -- (First Basic Info)
                offsets = {
                    mGlareLuminance = {
                        offset = 0xF4,
                        type = "decrement",
                        value = 4,
                        limit = 0
                    },

                    mColorR = {
                        offset = 0x170,
                        type = "decrement",
                        value = 0.024,
                        limit = nil
                    },
                    mColorG = {
                        offset = 0x174,
                        type = "decrement",
                        value = 0.016,
                        limit = nil
                    },
                    mColorB = {
                        offset = 0x178,
                        type = "decrement",
                        value = 0.008,
                        limit = nil
                    }
                }
            },
            [0x01F82EA8] = { -- (First Extended Info)
                offsets = {
                    ["? (0x001F08E5)"] = {
                        offset = 0xDC,
                        type = "increment",
                        value = 0.8999,
                        limit = nil
                    }, -- Cast shadow
                    ["? (0x001F092C)"] = {
                        offset = 0x100,
                        type = "increment",
                        value = 0.0999,
                        limit = nil
                    },
                    ["? (0x001F0921)"] = {
                        offset = 0x104,
                        type = "increment",
                        value = 0.1999,
                        limit = nil
                    },
                    ["? (0x001F0937)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.1999,
                        limit = 0.0009
                    },
                    ["? (0x001F0916)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.8999,
                        limit = nil
                    },
                    mShadowValueLerpMinForMap = {
                        offset = 0x140,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    },
                    mShadowValueLerpMinForChr = {
                        offset = 0x144,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    }
                }
            },
            [0x01F81168] = { -- (Second Basic Info)
                offsets = {
                    mMapIrrCubemapFactor = {
                        offset = 0x2DC,
                        type = "decrement",
                        value = 0.8,
                        limit = 0
                    },
                    mMapLightColorR = {
                        offset = 0x2C0,
                        type = "decrement",
                        value = 0.35,
                        limit = nil
                    },
                    mMapLightColorG = {
                        offset = 0x2C4,
                        type = "decrement",
                        value = 0.25,
                        limit = nil
                    },
                    mMapLightColorB = {
                        offset = 0x2C8,
                        type = "decrement",
                        value = 0.1,
                        limit = nil
                    }
                }
            }
        },
        staticAddresses = {{
            address = 0x02CB8080,
            type = "increment",
            value = 0.13,
            description = "mMapAmbientColorCutPercent",
            limit = nil
        }, {
            address = 0x02CB806C,
            type = "decrement",
            value = 0.5,
            description = "mMapIrrCubemapIntensity",
            limit = 1.7
        }, {
            address = 0x02CB8138,
            type = "decrement",
            value = 0.22,
            description = "mCubemapIntensity",
            limit = nil
        }, {
            address = 0x01F82EF8,
            type = "decrement",
            value = 0.22,
            description = "mMapChrDirLightColorIntensityR",
            limit = nil
        }, {
            address = 0x02CB8070,
            type = "decrement",
            value = 0.55,
            description = "mMapAmbientColorR",
            limit = nil
        }, {
            address = 0x02CB8074,
            type = "decrement",
            value = 0.5,
            description = "mMapAmbientColorG",
            limit = nil
        }, {
            address = 0x02CB8078,
            type = "decrement",
            value = 0.4,
            description = "mMapAmbientColorB",
            limit = nil
        }, {
            address = 0x01F82EE8,
            type = "decrement",
            value = 0.024,
            description = "mMapChrAmbientOffsetR",
            limit = nil
        }, {
            address = 0x01F82EEC,
            type = "decrement",
            value = 0.016,
            description = "mMapChrAmbientOffsetG",
            limit = nil
        }, {
            address = 0x01F82EF0,
            type = "decrement",
            value = 0.008,
            description = "mMapChrAmbientOffsetB",
            limit = nil
        }}
    },

    tchitaUplands = {
        pointers = {
            [0x01F81300] = { -- (First Basic Info)
                offsets = {
                    mGlareLuminance = {
                        offset = 0xF4,
                        type = "decrement",
                        value = 4,
                        limit = 0
                    },

                    mColorR = {
                        offset = 0x170,
                        type = "decrement",
                        value = 0.024,
                        limit = nil
                    },
                    mColorG = {
                        offset = 0x174,
                        type = "decrement",
                        value = 0.016,
                        limit = nil
                    },
                    mColorB = {
                        offset = 0x178,
                        type = "decrement",
                        value = 0.008,
                        limit = nil
                    }
                }
            },
            [0x01F82EA8] = { -- (First Extended Info)
                offsets = {
                    ["? (0x001F08E5)"] = {
                        offset = 0xDC,
                        type = "increment",
                        value = 0.8999,
                        limit = nil
                    }, -- Cast shadow
                    ["? (0x001F092C)"] = {
                        offset = 0x100,
                        type = "increment",
                        value = 0.0999,
                        limit = nil
                    },
                    ["? (0x001F0921)"] = {
                        offset = 0x104,
                        type = "increment",
                        value = 0.1999,
                        limit = nil
                    },
                    ["? (0x001F0937)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.1999,
                        limit = 0.0009
                    },
                    ["? (0x001F0916)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.8999,
                        limit = nil
                    },
                    mShadowValueLerpMinForMap = {
                        offset = 0x140,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    },
                    mShadowValueLerpMinForChr = {
                        offset = 0x144,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    }
                }
            },
            [0x01F81168] = { -- (Second Basic Info)
                offsets = {
                    mMapIrrCubemapFactor = {
                        offset = 0x2DC,
                        type = "decrement",
                        value = 0.8,
                        limit = 0
                    },
                    mMapLightColorR = {
                        offset = 0x2C0,
                        type = "decrement",
                        value = 0.35,
                        limit = nil
                    },
                    mMapLightColorG = {
                        offset = 0x2C4,
                        type = "decrement",
                        value = 0.25,
                        limit = nil
                    },
                    mMapLightColorB = {
                        offset = 0x2C8,
                        type = "decrement",
                        value = 0.1,
                        limit = nil
                    }
                }
            }
        },
        staticAddresses = {{
            address = 0x02CB8080,
            type = "increment",
            value = 0.13,
            description = "mMapAmbientColorCutPercent",
            limit = nil
        }, {
            address = 0x02CB806C,
            type = "decrement",
            value = 0.5,
            description = "mMapIrrCubemapIntensity",
            limit = 1.7
        }, {
            address = 0x02CB8138,
            type = "decrement",
            value = 0.22,
            description = "mCubemapIntensity",
            limit = nil
        }, {
            address = 0x01F82EF8,
            type = "decrement",
            value = 0.22,
            description = "mMapChrDirLightColorIntensityR",
            limit = nil
        }, {
            address = 0x02CB8070,
            type = "decrement",
            value = 0.55,
            description = "mMapAmbientColorR",
            limit = nil
        }, {
            address = 0x02CB8074,
            type = "decrement",
            value = 0.5,
            description = "mMapAmbientColorG",
            limit = nil
        }, {
            address = 0x02CB8078,
            type = "decrement",
            value = 0.4,
            description = "mMapAmbientColorB",
            limit = nil
        }, {
            address = 0x01F82EE8,
            type = "decrement",
            value = 0.024,
            description = "mMapChrAmbientOffsetR",
            limit = nil
        }, {
            address = 0x01F82EEC,
            type = "decrement",
            value = 0.016,
            description = "mMapChrAmbientOffsetG",
            limit = nil
        }, {
            address = 0x01F82EF0,
            type = "decrement",
            value = 0.008,
            description = "mMapChrAmbientOffsetB",
            limit = nil
        }}
    },

    ogirYensaSandsea = {
        pointers = {
            [0x01F81300] = { -- (First Basic Info)
                offsets = {
                    mGlareLuminance = {
                        offset = 0xF4,
                        type = "decrement",
                        value = 4,
                        limit = 0
                    },
                    mColorR = {
                        offset = 0x170,
                        type = "decrement",
                        value = 0.028,
                        limit = nil
                    },
                    mColorG = {
                        offset = 0x174,
                        type = "decrement",
                        value = 0.025,
                        limit = nil
                    },
                    mColorB = {
                        offset = 0x178,
                        type = "decrement",
                        value = 0.012,
                        limit = nil
                    },
                    mContrastR = {
                        offset = 0x17C,
                        type = "increment",
                        value = 0.02,
                        limit = nil
                    }
                }
            },
            [0x01F82EA8] = { -- (First Extended Info)
                offsets = {
                    ["? (0x001F08E5)"] = {
                        offset = 0xDC,
                        type = "increment",
                        value = 0.8999,
                        limit = nil
                    }, -- Cast shadow
                    ["? (0x001F092C)"] = {
                        offset = 0x100,
                        type = "increment",
                        value = 0.0999,
                        limit = nil
                    },
                    ["? (0x001F0921)"] = {
                        offset = 0x104,
                        type = "increment",
                        value = 0.1999,
                        limit = nil
                    },
                    ["? (0x001F0937)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.1999,
                        limit = 0.0009
                    },
                    ["? (0x001F0916)"] = {
                        offset = 0x100,
                        type = "decrement",
                        value = 0.8999,
                        limit = nil
                    },
                    mShadowValueLerpMinForMap = {
                        offset = 0x140,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    },
                    mShadowValueLerpMinForChr = {
                        offset = 0x144,
                        type = "decrement",
                        value = 0.15,
                        limit = nil
                    }
                }
            },
            [0x01F81168] = { -- (Second Basic Info)
                offsets = {
                    mMapIrrCubemapFactor = {
                        offset = 0x2DC,
                        type = "increment",
                        value = 0.8,
                        limit = 2
                    },
                    mMapLightColorR = {
                        offset = 0x2C0,
                        type = "decrement",
                        value = 0.28,
                        limit = nil
                    },
                    mMapLightColorG = {
                        offset = 0x2C4,
                        type = "decrement",
                        value = 0.25,
                        limit = nil
                    },
                    mMapLightColorB = {
                        offset = 0x2C8,
                        type = "decrement",
                        value = 0.12,
                        limit = nil
                    }
                }
            }
        },
        staticAddresses = {{
            address = 0x02CB8080,
            type = "increment",
            value = 0.13,
            description = "mMapAmbientColorCutPercent",
            limit = nil
        }, {
            address = 0x02CB806C,
            type = "decrement",
            value = 0.22,
            description = "mMapIrrCubemapIntensity",
            limit = 1.7
        }, {
            address = 0x02CB8138,
            type = "decrement",
            value = 0.22,
            description = "mCubemapIntensity",
            limit = nil
        }, {
            address = 0x01F82EF8,
            type = "decrement",
            value = 0.22,
            description = "mMapChrDirLightColorIntensityR",
            limit = nil
        }, {
            address = 0x02CB8070,
            type = "decrement",
            value = 0.36,
            description = "mMapAmbientColorR",
            limit = nil
        }, {
            address = 0x02CB8074,
            type = "decrement",
            value = 0.32,
            description = "mMapAmbientColorG",
            limit = nil
        }, {
            address = 0x02CB8078,
            type = "decrement",
            value = 0.15,
            description = "mMapAmbientColorB",
            limit = nil
        }, {
            address = 0x01F82EE8,
            type = "decrement",
            value = 0.030,
            description = "mMapChrAmbientOffsetR",
            limit = nil
        }, {
            address = 0x01F82EEC,
            type = "decrement",
            value = 0.025,
            description = "mMapChrAmbientOffsetG",
            limit = nil
        }, {
            address = 0x01F82EF0,
            type = "decrement",
            value = 0.01,
            description = "mMapChrAmbientOffsetB",
            limit = nil
        }}
    }
}

return {
    initialValues = {
        pointers = {},
        staticAddresses = {}
    },
    presets = presets
}
