.class public final Lkotlinx/coroutines/flow/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/n;->a(Lkotlinx/coroutines/flow/e;Ly5/q;)Lkotlinx/coroutines/flow/e;
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

.field final synthetic h:Ly5/q;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/e;Ly5/q;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/n$a;->g:Lkotlinx/coroutines/flow/e;

    iput-object p2, p0, Lkotlinx/coroutines/flow/n$a;->h:Ly5/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p2, Lkotlinx/coroutines/flow/n$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/n$a$a;

    iget v1, v0, Lkotlinx/coroutines/flow/n$a$a;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/n$a$a;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/n$a$a;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/n$a$a;-><init>(Lkotlinx/coroutines/flow/n$a;Lq5/d;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/n$a$a;->g:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkotlinx/coroutines/flow/n$a$a;->h:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/flow/n$a$a;->k:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lkotlinx/coroutines/flow/f;

    iget-object p0, v0, Lkotlinx/coroutines/flow/n$a$a;->j:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/n$a;

    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lkotlinx/coroutines/flow/n$a;->g:Lkotlinx/coroutines/flow/e;

    iput-object p0, v0, Lkotlinx/coroutines/flow/n$a$a;->j:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/n$a$a;->k:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/n$a$a;->h:I

    invoke-static {p2, p1, v0}, Lkotlinx/coroutines/flow/g;->g(Lkotlinx/coroutines/flow/e;Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/Throwable;

    if-eqz p2, :cond_5

    iget-object p0, p0, Lkotlinx/coroutines/flow/n$a;->h:Ly5/q;

    const/4 v2, 0x0

    iput-object v2, v0, Lkotlinx/coroutines/flow/n$a$a;->j:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/n$a$a;->k:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/n$a$a;->h:I

    const/4 v2, 0x6

    invoke-static {v2}, Lkotlin/jvm/internal/m;->c(I)V

    invoke-interface {p0, p1, p2, v0}, Ly5/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x7

    invoke-static {p1}, Lkotlin/jvm/internal/m;->c(I)V

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
