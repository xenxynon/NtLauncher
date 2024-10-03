.class public final Ll6/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/flow/f;[Lkotlinx/coroutines/flow/e;Ly5/a;Ly5/q;Lq5/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/f<",
            "-TR;>;[",
            "Lkotlinx/coroutines/flow/e<",
            "+TT;>;",
            "Ly5/a<",
            "[TT;>;",
            "Ly5/q<",
            "-",
            "Lkotlinx/coroutines/flow/f<",
            "-TR;>;-[TT;-",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v6, Ll6/k$a;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Ll6/k$a;-><init>([Lkotlinx/coroutines/flow/e;Ly5/a;Ly5/q;Lkotlinx/coroutines/flow/f;Lq5/d;)V

    invoke-static {v6, p4}, Ll6/n;->a(Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
