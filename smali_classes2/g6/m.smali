.class Lg6/m;
.super Lg6/l;
.source "SourceFile"


# direct methods
.method public static c(Ljava/util/Iterator;)Lg6/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lg6/g<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg6/m$a;

    invoke-direct {v0, p0}, Lg6/m$a;-><init>(Ljava/util/Iterator;)V

    invoke-static {v0}, Lg6/m;->d(Lg6/g;)Lg6/g;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lg6/g;)Lg6/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lg6/g<",
            "+TT;>;)",
            "Lg6/g<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lg6/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lg6/a;

    invoke-direct {v0, p0}, Lg6/a;-><init>(Lg6/g;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static e()Lg6/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lg6/g<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lg6/c;->a:Lg6/c;

    return-object v0
.end method

.method public static f(Ljava/lang/Object;Ly5/l;)Lg6/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ly5/l<",
            "-TT;+TT;>;)",
            "Lg6/g<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "nextFunction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    sget-object p0, Lg6/c;->a:Lg6/c;

    goto :goto_0

    :cond_0
    new-instance v0, Lg6/f;

    new-instance v1, Lg6/m$b;

    invoke-direct {v1, p0}, Lg6/m$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1}, Lg6/f;-><init>(Ly5/a;Ly5/l;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static g(Ly5/a;Ly5/l;)Lg6/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ly5/a<",
            "+TT;>;",
            "Ly5/l<",
            "-TT;+TT;>;)",
            "Lg6/g<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "seedFunction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextFunction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg6/f;

    invoke-direct {v0, p0, p1}, Lg6/f;-><init>(Ly5/a;Ly5/l;)V

    return-object v0
.end method
