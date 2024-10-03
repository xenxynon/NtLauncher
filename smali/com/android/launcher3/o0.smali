.class public final synthetic Lcom/android/launcher3/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/o0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/o0;

    invoke-direct {v0}, Lcom/android/launcher3/o0;-><init>()V

    sput-object v0, Lcom/android/launcher3/o0;->a:Lcom/android/launcher3/o0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/launcher3/DeviceProfile;

    invoke-static {p1}, Lcom/android/launcher3/InvariantDeviceProfile;->g(Lcom/android/launcher3/DeviceProfile;)Z

    move-result p0

    return p0
.end method
