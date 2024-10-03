.class public final Lkotlinx/coroutines/flow/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/o;->a(Lkotlinx/coroutines/flow/e;Ly5/p;)Lkotlinx/coroutines/flow/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic g:Lkotlinx/coroutines/flow/e;

.field final synthetic h:Ly5/p;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/e;Ly5/p;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/o$a;->g:Lkotlinx/coroutines/flow/e;

    iput-object p2, p0, Lkotlinx/coroutines/flow/o$a;->h:Ly5/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;
    .locals 3
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

    new-instance v0, Lkotlin/jvm/internal/x;

    invoke-direct {v0}, Lkotlin/jvm/internal/x;-><init>()V

    iget-object v1, p0, Lkotlinx/coroutines/flow/o$a;->g:Lkotlinx/coroutines/flow/e;

    new-instance v2, Lkotlinx/coroutines/flow/o$b;

    iget-object p0, p0, Lkotlinx/coroutines/flow/o$a;->h:Ly5/p;

    invoke-direct {v2, v0, p1, p0}, Lkotlinx/coroutines/flow/o$b;-><init>(Lkotlin/jvm/internal/x;Lkotlinx/coroutines/flow/f;Ly5/p;)V

    invoke-interface {v1, v2, p2}, Lkotlinx/coroutines/flow/e;->collect(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
