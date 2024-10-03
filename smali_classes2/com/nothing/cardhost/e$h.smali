.class final Lcom/nothing/cardhost/e$h;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardhost/e;->X(Lcom/nothing/cardservice/CardWidgetViewInfo;)V
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
    c = "com.nothing.cardhost.CardWidgetHostView$viewDataChanged$1$1"
    f = "CardWidgetHostView.kt"
    l = {
        0x18d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field final synthetic h:Lcom/nothing/cardhost/a;

.field final synthetic i:Lcom/nothing/cardservice/CardWidgetViewInfo;

.field final synthetic j:Lcom/nothing/cardhost/e;


# direct methods
.method constructor <init>(Lcom/nothing/cardhost/a;Lcom/nothing/cardservice/CardWidgetViewInfo;Lcom/nothing/cardhost/e;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nothing/cardhost/a;",
            "Lcom/nothing/cardservice/CardWidgetViewInfo;",
            "Lcom/nothing/cardhost/e;",
            "Lq5/d<",
            "-",
            "Lcom/nothing/cardhost/e$h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nothing/cardhost/e$h;->h:Lcom/nothing/cardhost/a;

    iput-object p2, p0, Lcom/nothing/cardhost/e$h;->i:Lcom/nothing/cardservice/CardWidgetViewInfo;

    iput-object p3, p0, Lcom/nothing/cardhost/e$h;->j:Lcom/nothing/cardhost/e;

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

    new-instance p1, Lcom/nothing/cardhost/e$h;

    iget-object v0, p0, Lcom/nothing/cardhost/e$h;->h:Lcom/nothing/cardhost/a;

    iget-object v1, p0, Lcom/nothing/cardhost/e$h;->i:Lcom/nothing/cardservice/CardWidgetViewInfo;

    iget-object p0, p0, Lcom/nothing/cardhost/e$h;->j:Lcom/nothing/cardhost/e;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/nothing/cardhost/e$h;-><init>(Lcom/nothing/cardhost/a;Lcom/nothing/cardservice/CardWidgetViewInfo;Lcom/nothing/cardhost/e;Lq5/d;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/nothing/cardhost/e$h;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lcom/nothing/cardhost/e$h;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lcom/nothing/cardhost/e$h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lcom/nothing/cardhost/e$h;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/nothing/cardhost/e$h;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nothing/cardhost/e$h;->h:Lcom/nothing/cardhost/a;

    iget-object p1, p0, Lcom/nothing/cardhost/e$h;->i:Lcom/nothing/cardservice/CardWidgetViewInfo;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetViewInfo;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/nothing/cardhost/e$h;->j:Lcom/nothing/cardhost/e;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nothing/cardhost/e$h;->j:Lcom/nothing/cardhost/e;

    invoke-static {v4}, Lcom/nothing/cardhost/e;->h(Lcom/nothing/cardhost/e;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/nothing/cardhost/e$h;->j:Lcom/nothing/cardhost/e;

    invoke-static {v5}, Lcom/nothing/cardhost/e;->i(Lcom/nothing/cardhost/e;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/nothing/cardhost/e$h;->j:Lcom/nothing/cardhost/e;

    invoke-static {v6}, Lcom/nothing/cardhost/e;->e(Lcom/nothing/cardhost/e;)Lx1/e;

    move-result-object v7

    iget-object v8, p0, Lcom/nothing/cardhost/e$h;->j:Lcom/nothing/cardhost/e;

    invoke-virtual {v8}, Lcom/nothing/cardhost/e;->getHandler()Lw1/a;

    move-result-object v8

    iput v2, p0, Lcom/nothing/cardhost/e$h;->g:I

    move-object v2, p1

    move-object v9, p0

    invoke-virtual/range {v1 .. v9}, Lcom/nothing/cardhost/a;->applyViewDataChanged(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lq5/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/nothing/cardhost/e$h;->j:Lcom/nothing/cardhost/e;

    invoke-virtual {p0}, Lcom/nothing/cardhost/e;->S()V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
