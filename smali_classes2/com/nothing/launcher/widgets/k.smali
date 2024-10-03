.class public final Lcom/nothing/launcher/widgets/k;
.super Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutInflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconClickListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconLongClickListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070456

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/nothing/launcher/widgets/k;->a:I

    return-void
.end method


# virtual methods
.method protected setWidgetsListTableView(Lcom/android/launcher3/widget/picker/WidgetsListTableView;ILcom/android/launcher3/widget/model/WidgetsListContentEntry;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/widget/picker/WidgetsListTableView;",
            "I",
            "Lcom/android/launcher3/widget/model/WidgetsListContentEntry;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "table"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entry"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/nothing/launcher/widgets/k;->a:I

    div-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/widget/TableLayout;->setPadding(IIII)V

    and-int/lit8 v0, p2, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v0, :cond_2

    sget-object p2, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->LAST_EMPTY:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    sget-object p2, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->LAST:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->MIDDLE:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    :goto_2
    invoke-virtual {p1, p2}, Lcom/android/launcher3/widget/picker/WidgetsListTableView;->setListDrawableState(Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;)V

    if-eqz v0, :cond_4

    iget v2, p0, Lcom/nothing/launcher/widgets/k;->a:I

    :cond_4
    invoke-virtual {p1}, Landroid/widget/TableLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, p0}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p0, Lz4/i;->a:Lz4/i;

    iget-object p1, p3, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    const-string p2, "entry.mWidgets"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lz4/i;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
