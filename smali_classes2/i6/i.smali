.class final synthetic Li6/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lq5/g;Ly5/p;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq5/g;",
            "Ly5/p<",
            "-",
            "Li6/m0;",
            "-",
            "Lq5/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lq5/e;->f:Lq5/e$b;

    invoke-interface {p0, v1}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object v1

    check-cast v1, Lq5/e;

    if-nez v1, :cond_0

    sget-object v1, Li6/u2;->a:Li6/u2;

    invoke-virtual {v1}, Li6/u2;->b()Li6/f1;

    move-result-object v1

    sget-object v2, Li6/o1;->g:Li6/o1;

    invoke-interface {p0, v1}, Lq5/g;->plus(Lq5/g;)Lq5/g;

    move-result-object p0

    :goto_0
    invoke-static {v2, p0}, Li6/h0;->d(Li6/m0;Lq5/g;)Lq5/g;

    move-result-object p0

    goto :goto_4

    :cond_0
    instance-of v2, v1, Li6/f1;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Li6/f1;

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Li6/f1;->M()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v3, v1

    :cond_3
    :goto_2
    if-nez v3, :cond_4

    sget-object v1, Li6/u2;->a:Li6/u2;

    invoke-virtual {v1}, Li6/u2;->a()Li6/f1;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v3

    :goto_3
    sget-object v2, Li6/o1;->g:Li6/o1;

    goto :goto_0

    :goto_4
    new-instance v2, Li6/f;

    invoke-direct {v2, p0, v0, v1}, Li6/f;-><init>(Lq5/g;Ljava/lang/Thread;Li6/f1;)V

    sget-object p0, Li6/o0;->g:Li6/o0;

    invoke-virtual {v2, p0, v2, p1}, Li6/a;->P0(Li6/o0;Ljava/lang/Object;Ly5/p;)V

    invoke-virtual {v2}, Li6/f;->Q0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lq5/g;Ly5/p;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p0, Lq5/h;->g:Lq5/h;

    :cond_0
    invoke-static {p0, p1}, Li6/h;->c(Lq5/g;Ly5/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
