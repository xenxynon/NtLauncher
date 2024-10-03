.class public Lcom/sysaac/haptic/base/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "PreBakedEffect"

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string v0, "BOMB"

    const-string v1, "CAMERA_SHUTTER"

    const-string v2, "CLICK"

    const-string v3, "CYMBAL"

    const-string v4, "DOUBLE_CLICK"

    const-string v5, "DRUM"

    const-string v6, "FAILURE"

    const-string v7, "FIREWORKS"

    const-string v8, "GUNSHOT"

    const-string v9, "PLUCKING"

    const-string v10, "RAMP_UP"

    const-string v11, "SOFT_CLICK"

    const-string v12, "SUCCESS"

    const-string v13, "SWORD"

    const-string v14, "TAMBOURINE"

    const-string v15, "THUD"

    const-string v16, "TICK"

    const-string v17, "TOGGLE_SWITCH"

    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sysaac/haptic/base/n;->b:[Ljava/lang/String;

    const-string v1, "{\n  \"Metadata\": {\n    \"Created\": \"2021-05-26\",\n    \"Description\": \"Haptic editor design\",\n    \"Version\": 1\n  },\n  \"Pattern\": [\n    {\n      \"Event\": {\n        \"Duration\": 97,\n        \"Parameters\": {\n          \"Curve\": [\n            {\n              \"Frequency\": 82,\n              \"Intensity\": 0.0,\n              \"Time\": 0\n            },\n            {\n              \"Frequency\": 25,\n              \"Intensity\": 1.0,\n              \"Time\": 3\n            },\n            {\n              \"Frequency\": -100,\n              \"Intensity\": 0.55,\n              \"Time\": 74\n            },\n            {\n              \"Frequency\": -100,\n              \"Intensity\": 0.0,\n              \"Time\": 97\n            }\n          ],\n          \"Frequency\": 54,\n          \"Intensity\": 100\n        },\n        \"Type\": \"continuous\",\n        \"RelativeTime\": 0\n      }\n    },\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 63,\n          \"Intensity\": 79\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 105\n      }\n    },\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 62,\n          \"Intensity\": 45\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 131\n      }\n    },\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 27,\n          \"Intensity\": 18\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 176\n      }\n    }\n  ]\n}"

    const-string v2, "{\n  \"Metadata\": {\n    \"Created\": \"2021-04-05\",\n    \"Description\": \"Haptic editor design\",\n    \"Version\": 1\n  },\n  \"Pattern\": [\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 92,\n          \"Intensity\": 71\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 0\n      }\n    },\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 92,\n          \"Intensity\": 60\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 45\n      }\n    },\n    {\n      \"Event\": {\n        \"Duration\": 117,\n        \"Parameters\": {\n          \"Curve\": [\n            {\n              \"Frequency\": 0,\n              \"Intensity\": 0.0,\n              \"Time\": 0\n            },\n            {\n              \"Frequency\": 0,\n              \"Intensity\": 0.45,\n              \"Time\": 29\n            },\n            {\n              \"Frequency\": 0,\n              \"Intensity\": 1.0,\n              \"Time\": 115\n            },\n            {\n              \"Frequency\": 0,\n              \"Intensity\": 0.0,\n              \"Time\": 117\n            }\n          ],\n          \"Frequency\": 25,\n          \"Intensity\": 21\n        },\n        \"Type\": \"continuous\",\n        \"RelativeTime\": 80\n      }\n    },\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 70,\n          \"Intensity\": 100\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 212\n      }\n    },\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 58,\n          \"Intensity\": 31\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 257\n      }\n    }\n  ]\n}"

    const-string v3, "{\n    \"Metadata\":{\n        \"Created\":\"2021-02-22\",\n        \"Description\":\"Haptic editor design\",\n        \"Version\":1\n    },\n    \"Pattern\":[\n        {\n            \"Event\":{\n                \"Parameters\":{\n                    \"Frequency\":85,\n                    \"Intensity\":100\n                },\n                \"Type\":\"transient\",\n                \"RelativeTime\":0\n            }\n        }\n    ]\n}"

    const-string v4, "{\n\t\"Metadata\": {\n\t\t\"Created\": \"2021-02-23\",\n\t\t\"Description\": \"Copy from my project_6\",\n\t\t\"Version\": 1\n\t},\n\t\"Pattern\": [{\n\t\t\"Event\": {\n\t\t\t\"Duration\": 158,\n\t\t\t\"Parameters\": {\n\t\t\t\t\"Curve\": [{\n\t\t\t\t\t\"Frequency\": 0,\n\t\t\t\t\t\"Intensity\": 0.0,\n\t\t\t\t\t\"Time\": 0\n\t\t\t\t}, {\n\t\t\t\t\t\"Frequency\": 40,\n\t\t\t\t\t\"Intensity\": 1.0,\n\t\t\t\t\t\"Time\": 5\n\t\t\t\t}, {\n\t\t\t\t\t\"Frequency\": -19,\n\t\t\t\t\t\"Intensity\": 0.51,\n\t\t\t\t\t\"Time\": 36\n\t\t\t\t}, {\n\t\t\t\t\t\"Frequency\": 100,\n\t\t\t\t\t\"Intensity\": 0.0,\n\t\t\t\t\t\"Time\": 158\n\t\t\t\t}],\n\t\t\t\t\"Frequency\": 50,\n\t\t\t\t\"Intensity\": 100\n\t\t\t},\n\t\t\t\"Type\": \"continuous\",\n\t\t\t\"RelativeTime\": 0\n\t\t}\n\t}]\n}"

    const-string v5, "{\n  \"Metadata\": {\n    \"Created\": \"2021-02-22\",\n    \"Description\": \"Haptic editor design\",\n    \"Version\": 1\n  },\n  \"Pattern\": [\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 70,\n          \"Intensity\": 94\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 0\n      }\n    },\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 70,\n          \"Intensity\": 74\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 101\n      }\n    }\n  ]\n}"

    const-string v6, "{\n  \"Metadata\": {\n    \"Created\": \"2021-02-23\",\n    \"Description\": \"Haptic editor design\",\n    \"Version\": 1\n  },\n  \"Pattern\": [\n    {\n      \"Event\": {\n        \"Duration\": 188,\n        \"Parameters\": {\n          \"Curve\": [\n            {\n              \"Frequency\": -100,\n              \"Intensity\": 0.0,\n              \"Time\": 0\n            },\n            {\n              \"Frequency\": -35,\n              \"Intensity\": 1.0,\n              \"Time\": 1\n            },\n            {\n              \"Frequency\": -100,\n              \"Intensity\": 1.0,\n              \"Time\": 88\n            },\n            {\n              \"Frequency\": -100,\n              \"Intensity\": 0.0,\n              \"Time\": 188\n            }\n          ],\n          \"Frequency\": 31,\n          \"Intensity\": 100\n        },\n        \"Type\": \"continuous\",\n        \"RelativeTime\": 0\n      }\n    }\n  ]\n}"

    const-string v7, "{\n  \"Metadata\": {\n    \"Created\": \"2021-05-25\",\n    \"Description\": \"Haptic editor design\",\n    \"Version\": 1\n  },\n  \"Pattern\": [\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 41,\n          \"Intensity\": 73\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 0\n      }\n    },\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 70,\n          \"Intensity\": 83\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 57\n      }\n    },\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 53,\n          \"Intensity\": 57\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 115\n      }\n    },\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 68,\n          \"Intensity\": 44\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 182\n      }\n    }\n  ]\n}"

    const-string v8, "{\n  \"Metadata\": {\n    \"Created\": \"2021-05-26\",\n    \"Description\": \"Haptic editor design\",\n    \"Version\": 1\n  },\n  \"Pattern\": [\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 62,\n          \"Intensity\": 100\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 0\n      }\n    },\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 78,\n          \"Intensity\": 97\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 169\n      }\n    },\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 78,\n          \"Intensity\": 88\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 206\n      }\n    },\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 95,\n          \"Intensity\": 62\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 231\n      }\n    },\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 95,\n          \"Intensity\": 81\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 267\n      }\n    },\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 95,\n          \"Intensity\": 55\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 302\n      }\n    },\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 95,\n          \"Intensity\": 82\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 371\n      }\n    },\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 95,\n          \"Intensity\": 66\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 411\n      }\n    },\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 95,\n          \"Intensity\": 47\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 500\n      }\n    },\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 95,\n          \"Intensity\": 46\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 585\n      }\n    },\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 95,\n          \"Intensity\": 34\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 649\n      }\n    },\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 95,\n          \"Intensity\": 8\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 787\n      }\n    }\n  ]\n}"

    const-string v9, "{\n  \"Metadata\": {\n    \"Created\": \"2021-05-26\",\n    \"Description\": \"Haptic editor design\",\n    \"Version\": 1\n  },\n  \"Pattern\": [\n    {\n      \"Event\": {\n        \"Duration\": 27,\n        \"Parameters\": {\n          \"Curve\": [\n            {\n              \"Frequency\": 0,\n              \"Intensity\": 0.0,\n              \"Time\": 0\n            },\n            {\n              \"Frequency\": 0,\n              \"Intensity\": 1.0,\n              \"Time\": 1\n            },\n            {\n              \"Frequency\": 0,\n              \"Intensity\": 1.0,\n              \"Time\": 26\n            },\n            {\n              \"Frequency\": 0,\n              \"Intensity\": 0.0,\n              \"Time\": 27\n            }\n          ],\n          \"Frequency\": 56,\n          \"Intensity\": 100\n        },\n        \"Type\": \"continuous\",\n        \"RelativeTime\": 0\n      }\n    }\n  ]\n}"

    const-string v10, "{\n    \"Metadata\": {\n        \"Created\": \"2020-08-10\",\n        \"Description\": \"Haptic editor design\",\n        \"Version\": 1\n    },\n    \"Pattern\": [\n\t\t{\n            \"Event\": {\n                \"Parameters\": {\n                    \"Frequency\": 35,\n                    \"Intensity\": 100\n                },\n                \"Type\": \"transient\",\n                \"RelativeTime\": 0\n            }\n        },\n\t   {\n            \"Event\": {\n                \"Duration\":285,\n                \"Parameters\": {\n                    \"Curve\": [\n                        {\n                            \"Frequency\": 0,\n                            \"Intensity\": 0,\n                            \"Time\": 0\n                        },\n                        {\n                            \"Frequency\": 0,\n                            \"Intensity\": 0.6,\n                            \"Time\": 12\n                        },\n                        {\n                            \"Frequency\": 0,\n                            \"Intensity\": 0.1,\n                            \"Time\": 267\n                        },\n                        {\n                            \"Frequency\": 0,\n                            \"Intensity\": 0,\n                            \"Time\": 285\n                        }\n                    ],\n                    \"Frequency\": 38,\n                    \"Intensity\": 66\n                },\n                \"Type\": \"continuous\",\n                \"RelativeTime\": 25\n            }\n        }\n    ]\n}"

    const-string v11, "{\n  \"Metadata\": {\n    \"Created\": \"2021-05-26\",\n    \"Description\": \"Haptic editor design\",\n    \"Version\": 1\n  },\n  \"Pattern\": [\n    {\n      \"Event\": {\n        \"Duration\": 233,\n        \"Parameters\": {\n          \"Curve\": [\n            {\n              \"Frequency\": -72,\n              \"Intensity\": 0.0,\n              \"Time\": 0\n            },\n            {\n              \"Frequency\": -28,\n              \"Intensity\": 0.26,\n              \"Time\": 101\n            },\n            {\n              \"Frequency\": 0,\n              \"Intensity\": 1.0,\n              \"Time\": 232\n            },\n            {\n              \"Frequency\": 48,\n              \"Intensity\": 0.0,\n              \"Time\": 233\n            }\n          ],\n          \"Frequency\": 68,\n          \"Intensity\": 38\n        },\n        \"Type\": \"continuous\",\n        \"RelativeTime\": 0\n      }\n    }\n  ]\n}"

    const-string v12, "{\n    \"Metadata\":{\n        \"Created\":\"2021-02-22\",\n        \"Description\":\"Haptic editor design\",\n        \"Version\":1\n    },\n    \"Pattern\":[\n        {\n            \"Event\":{\n                \"Parameters\":{\n                    \"Frequency\":10,\n                    \"Intensity\":100\n                },\n                \"Type\":\"transient\",\n                \"RelativeTime\":0\n            }\n        }\n    ]\n}"

    const-string v13, "{\n  \"Metadata\": {\n    \"Created\": \"2021-02-22\",\n    \"Description\": \"Haptic editor design\",\n    \"Version\": 1\n  },\n  \"Pattern\": [\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 81,\n          \"Intensity\": 58\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 0\n      }\n    },\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 81,\n          \"Intensity\": 100\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 106\n      }\n    }\n  ]\n}"

    const-string v14, "{\n    \"Metadata\":{\n        \"Created\":\"2021-02-22\",\n        \"Description\":\"Haptic editor design\",\n        \"Version\":1\n    },\n    \"Pattern\":[\n       {\n      \"Event\" : {\n        \"Duration\" : 532,\n        \"Parameters\" : {\n          \"Curve\" : [\n            {\n              \"Time\" : 0,\n              \"Frequency\" : -100,\n              \"Intensity\" : 0\n            },\n            {\n              \"Time\" : 52,\n              \"Frequency\" : 18,\n              \"Intensity\" : 1\n            },\n            {\n              \"Time\" : 104,\n              \"Frequency\" : 21,\n              \"Intensity\" : 0.27\n            },\n            {\n              \"Time\" : 532,\n              \"Frequency\" : 72,\n              \"Intensity\" : 0\n            }\n          ],\n          \"Frequency\" : 56,\n          \"Intensity\" : 100\n        },\n        \"RelativeTime\" : 6,\n        \"Type\" : \"continuous\"\n      }\n     }\n    ]\n}"

    const-string v15, "{\n\t\"Metadata\": {\n\t\t\"Created\": \"2021-02-23\",\n\t\t\"Description\": \"Haptic editor design\",\n\t\t\"Version\": 1\n\t},\n\t\"Pattern\": [\n\t{\n\t\t\t\"Event\": {\n\t\t\t\t\"Duration\": 37,\n\t\t\t\t\"Parameters\": {\n\t\t\t\t\t\"Curve\": [\n\t\t\t\t\t{\n\t\t\t\t\t\t\t\"Frequency\": 0,\n\t\t\t\t\t\t\t\"Intensity\": 0.0,\n\t\t\t\t\t\t\t\"Time\": 0\n\t\t\t\t\t\t}, {\n\t\t\t\t\t\t\t\"Frequency\": -63,\n\t\t\t\t\t\t\t\"Intensity\": 1.0,\n\t\t\t\t\t\t\t\"Time\": 5\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t\"Frequency\": 53,\n\t\t\t\t\t\t\t\"Intensity\": 1.0,\n\t\t\t\t\t\t\t\"Time\": 32\n\t\t\t\t\t\t}, {\n\t\t\t\t\t\t\t\"Frequency\": -77,\n\t\t\t\t\t\t\t\"Intensity\": 0.0,\n\t\t\t\t\t\t\t\"Time\": 37\n\t\t\t\t\t\t}\n\t\t\t\t\t],\n\t\t\t\t\t\"Frequency\": 59,\n\t\t\t\t\t\"Intensity\": 100\n\t\t\t\t},\n\t\t\t\t\"Type\": \"continuous\",\n\t\t\t\t\"RelativeTime\": 0\n\t\t\t}\n\t\t}, {\n\t\t\t\"Event\": {\n\t\t\t\t\"Parameters\": {\n\t\t\t\t\t\"Frequency\": 88,\n\t\t\t\t\t\"Intensity\": 100\n\t\t\t\t},\n\t\t\t\t\"Type\": \"transient\",\n\t\t\t\t\"RelativeTime\": 52\n\t\t\t}\n\t\t},\n\t\t{\n\t\t\t\"Event\": {\n\t\t\t\t\"Parameters\": {\n\t\t\t\t\t\"Frequency\": 95,\n\t\t\t\t\t\"Intensity\": 40\n\t\t\t\t},\n\t\t\t\t\"Type\": \"transient\",\n\t\t\t\t\"RelativeTime\": 119\n\t\t\t}\n\t\t},\n\t\t{\n\t\t\t\"Event\": {\n\t\t\t\t\"Parameters\": {\n\t\t\t\t\t\"Frequency\": 95,\n\t\t\t\t\t\"Intensity\": 30\n\t\t\t\t},\n\t\t\t\t\"Type\": \"transient\",\n\t\t\t\t\"RelativeTime\": 176\n\t\t\t}\n\t\t}\n\t]\n}"

    const-string v16, "{\n    \"Metadata\":{\n        \"Created\":\"2021-02-22\",\n        \"Description\":\"Haptic editor design\",\n        \"Version\":1\n    },\n    \"Pattern\":[\n        {\n            \"Event\":{\n                \"Parameters\":{\n                    \"Frequency\":55,\n                    \"Intensity\":100\n                },\n                \"Type\":\"transient\",\n                \"RelativeTime\":0\n            }\n        }\n    ]\n}"

    const-string v17, "{\n    \"Metadata\":{\n        \"Created\":\"2021-02-22\",\n        \"Description\":\"Haptic editor design\",\n        \"Version\":1\n    },\n    \"Pattern\":[\n        {\n            \"Event\":{\n                \"Parameters\":{\n                    \"Frequency\":100,\n                    \"Intensity\":100\n                },\n                \"Type\":\"transient\",\n                \"RelativeTime\":0\n            }\n        }\n    ]\n}"

    const-string v18, "{\n  \"Metadata\": {\n    \"Created\": \"2020-08-10\",\n    \"Description\": \"Haptic editor design\",\n    \"Version\": 1\n  },\n  \"Pattern\": [\n    {\n      \"Event\": {\n        \"Duration\": 45,\n        \"Parameters\": {\n          \"Curve\": [\n            {\n              \"Frequency\": -20,\n              \"Intensity\": 0.0,\n              \"Time\": 0\n            },\n            {\n              \"Frequency\": -20,\n              \"Intensity\": 0.2,\n              \"Time\": 10\n            },\n            {\n              \"Frequency\": -20,\n              \"Intensity\": 0.4,\n              \"Time\": 35\n            },\n            {\n              \"Frequency\": -20,\n              \"Intensity\": 0.0,\n              \"Time\": 45\n            }\n          ],\n          \"Frequency\": 50,\n          \"Intensity\": 100\n        },\n        \"Type\": \"continuous\",\n        \"RelativeTime\": 0\n      }\n    },\n    {\n      \"Event\": {\n        \"Parameters\": {\n          \"Frequency\": 90,\n          \"Intensity\": 100\n        },\n        \"Type\": \"transient\",\n        \"RelativeTime\": 56\n      }\n    }\n  ]\n}"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sysaac/haptic/base/n;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_1

    sget-object v0, Lcom/sysaac/haptic/base/n;->b:[Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_1

    sget-object v0, Lcom/sysaac/haptic/base/n;->c:[Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
