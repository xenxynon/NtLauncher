.class public final Lq5/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ly5/p;Ljava/lang/Object;Lq5/d;)V
    .locals 1
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
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lr5/b;->a(Ly5/p;Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    invoke-static {p0}, Lr5/b;->b(Lq5/d;)Lq5/d;

    move-result-object p0

    sget-object p1, Ln5/l;->h:Ln5/l$a;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-static {p1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lq5/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
