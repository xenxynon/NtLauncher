.class public interface abstract Li0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Li0/d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public c(Li0/d;Li0/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Li0/e<",
            "TT;>;)V"
        }
    .end annotation

    invoke-interface {p0, p1}, Li0/f;->onPluginDisconnected(Li0/d;)V

    return-void
.end method

.method public k(Li0/d;Landroid/content/Context;Li0/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/content/Context;",
            "Li0/e<",
            "TT;>;)V"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Li0/f;->onPluginConnected(Li0/d;Landroid/content/Context;)V

    return-void
.end method

.method public n(Li0/e;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li0/e<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public onPluginConnected(Li0/d;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPluginDisconnected(Li0/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public p(Li0/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li0/e<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method
