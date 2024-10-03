.class final Ll6/m;
.super Lkotlinx/coroutines/internal/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/z<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lq5/g;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g;",
            "Lq5/d<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/internal/z;-><init>(Lq5/g;Lq5/d;)V

    return-void
.end method


# virtual methods
.method public U(Ljava/lang/Throwable;)Z
    .locals 1

    instance-of v0, p1, Ll6/j;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Li6/d2;->P(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
