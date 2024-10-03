.class final Lk6/s;
.super Lk6/g;
.source "SourceFile"

# interfaces
.implements Lk6/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lk6/g<",
        "TE;>;",
        "Lk6/t<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lq5/g;Lk6/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g;",
            "Lk6/f<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lk6/g;-><init>(Lq5/g;Lk6/f;ZZ)V

    return-void
.end method


# virtual methods
.method protected N0(Ljava/lang/Throwable;Z)V
    .locals 1

    invoke-virtual {p0}, Lk6/g;->Q0()Lk6/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lk6/z;->q(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Li6/a;->getContext()Lq5/g;

    move-result-object p0

    invoke-static {p0, p1}, Li6/l0;->a(Lq5/g;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic O0(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ln5/t;

    invoke-virtual {p0, p1}, Lk6/s;->R0(Ln5/t;)V

    return-void
.end method

.method protected R0(Ln5/t;)V
    .locals 1

    invoke-virtual {p0}, Lk6/g;->Q0()Lk6/f;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p1}, Lk6/z$a;->a(Lk6/z;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void
.end method

.method public a()Z
    .locals 0

    invoke-super {p0}, Li6/a;->a()Z

    move-result p0

    return p0
.end method
