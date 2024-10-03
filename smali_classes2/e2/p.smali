.class public final Le2/p;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2/p$a;,
        Le2/p$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Le2/p$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Le2/p$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le2/h;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/view/ViewGroup;

.field private final d:Lx1/e;

.field private final e:Lw1/a;

.field private final f:Lx1/m;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le2/p$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le2/p$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Le2/p;->h:Le2/p$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Le2/h;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Lx1/e;",
            "Lw1/a;",
            "Lx1/m;",
            "Z)V"
        }
    .end annotation

    const-string v0, "contentContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootParent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animController"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Le2/p;->a:Landroid/content/Context;

    iput-object p2, p0, Le2/p;->b:Ljava/util/List;

    iput-object p3, p0, Le2/p;->c:Landroid/view/ViewGroup;

    iput-object p4, p0, Le2/p;->d:Lx1/e;

    iput-object p5, p0, Le2/p;->e:Lw1/a;

    iput-object p6, p0, Le2/p;->f:Lx1/m;

    iput-boolean p7, p0, Le2/p;->g:Z

    return-void
.end method

.method public static final synthetic a(Le2/p;)Lx1/m;
    .locals 0

    iget-object p0, p0, Le2/p;->f:Lx1/m;

    return-object p0
.end method

.method public static final synthetic b(Le2/p;)Lx1/e;
    .locals 0

    iget-object p0, p0, Le2/p;->d:Lx1/e;

    return-object p0
.end method

.method public static final synthetic c(Le2/p;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Le2/p;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic d(Le2/p;)Lw1/a;
    .locals 0

    iget-object p0, p0, Le2/p;->e:Lw1/a;

    return-object p0
.end method

.method public static final synthetic e(Le2/p;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Le2/p;->b:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic f(Le2/p;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Le2/p;->c:Landroid/view/ViewGroup;

    return-object p0
.end method


# virtual methods
.method public g(Le2/p$b;I)V
    .locals 7

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lo2/b;->a()Li6/m0;

    move-result-object v1

    new-instance v4, Le2/p$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p2, p1, v0}, Le2/p$c;-><init>(Le2/p;ILe2/p$b;Lq5/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-boolean v0, p0, Le2/p;->g:Z

    if-eqz v0, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    :cond_0
    iget-object p0, p0, Le2/p;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object p0, p0, Le2/p;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le2/h;

    invoke-virtual {p0}, Le2/h;->b()I

    move-result p0

    return p0
.end method

.method public h(Landroid/view/ViewGroup;I)Le2/p$b;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le2/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Le2/h;

    invoke-virtual {v3}, Le2/h;->b()I

    move-result v3

    if-ne v3, p2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Le2/h;

    if-nez v1, :cond_3

    iget-object p2, p0, Le2/p;->b:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Le2/h;

    :cond_3
    new-instance p2, Le2/p$b;

    iget-object v0, p0, Le2/p;->a:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Le2/h;->c(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Le2/p$b;-><init>(Le2/p;Landroid/view/View;)V

    return-object p2
.end method

.method public final i(ILe2/h;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le2/p;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Le2/p$b;

    invoke-virtual {p0, p1, p2}, Le2/p;->g(Le2/p$b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Le2/p;->h(Landroid/view/ViewGroup;I)Le2/p$b;

    move-result-object p0

    return-object p0
.end method
