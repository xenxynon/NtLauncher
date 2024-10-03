.class final Lcom/nothing/cardparser/CardView$AsyncParseTask$start$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardparser/CardView$AsyncParseTask;->start()Landroid/os/CancellationSignal;
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
    c = "com.nothing.cardparser.CardView$AsyncParseTask$start$1"
    f = "CardView.kt"
    l = {
        0x119
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/nothing/cardparser/CardView$AsyncParseTask;


# direct methods
.method constructor <init>(Lcom/nothing/cardparser/CardView$AsyncParseTask;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nothing/cardparser/CardView$AsyncParseTask;",
            "Lq5/d<",
            "-",
            "Lcom/nothing/cardparser/CardView$AsyncParseTask$start$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask$start$1;->this$0:Lcom/nothing/cardparser/CardView$AsyncParseTask;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 0
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

    new-instance p1, Lcom/nothing/cardparser/CardView$AsyncParseTask$start$1;

    iget-object p0, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask$start$1;->this$0:Lcom/nothing/cardparser/CardView$AsyncParseTask;

    invoke-direct {p1, p0, p2}, Lcom/nothing/cardparser/CardView$AsyncParseTask$start$1;-><init>(Lcom/nothing/cardparser/CardView$AsyncParseTask;Lq5/d;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/nothing/cardparser/CardView$AsyncParseTask$start$1;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lcom/nothing/cardparser/CardView$AsyncParseTask$start$1;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lcom/nothing/cardparser/CardView$AsyncParseTask$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lcom/nothing/cardparser/CardView$AsyncParseTask$start$1;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask$start$1;->label:I

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

    iget-object p1, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask$start$1;->this$0:Lcom/nothing/cardparser/CardView$AsyncParseTask;

    new-instance v1, Lcom/nothing/cardparser/CardView$AsyncParseTask$start$1$1;

    iget-object v3, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask$start$1;->this$0:Lcom/nothing/cardparser/CardView$AsyncParseTask;

    invoke-direct {v1, v3}, Lcom/nothing/cardparser/CardView$AsyncParseTask$start$1$1;-><init>(Ljava/lang/Object;)V

    iput v2, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask$start$1;->label:I

    invoke-static {p1, v1, p0}, Lcom/nothing/cardparser/CardView$AsyncParseTask;->access$runParserAsync(Lcom/nothing/cardparser/CardView$AsyncParseTask;Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
