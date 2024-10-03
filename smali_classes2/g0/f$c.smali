.class public interface abstract Lg0/f$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract createAnimatorState()Lg0/f$e;
.end method

.method public abstract getLaunchContainer()Landroid/view/ViewGroup;
.end method

.method public getOpeningWindowSyncView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onLaunchAnimationEnd(Z)V
    .locals 0

    return-void
.end method

.method public onLaunchAnimationProgress(Lg0/f$e;FF)V
    .locals 0

    const-string p0, "state"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onLaunchAnimationStart(Z)V
    .locals 0

    return-void
.end method
