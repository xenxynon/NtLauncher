.class final Le2/k$c;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le2/k;->Q(Ljava/lang/String;Ljava/lang/Object;)V
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
    c = "com.nothing.cardparser.parser.view.SimulatedLottieAnimationView$executeCommand$1"
    f = "SimulatedLottieAnimationView.kt"
    l = {
        0x71
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field final synthetic h:Le2/k;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/Object;


# direct methods
.method constructor <init>(Le2/k;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le2/k;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lq5/d<",
            "-",
            "Le2/k$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le2/k$c;->h:Le2/k;

    iput-object p2, p0, Le2/k$c;->i:Ljava/lang/String;

    iput-object p3, p0, Le2/k$c;->j:Ljava/lang/Object;

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

    new-instance p1, Le2/k$c;

    iget-object v0, p0, Le2/k$c;->h:Le2/k;

    iget-object v1, p0, Le2/k$c;->i:Ljava/lang/String;

    iget-object p0, p0, Le2/k$c;->j:Ljava/lang/Object;

    invoke-direct {p1, v0, v1, p0, p2}, Le2/k$c;-><init>(Le2/k;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)V

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

    invoke-virtual {p0, p1, p2}, Le2/k$c;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Le2/k$c;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Le2/k$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Le2/k$c;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Le2/k$c;->g:I

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

    iget-object p1, p0, Le2/k$c;->h:Le2/k;

    invoke-virtual {p1}, Le2/t;->j()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v1, p0, Le2/k$c;->h:Le2/k;

    iget-object v3, p0, Le2/k$c;->i:Ljava/lang/String;

    iget-object v4, p0, Le2/k$c;->j:Ljava/lang/Object;

    iput v2, p0, Le2/k$c;->g:I

    invoke-virtual {v1, p1, v3, v4, p0}, Le2/t;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
