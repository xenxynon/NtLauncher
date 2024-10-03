.class public interface abstract Lcom/nothing/cardparser/ICardView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardparser/ICardView$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract apply(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;)Ln5/k;
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
.end method

.method public abstract applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/q;Lx1/e;Lw1/a;)Landroid/os/CancellationSignal;
.end method

.method public abstract applyViewDataChanged(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lq5/d;)Ljava/lang/Object;
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
.end method

.method public abstract getBroadcastConfig()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExtraInfo()Landroid/os/Bundle;
.end method

.method public abstract getPeriodTime()Ljava/lang/Integer;
.end method

.method public abstract onBroadcastReceive(Ljava/lang/String;)V
.end method

.method public abstract onCancelAnim()V
.end method

.method public abstract onEndAnim()V
.end method

.method public abstract onHostConfigChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onHostViewPeriodTimeUp()V
.end method

.method public abstract onHostViewResume()V
.end method

.method public abstract onHostViewStop()V
.end method

.method public abstract onPauseAnim()V
.end method

.method public abstract onResumeAnim()V
.end method

.method public abstract onStartAnim()V
.end method

.method public abstract registerAnimListener()V
.end method

.method public abstract switchCardStyle(I)V
.end method

.method public abstract unregisterAnimListener()V
.end method

.method public abstract updateViewInfoJson(Ljava/lang/String;)V
.end method
