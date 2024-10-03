.class final Lkotlinx/coroutines/flow/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/c0;
.implements Lkotlinx/coroutines/flow/e;
.implements Ll6/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/c0<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/e;",
        "Ll6/p<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final g:Li6/v1;

.field private final synthetic h:Lkotlinx/coroutines/flow/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/c0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/c0;Li6/v1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/c0<",
            "+TT;>;",
            "Li6/v1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/flow/w;->g:Li6/v1;

    iput-object p1, p0, Lkotlinx/coroutines/flow/w;->h:Lkotlinx/coroutines/flow/c0;

    return-void
.end method


# virtual methods
.method public a(Lq5/g;ILk6/e;)Lkotlinx/coroutines/flow/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g;",
            "I",
            "Lk6/e;",
            ")",
            "Lkotlinx/coroutines/flow/e<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/e0;->d(Lkotlinx/coroutines/flow/c0;Lq5/g;ILk6/e;)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    return-object p0
.end method

.method public collect(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/f<",
            "-TT;>;",
            "Lq5/d<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/coroutines/flow/w;->h:Lkotlinx/coroutines/flow/c0;

    invoke-interface {p0, p1, p2}, Lkotlinx/coroutines/flow/y;->collect(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
