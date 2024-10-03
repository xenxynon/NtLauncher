.class final Ll6/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final g:Lq5/g;

.field private final h:Ljava/lang/Object;

.field private final i:Ly5/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/p<",
            "TT;",
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
.method public constructor <init>(Lkotlinx/coroutines/flow/f;Lq5/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/f<",
            "-TT;>;",
            "Lq5/g;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ll6/y;->g:Lq5/g;

    invoke-static {p2}, Lkotlinx/coroutines/internal/f0;->b(Lq5/g;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Ll6/y;->h:Ljava/lang/Object;

    new-instance p2, Ll6/y$a;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Ll6/y$a;-><init>(Lkotlinx/coroutines/flow/f;Lq5/d;)V

    iput-object p2, p0, Ll6/y;->i:Ly5/p;

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Ll6/y;->g:Lq5/g;

    iget-object v1, p0, Ll6/y;->h:Ljava/lang/Object;

    iget-object p0, p0, Ll6/y;->i:Ly5/p;

    invoke-static {v0, p1, v1, p0, p2}, Ll6/f;->b(Lq5/g;Ljava/lang/Object;Ljava/lang/Object;Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
