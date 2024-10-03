.class final synthetic Lkotlinx/coroutines/flow/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/flow/e;ILk6/e;)Lkotlinx/coroutines/flow/e;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/e<",
            "+TT;>;I",
            "Lk6/e;",
            ")",
            "Lkotlinx/coroutines/flow/e<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-gez p1, :cond_1

    const/4 v3, -0x2

    if-eq p1, v3, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v0

    :goto_1
    if-eqz v3, :cond_7

    if-ne p1, v2, :cond_3

    sget-object v3, Lk6/e;->g:Lk6/e;

    if-ne p2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    if-eqz v0, :cond_6

    if-ne p1, v2, :cond_4

    sget-object p2, Lk6/e;->h:Lk6/e;

    move-object v6, p2

    move v5, v1

    goto :goto_3

    :cond_4
    move v5, p1

    move-object v6, p2

    :goto_3
    instance-of p1, p0, Ll6/p;

    if-eqz p1, :cond_5

    move-object v2, p0

    check-cast v2, Ll6/p;

    const/4 v3, 0x0

    const/4 p0, 0x1

    const/4 v7, 0x0

    move v4, v5

    move-object v5, v6

    move v6, p0

    invoke-static/range {v2 .. v7}, Ll6/p$a;->a(Ll6/p;Lq5/g;ILk6/e;ILjava/lang/Object;)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    goto :goto_4

    :cond_5
    new-instance p1, Ll6/h;

    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Ll6/h;-><init>(Lkotlinx/coroutines/flow/e;Lq5/g;ILk6/e;ILkotlin/jvm/internal/i;)V

    move-object p0, p1

    :goto_4
    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "Buffer size should be non-negative, BUFFERED, or CONFLATED, but was "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic b(Lkotlinx/coroutines/flow/e;ILk6/e;ILjava/lang/Object;)Lkotlinx/coroutines/flow/e;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, -0x2

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Lk6/e;->g:Lk6/e;

    :cond_1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/g;->c(Lkotlinx/coroutines/flow/e;ILk6/e;)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Lq5/g;)V
    .locals 1

    sget-object v0, Li6/v1;->d:Li6/v1$b;

    invoke-interface {p0, v0}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "Flow context cannot contain job in it. Had "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final d(Lkotlinx/coroutines/flow/e;Lq5/g;)Lkotlinx/coroutines/flow/e;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/e<",
            "+TT;>;",
            "Lq5/g;",
            ")",
            "Lkotlinx/coroutines/flow/e<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lkotlinx/coroutines/flow/k;->c(Lq5/g;)V

    sget-object v0, Lq5/h;->g:Lq5/h;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ll6/p;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Ll6/p;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Ll6/p$a;->a(Ll6/p;Lq5/g;ILk6/e;ILjava/lang/Object;)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v7, Ll6/h;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ll6/h;-><init>(Lkotlinx/coroutines/flow/e;Lq5/g;ILk6/e;ILkotlin/jvm/internal/i;)V

    move-object p0, v7

    :goto_0
    return-object p0
.end method
