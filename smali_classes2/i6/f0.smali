.class public final Li6/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lq5/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p1, p0, Li6/b0;

    if-eqz p1, :cond_0

    sget-object p1, Ln5/l;->h:Ln5/l$a;

    check-cast p0, Li6/b0;

    iget-object p0, p0, Li6/b0;->a:Ljava/lang/Throwable;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p1, Ln5/l;->h:Ln5/l$a;

    :goto_0
    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/lang/Object;Li6/n;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Li6/n<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Li6/b0;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Li6/b0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/i;)V

    :goto_0
    return-object p0
.end method

.method public static final c(Ljava/lang/Object;Ly5/l;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ly5/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    new-instance v0, Li6/c0;

    invoke-direct {v0, p0, p1}, Li6/c0;-><init>(Ljava/lang/Object;Ly5/l;)V

    move-object p0, v0

    goto :goto_0

    :cond_0
    new-instance p0, Li6/b0;

    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Li6/b0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/i;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Object;Ly5/l;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Li6/f0;->c(Ljava/lang/Object;Ly5/l;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
