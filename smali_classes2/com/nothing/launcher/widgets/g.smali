.class public final Lcom/nothing/launcher/widgets/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/recyclerview/ViewHolderBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/recyclerview/ViewHolderBinder<",
        "Lcom/nothing/launcher/widgets/e;",
        "Lcom/nothing/launcher/widgets/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 1

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/widgets/g;->a:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(Lcom/nothing/launcher/widgets/f;Lcom/nothing/launcher/widgets/e;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nothing/launcher/widgets/f;",
            "Lcom/nothing/launcher/widgets/e;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p0, "viewHolder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nothing/launcher/widgets/f;->a()Lcom/nothing/launcher/widgets/NtWidgetsListFirstHeader;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/nothing/launcher/widgets/NtWidgetsListFirstHeader;->setNothingWidgetsHeaderInfo(Lcom/nothing/launcher/widgets/e;)V

    sget-object p1, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->FIRST_EXPANDED:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setListDrawableState(Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;)V

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mExpandToggle:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;)Lcom/nothing/launcher/widgets/f;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/launcher/widgets/g;->a:Landroid/view/LayoutInflater;

    const v0, 0x7f0e0106

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.nothing.launcher.widgets.NtWidgetsListFirstHeader"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/nothing/launcher/widgets/NtWidgetsListFirstHeader;

    new-instance p1, Lcom/nothing/launcher/widgets/f;

    invoke-direct {p1, p0}, Lcom/nothing/launcher/widgets/f;-><init>(Lcom/nothing/launcher/widgets/NtWidgetsListFirstHeader;)V

    return-object p1
.end method

.method public bridge synthetic bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;ILjava/util/List;)V
    .locals 0

    check-cast p1, Lcom/nothing/launcher/widgets/f;

    check-cast p2, Lcom/nothing/launcher/widgets/e;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nothing/launcher/widgets/g;->a(Lcom/nothing/launcher/widgets/f;Lcom/nothing/launcher/widgets/e;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic newViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/widgets/g;->b(Landroid/view/ViewGroup;)Lcom/nothing/launcher/widgets/f;

    move-result-object p0

    return-object p0
.end method
