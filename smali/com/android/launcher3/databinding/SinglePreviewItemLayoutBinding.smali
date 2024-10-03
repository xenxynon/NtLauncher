.class public abstract Lcom/android/launcher3/databinding/SinglePreviewItemLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final homeScreenPreview:Lcom/nothing/launcher/setting/view/HomeScreenPreview;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final wallpaperSurface:Lcom/nothing/launcher/setting/view/NTWallpaperPreview;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/nothing/launcher/setting/view/HomeScreenPreview;Lcom/nothing/launcher/setting/view/NTWallpaperPreview;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/android/launcher3/databinding/SinglePreviewItemLayoutBinding;->homeScreenPreview:Lcom/nothing/launcher/setting/view/HomeScreenPreview;

    iput-object p5, p0, Lcom/android/launcher3/databinding/SinglePreviewItemLayoutBinding;->wallpaperSurface:Lcom/nothing/launcher/setting/view/NTWallpaperPreview;

    return-void
.end method
