.class public final Lb3/v;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 3

    sget-object v0, Lcom/android/quickstep/utils/AppLockedModeHelper;->Companion:Lcom/android/quickstep/utils/AppLockedModeHelper$Companion;

    invoke-virtual {v0}, Lcom/android/quickstep/utils/AppLockedModeHelper$Companion;->isWindowAppLockedSupport()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task;->isTopAppLocked:Z

    if-ne p0, v1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public static final b(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "com.nothing.camera"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
