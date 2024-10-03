.class public final Lk6/b0;
.super Lk6/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lk6/a0<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final l:Ly5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/l<",
            "TE;",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Li6/n;Ly5/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Li6/n<",
            "-",
            "Ln5/t;",
            ">;",
            "Ly5/l<",
            "-TE;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lk6/a0;-><init>(Ljava/lang/Object;Li6/n;)V

    iput-object p3, p0, Lk6/b0;->l:Ly5/l;

    return-void
.end method


# virtual methods
.method public D()V
    .locals 2

    iget-object v0, p0, Lk6/b0;->l:Ly5/l;

    invoke-virtual {p0}, Lk6/a0;->A()Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lk6/a0;->k:Li6/n;

    invoke-interface {p0}, Lq5/d;->getContext()Lq5/g;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lkotlinx/coroutines/internal/v;->b(Ly5/l;Ljava/lang/Object;Lq5/g;)V

    return-void
.end method

.method public u()Z
    .locals 1

    invoke-super {p0}, Lkotlinx/coroutines/internal/o;->u()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lk6/b0;->D()V

    const/4 p0, 0x1

    return p0
.end method
