.class public final synthetic Lcom/android/launcher3/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic g:Lcom/android/launcher3/v;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/v;

    invoke-direct {v0}, Lcom/android/launcher3/v;-><init>()V

    sput-object v0, Lcom/android/launcher3/v;->g:Lcom/android/launcher3/v;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/DeviceProfile;

    invoke-static {p1}, Lcom/android/launcher3/DeviceProfile;->a(Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method
