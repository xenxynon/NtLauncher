.class public abstract Li6/y0;
.super Lkotlinx/coroutines/scheduling/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/scheduling/h;"
    }
.end annotation


# instance fields
.field public i:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/h;-><init>()V

    iput p1, p0, Li6/y0;->i:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public abstract b()Lq5/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq5/d<",
            "TT;>;"
        }
    .end annotation
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    instance-of p0, p1, Li6/b0;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Li6/b0;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Li6/b0;->a:Ljava/lang/Throwable;

    :goto_1
    return-object v0
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public final g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p1, p2}, Ln5/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    if-nez p1, :cond_2

    move-object p1, p2

    :cond_2
    new-instance p2, Li6/p0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-direct {p2, v0, p1}, Li6/p0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Li6/y0;->b()Lq5/d;

    move-result-object p0

    invoke-interface {p0}, Lq5/d;->getContext()Lq5/g;

    move-result-object p0

    invoke-static {p0, p2}, Li6/l0;->a(Lq5/g;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract h()Ljava/lang/Object;
.end method

.method public final run()V
    .locals 10

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/h;->h:Lkotlinx/coroutines/scheduling/i;

    :try_start_0
    invoke-virtual {p0}, Li6/y0;->b()Lq5/d;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/f;

    iget-object v2, v1, Lkotlinx/coroutines/internal/f;->k:Lq5/d;

    iget-object v1, v1, Lkotlinx/coroutines/internal/f;->m:Ljava/lang/Object;

    invoke-interface {v2}, Lq5/d;->getContext()Lq5/g;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/f0;->c(Lq5/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lkotlinx/coroutines/internal/f0;->a:Lkotlinx/coroutines/internal/b0;

    const/4 v5, 0x0

    if-eq v1, v4, :cond_0

    invoke-static {v2, v3, v1}, Li6/h0;->g(Lq5/d;Lq5/g;Ljava/lang/Object;)Li6/w2;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    :try_start_1
    invoke-interface {v2}, Lq5/d;->getContext()Lq5/g;

    move-result-object v6

    invoke-virtual {p0}, Li6/y0;->h()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Li6/y0;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_1

    iget v9, p0, Li6/y0;->i:I

    invoke-static {v9}, Li6/z0;->b(I)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Li6/v1;->d:Li6/v1$b;

    invoke-interface {v6, v9}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object v6

    check-cast v6, Li6/v1;

    goto :goto_1

    :cond_1
    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Li6/v1;->a()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {v6}, Li6/v1;->h()Ljava/util/concurrent/CancellationException;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Li6/y0;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-object v7, Ln5/l;->h:Ln5/l$a;

    invoke-static {v6}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_2
    invoke-interface {v2, v6}, Lq5/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    if-eqz v8, :cond_3

    sget-object v6, Ln5/l;->h:Ln5/l$a;

    invoke-static {v8}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v7}, Li6/y0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ln5/l;->h:Ln5/l$a;

    invoke-static {v6}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    :goto_3
    sget-object v2, Ln5/t;->a:Ln5/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_4

    :try_start_2
    invoke-virtual {v4}, Li6/w2;->R0()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/f0;->a(Lq5/g;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_5
    :try_start_3
    sget-object v1, Ln5/l;->h:Ln5/l$a;

    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/i;->a()V

    invoke-static {v2}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    sget-object v1, Ln5/l;->h:Ln5/l$a;

    invoke-static {v0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Li6/y0;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_1
    move-exception v2

    if-eqz v4, :cond_6

    :try_start_4
    invoke-virtual {v4}, Li6/w2;->R0()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/f0;->a(Lq5/g;Ljava/lang/Object;)V

    :cond_7
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_5
    sget-object v2, Ln5/l;->h:Ln5/l$a;

    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/i;->a()V

    sget-object v0, Ln5/t;->a:Ln5/t;

    invoke-static {v0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    sget-object v2, Ln5/l;->h:Ln5/l$a;

    invoke-static {v0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Li6/y0;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method
