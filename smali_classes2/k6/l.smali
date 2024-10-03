.class final synthetic Lk6/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lk6/v;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/v<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "Channel was consumed, consumer had failed"

    invoke-static {v0, p1}, Li6/k1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    move-object v0, p1

    :cond_2
    :goto_0
    invoke-interface {p0, v0}, Lk6/v;->b(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method
