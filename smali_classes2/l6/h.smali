.class public final Ll6/h;
.super Ll6/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ll6/g<",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/e;Lq5/g;ILk6/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/e<",
            "+TT;>;",
            "Lq5/g;",
            "I",
            "Lk6/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Ll6/g;-><init>(Lkotlinx/coroutines/flow/e;Lq5/g;ILk6/e;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/flow/e;Lq5/g;ILk6/e;ILkotlin/jvm/internal/i;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    sget-object p2, Lq5/h;->g:Lq5/h;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, -0x3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    sget-object p4, Lk6/e;->g:Lk6/e;

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Ll6/h;-><init>(Lkotlinx/coroutines/flow/e;Lq5/g;ILk6/e;)V

    return-void
.end method


# virtual methods
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

    new-instance v0, Ll6/h;

    iget-object p0, p0, Ll6/g;->j:Lkotlinx/coroutines/flow/e;

    invoke-direct {v0, p0, p1, p2, p3}, Ll6/h;-><init>(Lkotlinx/coroutines/flow/e;Lq5/g;ILk6/e;)V

    return-object v0
.end method

.method protected m(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/f<",
            "-TT;>;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Ll6/g;->j:Lkotlinx/coroutines/flow/e;

    invoke-interface {p0, p1, p2}, Lkotlinx/coroutines/flow/e;->collect(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
