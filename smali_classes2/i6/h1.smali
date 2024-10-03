.class public abstract Li6/h1;
.super Li6/f1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Li6/f1;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract N()Ljava/lang/Thread;
.end method

.method protected O(JLi6/g1$b;)V
    .locals 0

    sget-object p0, Li6/r0;->l:Li6/r0;

    invoke-virtual {p0, p1, p2, p3}, Li6/g1;->Y(JLi6/g1$b;)V

    return-void
.end method

.method protected final P()V
    .locals 1

    invoke-virtual {p0}, Li6/h1;->N()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    invoke-static {}, Li6/c;->a()Li6/b;

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method
