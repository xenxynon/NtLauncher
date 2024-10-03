.class final synthetic Lkotlinx/coroutines/flow/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a()Ly5/a;
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/flow/s;->c()Ly5/a;

    move-result-object v0

    return-object v0
.end method

.method public static final b(Lkotlinx/coroutines/flow/e;Lkotlinx/coroutines/flow/e;Ly5/r;)Lkotlinx/coroutines/flow/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/e<",
            "+TT1;>;",
            "Lkotlinx/coroutines/flow/e<",
            "+TT2;>;",
            "Ly5/r<",
            "-",
            "Lkotlinx/coroutines/flow/f<",
            "-TR;>;-TT1;-TT2;-",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/flow/e<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlinx/coroutines/flow/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    new-instance p0, Lkotlinx/coroutines/flow/s$a;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1, p2}, Lkotlinx/coroutines/flow/s$a;-><init>([Lkotlinx/coroutines/flow/e;Lq5/d;Ly5/r;)V

    invoke-static {p0}, Lkotlinx/coroutines/flow/g;->p(Ly5/p;)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    return-object p0
.end method

.method private static final c()Ly5/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ly5/a<",
            "[TT;>;"
        }
    .end annotation

    sget-object v0, Lkotlinx/coroutines/flow/s$b;->g:Lkotlinx/coroutines/flow/s$b;

    return-object v0
.end method
