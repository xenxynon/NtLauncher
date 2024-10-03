.class final Lcom/nothing/cardparser/CardView$AsyncParseTask$runParserAsync$1;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardparser/CardView$AsyncParseTask;->runParserAsync(Ly5/p;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.cardparser.CardView$AsyncParseTask"
    f = "CardView.kt"
    l = {
        0xed,
        0xf6
    }
    m = "runParserAsync"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

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
            "Lcom/nothing/cardparser/CardView$AsyncParseTask$runParserAsync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask$runParserAsync$1;->this$0:Lcom/nothing/cardparser/CardView$AsyncParseTask;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lq5/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask$runParserAsync$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask$runParserAsync$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask$runParserAsync$1;->label:I

    iget-object p1, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask$runParserAsync$1;->this$0:Lcom/nothing/cardparser/CardView$AsyncParseTask;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/nothing/cardparser/CardView$AsyncParseTask;->access$runParserAsync(Lcom/nothing/cardparser/CardView$AsyncParseTask;Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
