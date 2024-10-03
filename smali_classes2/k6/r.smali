.class public final Lk6/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lk6/t;Ly5/a;Lq5/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/t<",
            "*>;",
            "Ly5/a<",
            "Ln5/t;",
            ">;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lk6/r$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lk6/r$a;

    iget v1, v0, Lk6/r$a;->j:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lk6/r$a;->j:I

    goto :goto_0

    :cond_0
    new-instance v0, Lk6/r$a;

    invoke-direct {v0, p2}, Lk6/r$a;-><init>(Lq5/d;)V

    :goto_0
    iget-object p2, v0, Lk6/r$a;->i:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lk6/r$a;->j:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lk6/r$a;->h:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ly5/a;

    iget-object p0, v0, Lk6/r$a;->g:Ljava/lang/Object;

    check-cast p0, Lk6/t;

    :try_start_0
    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Lq5/d;->getContext()Lq5/g;

    move-result-object p2

    sget-object v2, Li6/v1;->d:Li6/v1$b;

    invoke-interface {p2, v2}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object p2

    if-ne p2, p0, :cond_3

    move p2, v3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_6

    :try_start_1
    iput-object p0, v0, Lk6/r$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Lk6/r$a;->h:Ljava/lang/Object;

    iput v3, v0, Lk6/r$a;->j:I

    new-instance p2, Li6/o;

    invoke-static {v0}, Lr5/b;->b(Lq5/d;)Lq5/d;

    move-result-object v2

    invoke-direct {p2, v2, v3}, Li6/o;-><init>(Lq5/d;I)V

    invoke-virtual {p2}, Li6/o;->z()V

    new-instance v2, Lk6/r$b;

    invoke-direct {v2, p2}, Lk6/r$b;-><init>(Li6/n;)V

    invoke-interface {p0, v2}, Lk6/z;->g(Ly5/l;)V

    invoke-virtual {p2}, Li6/o;->u()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p0, p2, :cond_4

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/h;->c(Lq5/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ly5/a;->invoke()Ljava/lang/Object;

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :goto_3
    invoke-interface {p1}, Ly5/a;->invoke()Ljava/lang/Object;

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "awaitClose() can only be invoked from the producer context"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Li6/m0;Lq5/g;ILk6/e;Li6/o0;Ly5/l;Ly5/p;)Lk6/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Li6/m0;",
            "Lq5/g;",
            "I",
            "Lk6/e;",
            "Li6/o0;",
            "Ly5/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ln5/t;",
            ">;",
            "Ly5/p<",
            "-",
            "Lk6/t<",
            "-TE;>;-",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lk6/v<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p2, p3, v0, v1, v0}, Lk6/i;->b(ILk6/e;Ly5/l;ILjava/lang/Object;)Lk6/f;

    move-result-object p2

    invoke-static {p0, p1}, Li6/h0;->d(Li6/m0;Lq5/g;)Lq5/g;

    move-result-object p0

    new-instance p1, Lk6/s;

    invoke-direct {p1, p0, p2}, Lk6/s;-><init>(Lq5/g;Lk6/f;)V

    if-eqz p5, :cond_0

    invoke-virtual {p1, p5}, Li6/d2;->p(Ly5/l;)Li6/c1;

    :cond_0
    invoke-virtual {p1, p4, p1, p6}, Li6/a;->P0(Li6/o0;Ljava/lang/Object;Ly5/p;)V

    return-object p1
.end method

.method public static synthetic c(Li6/m0;Lq5/g;ILk6/e;Li6/o0;Ly5/l;Ly5/p;ILjava/lang/Object;)Lk6/v;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    sget-object p1, Lq5/h;->g:Lq5/h;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    move v2, p2

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    sget-object p3, Lk6/e;->g:Lk6/e;

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    sget-object p4, Li6/o0;->g:Li6/o0;

    :cond_3
    move-object v4, p4

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    const/4 p5, 0x0

    :cond_4
    move-object v5, p5

    move-object v0, p0

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lk6/r;->b(Li6/m0;Lq5/g;ILk6/e;Li6/o0;Ly5/l;Ly5/p;)Lk6/v;

    move-result-object p0

    return-object p0
.end method
