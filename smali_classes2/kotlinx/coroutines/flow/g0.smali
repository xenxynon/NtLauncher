.class public final Lkotlinx/coroutines/flow/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final g:Lkotlinx/coroutines/flow/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final h:Ly5/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/p<",
            "Lkotlinx/coroutines/flow/f<",
            "-TT;>;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final a(Lq5/d;)Ljava/lang/Object;
    .locals 7
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

    instance-of v0, p1, Lkotlinx/coroutines/flow/g0$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/flow/g0$a;

    iget v1, v0, Lkotlinx/coroutines/flow/g0$a;->k:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/g0$a;->k:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/g0$a;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/flow/g0$a;-><init>(Lkotlinx/coroutines/flow/g0;Lq5/d;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/flow/g0$a;->i:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkotlinx/coroutines/flow/g0$a;->k:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/flow/g0$a;->h:Ljava/lang/Object;

    check-cast p0, Ll6/t;

    iget-object v2, v0, Lkotlinx/coroutines/flow/g0$a;->g:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/g0;

    :try_start_0
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    new-instance p1, Ll6/t;

    iget-object v2, p0, Lkotlinx/coroutines/flow/g0;->g:Lkotlinx/coroutines/flow/f;

    invoke-interface {v0}, Lq5/d;->getContext()Lq5/g;

    move-result-object v5

    invoke-direct {p1, v2, v5}, Ll6/t;-><init>(Lkotlinx/coroutines/flow/f;Lq5/g;)V

    :try_start_1
    iget-object v2, p0, Lkotlinx/coroutines/flow/g0;->h:Ly5/p;

    iput-object p0, v0, Lkotlinx/coroutines/flow/g0$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/g0$a;->h:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/g0$a;->k:I

    invoke-interface {v2, p1, v0}, Ly5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    move-object p0, p1

    :goto_1
    invoke-virtual {p0}, Ll6/t;->releaseIntercepted()V

    iget-object p0, v2, Lkotlinx/coroutines/flow/g0;->g:Lkotlinx/coroutines/flow/f;

    instance-of p1, p0, Lkotlinx/coroutines/flow/g0;

    if-eqz p1, :cond_6

    check-cast p0, Lkotlinx/coroutines/flow/g0;

    const/4 p1, 0x0

    iput-object p1, v0, Lkotlinx/coroutines/flow/g0$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/g0$a;->h:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/g0$a;->k:I

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/g0;->a(Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_6
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :catchall_1
    move-exception p0

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_3
    invoke-virtual {p0}, Ll6/t;->releaseIntercepted()V

    throw p1
.end method

.method public emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/coroutines/flow/g0;->g:Lkotlinx/coroutines/flow/f;

    invoke-interface {p0, p1, p2}, Lkotlinx/coroutines/flow/f;->emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
