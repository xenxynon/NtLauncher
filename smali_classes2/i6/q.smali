.class public final Li6/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Li6/n;Li6/c1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/n<",
            "*>;",
            "Li6/c1;",
            ")V"
        }
    .end annotation

    new-instance v0, Li6/d1;

    invoke-direct {v0, p1}, Li6/d1;-><init>(Li6/c1;)V

    invoke-interface {p0, v0}, Li6/n;->d(Ly5/l;)V

    return-void
.end method

.method public static final b(Lq5/d;)Li6/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq5/d<",
            "-TT;>;)",
            "Li6/o<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lkotlinx/coroutines/internal/f;

    if-nez v0, :cond_0

    new-instance v0, Li6/o;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Li6/o;-><init>(Lq5/d;I)V

    return-object v0

    :cond_0
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/f;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/f;->l()Li6/o;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Li6/o;->J()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Li6/o;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Li6/o;-><init>(Lq5/d;I)V

    :cond_3
    return-object v0
.end method

.method public static final c(Li6/n;Lkotlinx/coroutines/internal/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/n<",
            "*>;",
            "Lkotlinx/coroutines/internal/o;",
            ")V"
        }
    .end annotation

    new-instance v0, Li6/l2;

    invoke-direct {v0, p1}, Li6/l2;-><init>(Lkotlinx/coroutines/internal/o;)V

    invoke-interface {p0, v0}, Li6/n;->d(Ly5/l;)V

    return-void
.end method
