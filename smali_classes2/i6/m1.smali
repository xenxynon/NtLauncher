.class public final Li6/m1;
.super Li6/l1;
.source "SourceFile"

# interfaces
.implements Li6/u0;


# instance fields
.field private final h:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Li6/l1;-><init>()V

    iput-object p1, p0, Li6/m1;->h:Ljava/util/concurrent/Executor;

    invoke-virtual {p0}, Li6/m1;->y()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/internal/d;->a(Ljava/util/concurrent/Executor;)Z

    return-void
.end method

.method private final B(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Lq5/g;J)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/lang/Runnable;",
            "Lq5/g;",
            "J)",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, p4, p5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-direct {p0, p3, p1}, Li6/m1;->k(Lq5/g;Ljava/util/concurrent/RejectedExecutionException;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final k(Lq5/g;Ljava/util/concurrent/RejectedExecutionException;)V
    .locals 0

    const-string p0, "The task was rejected"

    invoke-static {p0, p2}, Li6/k1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    invoke-static {p1, p0}, Li6/z1;->c(Lq5/g;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method


# virtual methods
.method public c(JLi6/n;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Li6/n<",
            "-",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Li6/m1;->y()Ljava/util/concurrent/Executor;

    move-result-object v0

    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v5, Li6/o2;

    invoke-direct {v5, p0, p3}, Li6/o2;-><init>(Li6/i0;Li6/n;)V

    invoke-interface {p3}, Lq5/d;->getContext()Lq5/g;

    move-result-object v6

    move-object v3, p0

    move-wide v7, p1

    invoke-direct/range {v3 .. v8}, Li6/m1;->B(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Lq5/g;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_2

    invoke-static {p3, v2}, Li6/z1;->f(Li6/n;Ljava/util/concurrent/Future;)V

    return-void

    :cond_2
    sget-object p0, Li6/r0;->l:Li6/r0;

    invoke-virtual {p0, p1, p2, p3}, Li6/g1;->c(JLi6/n;)V

    return-void
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Li6/m1;->y()Ljava/util/concurrent/Executor;

    move-result-object p0

    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :goto_1
    return-void
.end method

.method public dispatch(Lq5/g;Ljava/lang/Runnable;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Li6/m1;->y()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {}, Li6/c;->a()Li6/b;

    invoke-interface {v0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Li6/c;->a()Li6/b;

    invoke-direct {p0, p1, v0}, Li6/m1;->k(Lq5/g;Ljava/util/concurrent/RejectedExecutionException;)V

    invoke-static {}, Li6/b1;->b()Li6/i0;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Li6/i0;->dispatch(Lq5/g;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Li6/m1;

    if-eqz v0, :cond_0

    check-cast p1, Li6/m1;

    invoke-virtual {p1}, Li6/m1;->y()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p0}, Li6/m1;->y()Ljava/util/concurrent/Executor;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Li6/m1;->y()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Li6/m1;->y()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public y()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Li6/m1;->h:Ljava/util/concurrent/Executor;

    return-object p0
.end method
