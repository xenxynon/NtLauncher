.class public final Li6/z2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lq5/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p0}, Lq5/d;->getContext()Lq5/g;

    move-result-object v0

    invoke-static {v0}, Li6/z1;->h(Lq5/g;)V

    invoke-static {p0}, Lr5/b;->b(Lq5/d;)Lq5/d;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/coroutines/internal/f;

    if-eqz v2, :cond_0

    check-cast v1, Lkotlinx/coroutines/internal/f;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    sget-object v0, Ln5/t;->a:Ln5/t;

    goto :goto_2

    :cond_1
    iget-object v2, v1, Lkotlinx/coroutines/internal/f;->j:Li6/i0;

    invoke-virtual {v2, v0}, Li6/i0;->isDispatchNeeded(Lq5/g;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Ln5/t;->a:Ln5/t;

    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/internal/f;->n(Lq5/g;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v2, Li6/y2;

    invoke-direct {v2}, Li6/y2;-><init>()V

    invoke-interface {v0, v2}, Lq5/g;->plus(Lq5/g;)Lq5/g;

    move-result-object v0

    sget-object v3, Ln5/t;->a:Ln5/t;

    invoke-virtual {v1, v0, v3}, Lkotlinx/coroutines/internal/f;->n(Lq5/g;Ljava/lang/Object;)V

    iget-boolean v0, v2, Li6/y2;->g:Z

    if-eqz v0, :cond_4

    invoke-static {v1}, Lkotlinx/coroutines/internal/g;->d(Lkotlinx/coroutines/internal/f;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v3

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_5

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/h;->c(Lq5/d;)V

    :cond_5
    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p0

    if-ne v0, p0, :cond_6

    return-object v0

    :cond_6
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
