.class public Lcom/nothing/sdk/NothingUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mNdotSupportList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    const-string v3, "af"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "da"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "es"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "et"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "fi"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "tl"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "nb"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "sv"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "nl"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "ru"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "uk"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "bg"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "sr"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "be"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "mk"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "pt"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/nothing/sdk/NothingUtils;->mNdotSupportList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupportNdot(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/nothing/sdk/NothingUtils;->mNdotSupportList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
