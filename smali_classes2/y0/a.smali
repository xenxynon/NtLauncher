.class public Ly0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Ly0/a;->a:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/SurfaceControl$Transaction;
    .locals 0

    iget-object p0, p0, Ly0/a;->a:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {p0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    if-nez p0, :cond_0

    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :cond_0
    return-object p0
.end method

.method public b(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    iget-object p0, p0, Ly0/a;->a:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {p0, p1}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V

    :cond_0
    return-void
.end method
