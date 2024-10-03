.class public final Lkotlinx/coroutines/flow/s$a$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/s$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Ly5/q<",
        "Lkotlinx/coroutines/flow/f<",
        "-TR;>;[",
        "Ljava/lang/Object;",
        "Lq5/d<",
        "-",
        "Ln5/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$1$1"
    f = "Zip.kt"
    l = {
        0x14d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field private synthetic h:Ljava/lang/Object;

.field synthetic i:Ljava/lang/Object;

.field final synthetic j:Ly5/r;


# direct methods
.method public constructor <init>(Lq5/d;Ly5/r;)V
    .locals 0

    iput-object p2, p0, Lkotlinx/coroutines/flow/s$a$a;->j:Ly5/r;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/f;[Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/f<",
            "-TR;>;[",
            "Ljava/lang/Object;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/flow/s$a$a;

    iget-object p0, p0, Lkotlinx/coroutines/flow/s$a$a;->j:Ly5/r;

    invoke-direct {v0, p3, p0}, Lkotlinx/coroutines/flow/s$a$a;-><init>(Lq5/d;Ly5/r;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/s$a$a;->h:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/s$a$a;->i:Ljava/lang/Object;

    sget-object p0, Ln5/t;->a:Ln5/t;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/flow/s$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/f;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Lq5/d;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/s$a$a;->a(Lkotlinx/coroutines/flow/f;[Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlinx/coroutines/flow/s$a$a;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlinx/coroutines/flow/s$a$a;->h:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/f;

    iget-object v1, p0, Lkotlinx/coroutines/flow/s$a$a;->i:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iget-object v3, p0, Lkotlinx/coroutines/flow/s$a$a;->j:Ly5/r;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    aget-object v1, v1, v2

    iput v2, p0, Lkotlinx/coroutines/flow/s$a$a;->g:I

    const/4 v2, 0x6

    invoke-static {v2}, Lkotlin/jvm/internal/m;->c(I)V

    invoke-interface {v3, p1, v4, v1, p0}, Ly5/r;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x7

    invoke-static {p1}, Lkotlin/jvm/internal/m;->c(I)V

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
