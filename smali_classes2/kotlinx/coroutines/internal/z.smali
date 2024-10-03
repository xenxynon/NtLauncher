.class public Lkotlinx/coroutines/internal/z;
.super Li6/a;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/jvm/internal/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li6/a<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/e;"
    }
.end annotation


# instance fields
.field public final i:Lq5/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq5/d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq5/g;Lq5/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g;",
            "Lq5/d<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Li6/a;-><init>(Lq5/g;ZZ)V

    iput-object p2, p0, Lkotlinx/coroutines/internal/z;->i:Lq5/d;

    return-void
.end method


# virtual methods
.method protected L(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/internal/z;->i:Lq5/d;

    invoke-static {v0}, Lr5/b;->b(Lq5/d;)Lq5/d;

    move-result-object v0

    iget-object p0, p0, Lkotlinx/coroutines/internal/z;->i:Lq5/d;

    invoke-static {p1, p0}, Li6/f0;->a(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v1, 0x2

    invoke-static {v0, p0, p1, v1, p1}, Lkotlinx/coroutines/internal/g;->c(Lq5/d;Ljava/lang/Object;Ly5/l;ILjava/lang/Object;)V

    return-void
.end method

.method protected M0(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/z;->i:Lq5/d;

    invoke-static {p1, p0}, Li6/f0;->a(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lq5/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final Q0()Li6/v1;
    .locals 0

    invoke-virtual {p0}, Li6/d2;->f0()Li6/t;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Li6/t;->getParent()Li6/v1;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getCallerFrame()Lkotlin/coroutines/jvm/internal/e;
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/internal/z;->i:Lq5/d;

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/e;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/coroutines/jvm/internal/e;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected final k0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
