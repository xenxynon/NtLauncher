.class public final Ll6/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Lkotlinx/coroutines/flow/f;Lq5/g;)Lkotlinx/coroutines/flow/f;
    .locals 0

    invoke-static {p0, p1}, Ll6/f;->d(Lkotlinx/coroutines/flow/f;Lq5/g;)Lkotlinx/coroutines/flow/f;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lq5/g;Ljava/lang/Object;Ljava/lang/Object;Ly5/p;Lq5/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lq5/g;",
            "TV;",
            "Ljava/lang/Object;",
            "Ly5/p<",
            "-TV;-",
            "Lq5/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lq5/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p2}, Lkotlinx/coroutines/internal/f0;->c(Lq5/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :try_start_0
    new-instance v0, Ll6/x;

    invoke-direct {v0, p4, p0}, Ll6/x;-><init>(Lq5/d;Lq5/g;)V

    const/4 v1, 0x2

    invoke-static {p3, v1}, Lkotlin/jvm/internal/d0;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ly5/p;

    invoke-interface {p3, p1, v0}, Ly5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, p2}, Lkotlinx/coroutines/internal/f0;->a(Lq5/g;Ljava/lang/Object;)V

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p0

    if-ne p1, p0, :cond_0

    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/h;->c(Lq5/d;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0, p2}, Lkotlinx/coroutines/internal/f0;->a(Lq5/g;Ljava/lang/Object;)V

    throw p1
.end method

.method public static synthetic c(Lq5/g;Ljava/lang/Object;Ljava/lang/Object;Ly5/p;Lq5/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    invoke-static {p0}, Lkotlinx/coroutines/internal/f0;->b(Lq5/g;)Ljava/lang/Object;

    move-result-object p2

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Ll6/f;->b(Lq5/g;Ljava/lang/Object;Ljava/lang/Object;Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final d(Lkotlinx/coroutines/flow/f;Lq5/g;)Lkotlinx/coroutines/flow/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/f<",
            "-TT;>;",
            "Lq5/g;",
            ")",
            "Lkotlinx/coroutines/flow/f<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Ll6/w;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ll6/r;

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ll6/y;

    invoke-direct {v0, p0, p1}, Ll6/y;-><init>(Lkotlinx/coroutines/flow/f;Lq5/g;)V

    move-object p0, v0

    :goto_1
    return-object p0
.end method
