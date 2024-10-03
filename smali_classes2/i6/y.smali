.class public final Li6/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Li6/v1;)Li6/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li6/v1;",
            ")",
            "Li6/w<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Li6/x;

    invoke-direct {v0, p0}, Li6/x;-><init>(Li6/v1;)V

    return-object v0
.end method

.method public static synthetic b(Li6/v1;ILjava/lang/Object;)Li6/w;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Li6/y;->a(Li6/v1;)Li6/w;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Li6/w;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li6/w<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    invoke-static {p1}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Li6/w;->t(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Li6/w;->s(Ljava/lang/Throwable;)Z

    move-result p0

    :goto_0
    return p0
.end method
