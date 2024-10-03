.class final Le2/p$c;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le2/p;->g(Le2/p$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Ly5/p<",
        "Li6/m0;",
        "Lq5/d<",
        "-",
        "Ln5/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.cardparser.parser.view.SimulatedRecyclerAdapter$onBindViewHolder$1"
    f = "SimulatedRecyclerAdapter.kt"
    l = {
        0x3b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field final synthetic h:Le2/p;

.field final synthetic i:I

.field final synthetic j:Le2/p$b;


# direct methods
.method constructor <init>(Le2/p;ILe2/p$b;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le2/p;",
            "I",
            "Le2/p$b;",
            "Lq5/d<",
            "-",
            "Le2/p$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le2/p$c;->h:Le2/p;

    iput p2, p0, Le2/p$c;->i:I

    iput-object p3, p0, Le2/p$c;->j:Le2/p$b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lq5/d<",
            "*>;)",
            "Lq5/d<",
            "Ln5/t;",
            ">;"
        }
    .end annotation

    new-instance p1, Le2/p$c;

    iget-object v0, p0, Le2/p$c;->h:Le2/p;

    iget v1, p0, Le2/p$c;->i:I

    iget-object p0, p0, Le2/p$c;->j:Le2/p$b;

    invoke-direct {p1, v0, v1, p0, p2}, Le2/p$c;-><init>(Le2/p;ILe2/p$b;Lq5/d;)V

    return-object p1
.end method

.method public final invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/m0;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Le2/p$c;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Le2/p$c;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Le2/p$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Le2/p$c;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Le2/p$c;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Le2/p$c;->h:Le2/p;

    invoke-static {p1}, Le2/p;->e(Le2/p;)Ljava/util/List;

    move-result-object p1

    iget v1, p0, Le2/p$c;->i:I

    iget-object v3, p0, Le2/p$c;->h:Le2/p;

    invoke-static {v3}, Le2/p;->e(Le2/p;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v1, v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Le2/h;

    iget-object p1, p0, Le2/p$c;->h:Le2/p;

    invoke-static {p1}, Le2/p;->c(Le2/p;)Landroid/content/Context;

    move-result-object v4

    iget-object p1, p0, Le2/p$c;->j:Le2/p$b;

    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p1, "viewHolder.itemView"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le2/p$c;->h:Le2/p;

    invoke-static {p1}, Le2/p;->f(Le2/p;)Landroid/view/ViewGroup;

    move-result-object v6

    iget-object p1, p0, Le2/p$c;->h:Le2/p;

    invoke-static {p1}, Le2/p;->b(Le2/p;)Lx1/e;

    move-result-object v7

    iget-object p1, p0, Le2/p$c;->h:Le2/p;

    invoke-static {p1}, Le2/p;->d(Le2/p;)Lw1/a;

    move-result-object v8

    iget-object p1, p0, Le2/p$c;->h:Le2/p;

    invoke-static {p1}, Le2/p;->a(Le2/p;)Lx1/m;

    move-result-object v9

    iput v2, p0, Le2/p$c;->g:I

    move-object v10, p0

    invoke-virtual/range {v3 .. v10}, Le2/h;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
