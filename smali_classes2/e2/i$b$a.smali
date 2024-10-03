.class final Le2/i$b$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le2/i$b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
        "Landroid/view/View;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.cardparser.parser.view.SimulatedListView$SimulatedAdapter$getView$1"
    f = "SimulatedListView.kt"
    l = {
        0xbd
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field final synthetic h:Le2/h;

.field final synthetic i:Le2/i$b;

.field final synthetic j:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Le2/h;Le2/i$b;Landroid/view/ViewGroup;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le2/h;",
            "Le2/i$b;",
            "Landroid/view/ViewGroup;",
            "Lq5/d<",
            "-",
            "Le2/i$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le2/i$b$a;->h:Le2/h;

    iput-object p2, p0, Le2/i$b$a;->i:Le2/i$b;

    iput-object p3, p0, Le2/i$b$a;->j:Landroid/view/ViewGroup;

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

    new-instance p1, Le2/i$b$a;

    iget-object v0, p0, Le2/i$b$a;->h:Le2/h;

    iget-object v1, p0, Le2/i$b$a;->i:Le2/i$b;

    iget-object p0, p0, Le2/i$b$a;->j:Landroid/view/ViewGroup;

    invoke-direct {p1, v0, v1, p0, p2}, Le2/i$b$a;-><init>(Le2/h;Le2/i$b;Landroid/view/ViewGroup;Lq5/d;)V

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
            "Landroid/view/View;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Le2/i$b$a;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Le2/i$b$a;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Le2/i$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Le2/i$b$a;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Le2/i$b$a;->g:I

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

    iget-object v1, p0, Le2/i$b$a;->h:Le2/h;

    iget-object p1, p0, Le2/i$b$a;->i:Le2/i$b;

    invoke-static {p1}, Le2/i$b;->c(Le2/i$b;)Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Le2/i$b$a;->j:Landroid/view/ViewGroup;

    iget-object v4, p0, Le2/i$b$a;->i:Le2/i$b;

    invoke-static {v4}, Le2/i$b;->b(Le2/i$b;)Lx1/e;

    move-result-object v4

    iget-object v5, p0, Le2/i$b$a;->i:Le2/i$b;

    invoke-static {v5}, Le2/i$b;->d(Le2/i$b;)Lw1/a;

    move-result-object v5

    iget-object v6, p0, Le2/i$b$a;->i:Le2/i$b;

    invoke-static {v6}, Le2/i$b;->a(Le2/i$b;)Lx1/m;

    move-result-object v6

    iput v2, p0, Le2/i$b$a;->g:I

    move-object v2, p1

    move-object v7, p0

    invoke-virtual/range {v1 .. v7}, Le2/h;->d(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
