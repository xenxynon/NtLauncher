.class public final Ll6/t;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/d;",
        "Lkotlinx/coroutines/flow/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final g:Lkotlinx/coroutines/flow/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final h:Lq5/g;

.field public final i:I

.field private j:Lq5/g;

.field private k:Lq5/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/f;Lq5/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/f<",
            "-TT;>;",
            "Lq5/g;",
            ")V"
        }
    .end annotation

    sget-object v0, Ll6/q;->g:Ll6/q;

    sget-object v1, Lq5/h;->g:Lq5/h;

    invoke-direct {p0, v0, v1}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lq5/d;Lq5/g;)V

    iput-object p1, p0, Ll6/t;->g:Lkotlinx/coroutines/flow/f;

    iput-object p2, p0, Ll6/t;->h:Lq5/g;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ll6/t$a;->g:Ll6/t$a;

    invoke-interface {p2, p1, v0}, Lq5/g;->fold(Ljava/lang/Object;Ly5/p;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Ll6/t;->i:I

    return-void
.end method

.method private final a(Lq5/g;Lq5/g;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g;",
            "Lq5/g;",
            "TT;)V"
        }
    .end annotation

    instance-of v0, p2, Ll6/l;

    if-eqz v0, :cond_0

    check-cast p2, Ll6/l;

    invoke-direct {p0, p2, p3}, Ll6/t;->g(Ll6/l;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p1}, Ll6/v;->a(Ll6/t;Lq5/g;)V

    return-void
.end method

.method private final e(Lq5/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p1}, Lq5/d;->getContext()Lq5/g;

    move-result-object v0

    invoke-static {v0}, Li6/z1;->h(Lq5/g;)V

    iget-object v1, p0, Ll6/t;->j:Lq5/g;

    if-eq v1, v0, :cond_0

    invoke-direct {p0, v0, v1, p2}, Ll6/t;->a(Lq5/g;Lq5/g;Ljava/lang/Object;)V

    iput-object v0, p0, Ll6/t;->j:Lq5/g;

    :cond_0
    iput-object p1, p0, Ll6/t;->k:Lq5/d;

    invoke-static {}, Ll6/u;->a()Ly5/q;

    move-result-object p1

    iget-object v0, p0, Ll6/t;->g:Lkotlinx/coroutines/flow/f;

    invoke-interface {p1, v0, p2, p0}, Ly5/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    iput-object p2, p0, Ll6/t;->k:Lq5/d;

    :cond_1
    return-object p1
.end method

.method private final g(Ll6/l;Ljava/lang/Object;)V
    .locals 2

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n            Flow exception transparency is violated:\n                Previous \'emit\' call has thrown exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Ll6/l;->g:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but then emission attempt of value \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' has been detected.\n                Emissions from \'catch\' blocks are prohibited in order to avoid unspecified behaviour, \'Flow.catch\' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lh6/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 1
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

    :try_start_0
    invoke-direct {p0, p2, p1}, Ll6/t;->e(Lq5/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lq5/d;)V

    :cond_0
    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :catchall_0
    move-exception p1

    new-instance v0, Ll6/l;

    invoke-interface {p2}, Lq5/d;->getContext()Lq5/g;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ll6/l;-><init>(Ljava/lang/Throwable;Lq5/g;)V

    iput-object v0, p0, Ll6/t;->j:Lq5/g;

    throw p1
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/e;
    .locals 1

    iget-object p0, p0, Ll6/t;->k:Lq5/d;

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/e;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/coroutines/jvm/internal/e;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getContext()Lq5/g;
    .locals 0

    iget-object p0, p0, Ll6/t;->j:Lq5/g;

    if-nez p0, :cond_0

    sget-object p0, Lq5/h;->g:Lq5/h;

    :cond_0
    return-object p0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ll6/l;

    invoke-virtual {p0}, Ll6/t;->getContext()Lq5/g;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ll6/l;-><init>(Ljava/lang/Throwable;Lq5/g;)V

    iput-object v1, p0, Ll6/t;->j:Lq5/g;

    :goto_0
    iget-object p0, p0, Ll6/t;->k:Lq5/d;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1}, Lq5/d;->resumeWith(Ljava/lang/Object;)V

    :goto_1
    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public releaseIntercepted()V
    .locals 0

    invoke-super {p0}, Lkotlin/coroutines/jvm/internal/d;->releaseIntercepted()V

    return-void
.end method
