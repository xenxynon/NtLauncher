.class public final Ll6/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ly5/p;Lq5/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ly5/p<",
            "-",
            "Li6/m0;",
            "-",
            "Lq5/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lq5/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Ll6/m;

    invoke-interface {p1}, Lq5/d;->getContext()Lq5/g;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ll6/m;-><init>(Lq5/g;Lq5/d;)V

    invoke-static {v0, v0, p0}, Lm6/b;->b(Lkotlinx/coroutines/internal/z;Ljava/lang/Object;Ly5/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/h;->c(Lq5/d;)V

    :cond_0
    return-object p0
.end method
