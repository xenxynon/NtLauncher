.class public final Ll4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ll4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll4/a;

    invoke-direct {v0}, Ll4/a;-><init>()V

    sput-object v0, Ll4/a;->a:Ll4/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nothing/launcher/ossupport/vibrate/EffectType;)Ljava/lang/String;
    .locals 0

    const-string p0, "effectType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nothing/launcher/ossupport/vibrate/EffectType;->getVendorResPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
