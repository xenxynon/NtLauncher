.class public final Ln5/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    const-string v0, "exception"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln5/l$b;

    invoke-direct {v0, p0}, Ln5/l$b;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static final b(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p0, Ln5/l$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Ln5/l$b;

    iget-object p0, p0, Ln5/l$b;->g:Ljava/lang/Throwable;

    throw p0
.end method
