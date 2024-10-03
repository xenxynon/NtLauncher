.class public final Li6/w2;
.super Lkotlinx/coroutines/internal/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private j:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ln5/k<",
            "Lq5/g;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq5/g;Lq5/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g;",
            "Lq5/d<",
            "-TT;>;)V"
        }
    .end annotation

    sget-object v0, Li6/x2;->g:Li6/x2;

    invoke-interface {p1, v0}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Lq5/g;->plus(Lq5/g;)Lq5/g;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/internal/z;-><init>(Lq5/g;Lq5/d;)V

    new-instance p1, Ljava/lang/ThreadLocal;

    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Li6/w2;->j:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method protected M0(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Li6/w2;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ln5/k;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq5/g;

    invoke-virtual {v0}, Ln5/k;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlinx/coroutines/internal/f0;->a(Lq5/g;Ljava/lang/Object;)V

    iget-object v0, p0, Li6/w2;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/z;->i:Lq5/d;

    invoke-static {p1, v0}, Li6/f0;->a(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/coroutines/internal/z;->i:Lq5/d;

    invoke-interface {v0}, Lq5/d;->getContext()Lq5/g;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/f0;->c(Lq5/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/internal/f0;->a:Lkotlinx/coroutines/internal/b0;

    if-eq v3, v4, :cond_1

    invoke-static {v0, v2, v3}, Li6/h0;->g(Lq5/d;Lq5/g;Ljava/lang/Object;)Li6/w2;

    move-result-object v1

    :cond_1
    :try_start_0
    iget-object p0, p0, Lkotlinx/coroutines/internal/z;->i:Lq5/d;

    invoke-interface {p0, p1}, Lq5/d;->resumeWith(Ljava/lang/Object;)V

    sget-object p0, Ln5/t;->a:Ln5/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Li6/w2;->R0()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/f0;->a(Lq5/g;Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Li6/w2;->R0()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/f0;->a(Lq5/g;Ljava/lang/Object;)V

    :cond_5
    throw p0
.end method

.method public final R0()Z
    .locals 1

    iget-object v0, p0, Li6/w2;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Li6/w2;->j:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final S0(Lq5/g;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Li6/w2;->j:Ljava/lang/ThreadLocal;

    invoke-static {p1, p2}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
