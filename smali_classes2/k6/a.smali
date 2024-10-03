.class public abstract Lk6/a;
.super Lk6/c;
.source "SourceFile"

# interfaces
.implements Lk6/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk6/a$e;,
        Lk6/a$a;,
        Lk6/a$b;,
        Lk6/a$c;,
        Lk6/a$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lk6/c<",
        "TE;>;",
        "Lk6/f<",
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

    invoke-direct {p0, p1}, Lk6/c;-><init>(Ly5/l;)V

    return-void
.end method

.method public static final synthetic F(Lk6/a;Lk6/u;)Z
    .locals 0

    invoke-direct {p0, p1}, Lk6/a;->I(Lk6/u;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic G(Lk6/a;Li6/n;Lk6/u;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lk6/a;->T(Li6/n;Lk6/u;)V

    return-void
.end method

.method private final I(Lk6/u;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/u<",
            "-TE;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lk6/a;->J(Lk6/u;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lk6/a;->Q()V

    :cond_0
    return p1
.end method

.method private final S(ILq5/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(I",
            "Lq5/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p2}, Lr5/b;->b(Lq5/d;)Lq5/d;

    move-result-object v0

    invoke-static {v0}, Li6/q;->b(Lq5/d;)Li6/o;

    move-result-object v0

    iget-object v1, p0, Lk6/c;->g:Ly5/l;

    if-nez v1, :cond_0

    new-instance v1, Lk6/a$b;

    invoke-direct {v1, v0, p1}, Lk6/a$b;-><init>(Li6/n;I)V

    goto :goto_0

    :cond_0
    new-instance v1, Lk6/a$c;

    iget-object v2, p0, Lk6/c;->g:Ly5/l;

    invoke-direct {v1, v0, p1, v2}, Lk6/a$c;-><init>(Li6/n;ILy5/l;)V

    :cond_1
    :goto_0
    invoke-static {p0, v1}, Lk6/a;->F(Lk6/a;Lk6/u;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0, v0, v1}, Lk6/a;->G(Lk6/a;Li6/n;Lk6/u;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lk6/a;->R()Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lk6/m;

    if-eqz v2, :cond_3

    check-cast p1, Lk6/m;

    invoke-virtual {v1, p1}, Lk6/a$b;->B(Lk6/m;)V

    goto :goto_1

    :cond_3
    sget-object v2, Lk6/b;->d:Lkotlinx/coroutines/internal/b0;

    if-eq p1, v2, :cond_1

    invoke-virtual {v1, p1}, Lk6/a$b;->C(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p1}, Lk6/u;->A(Ljava/lang/Object;)Ly5/l;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Li6/n;->k(Ljava/lang/Object;Ly5/l;)V

    :goto_1
    invoke-virtual {v0}, Li6/o;->u()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_4

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lq5/d;)V

    :cond_4
    return-object p0
.end method

.method private final T(Li6/n;Lk6/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/n<",
            "*>;",
            "Lk6/u<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Lk6/a$e;

    invoke-direct {v0, p0, p2}, Lk6/a$e;-><init>(Lk6/a;Lk6/u;)V

    invoke-interface {p1, v0}, Li6/n;->d(Ly5/l;)V

    return-void
.end method


# virtual methods
.method protected A()Lk6/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk6/w<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0}, Lk6/c;->A()Lk6/w;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lk6/m;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lk6/a;->P()V

    :cond_0
    return-object v0
.end method

.method public final H(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lk6/c;->q(Ljava/lang/Throwable;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lk6/a;->N(Z)V

    return p1
.end method

.method protected J(Lk6/u;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/u<",
            "-TE;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lk6/a;->K()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lk6/c;->l()Lkotlinx/coroutines/internal/m;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->q()Lkotlinx/coroutines/internal/o;

    move-result-object p0

    instance-of v3, p0, Lk6/y;

    xor-int/2addr v3, v2

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/internal/o;->j(Lkotlinx/coroutines/internal/o;Lkotlinx/coroutines/internal/o;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lk6/c;->l()Lkotlinx/coroutines/internal/m;

    move-result-object v0

    new-instance v3, Lk6/a$f;

    invoke-direct {v3, p1, p0}, Lk6/a$f;-><init>(Lkotlinx/coroutines/internal/o;Lk6/a;)V

    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->q()Lkotlinx/coroutines/internal/o;

    move-result-object p0

    instance-of v4, p0, Lk6/y;

    xor-int/2addr v4, v2

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, v0, v3}, Lkotlinx/coroutines/internal/o;->y(Lkotlinx/coroutines/internal/o;Lkotlinx/coroutines/internal/o;Lkotlinx/coroutines/internal/o$a;)I

    move-result p0

    if-eq p0, v2, :cond_4

    const/4 v4, 0x2

    if-eq p0, v4, :cond_5

    goto :goto_0

    :cond_4
    :goto_1
    move v1, v2

    :cond_5
    :goto_2
    return v1
.end method

.method protected abstract K()Z
.end method

.method protected abstract L()Z
.end method

.method public M()Z
    .locals 1

    invoke-virtual {p0}, Lk6/c;->j()Lk6/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lk6/a;->L()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected N(Z)V
    .locals 3

    invoke-virtual {p0}, Lk6/c;->k()Lk6/m;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1, v0, v1}, Lkotlinx/coroutines/internal/j;->b(Ljava/lang/Object;ILkotlin/jvm/internal/i;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->q()Lkotlinx/coroutines/internal/o;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/coroutines/internal/m;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, p1}, Lk6/a;->O(Ljava/lang/Object;Lk6/m;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/o;->u()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/o;->r()V

    goto :goto_0

    :cond_1
    check-cast v1, Lk6/y;

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/j;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot happen"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected O(Ljava/lang/Object;Lk6/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lk6/m<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of p0, p1, Ljava/util/ArrayList;

    if-nez p0, :cond_1

    check-cast p1, Lk6/y;

    invoke-virtual {p1, p2}, Lk6/y;->B(Lk6/m;)V

    goto :goto_1

    :cond_1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_3

    :goto_0
    add-int/lit8 v0, p0, -0x1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk6/y;

    invoke-virtual {p0, p2}, Lk6/y;->B(Lk6/m;)V

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    move p0, v0

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method protected P()V
    .locals 0

    return-void
.end method

.method protected Q()V
    .locals 0

    return-void
.end method

.method protected R()Ljava/lang/Object;
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lk6/c;->D()Lk6/y;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lk6/b;->d:Lkotlinx/coroutines/internal/b0;

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lk6/y;->C(Lkotlinx/coroutines/internal/o$b;)Lkotlinx/coroutines/internal/b0;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lk6/y;->z()V

    invoke-virtual {v0}, Lk6/y;->A()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lk6/y;->D()V

    goto :goto_0
.end method

.method public final b(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    invoke-virtual {p0}, Lk6/a;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-static {p0}, Li6/q0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " was cancelled"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lk6/a;->H(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final e(Lq5/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-",
            "Lk6/j<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lk6/a$g;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lk6/a$g;

    iget v1, v0, Lk6/a$g;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lk6/a$g;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Lk6/a$g;

    invoke-direct {v0, p0, p1}, Lk6/a$g;-><init>(Lk6/a;Lq5/d;)V

    :goto_0
    iget-object p1, v0, Lk6/a$g;->g:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lk6/a$g;->i:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lk6/a;->R()Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lk6/b;->d:Lkotlinx/coroutines/internal/b0;

    if-eq p1, v2, :cond_4

    instance-of p0, p1, Lk6/m;

    if-eqz p0, :cond_3

    sget-object p0, Lk6/j;->b:Lk6/j$b;

    check-cast p1, Lk6/m;

    iget-object p1, p1, Lk6/m;->j:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lk6/j$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_3
    sget-object p0, Lk6/j;->b:Lk6/j$b;

    invoke-virtual {p0, p1}, Lk6/j$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    iput v3, v0, Lk6/a$g;->i:I

    invoke-direct {p0, v3, v0}, Lk6/a;->S(ILq5/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p1, Lk6/j;

    invoke-virtual {p1}, Lk6/j;->l()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final i()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lk6/a;->R()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lk6/b;->d:Lkotlinx/coroutines/internal/b0;

    if-ne p0, v0, :cond_0

    sget-object p0, Lk6/j;->b:Lk6/j$b;

    invoke-virtual {p0}, Lk6/j$b;->b()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lk6/m;

    if-eqz v0, :cond_1

    sget-object v0, Lk6/j;->b:Lk6/j$b;

    check-cast p0, Lk6/m;

    iget-object p0, p0, Lk6/m;->j:Ljava/lang/Throwable;

    invoke-virtual {v0, p0}, Lk6/j$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lk6/j;->b:Lk6/j$b;

    invoke-virtual {v0, p0}, Lk6/j$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final iterator()Lk6/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk6/h<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lk6/a$a;

    invoke-direct {v0, p0}, Lk6/a$a;-><init>(Lk6/a;)V

    return-object v0
.end method

.method public final o(Lq5/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Lk6/a;->R()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lk6/b;->d:Lkotlinx/coroutines/internal/b0;

    if-eq v0, v1, :cond_0

    instance-of v1, v0, Lk6/m;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lk6/a;->S(ILq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
