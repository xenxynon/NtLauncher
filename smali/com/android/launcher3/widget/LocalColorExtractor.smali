.class public Lcom/android/launcher3/widget/LocalColorExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/LocalColorExtractor$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultInstance()Lcom/android/launcher3/widget/LocalColorExtractor;
    .locals 1

    new-instance v0, Lcom/android/launcher3/widget/LocalColorExtractor;

    invoke-direct {v0}, Lcom/android/launcher3/widget/LocalColorExtractor;-><init>()V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/widget/LocalColorExtractor;
    .locals 2

    const-class v0, Lcom/android/launcher3/widget/LocalColorExtractor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f12014d

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/LocalColorExtractor;

    return-object p0
.end method


# virtual methods
.method public applyColorsOverride(Landroid/content/Context;Landroid/app/WallpaperColors;)V
    .locals 0

    return-void
.end method

.method public generateColorsOverride(Landroid/app/WallpaperColors;)Landroid/util/SparseIntArray;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasWallpaperColorChanged()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setListener(Lcom/android/launcher3/widget/LocalColorExtractor$Listener;)V
    .locals 0
    .param p1    # Lcom/android/launcher3/widget/LocalColorExtractor$Listener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setWorkspaceLocation(Landroid/graphics/Rect;Landroid/view/View;I)V
    .locals 0

    return-void
.end method
