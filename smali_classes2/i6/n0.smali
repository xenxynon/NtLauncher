.class public final Li6/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lq5/g;)Li6/m0;
    .locals 3

    new-instance v0, Lkotlinx/coroutines/internal/e;

    sget-object v1, Li6/v1;->d:Li6/v1$b;

    invoke-interface {p0, v1}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Li6/z1;->b(Li6/v1;ILjava/lang/Object;)Li6/z;

    move-result-object v1

    invoke-interface {p0, v1}, Lq5/g;->plus(Lq5/g;)Lq5/g;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/e;-><init>(Lq5/g;)V

    return-object v0
.end method

.method public static final b()Li6/m0;
    .locals 3

    new-instance v0, Lkotlinx/coroutines/internal/e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Li6/r2;->b(Li6/v1;ILjava/lang/Object;)Li6/z;

    move-result-object v1

    invoke-static {}, Li6/b1;->c()Li6/g2;

    move-result-object v2

    invoke-interface {v1, v2}, Lq5/g;->plus(Lq5/g;)Lq5/g;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/e;-><init>(Lq5/g;)V

    return-object v0
.end method

.method public static final c(Ly5/p;Lq5/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ly5/p<",
            "-",
            "Li6/m0;",
            "-",
            "Lq5/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lq5/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/internal/z;

    invoke-interface {p1}, Lq5/d;->getContext()Lq5/g;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/internal/z;-><init>(Lq5/g;Lq5/d;)V

    invoke-static {v0, v0, p0}, Lm6/b;->b(Lkotlinx/coroutines/internal/z;Ljava/lang/Object;Ly5/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/h;->c(Lq5/d;)V

    :cond_0
    return-object p0
.end method

.method public static final d(Li6/m0;)V
    .locals 0

    invoke-interface {p0}, Li6/m0;->getCoroutineContext()Lq5/g;

    move-result-object p0

    invoke-static {p0}, Li6/z1;->h(Lq5/g;)V

    return-void
.end method
