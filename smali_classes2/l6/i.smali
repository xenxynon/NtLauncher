.class public final Ll6/i;
.super Ll6/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ll6/g<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field private final k:Ly5/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/q<",
            "Lkotlinx/coroutines/flow/f<",
            "-TR;>;TT;",
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
.method public constructor <init>(Ly5/q;Lkotlinx/coroutines/flow/e;Lq5/g;ILk6/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/q<",
            "-",
            "Lkotlinx/coroutines/flow/f<",
            "-TR;>;-TT;-",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/flow/e<",
            "+TT;>;",
            "Lq5/g;",
            "I",
            "Lk6/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4, p5}, Ll6/g;-><init>(Lkotlinx/coroutines/flow/e;Lq5/g;ILk6/e;)V

    iput-object p1, p0, Ll6/i;->k:Ly5/q;

    return-void
.end method

.method public synthetic constructor <init>(Ly5/q;Lkotlinx/coroutines/flow/e;Lq5/g;ILk6/e;ILkotlin/jvm/internal/i;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    sget-object p3, Lq5/h;->g:Lq5/h;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p4, -0x2

    :cond_1
    move v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    sget-object p5, Lk6/e;->g:Lk6/e;

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Ll6/i;-><init>(Ly5/q;Lkotlinx/coroutines/flow/e;Lq5/g;ILk6/e;)V

    return-void
.end method

.method public static final synthetic n(Ll6/i;)Ly5/q;
    .locals 0

    iget-object p0, p0, Ll6/i;->k:Ly5/q;

    return-object p0
.end method


# virtual methods
.method protected f(Lq5/g;ILk6/e;)Ll6/e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g;",
            "I",
            "Lk6/e;",
            ")",
            "Ll6/e<",
            "TR;>;"
        }
    .end annotation

    new-instance v6, Ll6/i;

    iget-object v1, p0, Ll6/i;->k:Ly5/q;

    iget-object v2, p0, Ll6/g;->j:Lkotlinx/coroutines/flow/e;

    move-object v0, v6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ll6/i;-><init>(Ly5/q;Lkotlinx/coroutines/flow/e;Lq5/g;ILk6/e;)V

    return-object v6
.end method

.method protected m(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/f<",
            "-TR;>;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Ll6/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ll6/i$a;-><init>(Ll6/i;Lkotlinx/coroutines/flow/f;Lq5/d;)V

    invoke-static {v0, p2}, Li6/n0;->c(Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
