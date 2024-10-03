.class public abstract Lkotlin/coroutines/jvm/internal/d;
.super Lkotlin/coroutines/jvm/internal/a;
.source "SourceFile"


# instance fields
.field private final _context:Lq5/g;

.field private transient intercepted:Lq5/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq5/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq5/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lq5/d;->getContext()Lq5/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lq5/d;Lq5/g;)V

    return-void
.end method

.method public constructor <init>(Lq5/d;Lq5/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "Ljava/lang/Object;",
            ">;",
            "Lq5/g;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/a;-><init>(Lq5/d;)V

    iput-object p2, p0, Lkotlin/coroutines/jvm/internal/d;->_context:Lq5/g;

    return-void
.end method


# virtual methods
.method public getContext()Lq5/g;
    .locals 0

    iget-object p0, p0, Lkotlin/coroutines/jvm/internal/d;->_context:Lq5/g;

    invoke-static {p0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final intercepted()Lq5/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq5/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/d;->intercepted:Lq5/d;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/d;->getContext()Lq5/g;

    move-result-object v0

    sget-object v1, Lq5/e;->f:Lq5/e$b;

    invoke-interface {v0, v1}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object v0

    check-cast v0, Lq5/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lq5/e;->interceptContinuation(Lq5/d;)Lq5/d;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    :cond_1
    iput-object v0, p0, Lkotlin/coroutines/jvm/internal/d;->intercepted:Lq5/d;

    :cond_2
    return-object v0
.end method

.method protected releaseIntercepted()V
    .locals 3

    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/d;->intercepted:Lq5/d;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/d;->getContext()Lq5/g;

    move-result-object v1

    sget-object v2, Lq5/e;->f:Lq5/e$b;

    invoke-interface {v1, v2}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    check-cast v1, Lq5/e;

    invoke-interface {v1, v0}, Lq5/e;->releaseInterceptedContinuation(Lq5/d;)V

    :cond_0
    sget-object v0, Lkotlin/coroutines/jvm/internal/c;->g:Lkotlin/coroutines/jvm/internal/c;

    iput-object v0, p0, Lkotlin/coroutines/jvm/internal/d;->intercepted:Lq5/d;

    return-void
.end method
