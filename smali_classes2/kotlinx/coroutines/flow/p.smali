.class final synthetic Lkotlinx/coroutines/flow/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "kotlinx.coroutines.flow.defaultConcurrency"

    const/16 v1, 0x10

    const/4 v2, 0x1

    const v3, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/internal/c0;->b(Ljava/lang/String;III)I

    move-result v0

    sput v0, Lkotlinx/coroutines/flow/p;->a:I

    return-void
.end method

.method public static final a(Lkotlinx/coroutines/flow/e;Ly5/p;)Lkotlinx/coroutines/flow/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/e<",
            "+TT;>;",
            "Ly5/p<",
            "-TT;-",
            "Lq5/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/flow/e<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/flow/p$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/flow/p$a;-><init>(Ly5/p;Lq5/d;)V

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/g;->u(Lkotlinx/coroutines/flow/e;Ly5/q;)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lkotlinx/coroutines/flow/e;Ly5/q;)Lkotlinx/coroutines/flow/e;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/e<",
            "+TT;>;",
            "Ly5/q<",
            "-",
            "Lkotlinx/coroutines/flow/f<",
            "-TR;>;-TT;-",
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

    new-instance v8, Ll6/i;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Ll6/i;-><init>(Ly5/q;Lkotlinx/coroutines/flow/e;Lq5/g;ILk6/e;ILkotlin/jvm/internal/i;)V

    return-object v8
.end method
