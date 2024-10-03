.class Ln5/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln5/g$a;
    }
.end annotation


# direct methods
.method public static a(Ln5/i;Ly5/a;)Ln5/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ln5/i;",
            "Ly5/a<",
            "+TT;>;)",
            "Ln5/e<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "mode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ln5/g$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    new-instance p0, Ln5/u;

    invoke-direct {p0, p1}, Ln5/u;-><init>(Ly5/a;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ln5/j;

    invoke-direct {p0}, Ln5/j;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ln5/n;

    invoke-direct {p0, p1}, Ln5/n;-><init>(Ly5/a;)V

    goto :goto_0

    :cond_2
    new-instance p0, Ln5/o;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v0}, Ln5/o;-><init>(Ly5/a;Ljava/lang/Object;ILkotlin/jvm/internal/i;)V

    :goto_0
    return-object p0
.end method

.method public static b(Ly5/a;)Ln5/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ly5/a<",
            "+TT;>;)",
            "Ln5/e<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln5/o;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Ln5/o;-><init>(Ly5/a;Ljava/lang/Object;ILkotlin/jvm/internal/i;)V

    return-object v0
.end method
