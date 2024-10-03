.class public Li6/o;
.super Li6/y0;
.source "SourceFile"

# interfaces
.implements Li6/n;
.implements Lkotlin/coroutines/jvm/internal/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li6/y0<",
        "TT;>;",
        "Li6/n<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/e;"
    }
.end annotation


# static fields
.field private static final synthetic m:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _decision:I

.field private volatile synthetic _state:Ljava/lang/Object;

.field private final j:Lq5/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq5/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final k:Lq5/g;

.field private l:Li6/c1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Li6/o;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Li6/o;->m:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Li6/o;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Li6/o;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lq5/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Li6/y0;-><init>(I)V

    iput-object p1, p0, Li6/o;->j:Lq5/d;

    invoke-interface {p1}, Lq5/d;->getContext()Lq5/g;

    move-result-object p1

    iput-object p1, p0, Li6/o;->k:Lq5/g;

    const/4 p1, 0x0

    iput p1, p0, Li6/o;->_decision:I

    sget-object p1, Li6/d;->g:Li6/d;

    iput-object p1, p0, Li6/o;->_state:Ljava/lang/Object;

    return-void
.end method

.method private final A()Li6/c1;
    .locals 7

    invoke-virtual {p0}, Li6/o;->getContext()Lq5/g;

    move-result-object v0

    sget-object v1, Li6/v1;->d:Li6/v1$b;

    invoke-interface {v0, v1}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Li6/v1;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Li6/s;

    invoke-direct {v4, p0}, Li6/s;-><init>(Li6/o;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Li6/v1$a;->d(Li6/v1;ZZLy5/l;ILjava/lang/Object;)Li6/c1;

    move-result-object v0

    iput-object v0, p0, Li6/o;->l:Li6/c1;

    return-object v0
.end method

.method private final C()Z
    .locals 1

    iget v0, p0, Li6/y0;->i:I

    invoke-static {v0}, Li6/z0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Li6/o;->j:Lq5/d;

    check-cast p0, Lkotlinx/coroutines/internal/f;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f;->p()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final D(Ly5/l;)Li6/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ln5/t;",
            ">;)",
            "Li6/l;"
        }
    .end annotation

    instance-of p0, p1, Li6/l;

    if-eqz p0, :cond_0

    check-cast p1, Li6/l;

    goto :goto_0

    :cond_0
    new-instance p0, Li6/s1;

    invoke-direct {p0, p1}, Li6/s1;-><init>(Ly5/l;)V

    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method private final E(Ly5/l;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ln5/t;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final I()V
    .locals 3

    iget-object v0, p0, Li6/o;->j:Lq5/d;

    instance-of v1, v0, Lkotlinx/coroutines/internal/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/f;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/f;->s(Li6/n;)Ljava/lang/Throwable;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Li6/o;->q()V

    invoke-virtual {p0, v2}, Li6/o;->v(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private final K(Ljava/lang/Object;ILy5/l;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ly5/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Li6/o;->_state:Ljava/lang/Object;

    instance-of v1, v0, Li6/j2;

    if-eqz v1, :cond_1

    move-object v3, v0

    check-cast v3, Li6/j2;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Li6/o;->M(Li6/j2;Ljava/lang/Object;ILy5/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Li6/o;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Li6/o;->r()V

    invoke-direct {p0, p2}, Li6/o;->s(I)V

    return-void

    :cond_1
    instance-of p2, v0, Li6/r;

    if-eqz p2, :cond_3

    check-cast v0, Li6/r;

    invoke-virtual {v0}, Li6/r;->c()Z

    move-result p2

    if-eqz p2, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, v0, Li6/b0;->a:Ljava/lang/Throwable;

    invoke-virtual {p0, p3, p1}, Li6/o;->o(Ly5/l;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_3
    invoke-direct {p0, p1}, Li6/o;->i(Ljava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln5/d;

    invoke-direct {p0}, Ln5/d;-><init>()V

    throw p0
.end method

.method static synthetic L(Li6/o;Ljava/lang/Object;ILy5/l;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Li6/o;->K(Ljava/lang/Object;ILy5/l;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: resumeImpl"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final M(Li6/j2;Ljava/lang/Object;ILy5/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/j2;",
            "Ljava/lang/Object;",
            "I",
            "Ly5/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ln5/t;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p0, p2, Li6/b0;

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p3}, Li6/z0;->b(I)Z

    move-result p0

    if-nez p0, :cond_1

    if-nez p5, :cond_1

    goto :goto_1

    :cond_1
    if-nez p4, :cond_3

    instance-of p0, p1, Li6/l;

    if-eqz p0, :cond_2

    instance-of p0, p1, Li6/e;

    if-eqz p0, :cond_3

    :cond_2
    if-eqz p5, :cond_5

    :cond_3
    new-instance p0, Li6/a0;

    instance-of p3, p1, Li6/l;

    if-eqz p3, :cond_4

    check-cast p1, Li6/l;

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v7}, Li6/a0;-><init>(Ljava/lang/Object;Li6/l;Ly5/l;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/i;)V

    move-object p2, p0

    :cond_5
    :goto_1
    return-object p2
.end method

.method private final N()Z
    .locals 4

    :cond_0
    iget v0, p0, Li6/o;->_decision:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sget-object v0, Li6/o;->m:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private final O(Ljava/lang/Object;Ljava/lang/Object;Ly5/l;)Lkotlinx/coroutines/internal/b0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ly5/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ln5/t;",
            ">;)",
            "Lkotlinx/coroutines/internal/b0;"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Li6/o;->_state:Ljava/lang/Object;

    instance-of v1, v0, Li6/j2;

    if-eqz v1, :cond_1

    move-object v3, v0

    check-cast v3, Li6/j2;

    iget v5, p0, Li6/y0;->i:I

    move-object v2, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Li6/o;->M(Li6/j2;Ljava/lang/Object;ILy5/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Li6/o;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Li6/o;->r()V

    sget-object p0, Li6/p;->a:Lkotlinx/coroutines/internal/b0;

    return-object p0

    :cond_1
    instance-of p0, v0, Li6/a0;

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    check-cast v0, Li6/a0;

    iget-object p0, v0, Li6/a0;->d:Ljava/lang/Object;

    if-ne p0, p2, :cond_2

    sget-object p1, Li6/p;->a:Lkotlinx/coroutines/internal/b0;

    :cond_2
    return-object p1
.end method

.method private final P()Z
    .locals 3

    :cond_0
    iget v0, p0, Li6/o;->_decision:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    if-ne v0, p0, :cond_1

    return v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already suspended"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sget-object v0, Li6/o;->m:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private final i(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed, but proposed with update "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final n(Ly5/l;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ln5/t;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p2}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Li6/o;->getContext()Lq5/g;

    move-result-object p2

    new-instance v0, Li6/e0;

    const-string v1, "Exception in invokeOnCancellation handler for "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Li6/e0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Li6/l0;->a(Lq5/g;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private final p(Ljava/lang/Throwable;)Z
    .locals 1

    invoke-direct {p0}, Li6/o;->C()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Li6/o;->j:Lq5/d;

    check-cast p0, Lkotlinx/coroutines/internal/f;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/f;->q(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method private final r()V
    .locals 1

    invoke-direct {p0}, Li6/o;->C()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Li6/o;->q()V

    :cond_0
    return-void
.end method

.method private final s(I)V
    .locals 1

    invoke-direct {p0}, Li6/o;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Li6/z0;->a(Li6/y0;I)V

    return-void
.end method

.method private final x()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Li6/o;->w()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Li6/j2;

    if-eqz v0, :cond_0

    const-string p0, "Active"

    goto :goto_0

    :cond_0
    instance-of p0, p0, Li6/r;

    if-eqz p0, :cond_1

    const-string p0, "Cancelled"

    goto :goto_0

    :cond_1
    const-string p0, "Completed"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public B()Z
    .locals 0

    invoke-virtual {p0}, Li6/o;->w()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Li6/j2;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected F()Ljava/lang/String;
    .locals 0

    const-string p0, "CancellableContinuation"

    return-object p0
.end method

.method public G(Ljava/lang/Object;)V
    .locals 0

    iget p1, p0, Li6/y0;->i:I

    invoke-direct {p0, p1}, Li6/o;->s(I)V

    return-void
.end method

.method public final H(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Li6/o;->p(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Li6/o;->v(Ljava/lang/Throwable;)Z

    invoke-direct {p0}, Li6/o;->r()V

    return-void
.end method

.method public final J()Z
    .locals 3

    iget-object v0, p0, Li6/o;->_state:Ljava/lang/Object;

    instance-of v1, v0, Li6/a0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Li6/a0;

    iget-object v0, v0, Li6/a0;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li6/o;->q()V

    return v2

    :cond_0
    iput v2, p0, Li6/o;->_decision:I

    sget-object v0, Li6/d;->g:Li6/d;

    iput-object v0, p0, Li6/o;->_state:Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 10

    :cond_0
    iget-object p1, p0, Li6/o;->_state:Ljava/lang/Object;

    instance-of v0, p1, Li6/j2;

    if-nez v0, :cond_4

    instance-of v0, p1, Li6/b0;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    instance-of v0, p1, Li6/a0;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Li6/a0;

    invoke-virtual {v0}, Li6/a0;->c()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v1, v0

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Li6/a0;->b(Li6/a0;Ljava/lang/Object;Li6/l;Ly5/l;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Li6/a0;

    move-result-object v1

    sget-object v2, Li6/o;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0, p2}, Li6/a0;->d(Li6/o;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must be called at most once"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    sget-object v8, Li6/o;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v9, Li6/a0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Li6/a0;-><init>(Ljava/lang/Object;Li6/l;Ly5/l;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/i;)V

    invoke-virtual {v8, p0, p1, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not completed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Lq5/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq5/d<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Li6/o;->j:Lq5/d;

    return-object p0
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Li6/o;->O(Ljava/lang/Object;Ljava/lang/Object;Ly5/l;)Lkotlinx/coroutines/internal/b0;

    move-result-object p0

    return-object p0
.end method

.method public d(Ly5/l;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Li6/o;->D(Ly5/l;)Li6/l;

    move-result-object v8

    :cond_0
    :goto_0
    iget-object v9, p0, Li6/o;->_state:Ljava/lang/Object;

    instance-of v0, v9, Li6/d;

    if-eqz v0, :cond_1

    sget-object v0, Li6/o;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v9, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_1
    instance-of v0, v9, Li6/l;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v9}, Li6/o;->E(Ly5/l;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of v0, v9, Li6/b0;

    if-eqz v0, :cond_7

    move-object v1, v9

    check-cast v1, Li6/b0;

    invoke-virtual {v1}, Li6/b0;->b()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, p1, v9}, Li6/o;->E(Ly5/l;Ljava/lang/Object;)V

    :cond_3
    instance-of v2, v9, Li6/r;

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v2, v1, Li6/b0;->a:Ljava/lang/Throwable;

    :goto_2
    invoke-direct {p0, p1, v2}, Li6/o;->n(Ly5/l;Ljava/lang/Throwable;)V

    :cond_6
    return-void

    :cond_7
    instance-of v0, v9, Li6/a0;

    if-eqz v0, :cond_b

    move-object v0, v9

    check-cast v0, Li6/a0;

    iget-object v1, v0, Li6/a0;->b:Li6/l;

    if-eqz v1, :cond_8

    invoke-direct {p0, p1, v9}, Li6/o;->E(Ly5/l;Ljava/lang/Object;)V

    :cond_8
    instance-of v1, v8, Li6/e;

    if-eqz v1, :cond_9

    return-void

    :cond_9
    invoke-virtual {v0}, Li6/a0;->c()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, v0, Li6/a0;->e:Ljava/lang/Throwable;

    invoke-direct {p0, p1, v0}, Li6/o;->n(Ly5/l;Ljava/lang/Throwable;)V

    return-void

    :cond_a
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1d

    const/4 v7, 0x0

    move-object v2, v8

    invoke-static/range {v0 .. v7}, Li6/a0;->b(Li6/a0;Ljava/lang/Object;Li6/l;Ly5/l;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Li6/a0;

    move-result-object v0

    sget-object v1, Li6/o;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_b
    instance-of v0, v8, Li6/e;

    if-eqz v0, :cond_c

    return-void

    :cond_c
    new-instance v10, Li6/a0;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, v9

    move-object v2, v8

    invoke-direct/range {v0 .. v7}, Li6/a0;-><init>(Ljava/lang/Object;Li6/l;Ly5/l;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/i;)V

    sget-object v0, Li6/o;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v9, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    invoke-super {p0, p1}, Li6/y0;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Li6/o;->b()Lq5/d;

    :goto_0
    return-object p1
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    instance-of p0, p1, Li6/a0;

    if-eqz p0, :cond_0

    check-cast p1, Li6/a0;

    iget-object p1, p1, Li6/a0;->a:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/e;
    .locals 1

    iget-object p0, p0, Li6/o;->j:Lq5/d;

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/e;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/coroutines/jvm/internal/e;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getContext()Lq5/g;
    .locals 0

    iget-object p0, p0, Li6/o;->k:Lq5/g;

    return-object p0
.end method

.method public h()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Li6/o;->w()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public j(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Li6/b0;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Li6/b0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/i;)V

    invoke-direct {p0, v0, v3, v3}, Li6/o;->O(Ljava/lang/Object;Ljava/lang/Object;Ly5/l;)Lkotlinx/coroutines/internal/b0;

    move-result-object p0

    return-object p0
.end method

.method public k(Ljava/lang/Object;Ly5/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ly5/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Li6/y0;->i:I

    invoke-direct {p0, p1, v0, p2}, Li6/o;->K(Ljava/lang/Object;ILy5/l;)V

    return-void
.end method

.method public final l(Li6/l;Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1, p2}, Li6/m;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Li6/o;->getContext()Lq5/g;

    move-result-object p2

    new-instance v0, Li6/e0;

    const-string v1, "Exception in invokeOnCancellation handler for "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Li6/e0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Li6/l0;->a(Lq5/g;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public m(Ljava/lang/Object;Ljava/lang/Object;Ly5/l;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Ly5/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Li6/o;->O(Ljava/lang/Object;Ljava/lang/Object;Ly5/l;)Lkotlinx/coroutines/internal/b0;

    move-result-object p0

    return-object p0
.end method

.method public final o(Ly5/l;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ln5/t;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p2}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Li6/o;->getContext()Lq5/g;

    move-result-object p2

    new-instance v0, Li6/e0;

    const-string v1, "Exception in resume onCancellation handler for "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Li6/e0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Li6/l0;->a(Lq5/g;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Li6/o;->l:Li6/c1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Li6/c1;->dispose()V

    sget-object v0, Li6/i2;->g:Li6/i2;

    iput-object v0, p0, Li6/o;->l:Li6/c1;

    return-void
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 6

    invoke-static {p1, p0}, Li6/f0;->b(Ljava/lang/Object;Li6/n;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Li6/y0;->i:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li6/o;->L(Li6/o;Ljava/lang/Object;ILy5/l;ILjava/lang/Object;)V

    return-void
.end method

.method public t(Li6/v1;)Ljava/lang/Throwable;
    .locals 0

    invoke-interface {p1}, Li6/v1;->h()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Li6/o;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li6/o;->j:Lq5/d;

    invoke-static {v1}, Li6/q0;->c(Lq5/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Li6/o;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Li6/q0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Ljava/lang/Object;
    .locals 3

    invoke-direct {p0}, Li6/o;->C()Z

    move-result v0

    invoke-direct {p0}, Li6/o;->P()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Li6/o;->l:Li6/c1;

    if-nez v1, :cond_0

    invoke-direct {p0}, Li6/o;->A()Li6/c1;

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Li6/o;->I()V

    :cond_1
    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Li6/o;->I()V

    :cond_3
    invoke-virtual {p0}, Li6/o;->w()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Li6/b0;

    if-nez v1, :cond_6

    iget v1, p0, Li6/y0;->i:I

    invoke-static {v1}, Li6/z0;->b(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Li6/o;->getContext()Lq5/g;

    move-result-object v1

    sget-object v2, Li6/v1;->d:Li6/v1$b;

    invoke-interface {v1, v2}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object v1

    check-cast v1, Li6/v1;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Li6/v1;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Li6/v1;->h()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Li6/o;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    :goto_0
    invoke-virtual {p0, v0}, Li6/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    check-cast v0, Li6/b0;

    iget-object p0, v0, Li6/b0;->a:Ljava/lang/Throwable;

    throw p0
.end method

.method public v(Ljava/lang/Throwable;)Z
    .locals 4

    :goto_0
    iget-object v0, p0, Li6/o;->_state:Ljava/lang/Object;

    instance-of v1, v0, Li6/j2;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v1, Li6/r;

    instance-of v2, v0, Li6/l;

    invoke-direct {v1, p0, p1, v2}, Li6/r;-><init>(Lq5/d;Ljava/lang/Throwable;Z)V

    sget-object v3, Li6/o;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    check-cast v0, Li6/l;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0, p1}, Li6/o;->l(Li6/l;Ljava/lang/Throwable;)V

    :goto_2
    invoke-direct {p0}, Li6/o;->r()V

    iget p1, p0, Li6/y0;->i:I

    invoke-direct {p0, p1}, Li6/o;->s(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final w()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Li6/o;->_state:Ljava/lang/Object;

    return-object p0
.end method

.method public y(Li6/i0;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/i0;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Li6/o;->j:Lq5/d;

    instance-of v1, v0, Lkotlinx/coroutines/internal/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/f;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lkotlinx/coroutines/internal/f;->j:Li6/i0;

    :goto_1
    if-ne v2, p1, :cond_2

    const/4 p1, 0x4

    goto :goto_2

    :cond_2
    iget p1, p0, Li6/y0;->i:I

    :goto_2
    move v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Li6/o;->L(Li6/o;Ljava/lang/Object;ILy5/l;ILjava/lang/Object;)V

    return-void
.end method

.method public z()V
    .locals 2

    invoke-direct {p0}, Li6/o;->A()Li6/c1;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Li6/o;->B()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Li6/c1;->dispose()V

    sget-object v0, Li6/i2;->g:Li6/i2;

    iput-object v0, p0, Li6/o;->l:Li6/c1;

    :cond_1
    return-void
.end method
