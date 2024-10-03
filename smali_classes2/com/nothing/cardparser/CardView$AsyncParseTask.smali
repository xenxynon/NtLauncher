.class public final Lcom/nothing/cardparser/CardView$AsyncParseTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardparser/CardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AsyncParseTask"
.end annotation


# instance fields
.field private final animPlayController:Lx1/m;

.field private final cancelSignal:Landroid/os/CancellationSignal;

.field private final colorResources:Lx1/e;

.field private final handler:Lw1/a;

.field private parserJob:Li6/v1;

.field private final parserListener:Lx1/q;

.field private final weakCardView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/nothing/cardparser/CardView;",
            ">;"
        }
    .end annotation
.end field

.field private final weakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final weakHostView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nothing/cardparser/CardView;Landroid/content/Context;Landroid/view/ViewGroup;Lx1/q;Lx1/e;Lw1/a;Lx1/m;)V
    .locals 1

    const-string v0, "cardView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parserListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animPlayController"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask;->parserListener:Lx1/q;

    iput-object p5, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask;->colorResources:Lx1/e;

    iput-object p6, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask;->handler:Lw1/a;

    iput-object p7, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask;->animPlayController:Lx1/m;

    new-instance p4, Landroid/os/CancellationSignal;

    invoke-direct {p4}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p4, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask;->cancelSignal:Landroid/os/CancellationSignal;

    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask;->weakContext:Ljava/lang/ref/WeakReference;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask;->weakCardView:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask;->weakHostView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic access$getParserListener$p(Lcom/nothing/cardparser/CardView$AsyncParseTask;)Lx1/q;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask;->parserListener:Lx1/q;

    return-object p0
.end method

.method public static final synthetic access$onParserStateChanged(Lcom/nothing/cardparser/CardView$AsyncParseTask;Lx1/d$b;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nothing/cardparser/CardView$AsyncParseTask;->onParserStateChanged(Lx1/d$b;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$runParserAsync(Lcom/nothing/cardparser/CardView$AsyncParseTask;Ly5/p;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nothing/cardparser/CardView$AsyncParseTask;->runParserAsync(Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final onParserStateChanged(Lx1/d$b;Lq5/d;)Ljava/lang/Object;
    .locals 3
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

    invoke-static {}, Li6/b1;->c()Li6/g2;

    move-result-object v0

    new-instance v1, Lcom/nothing/cardparser/CardView$AsyncParseTask$onParserStateChanged$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/nothing/cardparser/CardView$AsyncParseTask$onParserStateChanged$2;-><init>(Lx1/d$b;Lcom/nothing/cardparser/CardView$AsyncParseTask;Lq5/d;)V

    invoke-static {v0, v1, p2}, Li6/h;->e(Lq5/g;Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method private final runParserAsync(Ly5/p;Lq5/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/p<",
            "-",
            "Lx1/d$b;",
            "-",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/nothing/cardparser/CardView$AsyncParseTask$runParserAsync$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/nothing/cardparser/CardView$AsyncParseTask$runParserAsync$1;

    iget v1, v0, Lcom/nothing/cardparser/CardView$AsyncParseTask$runParserAsync$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/nothing/cardparser/CardView$AsyncParseTask$runParserAsync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/nothing/cardparser/CardView$AsyncParseTask$runParserAsync$1;

    invoke-direct {v0, p0, p2}, Lcom/nothing/cardparser/CardView$AsyncParseTask$runParserAsync$1;-><init>(Lcom/nothing/cardparser/CardView$AsyncParseTask;Lq5/d;)V

    :goto_0
    iget-object p2, v0, Lcom/nothing/cardparser/CardView$AsyncParseTask$runParserAsync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v9

    iget v1, v0, Lcom/nothing/cardparser/CardView$AsyncParseTask$runParserAsync$1;->label:I

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v11, :cond_1

    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/nothing/cardparser/CardView$AsyncParseTask$runParserAsync$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/nothing/cardparser/CardView$AsyncParseTask;

    :try_start_0
    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    iget-object v1, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask;->weakHostView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask;->weakCardView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nothing/cardparser/CardView;

    if-eqz p2, :cond_9

    if-eqz v3, :cond_9

    if-nez v1, :cond_4

    goto :goto_6

    :cond_4
    :try_start_1
    sget-object v1, Ln5/l;->h:Ln5/l$a;

    iget-object v1, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask;->weakCardView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nothing/cardparser/CardView;

    if-eqz v1, :cond_6

    invoke-static {v1}, Lcom/nothing/cardparser/CardView;->access$getInfoParser$p(Lcom/nothing/cardparser/CardView;)Lx1/d;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask;->colorResources:Lx1/e;

    iget-object v5, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask;->handler:Lw1/a;

    iget-object v6, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask;->animPlayController:Lx1/m;

    iput-object p0, v0, Lcom/nothing/cardparser/CardView$AsyncParseTask$runParserAsync$1;->L$0:Ljava/lang/Object;

    iput v2, v0, Lcom/nothing/cardparser/CardView$AsyncParseTask$runParserAsync$1;->label:I

    move-object v2, p2

    move-object v7, p1

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Lx1/d;->q(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v9, :cond_5

    return-object v9

    :cond_5
    :goto_1
    sget-object p1, Ln5/t;->a:Ln5/t;

    goto :goto_2

    :cond_6
    move-object p1, v10

    :goto_2
    if-eqz p1, :cond_7

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-static {p1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Host view or activity has been null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    sget-object p2, Ln5/l;->h:Ln5/l$a;

    invoke-static {p1}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    invoke-static {p1}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-static {}, Li6/b1;->c()Li6/g2;

    move-result-object v1

    new-instance v2, Lcom/nothing/cardparser/CardView$AsyncParseTask$runParserAsync$3$1;

    invoke-direct {v2, p0, p2, v10}, Lcom/nothing/cardparser/CardView$AsyncParseTask$runParserAsync$3$1;-><init>(Lcom/nothing/cardparser/CardView$AsyncParseTask;Ljava/lang/Throwable;Lq5/d;)V

    iput-object p1, v0, Lcom/nothing/cardparser/CardView$AsyncParseTask$runParserAsync$1;->L$0:Ljava/lang/Object;

    iput v11, v0, Lcom/nothing/cardparser/CardView$AsyncParseTask$runParserAsync$1;->label:I

    invoke-static {v1, v2, v0}, Li6/h;->e(Lq5/g;Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v9, :cond_8

    return-object v9

    :cond_8
    :goto_5
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_9
    :goto_6
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    iget-object p0, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask;->parserJob:Li6/v1;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Li6/v1$a;->a(Li6/v1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final start()Landroid/os/CancellationSignal;
    .locals 8
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask;->parserJob:Li6/v1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li6/v1;->a()Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    const/4 v0, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask;->parserJob:Li6/v1;

    if-eqz v1, :cond_1

    invoke-static {v1, v0, v2, v0}, Li6/v1$a;->a(Li6/v1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask;->cancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v1, p0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    invoke-static {}, Lo2/b;->b()Li6/m0;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/nothing/cardparser/CardView$AsyncParseTask$start$1;

    invoke-direct {v5, p0, v0}, Lcom/nothing/cardparser/CardView$AsyncParseTask$start$1;-><init>(Lcom/nothing/cardparser/CardView$AsyncParseTask;Lq5/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask;->parserJob:Li6/v1;

    iget-object p0, p0, Lcom/nothing/cardparser/CardView$AsyncParseTask;->cancelSignal:Landroid/os/CancellationSignal;

    return-object p0
.end method
