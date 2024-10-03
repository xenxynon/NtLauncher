.class final Lkotlinx/coroutines/sync/c$d;
.super Lkotlinx/coroutines/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/internal/c<",
        "Lkotlinx/coroutines/sync/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lkotlinx/coroutines/sync/c$c;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/c$c;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/c;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/sync/c$d;->b:Lkotlinx/coroutines/sync/c$c;

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlinx/coroutines/sync/c;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/sync/c$d;->h(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/sync/c;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/c$d;->i(Lkotlinx/coroutines/sync/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public h(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    invoke-static {}, Lkotlinx/coroutines/sync/d;->d()Lkotlinx/coroutines/sync/a;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lkotlinx/coroutines/sync/c$d;->b:Lkotlinx/coroutines/sync/c$c;

    :goto_0
    sget-object v0, Lkotlinx/coroutines/sync/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public i(Lkotlinx/coroutines/sync/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/sync/c$d;->b:Lkotlinx/coroutines/sync/c$c;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/m;->z()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/sync/d;->g()Lkotlinx/coroutines/internal/b0;

    move-result-object p0

    :goto_0
    return-object p0
.end method
