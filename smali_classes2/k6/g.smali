.class public Lk6/g;
.super Li6/a;
.source "SourceFile"

# interfaces
.implements Lk6/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Li6/a<",
        "Ln5/t;",
        ">;",
        "Lk6/f<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final i:Lk6/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/f<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq5/g;Lk6/f;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g;",
            "Lk6/f<",
            "TE;>;ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3, p4}, Li6/a;-><init>(Lq5/g;ZZ)V

    iput-object p2, p0, Lk6/g;->i:Lk6/f;

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lk6/g;->i:Lk6/f;

    invoke-interface {p0, p1}, Lk6/z;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public C(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 0
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

    iget-object p0, p0, Lk6/g;->i:Lk6/f;

    invoke-interface {p0, p1, p2}, Lk6/z;->C(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public E()Z
    .locals 0

    iget-object p0, p0, Lk6/g;->i:Lk6/f;

    invoke-interface {p0}, Lk6/z;->E()Z

    move-result p0

    return p0
.end method

.method public Q(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, v0}, Li6/d2;->F0(Li6/d2;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    iget-object v0, p0, Lk6/g;->i:Lk6/f;

    invoke-interface {v0, p1}, Lk6/v;->b(Ljava/util/concurrent/CancellationException;)V

    invoke-virtual {p0, p1}, Li6/d2;->O(Ljava/lang/Throwable;)Z

    return-void
.end method

.method protected final Q0()Lk6/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk6/f<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lk6/g;->i:Lk6/f;

    return-object p0
.end method

.method public final b(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    invoke-virtual {p0}, Li6/d2;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    new-instance v0, Li6/w1;

    invoke-static {p0}, Li6/d2;->H(Li6/d2;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Li6/w1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Li6/v1;)V

    move-object p1, v0

    :cond_1
    invoke-virtual {p0, p1}, Lk6/g;->Q(Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Lq5/d;)Ljava/lang/Object;
    .locals 0
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

    iget-object p0, p0, Lk6/g;->i:Lk6/f;

    invoke-interface {p0, p1}, Lk6/v;->e(Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    return-object p0
.end method

.method public g(Ly5/l;)V
    .locals 0
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

    iget-object p0, p0, Lk6/g;->i:Lk6/f;

    invoke-interface {p0, p1}, Lk6/z;->g(Ly5/l;)V

    return-void
.end method

.method public i()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lk6/g;->i:Lk6/f;

    invoke-interface {p0}, Lk6/v;->i()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Lk6/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk6/h<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lk6/g;->i:Lk6/f;

    invoke-interface {p0}, Lk6/v;->iterator()Lk6/h;

    move-result-object p0

    return-object p0
.end method

.method public o(Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lk6/g;->i:Lk6/f;

    invoke-interface {p0, p1}, Lk6/v;->o(Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public q(Ljava/lang/Throwable;)Z
    .locals 0

    iget-object p0, p0, Lk6/g;->i:Lk6/f;

    invoke-interface {p0, p1}, Lk6/z;->q(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method
