.class final Le2/k$b;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le2/k;->P(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Ly5/l<",
        "Lq5/d<",
        "-",
        "Ln5/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.cardparser.parser.view.SimulatedLottieAnimationView$executeAnimation$2"
    f = "SimulatedLottieAnimationView.kt"
    l = {
        0x45
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field final synthetic h:Le2/k;

.field final synthetic i:Landroid/view/View;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/Object;


# direct methods
.method constructor <init>(Le2/k;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le2/k;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lq5/d<",
            "-",
            "Le2/k$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le2/k$b;->h:Le2/k;

    iput-object p2, p0, Le2/k$b;->i:Landroid/view/View;

    iput-object p3, p0, Le2/k$b;->j:Ljava/lang/String;

    iput-object p4, p0, Le2/k$b;->k:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Lq5/d;)Lq5/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "*>;)",
            "Lq5/d<",
            "Ln5/t;",
            ">;"
        }
    .end annotation

    new-instance v6, Le2/k$b;

    iget-object v1, p0, Le2/k$b;->h:Le2/k;

    iget-object v2, p0, Le2/k$b;->i:Landroid/view/View;

    iget-object v3, p0, Le2/k$b;->j:Ljava/lang/String;

    iget-object v4, p0, Le2/k$b;->k:Ljava/lang/Object;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Le2/k$b;-><init>(Le2/k;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)V

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lq5/d;

    invoke-virtual {p0, p1}, Le2/k$b;->invoke(Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Le2/k$b;->create(Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Le2/k$b;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Le2/k$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Le2/k$b;->g:I

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

    iget-object p1, p0, Le2/k$b;->h:Le2/k;

    iget-object v1, p0, Le2/k$b;->i:Landroid/view/View;

    iget-object v3, p0, Le2/k$b;->j:Ljava/lang/String;

    iget-object v4, p0, Le2/k$b;->k:Ljava/lang/Object;

    iput v2, p0, Le2/k$b;->g:I

    invoke-static {p1, v1, v3, v4, p0}, Le2/k;->O(Le2/k;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
