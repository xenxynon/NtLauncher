.class public final Lg3/c;
.super Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected tryMigrateGrid(Landroid/content/Context;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;",
            ">;"
        }
    .end annotation

    sget-object v0, Lc4/b;->b:Lc4/b$a;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    const-string v2, "mContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {v0, v1, v3}, Lc4/b$a;->d(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    const-string v4, "mIdp"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lc4/b$a;->b(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    new-instance p0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
