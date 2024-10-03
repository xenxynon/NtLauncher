.class public final Lkotlinx/coroutines/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/b0;

.field public static final b:Lkotlinx/coroutines/internal/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/b0;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/g;->a:Lkotlinx/coroutines/internal/b0;

    new-instance v0, Lkotlinx/coroutines/internal/b0;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/b0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/g;->b:Lkotlinx/coroutines/internal/b0;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/b0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/internal/g;->a:Lkotlinx/coroutines/internal/b0;

    return-object v0
.end method

.method public static final b(Lq5/d;Ljava/lang/Object;Ly5/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq5/d<",
            "-TT;>;",
            "Ljava/lang/Object;",
            "Ly5/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p0, Lkotlinx/coroutines/internal/f;

    if-eqz v0, :cond_8

    check-cast p0, Lkotlinx/coroutines/internal/f;

    invoke-static {p1, p2}, Li6/f0;->c(Ljava/lang/Object;Ly5/l;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lkotlinx/coroutines/internal/f;->j:Li6/i0;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f;->getContext()Lq5/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Li6/i0;->isDispatchNeeded(Lq5/g;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-object p2, p0, Lkotlinx/coroutines/internal/f;->l:Ljava/lang/Object;

    iput v1, p0, Li6/y0;->i:I

    iget-object p1, p0, Lkotlinx/coroutines/internal/f;->j:Li6/i0;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f;->getContext()Lq5/g;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Li6/i0;->dispatch(Lq5/g;Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_0
    sget-object v0, Li6/u2;->a:Li6/u2;

    invoke-virtual {v0}, Li6/u2;->b()Li6/f1;

    move-result-object v0

    invoke-virtual {v0}, Li6/f1;->I()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object p2, p0, Lkotlinx/coroutines/internal/f;->l:Ljava/lang/Object;

    iput v1, p0, Li6/y0;->i:I

    invoke-virtual {v0, p0}, Li6/f1;->C(Li6/y0;)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v0, v1}, Li6/f1;->G(Z)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f;->getContext()Lq5/g;

    move-result-object v3

    sget-object v4, Li6/v1;->d:Li6/v1$b;

    invoke-interface {v3, v4}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object v3

    check-cast v3, Li6/v1;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Li6/v1;->a()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Li6/v1;->h()Ljava/util/concurrent/CancellationException;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lkotlinx/coroutines/internal/f;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-object p2, Ln5/l;->h:Ln5/l$a;

    invoke-static {v3}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lq5/d;->resumeWith(Ljava/lang/Object;)V

    move p2, v1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_7

    iget-object p2, p0, Lkotlinx/coroutines/internal/f;->k:Lq5/d;

    iget-object v3, p0, Lkotlinx/coroutines/internal/f;->m:Ljava/lang/Object;

    invoke-interface {p2}, Lq5/d;->getContext()Lq5/g;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/f0;->c(Lq5/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lkotlinx/coroutines/internal/f0;->a:Lkotlinx/coroutines/internal/b0;

    if-eq v3, v5, :cond_3

    invoke-static {p2, v4, v3}, Li6/h0;->g(Lq5/d;Lq5/g;Ljava/lang/Object;)Li6/w2;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_3
    move-object p2, v2

    :goto_1
    :try_start_1
    iget-object v5, p0, Lkotlinx/coroutines/internal/f;->k:Lq5/d;

    invoke-interface {v5, p1}, Lq5/d;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, Ln5/t;->a:Ln5/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_4

    :try_start_2
    invoke-virtual {p2}, Li6/w2;->R0()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_4
    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/f0;->a(Lq5/g;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Li6/w2;->R0()Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/f0;->a(Lq5/g;Ljava/lang/Object;)V

    :cond_6
    throw p1

    :cond_7
    :goto_2
    invoke-virtual {v0}, Li6/f1;->L()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_7

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {p0, p1, v2}, Li6/y0;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_3
    invoke-virtual {v0, v1}, Li6/f1;->k(Z)V

    goto :goto_4

    :catchall_2
    move-exception p0

    invoke-virtual {v0, v1}, Li6/f1;->k(Z)V

    throw p0

    :cond_8
    invoke-interface {p0, p1}, Lq5/d;->resumeWith(Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method public static synthetic c(Lq5/d;Ljava/lang/Object;Ly5/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/internal/g;->b(Lq5/d;Ljava/lang/Object;Ly5/l;)V

    return-void
.end method

.method public static final d(Lkotlinx/coroutines/internal/f;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/f<",
            "-",
            "Ln5/t;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Ln5/t;->a:Ln5/t;

    sget-object v1, Li6/u2;->a:Li6/u2;

    invoke-virtual {v1}, Li6/u2;->b()Li6/f1;

    move-result-object v1

    invoke-virtual {v1}, Li6/f1;->J()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Li6/f1;->I()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iput-object v0, p0, Lkotlinx/coroutines/internal/f;->l:Ljava/lang/Object;

    iput v4, p0, Li6/y0;->i:I

    invoke-virtual {v1, p0}, Li6/f1;->C(Li6/y0;)V

    move v3, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Li6/f1;->G(Z)V

    :try_start_0
    invoke-virtual {p0}, Li6/y0;->run()V

    :cond_2
    invoke-virtual {v1}, Li6/f1;->L()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v2}, Li6/y0;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    invoke-virtual {v1, v4}, Li6/f1;->k(Z)V

    :goto_1
    return v3

    :catchall_1
    move-exception p0

    invoke-virtual {v1, v4}, Li6/f1;->k(Z)V

    throw p0
.end method
