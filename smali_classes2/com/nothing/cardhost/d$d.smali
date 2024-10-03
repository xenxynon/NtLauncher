.class final Lcom/nothing/cardhost/d$d;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardhost/d;->p(Landroid/content/Context;ILcom/nothing/cardservice/CardWidgetMetaInfo;Z)Lcom/nothing/cardhost/e;
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
    c = "com.nothing.cardhost.CardWidgetHost$createView$3"
    f = "CardWidgetHost.kt"
    l = {
        0x13e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:Ljava/lang/Object;

.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:I

.field l:I

.field final synthetic m:Lcom/nothing/cardhost/d;

.field final synthetic n:Lkotlin/jvm/internal/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/a0<",
            "Lcom/nothing/cardservice/CardWidgetViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic o:I

.field final synthetic p:Lcom/nothing/cardhost/e;


# direct methods
.method constructor <init>(Lcom/nothing/cardhost/d;Lkotlin/jvm/internal/a0;ILcom/nothing/cardhost/e;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nothing/cardhost/d;",
            "Lkotlin/jvm/internal/a0<",
            "Lcom/nothing/cardservice/CardWidgetViewInfo;",
            ">;I",
            "Lcom/nothing/cardhost/e;",
            "Lq5/d<",
            "-",
            "Lcom/nothing/cardhost/d$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nothing/cardhost/d$d;->m:Lcom/nothing/cardhost/d;

    iput-object p2, p0, Lcom/nothing/cardhost/d$d;->n:Lkotlin/jvm/internal/a0;

    iput p3, p0, Lcom/nothing/cardhost/d$d;->o:I

    iput-object p4, p0, Lcom/nothing/cardhost/d$d;->p:Lcom/nothing/cardhost/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 6
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

    new-instance p1, Lcom/nothing/cardhost/d$d;

    iget-object v1, p0, Lcom/nothing/cardhost/d$d;->m:Lcom/nothing/cardhost/d;

    iget-object v2, p0, Lcom/nothing/cardhost/d$d;->n:Lkotlin/jvm/internal/a0;

    iget v3, p0, Lcom/nothing/cardhost/d$d;->o:I

    iget-object v4, p0, Lcom/nothing/cardhost/d$d;->p:Lcom/nothing/cardhost/e;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/nothing/cardhost/d$d;-><init>(Lcom/nothing/cardhost/d;Lkotlin/jvm/internal/a0;ILcom/nothing/cardhost/e;Lq5/d;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/nothing/cardhost/d$d;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lcom/nothing/cardhost/d$d;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lcom/nothing/cardhost/d$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lcom/nothing/cardhost/d$d;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/nothing/cardhost/d$d;->l:I

    const/4 v2, 0x0

    const-string v3, "Host"

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    iget v0, p0, Lcom/nothing/cardhost/d$d;->k:I

    iget-object v1, p0, Lcom/nothing/cardhost/d$d;->j:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/a0;

    iget-object v5, p0, Lcom/nothing/cardhost/d$d;->i:Ljava/lang/Object;

    check-cast v5, Lcom/nothing/cardhost/d;

    iget-object v6, p0, Lcom/nothing/cardhost/d$d;->h:Ljava/lang/Object;

    check-cast v6, Lcom/nothing/cardhost/e;

    iget-object p0, p0, Lcom/nothing/cardhost/d$d;->g:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/a0;

    :try_start_0
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nothing/cardhost/d$d;->m:Lcom/nothing/cardhost/d;

    invoke-virtual {p1}, Lg2/a;->d()Lg2/m;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/nothing/cardhost/d$d;->n:Lkotlin/jvm/internal/a0;

    iget v5, p0, Lcom/nothing/cardhost/d$d;->o:I

    iget-object v6, p0, Lcom/nothing/cardhost/d$d;->p:Lcom/nothing/cardhost/e;

    iget-object v7, p0, Lcom/nothing/cardhost/d$d;->m:Lcom/nothing/cardhost/d;

    :try_start_1
    invoke-static {}, Li6/b1;->b()Li6/i0;

    move-result-object v8

    new-instance v9, Lcom/nothing/cardhost/d$d$a;

    invoke-direct {v9, p1, v5, v2}, Lcom/nothing/cardhost/d$d$a;-><init>(Lg2/m;ILq5/d;)V

    iput-object v1, p0, Lcom/nothing/cardhost/d$d;->g:Ljava/lang/Object;

    iput-object v6, p0, Lcom/nothing/cardhost/d$d;->h:Ljava/lang/Object;

    iput-object v7, p0, Lcom/nothing/cardhost/d$d;->i:Ljava/lang/Object;

    iput-object v1, p0, Lcom/nothing/cardhost/d$d;->j:Ljava/lang/Object;

    iput v5, p0, Lcom/nothing/cardhost/d$d;->k:I

    iput v4, p0, Lcom/nothing/cardhost/d$d;->l:I

    invoke-static {v8, v9, p0}, Li6/h;->e(Lq5/g;Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object p0, v1

    move v0, v5

    move-object v5, v7

    :goto_0
    iput-object p1, v1, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    sget-object p1, Lh2/a;->a:Lh2/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Host createView viewInfoJson from db == null?("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    check-cast v7, Lcom/nothing/cardservice/CardWidgetViewInfo;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/nothing/cardservice/CardWidgetViewInfo;->b()Ljava/lang/String;

    move-result-object v2

    :cond_3
    const/4 v7, 0x0

    if-nez v2, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v7

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), widgetId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/nothing/cardhost/e;->y()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isHostViewHasBeenUpdated = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v4, v7

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", widgetId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_7

    iget-object p1, p0, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    check-cast p1, Lcom/nothing/cardservice/CardWidgetViewInfo;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetViewInfo;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    check-cast p1, Lcom/nothing/cardservice/CardWidgetViewInfo;

    invoke-static {v5, v0, p1}, Lcom/nothing/cardhost/d;->k(Lcom/nothing/cardhost/d;ILcom/nothing/cardservice/CardWidgetViewInfo;)V

    :cond_6
    iget-object p0, p0, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    check-cast p0, Lcom/nothing/cardservice/CardWidgetViewInfo;

    invoke-virtual {v6, p0}, Lcom/nothing/cardhost/e;->W(Lcom/nothing/cardservice/CardWidgetViewInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "widget service dead?: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
