.class public final Ll6/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ll6/a;Lkotlinx/coroutines/flow/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll6/a;",
            "Lkotlinx/coroutines/flow/f<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ll6/a;->a()Lkotlinx/coroutines/flow/f;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    throw p0
.end method
