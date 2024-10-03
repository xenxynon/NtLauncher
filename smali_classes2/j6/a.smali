.class public final Lj6/a;
.super Lj6/b;
.source "SourceFile"


# instance fields
.field private volatile _immediate:Lj6/a;

.field private final g:Landroid/os/Handler;

.field private final h:Ljava/lang/String;

.field private final i:Z

.field private final j:Lj6/a;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lj6/a;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Handler;Ljava/lang/String;ILkotlin/jvm/internal/i;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lj6/a;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj6/b;-><init>(Lkotlin/jvm/internal/i;)V

    iput-object p1, p0, Lj6/a;->g:Landroid/os/Handler;

    iput-object p2, p0, Lj6/a;->h:Ljava/lang/String;

    iput-boolean p3, p0, Lj6/a;->i:Z

    if-eqz p3, :cond_0

    move-object v0, p0

    :cond_0
    iput-object v0, p0, Lj6/a;->_immediate:Lj6/a;

    iget-object p3, p0, Lj6/a;->_immediate:Lj6/a;

    if-nez p3, :cond_1

    new-instance p3, Lj6/a;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, Lj6/a;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p3, p0, Lj6/a;->_immediate:Lj6/a;

    :cond_1
    iput-object p3, p0, Lj6/a;->j:Lj6/a;

    return-void
.end method

.method public static final synthetic B(Lj6/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lj6/a;->g:Landroid/os/Handler;

    return-object p0
.end method

.method private final C(Lq5/g;Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Ljava/util/concurrent/CancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The task was rejected, the handler underlying the dispatcher \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' was closed"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Li6/z1;->c(Lq5/g;Ljava/util/concurrent/CancellationException;)V

    invoke-static {}, Li6/b1;->b()Li6/i0;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Li6/i0;->dispatch(Lq5/g;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public E()Lj6/a;
    .locals 0

    iget-object p0, p0, Lj6/a;->j:Lj6/a;

    return-object p0
.end method

.method public c(JLi6/n;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Li6/n<",
            "-",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lj6/a$a;

    invoke-direct {v0, p3, p0}, Lj6/a$a;-><init>(Li6/n;Lj6/a;)V

    iget-object v1, p0, Lj6/a;->g:Landroid/os/Handler;

    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {p1, p2, v2, v3}, Le6/e;->f(JJ)J

    move-result-wide p1

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lj6/a$b;

    invoke-direct {p1, p0, v0}, Lj6/a$b;-><init>(Lj6/a;Ljava/lang/Runnable;)V

    invoke-interface {p3, p1}, Li6/n;->d(Ly5/l;)V

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Lq5/d;->getContext()Lq5/g;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lj6/a;->C(Lq5/g;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public dispatch(Lq5/g;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lj6/a;->g:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lj6/a;->C(Lq5/g;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lj6/a;

    if-eqz v0, :cond_0

    check-cast p1, Lj6/a;

    iget-object p1, p1, Lj6/a;->g:Landroid/os/Handler;

    iget-object p0, p0, Lj6/a;->g:Landroid/os/Handler;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lj6/a;->g:Landroid/os/Handler;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isDispatchNeeded(Lq5/g;)Z
    .locals 0

    iget-boolean p1, p0, Lj6/a;->i:Z

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object p0, p0, Lj6/a;->g:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

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

.method public bridge synthetic k()Li6/g2;
    .locals 0

    invoke-virtual {p0}, Lj6/a;->E()Lj6/a;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Li6/g2;->y()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lj6/a;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lj6/a;->g:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-boolean p0, p0, Lj6/a;->i:Z

    if-eqz p0, :cond_1

    const-string p0, ".immediate"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    :cond_1
    return-object v0
.end method
