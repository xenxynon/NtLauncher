.class public Lk6/d;
.super Lk6/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk6/d$a;
    }
.end annotation

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
.field private final j:I

.field private final k:Lk6/e;

.field private final l:Ljava/util/concurrent/locks/ReentrantLock;

.field private m:[Ljava/lang/Object;

.field private n:I

.field private volatile synthetic size:I


# direct methods
.method public constructor <init>(ILk6/e;Ly5/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lk6/e;",
            "Ly5/l<",
            "-TE;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lk6/a;-><init>(Ly5/l;)V

    iput p1, p0, Lk6/d;->j:I

    iput-object p2, p0, Lk6/d;->k:Lk6/e;

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-lt p1, p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    if-eqz p3, :cond_1

    new-instance p3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p3, p0, Lk6/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    const/16 p3, 0x8

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    sget-object v1, Lk6/b;->a:Lkotlinx/coroutines/internal/b0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lo5/c;->g([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    iput-object p1, p0, Lk6/d;->m:[Ljava/lang/Object;

    iput p2, p0, Lk6/d;->size:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ArrayChannel capacity must be at least 1, but "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was specified"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final U(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget v0, p0, Lk6/d;->j:I

    if-ge p1, v0, :cond_0

    invoke-direct {p0, p1}, Lk6/d;->V(I)V

    iget-object v0, p0, Lk6/d;->m:[Ljava/lang/Object;

    iget p0, p0, Lk6/d;->n:I

    add-int/2addr p0, p1

    array-length p1, v0

    rem-int/2addr p0, p1

    aput-object p2, v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk6/d;->m:[Ljava/lang/Object;

    iget v1, p0, Lk6/d;->n:I

    array-length v2, v0

    rem-int v2, v1, v2

    const/4 v3, 0x0

    aput-object v3, v0, v2

    add-int/2addr p1, v1

    array-length v2, v0

    rem-int/2addr p1, v2

    aput-object p2, v0, p1

    add-int/lit8 v1, v1, 0x1

    array-length p1, v0

    rem-int/2addr v1, p1

    iput v1, p0, Lk6/d;->n:I

    :goto_0
    return-void
.end method

.method private final V(I)V
    .locals 8

    iget-object v0, p0, Lk6/d;->m:[Ljava/lang/Object;

    array-length v1, v0

    if-lt p1, v1, :cond_1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lk6/d;->j:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_0

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lk6/d;->m:[Ljava/lang/Object;

    iget v6, p0, Lk6/d;->n:I

    add-int/2addr v6, v3

    array-length v7, v5

    rem-int/2addr v6, v7

    aget-object v5, v5, v6

    aput-object v5, v1, v3

    move v3, v4

    goto :goto_0

    :cond_0
    sget-object v3, Lk6/b;->a:Lkotlinx/coroutines/internal/b0;

    invoke-static {v1, v3, p1, v0}, Lo5/c;->f([Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v1, p0, Lk6/d;->m:[Ljava/lang/Object;

    iput v2, p0, Lk6/d;->n:I

    :cond_1
    return-void
.end method

.method private final W(I)Lkotlinx/coroutines/internal/b0;
    .locals 3

    iget v0, p0, Lk6/d;->j:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_0

    add-int/2addr p1, v2

    iput p1, p0, Lk6/d;->size:I

    return-object v1

    :cond_0
    iget-object p0, p0, Lk6/d;->k:Lk6/e;

    sget-object p1, Lk6/d$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-eq p0, v2, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ln5/j;

    invoke-direct {p0}, Ln5/j;-><init>()V

    throw p0

    :cond_2
    sget-object v1, Lk6/b;->b:Lkotlinx/coroutines/internal/b0;

    goto :goto_0

    :cond_3
    sget-object v1, Lk6/b;->c:Lkotlinx/coroutines/internal/b0;

    :goto_0
    return-object v1
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

    iget-object v0, p0, Lk6/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

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
    .locals 0

    iget p0, p0, Lk6/d;->size:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public M()Z
    .locals 1

    iget-object v0, p0, Lk6/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-super {p0}, Lk6/a;->M()Z

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

.method protected N(Z)V
    .locals 9

    iget-object v0, p0, Lk6/c;->g:Ly5/l;

    iget-object v1, p0, Lk6/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v2, p0, Lk6/d;->size:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_1

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lk6/d;->m:[Ljava/lang/Object;

    iget v7, p0, Lk6/d;->n:I

    aget-object v6, v6, v7

    if-eqz v0, :cond_0

    sget-object v7, Lk6/b;->a:Lkotlinx/coroutines/internal/b0;

    if-eq v6, v7, :cond_0

    invoke-static {v0, v6, v4}, Lkotlinx/coroutines/internal/v;->c(Ly5/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/l0;)Lkotlinx/coroutines/internal/l0;

    move-result-object v4

    :cond_0
    iget-object v6, p0, Lk6/d;->m:[Ljava/lang/Object;

    iget v7, p0, Lk6/d;->n:I

    sget-object v8, Lk6/b;->a:Lkotlinx/coroutines/internal/b0;

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    array-length v6, v6

    rem-int/2addr v7, v6

    iput v7, p0, Lk6/d;->n:I

    goto :goto_0

    :cond_1
    iput v3, p0, Lk6/d;->size:I

    sget-object v0, Ln5/t;->a:Ln5/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-super {p0, p1}, Lk6/a;->N(Z)V

    if-nez v4, :cond_2

    return-void

    :cond_2
    throw v4

    :catchall_0
    move-exception p0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method protected R()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lk6/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v1, p0, Lk6/d;->size:I

    if-nez v1, :cond_1

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
    iget-object v2, p0, Lk6/d;->m:[Ljava/lang/Object;

    iget v3, p0, Lk6/d;->n:I

    aget-object v4, v2, v3

    const/4 v5, 0x0

    aput-object v5, v2, v3

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lk6/d;->size:I

    sget-object v2, Lk6/b;->d:Lkotlinx/coroutines/internal/b0;

    iget v3, p0, Lk6/d;->j:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v1, v3, :cond_4

    move-object v3, v5

    :goto_0
    invoke-virtual {p0}, Lk6/c;->D()Lk6/y;

    move-result-object v8

    if-nez v8, :cond_2

    move-object v5, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v8, v5}, Lk6/y;->C(Lkotlinx/coroutines/internal/o$b;)Lkotlinx/coroutines/internal/b0;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v8}, Lk6/y;->A()Ljava/lang/Object;

    move-result-object v2

    move v7, v6

    move-object v5, v8

    goto :goto_1

    :cond_3
    invoke-virtual {v8}, Lk6/y;->D()V

    move-object v3, v8

    goto :goto_0

    :cond_4
    :goto_1
    sget-object v3, Lk6/b;->d:Lkotlinx/coroutines/internal/b0;

    if-eq v2, v3, :cond_5

    instance-of v3, v2, Lk6/m;

    if-nez v3, :cond_5

    iput v1, p0, Lk6/d;->size:I

    iget-object v3, p0, Lk6/d;->m:[Ljava/lang/Object;

    iget v8, p0, Lk6/d;->n:I

    add-int/2addr v8, v1

    array-length v1, v3

    rem-int/2addr v8, v1

    aput-object v2, v3, v8

    :cond_5
    iget v1, p0, Lk6/d;->n:I

    add-int/2addr v1, v6

    iget-object v2, p0, Lk6/d;->m:[Ljava/lang/Object;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lk6/d;->n:I

    sget-object p0, Ln5/t;->a:Ln5/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v7, :cond_6

    invoke-static {v5}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lk6/y;->z()V

    :cond_6
    return-object v4

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method protected f(Lk6/y;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lk6/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-super {p0, p1}, Lk6/c;->f(Lk6/y;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method protected h()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(buffer:capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk6/d;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lk6/d;->size:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .locals 2

    iget v0, p0, Lk6/d;->size:I

    iget v1, p0, Lk6/d;->j:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lk6/d;->k:Lk6/e;

    sget-object v0, Lk6/e;->g:Lk6/e;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected w(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lk6/d;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v1, p0, Lk6/d;->size:I

    invoke-virtual {p0}, Lk6/c;->k()Lk6/m;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-direct {p0, v1}, Lk6/d;->W(I)Lkotlinx/coroutines/internal/b0;

    move-result-object v2

    if-nez v2, :cond_4

    if-nez v1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lk6/a;->A()Lk6/w;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    instance-of v3, v2, Lk6/m;

    if-eqz v3, :cond_2

    iput v1, p0, Lk6/d;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v2, p1, v3}, Lk6/w;->g(Ljava/lang/Object;Lkotlinx/coroutines/internal/o$b;)Lkotlinx/coroutines/internal/b0;

    move-result-object v3

    if-eqz v3, :cond_0

    iput v1, p0, Lk6/d;->size:I

    sget-object p0, Ln5/t;->a:Ln5/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-interface {v2, p1}, Lk6/w;->e(Ljava/lang/Object;)V

    invoke-interface {v2}, Lk6/w;->b()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    :try_start_2
    invoke-direct {p0, v1, p1}, Lk6/d;->U(ILjava/lang/Object;)V

    sget-object p0, Lk6/b;->b:Lkotlinx/coroutines/internal/b0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :cond_4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :cond_5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method
