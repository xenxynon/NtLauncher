.class public final Lu2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Lcom/android/launcher3/util/LabelComparator;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/LabelComparator;)V
    .locals 1

    const-string v0, "labelComparator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu2/a;->g:Lcom/android/launcher3/util/LabelComparator;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)I
    .locals 4

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/nothing/launcher/widgets/e;

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    instance-of v3, p2, Lcom/nothing/launcher/widgets/e;

    if-nez v3, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/nothing/launcher/widgets/e;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    instance-of v0, p1, Lcom/nothing/launcher/widgets/b;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    instance-of v0, v0, Lcom/nothing/launcher/widgets/b;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/nothing/launcher/widgets/b;

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    instance-of v0, v0, Lcom/nothing/launcher/widgets/b;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lcom/nothing/launcher/widgets/b;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    instance-of v0, v0, Lcom/nothing/launcher/widgets/b;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lu2/a;->g:Lcom/android/launcher3/util/LabelComparator;

    check-cast p1, Lcom/nothing/launcher/widgets/b;

    invoke-virtual {p1}, Lcom/nothing/launcher/widgets/b;->i()Lcom/nothing/launcher/widgets/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nothing/launcher/widgets/a;->d()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    check-cast p2, Lcom/nothing/launcher/widgets/b;

    invoke-virtual {p2}, Lcom/nothing/launcher/widgets/b;->i()Lcom/nothing/launcher/widgets/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/nothing/launcher/widgets/a;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/LabelComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    check-cast p2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-virtual {p0, p1, p2}, Lu2/a;->a(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)I

    move-result p0

    return p0
.end method
