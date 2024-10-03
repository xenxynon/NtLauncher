.class public final Lx1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx1/p$b;,
        Lx1/p$a;
    }
.end annotation


# instance fields
.field private final a:Ln5/e;

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lx1/p$c;

    invoke-direct {v0, p0}, Lx1/p$c;-><init>(Lx1/p;)V

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    iput-object v0, p0, Lx1/p;->a:Ln5/e;

    iput p1, p0, Lx1/p;->b:I

    return-void
.end method

.method private final j()Lx1/p$a;
    .locals 1

    invoke-direct {p0}, Lx1/p;->k()Lx1/p$b;

    move-result-object v0

    iget p0, p0, Lx1/p;->b:I

    invoke-virtual {v0, p0}, Lx1/p$b;->a(I)Lx1/p$a;

    move-result-object p0

    return-object p0
.end method

.method private final k()Lx1/p$b;
    .locals 0

    iget-object p0, p0, Lx1/p;->a:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx1/p$b;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lx1/p;->b:I

    return-void
.end method

.method public b(I)Lx1/j;
    .locals 0

    invoke-direct {p0}, Lx1/p;->j()Lx1/p$a;

    move-result-object p0

    invoke-virtual {p0}, Lx1/p$a;->a()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx1/j;

    return-object p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lx1/p;->b:I

    return p0
.end method

.method public d(ILx1/j;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "animator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lx1/p;->j()Lx1/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lx1/p$a;->a()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lx1/p;->j()Lx1/p$a;

    move-result-object p0

    invoke-virtual {p0}, Lx1/p$a;->a()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lx1/p;->j()Lx1/p$a;

    move-result-object p0

    invoke-virtual {p0}, Lx1/p$a;->c()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lx1/p;->j()Lx1/p$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lx1/p$a;->f(Ljava/util/List;)V

    return-void
.end method

.method public g(Landroid/view/ViewGroup;Lx1/l;I)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "hostView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scheduler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lx1/p;->j()Lx1/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lx1/p$a;->d()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lx1/p;->j()Lx1/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lx1/p$a;->d()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lx1/p;->j()Lx1/p$a;

    move-result-object p0

    invoke-virtual {p0, p3}, Lx1/p$a;->g(I)V

    return-void
.end method

.method public final h()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lx1/p;->j()Lx1/p$a;

    move-result-object p0

    invoke-virtual {p0}, Lx1/p$a;->b()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final i()Landroid/os/Bundle;
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lx1/p;->j()Lx1/p$a;

    move-result-object p0

    invoke-virtual {p0}, Lx1/p$a;->c()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final l()I
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lx1/p;->j()Lx1/p$a;

    move-result-object p0

    invoke-virtual {p0}, Lx1/p$a;->e()I

    move-result p0

    return p0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lx1/p;->j()Lx1/p$a;

    move-result-object p0

    invoke-virtual {p0}, Lx1/p$a;->d()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx1/l;

    invoke-interface {v2, p1}, Lx1/l;->a(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lx1/p;->j()Lx1/p$a;

    move-result-object p0

    invoke-virtual {p0}, Lx1/p$a;->a()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx1/j;

    invoke-interface {v2}, Lx1/j;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lx1/p;->j()Lx1/p$a;

    move-result-object p0

    invoke-virtual {p0}, Lx1/p$a;->a()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx1/j;

    invoke-interface {v2}, Lx1/j;->end()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final p(Landroid/content/res/Configuration;)V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lx1/p;->j()Lx1/p$a;

    move-result-object p0

    invoke-virtual {p0}, Lx1/p$a;->d()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx1/l;

    invoke-interface {v2, p1}, Lx1/l;->onHostConfigChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lx1/p;->j()Lx1/p$a;

    move-result-object p0

    invoke-virtual {p0}, Lx1/p$a;->d()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx1/l;

    invoke-interface {v2}, Lx1/l;->onHostViewPeriodTimeUp()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lx1/p;->j()Lx1/p$a;

    move-result-object p0

    invoke-virtual {p0}, Lx1/p$a;->d()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx1/l;

    invoke-interface {v2}, Lx1/l;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lx1/p;->j()Lx1/p$a;

    move-result-object p0

    invoke-virtual {p0}, Lx1/p$a;->d()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx1/l;

    invoke-interface {v2}, Lx1/l;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lx1/p;->j()Lx1/p$a;

    move-result-object p0

    invoke-virtual {p0}, Lx1/p$a;->a()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx1/j;

    invoke-interface {v2}, Lx1/j;->pause()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final u()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lx1/p;->j()Lx1/p$a;

    move-result-object p0

    invoke-virtual {p0}, Lx1/p$a;->a()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx1/j;

    invoke-interface {v2}, Lx1/j;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final v()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lx1/p;->j()Lx1/p$a;

    move-result-object p0

    invoke-virtual {p0}, Lx1/p$a;->a()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx1/j;

    invoke-interface {v2}, Lx1/j;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lx1/p;->j()Lx1/p$a;

    move-result-object p0

    invoke-virtual {p0}, Lx1/p$a;->a()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx1/j;

    invoke-interface {v2}, Lx1/j;->registerAnimListener()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final x()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lx1/p;->j()Lx1/p$a;

    move-result-object p0

    invoke-virtual {p0}, Lx1/p$a;->a()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx1/j;

    invoke-interface {v2}, Lx1/j;->unregisterAnimListener()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
