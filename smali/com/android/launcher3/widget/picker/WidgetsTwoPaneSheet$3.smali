.class Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->getHeaderChangeListener()Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$HeaderChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/widget/model/WidgetsListContentEntry;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->lambda$onHeaderChanged$0(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/widget/model/WidgetsListContentEntry;Landroid/util/Pair;)V

    return-void
.end method

.method private synthetic lambda$onHeaderChanged$0(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/widget/model/WidgetsListContentEntry;Landroid/util/Pair;)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->access$300(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;

    move-result-object p0

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->bindViewHolder(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/widget/model/WidgetsListContentEntry;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public onHeaderChanged(Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 5
    .param p1    # Lcom/android/launcher3/util/PackageUserKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->access$000(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->getSelectedAppWidgets(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->access$100(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->access$200(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->access$200(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setExpanded(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->access$300(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {v2}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->access$100(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->newViewHolder(Landroid/view/ViewGroup;)Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {v2}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->access$300(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;

    move-result-object v2

    const/4 v3, 0x3

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v2, v0, p1, v3, v4}, Lcom/android/launcher3/widget/picker/WidgetsListTableViewHolderBinder;->bindViewHolder(Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/widget/model/WidgetsListContentEntry;ILjava/util/List;)V

    new-instance v2, Lcom/android/launcher3/widget/picker/x;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/launcher3/widget/picker/x;-><init>(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/widget/model/WidgetsListContentEntry;)V

    iput-object v2, v0, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->mDataCallback:Ljava/util/function/Consumer;

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->access$100(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->access$100(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->this$0:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    invoke-static {p0}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;->access$400(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;)Landroid/widget/ScrollView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setScrollY(I)V

    :cond_2
    :goto_0
    return-void
.end method
