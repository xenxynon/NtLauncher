.class final Lx1/d$h;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx1/d;->p(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;)Ln5/k;
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
        "Ln5/k<",
        "+",
        "Landroid/view/View;",
        "+",
        "Landroid/view/View;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.cardparser.parser.CardInfoParser$performParse$1"
    f = "CardInfoParser.kt"
    l = {
        0x9a,
        0x9d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field h:Ljava/lang/Object;

.field i:I

.field final synthetic j:Lx1/d;

.field final synthetic k:Lx1/m;

.field final synthetic l:Landroid/content/Context;

.field final synthetic m:Landroid/view/ViewGroup;

.field final synthetic n:Lx1/e;

.field final synthetic o:Lw1/a;


# direct methods
.method constructor <init>(Lx1/d;Lx1/m;Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx1/d;",
            "Lx1/m;",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Lx1/e;",
            "Lw1/a;",
            "Lq5/d<",
            "-",
            "Lx1/d$h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx1/d$h;->j:Lx1/d;

    iput-object p2, p0, Lx1/d$h;->k:Lx1/m;

    iput-object p3, p0, Lx1/d$h;->l:Landroid/content/Context;

    iput-object p4, p0, Lx1/d$h;->m:Landroid/view/ViewGroup;

    iput-object p5, p0, Lx1/d$h;->n:Lx1/e;

    iput-object p6, p0, Lx1/d$h;->o:Lw1/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 8
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

    new-instance p1, Lx1/d$h;

    iget-object v1, p0, Lx1/d$h;->j:Lx1/d;

    iget-object v2, p0, Lx1/d$h;->k:Lx1/m;

    iget-object v3, p0, Lx1/d$h;->l:Landroid/content/Context;

    iget-object v4, p0, Lx1/d$h;->m:Landroid/view/ViewGroup;

    iget-object v5, p0, Lx1/d$h;->n:Lx1/e;

    iget-object v6, p0, Lx1/d$h;->o:Lw1/a;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lx1/d$h;-><init>(Lx1/d;Lx1/m;Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lq5/d;)V

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
            "Ln5/k<",
            "+",
            "Landroid/view/View;",
            "+",
            "Landroid/view/View;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lx1/d$h;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lx1/d$h;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lx1/d$h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lx1/d$h;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lx1/d$h;->i:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget v0, p0, Lx1/d$h;->g:I

    iget-object v1, p0, Lx1/d$h;->h:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget v1, p0, Lx1/d$h;->g:I

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lx1/d$h;->j:Lx1/d;

    invoke-static {p1}, Lx1/d;->g(Lx1/d;)I

    move-result p1

    if-eq p1, v3, :cond_3

    const-string p0, "CardInfoParser"

    const-string p1, "performParse method should only run for the normal style card."

    invoke-static {p0, p1}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ln5/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_3
    iget-object p1, p0, Lx1/d$h;->k:Lx1/m;

    invoke-interface {p1}, Lx1/m;->c()I

    move-result p1

    iget-object v1, p0, Lx1/d$h;->k:Lx1/m;

    invoke-interface {v1, v3}, Lx1/m;->a(I)V

    iget-object v4, p0, Lx1/d$h;->j:Lx1/d;

    iget-object v5, p0, Lx1/d$h;->l:Landroid/content/Context;

    iget-object v6, p0, Lx1/d$h;->m:Landroid/view/ViewGroup;

    iget-object v7, p0, Lx1/d$h;->n:Lx1/e;

    iget-object v8, p0, Lx1/d$h;->o:Lw1/a;

    iget-object v9, p0, Lx1/d$h;->k:Lx1/m;

    iput p1, p0, Lx1/d$h;->g:I

    iput v3, p0, Lx1/d$h;->i:I

    move-object v10, p0

    invoke-static/range {v4 .. v10}, Lx1/d;->f(Lx1/d;Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v11, v1

    move v1, p1

    move-object p1, v11

    :goto_0
    check-cast p1, Landroid/view/View;

    iget-object v3, p0, Lx1/d$h;->k:Lx1/m;

    invoke-interface {v3, v2}, Lx1/m;->a(I)V

    iget-object v4, p0, Lx1/d$h;->j:Lx1/d;

    iget-object v5, p0, Lx1/d$h;->l:Landroid/content/Context;

    iget-object v6, p0, Lx1/d$h;->m:Landroid/view/ViewGroup;

    iget-object v7, p0, Lx1/d$h;->n:Lx1/e;

    iget-object v8, p0, Lx1/d$h;->o:Lw1/a;

    iget-object v9, p0, Lx1/d$h;->k:Lx1/m;

    iput-object p1, p0, Lx1/d$h;->h:Ljava/lang/Object;

    iput v1, p0, Lx1/d$h;->g:I

    iput v2, p0, Lx1/d$h;->i:I

    move-object v10, p0

    invoke-static/range {v4 .. v10}, Lx1/d;->i(Lx1/d;Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_5

    return-object v0

    :cond_5
    move v0, v1

    move-object v1, p1

    move-object p1, v2

    :goto_1
    check-cast p1, Landroid/view/View;

    iget-object p0, p0, Lx1/d$h;->k:Lx1/m;

    invoke-interface {p0, v0}, Lx1/m;->a(I)V

    new-instance p0, Ln5/k;

    invoke-direct {p0, v1, p1}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
