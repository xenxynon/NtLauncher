.class public interface abstract Lcom/android/launcher3/statemanager/BaseState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/launcher3/statemanager/BaseState;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static getFlag(I)I
    .locals 1

    add-int/lit8 p0, p0, 0x2

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method


# virtual methods
.method public displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getHistoryForState(Lcom/android/launcher3/statemanager/BaseState;)Lcom/android/launcher3/statemanager/BaseState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract getTransitionDuration(Landroid/content/Context;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DEVICE_PROFI",
            "LE_CONTEXT:Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TDEVICE_PROFI",
            "LE_CONTEXT;",
            "Z)I"
        }
    .end annotation
.end method

.method public abstract hasFlag(I)Z
.end method

.method public shouldDisableRestore()Z
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/android/launcher3/statemanager/BaseState;->hasFlag(I)Z

    move-result p0

    return p0
.end method

.method public shouldPreserveDataStateOnReapply()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showTaskThumbnailSplash()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
