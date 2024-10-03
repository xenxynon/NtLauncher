.class public final Lcom/nothing/launcher/folder/customisation/g$c;
.super Lcom/nothing/launcher/folder/customisation/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/launcher/folder/customisation/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/android/launcher3/databinding/FolderCoverImageItemBinding;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/databinding/FolderCoverImageItemBinding;)V
    .locals 2

    const-string v0, "bindings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "bindings.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nothing/launcher/folder/customisation/g$a;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/g$c;->a:Lcom/android/launcher3/databinding/FolderCoverImageItemBinding;

    return-void
.end method


# virtual methods
.method public a(Lcom/nothing/launcher/folder/customisation/a;Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 3

    const-string v0, "coverItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/g$c;->a:Lcom/android/launcher3/databinding/FolderCoverImageItemBinding;

    iget-object p0, p0, Lcom/android/launcher3/databinding/FolderCoverImageItemBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/nothing/launcher/folder/customisation/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, La4/d;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nothing/launcher/folder/customisation/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La4/d;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Lcom/nothing/launcher/folder/customisation/a;->d(Lcom/android/launcher3/model/data/FolderInfo;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method
