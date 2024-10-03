.class final synthetic Lcom/nothing/cardparser/CardView$AsyncParseTask$start$1$1;
.super Lkotlin/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardparser/CardView$AsyncParseTask$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/l;",
        "Ly5/p<",
        "Lx1/d$b;",
        "Lq5/d<",
        "-",
        "Ln5/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/nothing/cardparser/CardView$AsyncParseTask;

    const/4 v1, 0x2

    const-string v4, "onParserStateChanged"

    const-string v5, "onParserStateChanged(Lcom/nothing/cardparser/parser/CardInfoParser$ParserStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/l;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lx1/d$b;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lcom/nothing/cardparser/CardView$AsyncParseTask$start$1$1;->invoke(Lx1/d$b;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lx1/d$b;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx1/d$b;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lkotlin/jvm/internal/e;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/nothing/cardparser/CardView$AsyncParseTask;

    invoke-static {p0, p1, p2}, Lcom/nothing/cardparser/CardView$AsyncParseTask;->access$onParserStateChanged(Lcom/nothing/cardparser/CardView$AsyncParseTask;Lx1/d$b;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
