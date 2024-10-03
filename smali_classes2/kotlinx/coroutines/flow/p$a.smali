.class final Lkotlinx/coroutines/flow/p$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/p;->a(Lkotlinx/coroutines/flow/e;Ly5/p;)Lkotlinx/coroutines/flow/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
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

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "kotlinx.coroutines.flow.FlowKt__MergeKt$mapLatest$1"
    f = "Merge.kt"
    l = {
        0xd6,
        0xd6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field private synthetic h:Ljava/lang/Object;

.field synthetic i:Ljava/lang/Object;

.field final synthetic j:Ly5/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/p<",
            "TT;",
            "Lq5/d<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ly5/p;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/p<",
            "-TT;-",
            "Lq5/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lq5/d<",
            "-",
            "Lkotlinx/coroutines/flow/p$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/p$a;->j:Ly5/p;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/f;

    check-cast p3, Lq5/d;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/p$a;->invoke(Lkotlinx/coroutines/flow/f;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/flow/f;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/f<",
            "-TR;>;TT;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/flow/p$a;

    iget-object p0, p0, Lkotlinx/coroutines/flow/p$a;->j:Ly5/p;

    invoke-direct {v0, p0, p3}, Lkotlinx/coroutines/flow/p$a;-><init>(Ly5/p;Lq5/d;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/p$a;->h:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/p$a;->i:Ljava/lang/Object;

    sget-object p0, Ln5/t;->a:Ln5/t;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/flow/p$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlinx/coroutines/flow/p$a;->g:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/flow/p$a;->h:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/f;

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlinx/coroutines/flow/p$a;->h:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/flow/f;

    iget-object p1, p0, Lkotlinx/coroutines/flow/p$a;->i:Ljava/lang/Object;

    iget-object v4, p0, Lkotlinx/coroutines/flow/p$a;->j:Ly5/p;

    iput-object v1, p0, Lkotlinx/coroutines/flow/p$a;->h:Ljava/lang/Object;

    iput v3, p0, Lkotlinx/coroutines/flow/p$a;->g:I

    invoke-interface {v4, p1, p0}, Ly5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lkotlinx/coroutines/flow/p$a;->h:Ljava/lang/Object;

    iput v2, p0, Lkotlinx/coroutines/flow/p$a;->g:I

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/f;->emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
