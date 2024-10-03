.class public final Lm6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final a(Lq5/d;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    sget-object v0, Ln5/l;->h:Ln5/l$a;

    invoke-static {p1}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lq5/d;->resumeWith(Ljava/lang/Object;)V

    throw p1
.end method

.method public static final b(Lq5/d;Lq5/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;",
            "Lq5/d<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lr5/b;->b(Lq5/d;)Lq5/d;

    move-result-object p0

    sget-object v0, Ln5/l;->h:Ln5/l$a;

    sget-object v0, Ln5/t;->a:Ln5/t;

    invoke-static {v0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lkotlinx/coroutines/internal/g;->c(Lq5/d;Ljava/lang/Object;Ly5/l;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p1, p0}, Lm6/a;->a(Lq5/d;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final c(Ly5/p;Ljava/lang/Object;Lq5/d;Ly5/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ly5/p<",
            "-TR;-",
            "Lq5/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lq5/d<",
            "-TT;>;",
            "Ly5/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2}, Lr5/b;->a(Ly5/p;Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    invoke-static {p0}, Lr5/b;->b(Lq5/d;)Lq5/d;

    move-result-object p0

    sget-object p1, Ln5/l;->h:Ln5/l$a;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-static {p1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lkotlinx/coroutines/internal/g;->b(Lq5/d;Ljava/lang/Object;Ly5/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p2, p0}, Lm6/a;->a(Lq5/d;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic d(Ly5/p;Ljava/lang/Object;Lq5/d;Ly5/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lm6/a;->c(Ly5/p;Ljava/lang/Object;Lq5/d;Ly5/l;)V

    return-void
.end method
