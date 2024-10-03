.class final Lcom/nothing/launcher/setting/PreviewItemFragment$f;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/setting/PreviewItemFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Landroid/graphics/Bitmap;",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lcom/nothing/launcher/setting/PreviewItemFragment;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/setting/PreviewItemFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/setting/PreviewItemFragment$f;->g:Lcom/nothing/launcher/setting/PreviewItemFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/setting/PreviewItemFragment$f;->invoke(Landroid/graphics/Bitmap;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object p0, p0, Lcom/nothing/launcher/setting/PreviewItemFragment$f;->g:Lcom/nothing/launcher/setting/PreviewItemFragment;

    invoke-static {p0}, Lcom/nothing/launcher/setting/PreviewItemFragment;->e(Lcom/nothing/launcher/setting/PreviewItemFragment;)Lcom/android/launcher3/databinding/SinglePreviewItemLayoutBinding;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/databinding/SinglePreviewItemLayoutBinding;->wallpaperSurface:Lcom/nothing/launcher/setting/view/NTWallpaperPreview;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/setting/view/NTWallpaperPreview;->h(Landroid/graphics/Bitmap;)V

    return-void
.end method
