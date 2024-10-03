.class public final Lq4/g$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq4/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/android/launcher3/databinding/SinglePreviewItemLayoutBinding;

.field final synthetic b:Lq4/g;


# direct methods
.method public constructor <init>(Lq4/g;Lcom/android/launcher3/databinding/SinglePreviewItemLayoutBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/databinding/SinglePreviewItemLayoutBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lq4/g$a;->b:Lq4/g;

    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lq4/g$a;->a:Lcom/android/launcher3/databinding/SinglePreviewItemLayoutBinding;

    return-void
.end method


# virtual methods
.method public final a(ILt4/g;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lq4/g$a;->b:Lq4/g;

    invoke-static {v0}, Lq4/g;->a(Lq4/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lq4/g$a;->a:Lcom/android/launcher3/databinding/SinglePreviewItemLayoutBinding;

    iget-object p2, p2, Lcom/android/launcher3/databinding/SinglePreviewItemLayoutBinding;->homeScreenPreview:Lcom/nothing/launcher/setting/view/HomeScreenPreview;

    invoke-virtual {p2}, Lcom/nothing/launcher/setting/view/HomeScreenPreview;->k()V

    iget-object p2, p0, Lq4/g$a;->b:Lq4/g;

    invoke-virtual {p2}, Lq4/g;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lq4/g$a;->b:Lq4/g;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lq4/g;->b(Lq4/g;Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lq4/g$a;->a:Lcom/android/launcher3/databinding/SinglePreviewItemLayoutBinding;

    iget-object p0, p0, Lcom/android/launcher3/databinding/SinglePreviewItemLayoutBinding;->homeScreenPreview:Lcom/nothing/launcher/setting/view/HomeScreenPreview;

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/setting/view/HomeScreenPreview;->e(ILt4/g;)V

    :cond_1
    :goto_0
    return-void
.end method
