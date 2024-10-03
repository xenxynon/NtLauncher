.class public final Lcom/nothing/launcher/widgets/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/recyclerview/ViewHolderBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/recyclerview/ViewHolderBinder<",
        "Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;",
        "Lcom/nothing/launcher/widgets/h;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Lcom/android/launcher3/widget/picker/OnHeaderClickListener;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Lcom/android/launcher3/widget/picker/OnHeaderClickListener;)V
    .locals 1

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onHeaderClickListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/widgets/j;->a:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/nothing/launcher/widgets/j;->b:Lcom/android/launcher3/widget/picker/OnHeaderClickListener;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070456

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/nothing/launcher/widgets/j;->c:I

    return-void
.end method

.method public static synthetic a(Lcom/nothing/launcher/widgets/NtWidgetsListHeader;Lcom/nothing/launcher/widgets/j;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/nothing/launcher/widgets/j;->c(Lcom/nothing/launcher/widgets/NtWidgetsListHeader;Lcom/nothing/launcher/widgets/j;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;Landroid/view/View;)V

    return-void
.end method

.method private static final c(Lcom/nothing/launcher/widgets/NtWidgetsListHeader;Lcom/nothing/launcher/widgets/j;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;Landroid/view/View;)V
    .locals 0

    const-string p3, "$ntWidgetsListHeader"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$data"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->isExpanded()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p3}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setExpanded(Z)V

    iget-object p1, p1, Lcom/nothing/launcher/widgets/j;->b:Lcom/android/launcher3/widget/picker/OnHeaderClickListener;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->isExpanded()Z

    move-result p0

    iget-object p2, p2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-static {p2}, Lcom/android/launcher3/util/PackageUserKey;->fromPackageItemInfo(Lcom/android/launcher3/model/data/PackageItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/android/launcher3/widget/picker/OnHeaderClickListener;->onHeaderClicked(ZLcom/android/launcher3/util/PackageUserKey;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/nothing/launcher/widgets/h;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nothing/launcher/widgets/h;",
            "Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p4, "viewHolder"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "data"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nothing/launcher/widgets/h;->a()Lcom/nothing/launcher/widgets/NtWidgetsListHeader;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->applyFromItemInfoWithIcon(Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)V

    invoke-virtual {p2}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->isWidgetListShown()Z

    move-result v0

    invoke-virtual {p4, v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setExpanded(Z)V

    and-int/lit8 p3, p3, 0x4

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->isWidgetListShown()Z

    move-result v1

    if-nez v1, :cond_1

    iget v0, p0, Lcom/nothing/launcher/widgets/j;->c:I

    :cond_1
    invoke-virtual {p1}, Lcom/nothing/launcher/widgets/h;->a()Lcom/nothing/launcher/widgets/NtWidgetsListHeader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1}, Lcom/nothing/launcher/widgets/h;->a()Lcom/nothing/launcher/widgets/NtWidgetsListHeader;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_2

    sget-object p1, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->LAST_EMPTY:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->MIDDLE:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    :goto_1
    invoke-virtual {p4, p1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setListDrawableState(Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;)V

    new-instance p1, Lcom/nothing/launcher/widgets/i;

    invoke-direct {p1, p4, p0, p2}, Lcom/nothing/launcher/widgets/i;-><init>(Lcom/nothing/launcher/widgets/NtWidgetsListHeader;Lcom/nothing/launcher/widgets/j;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)V

    invoke-virtual {p4, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;ILjava/util/List;)V
    .locals 0

    check-cast p1, Lcom/nothing/launcher/widgets/h;

    check-cast p2, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nothing/launcher/widgets/j;->b(Lcom/nothing/launcher/widgets/h;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;ILjava/util/List;)V

    return-void
.end method

.method public d(Landroid/view/ViewGroup;)Lcom/nothing/launcher/widgets/h;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/launcher/widgets/j;->a:Landroid/view/LayoutInflater;

    const v0, 0x7f0e0107

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.nothing.launcher.widgets.NtWidgetsListHeader"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/nothing/launcher/widgets/NtWidgetsListHeader;

    new-instance p1, Lcom/nothing/launcher/widgets/h;

    invoke-direct {p1, p0}, Lcom/nothing/launcher/widgets/h;-><init>(Lcom/nothing/launcher/widgets/NtWidgetsListHeader;)V

    return-object p1
.end method

.method public bridge synthetic newViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/widgets/j;->d(Landroid/view/ViewGroup;)Lcom/nothing/launcher/widgets/h;

    move-result-object p0

    return-object p0
.end method
