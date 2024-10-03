.class public final Le2/i$b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final g:Landroid/content/Context;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le2/h;",
            ">;"
        }
    .end annotation
.end field

.field private final i:I

.field private final j:Landroid/view/ViewGroup;

.field private final k:Lx1/e;

.field private final l:Lw1/a;

.field private final m:Lx1/m;

.field private n:Z

.field private o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic p:Le2/i;


# direct methods
.method public constructor <init>(Le2/i;Landroid/content/Context;Ljava/util/List;ILandroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Le2/h;",
            ">;I",
            "Landroid/view/ViewGroup;",
            "Lx1/e;",
            "Lw1/a;",
            "Lx1/m;",
            "Z)V"
        }
    .end annotation

    const-string v0, "contentContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootParent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animController"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le2/i$b;->p:Le2/i;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Le2/i$b;->g:Landroid/content/Context;

    iput-object p3, p0, Le2/i$b;->h:Ljava/util/List;

    iput p4, p0, Le2/i$b;->i:I

    iput-object p5, p0, Le2/i$b;->j:Landroid/view/ViewGroup;

    iput-object p6, p0, Le2/i$b;->k:Lx1/e;

    iput-object p7, p0, Le2/i$b;->l:Lw1/a;

    iput-object p8, p0, Le2/i$b;->m:Lx1/m;

    iput-boolean p9, p0, Le2/i$b;->n:Z

    invoke-direct {p0}, Le2/i$b;->e()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Le2/i$b;->o:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic a(Le2/i$b;)Lx1/m;
    .locals 0

    iget-object p0, p0, Le2/i$b;->m:Lx1/m;

    return-object p0
.end method

.method public static final synthetic b(Le2/i$b;)Lx1/e;
    .locals 0

    iget-object p0, p0, Le2/i$b;->k:Lx1/e;

    return-object p0
.end method

.method public static final synthetic c(Le2/i$b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Le2/i$b;->g:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic d(Le2/i$b;)Lw1/a;
    .locals 0

    iget-object p0, p0, Le2/i$b;->l:Lw1/a;

    return-object p0
.end method

.method private final e()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Le2/i$b;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lo5/j;->n(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le2/h;

    invoke-virtual {v1}, Le2/h;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lo5/j;->g0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public f(I)Le2/h;
    .locals 1

    iget-boolean v0, p0, Le2/i$b;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le2/i$b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    :cond_0
    iget-object p0, p0, Le2/i$b;->h:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le2/h;

    return-object p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Le2/i$b;->i:I

    return p0
.end method

.method public getCount()I
    .locals 1

    iget-boolean v0, p0, Le2/i$b;->n:Z

    if-eqz v0, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    :cond_0
    iget-object p0, p0, Le2/i$b;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Le2/i$b;->f(I)Le2/h;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0}, Le2/i$b;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Le2/i$b;->o:Ljava/util/Set;

    invoke-virtual {p0, p1}, Le2/i$b;->f(I)Le2/h;

    move-result-object p0

    invoke-virtual {p0}, Le2/h;->b()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lo5/j;->L(Ljava/lang/Iterable;Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const-string p2, "parent"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le2/i$b;->f(I)Le2/h;

    move-result-object p1

    new-instance p2, Le2/i$b$a;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, p3, v0}, Le2/i$b$a;-><init>(Le2/h;Le2/i$b;Landroid/view/ViewGroup;Lq5/d;)V

    const/4 p0, 0x1

    invoke-static {v0, p2, p0, v0}, Li6/h;->d(Lq5/g;Ly5/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public final h(ILe2/h;)V
    .locals 1

    const-string v0, "simulatedItemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le2/i$b;->h:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final i(Z)V
    .locals 0

    iput-boolean p1, p0, Le2/i$b;->n:Z

    return-void
.end method

.method public final j(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le2/h;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lo5/j;->e0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le2/i$b;->h:Ljava/util/List;

    invoke-direct {p0}, Le2/i$b;->e()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Le2/i$b;->o:Ljava/util/Set;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
