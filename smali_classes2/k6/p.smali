.class public Lk6/p;
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


# instance fields
.field private final j:Ljava/util/concurrent/locks/ReentrantLock;

.field private k:Ljava/lang/Object;


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

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lk6/p;->j:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object p1, Lk6/b;->a:Lkotlinx/coroutines/internal/b0;

    iput-object p1, p0, Lk6/p;->k:Ljava/lang/Object;

    return-void
.end method

.method private final U(Ljava/lang/Object;)Lkotlinx/coroutines/internal/l0;
    .locals 4

    iget-object v0, p0, Lk6/p;->k:Ljava/lang/Object;

    sget-object v1, Lk6/b;->a:Lkotlinx/coroutines/internal/b0;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lk6/c;->g:Ly5/l;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3, v2}, Lkotlinx/coroutines/internal/v;->d(Ly5/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/l0;ILjava/lang/Object;)Lkotlinx/coroutines/internal/l0;

    move-result-object v2

    :goto_0
    iput-object p1, p0, Lk6/p;->k:Ljava/lang/Object;

    return-object v2
.end method


# virtual methods
.method protected J(Lk6/u;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/u<",
            "-TE;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lk6/p;->j:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-super {p0, p1}, Lk6/a;->J(Lk6/u;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method protected final K()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected final L()Z
    .locals 1

    iget-object p0, p0, Lk6/p;->k:Ljava/lang/Object;

    sget-object v0, Lk6/b;->a:Lkotlinx/coroutines/internal/b0;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected N(Z)V
    .locals 3

    iget-object v0, p0, Lk6/p;->j:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    sget-object v1, Lk6/b;->a:Lkotlinx/coroutines/internal/b0;

    invoke-direct {p0, v1}, Lk6/p;->U(Ljava/lang/Object;)Lkotlinx/coroutines/internal/l0;

    move-result-object v1

    sget-object v2, Ln5/t;->a:Ln5/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-super {p0, p1}, Lk6/a;->N(Z)V

    if-nez v1, :cond_0

    return-void

    :cond_0
    throw v1

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method protected R()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lk6/p;->j:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lk6/p;->k:Ljava/lang/Object;

    sget-object v2, Lk6/b;->a:Lkotlinx/coroutines/internal/b0;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lk6/c;->k()Lk6/m;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lk6/b;->d:Lkotlinx/coroutines/internal/b0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :cond_1
    :try_start_1
    iput-object v2, p0, Lk6/p;->k:Ljava/lang/Object;

    sget-object p0, Ln5/t;->a:Ln5/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method protected h()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lk6/p;->k:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    iget-object v0, p0, Lk6/p;->j:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lk6/c;->k()Lk6/m;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lk6/p;->k:Ljava/lang/Object;

    sget-object v2, Lk6/b;->a:Lkotlinx/coroutines/internal/b0;

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-virtual {p0}, Lk6/a;->A()Lk6/w;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lk6/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v1, p1, v2}, Lk6/w;->g(Ljava/lang/Object;Lkotlinx/coroutines/internal/o$b;)Lkotlinx/coroutines/internal/b0;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object p0, Ln5/t;->a:Ln5/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-interface {v1, p1}, Lk6/w;->e(Ljava/lang/Object;)V

    invoke-interface {v1}, Lk6/w;->b()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    :try_start_2
    invoke-direct {p0, p1}, Lk6/p;->U(Ljava/lang/Object;)Lkotlinx/coroutines/internal/l0;

    move-result-object p0

    if-nez p0, :cond_4

    sget-object p0, Lk6/b;->b:Lkotlinx/coroutines/internal/b0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :cond_4
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method
