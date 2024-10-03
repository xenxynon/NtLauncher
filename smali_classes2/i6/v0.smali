.class public final Li6/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(JLq5/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_0
    new-instance v0, Li6/o;

    invoke-static {p2}, Lr5/b;->b(Lq5/d;)Lq5/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Li6/o;-><init>(Lq5/d;I)V

    invoke-virtual {v0}, Li6/o;->z()V

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p0, v1

    if-gez v1, :cond_1

    invoke-interface {v0}, Lq5/d;->getContext()Lq5/g;

    move-result-object v1

    invoke-static {v1}, Li6/v0;->b(Lq5/g;)Li6/u0;

    move-result-object v1

    invoke-interface {v1, p0, p1, v0}, Li6/u0;->c(JLi6/n;)V

    :cond_1
    invoke-virtual {v0}, Li6/o;->u()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lq5/d;)V

    :cond_2
    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public static final b(Lq5/g;)Li6/u0;
    .locals 1

    sget-object v0, Lq5/e;->f:Lq5/e$b;

    invoke-interface {p0, v0}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object p0

    instance-of v0, p0, Li6/u0;

    if-eqz v0, :cond_0

    check-cast p0, Li6/u0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    invoke-static {}, Li6/s0;->a()Li6/u0;

    move-result-object p0

    :cond_1
    return-object p0
.end method
