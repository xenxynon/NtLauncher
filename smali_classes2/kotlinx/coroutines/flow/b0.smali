.class public final Lkotlinx/coroutines/flow/b0;
.super Ll6/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll6/d<",
        "Lkotlinx/coroutines/flow/z<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public a:J

.field public b:Lq5/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ll6/d;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lkotlinx/coroutines/flow/b0;->a:J

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/z;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/b0;->c(Lkotlinx/coroutines/flow/z;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)[Lq5/d;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/z;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/b0;->d(Lkotlinx/coroutines/flow/z;)[Lq5/d;

    move-result-object p0

    return-object p0
.end method

.method public c(Lkotlinx/coroutines/flow/z;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/z<",
            "*>;)Z"
        }
    .end annotation

    iget-wide v0, p0, Lkotlinx/coroutines/flow/b0;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/z;->T()J

    move-result-wide v0

    iput-wide v0, p0, Lkotlinx/coroutines/flow/b0;->a:J

    const/4 p0, 0x1

    return p0
.end method

.method public d(Lkotlinx/coroutines/flow/z;)[Lq5/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/z<",
            "*>;)[",
            "Lq5/d<",
            "Ln5/t;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lkotlinx/coroutines/flow/b0;->a:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lkotlinx/coroutines/flow/b0;->a:J

    const/4 v2, 0x0

    iput-object v2, p0, Lkotlinx/coroutines/flow/b0;->b:Lq5/d;

    invoke-virtual {p1, v0, v1}, Lkotlinx/coroutines/flow/z;->S(J)[Lq5/d;

    move-result-object p0

    return-object p0
.end method
