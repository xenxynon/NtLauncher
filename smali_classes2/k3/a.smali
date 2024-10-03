.class public final Lk3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;ZZ)Z
    .locals 1

    const-string v0, "displayOption"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->isSupportShowSearchBar()Z

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->isSupportShowWorkspaceLabel()Z

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
