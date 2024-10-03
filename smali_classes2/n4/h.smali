.class public final Ln4/h;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nothing/launcher/setting/BaseHomePreviewFragment;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/nothing/launcher/setting/BaseHomePreviewFragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object p1, p0, Ln4/h;->a:Lcom/nothing/launcher/setting/BaseHomePreviewFragment;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget v0, p0, Ln4/h;->b:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Ln4/h;->b:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Ln4/h;->a:Lcom/nothing/launcher/setting/BaseHomePreviewFragment;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->c(I)Lcom/nothing/launcher/setting/PreviewItemFragment;

    move-result-object p0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget p0, p0, Ln4/h;->b:I

    return p0
.end method
