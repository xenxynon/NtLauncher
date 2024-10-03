.class public Li6/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li6/v1;
.implements Li6/v;
.implements Li6/k2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li6/d2$c;,
        Li6/d2$b;,
        Li6/d2$a;
    }
.end annotation


# static fields
.field private static final synthetic g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle:Ljava/lang/Object;

.field private volatile synthetic _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Li6/d2;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Li6/d2;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {}, Li6/e2;->c()Li6/e1;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Li6/e2;->d()Li6/e1;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Li6/d2;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Li6/d2;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method private final C0(Ljava/lang/Object;)I
    .locals 4

    instance-of v0, p1, Li6/e1;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Li6/e1;

    invoke-virtual {v0}, Li6/e1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    sget-object v0, Li6/d2;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Li6/e2;->c()Li6/e1;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Li6/d2;->x0()V

    return v2

    :cond_2
    instance-of v0, p1, Li6/p1;

    if-eqz v0, :cond_4

    sget-object v0, Li6/d2;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v3, p1

    check-cast v3, Li6/p1;

    invoke-virtual {v3}, Li6/p1;->d()Li6/h2;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Li6/d2;->x0()V

    return v2

    :cond_4
    return v3
.end method

.method private final D0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of p0, p1, Li6/d2$c;

    const-string v0, "Active"

    if-eqz p0, :cond_1

    check-cast p1, Li6/d2$c;

    invoke-virtual {p1}, Li6/d2$c;->g()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string v0, "Cancelling"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Li6/d2$c;->h()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string v0, "Completing"

    goto :goto_0

    :cond_1
    instance-of p0, p1, Li6/q1;

    if-eqz p0, :cond_3

    check-cast p1, Li6/q1;

    invoke-interface {p1}, Li6/q1;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "New"

    goto :goto_0

    :cond_3
    instance-of p0, p1, Li6/b0;

    if-eqz p0, :cond_4

    const-string v0, "Cancelled"

    goto :goto_0

    :cond_4
    const-string v0, "Completed"

    :cond_5
    :goto_0
    return-object v0
.end method

.method public static synthetic F0(Li6/d2;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Li6/d2;->E0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toCancellationException"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic H(Li6/d2;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Li6/d2;->T()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final H0(Li6/q1;Ljava/lang/Object;)Z
    .locals 2

    sget-object v0, Li6/d2;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Li6/e2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li6/d2;->v0(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Li6/d2;->w0(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Li6/d2;->V(Li6/q1;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static final synthetic I(Li6/d2;Li6/d2$c;Li6/u;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Li6/d2;->W(Li6/d2$c;Li6/u;Ljava/lang/Object;)V

    return-void
.end method

.method private final I0(Li6/q1;Ljava/lang/Throwable;)Z
    .locals 4

    invoke-direct {p0, p1}, Li6/d2;->e0(Li6/q1;)Li6/h2;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v2, Li6/d2$c;

    invoke-direct {v2, v0, v1, p2}, Li6/d2$c;-><init>(Li6/h2;ZLjava/lang/Throwable;)V

    sget-object v3, Li6/d2;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, v0, p2}, Li6/d2;->t0(Li6/h2;Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method

.method private final J(Ljava/lang/Object;Li6/h2;Li6/c2;)Z
    .locals 1

    new-instance v0, Li6/d2$d;

    invoke-direct {v0, p3, p0, p1}, Li6/d2$d;-><init>(Lkotlinx/coroutines/internal/o;Li6/d2;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/o;->q()Lkotlinx/coroutines/internal/o;

    move-result-object p0

    invoke-virtual {p0, p3, p2, v0}, Lkotlinx/coroutines/internal/o;->y(Lkotlinx/coroutines/internal/o;Lkotlinx/coroutines/internal/o;Lkotlinx/coroutines/internal/o$a;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    return p1
.end method

.method private final J0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Li6/q1;

    if-nez v0, :cond_0

    invoke-static {}, Li6/e2;->a()Lkotlinx/coroutines/internal/b0;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Li6/e1;

    if-nez v0, :cond_1

    instance-of v0, p1, Li6/c2;

    if-eqz v0, :cond_3

    :cond_1
    instance-of v0, p1, Li6/u;

    if-nez v0, :cond_3

    instance-of v0, p2, Li6/b0;

    if-nez v0, :cond_3

    check-cast p1, Li6/q1;

    invoke-direct {p0, p1, p2}, Li6/d2;->H0(Li6/q1;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object p2

    :cond_2
    invoke-static {}, Li6/e2;->b()Lkotlinx/coroutines/internal/b0;

    move-result-object p0

    return-object p0

    :cond_3
    check-cast p1, Li6/q1;

    invoke-direct {p0, p1, p2}, Li6/d2;->K0(Li6/q1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final K(Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0, p0}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eq v0, p1, :cond_1

    if-eq v0, p1, :cond_1

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Ln5/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final K0(Li6/q1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-direct {p0, p1}, Li6/d2;->e0(Li6/q1;)Li6/h2;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Li6/e2;->b()Lkotlinx/coroutines/internal/b0;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v1, p1, Li6/d2$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Li6/d2$c;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    new-instance v1, Li6/d2$c;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Li6/d2$c;-><init>(Li6/h2;ZLjava/lang/Throwable;)V

    :cond_2
    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Li6/d2$c;->h()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Li6/e2;->a()Lkotlinx/coroutines/internal/b0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p0

    :cond_3
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v1, v3}, Li6/d2$c;->k(Z)V

    if-eq v1, p1, :cond_4

    sget-object v4, Li6/d2;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Li6/e2;->b()Lkotlinx/coroutines/internal/b0;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p0

    :cond_4
    :try_start_2
    invoke-virtual {v1}, Li6/d2$c;->g()Z

    move-result v4

    instance-of v5, p2, Li6/b0;

    if-eqz v5, :cond_5

    move-object v5, p2

    check-cast v5, Li6/b0;

    goto :goto_1

    :cond_5
    move-object v5, v2

    :goto_1
    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    iget-object v5, v5, Li6/b0;->a:Ljava/lang/Throwable;

    invoke-virtual {v1, v5}, Li6/d2$c;->b(Ljava/lang/Throwable;)V

    :goto_2
    invoke-virtual {v1}, Li6/d2$c;->f()Ljava/lang/Throwable;

    move-result-object v5

    xor-int/2addr v3, v4

    if-eqz v3, :cond_7

    move-object v2, v5

    :cond_7
    sget-object v3, Ln5/t;->a:Ln5/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    invoke-direct {p0, v0, v2}, Li6/d2;->t0(Li6/h2;Ljava/lang/Throwable;)V

    :goto_3
    invoke-direct {p0, p1}, Li6/d2;->Z(Li6/q1;)Li6/u;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-direct {p0, v1, p1, p2}, Li6/d2;->L0(Li6/d2$c;Li6/u;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p0, Li6/e2;->b:Lkotlinx/coroutines/internal/b0;

    return-object p0

    :cond_9
    invoke-direct {p0, v1, p2}, Li6/d2;->Y(Li6/d2$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method private final L0(Li6/d2$c;Li6/u;Ljava/lang/Object;)Z
    .locals 6

    :cond_0
    iget-object v0, p2, Li6/u;->k:Li6/v;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Li6/d2$b;

    invoke-direct {v3, p0, p1, p2, p3}, Li6/d2$b;-><init>(Li6/d2;Li6/d2$c;Li6/u;Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Li6/v1$a;->d(Li6/v1;ZZLy5/l;ILjava/lang/Object;)Li6/c1;

    move-result-object v0

    sget-object v1, Li6/i2;->g:Li6/i2;

    if-eq v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-direct {p0, p2}, Li6/d2;->s0(Lkotlinx/coroutines/internal/o;)Li6/u;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0
.end method

.method private final N(Lq5/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Li6/d2$a;

    invoke-static {p1}, Lr5/b;->b(Lq5/d;)Lq5/d;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Li6/d2$a;-><init>(Lq5/d;Li6/d2;)V

    invoke-virtual {v0}, Li6/o;->z()V

    new-instance v1, Li6/m2;

    invoke-direct {v1, v0}, Li6/m2;-><init>(Li6/o;)V

    invoke-virtual {p0, v1}, Li6/d2;->p(Ly5/l;)Li6/c1;

    move-result-object p0

    invoke-static {v0, p0}, Li6/q;->a(Li6/n;Li6/c1;)V

    invoke-virtual {v0}, Li6/o;->u()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/h;->c(Lq5/d;)V

    :cond_0
    return-object p0
.end method

.method private final R(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    :cond_0
    invoke-virtual {p0}, Li6/d2;->g0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Li6/q1;

    if-eqz v1, :cond_2

    instance-of v1, v0, Li6/d2$c;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Li6/d2$c;

    invoke-virtual {v1}, Li6/d2$c;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Li6/b0;

    invoke-direct {p0, p1}, Li6/d2;->X(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Li6/b0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/i;)V

    invoke-direct {p0, v0, v1}, Li6/d2;->J0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Li6/e2;->b()Lkotlinx/coroutines/internal/b0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_2
    :goto_0
    invoke-static {}, Li6/e2;->a()Lkotlinx/coroutines/internal/b0;

    move-result-object p0

    return-object p0
.end method

.method private final S(Ljava/lang/Throwable;)Z
    .locals 3

    invoke-virtual {p0}, Li6/d2;->k0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    invoke-virtual {p0}, Li6/d2;->f0()Li6/t;

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object v2, Li6/i2;->g:Li6/i2;

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1}, Li6/t;->c(Ljava/lang/Throwable;)Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method private final V(Li6/q1;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Li6/d2;->f0()Li6/t;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Li6/c1;->dispose()V

    sget-object v0, Li6/i2;->g:Li6/i2;

    invoke-virtual {p0, v0}, Li6/d2;->B0(Li6/t;)V

    :goto_0
    instance-of v0, p2, Li6/b0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Li6/b0;

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p2, Li6/b0;->a:Ljava/lang/Throwable;

    :goto_2
    instance-of p2, p1, Li6/c2;

    if-eqz p2, :cond_3

    :try_start_0
    move-object p2, p1

    check-cast p2, Li6/c2;

    invoke-virtual {p2, v1}, Li6/d0;->z(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p2

    new-instance v0, Li6/e0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in completion handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Li6/e0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Li6/d2;->i0(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Li6/q1;->d()Li6/h2;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-direct {p0, p1, v1}, Li6/d2;->u0(Li6/h2;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private final W(Li6/d2$c;Li6/u;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2}, Li6/d2;->s0(Lkotlinx/coroutines/internal/o;)Li6/u;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2, p3}, Li6/d2;->L0(Li6/d2$c;Li6/u;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p3}, Li6/d2;->Y(Li6/d2$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Li6/d2;->L(Ljava/lang/Object;)V

    return-void
.end method

.method private final X(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Throwable;

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    new-instance v0, Li6/w1;

    invoke-static {p0}, Li6/d2;->H(Li6/d2;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Li6/w1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Li6/v1;)V

    move-object p1, v0

    goto :goto_1

    :cond_1
    const-string p0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Li6/k2;

    invoke-interface {p1}, Li6/k2;->x()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method private final Y(Li6/d2$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Li6/b0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Li6/b0;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Li6/b0;->a:Ljava/lang/Throwable;

    :goto_1
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Li6/d2$c;->g()Z

    move-result v2

    invoke-virtual {p1, v0}, Li6/d2$c;->j(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Li6/d2;->b0(Li6/d2$c;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v4, v3}, Li6/d2;->K(Ljava/lang/Throwable;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p1

    const/4 v3, 0x0

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    if-ne v4, v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p2, Li6/b0;

    const/4 v0, 0x2

    invoke-direct {p2, v4, v3, v0, v1}, Li6/b0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/i;)V

    :goto_2
    if-eqz v4, :cond_7

    invoke-direct {p0, v4}, Li6/d2;->S(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v4}, Li6/d2;->h0(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v3, 0x1

    :cond_6
    if-eqz v3, :cond_7

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Li6/b0;

    invoke-virtual {v0}, Li6/b0;->b()Z

    :cond_7
    if-nez v2, :cond_8

    invoke-virtual {p0, v4}, Li6/d2;->v0(Ljava/lang/Throwable;)V

    :cond_8
    invoke-virtual {p0, p2}, Li6/d2;->w0(Ljava/lang/Object;)V

    sget-object v0, Li6/d2;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Li6/e2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-direct {p0, p1, p2}, Li6/d2;->V(Li6/q1;Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method private final Z(Li6/q1;)Li6/u;
    .locals 2

    instance-of v0, p1, Li6/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Li6/u;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    invoke-interface {p1}, Li6/q1;->d()Li6/h2;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Li6/d2;->s0(Lkotlinx/coroutines/internal/o;)Li6/u;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method private final a0(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    instance-of p0, p1, Li6/b0;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Li6/b0;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Li6/b0;->a:Ljava/lang/Throwable;

    :goto_1
    return-object v0
.end method

.method private final b0(Li6/d2$c;Ljava/util/List;)Ljava/lang/Throwable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/d2$c;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Li6/d2$c;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Li6/w1;

    invoke-static {p0}, Li6/d2;->H(Li6/d2;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1, p0}, Li6/w1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Li6/v1;)V

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/util/concurrent/CancellationException;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move-object v1, p1

    :cond_3
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    const/4 p0, 0x0

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

.method private final e0(Li6/q1;)Li6/h2;
    .locals 1

    invoke-interface {p1}, Li6/q1;->d()Li6/h2;

    move-result-object v0

    if-nez v0, :cond_2

    instance-of v0, p1, Li6/e1;

    if-eqz v0, :cond_0

    new-instance v0, Li6/h2;

    invoke-direct {v0}, Li6/h2;-><init>()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Li6/c2;

    if-eqz v0, :cond_1

    check-cast p1, Li6/c2;

    invoke-direct {p0, p1}, Li6/d2;->z0(Li6/c2;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "State should have list: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private final l0()Z
    .locals 2

    :cond_0
    invoke-virtual {p0}, Li6/d2;->g0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Li6/q1;

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-direct {p0, v0}, Li6/d2;->C0(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 p0, 0x1

    return p0
.end method

.method private final m0(Lq5/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Li6/o;

    invoke-static {p1}, Lr5/b;->b(Lq5/d;)Lq5/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Li6/o;-><init>(Lq5/d;I)V

    invoke-virtual {v0}, Li6/o;->z()V

    new-instance v1, Li6/n2;

    invoke-direct {v1, v0}, Li6/n2;-><init>(Lq5/d;)V

    invoke-virtual {p0, v1}, Li6/d2;->p(Ly5/l;)Li6/c1;

    move-result-object p0

    invoke-static {v0, p0}, Li6/q;->a(Li6/n;Li6/c1;)V

    invoke-virtual {v0}, Li6/o;->u()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/h;->c(Lq5/d;)V

    :cond_0
    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method private final n0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Li6/d2;->g0()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Li6/d2$c;

    if-eqz v3, :cond_7

    monitor-enter v2

    :try_start_0
    move-object v3, v2

    check-cast v3, Li6/d2$c;

    invoke-virtual {v3}, Li6/d2$c;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Li6/e2;->f()Lkotlinx/coroutines/internal/b0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object p0

    :cond_1
    :try_start_1
    move-object v3, v2

    check-cast v3, Li6/d2$c;

    invoke-virtual {v3}, Li6/d2$c;->g()Z

    move-result v3

    if-nez p1, :cond_2

    if-nez v3, :cond_4

    :cond_2
    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Li6/d2;->X(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_3
    move-object p1, v2

    check-cast p1, Li6/d2$c;

    invoke-virtual {p1, v1}, Li6/d2$c;->b(Ljava/lang/Throwable;)V

    :cond_4
    move-object p1, v2

    check-cast p1, Li6/d2$c;

    invoke-virtual {p1}, Li6/d2$c;->f()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_5

    move-object v0, p1

    :cond_5
    monitor-exit v2

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    check-cast v2, Li6/d2$c;

    invoke-virtual {v2}, Li6/d2$c;->d()Li6/h2;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Li6/d2;->t0(Li6/h2;Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {}, Li6/e2;->a()Lkotlinx/coroutines/internal/b0;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_7
    instance-of v3, v2, Li6/q1;

    if-eqz v3, :cond_c

    if-nez v1, :cond_8

    invoke-direct {p0, p1}, Li6/d2;->X(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_8
    move-object v3, v2

    check-cast v3, Li6/q1;

    invoke-interface {v3}, Li6/q1;->a()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0, v3, v1}, Li6/d2;->I0(Li6/q1;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Li6/e2;->a()Lkotlinx/coroutines/internal/b0;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance v3, Li6/b0;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v1, v4, v5, v0}, Li6/b0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/i;)V

    invoke-direct {p0, v2, v3}, Li6/d2;->J0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Li6/e2;->a()Lkotlinx/coroutines/internal/b0;

    move-result-object v4

    if-eq v3, v4, :cond_b

    invoke-static {}, Li6/e2;->b()Lkotlinx/coroutines/internal/b0;

    move-result-object v2

    if-ne v3, v2, :cond_a

    goto/16 :goto_0

    :cond_a
    return-object v3

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot happen in "

    invoke-static {p1, v2}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    invoke-static {}, Li6/e2;->f()Lkotlinx/coroutines/internal/b0;

    move-result-object p0

    return-object p0
.end method

.method private final q0(Ly5/l;Z)Li6/c2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ln5/t;",
            ">;Z)",
            "Li6/c2;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    instance-of p2, p1, Li6/x1;

    if-eqz p2, :cond_0

    move-object v0, p1

    check-cast v0, Li6/x1;

    :cond_0
    if-nez v0, :cond_4

    new-instance v0, Li6/t1;

    invoke-direct {v0, p1}, Li6/t1;-><init>(Ly5/l;)V

    goto :goto_2

    :cond_1
    instance-of p2, p1, Li6/c2;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Li6/c2;

    goto :goto_0

    :cond_2
    move-object p2, v0

    :goto_0
    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, p2

    :goto_1
    if-nez v0, :cond_4

    new-instance v0, Li6/u1;

    invoke-direct {v0, p1}, Li6/u1;-><init>(Ly5/l;)V

    :cond_4
    :goto_2
    invoke-virtual {v0, p0}, Li6/c2;->B(Li6/d2;)V

    return-object v0
.end method

.method private final s0(Lkotlinx/coroutines/internal/o;)Li6/u;
    .locals 0

    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->t()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->q()Lkotlinx/coroutines/internal/o;

    move-result-object p1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->p()Lkotlinx/coroutines/internal/o;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->t()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    instance-of p0, p1, Li6/u;

    if-eqz p0, :cond_2

    check-cast p1, Li6/u;

    return-object p1

    :cond_2
    instance-of p0, p1, Li6/h2;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method

.method private final t0(Li6/h2;Ljava/lang/Throwable;)V
    .locals 7

    invoke-virtual {p0, p2}, Li6/d2;->v0(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/o;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    instance-of v3, v0, Li6/x1;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Li6/c2;

    :try_start_0
    invoke-virtual {v3, p2}, Li6/d0;->z(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    if-nez v2, :cond_0

    move-object v5, v1

    goto :goto_1

    :cond_0
    invoke-static {v2, v4}, Ln5/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object v5, v2

    :goto_1
    if-nez v5, :cond_1

    new-instance v2, Li6/e0;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in completion handler "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Li6/e0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->p()Lkotlinx/coroutines/internal/o;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v2}, Li6/d2;->i0(Ljava/lang/Throwable;)V

    :goto_3
    invoke-direct {p0, p2}, Li6/d2;->S(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private final u0(Li6/h2;Ljava/lang/Throwable;)V
    .locals 7

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/o;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    instance-of v3, v0, Li6/c2;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Li6/c2;

    :try_start_0
    invoke-virtual {v3, p2}, Li6/d0;->z(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    if-nez v2, :cond_0

    move-object v5, v1

    goto :goto_1

    :cond_0
    invoke-static {v2, v4}, Ln5/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object v5, v2

    :goto_1
    if-nez v5, :cond_1

    new-instance v2, Li6/e0;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in completion handler "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Li6/e0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->p()Lkotlinx/coroutines/internal/o;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v2}, Li6/d2;->i0(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private final y0(Li6/e1;)V
    .locals 2

    new-instance v0, Li6/h2;

    invoke-direct {v0}, Li6/h2;-><init>()V

    invoke-virtual {p1}, Li6/e1;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Li6/p1;

    invoke-direct {v1, v0}, Li6/p1;-><init>(Li6/h2;)V

    move-object v0, v1

    :goto_0
    sget-object v1, Li6/d2;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private final z0(Li6/c2;)V
    .locals 2

    new-instance v0, Li6/h2;

    invoke-direct {v0}, Li6/h2;-><init>()V

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/internal/o;->k(Lkotlinx/coroutines/internal/o;)Z

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->p()Lkotlinx/coroutines/internal/o;

    move-result-object v0

    sget-object v1, Li6/d2;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 0

    invoke-virtual {p0}, Li6/d2;->g0()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Li6/q1;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final A0(Li6/c2;)V
    .locals 3

    :cond_0
    invoke-virtual {p0}, Li6/d2;->g0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Li6/c2;

    if-eqz v1, :cond_2

    if-eq v0, p1, :cond_1

    return-void

    :cond_1
    sget-object v1, Li6/d2;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Li6/e2;->c()Li6/e1;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_2
    instance-of p0, v0, Li6/q1;

    if-eqz p0, :cond_3

    check-cast v0, Li6/q1;

    invoke-interface {v0}, Li6/q1;->d()Li6/h2;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->u()Z

    :cond_3
    return-void
.end method

.method public final B0(Li6/t;)V
    .locals 0

    iput-object p1, p0, Li6/d2;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method protected final E0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 1

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Li6/w1;

    if-nez p2, :cond_1

    invoke-static {p0}, Li6/d2;->H(Li6/d2;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-direct {v0, p2, p1, p0}, Li6/w1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Li6/v1;)V

    :cond_2
    return-object v0
.end method

.method public final G0()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Li6/d2;->r0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Li6/d2;->g0()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Li6/d2;->D0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected L(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final M(Lq5/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Li6/d2;->g0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Li6/q1;

    if-nez v1, :cond_2

    instance-of p0, v0, Li6/b0;

    if-nez p0, :cond_1

    invoke-static {v0}, Li6/e2;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast v0, Li6/b0;

    iget-object p0, v0, Li6/b0;->a:Ljava/lang/Throwable;

    throw p0

    :cond_2
    invoke-direct {p0, v0}, Li6/d2;->C0(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0, p1}, Li6/d2;->N(Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final O(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Li6/d2;->P(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final P(Ljava/lang/Object;)Z
    .locals 3

    invoke-static {}, Li6/e2;->a()Lkotlinx/coroutines/internal/b0;

    move-result-object v0

    invoke-virtual {p0}, Li6/d2;->d0()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Li6/d2;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Li6/e2;->b:Lkotlinx/coroutines/internal/b0;

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Li6/e2;->a()Lkotlinx/coroutines/internal/b0;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Li6/d2;->n0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    invoke-static {}, Li6/e2;->a()Lkotlinx/coroutines/internal/b0;

    move-result-object p1

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Li6/e2;->b:Lkotlinx/coroutines/internal/b0;

    if-ne v0, p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Li6/e2;->f()Lkotlinx/coroutines/internal/b0;

    move-result-object p1

    if-ne v0, p1, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Li6/d2;->L(Ljava/lang/Object;)V

    :goto_0
    return v2
.end method

.method public Q(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Li6/d2;->P(Ljava/lang/Object;)Z

    return-void
.end method

.method protected T()Ljava/lang/String;
    .locals 0

    const-string p0, "Job was cancelled"

    return-object p0
.end method

.method public U(Ljava/lang/Throwable;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Li6/d2;->P(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Li6/d2;->c0()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public a()Z
    .locals 1

    invoke-virtual {p0}, Li6/d2;->g0()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Li6/q1;

    if-eqz v0, :cond_0

    check-cast p0, Li6/q1;

    invoke-interface {p0}, Li6/q1;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-instance v0, Li6/w1;

    invoke-static {p0}, Li6/d2;->H(Li6/d2;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Li6/w1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Li6/v1;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p0, p1}, Li6/d2;->Q(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public d0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final f(Lq5/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-direct {p0}, Li6/d2;->l0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lq5/d;->getContext()Lq5/g;

    move-result-object p0

    invoke-static {p0}, Li6/z1;->h(Lq5/g;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Li6/d2;->m0(Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final f0()Li6/t;
    .locals 0

    iget-object p0, p0, Li6/d2;->_parentHandle:Ljava/lang/Object;

    check-cast p0, Li6/t;

    return-object p0
.end method

.method public fold(Ljava/lang/Object;Ly5/p;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ly5/p<",
            "-TR;-",
            "Lq5/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Li6/v1$a;->b(Li6/v1;Ljava/lang/Object;Ly5/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final g0()Ljava/lang/Object;
    .locals 2

    :goto_0
    iget-object v0, p0, Li6/d2;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/internal/w;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/internal/w;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/w;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public get(Lq5/g$c;)Lq5/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lq5/g$b;",
            ">(",
            "Lq5/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Li6/v1$a;->c(Li6/v1;Lq5/g$c;)Lq5/g$b;

    move-result-object p0

    return-object p0
.end method

.method public final getKey()Lq5/g$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq5/g$c<",
            "*>;"
        }
    .end annotation

    sget-object p0, Li6/v1;->d:Li6/v1$b;

    return-object p0
.end method

.method public final h()Ljava/util/concurrent/CancellationException;
    .locals 4

    invoke-virtual {p0}, Li6/d2;->g0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Li6/d2$c;

    const-string v2, "Job is still new or active: "

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Li6/d2$c;

    invoke-virtual {v0}, Li6/d2$c;->f()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Li6/q0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, " is cancelling"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Li6/d2;->E0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    instance-of v1, v0, Li6/q1;

    if-nez v1, :cond_4

    instance-of v1, v0, Li6/b0;

    if-eqz v1, :cond_3

    check-cast v0, Li6/b0;

    iget-object v0, v0, Li6/b0;->a:Ljava/lang/Throwable;

    const/4 v1, 0x1

    invoke-static {p0, v0, v3, v1, v3}, Li6/d2;->F0(Li6/d2;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object v3

    goto :goto_1

    :cond_3
    new-instance v0, Li6/w1;

    invoke-static {p0}, Li6/q0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " has completed normally"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, p0}, Li6/w1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Li6/v1;)V

    move-object v3, v0

    :goto_1
    return-object v3

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected h0(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public i0(Ljava/lang/Throwable;)V
    .locals 0

    throw p1
.end method

.method public final isCancelled()Z
    .locals 1

    invoke-virtual {p0}, Li6/d2;->g0()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Li6/b0;

    if-nez v0, :cond_1

    instance-of v0, p0, Li6/d2$c;

    if-eqz v0, :cond_0

    check-cast p0, Li6/d2$c;

    invoke-virtual {p0}, Li6/d2$c;->g()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected final j0(Li6/v1;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Li6/i2;->g:Li6/i2;

    invoke-virtual {p0, p1}, Li6/d2;->B0(Li6/t;)V

    return-void

    :cond_0
    invoke-interface {p1}, Li6/v1;->start()Z

    invoke-interface {p1, p0}, Li6/v1;->n(Li6/v;)Li6/t;

    move-result-object p1

    invoke-virtual {p0, p1}, Li6/d2;->B0(Li6/t;)V

    invoke-virtual {p0}, Li6/d2;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Li6/c1;->dispose()V

    sget-object p1, Li6/i2;->g:Li6/i2;

    invoke-virtual {p0, p1}, Li6/d2;->B0(Li6/t;)V

    :cond_1
    return-void
.end method

.method protected k0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final l(Li6/k2;)V
    .locals 0

    invoke-virtual {p0, p1}, Li6/d2;->P(Ljava/lang/Object;)Z

    return-void
.end method

.method public minusKey(Lq5/g$c;)Lq5/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g$c<",
            "*>;)",
            "Lq5/g;"
        }
    .end annotation

    invoke-static {p0, p1}, Li6/v1$a;->e(Li6/v1;Lq5/g$c;)Lq5/g;

    move-result-object p0

    return-object p0
.end method

.method public final n(Li6/v;)Li6/t;
    .locals 6

    new-instance v3, Li6/u;

    invoke-direct {v3, p1}, Li6/u;-><init>(Li6/v;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li6/v1$a;->d(Li6/v1;ZZLy5/l;ILjava/lang/Object;)Li6/c1;

    move-result-object p0

    check-cast p0, Li6/t;

    return-object p0
.end method

.method public final o0(Ljava/lang/Object;)Z
    .locals 3

    :goto_0
    invoke-virtual {p0}, Li6/d2;->g0()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Li6/d2;->J0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Li6/e2;->a()Lkotlinx/coroutines/internal/b0;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v1, Li6/e2;->b:Lkotlinx/coroutines/internal/b0;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    invoke-static {}, Li6/e2;->b()Lkotlinx/coroutines/internal/b0;

    move-result-object v1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Li6/d2;->L(Ljava/lang/Object;)V

    return v2
.end method

.method public final p(Ly5/l;)Li6/c1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ln5/t;",
            ">;)",
            "Li6/c1;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Li6/d2;->w(ZZLy5/l;)Li6/c1;

    move-result-object p0

    return-object p0
.end method

.method public final p0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    :goto_0
    invoke-virtual {p0}, Li6/d2;->g0()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Li6/d2;->J0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Li6/e2;->a()Lkotlinx/coroutines/internal/b0;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-static {}, Li6/e2;->b()Lkotlinx/coroutines/internal/b0;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Li6/d2;->a0(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public plus(Lq5/g;)Lq5/g;
    .locals 0

    invoke-static {p0, p1}, Li6/v1$a;->f(Li6/v1;Lq5/g;)Lq5/g;

    move-result-object p0

    return-object p0
.end method

.method public r0()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Li6/q0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final start()Z
    .locals 2

    :goto_0
    invoke-virtual {p0}, Li6/d2;->g0()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Li6/d2;->C0(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Li6/d2;->G0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Li6/q0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected v0(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final w(ZZLy5/l;)Li6/c1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ly5/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ln5/t;",
            ">;)",
            "Li6/c1;"
        }
    .end annotation

    invoke-direct {p0, p3, p1}, Li6/d2;->q0(Ly5/l;Z)Li6/c2;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Li6/d2;->g0()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Li6/e1;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Li6/e1;

    invoke-virtual {v2}, Li6/e1;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v2, Li6/d2;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    invoke-direct {p0, v2}, Li6/d2;->y0(Li6/e1;)V

    goto :goto_0

    :cond_2
    instance-of v2, v1, Li6/q1;

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    move-object v2, v1

    check-cast v2, Li6/q1;

    invoke-interface {v2}, Li6/q1;->d()Li6/h2;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Li6/c2;

    invoke-direct {p0, v1}, Li6/d2;->z0(Li6/c2;)V

    goto :goto_0

    :cond_3
    sget-object v4, Li6/i2;->g:Li6/i2;

    if-eqz p1, :cond_8

    instance-of v5, v1, Li6/d2$c;

    if-eqz v5, :cond_8

    monitor-enter v1

    :try_start_0
    move-object v3, v1

    check-cast v3, Li6/d2$c;

    invoke-virtual {v3}, Li6/d2$c;->f()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4

    instance-of v5, p3, Li6/u;

    if-eqz v5, :cond_7

    move-object v5, v1

    check-cast v5, Li6/d2$c;

    invoke-virtual {v5}, Li6/d2$c;->h()Z

    move-result v5

    if-nez v5, :cond_7

    :cond_4
    invoke-direct {p0, v1, v2, v0}, Li6/d2;->J(Ljava/lang/Object;Li6/h2;Li6/c2;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    monitor-exit v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    monitor-exit v1

    return-object v0

    :cond_6
    move-object v4, v0

    :cond_7
    :try_start_1
    sget-object v5, Ln5/t;->a:Ln5/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_8
    :goto_1
    if-eqz v3, :cond_a

    if-eqz p2, :cond_9

    invoke-interface {p3, v3}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-object v4

    :cond_a
    invoke-direct {p0, v1, v2, v0}, Li6/d2;->J(Ljava/lang/Object;Li6/h2;Li6/c2;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_b
    if-eqz p2, :cond_e

    instance-of p0, v1, Li6/b0;

    if-eqz p0, :cond_c

    check-cast v1, Li6/b0;

    goto :goto_2

    :cond_c
    move-object v1, v3

    :goto_2
    if-nez v1, :cond_d

    goto :goto_3

    :cond_d
    iget-object v3, v1, Li6/b0;->a:Ljava/lang/Throwable;

    :goto_3
    invoke-interface {p3, v3}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    sget-object p0, Li6/i2;->g:Li6/i2;

    return-object p0
.end method

.method protected w0(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public x()Ljava/util/concurrent/CancellationException;
    .locals 4

    invoke-virtual {p0}, Li6/d2;->g0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Li6/d2$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Li6/d2$c;

    invoke-virtual {v1}, Li6/d2$c;->f()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    :cond_0
    instance-of v1, v0, Li6/b0;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Li6/b0;

    iget-object v1, v1, Li6/b0;->a:Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Li6/q1;

    if-nez v1, :cond_4

    move-object v1, v2

    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Li6/w1;

    invoke-direct {p0, v0}, Li6/d2;->D0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Parent job is "

    invoke-static {v3, v0}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Li6/w1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Li6/v1;)V

    :cond_3
    return-object v2

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be cancelling child in this state: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected x0()V
    .locals 0

    return-void
.end method
