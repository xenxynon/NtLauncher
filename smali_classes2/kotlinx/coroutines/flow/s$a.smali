.class public final Lkotlinx/coroutines/flow/s$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/s;->b(Lkotlinx/coroutines/flow/e;Lkotlinx/coroutines/flow/e;Ly5/r;)Lkotlinx/coroutines/flow/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Ly5/p<",
        "Lkotlinx/coroutines/flow/f<",
        "-TR;>;",
        "Lq5/d<",
        "-",
        "Ln5/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$1"
    f = "Zip.kt"
    l = {
        0x111
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field private synthetic h:Ljava/lang/Object;

.field final synthetic i:[Lkotlinx/coroutines/flow/e;

.field final synthetic j:Ly5/r;


# direct methods
.method public constructor <init>([Lkotlinx/coroutines/flow/e;Lq5/d;Ly5/r;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/s$a;->i:[Lkotlinx/coroutines/flow/e;

    iput-object p3, p0, Lkotlinx/coroutines/flow/s$a;->j:Ly5/r;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lq5/d<",
            "*>;)",
            "Lq5/d<",
            "Ln5/t;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/flow/s$a;

    iget-object v1, p0, Lkotlinx/coroutines/flow/s$a;->i:[Lkotlinx/coroutines/flow/e;

    iget-object p0, p0, Lkotlinx/coroutines/flow/s$a;->j:Ly5/r;

    invoke-direct {v0, v1, p2, p0}, Lkotlinx/coroutines/flow/s$a;-><init>([Lkotlinx/coroutines/flow/e;Lq5/d;Ly5/r;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/s$a;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/f;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/s$a;->invoke(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;
    .locals 0
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

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/s$a;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/flow/s$a;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/s$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlinx/coroutines/flow/s$a;->g:I

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

    iget-object p1, p0, Lkotlinx/coroutines/flow/s$a;->h:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/f;

    iget-object v1, p0, Lkotlinx/coroutines/flow/s$a;->i:[Lkotlinx/coroutines/flow/e;

    invoke-static {}, Lkotlinx/coroutines/flow/s;->a()Ly5/a;

    move-result-object v3

    new-instance v4, Lkotlinx/coroutines/flow/s$a$a;

    const/4 v5, 0x0

    iget-object v6, p0, Lkotlinx/coroutines/flow/s$a;->j:Ly5/r;

    invoke-direct {v4, v5, v6}, Lkotlinx/coroutines/flow/s$a$a;-><init>(Lq5/d;Ly5/r;)V

    iput v2, p0, Lkotlinx/coroutines/flow/s$a;->g:I

    invoke-static {p1, v1, v3, v4, p0}, Ll6/k;->a(Lkotlinx/coroutines/flow/f;[Lkotlinx/coroutines/flow/e;Ly5/a;Ly5/q;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
