.class final synthetic Li6/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Li6/m0;Lq5/g;Li6/o0;Ly5/p;)Li6/v1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/m0;",
            "Lq5/g;",
            "Li6/o0;",
            "Ly5/p<",
            "-",
            "Li6/m0;",
            "-",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Li6/v1;"
        }
    .end annotation

    invoke-static {p0, p1}, Li6/h0;->d(Li6/m0;Lq5/g;)Lq5/g;

    move-result-object p0

    invoke-virtual {p2}, Li6/o0;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Li6/f2;

    invoke-direct {p1, p0, p3}, Li6/f2;-><init>(Lq5/g;Ly5/p;)V

    goto :goto_0

    :cond_0
    new-instance p1, Li6/p2;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Li6/p2;-><init>(Lq5/g;Z)V

    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Li6/a;->P0(Li6/o0;Ljava/lang/Object;Ly5/p;)V

    return-object p1
.end method

.method public static synthetic b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, Lq5/h;->g:Lq5/h;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p2, Li6/o0;->g:Li6/o0;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Li6/h;->a(Li6/m0;Lq5/g;Li6/o0;Ly5/p;)Li6/v1;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lq5/g;Ly5/p;Lq5/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq5/g;",
            "Ly5/p<",
            "-",
            "Li6/m0;",
            "-",
            "Lq5/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lq5/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p2}, Lq5/d;->getContext()Lq5/g;

    move-result-object v0

    invoke-static {v0, p0}, Li6/h0;->e(Lq5/g;Lq5/g;)Lq5/g;

    move-result-object p0

    invoke-static {p0}, Li6/z1;->h(Lq5/g;)V

    if-ne p0, v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/internal/z;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/internal/z;-><init>(Lq5/g;Lq5/d;)V

    invoke-static {v0, v0, p1}, Lm6/b;->b(Lkotlinx/coroutines/internal/z;Ljava/lang/Object;Ly5/p;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v1, Lq5/e;->f:Lq5/e$b;

    invoke-interface {p0, v1}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object v2

    invoke-interface {v0, v1}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Li6/w2;

    invoke-direct {v0, p0, p2}, Li6/w2;-><init>(Lq5/g;Lq5/d;)V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lkotlinx/coroutines/internal/f0;->c(Lq5/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    invoke-static {v0, v0, p1}, Lm6/b;->b(Lkotlinx/coroutines/internal/z;Ljava/lang/Object;Ly5/p;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, v1}, Lkotlinx/coroutines/internal/f0;->a(Lq5/g;Ljava/lang/Object;)V

    move-object p0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p0, v1}, Lkotlinx/coroutines/internal/f0;->a(Lq5/g;Ljava/lang/Object;)V

    throw p1

    :cond_1
    new-instance v0, Li6/x0;

    invoke-direct {v0, p0, p2}, Li6/x0;-><init>(Lq5/g;Lq5/d;)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, v0

    move-object v4, v0

    invoke-static/range {v2 .. v7}, Lm6/a;->d(Ly5/p;Ljava/lang/Object;Lq5/d;Ly5/l;ILjava/lang/Object;)V

    invoke-virtual {v0}, Li6/x0;->R0()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lq5/d;)V

    :cond_2
    return-object p0
.end method
