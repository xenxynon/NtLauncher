.class public final Lk6/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(ILk6/e;Ly5/l;)Lk6/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I",
            "Lk6/e;",
            "Ly5/l<",
            "-TE;",
            "Ln5/t;",
            ">;)",
            "Lk6/f<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_7

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    if-eqz p0, :cond_2

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    sget-object v0, Lk6/e;->h:Lk6/e;

    if-ne p1, v0, :cond_0

    new-instance p0, Lk6/p;

    invoke-direct {p0, p2}, Lk6/p;-><init>(Ly5/l;)V

    goto :goto_1

    :cond_0
    new-instance v0, Lk6/d;

    invoke-direct {v0, p0, p1, p2}, Lk6/d;-><init>(ILk6/e;Ly5/l;)V

    move-object p0, v0

    goto :goto_1

    :cond_1
    new-instance p0, Lk6/q;

    invoke-direct {p0, p2}, Lk6/q;-><init>(Ly5/l;)V

    goto :goto_1

    :cond_2
    sget-object p0, Lk6/e;->g:Lk6/e;

    if-ne p1, p0, :cond_3

    new-instance p0, Lk6/x;

    invoke-direct {p0, p2}, Lk6/x;-><init>(Ly5/l;)V

    goto :goto_1

    :cond_3
    new-instance p0, Lk6/d;

    invoke-direct {p0, v1, p1, p2}, Lk6/d;-><init>(ILk6/e;Ly5/l;)V

    goto :goto_1

    :cond_4
    sget-object p0, Lk6/e;->g:Lk6/e;

    if-ne p1, p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    new-instance p0, Lk6/p;

    invoke-direct {p0, p2}, Lk6/p;-><init>(Ly5/l;)V

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lk6/d;

    sget-object v0, Lk6/e;->g:Lk6/e;

    if-ne p1, v0, :cond_8

    sget-object v0, Lk6/f;->e:Lk6/f$a;

    invoke-virtual {v0}, Lk6/f$a;->a()I

    move-result v1

    :cond_8
    invoke-direct {p0, v1, p1, p2}, Lk6/d;-><init>(ILk6/e;Ly5/l;)V

    :goto_1
    return-object p0
.end method

.method public static synthetic b(ILk6/e;Ly5/l;ILjava/lang/Object;)Lk6/f;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    :cond_0
    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_1

    sget-object p1, Lk6/e;->g:Lk6/e;

    :cond_1
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_2

    const/4 p2, 0x0

    :cond_2
    invoke-static {p0, p1, p2}, Lk6/i;->a(ILk6/e;Ly5/l;)Lk6/f;

    move-result-object p0

    return-object p0
.end method
