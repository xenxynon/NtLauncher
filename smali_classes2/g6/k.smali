.class Lg6/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ly5/p;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ly5/p<",
            "-",
            "Lg6/i<",
            "-TT;>;-",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg6/h;

    invoke-direct {v0}, Lg6/h;-><init>()V

    invoke-static {p0, v0, v0}, Lr5/b;->a(Ly5/p;Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    invoke-virtual {v0, p0}, Lg6/h;->i(Lq5/d;)V

    return-object v0
.end method

.method public static b(Ly5/p;)Lg6/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ly5/p<",
            "-",
            "Lg6/i<",
            "-TT;>;-",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lg6/g<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg6/k$a;

    invoke-direct {v0, p0}, Lg6/k$a;-><init>(Ly5/p;)V

    return-object v0
.end method
