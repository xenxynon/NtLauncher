.class final Ll6/k$a$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll6/k$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Ly5/p<",
        "Li6/m0;",
        "Lq5/d<",
        "-",
        "Ln5/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1"
    f = "Combine.kt"
    l = {
        0x22
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field final synthetic h:[Lkotlinx/coroutines/flow/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/flow/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic i:I

.field final synthetic j:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic k:Lk6/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/f<",
            "Lo5/z<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Lkotlinx/coroutines/flow/e;ILjava/util/concurrent/atomic/AtomicInteger;Lk6/f;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/flow/e<",
            "+TT;>;I",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lk6/f<",
            "Lo5/z<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lq5/d<",
            "-",
            "Ll6/k$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ll6/k$a$a;->h:[Lkotlinx/coroutines/flow/e;

    iput p2, p0, Ll6/k$a$a;->i:I

    iput-object p3, p0, Ll6/k$a$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Ll6/k$a$a;->k:Lk6/f;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 6
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

    new-instance p1, Ll6/k$a$a;

    iget-object v1, p0, Ll6/k$a$a;->h:[Lkotlinx/coroutines/flow/e;

    iget v2, p0, Ll6/k$a$a;->i:I

    iget-object v3, p0, Ll6/k$a$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Ll6/k$a$a;->k:Lk6/f;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ll6/k$a$a;-><init>([Lkotlinx/coroutines/flow/e;ILjava/util/concurrent/atomic/AtomicInteger;Lk6/f;Lq5/d;)V

    return-object p1
.end method

.method public final invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/m0;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ll6/k$a$a;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Ll6/k$a$a;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Ll6/k$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Ll6/k$a$a;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ll6/k$a$a;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Ll6/k$a$a;->h:[Lkotlinx/coroutines/flow/e;

    iget v1, p0, Ll6/k$a$a;->i:I

    aget-object p1, p1, v1

    new-instance v4, Ll6/k$a$a$a;

    iget-object v5, p0, Ll6/k$a$a;->k:Lk6/f;

    invoke-direct {v4, v5, v1}, Ll6/k$a$a$a;-><init>(Lk6/f;I)V

    iput v3, p0, Ll6/k$a$a;->g:I

    invoke-interface {p1, v4, p0}, Lkotlinx/coroutines/flow/e;->collect(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Ll6/k$a$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Ll6/k$a$a;->k:Lk6/f;

    invoke-static {p0, v2, v3, v2}, Lk6/z$a;->a(Lk6/z;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    :cond_3
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :goto_1
    iget-object v0, p0, Ll6/k$a$a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Ll6/k$a$a;->k:Lk6/f;

    invoke-static {p0, v2, v3, v2}, Lk6/z$a;->a(Lk6/z;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    :cond_4
    throw p1
.end method
