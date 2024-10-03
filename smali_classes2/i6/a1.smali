.class final Li6/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final g:Li6/i0;


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Li6/a1;->g:Li6/i0;

    sget-object v0, Lq5/h;->g:Lq5/h;

    invoke-virtual {p0, v0, p1}, Li6/i0;->dispatch(Lq5/g;Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Li6/a1;->g:Li6/i0;

    invoke-virtual {p0}, Li6/i0;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
