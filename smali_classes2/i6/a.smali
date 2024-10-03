.class public abstract Li6/a;
.super Li6/d2;
.source "SourceFile"

# interfaces
.implements Lq5/d;
.implements Li6/m0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li6/d2;",
        "Lq5/d<",
        "TT;>;",
        "Li6/m0;"
    }
.end annotation


# instance fields
.field private final h:Lq5/g;


# direct methods
.method public constructor <init>(Lq5/g;ZZ)V
    .locals 0

    invoke-direct {p0, p3}, Li6/d2;-><init>(Z)V

    if-eqz p2, :cond_0

    sget-object p2, Li6/v1;->d:Li6/v1$b;

    invoke-interface {p1, p2}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object p2

    check-cast p2, Li6/v1;

    invoke-virtual {p0, p2}, Li6/d2;->j0(Li6/v1;)V

    :cond_0
    invoke-interface {p1, p0}, Lq5/g;->plus(Lq5/g;)Lq5/g;

    move-result-object p1

    iput-object p1, p0, Li6/a;->h:Lq5/g;

    return-void
.end method


# virtual methods
.method protected M0(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Li6/d2;->L(Ljava/lang/Object;)V

    return-void
.end method

.method protected N0(Ljava/lang/Throwable;Z)V
    .locals 0

    return-void
.end method

.method protected O0(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final P0(Li6/o0;Ljava/lang/Object;Ly5/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li6/o0;",
            "TR;",
            "Ly5/p<",
            "-TR;-",
            "Lq5/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p3, p2, p0}, Li6/o0;->b(Ly5/p;Ljava/lang/Object;Lq5/d;)V

    return-void
.end method

.method protected T()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Li6/q0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " was cancelled"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a()Z
    .locals 0

    invoke-super {p0}, Li6/d2;->a()Z

    move-result p0

    return p0
.end method

.method public final getContext()Lq5/g;
    .locals 0

    iget-object p0, p0, Li6/a;->h:Lq5/g;

    return-object p0
.end method

.method public getCoroutineContext()Lq5/g;
    .locals 0

    iget-object p0, p0, Li6/a;->h:Lq5/g;

    return-object p0
.end method

.method public final i0(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Li6/a;->h:Lq5/g;

    invoke-static {p0, p1}, Li6/l0;->a(Lq5/g;Ljava/lang/Throwable;)V

    return-void
.end method

.method public r0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Li6/a;->h:Lq5/g;

    invoke-static {v0}, Li6/h0;->b(Lq5/g;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Li6/d2;->r0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Li6/d2;->r0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Li6/f0;->d(Ljava/lang/Object;Ly5/l;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Li6/d2;->p0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Li6/e2;->b:Lkotlinx/coroutines/internal/b0;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Li6/a;->M0(Ljava/lang/Object;)V

    return-void
.end method

.method protected final w0(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Li6/b0;

    if-eqz v0, :cond_0

    check-cast p1, Li6/b0;

    iget-object v0, p1, Li6/b0;->a:Ljava/lang/Throwable;

    invoke-virtual {p1}, Li6/b0;->a()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Li6/a;->N0(Ljava/lang/Throwable;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Li6/a;->O0(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
