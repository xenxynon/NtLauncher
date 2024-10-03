.class public final Li6/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/util/concurrent/Executor;)Li6/i0;
    .locals 2

    instance-of v0, p0, Li6/a1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Li6/a1;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Li6/a1;->g:Li6/i0;

    :goto_1
    if-nez v1, :cond_2

    new-instance v1, Li6/m1;

    invoke-direct {v1, p0}, Li6/m1;-><init>(Ljava/util/concurrent/Executor;)V

    :cond_2
    return-object v1
.end method
