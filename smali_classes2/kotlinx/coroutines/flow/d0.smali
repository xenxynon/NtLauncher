.class final Lkotlinx/coroutines/flow/d0;
.super Ll6/b;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/u;
.implements Lkotlinx/coroutines/flow/e;
.implements Ll6/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ll6/b<",
        "Lkotlinx/coroutines/flow/f0;",
        ">;",
        "Lkotlinx/coroutines/flow/u<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/e;",
        "Ll6/p<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile synthetic _state:Ljava/lang/Object;

.field private j:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ll6/b;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/flow/d0;->_state:Ljava/lang/Object;

    return-void
.end method

.method private final m(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p0}, Ll6/b;->j()[Ll6/d;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/flow/d0;->_state:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-static {v0, p2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    monitor-exit p0

    return v0

    :cond_1
    :try_start_2
    iput-object p2, p0, Lkotlinx/coroutines/flow/d0;->_state:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/flow/d0;->j:I

    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_6

    add-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/d0;->j:I

    invoke-virtual {p0}, Ll6/b;->j()[Ll6/d;

    move-result-object p2

    sget-object v2, Ln5/t;->a:Ln5/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    :goto_0
    check-cast p2, [Lkotlinx/coroutines/flow/f0;

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    array-length v2, p2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, p2, v3

    add-int/lit8 v3, v3, 0x1

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/f0;->f()V

    goto :goto_1

    :cond_4
    :goto_2
    monitor-enter p0

    :try_start_3
    iget p2, p0, Lkotlinx/coroutines/flow/d0;->j:I

    if-ne p2, p1, :cond_5

    add-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/d0;->j:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    :cond_5
    :try_start_4
    invoke-virtual {p0}, Ll6/b;->j()[Ll6/d;

    move-result-object p1

    sget-object v2, Ln5/t;->a:Ln5/t;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    move v5, p2

    move-object p2, p1

    move p1, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_6
    add-int/lit8 p1, p1, 0x2

    :try_start_5
    iput p1, p0, Lkotlinx/coroutines/flow/d0;->j:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return v0

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(Lq5/g;ILk6/e;)Lkotlinx/coroutines/flow/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g;",
            "I",
            "Lk6/e;",
            ")",
            "Lkotlinx/coroutines/flow/e<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/e0;->d(Lkotlinx/coroutines/flow/c0;Lq5/g;ILk6/e;)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/d0;->setValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public collect(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/f<",
            "-TT;>;",
            "Lq5/d<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/d0$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/d0$a;

    iget v1, v0, Lkotlinx/coroutines/flow/d0$a;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/d0$a;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/d0$a;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/d0$a;-><init>(Lkotlinx/coroutines/flow/d0;Lq5/d;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/d0$a;->l:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkotlinx/coroutines/flow/d0$a;->n:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/flow/d0$a;->k:Ljava/lang/Object;

    iget-object p1, v0, Lkotlinx/coroutines/flow/d0$a;->j:Ljava/lang/Object;

    check-cast p1, Li6/v1;

    iget-object v2, v0, Lkotlinx/coroutines/flow/d0$a;->i:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/f0;

    iget-object v6, v0, Lkotlinx/coroutines/flow/d0$a;->h:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/flow/f;

    iget-object v7, v0, Lkotlinx/coroutines/flow/d0$a;->g:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/flow/d0;

    :try_start_0
    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, p0

    move-object p0, v7

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/flow/d0$a;->k:Ljava/lang/Object;

    iget-object p1, v0, Lkotlinx/coroutines/flow/d0$a;->j:Ljava/lang/Object;

    check-cast p1, Li6/v1;

    iget-object v2, v0, Lkotlinx/coroutines/flow/d0$a;->i:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/f0;

    iget-object v6, v0, Lkotlinx/coroutines/flow/d0$a;->h:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/flow/f;

    iget-object v7, v0, Lkotlinx/coroutines/flow/d0$a;->g:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/flow/d0;

    :try_start_1
    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_3
    iget-object p0, v0, Lkotlinx/coroutines/flow/d0$a;->i:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/flow/f0;

    iget-object p0, v0, Lkotlinx/coroutines/flow/d0$a;->h:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lkotlinx/coroutines/flow/f;

    iget-object p0, v0, Lkotlinx/coroutines/flow/d0$a;->g:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/d0;

    :try_start_2
    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_4
    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ll6/b;->e()Ll6/d;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lkotlinx/coroutines/flow/f0;

    :try_start_3
    instance-of p2, p1, Lkotlinx/coroutines/flow/g0;

    if-eqz p2, :cond_5

    move-object p2, p1

    check-cast p2, Lkotlinx/coroutines/flow/g0;

    iput-object p0, v0, Lkotlinx/coroutines/flow/d0$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/d0$a;->h:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/d0$a;->i:Ljava/lang/Object;

    iput v6, v0, Lkotlinx/coroutines/flow/d0$a;->n:I

    invoke-virtual {p2, v0}, Lkotlinx/coroutines/flow/g0;->a(Lq5/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    invoke-interface {v0}, Lq5/d;->getContext()Lq5/g;

    move-result-object p2

    sget-object v6, Li6/v1;->d:Li6/v1$b;

    invoke-interface {p2, v6}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object p2

    check-cast p2, Li6/v1;

    move-object v6, p1

    move-object p1, p2

    move-object p2, v3

    :cond_6
    :goto_2
    iget-object v7, p0, Lkotlinx/coroutines/flow/d0;->_state:Ljava/lang/Object;

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {p1}, Li6/z1;->g(Li6/v1;)V

    :goto_3
    if-eqz p2, :cond_8

    invoke-static {p2, v7}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    :cond_8
    sget-object p2, Ll6/s;->a:Lkotlinx/coroutines/internal/b0;

    if-ne v7, p2, :cond_9

    move-object p2, v3

    goto :goto_4

    :cond_9
    move-object p2, v7

    :goto_4
    iput-object p0, v0, Lkotlinx/coroutines/flow/d0$a;->g:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/flow/d0$a;->h:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/d0$a;->i:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/d0$a;->j:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/flow/d0$a;->k:Ljava/lang/Object;

    iput v5, v0, Lkotlinx/coroutines/flow/d0$a;->n:I

    invoke-interface {v6, p2, v0}, Lkotlinx/coroutines/flow/f;->emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    return-object v1

    :cond_a
    move-object v9, v7

    move-object v7, p0

    move-object p0, v9

    :goto_5
    move-object p2, p0

    move-object p0, v7

    :cond_b
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/f0;->g()Z

    move-result v7

    if-nez v7, :cond_6

    iput-object p0, v0, Lkotlinx/coroutines/flow/d0$a;->g:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/flow/d0$a;->h:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/d0$a;->i:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/d0$a;->j:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/d0$a;->k:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/d0$a;->n:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/flow/f0;->d(Lq5/d;)Ljava/lang/Object;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v7, v1, :cond_6

    return-object v1

    :catchall_1
    move-exception p1

    move-object v7, p0

    move-object p0, p1

    :goto_6
    invoke-virtual {v7, v2}, Ll6/b;->h(Ll6/d;)V

    throw p0
.end method

.method public emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/d0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public bridge synthetic f()Ll6/d;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/d0;->k()Lkotlinx/coroutines/flow/f0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic g(I)[Ll6/d;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/d0;->l(I)[Lkotlinx/coroutines/flow/f0;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Ll6/s;->a:Lkotlinx/coroutines/internal/b0;

    iget-object p0, p0, Lkotlinx/coroutines/flow/d0;->_state:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method protected k()Lkotlinx/coroutines/flow/f0;
    .locals 0

    new-instance p0, Lkotlinx/coroutines/flow/f0;

    invoke-direct {p0}, Lkotlinx/coroutines/flow/f0;-><init>()V

    return-object p0
.end method

.method protected l(I)[Lkotlinx/coroutines/flow/f0;
    .locals 0

    new-array p0, p1, [Lkotlinx/coroutines/flow/f0;

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Ll6/s;->a:Lkotlinx/coroutines/internal/b0;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/flow/d0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
