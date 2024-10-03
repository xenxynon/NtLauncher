.class final Le2/t$c;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le2/t;->r(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
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
    c = "com.nothing.cardparser.parser.view.SimulatedView$setAnimationDrawable$2"
    f = "SimulatedView.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field final synthetic h:Le2/t;

.field final synthetic i:Lz1/a;

.field final synthetic j:Landroid/view/View;


# direct methods
.method constructor <init>(Le2/t;Lz1/a;Landroid/view/View;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le2/t;",
            "Lz1/a;",
            "Landroid/view/View;",
            "Lq5/d<",
            "-",
            "Le2/t$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le2/t$c;->h:Le2/t;

    iput-object p2, p0, Le2/t$c;->i:Lz1/a;

    iput-object p3, p0, Le2/t$c;->j:Landroid/view/View;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Lq5/d;)Lq5/d;
    .locals 3
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

    new-instance v0, Le2/t$c;

    iget-object v1, p0, Le2/t$c;->h:Le2/t;

    iget-object v2, p0, Le2/t$c;->i:Lz1/a;

    iget-object p0, p0, Le2/t$c;->j:Landroid/view/View;

    invoke-direct {v0, v1, v2, p0, p1}, Le2/t$c;-><init>(Le2/t;Lz1/a;Landroid/view/View;Lq5/d;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lq5/d;

    invoke-virtual {p0, p1}, Le2/t$c;->invoke(Lq5/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Le2/t$c;->create(Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Le2/t$c;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Le2/t$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    iget v0, p0, Le2/t$c;->g:I

    if-nez v0, :cond_1

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Le2/t$c;->h:Le2/t;

    invoke-virtual {p1}, Le2/t;->f()Lx1/m;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Le2/t$c;->h:Le2/t;

    invoke-virtual {v0}, Le2/t;->k()I

    move-result v0

    iget-object v1, p0, Le2/t$c;->i:Lz1/a;

    invoke-interface {p1, v0, v1}, Lx1/m;->d(ILx1/j;)V

    :cond_0
    iget-object p1, p0, Le2/t$c;->i:Lz1/a;

    iget-object p0, p0, Le2/t$c;->j:Landroid/view/View;

    invoke-virtual {p1, p0}, Lz1/a;->b(Landroid/view/View;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
