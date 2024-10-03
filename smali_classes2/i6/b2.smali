.class final synthetic Li6/b2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Li6/v1;)Li6/z;
    .locals 1

    new-instance v0, Li6/y1;

    invoke-direct {v0, p0}, Li6/y1;-><init>(Li6/v1;)V

    return-object v0
.end method

.method public static synthetic b(Li6/v1;ILjava/lang/Object;)Li6/z;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Li6/z1;->a(Li6/v1;)Li6/z;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lq5/g;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    sget-object v0, Li6/v1;->d:Li6/v1$b;

    invoke-interface {p0, v0}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object p0

    check-cast p0, Li6/v1;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Li6/v1;->b(Ljava/util/concurrent/CancellationException;)V

    :goto_0
    return-void
.end method

.method public static synthetic d(Lq5/g;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Li6/z1;->c(Lq5/g;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final e(Li6/v1;Lq5/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/v1;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Li6/v1$a;->a(Li6/v1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    invoke-interface {p0, p1}, Li6/v1;->f(Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public static final f(Li6/v1;)V
    .locals 1

    invoke-interface {p0}, Li6/v1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Li6/v1;->h()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0
.end method

.method public static final g(Lq5/g;)V
    .locals 1

    sget-object v0, Li6/v1;->d:Li6/v1$b;

    invoke-interface {p0, v0}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object p0

    check-cast p0, Li6/v1;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Li6/z1;->g(Li6/v1;)V

    :goto_0
    return-void
.end method
