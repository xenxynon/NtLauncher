.class public Lcom/android/launcher3/util/Executors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/Executors$SimpleThreadFactory;
    }
.end annotation


# static fields
.field public static final MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

.field public static final MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

.field private static final PACKAGE_EXECUTORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/util/LooperExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private static final POOL_SIZE:I

.field public static final UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/launcher3/util/Executors;->POOL_SIZE:I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/Executors;->PACKAGE_EXECUTORS:Ljava/util/Map;

    new-instance v0, Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/launcher3/util/LooperExecutor;

    const-string v1, "UiThreadHelper"

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/android/launcher3/util/Executors;->createAndStartNewLooper(Ljava/lang/String;I)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/launcher3/util/LooperExecutor;

    const-string v1, "launcher-loader"

    invoke-static {v1}, Lcom/android/launcher3/util/Executors;->createAndStartNewLooper(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    return-void
.end method

.method public static createAndStartNewLooper(Ljava/lang/String;)Landroid/os/Looper;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/util/Executors;->createAndStartNewLooper(Ljava/lang/String;I)Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public static createAndStartNewLooper(Ljava/lang/String;I)Landroid/os/Looper;
    .locals 1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method
