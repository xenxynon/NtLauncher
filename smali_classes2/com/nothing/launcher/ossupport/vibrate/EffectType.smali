.class public final enum Lcom/nothing/launcher/ossupport/vibrate/EffectType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nothing/launcher/ossupport/vibrate/EffectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nothing/launcher/ossupport/vibrate/EffectType;

.field public static final enum SECTION_CHANGE_DEFAULT:Lcom/nothing/launcher/ossupport/vibrate/EffectType;

.field public static final enum SECTION_CHANGE_STRONG:Lcom/nothing/launcher/ossupport/vibrate/EffectType;

.field public static final enum SECTION_CHANGE_WEAK:Lcom/nothing/launcher/ossupport/vibrate/EffectType;


# instance fields
.field private final vendorResPath:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/nothing/launcher/ossupport/vibrate/EffectType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    sget-object v1, Lcom/nothing/launcher/ossupport/vibrate/EffectType;->SECTION_CHANGE_DEFAULT:Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/nothing/launcher/ossupport/vibrate/EffectType;->SECTION_CHANGE_WEAK:Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/nothing/launcher/ossupport/vibrate/EffectType;->SECTION_CHANGE_STRONG:Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    const-string v1, "SECTION_CHANGE_DEFAULT"

    const/4 v2, 0x0

    const-string v3, "/vendor/etc/richtapresources/NT_letters_navi.he"

    invoke-direct {v0, v1, v2, v3}, Lcom/nothing/launcher/ossupport/vibrate/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nothing/launcher/ossupport/vibrate/EffectType;->SECTION_CHANGE_DEFAULT:Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    new-instance v0, Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    const-string v1, "SECTION_CHANGE_WEAK"

    const/4 v2, 0x1

    const-string v3, "/vendor/etc/richtapresources/weak/NT_letters_navi.he"

    invoke-direct {v0, v1, v2, v3}, Lcom/nothing/launcher/ossupport/vibrate/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nothing/launcher/ossupport/vibrate/EffectType;->SECTION_CHANGE_WEAK:Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    new-instance v0, Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    const-string v1, "SECTION_CHANGE_STRONG"

    const/4 v2, 0x2

    const-string v3, "/vendor/etc/richtapresources/strong/NT_letters_navi.he"

    invoke-direct {v0, v1, v2, v3}, Lcom/nothing/launcher/ossupport/vibrate/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nothing/launcher/ossupport/vibrate/EffectType;->SECTION_CHANGE_STRONG:Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    invoke-static {}, Lcom/nothing/launcher/ossupport/vibrate/EffectType;->$values()[Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    move-result-object v0

    sput-object v0, Lcom/nothing/launcher/ossupport/vibrate/EffectType;->$VALUES:[Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/nothing/launcher/ossupport/vibrate/EffectType;->vendorResPath:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nothing/launcher/ossupport/vibrate/EffectType;
    .locals 1

    const-class v0, Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    return-object p0
.end method

.method public static values()[Lcom/nothing/launcher/ossupport/vibrate/EffectType;
    .locals 1

    sget-object v0, Lcom/nothing/launcher/ossupport/vibrate/EffectType;->$VALUES:[Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nothing/launcher/ossupport/vibrate/EffectType;

    return-object v0
.end method


# virtual methods
.method public final getVendorResPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/ossupport/vibrate/EffectType;->vendorResPath:Ljava/lang/String;

    return-object p0
.end method
