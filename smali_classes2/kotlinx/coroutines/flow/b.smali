.class final Lkotlinx/coroutines/flow/b;
.super Lkotlinx/coroutines/flow/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/flow/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final k:Ly5/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/p<",
            "Lk6/t<",
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


# direct methods
.method public constructor <init>(Ly5/p;Lq5/g;ILk6/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/p<",
            "-",
            "Lk6/t<",
            "-TT;>;-",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lq5/g;",
            "I",
            "Lk6/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/flow/c;-><init>(Ly5/p;Lq5/g;ILk6/e;)V

    iput-object p1, p0, Lkotlinx/coroutines/flow/b;->k:Ly5/p;

    return-void
.end method

.method public synthetic constructor <init>(Ly5/p;Lq5/g;ILk6/e;ILkotlin/jvm/internal/i;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    sget-object p2, Lq5/h;->g:Lq5/h;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, -0x2

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    sget-object p4, Lk6/e;->g:Lk6/e;

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/flow/b;-><init>(Ly5/p;Lq5/g;ILk6/e;)V

    return-void
.end method


# virtual methods
.method protected e(Lk6/t;Lq5/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/t<",
            "-TT;>;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/b$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/b$a;

    iget v1, v0, Lkotlinx/coroutines/flow/b$a;->j:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/b$a;->j:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/b$a;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/b$a;-><init>(Lkotlinx/coroutines/flow/b;Lq5/d;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/b$a;->h:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkotlinx/coroutines/flow/b$a;->j:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/flow/b$a;->g:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lk6/t;

    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/b$a;->g:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/b$a;->j:I

    invoke-super {p0, p1, v0}, Lkotlinx/coroutines/flow/c;->e(Lk6/t;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-interface {p1}, Lk6/z;->E()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\'awaitClose { yourCallbackOrListener.cancel() }\' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected f(Lq5/g;ILk6/e;)Ll6/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g;",
            "I",
            "Lk6/e;",
            ")",
            "Ll6/e<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/flow/b;

    iget-object p0, p0, Lkotlinx/coroutines/flow/b;->k:Ly5/p;

    invoke-direct {v0, p0, p1, p2, p3}, Lkotlinx/coroutines/flow/b;-><init>(Ly5/p;Lq5/g;ILk6/e;)V

    return-object v0
.end method
