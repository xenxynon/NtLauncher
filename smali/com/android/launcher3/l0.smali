.class public final synthetic Lcom/android/launcher3/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntBinaryOperator;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/l0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/l0;

    invoke-direct {v0}, Lcom/android/launcher3/l0;-><init>()V

    sput-object v0, Lcom/android/launcher3/l0;->a:Lcom/android/launcher3/l0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(II)I
    .locals 0

    invoke-static {p1, p2}, Lcom/android/launcher3/InvariantDeviceProfile;->k(II)I

    move-result p0

    return p0
.end method
