.class public Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/picker/WidgetsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetListBaseRowEntryComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCardComparator:Lu2/a;

.field private final mComparator:Lcom/android/launcher3/util/LabelComparator;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/LabelComparator;

    invoke-direct {v0}, Lcom/android/launcher3/util/LabelComparator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;->mComparator:Lcom/android/launcher3/util/LabelComparator;

    new-instance v1, Lu2/a;

    invoke-direct {v1, v0}, Lu2/a;-><init>(Lcom/android/launcher3/util/LabelComparator;)V

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;->mCardComparator:Lu2/a;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;->mCardComparator:Lu2/a;

    invoke-virtual {v0, p1, p2}, Lu2/a;->a(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;->mComparator:Lcom/android/launcher3/util/LabelComparator;

    iget-object v0, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/LabelComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    return p0

    :cond_1
    iget-object p0, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object p2, p2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    iget-object p0, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    check-cast p2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;->compare(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)I

    move-result p0

    return p0
.end method
