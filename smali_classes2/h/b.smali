.class public final synthetic Lh/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic a:Lh/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lh/b;

    invoke-direct {v0}, Lh/b;-><init>()V

    sput-object v0, Lh/b;->a:Lh/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/launcher3/config/FeatureFlags$IntFlag;

    invoke-static {p1}, Lcom/android/launcher3/config/FeatureFlags;->a(Lcom/android/launcher3/config/FeatureFlags$IntFlag;)I

    move-result p0

    return p0
.end method
