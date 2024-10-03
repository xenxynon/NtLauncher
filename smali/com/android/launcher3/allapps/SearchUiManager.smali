.class public interface abstract Lcom/android/launcher3/allapps/SearchUiManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public getBackgroundVisibility()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getEditText()Lcom/android/launcher3/ExtendedEditText;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract initializeSearch(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;)V"
        }
    .end annotation
.end method

.method public onAllAppsStateExit()V
    .locals 0

    return-void
.end method

.method public onEnterAllAppsFromNormalState()V
    .locals 0

    return-void
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public abstract resetSearch()V
.end method

.method public setBackgroundVisibility(ZF)V
    .locals 0

    return-void
.end method
