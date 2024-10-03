.class public abstract Lk6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk6/z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk6/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lk6/z<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final synthetic i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field protected final g:Ly5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/l<",
            "TE;",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lkotlinx/coroutines/internal/m;

.field private volatile synthetic onCloseHandler:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lk6/c;

    const-class v1, Ljava/lang/Object;

    const-string v2, "onCloseHandler"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lk6/c;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk6/c;->g:Ly5/l;

    new-instance p1, Lkotlinx/coroutines/internal/m;

    invoke-direct {p1}, Lkotlinx/coroutines/internal/m;-><init>()V

    iput-object p1, p0, Lk6/c;->h:Lkotlinx/coroutines/internal/m;

    const/4 p1, 0x0

    iput-object p1, p0, Lk6/c;->onCloseHandler:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a(Lk6/c;Lq5/d;Ljava/lang/Object;Lk6/m;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lk6/c;->r(Lq5/d;Ljava/lang/Object;Lk6/m;)V

    return-void
.end method

.method public static final synthetic c(Lk6/c;)Z
    .locals 0

    invoke-direct {p0}, Lk6/c;->v()Z

    move-result p0

    return p0
.end method

.method private final d()I
    .locals 3

    iget-object p0, p0, Lk6/c;->h:Lkotlinx/coroutines/internal/m;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/o;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/o;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, p0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v2, v0, Lkotlinx/coroutines/internal/o;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->p()Lkotlinx/coroutines/internal/o;

    move-result-object v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method private final m()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lk6/c;->h:Lkotlinx/coroutines/internal/m;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->p()Lkotlinx/coroutines/internal/o;

    move-result-object v0

    iget-object v1, p0, Lk6/c;->h:Lkotlinx/coroutines/internal/m;

    if-ne v0, v1, :cond_0

    const-string p0, "EmptyQueue"

    return-object p0

    :cond_0
    instance-of v1, v0, Lk6/m;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lk6/u;

    if-eqz v1, :cond_2

    const-string v1, "ReceiveQueued"

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lk6/y;

    if-eqz v1, :cond_3

    const-string v1, "SendQueued"

    goto :goto_0

    :cond_3
    const-string v1, "UNEXPECTED:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lk6/c;->h:Lkotlinx/coroutines/internal/m;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/o;->q()Lkotlinx/coroutines/internal/o;

    move-result-object v2

    if-eq v2, v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",queueSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lk6/c;->d()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    instance-of p0, v2, Lk6/m;

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",closedForSend="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method private final n(Lk6/m;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/m<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/internal/j;->b(Ljava/lang/Object;ILkotlin/jvm/internal/i;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->q()Lkotlinx/coroutines/internal/o;

    move-result-object v3

    instance-of v4, v3, Lk6/u;

    if-eqz v4, :cond_0

    check-cast v3, Lk6/u;

    goto :goto_1

    :cond_0
    move-object v3, v0

    :goto_1
    if-nez v3, :cond_5

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    instance-of v0, v2, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    check-cast v2, Lk6/u;

    invoke-virtual {v2, p1}, Lk6/u;->B(Lk6/m;)V

    goto :goto_3

    :cond_2
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ltz v0, :cond_4

    :goto_2
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk6/u;

    invoke-virtual {v0, p1}, Lk6/u;->B(Lk6/m;)V

    if-gez v1, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p0, p1}, Lk6/c;->x(Lkotlinx/coroutines/internal/o;)V

    return-void

    :cond_5
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/o;->u()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/o;->r()V

    goto :goto_0

    :cond_6
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/j;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method private final p(Lk6/m;)Ljava/lang/Throwable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/m<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lk6/c;->n(Lk6/m;)V

    invoke-virtual {p1}, Lk6/m;->H()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method private final r(Lq5/d;Ljava/lang/Object;Lk6/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "*>;TE;",
            "Lk6/m<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lk6/c;->n(Lk6/m;)V

    invoke-virtual {p3}, Lk6/m;->H()Ljava/lang/Throwable;

    move-result-object p3

    iget-object p0, p0, Lk6/c;->g:Ly5/l;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p2, v1, v0, v1}, Lkotlinx/coroutines/internal/v;->d(Ly5/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/l0;ILjava/lang/Object;)Lkotlinx/coroutines/internal/l0;

    move-result-object p0

    if-nez p0, :cond_1

    :goto_0
    sget-object p0, Ln5/l;->h:Ln5/l$a;

    invoke-static {p3}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lq5/d;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p0, p3}, Ln5/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    sget-object p2, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1
.end method

.method private final s(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lk6/c;->onCloseHandler:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v1, Lk6/b;->f:Lkotlinx/coroutines/internal/b0;

    if-eq v0, v1, :cond_0

    sget-object v2, Lk6/c;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lkotlin/jvm/internal/d0;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly5/l;

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final v()Z
    .locals 1

    iget-object v0, p0, Lk6/c;->h:Lkotlinx/coroutines/internal/m;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->p()Lkotlinx/coroutines/internal/o;

    move-result-object v0

    instance-of v0, v0, Lk6/w;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lk6/c;->u()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final z(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p2}, Lr5/b;->b(Lq5/d;)Lq5/d;

    move-result-object v0

    invoke-static {v0}, Li6/q;->b(Lq5/d;)Li6/o;

    move-result-object v0

    :goto_0
    invoke-static {p0}, Lk6/c;->c(Lk6/c;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lk6/c;->g:Ly5/l;

    if-nez v1, :cond_0

    new-instance v1, Lk6/a0;

    invoke-direct {v1, p1, v0}, Lk6/a0;-><init>(Ljava/lang/Object;Li6/n;)V

    goto :goto_1

    :cond_0
    new-instance v1, Lk6/b0;

    iget-object v2, p0, Lk6/c;->g:Ly5/l;

    invoke-direct {v1, p1, v0, v2}, Lk6/b0;-><init>(Ljava/lang/Object;Li6/n;Ly5/l;)V

    :goto_1
    invoke-virtual {p0, v1}, Lk6/c;->f(Lk6/y;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Li6/q;->c(Li6/n;Lkotlinx/coroutines/internal/o;)V

    goto :goto_3

    :cond_1
    instance-of v1, v2, Lk6/m;

    if-eqz v1, :cond_2

    check-cast v2, Lk6/m;

    invoke-static {p0, v0, p1, v2}, Lk6/c;->a(Lk6/c;Lq5/d;Ljava/lang/Object;Lk6/m;)V

    goto :goto_3

    :cond_2
    sget-object v1, Lk6/b;->e:Lkotlinx/coroutines/internal/b0;

    if-ne v2, v1, :cond_3

    goto :goto_2

    :cond_3
    instance-of v1, v2, Lk6/u;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "enqueueSend returned "

    invoke-static {p1, v2}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lk6/c;->w(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lk6/b;->b:Lkotlinx/coroutines/internal/b0;

    if-ne v1, v2, :cond_6

    sget-object p0, Ln5/l;->h:Ln5/l$a;

    sget-object p0, Ln5/t;->a:Ln5/t;

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lq5/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    sget-object v2, Lk6/b;->c:Lkotlinx/coroutines/internal/b0;

    if-ne v1, v2, :cond_7

    goto :goto_0

    :cond_7
    instance-of v2, v1, Lk6/m;

    if-eqz v2, :cond_a

    check-cast v1, Lk6/m;

    invoke-static {p0, v0, p1, v1}, Lk6/c;->a(Lk6/c;Lq5/d;Ljava/lang/Object;Lk6/m;)V

    :goto_3
    invoke-virtual {v0}, Li6/o;->u()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_8

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lq5/d;)V

    :cond_8
    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_9

    return-object p0

    :cond_9
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "offerInternal returned "

    invoke-static {p1, v1}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected A()Lk6/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk6/w<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lk6/c;->h:Lkotlinx/coroutines/internal/m;

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/o;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/o;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    :goto_1
    move-object v0, v1

    goto :goto_2

    :cond_0
    instance-of v2, v0, Lk6/w;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    check-cast v1, Lk6/w;

    instance-of v1, v1, Lk6/m;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->t()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->w()Lkotlinx/coroutines/internal/o;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_2
    check-cast v0, Lk6/w;

    return-object v0

    :cond_3
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/o;->s()V

    goto :goto_0
.end method

.method public final B(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lk6/c;->w(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lk6/b;->b:Lkotlinx/coroutines/internal/b0;

    if-ne p1, v0, :cond_0

    sget-object p0, Lk6/j;->b:Lk6/j$b;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lk6/j$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_0
    sget-object v0, Lk6/b;->c:Lkotlinx/coroutines/internal/b0;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lk6/c;->k()Lk6/m;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p0, Lk6/j;->b:Lk6/j$b;

    invoke-virtual {p0}, Lk6/j$b;->b()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lk6/j;->b:Lk6/j$b;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lk6/m;

    if-eqz v0, :cond_3

    sget-object v0, Lk6/j;->b:Lk6/j$b;

    check-cast p1, Lk6/m;

    :goto_0
    invoke-direct {p0, p1}, Lk6/c;->p(Lk6/m;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lk6/j$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "trySend returned "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final C(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lk6/c;->w(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lk6/b;->b:Lkotlinx/coroutines/internal/b0;

    if-ne v0, v1, :cond_0

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_0
    invoke-direct {p0, p1, p2}, Lk6/c;->z(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method protected final D()Lk6/y;
    .locals 3

    iget-object p0, p0, Lk6/c;->h:Lkotlinx/coroutines/internal/m;

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/o;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/o;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    :goto_1
    move-object v0, v1

    goto :goto_2

    :cond_0
    instance-of v2, v0, Lk6/y;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    check-cast v1, Lk6/y;

    instance-of v1, v1, Lk6/m;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->t()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->w()Lkotlinx/coroutines/internal/o;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_2
    check-cast v0, Lk6/y;

    return-object v0

    :cond_3
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/o;->s()V

    goto :goto_0
.end method

.method public final E()Z
    .locals 0

    invoke-virtual {p0}, Lk6/c;->k()Lk6/m;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected f(Lk6/y;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lk6/c;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lk6/c;->h:Lkotlinx/coroutines/internal/m;

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->q()Lkotlinx/coroutines/internal/o;

    move-result-object p0

    instance-of v1, p0, Lk6/w;

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/internal/o;->j(Lkotlinx/coroutines/internal/o;Lkotlinx/coroutines/internal/o;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lk6/c;->h:Lkotlinx/coroutines/internal/m;

    new-instance v1, Lk6/c$b;

    invoke-direct {v1, p1, p0}, Lk6/c$b;-><init>(Lkotlinx/coroutines/internal/o;Lk6/c;)V

    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->q()Lkotlinx/coroutines/internal/o;

    move-result-object p0

    instance-of v2, p0, Lk6/w;

    if-eqz v2, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p0, p1, v0, v1}, Lkotlinx/coroutines/internal/o;->y(Lkotlinx/coroutines/internal/o;Lkotlinx/coroutines/internal/o;Lkotlinx/coroutines/internal/o$a;)I

    move-result p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_5

    const/4 v2, 0x2

    if-eq p0, v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :cond_5
    if-nez v2, :cond_6

    sget-object p0, Lk6/b;->e:Lkotlinx/coroutines/internal/b0;

    return-object p0

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public g(Ly5/l;)V
    .locals 3
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

    sget-object v0, Lk6/c;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lk6/c;->onCloseHandler:Ljava/lang/Object;

    sget-object p1, Lk6/b;->f:Lkotlinx/coroutines/internal/b0;

    if-ne p0, p1, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Another handler was already registered and successfully invoked"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Another handler was already registered: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lk6/c;->k()Lk6/m;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v2, Lk6/b;->f:Lkotlinx/coroutines/internal/b0;

    invoke-virtual {v0, p0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v1, Lk6/m;->j:Ljava/lang/Throwable;

    invoke-interface {p1, p0}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method protected h()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method protected final j()Lk6/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk6/m<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lk6/c;->h:Lkotlinx/coroutines/internal/m;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->p()Lkotlinx/coroutines/internal/o;

    move-result-object v0

    instance-of v1, v0, Lk6/m;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lk6/m;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lk6/c;->n(Lk6/m;)V

    move-object v2, v0

    :goto_1
    return-object v2
.end method

.method protected final k()Lk6/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk6/m<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lk6/c;->h:Lkotlinx/coroutines/internal/m;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->q()Lkotlinx/coroutines/internal/o;

    move-result-object v0

    instance-of v1, v0, Lk6/m;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lk6/m;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lk6/c;->n(Lk6/m;)V

    move-object v2, v0

    :goto_1
    return-object v2
.end method

.method protected final l()Lkotlinx/coroutines/internal/m;
    .locals 0

    iget-object p0, p0, Lk6/c;->h:Lkotlinx/coroutines/internal/m;

    return-object p0
.end method

.method public q(Ljava/lang/Throwable;)Z
    .locals 5

    new-instance v0, Lk6/m;

    invoke-direct {v0, p1}, Lk6/m;-><init>(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lk6/c;->h:Lkotlinx/coroutines/internal/m;

    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/o;->q()Lkotlinx/coroutines/internal/o;

    move-result-object v2

    instance-of v3, v2, Lk6/m;

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-nez v3, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0, v1}, Lkotlinx/coroutines/internal/o;->j(Lkotlinx/coroutines/internal/o;Lkotlinx/coroutines/internal/o;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lk6/c;->h:Lkotlinx/coroutines/internal/m;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->q()Lkotlinx/coroutines/internal/o;

    move-result-object v0

    check-cast v0, Lk6/m;

    :goto_1
    invoke-direct {p0, v0}, Lk6/c;->n(Lk6/m;)V

    if-eqz v4, :cond_3

    invoke-direct {p0, p1}, Lk6/c;->s(Ljava/lang/Throwable;)V

    :cond_3
    return v4
.end method

.method protected abstract t()Z
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Li6/q0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Li6/q0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lk6/c;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lk6/c;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected abstract u()Z
.end method

.method protected w(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lk6/c;->A()Lk6/w;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lk6/b;->c:Lkotlinx/coroutines/internal/b0;

    return-object p0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lk6/w;->g(Ljava/lang/Object;Lkotlinx/coroutines/internal/o$b;)Lkotlinx/coroutines/internal/b0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lk6/w;->e(Ljava/lang/Object;)V

    invoke-interface {v0}, Lk6/w;->b()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected x(Lkotlinx/coroutines/internal/o;)V
    .locals 0

    return-void
.end method

.method protected final y(Ljava/lang/Object;)Lk6/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lk6/w<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lk6/c;->h:Lkotlinx/coroutines/internal/m;

    new-instance v0, Lk6/c$a;

    invoke-direct {v0, p1}, Lk6/c$a;-><init>(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/o;->q()Lkotlinx/coroutines/internal/o;

    move-result-object p1

    instance-of v1, p1, Lk6/w;

    if-eqz v1, :cond_1

    check-cast p1, Lk6/w;

    return-object p1

    :cond_1
    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/internal/o;->j(Lkotlinx/coroutines/internal/o;Lkotlinx/coroutines/internal/o;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method
