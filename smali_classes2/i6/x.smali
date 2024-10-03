.class final Li6/x;
.super Li6/d2;
.source "SourceFile"

# interfaces
.implements Li6/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li6/d2;",
        "Li6/w<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Li6/v1;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Li6/d2;-><init>(Z)V

    invoke-virtual {p0, p1}, Li6/d2;->j0(Li6/v1;)V

    return-void
.end method


# virtual methods
.method public d0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public s(Ljava/lang/Throwable;)Z
    .locals 4

    new-instance v0, Li6/b0;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Li6/b0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/i;)V

    invoke-virtual {p0, v0}, Li6/d2;->o0(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public t(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Li6/d2;->o0(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public u(Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Li6/d2;->M(Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
