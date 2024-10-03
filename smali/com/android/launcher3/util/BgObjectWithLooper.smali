.class public abstract Lcom/android/launcher3/util/BgObjectWithLooper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/util/BgObjectWithLooper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/BgObjectWithLooper;->runOnThread()V

    return-void
.end method

.method protected static newContentObserver(Landroid/os/Handler;Ljava/util/function/Consumer;)Landroid/database/ContentObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/database/ContentObserver;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/util/BgObjectWithLooper$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/BgObjectWithLooper$1;-><init>(Landroid/os/Handler;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method private runOnThread()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/BgObjectWithLooper;->onInitialized(Landroid/os/Looper;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method


# virtual methods
.method public final initializeInBackground(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/launcher3/util/a;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/a;-><init>(Lcom/android/launcher3/util/BgObjectWithLooper;)V

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected abstract onInitialized(Landroid/os/Looper;)V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method
