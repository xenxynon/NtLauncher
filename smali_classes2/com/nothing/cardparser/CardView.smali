.class public final Lcom/nothing/cardparser/CardView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nothing/cardparser/ICardView;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardparser/CardView$Companion;,
        Lcom/nothing/cardparser/CardView$AsyncParseTask;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nothing/cardparser/CardView$Companion;

.field private static final DEFAULT_CARD_INTERACTION_HANDLER:Lcom/nothing/cardparser/CardView$Companion$DEFAULT_CARD_INTERACTION_HANDLER$1;

.field private static final TAG:Ljava/lang/String; = "CardView"


# instance fields
.field private final context:Landroid/content/Context;

.field private final infoCollector:Lx1/p;

.field private infoParser:Lx1/d;

.field private final widgetId:I

.field private final widgetViewInfo:Lcom/nothing/cardservice/CardWidgetViewInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardparser/CardView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardparser/CardView$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardparser/CardView;->Companion:Lcom/nothing/cardparser/CardView$Companion;

    new-instance v0, Lcom/nothing/cardparser/CardView$Companion$DEFAULT_CARD_INTERACTION_HANDLER$1;

    invoke-direct {v0}, Lcom/nothing/cardparser/CardView$Companion$DEFAULT_CARD_INTERACTION_HANDLER$1;-><init>()V

    sput-object v0, Lcom/nothing/cardparser/CardView;->DEFAULT_CARD_INTERACTION_HANDLER:Lcom/nothing/cardparser/CardView$Companion$DEFAULT_CARD_INTERACTION_HANDLER$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/nothing/cardservice/CardWidgetViewInfo;ZI)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardparser/CardView;->context:Landroid/content/Context;

    iput p2, p0, Lcom/nothing/cardparser/CardView;->widgetId:I

    iput-object p3, p0, Lcom/nothing/cardparser/CardView;->widgetViewInfo:Lcom/nothing/cardservice/CardWidgetViewInfo;

    new-instance v0, Lx1/d;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/nothing/cardservice/CardWidgetViewInfo;->b()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move-object v4, p3

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v5, p4

    invoke-direct/range {v1 .. v8}, Lx1/d;-><init>(Landroid/content/Context;ILjava/lang/String;ZIILkotlin/jvm/internal/i;)V

    iput-object v0, p0, Lcom/nothing/cardparser/CardView;->infoParser:Lx1/d;

    new-instance p1, Lx1/p;

    invoke-direct {p1, p5}, Lx1/p;-><init>(I)V

    iput-object p1, p0, Lcom/nothing/cardparser/CardView;->infoCollector:Lx1/p;

    return-void
.end method

.method public static final synthetic access$getInfoParser$p(Lcom/nothing/cardparser/CardView;)Lx1/d;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardparser/CardView;->infoParser:Lx1/d;

    return-object p0
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;)Ln5/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Lx1/e;",
            "Lw1/a;",
            ")",
            "Ln5/k<",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_0

    sget-object p4, Lcom/nothing/cardparser/CardView;->DEFAULT_CARD_INTERACTION_HANDLER:Lcom/nothing/cardparser/CardView$Companion$DEFAULT_CARD_INTERACTION_HANDLER$1;

    :cond_0
    move-object v4, p4

    iget-object v0, p0, Lcom/nothing/cardparser/CardView;->infoParser:Lx1/d;

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/nothing/cardparser/CardView;->infoCollector:Lx1/p;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lx1/d;->p(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;)Ln5/k;

    move-result-object p0

    if-nez p0, :cond_2

    :cond_1
    new-instance p0, Ln5/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p0
.end method

.method public applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/q;Lx1/e;Lw1/a;)Landroid/os/CancellationSignal;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parserListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p5, :cond_0

    sget-object p5, Lcom/nothing/cardparser/CardView;->DEFAULT_CARD_INTERACTION_HANDLER:Lcom/nothing/cardparser/CardView$Companion$DEFAULT_CARD_INTERACTION_HANDLER$1;

    :cond_0
    move-object v6, p5

    new-instance p5, Lcom/nothing/cardparser/CardView$AsyncParseTask;

    iget-object v7, p0, Lcom/nothing/cardparser/CardView;->infoCollector:Lx1/p;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/nothing/cardparser/CardView$AsyncParseTask;-><init>(Lcom/nothing/cardparser/CardView;Landroid/content/Context;Landroid/view/ViewGroup;Lx1/q;Lx1/e;Lw1/a;Lx1/m;)V

    invoke-virtual {p5}, Lcom/nothing/cardparser/CardView$AsyncParseTask;->start()Landroid/os/CancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public applyViewDataChanged(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lq5/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            "Lx1/e;",
            "Lw1/a;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    if-nez p7, :cond_0

    sget-object v1, Lcom/nothing/cardparser/CardView;->DEFAULT_CARD_INTERACTION_HANDLER:Lcom/nothing/cardparser/CardView$Companion$DEFAULT_CARD_INTERACTION_HANDLER$1;

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p7

    :goto_0
    iget-object v2, v0, Lcom/nothing/cardparser/CardView;->infoParser:Lx1/d;

    if-eqz v2, :cond_2

    iget-object v10, v0, Lcom/nothing/cardparser/CardView;->infoCollector:Lx1/p;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v11, p8

    invoke-virtual/range {v2 .. v11}, Lx1/d;->r(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Ln5/t;->a:Ln5/t;

    return-object v0

    :cond_2
    sget-object v0, Ln5/t;->a:Ln5/t;

    return-object v0
.end method

.method public getBroadcastConfig()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/nothing/cardparser/CardView;->infoCollector:Lx1/p;

    invoke-virtual {p0}, Lx1/p;->h()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardparser/CardView;->context:Landroid/content/Context;

    return-object p0
.end method

.method public getExtraInfo()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardparser/CardView;->infoCollector:Lx1/p;

    invoke-virtual {p0}, Lx1/p;->i()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getPeriodTime()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardparser/CardView;->infoCollector:Lx1/p;

    invoke-virtual {p0}, Lx1/p;->l()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getWidgetId()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardparser/CardView;->widgetId:I

    return p0
.end method

.method public onBroadcastReceive(Ljava/lang/String;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/cardparser/CardView;->infoCollector:Lx1/p;

    invoke-virtual {p0, p1}, Lx1/p;->m(Ljava/lang/String;)V

    return-void
.end method

.method public onCancelAnim()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardparser/CardView;->infoCollector:Lx1/p;

    invoke-virtual {p0}, Lx1/p;->n()V

    return-void
.end method

.method public onEndAnim()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardparser/CardView;->infoCollector:Lx1/p;

    invoke-virtual {p0}, Lx1/p;->o()V

    return-void
.end method

.method public onHostConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/cardparser/CardView;->infoCollector:Lx1/p;

    invoke-virtual {p0, p1}, Lx1/p;->p(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onHostViewPeriodTimeUp()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardparser/CardView;->infoCollector:Lx1/p;

    invoke-virtual {p0}, Lx1/p;->q()V

    return-void
.end method

.method public onHostViewResume()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardparser/CardView;->infoCollector:Lx1/p;

    invoke-virtual {p0}, Lx1/p;->r()V

    return-void
.end method

.method public onHostViewStop()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardparser/CardView;->infoCollector:Lx1/p;

    invoke-virtual {p0}, Lx1/p;->s()V

    return-void
.end method

.method public onPauseAnim()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardparser/CardView;->infoCollector:Lx1/p;

    invoke-virtual {p0}, Lx1/p;->t()V

    return-void
.end method

.method public onResumeAnim()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardparser/CardView;->infoCollector:Lx1/p;

    invoke-virtual {p0}, Lx1/p;->u()V

    return-void
.end method

.method public onStartAnim()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardparser/CardView;->infoCollector:Lx1/p;

    invoke-virtual {p0}, Lx1/p;->v()V

    return-void
.end method

.method public registerAnimListener()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardparser/CardView;->infoCollector:Lx1/p;

    invoke-virtual {p0}, Lx1/p;->w()V

    return-void
.end method

.method public switchCardStyle(I)V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardparser/CardView;->infoCollector:Lx1/p;

    invoke-virtual {p0, p1}, Lx1/p;->a(I)V

    return-void
.end method

.method public unregisterAnimListener()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardparser/CardView;->infoCollector:Lx1/p;

    invoke-virtual {p0}, Lx1/p;->x()V

    return-void
.end method

.method public updateViewInfoJson(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/nothing/cardparser/CardView;->widgetViewInfo:Lcom/nothing/cardservice/CardWidgetViewInfo;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nothing/cardservice/CardWidgetViewInfo;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
