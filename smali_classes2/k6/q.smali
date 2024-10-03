.class public Lk6/q;
.super Lk6/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lk6/a<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ly5/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/l<",
            "-TE;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lk6/a;-><init>(Ly5/l;)V

    return-void
.end method


# virtual methods
.method protected final K()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected final L()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected O(Ljava/lang/Object;Lk6/m;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lk6/m<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    instance-of v1, p1, Ljava/util/ArrayList;

    if-nez v1, :cond_3

    check-cast p1, Lk6/y;

    instance-of v1, p1, Lk6/c$a;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lk6/c;->g:Ly5/l;

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lk6/c$a;

    iget-object p1, p1, Lk6/c$a;->j:Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/internal/v;->c(Ly5/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/l0;)Lkotlinx/coroutines/internal/l0;

    move-result-object p0

    move-object v0, p0

    goto :goto_2

    :cond_2
    invoke-virtual {p1, p2}, Lk6/y;->B(Lk6/m;)V

    goto :goto_2

    :cond_3
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_7

    move-object v2, v0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk6/y;

    instance-of v4, v1, Lk6/c$a;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lk6/c;->g:Ly5/l;

    if-nez v4, :cond_4

    move-object v2, v0

    goto :goto_1

    :cond_4
    check-cast v1, Lk6/c$a;

    iget-object v1, v1, Lk6/c$a;->j:Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lkotlinx/coroutines/internal/v;->c(Ly5/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/l0;)Lkotlinx/coroutines/internal/l0;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p2}, Lk6/y;->B(Lk6/m;)V

    :goto_1
    if-gez v3, :cond_6

    move-object v0, v2

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_0

    :cond_7
    :goto_2
    if-nez v0, :cond_8

    return-void

    :cond_8
    throw v0
.end method

.method protected final t()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected final u()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected w(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :cond_0
    invoke-super {p0, p1}, Lk6/c;->w(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lk6/b;->b:Lkotlinx/coroutines/internal/b0;

    if-ne v0, v1, :cond_1

    return-object v1

    :cond_1
    sget-object v2, Lk6/b;->c:Lkotlinx/coroutines/internal/b0;

    if-ne v0, v2, :cond_3

    invoke-virtual {p0, p1}, Lk6/c;->y(Ljava/lang/Object;)Lk6/w;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    instance-of v1, v0, Lk6/m;

    if-eqz v1, :cond_0

    return-object v0

    :cond_3
    instance-of p0, v0, Lk6/m;

    if-eqz p0, :cond_4

    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid offerInternal result "

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
