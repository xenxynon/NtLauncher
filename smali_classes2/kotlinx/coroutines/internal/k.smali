.class public final Lkotlinx/coroutines/internal/k;
.super Li6/i0;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Li6/u0;


# instance fields
.field private final g:Li6/i0;

.field private final h:I

.field private final synthetic i:Li6/u0;

.field private final j:Lkotlinx/coroutines/internal/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/internal/p<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/lang/Object;

.field private volatile runningWorkers:I


# direct methods
.method public constructor <init>(Li6/i0;I)V
    .locals 0

    invoke-direct {p0}, Li6/i0;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/k;->g:Li6/i0;

    iput p2, p0, Lkotlinx/coroutines/internal/k;->h:I

    instance-of p2, p1, Li6/u0;

    if-eqz p2, :cond_0

    check-cast p1, Li6/u0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Li6/s0;->a()Li6/u0;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lkotlinx/coroutines/internal/k;->i:Li6/u0;

    new-instance p1, Lkotlinx/coroutines/internal/p;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lkotlinx/coroutines/internal/p;-><init>(Z)V

    iput-object p1, p0, Lkotlinx/coroutines/internal/k;->j:Lkotlinx/coroutines/internal/p;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/k;->k:Ljava/lang/Object;

    return-void
.end method

.method private final k(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/internal/k;->j:Lkotlinx/coroutines/internal/p;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/p;->a(Ljava/lang/Object;)Z

    iget p1, p0, Lkotlinx/coroutines/internal/k;->runningWorkers:I

    iget p0, p0, Lkotlinx/coroutines/internal/k;->h:I

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final y()Z
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/internal/k;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lkotlinx/coroutines/internal/k;->runningWorkers:I

    iget v2, p0, Lkotlinx/coroutines/internal/k;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_0
    :try_start_1
    iget v1, p0, Lkotlinx/coroutines/internal/k;->runningWorkers:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lkotlinx/coroutines/internal/k;->runningWorkers:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public c(JLi6/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Li6/n<",
            "-",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/coroutines/internal/k;->i:Li6/u0;

    invoke-interface {p0, p1, p2, p3}, Li6/u0;->c(JLi6/n;)V

    return-void
.end method

.method public dispatch(Lq5/g;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p2}, Lkotlinx/coroutines/internal/k;->k(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/internal/k;->y()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lkotlinx/coroutines/internal/k;->g:Li6/i0;

    invoke-virtual {p1, p0, p0}, Li6/i0;->dispatch(Lq5/g;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public dispatchYield(Lq5/g;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p2}, Lkotlinx/coroutines/internal/k;->k(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/internal/k;->y()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lkotlinx/coroutines/internal/k;->g:Li6/i0;

    invoke-virtual {p1, p0, p0}, Li6/i0;->dispatchYield(Lq5/g;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public limitedParallelism(I)Li6/i0;
    .locals 1

    invoke-static {p1}, Lkotlinx/coroutines/internal/l;->a(I)V

    iget v0, p0, Lkotlinx/coroutines/internal/k;->h:I

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Li6/i0;->limitedParallelism(I)Li6/i0;

    move-result-object p0

    return-object p0
.end method

.method public run()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :cond_0
    iget-object v2, p0, Lkotlinx/coroutines/internal/k;->j:Lkotlinx/coroutines/internal/p;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/p;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    sget-object v3, Lq5/h;->g:Lq5/h;

    invoke-static {v3, v2}, Li6/l0;->a(Lq5/g;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lkotlinx/coroutines/internal/k;->g:Li6/i0;

    invoke-virtual {v2, p0}, Li6/i0;->isDispatchNeeded(Lq5/g;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/internal/k;->g:Li6/i0;

    invoke-virtual {v0, p0, p0}, Li6/i0;->dispatch(Lq5/g;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/internal/k;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget v2, p0, Lkotlinx/coroutines/internal/k;->runningWorkers:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lkotlinx/coroutines/internal/k;->runningWorkers:I

    iget-object v2, p0, Lkotlinx/coroutines/internal/k;->j:Lkotlinx/coroutines/internal/p;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/p;->c()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    :try_start_2
    iget v2, p0, Lkotlinx/coroutines/internal/k;->runningWorkers:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lkotlinx/coroutines/internal/k;->runningWorkers:I

    sget-object v2, Ln5/t;->a:Ln5/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0
.end method
