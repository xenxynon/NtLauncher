.class public final Li6/x0;
.super Lkotlinx/coroutines/internal/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/z<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final synthetic j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _decision:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Li6/x0;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Li6/x0;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lq5/g;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g;",
            "Lq5/d<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/internal/z;-><init>(Lq5/g;Lq5/d;)V

    const/4 p1, 0x0

    iput p1, p0, Li6/x0;->_decision:I

    return-void
.end method

.method private final S0()Z
    .locals 4

    :cond_0
    iget v0, p0, Li6/x0;->_decision:I

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
    sget-object v0, Li6/x0;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private final T0()Z
    .locals 3

    :cond_0
    iget v0, p0, Li6/x0;->_decision:I

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
    sget-object v0, Li6/x0;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method


# virtual methods
.method protected L(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Li6/x0;->M0(Ljava/lang/Object;)V

    return-void
.end method

.method protected M0(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Li6/x0;->S0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/z;->i:Lq5/d;

    invoke-static {v0}, Lr5/b;->b(Lq5/d;)Lq5/d;

    move-result-object v0

    iget-object p0, p0, Lkotlinx/coroutines/internal/z;->i:Lq5/d;

    invoke-static {p1, p0}, Li6/f0;->a(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x2

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, v1}, Lkotlinx/coroutines/internal/g;->c(Lq5/d;Ljava/lang/Object;Ly5/l;ILjava/lang/Object;)V

    return-void
.end method

.method public final R0()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Li6/x0;->T0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Li6/d2;->g0()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Li6/e2;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Li6/b0;

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    check-cast p0, Li6/b0;

    iget-object p0, p0, Li6/b0;->a:Ljava/lang/Throwable;

    throw p0
.end method
