.class public interface abstract Lm0/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public onTransitionFinished()V
    .locals 0

    return-void
.end method

.method public onTransitionFinishing()V
    .locals 0

    return-void
.end method

.method public onTransitionProgress(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    return-void
.end method

.method public onTransitionStarted()V
    .locals 0

    return-void
.end method
