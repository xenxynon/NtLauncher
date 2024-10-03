.class public final Lcom/nothing/cardhost/a;
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
        Lcom/nothing/cardhost/a$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/nothing/cardhost/a$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private final c:Lf2/c$g;

.field private final d:Lcom/nothing/cardparser/ICardView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardhost/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardhost/a$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardhost/a;->e:Lcom/nothing/cardhost/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/nothing/cardservice/CardWidgetViewInfo;Lcom/nothing/cardservice/CardWidgetMetaInfo;ZI)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardhost/a;->a:Landroid/content/Context;

    iput p2, p0, Lcom/nothing/cardhost/a;->b:I

    sget-object v0, Lu1/a;->a:Lu1/a;

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->v()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    move-object p4, v1

    :goto_0
    invoke-virtual {v0, p1, p4}, Lu1/a;->a(Landroid/content/Context;Ljava/lang/String;)Lf2/c$g;

    move-result-object p4

    iput-object p4, p0, Lcom/nothing/cardhost/a;->c:Lf2/c$g;

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v6, Lcom/nothing/cardservice/CardWidgetViewInfo;

    const/4 v7, 0x2

    aput-object v6, v2, v7

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v6, v2, v8

    const/4 v6, 0x4

    aput-object v3, v2, v6

    invoke-interface {p4, v2}, Lf2/c$g;->c([Ljava/lang/Class;)Lf2/c$h;

    move-result-object p4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    aput-object p3, v0, v7

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v8

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v6

    invoke-interface {p4, v0}, Lf2/c$h;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/nothing/cardparser/ICardView;

    if-eqz p2, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/nothing/cardparser/ICardView;

    :cond_1
    iput-object v1, p0, Lcom/nothing/cardhost/a;->d:Lcom/nothing/cardparser/ICardView;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardhost/a;->b:I

    return p0
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;)Ln5/k;
    .locals 1
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

    iget-object p0, p0, Lcom/nothing/cardhost/a;->d:Lcom/nothing/cardparser/ICardView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/nothing/cardparser/ICardView;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;)Ln5/k;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    new-instance p0, Ln5/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
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

    sget-object v0, Lh2/a;->a:Lh2/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CardViewProxy applyAsync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nothing/cardhost/a;->d:Lcom/nothing/cardparser/ICardView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh2/a;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nothing/cardhost/a;->d:Lcom/nothing/cardparser/ICardView;

    if-eqz v2, :cond_0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/nothing/cardparser/ICardView;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/q;Lx1/e;Lw1/a;)Landroid/os/CancellationSignal;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public applyViewDataChanged(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lq5/d;)Ljava/lang/Object;
    .locals 9
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

    iget-object v0, v0, Lcom/nothing/cardhost/a;->d:Lcom/nothing/cardparser/ICardView;

    if-eqz v0, :cond_1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/nothing/cardparser/ICardView;->applyViewDataChanged(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lq5/d;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Ln5/t;->a:Ln5/t;

    return-object v0

    :cond_1
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

    iget-object p0, p0, Lcom/nothing/cardhost/a;->d:Lcom/nothing/cardparser/ICardView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/nothing/cardparser/ICardView;->getBroadcastConfig()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getExtraInfo()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/a;->d:Lcom/nothing/cardparser/ICardView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/nothing/cardparser/ICardView;->getExtraInfo()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getPeriodTime()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/a;->d:Lcom/nothing/cardparser/ICardView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/nothing/cardparser/ICardView;->getPeriodTime()Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onBroadcastReceive(Ljava/lang/String;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/cardhost/a;->d:Lcom/nothing/cardparser/ICardView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/nothing/cardparser/ICardView;->onBroadcastReceive(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCancelAnim()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/a;->d:Lcom/nothing/cardparser/ICardView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/nothing/cardparser/ICardView;->onCancelAnim()V

    :cond_0
    return-void
.end method

.method public onEndAnim()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/a;->d:Lcom/nothing/cardparser/ICardView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/nothing/cardparser/ICardView;->onEndAnim()V

    :cond_0
    return-void
.end method

.method public onHostConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/cardhost/a;->d:Lcom/nothing/cardparser/ICardView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/nothing/cardparser/ICardView;->onHostConfigChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onHostViewPeriodTimeUp()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/a;->d:Lcom/nothing/cardparser/ICardView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/nothing/cardparser/ICardView;->onHostViewPeriodTimeUp()V

    :cond_0
    return-void
.end method

.method public onHostViewResume()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/a;->d:Lcom/nothing/cardparser/ICardView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/nothing/cardparser/ICardView;->onHostViewResume()V

    :cond_0
    return-void
.end method

.method public onHostViewStop()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/a;->d:Lcom/nothing/cardparser/ICardView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/nothing/cardparser/ICardView;->onHostViewStop()V

    :cond_0
    return-void
.end method

.method public onPauseAnim()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/a;->d:Lcom/nothing/cardparser/ICardView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/nothing/cardparser/ICardView;->onPauseAnim()V

    :cond_0
    return-void
.end method

.method public onResumeAnim()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/a;->d:Lcom/nothing/cardparser/ICardView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/nothing/cardparser/ICardView;->onResumeAnim()V

    :cond_0
    return-void
.end method

.method public onStartAnim()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/a;->d:Lcom/nothing/cardparser/ICardView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/nothing/cardparser/ICardView;->onStartAnim()V

    :cond_0
    return-void
.end method

.method public registerAnimListener()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/a;->d:Lcom/nothing/cardparser/ICardView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/nothing/cardparser/ICardView;->registerAnimListener()V

    :cond_0
    return-void
.end method

.method public switchCardStyle(I)V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/a;->d:Lcom/nothing/cardparser/ICardView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/nothing/cardparser/ICardView;->switchCardStyle(I)V

    :cond_0
    return-void
.end method

.method public unregisterAnimListener()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/a;->d:Lcom/nothing/cardparser/ICardView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/nothing/cardparser/ICardView;->unregisterAnimListener()V

    :cond_0
    return-void
.end method

.method public updateViewInfoJson(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/a;->d:Lcom/nothing/cardparser/ICardView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/nothing/cardparser/ICardView;->updateViewInfoJson(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
