.class public abstract Ll1/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ll1/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll1/t<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ll1/t$a;

    invoke-direct {v0, p0}, Ll1/t$a;-><init>(Ll1/t;)V

    return-object v0
.end method

.method public abstract b(Ls1/a;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a;",
            ")TT;"
        }
    .end annotation
.end method

.method public final c(Ljava/lang/Object;)Ll1/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ll1/j;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    invoke-virtual {p0, v0, p1}, Ll1/t;->d(Ls1/c;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lo1/f;->L()Ll1/j;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ll1/k;

    invoke-direct {p1, p0}, Ll1/k;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public abstract d(Ls1/c;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/c;",
            "TT;)V"
        }
    .end annotation
.end method
